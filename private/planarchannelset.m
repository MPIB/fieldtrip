function [planar] = planarchannelset(data)

% FUNCTION that defines the planar gradiometer channel combinations
% The output cell-array contains the horizontal label, vertical label
% and the label after combining the two.
%
% Use as
%   [planar] = planarchannelset(data)
%
% See also SENSTYPE

% Copyright (C) 2005-2008, Robert Oostenveld
%
% This file is part of FieldTrip, see http://www.ru.nl/neuroimaging/fieldtrip
% for the documentation and details.
%
%    FieldTrip is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    FieldTrip is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with FieldTrip. If not, see <http://www.gnu.org/licenses/>.
%
% $Id$

switch lower(ft_senstype(data))
  case 'ctf151_planar'
    planar = {
      'MLC11_dH'     'MLC11_dV'     'MLC11'
      'MLC12_dH'     'MLC12_dV'     'MLC12'
      'MLC13_dH'     'MLC13_dV'     'MLC13'
      'MLC14_dH'     'MLC14_dV'     'MLC14'
      'MLC15_dH'     'MLC15_dV'     'MLC15'
      'MLC21_dH'     'MLC21_dV'     'MLC21'
      'MLC22_dH'     'MLC22_dV'     'MLC22'
      'MLC23_dH'     'MLC23_dV'     'MLC23'
      'MLC24_dH'     'MLC24_dV'     'MLC24'
      'MLC31_dH'     'MLC31_dV'     'MLC31'
      'MLC32_dH'     'MLC32_dV'     'MLC32'
      'MLC33_dH'     'MLC33_dV'     'MLC33'
      'MLC41_dH'     'MLC41_dV'     'MLC41'
      'MLC42_dH'     'MLC42_dV'     'MLC42'
      'MLC43_dH'     'MLC43_dV'     'MLC43'
      'MLF11_dH'     'MLF11_dV'     'MLF11'
      'MLF12_dH'     'MLF12_dV'     'MLF12'
      'MLF21_dH'     'MLF21_dV'     'MLF21'
      'MLF22_dH'     'MLF22_dV'     'MLF22'
      'MLF23_dH'     'MLF23_dV'     'MLF23'
      'MLF31_dH'     'MLF31_dV'     'MLF31'
      'MLF32_dH'     'MLF32_dV'     'MLF32'
      'MLF33_dH'     'MLF33_dV'     'MLF33'
      'MLF34_dH'     'MLF34_dV'     'MLF34'
      'MLF41_dH'     'MLF41_dV'     'MLF41'
      'MLF42_dH'     'MLF42_dV'     'MLF42'
      'MLF43_dH'     'MLF43_dV'     'MLF43'
      'MLF44_dH'     'MLF44_dV'     'MLF44'
      'MLF45_dH'     'MLF45_dV'     'MLF45'
      'MLF51_dH'     'MLF51_dV'     'MLF51'
      'MLF52_dH'     'MLF52_dV'     'MLF52'
      'MLO11_dH'     'MLO11_dV'     'MLO11'
      'MLO12_dH'     'MLO12_dV'     'MLO12'
      'MLO21_dH'     'MLO21_dV'     'MLO21'
      'MLO22_dH'     'MLO22_dV'     'MLO22'
      'MLO31_dH'     'MLO31_dV'     'MLO31'
      'MLO32_dH'     'MLO32_dV'     'MLO32'
      'MLO33_dH'     'MLO33_dV'     'MLO33'
      'MLO41_dH'     'MLO41_dV'     'MLO41'
      'MLO42_dH'     'MLO42_dV'     'MLO42'
      'MLO43_dH'     'MLO43_dV'     'MLO43'
      'MLP11_dH'     'MLP11_dV'     'MLP11'
      'MLP12_dH'     'MLP12_dV'     'MLP12'
      'MLP13_dH'     'MLP13_dV'     'MLP13'
      'MLP21_dH'     'MLP21_dV'     'MLP21'
      'MLP22_dH'     'MLP22_dV'     'MLP22'
      'MLP31_dH'     'MLP31_dV'     'MLP31'
      'MLP32_dH'     'MLP32_dV'     'MLP32'
      'MLP33_dH'     'MLP33_dV'     'MLP33'
      'MLP34_dH'     'MLP34_dV'     'MLP34'
      'MLT11_dH'     'MLT11_dV'     'MLT11'
      'MLT12_dH'     'MLT12_dV'     'MLT12'
      'MLT13_dH'     'MLT13_dV'     'MLT13'
      'MLT14_dH'     'MLT14_dV'     'MLT14'
      'MLT15_dH'     'MLT15_dV'     'MLT15'
      'MLT16_dH'     'MLT16_dV'     'MLT16'
      'MLT21_dH'     'MLT21_dV'     'MLT21'
      'MLT22_dH'     'MLT22_dV'     'MLT22'
      'MLT23_dH'     'MLT23_dV'     'MLT23'
      'MLT24_dH'     'MLT24_dV'     'MLT24'
      'MLT25_dH'     'MLT25_dV'     'MLT25'
      'MLT26_dH'     'MLT26_dV'     'MLT26'
      'MLT31_dH'     'MLT31_dV'     'MLT31'
      'MLT32_dH'     'MLT32_dV'     'MLT32'
      'MLT33_dH'     'MLT33_dV'     'MLT33'
      'MLT34_dH'     'MLT34_dV'     'MLT34'
      'MLT35_dH'     'MLT35_dV'     'MLT35'
      'MLT41_dH'     'MLT41_dV'     'MLT41'
      'MLT42_dH'     'MLT42_dV'     'MLT42'
      'MLT43_dH'     'MLT43_dV'     'MLT43'
      'MLT44_dH'     'MLT44_dV'     'MLT44'
      'MRC11_dH'     'MRC11_dV'     'MRC11'
      'MRC12_dH'     'MRC12_dV'     'MRC12'
      'MRC13_dH'     'MRC13_dV'     'MRC13'
      'MRC14_dH'     'MRC14_dV'     'MRC14'
      'MRC15_dH'     'MRC15_dV'     'MRC15'
      'MRC21_dH'     'MRC21_dV'     'MRC21'
      'MRC22_dH'     'MRC22_dV'     'MRC22'
      'MRC23_dH'     'MRC23_dV'     'MRC23'
      'MRC24_dH'     'MRC24_dV'     'MRC24'
      'MRC31_dH'     'MRC31_dV'     'MRC31'
      'MRC32_dH'     'MRC32_dV'     'MRC32'
      'MRC33_dH'     'MRC33_dV'     'MRC33'
      'MRC41_dH'     'MRC41_dV'     'MRC41'
      'MRC42_dH'     'MRC42_dV'     'MRC42'
      'MRC43_dH'     'MRC43_dV'     'MRC43'
      'MRF11_dH'     'MRF11_dV'     'MRF11'
      'MRF12_dH'     'MRF12_dV'     'MRF12'
      'MRF21_dH'     'MRF21_dV'     'MRF21'
      'MRF22_dH'     'MRF22_dV'     'MRF22'
      'MRF23_dH'     'MRF23_dV'     'MRF23'
      'MRF31_dH'     'MRF31_dV'     'MRF31'
      'MRF32_dH'     'MRF32_dV'     'MRF32'
      'MRF33_dH'     'MRF33_dV'     'MRF33'
      'MRF34_dH'     'MRF34_dV'     'MRF34'
      'MRF41_dH'     'MRF41_dV'     'MRF41'
      'MRF42_dH'     'MRF42_dV'     'MRF42'
      'MRF43_dH'     'MRF43_dV'     'MRF43'
      'MRF44_dH'     'MRF44_dV'     'MRF44'
      'MRF45_dH'     'MRF45_dV'     'MRF45'
      'MRF51_dH'     'MRF51_dV'     'MRF51'
      'MRF52_dH'     'MRF52_dV'     'MRF52'
      'MRO11_dH'     'MRO11_dV'     'MRO11'
      'MRO12_dH'     'MRO12_dV'     'MRO12'
      'MRO21_dH'     'MRO21_dV'     'MRO21'
      'MRO22_dH'     'MRO22_dV'     'MRO22'
      'MRO31_dH'     'MRO31_dV'     'MRO31'
      'MRO32_dH'     'MRO32_dV'     'MRO32'
      'MRO33_dH'     'MRO33_dV'     'MRO33'
      'MRO41_dH'     'MRO41_dV'     'MRO41'
      'MRO42_dH'     'MRO42_dV'     'MRO42'
      'MRO43_dH'     'MRO43_dV'     'MRO43'
      'MRP11_dH'     'MRP11_dV'     'MRP11'
      'MRP12_dH'     'MRP12_dV'     'MRP12'
      'MRP13_dH'     'MRP13_dV'     'MRP13'
      'MRP21_dH'     'MRP21_dV'     'MRP21'
      'MRP22_dH'     'MRP22_dV'     'MRP22'
      'MRP31_dH'     'MRP31_dV'     'MRP31'
      'MRP32_dH'     'MRP32_dV'     'MRP32'
      'MRP33_dH'     'MRP33_dV'     'MRP33'
      'MRP34_dH'     'MRP34_dV'     'MRP34'
      'MRT11_dH'     'MRT11_dV'     'MRT11'
      'MRT12_dH'     'MRT12_dV'     'MRT12'
      'MRT13_dH'     'MRT13_dV'     'MRT13'
      'MRT14_dH'     'MRT14_dV'     'MRT14'
      'MRT15_dH'     'MRT15_dV'     'MRT15'
      'MRT16_dH'     'MRT16_dV'     'MRT16'
      'MRT21_dH'     'MRT21_dV'     'MRT21'
      'MRT22_dH'     'MRT22_dV'     'MRT22'
      'MRT23_dH'     'MRT23_dV'     'MRT23'
      'MRT24_dH'     'MRT24_dV'     'MRT24'
      'MRT25_dH'     'MRT25_dV'     'MRT25'
      'MRT26_dH'     'MRT26_dV'     'MRT26'
      'MRT31_dH'     'MRT31_dV'     'MRT31'
      'MRT32_dH'     'MRT32_dV'     'MRT32'
      'MRT33_dH'     'MRT33_dV'     'MRT33'
      'MRT34_dH'     'MRT34_dV'     'MRT34'
      'MRT35_dH'     'MRT35_dV'     'MRT35'
      'MRT41_dH'     'MRT41_dV'     'MRT41'
      'MRT42_dH'     'MRT42_dV'     'MRT42'
      'MRT43_dH'     'MRT43_dV'     'MRT43'
      'MRT44_dH'     'MRT44_dV'     'MRT44'
      'MZC01_dH'     'MZC01_dV'     'MZC01'
      'MZC02_dH'     'MZC02_dV'     'MZC02'
      'MZF01_dH'     'MZF01_dV'     'MZF01'
      'MZF02_dH'     'MZF02_dV'     'MZF02'
      'MZF03_dH'     'MZF03_dV'     'MZF03'
      'MZO01_dH'     'MZO01_dV'     'MZO01'
      'MZO02_dH'     'MZO02_dV'     'MZO02'
      'MZP01_dH'     'MZP01_dV'     'MZP01'
      'MZP02_dH'     'MZP02_dV'     'MZP02'
      };

  case 'ctf275_planar'
    planar = {
      'MLC11_dH'    'MLC11_dV'    'MLC11'
      'MLC12_dH'    'MLC12_dV'    'MLC12'
      'MLC13_dH'    'MLC13_dV'    'MLC13'
      'MLC14_dH'    'MLC14_dV'    'MLC14'
      'MLC15_dH'    'MLC15_dV'    'MLC15'
      'MLC16_dH'    'MLC16_dV'    'MLC16'
      'MLC17_dH'    'MLC17_dV'    'MLC17'
      'MLC21_dH'    'MLC21_dV'    'MLC21'
      'MLC22_dH'    'MLC22_dV'    'MLC22'
      'MLC23_dH'    'MLC23_dV'    'MLC23'
      'MLC24_dH'    'MLC24_dV'    'MLC24'
      'MLC25_dH'    'MLC25_dV'    'MLC25'
      'MLC31_dH'    'MLC31_dV'    'MLC31'
      'MLC32_dH'    'MLC32_dV'    'MLC32'
      'MLC41_dH'    'MLC41_dV'    'MLC41'
      'MLC42_dH'    'MLC42_dV'    'MLC42'
      'MLC51_dH'    'MLC51_dV'    'MLC51'
      'MLC52_dH'    'MLC52_dV'    'MLC52'
      'MLC53_dH'    'MLC53_dV'    'MLC53'
      'MLC54_dH'    'MLC54_dV'    'MLC54'
      'MLC55_dH'    'MLC55_dV'    'MLC55'
      'MLC61_dH'    'MLC61_dV'    'MLC61'
      'MLC62_dH'    'MLC62_dV'    'MLC62'
      'MLC63_dH'    'MLC63_dV'    'MLC63'
      'MLF11_dH'    'MLF11_dV'    'MLF11'
      'MLF12_dH'    'MLF12_dV'    'MLF12'
      'MLF13_dH'    'MLF13_dV'    'MLF13'
      'MLF14_dH'    'MLF14_dV'    'MLF14'
      'MLF21_dH'    'MLF21_dV'    'MLF21'
      'MLF22_dH'    'MLF22_dV'    'MLF22'
      'MLF23_dH'    'MLF23_dV'    'MLF23'
      'MLF24_dH'    'MLF24_dV'    'MLF24'
      'MLF25_dH'    'MLF25_dV'    'MLF25'
      'MLF31_dH'    'MLF31_dV'    'MLF31'
      'MLF32_dH'    'MLF32_dV'    'MLF32'
      'MLF33_dH'    'MLF33_dV'    'MLF33'
      'MLF34_dH'    'MLF34_dV'    'MLF34'
      'MLF35_dH'    'MLF35_dV'    'MLF35'
      'MLF41_dH'    'MLF41_dV'    'MLF41'
      'MLF42_dH'    'MLF42_dV'    'MLF42'
      'MLF43_dH'    'MLF43_dV'    'MLF43'
      'MLF44_dH'    'MLF44_dV'    'MLF44'
      'MLF45_dH'    'MLF45_dV'    'MLF45'
      'MLF46_dH'    'MLF46_dV'    'MLF46'
      'MLF51_dH'    'MLF51_dV'    'MLF51'
      'MLF52_dH'    'MLF52_dV'    'MLF52'
      'MLF53_dH'    'MLF53_dV'    'MLF53'
      'MLF54_dH'    'MLF54_dV'    'MLF54'
      'MLF55_dH'    'MLF55_dV'    'MLF55'
      'MLF56_dH'    'MLF56_dV'    'MLF56'
      'MLF61_dH'    'MLF61_dV'    'MLF61'
      'MLF62_dH'    'MLF62_dV'    'MLF62'
      'MLF63_dH'    'MLF63_dV'    'MLF63'
      'MLF64_dH'    'MLF64_dV'    'MLF64'
      'MLF65_dH'    'MLF65_dV'    'MLF65'
      'MLF66_dH'    'MLF66_dV'    'MLF66'
      'MLF67_dH'    'MLF67_dV'    'MLF67'
      'MLO11_dH'    'MLO11_dV'    'MLO11'
      'MLO12_dH'    'MLO12_dV'    'MLO12'
      'MLO13_dH'    'MLO13_dV'    'MLO13'
      'MLO14_dH'    'MLO14_dV'    'MLO14'
      'MLO21_dH'    'MLO21_dV'    'MLO21'
      'MLO22_dH'    'MLO22_dV'    'MLO22'
      'MLO23_dH'    'MLO23_dV'    'MLO23'
      'MLO24_dH'    'MLO24_dV'    'MLO24'
      'MLO31_dH'    'MLO31_dV'    'MLO31'
      'MLO32_dH'    'MLO32_dV'    'MLO32'
      'MLO33_dH'    'MLO33_dV'    'MLO33'
      'MLO34_dH'    'MLO34_dV'    'MLO34'
      'MLO41_dH'    'MLO41_dV'    'MLO41'
      'MLO42_dH'    'MLO42_dV'    'MLO42'
      'MLO43_dH'    'MLO43_dV'    'MLO43'
      'MLO44_dH'    'MLO44_dV'    'MLO44'
      'MLO51_dH'    'MLO51_dV'    'MLO51'
      'MLO52_dH'    'MLO52_dV'    'MLO52'
      'MLO53_dH'    'MLO53_dV'    'MLO53'
      'MLP11_dH'    'MLP11_dV'    'MLP11'
      'MLP12_dH'    'MLP12_dV'    'MLP12'
      'MLP21_dH'    'MLP21_dV'    'MLP21'
      'MLP22_dH'    'MLP22_dV'    'MLP22'
      'MLP23_dH'    'MLP23_dV'    'MLP23'
      'MLP31_dH'    'MLP31_dV'    'MLP31'
      'MLP32_dH'    'MLP32_dV'    'MLP32'
      'MLP33_dH'    'MLP33_dV'    'MLP33'
      'MLP34_dH'    'MLP34_dV'    'MLP34'
      'MLP35_dH'    'MLP35_dV'    'MLP35'
      'MLP41_dH'    'MLP41_dV'    'MLP41'
      'MLP42_dH'    'MLP42_dV'    'MLP42'
      'MLP43_dH'    'MLP43_dV'    'MLP43'
      'MLP44_dH'    'MLP44_dV'    'MLP44'
      'MLP45_dH'    'MLP45_dV'    'MLP45'
      'MLP51_dH'    'MLP51_dV'    'MLP51'
      'MLP52_dH'    'MLP52_dV'    'MLP52'
      'MLP53_dH'    'MLP53_dV'    'MLP53'
      'MLP54_dH'    'MLP54_dV'    'MLP54'
      'MLP55_dH'    'MLP55_dV'    'MLP55'
      'MLP56_dH'    'MLP56_dV'    'MLP56'
      'MLP57_dH'    'MLP57_dV'    'MLP57'
      'MLT11_dH'    'MLT11_dV'    'MLT11'
      'MLT12_dH'    'MLT12_dV'    'MLT12'
      'MLT13_dH'    'MLT13_dV'    'MLT13'
      'MLT14_dH'    'MLT14_dV'    'MLT14'
      'MLT15_dH'    'MLT15_dV'    'MLT15'
      'MLT16_dH'    'MLT16_dV'    'MLT16'
      'MLT21_dH'    'MLT21_dV'    'MLT21'
      'MLT22_dH'    'MLT22_dV'    'MLT22'
      'MLT23_dH'    'MLT23_dV'    'MLT23'
      'MLT24_dH'    'MLT24_dV'    'MLT24'
      'MLT25_dH'    'MLT25_dV'    'MLT25'
      'MLT26_dH'    'MLT26_dV'    'MLT26'
      'MLT27_dH'    'MLT27_dV'    'MLT27'
      'MLT31_dH'    'MLT31_dV'    'MLT31'
      'MLT32_dH'    'MLT32_dV'    'MLT32'
      'MLT33_dH'    'MLT33_dV'    'MLT33'
      'MLT34_dH'    'MLT34_dV'    'MLT34'
      'MLT35_dH'    'MLT35_dV'    'MLT35'
      'MLT36_dH'    'MLT36_dV'    'MLT36'
      'MLT37_dH'    'MLT37_dV'    'MLT37'
      'MLT41_dH'    'MLT41_dV'    'MLT41'
      'MLT42_dH'    'MLT42_dV'    'MLT42'
      'MLT43_dH'    'MLT43_dV'    'MLT43'
      'MLT44_dH'    'MLT44_dV'    'MLT44'
      'MLT45_dH'    'MLT45_dV'    'MLT45'
      'MLT46_dH'    'MLT46_dV'    'MLT46'
      'MLT47_dH'    'MLT47_dV'    'MLT47'
      'MLT51_dH'    'MLT51_dV'    'MLT51'
      'MLT52_dH'    'MLT52_dV'    'MLT52'
      'MLT53_dH'    'MLT53_dV'    'MLT53'
      'MLT54_dH'    'MLT54_dV'    'MLT54'
      'MLT55_dH'    'MLT55_dV'    'MLT55'
      'MLT56_dH'    'MLT56_dV'    'MLT56'
      'MLT57_dH'    'MLT57_dV'    'MLT57'
      'MRC11_dH'    'MRC11_dV'    'MRC11'
      'MRC12_dH'    'MRC12_dV'    'MRC12'
      'MRC13_dH'    'MRC13_dV'    'MRC13'
      'MRC14_dH'    'MRC14_dV'    'MRC14'
      'MRC15_dH'    'MRC15_dV'    'MRC15'
      'MRC16_dH'    'MRC16_dV'    'MRC16'
      'MRC17_dH'    'MRC17_dV'    'MRC17'
      'MRC21_dH'    'MRC21_dV'    'MRC21'
      'MRC22_dH'    'MRC22_dV'    'MRC22'
      'MRC23_dH'    'MRC23_dV'    'MRC23'
      'MRC24_dH'    'MRC24_dV'    'MRC24'
      'MRC25_dH'    'MRC25_dV'    'MRC25'
      'MRC31_dH'    'MRC31_dV'    'MRC31'
      'MRC32_dH'    'MRC32_dV'    'MRC32'
      'MRC41_dH'    'MRC41_dV'    'MRC41'
      'MRC42_dH'    'MRC42_dV'    'MRC42'
      'MRC51_dH'    'MRC51_dV'    'MRC51'
      'MRC52_dH'    'MRC52_dV'    'MRC52'
      'MRC53_dH'    'MRC53_dV'    'MRC53'
      'MRC54_dH'    'MRC54_dV'    'MRC54'
      'MRC55_dH'    'MRC55_dV'    'MRC55'
      'MRC61_dH'    'MRC61_dV'    'MRC61'
      'MRC62_dH'    'MRC62_dV'    'MRC62'
      'MRC63_dH'    'MRC63_dV'    'MRC63'
      'MRF11_dH'    'MRF11_dV'    'MRF11'
      'MRF12_dH'    'MRF12_dV'    'MRF12'
      'MRF13_dH'    'MRF13_dV'    'MRF13'
      'MRF14_dH'    'MRF14_dV'    'MRF14'
      'MRF21_dH'    'MRF21_dV'    'MRF21'
      'MRF22_dH'    'MRF22_dV'    'MRF22'
      'MRF23_dH'    'MRF23_dV'    'MRF23'
      'MRF24_dH'    'MRF24_dV'    'MRF24'
      'MRF25_dH'    'MRF25_dV'    'MRF25'
      'MRF31_dH'    'MRF31_dV'    'MRF31'
      'MRF32_dH'    'MRF32_dV'    'MRF32'
      'MRF33_dH'    'MRF33_dV'    'MRF33'
      'MRF34_dH'    'MRF34_dV'    'MRF34'
      'MRF35_dH'    'MRF35_dV'    'MRF35'
      'MRF41_dH'    'MRF41_dV'    'MRF41'
      'MRF42_dH'    'MRF42_dV'    'MRF42'
      'MRF43_dH'    'MRF43_dV'    'MRF43'
      'MRF44_dH'    'MRF44_dV'    'MRF44'
      'MRF45_dH'    'MRF45_dV'    'MRF45'
      'MRF46_dH'    'MRF46_dV'    'MRF46'
      'MRF51_dH'    'MRF51_dV'    'MRF51'
      'MRF52_dH'    'MRF52_dV'    'MRF52'
      'MRF53_dH'    'MRF53_dV'    'MRF53'
      'MRF54_dH'    'MRF54_dV'    'MRF54'
      'MRF55_dH'    'MRF55_dV'    'MRF55'
      'MRF56_dH'    'MRF56_dV'    'MRF56'
      'MRF61_dH'    'MRF61_dV'    'MRF61'
      'MRF62_dH'    'MRF62_dV'    'MRF62'
      'MRF63_dH'    'MRF63_dV'    'MRF63'
      'MRF64_dH'    'MRF64_dV'    'MRF64'
      'MRF65_dH'    'MRF65_dV'    'MRF65'
      'MRF66_dH'    'MRF66_dV'    'MRF66'
      'MRF67_dH'    'MRF67_dV'    'MRF67'
      'MRO11_dH'    'MRO11_dV'    'MRO11'
      'MRO12_dH'    'MRO12_dV'    'MRO12'
      'MRO13_dH'    'MRO13_dV'    'MRO13'
      'MRO14_dH'    'MRO14_dV'    'MRO14'
      'MRO21_dH'    'MRO21_dV'    'MRO21'
      'MRO22_dH'    'MRO22_dV'    'MRO22'
      'MRO23_dH'    'MRO23_dV'    'MRO23'
      'MRO24_dH'    'MRO24_dV'    'MRO24'
      'MRO31_dH'    'MRO31_dV'    'MRO31'
      'MRO32_dH'    'MRO32_dV'    'MRO32'
      'MRO33_dH'    'MRO33_dV'    'MRO33'
      'MRO34_dH'    'MRO34_dV'    'MRO34'
      'MRO41_dH'    'MRO41_dV'    'MRO41'
      'MRO42_dH'    'MRO42_dV'    'MRO42'
      'MRO43_dH'    'MRO43_dV'    'MRO43'
      'MRO44_dH'    'MRO44_dV'    'MRO44'
      'MRO51_dH'    'MRO51_dV'    'MRO51'
      'MRO52_dH'    'MRO52_dV'    'MRO52'
      'MRO53_dH'    'MRO53_dV'    'MRO53'
      'MRP11_dH'    'MRP11_dV'    'MRP11'
      'MRP12_dH'    'MRP12_dV'    'MRP12'
      'MRP21_dH'    'MRP21_dV'    'MRP21'
      'MRP22_dH'    'MRP22_dV'    'MRP22'
      'MRP23_dH'    'MRP23_dV'    'MRP23'
      'MRP31_dH'    'MRP31_dV'    'MRP31'
      'MRP32_dH'    'MRP32_dV'    'MRP32'
      'MRP33_dH'    'MRP33_dV'    'MRP33'
      'MRP34_dH'    'MRP34_dV'    'MRP34'
      'MRP35_dH'    'MRP35_dV'    'MRP35'
      'MRP41_dH'    'MRP41_dV'    'MRP41'
      'MRP42_dH'    'MRP42_dV'    'MRP42'
      'MRP43_dH'    'MRP43_dV'    'MRP43'
      'MRP44_dH'    'MRP44_dV'    'MRP44'
      'MRP45_dH'    'MRP45_dV'    'MRP45'
      'MRP51_dH'    'MRP51_dV'    'MRP51'
      'MRP52_dH'    'MRP52_dV'    'MRP52'
      'MRP53_dH'    'MRP53_dV'    'MRP53'
      'MRP54_dH'    'MRP54_dV'    'MRP54'
      'MRP55_dH'    'MRP55_dV'    'MRP55'
      'MRP56_dH'    'MRP56_dV'    'MRP56'
      'MRP57_dH'    'MRP57_dV'    'MRP57'
      'MRT11_dH'    'MRT11_dV'    'MRT11'
      'MRT12_dH'    'MRT12_dV'    'MRT12'
      'MRT13_dH'    'MRT13_dV'    'MRT13'
      'MRT14_dH'    'MRT14_dV'    'MRT14'
      'MRT15_dH'    'MRT15_dV'    'MRT15'
      'MRT16_dH'    'MRT16_dV'    'MRT16'
      'MRT21_dH'    'MRT21_dV'    'MRT21'
      'MRT22_dH'    'MRT22_dV'    'MRT22'
      'MRT23_dH'    'MRT23_dV'    'MRT23'
      'MRT24_dH'    'MRT24_dV'    'MRT24'
      'MRT25_dH'    'MRT25_dV'    'MRT25'
      'MRT26_dH'    'MRT26_dV'    'MRT26'
      'MRT27_dH'    'MRT27_dV'    'MRT27'
      'MRT31_dH'    'MRT31_dV'    'MRT31'
      'MRT32_dH'    'MRT32_dV'    'MRT32'
      'MRT33_dH'    'MRT33_dV'    'MRT33'
      'MRT34_dH'    'MRT34_dV'    'MRT34'
      'MRT35_dH'    'MRT35_dV'    'MRT35'
      'MRT36_dH'    'MRT36_dV'    'MRT36'
      'MRT37_dH'    'MRT37_dV'    'MRT37'
      'MRT41_dH'    'MRT41_dV'    'MRT41'
      'MRT42_dH'    'MRT42_dV'    'MRT42'
      'MRT43_dH'    'MRT43_dV'    'MRT43'
      'MRT44_dH'    'MRT44_dV'    'MRT44'
      'MRT45_dH'    'MRT45_dV'    'MRT45'
      'MRT46_dH'    'MRT46_dV'    'MRT46'
      'MRT47_dH'    'MRT47_dV'    'MRT47'
      'MRT51_dH'    'MRT51_dV'    'MRT51'
      'MRT52_dH'    'MRT52_dV'    'MRT52'
      'MRT53_dH'    'MRT53_dV'    'MRT53'
      'MRT54_dH'    'MRT54_dV'    'MRT54'
      'MRT55_dH'    'MRT55_dV'    'MRT55'
      'MRT56_dH'    'MRT56_dV'    'MRT56'
      'MRT57_dH'    'MRT57_dV'    'MRT57'
      'MZC01_dH'    'MZC01_dV'    'MZC01'
      'MZC02_dH'    'MZC02_dV'    'MZC02'
      'MZC03_dH'    'MZC03_dV'    'MZC03'
      'MZC04_dH'    'MZC04_dV'    'MZC04'
      'MZF01_dH'    'MZF01_dV'    'MZF01'
      'MZF02_dH'    'MZF02_dV'    'MZF02'
      'MZF03_dH'    'MZF03_dV'    'MZF03'
      'MZO01_dH'    'MZO01_dV'    'MZO01'
      'MZO02_dH'    'MZO02_dV'    'MZO02'
      'MZO03_dH'    'MZO03_dV'    'MZO03'
      'MZP01_dH'    'MZP01_dV'    'MZP01'
      };

  case 'neuromag122'
    planar = {
      'MEG 001'    'MEG 002'    'MEG 001+002'
      'MEG 003'    'MEG 004'    'MEG 003+004'
      'MEG 005'    'MEG 006'    'MEG 005+006'
      'MEG 007'    'MEG 008'    'MEG 007+008'
      'MEG 009'    'MEG 010'    'MEG 009+010'
      'MEG 011'    'MEG 012'    'MEG 011+012'
      'MEG 013'    'MEG 014'    'MEG 013+014'
      'MEG 015'    'MEG 016'    'MEG 015+016'
      'MEG 017'    'MEG 018'    'MEG 017+018'
      'MEG 019'    'MEG 020'    'MEG 019+020'
      'MEG 021'    'MEG 022'    'MEG 021+022'
      'MEG 023'    'MEG 024'    'MEG 023+024'
      'MEG 025'    'MEG 026'    'MEG 025+026'
      'MEG 027'    'MEG 028'    'MEG 027+028'
      'MEG 029'    'MEG 030'    'MEG 029+030'
      'MEG 031'    'MEG 032'    'MEG 031+032'
      'MEG 033'    'MEG 034'    'MEG 033+034'
      'MEG 035'    'MEG 036'    'MEG 035+036'
      'MEG 037'    'MEG 038'    'MEG 037+038'
      'MEG 039'    'MEG 040'    'MEG 039+040'
      'MEG 041'    'MEG 042'    'MEG 041+042'
      'MEG 043'    'MEG 044'    'MEG 043+044'
      'MEG 045'    'MEG 046'    'MEG 045+046'
      'MEG 047'    'MEG 048'    'MEG 047+048'
      'MEG 049'    'MEG 050'    'MEG 049+050'
      'MEG 051'    'MEG 052'    'MEG 051+052'
      'MEG 053'    'MEG 054'    'MEG 053+054'
      'MEG 055'    'MEG 056'    'MEG 055+056'
      'MEG 057'    'MEG 058'    'MEG 057+058'
      'MEG 059'    'MEG 060'    'MEG 059+060'
      'MEG 061'    'MEG 062'    'MEG 061+062'
      'MEG 063'    'MEG 064'    'MEG 063+064'
      'MEG 065'    'MEG 066'    'MEG 065+066'
      'MEG 067'    'MEG 068'    'MEG 067+068'
      'MEG 069'    'MEG 070'    'MEG 069+070'
      'MEG 071'    'MEG 072'    'MEG 071+072'
      'MEG 073'    'MEG 074'    'MEG 073+074'
      'MEG 075'    'MEG 076'    'MEG 075+076'
      'MEG 077'    'MEG 078'    'MEG 077+078'
      'MEG 079'    'MEG 080'    'MEG 079+080'
      'MEG 081'    'MEG 082'    'MEG 081+082'
      'MEG 083'    'MEG 084'    'MEG 083+084'
      'MEG 085'    'MEG 086'    'MEG 085+086'
      'MEG 087'    'MEG 088'    'MEG 087+088'
      'MEG 089'    'MEG 090'    'MEG 089+090'
      'MEG 091'    'MEG 092'    'MEG 091+092'
      'MEG 093'    'MEG 094'    'MEG 093+094'
      'MEG 095'    'MEG 096'    'MEG 095+096'
      'MEG 097'    'MEG 098'    'MEG 097+098'
      'MEG 099'    'MEG 100'    'MEG 099+100'
      'MEG 101'    'MEG 102'    'MEG 101+102'
      'MEG 103'    'MEG 104'    'MEG 103+104'
      'MEG 105'    'MEG 106'    'MEG 105+106'
      'MEG 107'    'MEG 108'    'MEG 107+108'
      'MEG 109'    'MEG 110'    'MEG 109+110'
      'MEG 111'    'MEG 112'    'MEG 111+112'
      'MEG 113'    'MEG 114'    'MEG 113+114'
      'MEG 115'    'MEG 116'    'MEG 115+116'
      'MEG 117'    'MEG 118'    'MEG 117+118'
      'MEG 119'    'MEG 120'    'MEG 119+120'
      'MEG 121'    'MEG 122'    'MEG 121+122'
      };

  case 'neuromag306'
    count1 = mean(ismember(data.label, senslabel('neuromag306')));
    count2 = mean(ismember(data.label, senslabel('neuromag306alt')));

    if count1>count2
      % it looks like the channels have a space in them
      % the last commented column contains the magnetometer labels
      planar = {
        'MEG 0112'    'MEG 0113'    'MEG 0112+0113'    % 'MEG 0111'
        'MEG 0122'    'MEG 0123'    'MEG 0122+0123'    % 'MEG 0121'
        'MEG 0132'    'MEG 0133'    'MEG 0132+0133'    % 'MEG 0131'
        'MEG 0142'    'MEG 0143'    'MEG 0142+0143'    % 'MEG 0141'
        'MEG 0212'    'MEG 0213'    'MEG 0212+0213'    % 'MEG 0211'
        'MEG 0222'    'MEG 0223'    'MEG 0222+0223'    % 'MEG 0221'
        'MEG 0232'    'MEG 0233'    'MEG 0232+0233'    % 'MEG 0231'
        'MEG 0242'    'MEG 0243'    'MEG 0242+0243'    % 'MEG 0241'
        'MEG 0312'    'MEG 0313'    'MEG 0312+0313'    % 'MEG 0311'
        'MEG 0322'    'MEG 0323'    'MEG 0322+0323'    % 'MEG 0321'
        'MEG 0332'    'MEG 0333'    'MEG 0332+0333'    % 'MEG 0331'
        'MEG 0342'    'MEG 0343'    'MEG 0342+0343'    % 'MEG 0341'
        'MEG 0412'    'MEG 0413'    'MEG 0412+0413'    % 'MEG 0411'
        'MEG 0422'    'MEG 0423'    'MEG 0422+0423'    % 'MEG 0421'
        'MEG 0432'    'MEG 0433'    'MEG 0432+0433'    % 'MEG 0431'
        'MEG 0442'    'MEG 0443'    'MEG 0442+0443'    % 'MEG 0441'
        'MEG 0512'    'MEG 0513'    'MEG 0512+0513'    % 'MEG 0511'
        'MEG 0522'    'MEG 0523'    'MEG 0522+0523'    % 'MEG 0521'
        'MEG 0532'    'MEG 0533'    'MEG 0532+0533'    % 'MEG 0531'
        'MEG 0542'    'MEG 0543'    'MEG 0542+0543'    % 'MEG 0541'
        'MEG 0612'    'MEG 0613'    'MEG 0612+0613'    % 'MEG 0611'
        'MEG 0622'    'MEG 0623'    'MEG 0622+0623'    % 'MEG 0621'
        'MEG 0632'    'MEG 0633'    'MEG 0632+0633'    % 'MEG 0631'
        'MEG 0642'    'MEG 0643'    'MEG 0642+0643'    % 'MEG 0641'
        'MEG 0712'    'MEG 0713'    'MEG 0712+0713'    % 'MEG 0711'
        'MEG 0722'    'MEG 0723'    'MEG 0722+0723'    % 'MEG 0721'
        'MEG 0732'    'MEG 0733'    'MEG 0732+0733'    % 'MEG 0731'
        'MEG 0742'    'MEG 0743'    'MEG 0742+0743'    % 'MEG 0741'
        'MEG 0812'    'MEG 0813'    'MEG 0812+0813'    % 'MEG 0811'
        'MEG 0822'    'MEG 0823'    'MEG 0822+0823'    % 'MEG 0821'
        'MEG 0912'    'MEG 0913'    'MEG 0912+0913'    % 'MEG 0911'
        'MEG 0922'    'MEG 0923'    'MEG 0922+0923'    % 'MEG 0921'
        'MEG 0932'    'MEG 0933'    'MEG 0932+0933'    % 'MEG 0931'
        'MEG 0942'    'MEG 0943'    'MEG 0942+0943'    % 'MEG 0941'
        'MEG 1012'    'MEG 1013'    'MEG 1012+1013'    % 'MEG 1011'
        'MEG 1022'    'MEG 1023'    'MEG 1022+1023'    % 'MEG 1021'
        'MEG 1032'    'MEG 1033'    'MEG 1032+1033'    % 'MEG 1031'
        'MEG 1042'    'MEG 1043'    'MEG 1042+1043'    % 'MEG 1041'
        'MEG 1112'    'MEG 1113'    'MEG 1112+1113'    % 'MEG 1111'
        'MEG 1122'    'MEG 1123'    'MEG 1122+1123'    % 'MEG 1121'
        'MEG 1132'    'MEG 1133'    'MEG 1132+1133'    % 'MEG 1131'
        'MEG 1142'    'MEG 1143'    'MEG 1142+1143'    % 'MEG 1141'
        'MEG 1212'    'MEG 1213'    'MEG 1212+1213'    % 'MEG 1211'
        'MEG 1222'    'MEG 1223'    'MEG 1222+1223'    % 'MEG 1221'
        'MEG 1232'    'MEG 1233'    'MEG 1232+1233'    % 'MEG 1231'
        'MEG 1242'    'MEG 1243'    'MEG 1242+1243'    % 'MEG 1241'
        'MEG 1312'    'MEG 1313'    'MEG 1312+1313'    % 'MEG 1311'
        'MEG 1322'    'MEG 1323'    'MEG 1322+1323'    % 'MEG 1321'
        'MEG 1332'    'MEG 1333'    'MEG 1332+1333'    % 'MEG 1331'
        'MEG 1342'    'MEG 1343'    'MEG 1342+1343'    % 'MEG 1341'
        'MEG 1412'    'MEG 1413'    'MEG 1412+1413'    % 'MEG 1411'
        'MEG 1422'    'MEG 1423'    'MEG 1422+1423'    % 'MEG 1421'
        'MEG 1432'    'MEG 1433'    'MEG 1432+1433'    % 'MEG 1431'
        'MEG 1442'    'MEG 1443'    'MEG 1442+1443'    % 'MEG 1441'
        'MEG 1512'    'MEG 1513'    'MEG 1512+1513'    % 'MEG 1511'
        'MEG 1522'    'MEG 1523'    'MEG 1522+1523'    % 'MEG 1521'
        'MEG 1532'    'MEG 1533'    'MEG 1532+1533'    % 'MEG 1531'
        'MEG 1542'    'MEG 1543'    'MEG 1542+1543'    % 'MEG 1541'
        'MEG 1612'    'MEG 1613'    'MEG 1612+1613'    % 'MEG 1611'
        'MEG 1622'    'MEG 1623'    'MEG 1622+1623'    % 'MEG 1621'
        'MEG 1632'    'MEG 1633'    'MEG 1632+1633'    % 'MEG 1631'
        'MEG 1642'    'MEG 1643'    'MEG 1642+1643'    % 'MEG 1641'
        'MEG 1712'    'MEG 1713'    'MEG 1712+1713'    % 'MEG 1711'
        'MEG 1722'    'MEG 1723'    'MEG 1722+1723'    % 'MEG 1721'
        'MEG 1732'    'MEG 1733'    'MEG 1732+1733'    % 'MEG 1731'
        'MEG 1742'    'MEG 1743'    'MEG 1742+1743'    % 'MEG 1741'
        'MEG 1812'    'MEG 1813'    'MEG 1812+1813'    % 'MEG 1811'
        'MEG 1822'    'MEG 1823'    'MEG 1822+1823'    % 'MEG 1821'
        'MEG 1832'    'MEG 1833'    'MEG 1832+1833'    % 'MEG 1831'
        'MEG 1842'    'MEG 1843'    'MEG 1842+1843'    % 'MEG 1841'
        'MEG 1912'    'MEG 1913'    'MEG 1912+1913'    % 'MEG 1911'
        'MEG 1922'    'MEG 1923'    'MEG 1922+1923'    % 'MEG 1921'
        'MEG 1932'    'MEG 1933'    'MEG 1932+1933'    % 'MEG 1931'
        'MEG 1942'    'MEG 1943'    'MEG 1942+1943'    % 'MEG 1941'
        'MEG 2012'    'MEG 2013'    'MEG 2012+2013'    % 'MEG 2011'
        'MEG 2022'    'MEG 2023'    'MEG 2022+2023'    % 'MEG 2021'
        'MEG 2032'    'MEG 2033'    'MEG 2032+2033'    % 'MEG 2031'
        'MEG 2042'    'MEG 2043'    'MEG 2042+2043'    % 'MEG 2041'
        'MEG 2112'    'MEG 2113'    'MEG 2112+2113'    % 'MEG 2111'
        'MEG 2122'    'MEG 2123'    'MEG 2122+2123'    % 'MEG 2121'
        'MEG 2132'    'MEG 2133'    'MEG 2132+2133'    % 'MEG 2131'
        'MEG 2142'    'MEG 2143'    'MEG 2142+2143'    % 'MEG 2141'
        'MEG 2212'    'MEG 2213'    'MEG 2212+2213'    % 'MEG 2211'
        'MEG 2222'    'MEG 2223'    'MEG 2222+2223'    % 'MEG 2221'
        'MEG 2232'    'MEG 2233'    'MEG 2232+2233'    % 'MEG 2231'
        'MEG 2242'    'MEG 2243'    'MEG 2242+2243'    % 'MEG 2241'
        'MEG 2312'    'MEG 2313'    'MEG 2312+2313'    % 'MEG 2311'
        'MEG 2322'    'MEG 2323'    'MEG 2322+2323'    % 'MEG 2321'
        'MEG 2332'    'MEG 2333'    'MEG 2332+2333'    % 'MEG 2331'
        'MEG 2342'    'MEG 2343'    'MEG 2342+2343'    % 'MEG 2341'
        'MEG 2412'    'MEG 2413'    'MEG 2412+2413'    % 'MEG 2411'
        'MEG 2422'    'MEG 2423'    'MEG 2422+2423'    % 'MEG 2421'
        'MEG 2432'    'MEG 2433'    'MEG 2432+2433'    % 'MEG 2431'
        'MEG 2442'    'MEG 2443'    'MEG 2442+2443'    % 'MEG 2441'
        'MEG 2512'    'MEG 2513'    'MEG 2512+2513'    % 'MEG 2511'
        'MEG 2522'    'MEG 2523'    'MEG 2522+2523'    % 'MEG 2521'
        'MEG 2532'    'MEG 2533'    'MEG 2532+2533'    % 'MEG 2531'
        'MEG 2542'    'MEG 2543'    'MEG 2542+2543'    % 'MEG 2541'
        'MEG 2612'    'MEG 2613'    'MEG 2612+2613'    % 'MEG 2611'
        'MEG 2622'    'MEG 2623'    'MEG 2622+2623'    % 'MEG 2621'
        'MEG 2632'    'MEG 2633'    'MEG 2632+2633'    % 'MEG 2631'
        'MEG 2642'    'MEG 2643'    'MEG 2642+2643'    % 'MEG 2641'
        };
    elseif count1<count2
      % it looks like the channels do not have a space in them
      % the last commented column contains the magnetometer labels
      planar = {
        'MEG0112'    'MEG0113'    'MEG0112+0113'    % 'MEG0111'
        'MEG0122'    'MEG0123'    'MEG0122+0123'    % 'MEG0121'
        'MEG0132'    'MEG0133'    'MEG0132+0133'    % 'MEG0131'
        'MEG0142'    'MEG0143'    'MEG0142+0143'    % 'MEG0141'
        'MEG0212'    'MEG0213'    'MEG0212+0213'    % 'MEG0211'
        'MEG0222'    'MEG0223'    'MEG0222+0223'    % 'MEG0221'
        'MEG0232'    'MEG0233'    'MEG0232+0233'    % 'MEG0231'
        'MEG0242'    'MEG0243'    'MEG0242+0243'    % 'MEG0241'
        'MEG0312'    'MEG0313'    'MEG0312+0313'    % 'MEG0311'
        'MEG0322'    'MEG0323'    'MEG0322+0323'    % 'MEG0321'
        'MEG0332'    'MEG0333'    'MEG0332+0333'    % 'MEG0331'
        'MEG0342'    'MEG0343'    'MEG0342+0343'    % 'MEG0341'
        'MEG0412'    'MEG0413'    'MEG0412+0413'    % 'MEG0411'
        'MEG0422'    'MEG0423'    'MEG0422+0423'    % 'MEG0421'
        'MEG0432'    'MEG0433'    'MEG0432+0433'    % 'MEG0431'
        'MEG0442'    'MEG0443'    'MEG0442+0443'    % 'MEG0441'
        'MEG0512'    'MEG0513'    'MEG0512+0513'    % 'MEG0511'
        'MEG0522'    'MEG0523'    'MEG0522+0523'    % 'MEG0521'
        'MEG0532'    'MEG0533'    'MEG0532+0533'    % 'MEG0531'
        'MEG0542'    'MEG0543'    'MEG0542+0543'    % 'MEG0541'
        'MEG0612'    'MEG0613'    'MEG0612+0613'    % 'MEG0611'
        'MEG0622'    'MEG0623'    'MEG0622+0623'    % 'MEG0621'
        'MEG0632'    'MEG0633'    'MEG0632+0633'    % 'MEG0631'
        'MEG0642'    'MEG0643'    'MEG0642+0643'    % 'MEG0641'
        'MEG0712'    'MEG0713'    'MEG0712+0713'    % 'MEG0711'
        'MEG0722'    'MEG0723'    'MEG0722+0723'    % 'MEG0721'
        'MEG0732'    'MEG0733'    'MEG0732+0733'    % 'MEG0731'
        'MEG0742'    'MEG0743'    'MEG0742+0743'    % 'MEG0741'
        'MEG0812'    'MEG0813'    'MEG0812+0813'    % 'MEG0811'
        'MEG0822'    'MEG0823'    'MEG0822+0823'    % 'MEG0821'
        'MEG0912'    'MEG0913'    'MEG0912+0913'    % 'MEG0911'
        'MEG0922'    'MEG0923'    'MEG0922+0923'    % 'MEG0921'
        'MEG0932'    'MEG0933'    'MEG0932+0933'    % 'MEG0931'
        'MEG0942'    'MEG0943'    'MEG0942+0943'    % 'MEG0941'
        'MEG1012'    'MEG1013'    'MEG1012+1013'    % 'MEG1011'
        'MEG1022'    'MEG1023'    'MEG1022+1023'    % 'MEG1021'
        'MEG1032'    'MEG1033'    'MEG1032+1033'    % 'MEG1031'
        'MEG1042'    'MEG1043'    'MEG1042+1043'    % 'MEG1041'
        'MEG1112'    'MEG1113'    'MEG1112+1113'    % 'MEG1111'
        'MEG1122'    'MEG1123'    'MEG1122+1123'    % 'MEG1121'
        'MEG1132'    'MEG1133'    'MEG1132+1133'    % 'MEG1131'
        'MEG1142'    'MEG1143'    'MEG1142+1143'    % 'MEG1141'
        'MEG1212'    'MEG1213'    'MEG1212+1213'    % 'MEG1211'
        'MEG1222'    'MEG1223'    'MEG1222+1223'    % 'MEG1221'
        'MEG1232'    'MEG1233'    'MEG1232+1233'    % 'MEG1231'
        'MEG1242'    'MEG1243'    'MEG1242+1243'    % 'MEG1241'
        'MEG1312'    'MEG1313'    'MEG1312+1313'    % 'MEG1311'
        'MEG1322'    'MEG1323'    'MEG1322+1323'    % 'MEG1321'
        'MEG1332'    'MEG1333'    'MEG1332+1333'    % 'MEG1331'
        'MEG1342'    'MEG1343'    'MEG1342+1343'    % 'MEG1341'
        'MEG1412'    'MEG1413'    'MEG1412+1413'    % 'MEG1411'
        'MEG1422'    'MEG1423'    'MEG1422+1423'    % 'MEG1421'
        'MEG1432'    'MEG1433'    'MEG1432+1433'    % 'MEG1431'
        'MEG1442'    'MEG1443'    'MEG1442+1443'    % 'MEG1441'
        'MEG1512'    'MEG1513'    'MEG1512+1513'    % 'MEG1511'
        'MEG1522'    'MEG1523'    'MEG1522+1523'    % 'MEG1521'
        'MEG1532'    'MEG1533'    'MEG1532+1533'    % 'MEG1531'
        'MEG1542'    'MEG1543'    'MEG1542+1543'    % 'MEG1541'
        'MEG1612'    'MEG1613'    'MEG1612+1613'    % 'MEG1611'
        'MEG1622'    'MEG1623'    'MEG1622+1623'    % 'MEG1621'
        'MEG1632'    'MEG1633'    'MEG1632+1633'    % 'MEG1631'
        'MEG1642'    'MEG1643'    'MEG1642+1643'    % 'MEG1641'
        'MEG1712'    'MEG1713'    'MEG1712+1713'    % 'MEG1711'
        'MEG1722'    'MEG1723'    'MEG1722+1723'    % 'MEG1721'
        'MEG1732'    'MEG1733'    'MEG1732+1733'    % 'MEG1731'
        'MEG1742'    'MEG1743'    'MEG1742+1743'    % 'MEG1741'
        'MEG1812'    'MEG1813'    'MEG1812+1813'    % 'MEG1811'
        'MEG1822'    'MEG1823'    'MEG1822+1823'    % 'MEG1821'
        'MEG1832'    'MEG1833'    'MEG1832+1833'    % 'MEG1831'
        'MEG1842'    'MEG1843'    'MEG1842+1843'    % 'MEG1841'
        'MEG1912'    'MEG1913'    'MEG1912+1913'    % 'MEG1911'
        'MEG1922'    'MEG1923'    'MEG1922+1923'    % 'MEG1921'
        'MEG1932'    'MEG1933'    'MEG1932+1933'    % 'MEG1931'
        'MEG1942'    'MEG1943'    'MEG1942+1943'    % 'MEG1941'
        'MEG2012'    'MEG2013'    'MEG2012+2013'    % 'MEG2011'
        'MEG2022'    'MEG2023'    'MEG2022+2023'    % 'MEG2021'
        'MEG2032'    'MEG2033'    'MEG2032+2033'    % 'MEG2031'
        'MEG2042'    'MEG2043'    'MEG2042+2043'    % 'MEG2041'
        'MEG2112'    'MEG2113'    'MEG2112+2113'    % 'MEG2111'
        'MEG2122'    'MEG2123'    'MEG2122+2123'    % 'MEG2121'
        'MEG2132'    'MEG2133'    'MEG2132+2133'    % 'MEG2131'
        'MEG2142'    'MEG2143'    'MEG2142+2143'    % 'MEG2141'
        'MEG2212'    'MEG2213'    'MEG2212+2213'    % 'MEG2211'
        'MEG2222'    'MEG2223'    'MEG2222+2223'    % 'MEG2221'
        'MEG2232'    'MEG2233'    'MEG2232+2233'    % 'MEG2231'
        'MEG2242'    'MEG2243'    'MEG2242+2243'    % 'MEG2241'
        'MEG2312'    'MEG2313'    'MEG2312+2313'    % 'MEG2311'
        'MEG2322'    'MEG2323'    'MEG2322+2323'    % 'MEG2321'
        'MEG2332'    'MEG2333'    'MEG2332+2333'    % 'MEG2331'
        'MEG2342'    'MEG2343'    'MEG2342+2343'    % 'MEG2341'
        'MEG2412'    'MEG2413'    'MEG2412+2413'    % 'MEG2411'
        'MEG2422'    'MEG2423'    'MEG2422+2423'    % 'MEG2421'
        'MEG2432'    'MEG2433'    'MEG2432+2433'    % 'MEG2431'
        'MEG2442'    'MEG2443'    'MEG2442+2443'    % 'MEG2441'
        'MEG2512'    'MEG2513'    'MEG2512+2513'    % 'MEG2511'
        'MEG2522'    'MEG2523'    'MEG2522+2523'    % 'MEG2521'
        'MEG2532'    'MEG2533'    'MEG2532+2533'    % 'MEG2531'
        'MEG2542'    'MEG2543'    'MEG2542+2543'    % 'MEG2541'
        'MEG2612'    'MEG2613'    'MEG2612+2613'    % 'MEG2611'
        'MEG2622'    'MEG2623'    'MEG2622+2623'    % 'MEG2621'
        'MEG2632'    'MEG2633'    'MEG2632+2633'    % 'MEG2631'
        'MEG2642'    'MEG2643'    'MEG2642+2643'    % 'MEG2641'
        };
    end

  case 'bti148_planar'
    planar = cell(148,3);
    for k = 1:148
      planar{k,1} = ['A',num2str(k),'_dH'];
      planar{k,2} = ['A',num2str(k),'_dV'];
      planar{k,3} = ['A',num2str(k)];
    end

  case 'bti248_planar'
    planar = cell(248,3);
    for k = 1:248
      planar{k,1} = ['A',num2str(k),'_dH'];
      planar{k,2} = ['A',num2str(k),'_dV'];
      planar{k,3} = ['A',num2str(k)];
    end
    
  case 'itab153_planar'
    planar = cell(153,3);
    for k = 1:153
      planar{k,1} = sprintf('MAG_%03d_dH', k-1);
      planar{k,2} = sprintf('MAG_%03d_dV', k-1);
      planar{k,3} = sprintf('MAG_%03d',    k-1);
    end
    
  case 'yokogawa160_planar'
    % note that this uses MATLAB style 1-offset indexing and not C style 0-offset indexing
    % this should be consistent with: read_yokogawa_header, ft_channelselection, yokogawa2grad, ft_senslabel
    planar = cell(160,3);
    for k = 1:160
      planar{k,1} = sprintf('AG%03d_dH', k);
      planar{k,2} = sprintf('AG%03d_dV', k);
      planar{k,3} = sprintf('AG%03d',    k);
    end

  case 'yokogawa64_planar'
    % note that this uses MATLAB style 1-offset indexing and not C style 0-offset indexing
    % this should be consistent with: read_yokogawa_header, ft_channelselection, yokogawa2grad, ft_senslabel
    planar = cell(64,3);
    for k = 1:64
      planar{k,1} = sprintf('AG%03d_dH', k);
      planar{k,2} = sprintf('AG%03d_dV', k);
      planar{k,3} = sprintf('AG%03d',    k);
    end

  otherwise
    % try to define the horizontal, vertical and combined channel based on the input data 
    islabel = isa(data, 'cell') && ~isempty(data) && isa(data{1}, 'char');
    if islabel
      if any(cellfun(@isempty, regexp(data, '_dV$')))
        % assume that it is a nicely behaving set of planar channel pairs
        selH = find(~cellfun(@isempty, regexp(data, '_dH$')));
        selV = find(~cellfun(@isempty, regexp(data, '_dV$')));
        if length(selH) ~= length(selV)
          error('inconsistent number of horizontal and vertical planar channels');
        end
        for i=1:length(selH)
          basename = data{selH(i)}(1:(end-3));
          planar{i,1} = sprintf('%s_dH', basename);
          planar{i,2} = sprintf('%s_dV', basename);
          planar{i,3} = sprintf('%s',    basename);
        end
      else
        % assume that it is a nicely behaving set of non-planar channels
        for i=1:length(data)
          planar{i,1} = sprintf('%s_dH', data{i});
          planar{i,2} = sprintf('%s_dV', data{i});
          planar{i,3} = sprintf('%s',    data{i});
        end
      end % if contains _dV

    else % ~islabel
      error('unrecognized MEG system');
    end
end

