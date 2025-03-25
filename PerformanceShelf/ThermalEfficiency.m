function thermalEfficiency = ThermalEfficiency(f,V9,V0,reactionHeat)
%THERMALEFFICIENCY Summary of this function goes here
%   Detailed explanation goes here
thermalEfficiency = (((1 + f) * V9^2) - V0^2) / (2 * f * reactionHeat * 1000);
end

