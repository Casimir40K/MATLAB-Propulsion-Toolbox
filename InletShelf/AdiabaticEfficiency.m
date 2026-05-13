function [etaAdiabatic, ActualStagnationT] = AdiabaticEfficiency(staticTemperature,mach,cP,energyLoss)
% Stagnation Temperatrure
% [stagTemp,staticTemperature] =
% IsentropicTemp(NaN,staticTemperature,mach,NaN); UNECCESARY
stagTemp = staticTemperature * (1 + (((1.4 - 1)/2)* mach ^ 2));

% finding the actual stagnation temperature given the engery loss
actualStagTemp = stagTemp - (energyLoss / cP);

% Finding the adiabatic efficiency

etaAdiabatic = ( (actualStagTemp - staticTemperature) / (stagTemp - staticTemperature) );
end
