function turbineEfficiency = TurbineEfficiency(tauT,polyTurbineEfficiency)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
turbineEfficiency = (1 - tauT) / (1 - tauT^(1/polyTurbineEfficiency));
end

