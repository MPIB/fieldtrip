/*
 * Simple application for playing back an online experiment through the FieldTrip buffer.
 * Opposite functionality of 'saving_buffer'
 * (C) 2010 Stefan Klanke
 */
#include <buffer.h>
#include <rdadefs.h>
#include <signal.h>
#include <pthread.h>
#include <string.h>

#define MAXLINE 256
#define MAX_PRINT_CHN  300

typedef struct {
	int numSamples;	/* 0 for writing events, > 0 for samples */
	int numEvents;
	long offset;    /* offset into events file */
	int size;       /* number of bytes to transmit for events */
	double time;    /* time when this needs to be sent, relative to PUT_HDR */
} WriteOperation;

int ftSocket = -1;
int numWriteOps, allocedWriteOps;
int totalSamples, totalEvents;
long sizeSamples, sizeEvents;
int bytesPerSample; 

WriteOperation *writeOps = NULL;
FILE *fSamples;
headerdef_t *header = NULL;
char *eventBuffer = NULL;
UINT32_T headerSize;

static char usage[] = "Usage: playback <directory> [hostname=localhost [port=1972]]\n";

int readHeader(const char *directory) {
	char filename[MAXLINE];
	FILE *f;
	long size;
	
	snprintf(filename, MAXLINE, "%s/header", directory);
	f = fopen(filename, "rb");
	if (f == NULL) {
		fprintf(stderr, "Can not read file %s\n", filename);
		return -1;
	}
	
	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, 0, SEEK_SET);
	
	if (header != NULL) free(header);
	header = (headerdef_t *) malloc(size);
	
	if (header == NULL) {
		fprintf(stderr, "Cannot allocate %li bytes for reading the header.\n", size);
		exit(1);
	}
	
	fread(header, 1, size, f);
	fclose(f);

	headerSize = size;
	
	return headerSize;
}


int readTiming(const char *directory) {
	FILE *f;
	char filename[MAXLINE];
	long offEvts = 0;
	
	snprintf(filename, MAXLINE, "%s/timing", directory);
	f = fopen(filename, "r");
	if (f == NULL) {
		fprintf(stderr, "Can not read file %s\n", filename);
		return -1;
	}
	
	allocedWriteOps = 1000;
	numWriteOps = 0;
	totalSamples = totalEvents = 0;
	if (writeOps != NULL) free(writeOps);
	writeOps = (WriteOperation *) malloc(allocedWriteOps * sizeof(WriteOperation));
	
	if (writeOps == NULL) {
		fprintf(stderr, "Out of memory\n");
		exit(1);
	}
	
	while (!feof(f)) {
		char type;
		double time;
		int num, r, i;
		WriteOperation *wop;
		eventdef_t *evdef;
		
		r = fscanf(f, "%c %i %lf\n", &type, &num, &time);
		
		if (r!=3) continue;
		
		if (numWriteOps == allocedWriteOps) {
			void *newmem = realloc(writeOps, (allocedWriteOps + 1000) * sizeof(WriteOperation));
			if (newmem == NULL) {
				fprintf(stderr, "Out of memory\n");
				exit(1);
			} 
			writeOps = (WriteOperation *) newmem;
			allocedWriteOps += 1000;
		}

		wop = writeOps + numWriteOps;
		wop->time = time;
		switch(type) {
			case 'S':
				wop->numSamples = num;
				wop->numEvents = 0;
				wop->size = num * bytesPerSample;
				totalSamples += num;
				break;
			case 'E':
				wop->numSamples = 0;
				wop->numEvents = num;
				wop->offset = offEvts;
				wop->size = 0;
				for (i=0;i<num;i++) {
					int siz;
					
					evdef = (eventdef_t *) (eventBuffer+offEvts);
					siz = sizeof(eventdef_t) + evdef->bufsize;
					
					totalEvents++;					
					printf("%i. event:  %i bytes @ %li\n", totalEvents, siz, offEvts);

					wop->size += siz;
					offEvts += siz;
				}
				break;
			default:
				printf("Invalid timing definition\n");
				continue;
		}
		numWriteOps++;
	}
	fclose(f);
	return numWriteOps;
}

int openSamplesFile(const char *directory) {
	char filename[MAXLINE];
	
	snprintf(filename, MAXLINE, "%s/samples", directory);
	fSamples = fopen(filename, "rb");
	if (fSamples == NULL) {
		fprintf(stderr, "Can not read file %s\n", filename);
		return -1;
	}
	
	fseek(fSamples, 0, SEEK_END);
	sizeSamples = ftell(fSamples);
	fseek(fSamples, 0, SEEK_SET);	
	return sizeSamples;
}


int readAllEvents(const char *directory) {
	char filename[MAXLINE];
	FILE *f;
	
	snprintf(filename, MAXLINE, "%s/events", directory);
	f = fopen(filename, "rb");
	if (f == NULL) {
		fprintf(stderr, "Can not read file %s\n", filename);
		return -1;
	}
	
	fseek(f, 0, SEEK_END);
	sizeEvents = ftell(f);
	fseek(f, 0, SEEK_SET);	
	eventBuffer = (char *) malloc(sizeEvents);
	if (eventBuffer == NULL) {
		fprintf(stderr, "Cannot allocate %li bytes for reading events\n", sizeEvents);
	}
	
	fread(eventBuffer, 1, sizeEvents, f);
	fclose(f);
	return sizeEvents;
}

