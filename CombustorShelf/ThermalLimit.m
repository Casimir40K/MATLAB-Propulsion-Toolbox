function thermalLimit = ThermalLimit(StaticTemperature,PeakCycleTemperature,CpAir,CpTotal)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
thermalLimit = (CpTotal * PeakCycleTemperature) / (CpAir * StaticTemperature);
end

