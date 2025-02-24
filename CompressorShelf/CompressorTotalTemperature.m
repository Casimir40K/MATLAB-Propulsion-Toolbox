function compressorTotalTemperature = CompressorTotalTemperature(inletTotalTemperature,compressorPressureRatio,fluidName,adiabaticEfficiency)
%COMPRESSORTOTALTEMPERATURE Summary of this function goes here
%   Detailed explanation goes here
properties = FluidProperties(fluidName);
gamma = properties.gamma;

compressorTotalTemperature = (inletTotalTemperature * (1 + ((compressorPressureRatio^((gamma - 1)/gamma) - 1)/(adiabaticEfficiency))));





end

