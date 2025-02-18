function energyLoss = Pressure2EnergyLoss(staticTemperature,staticPressure,pressureLoss,gamma,mach)
% Converts pressure loss at inlet to energy loss at inlet using the ideal
% gas law and the definition of stgnation enthalpy



% Finding stagnation pressure and temperature
stagnationPressure = staticPressure * (1 + (((gamma - 1)/2)* mach ^ 2))^(gamma/(gamma-1));
stagnationTemperature = staticTemperature * (1 + (((gamma - 1)/2)* mach ^ 2));
% Conversion of pressure loss into energy loss
energyLoss = stagnationTemperature * (1 - (1 - pressureLoss / stagnationPressure)^((gamma-1) / (gamma)));

end