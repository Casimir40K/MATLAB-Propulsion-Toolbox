function etaC = CompressorEfficiency(PressureRatio,TemperatureRatio,gamma)
%COMPRESSOREFFICIENCY Summary of this function goes here
%   Detailed explanation goes here
etaC = ((PressureRatio^((gamma - 1) / gamma) - 1) / (TemperatureRatio - 1);
end