void run() {
	datadef_t *ddef;
	int maxSize = 0;
	int r;
	int nextSampleOp = numWriteOps;
	messagedef_t reqdef;
	message_t request, *response;
	struct timeval tv;
	double T0, t;
	int op;
	
	/* search for first sample operation */
	for (op = 0; op < numWriteOps; op++) {
		if (writeOps[op].numSamples > 0) {
			nextSampleOp = op;
			break;
		}
	}	
	
	for (op = 0; op < numWriteOps; op++) {
		if (writeOps[op].numSamples > 0 && writeOps[op].size > maxSize) {
			maxSize = writeOps[op].size;
		}
	}
		
	if (maxSize > 0) {
		ddef = (datadef_t *) malloc(sizeof(datadef_t) + maxSize);
		if (ddef == NULL) {
			printf("Cannot allocate temporary buffer for writing samples\n");
			exit(1);
		}
		ddef->nchans    = header->nchans;
		ddef->data_type = header->data_type;
		ddef->bufsize   = writeOps[nextSampleOp].numSamples * bytesPerSample;
		ddef->nsamples  = writeOps[nextSampleOp].numSamples;
		fread(ddef+1, bytesPerSample, writeOps[nextSampleOp].numSamples, fSamples);
	}

	/* write out header */
	request.def = &reqdef;
	reqdef.version = VERSION;
	reqdef.command = PUT_HDR;
	reqdef.bufsize = headerSize;
	request.buf = header;
	
	gettimeofday(&tv, NULL);
	T0 = tv.tv_sec + tv.tv_usec*1e-6;
	printf("Writing header...\n");
	r = clientrequest(ftSocket, &request, &response);

	if (r!=0 || response->def == NULL || response->def->command != PUT_OK) {
		fprintf(stderr, "Error in FieldTrip request\n");
	}
	if (response->buf != NULL) free(response->buf);
	free(response->def);
	free(response);
	
	op=0;
	
	for (op=0;op<numWriteOps;op++) {
		gettimeofday(&tv, NULL);
		t = tv.tv_sec + tv.tv_usec*1e-6 - T0;
		if (writeOps[op].time > t) {
			usleep(1.0e6*(writeOps[op].time -  t));
			gettimeofday(&tv, NULL);
			t = tv.tv_sec + tv.tv_usec*1e-6 - T0;
		}
		
		if (writeOps[op].numSamples > 0) {
			reqdef.command = PUT_DAT;
			reqdef.bufsize = sizeof(datadef_t) + writeOps[op].size;
			request.buf = ddef;
			printf("%.3f: Writing %i samples\n", t, writeOps[op].numSamples);
		} else {
			reqdef.command = PUT_EVT;
			reqdef.bufsize = writeOps[op].size;
			request.buf = eventBuffer + writeOps[op].offset;
			printf("%.3f: Writing %i event(s)\n", t, writeOps[op].numEvents);
		}
		r = clientrequest(ftSocket, &request, &response);		
	
		if (r!=0 || response->def == NULL || response->def->command != PUT_OK) {
			fprintf(stderr, "Error in FieldTrip request\n");
		}
		if (response->buf != NULL) free(response->buf);
		free(response->def);
		free(response);
		
		if (writeOps[op].numSamples > 0) {
			/* pre-load next bunch of samples */
			for (nextSampleOp = op+1; nextSampleOp < numWriteOps; nextSampleOp++) {
				if (writeOps[nextSampleOp].numSamples > 0) break;
			}
			if (nextSampleOp < numWriteOps) {
				ddef->nchans    = header->nchans;
				ddef->data_type = header->data_type;
				ddef->bufsize   = writeOps[nextSampleOp].numSamples * bytesPerSample;
				ddef->nsamples  = writeOps[nextSampleOp].numSamples;
				fread(ddef+1, bytesPerSample, writeOps[nextSampleOp].numSamples, fSamples);
			}
		}
	}
	printf("Done!\n");
}

int main(int argc, char **argv) {
	char hostname[MAXLINE] = "localhost";
	char directory[MAXLINE];
	int port, nops;
	
	if (argc<2) {
		fputs(usage, stderr);
		exit(1);
	}
	
	strncpy(directory, argv[1], MAXLINE);
	if (argc>2) {
		strncpy(hostname, argv[2], MAXLINE);
	}
	if (argc>3) {
		port = atoi(argv[3]);
	} else {
		port = 1972;
	}
	
	if (readHeader(directory) < 0) {
		exit(1);
	}
	bytesPerSample = header->nchans * wordsize_from_type(header->data_type);
	
	if (openSamplesFile(directory) < 0) {
		exit(1);
	}
	if (readAllEvents(directory) < 0) {
		exit(1);
	}	
	nops = readTiming(directory);
	if (nops < 0) {
		exit(1);
	}
	if (totalSamples == 0 && totalEvents == 0) {
		printf("No samples or events defined\n");
		exit(0);
	} else {
		long siz = totalSamples * bytesPerSample;
		
		printf("Total samples: %i  events: %i\n", totalSamples, totalEvents);	
		
		if (siz > sizeSamples) {
			fputs("Error: 'samples' file too small for given 'timing' definition\n", stderr);
			exit(1);
		}
		if (siz < sizeSamples) {
			printf("Warning: 'samples' file contains %li bytes, but 'timing' definition specifies %li bytes\n", sizeSamples, siz);
		}
	}
	
	printf("Trying to connect to %s:%i...\n", hostname, port);
	ftSocket = open_connection(hostname, port);
	if (ftSocket < 0) {
		exit(1);
	}

	run();
	
	close_connection(ftSocket);
	
	fclose(fSamples);
	free(writeOps);
	free(header);
	
	return 0;
}
