function piN = NozzlePressureRatio(nozzleEfficiency,NPR,staticPressure,P9,burntGamma)
%UNTITLED Summary of this function goes here
pressuregamma = (burntGamma - 1)/ burntGamma;
tempgamma = burntGamma / (burntGamma - 1);
%   Detailed explanation goes here
piN =  1/(nozzleEfficiency - ((nozzleEfficiency) / (NPR * (staticPressure/P9))^(pressuregamma)))^tempgamma;
end

