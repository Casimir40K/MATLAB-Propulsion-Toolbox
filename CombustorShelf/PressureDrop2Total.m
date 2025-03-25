function combustorTotalPressure = PressureDrop2Total(compressorTotalPressure,pressureDrop)
%PRESSUREDROP2TOTAL Summary of this function goes here
%   Detailed explanation goes here
combustorTotalPressure = compressorTotalPressure * (1 - pressureDrop);
end

