function Pstar = CriticalPressure(Pt7,nozzleEfficiency,burntGamma)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Pstar = Pt7 * (1 - (1/ nozzleEfficiency) * ((burntGamma - 1)/(burntGamma + 1)))^(burntGamma/(burntGamma - 1));
end

