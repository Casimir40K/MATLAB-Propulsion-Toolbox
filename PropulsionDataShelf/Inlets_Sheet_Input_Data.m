clear all
clear figure
clc

staticPressure = 75.22; staticTemperature = 272.15; flightSpeed = 300; energyLoss = 3; cP = 1.004; gamma = 1.4; q = 4;
% mach = 300 / sqrt(gamma*287*263);
% mach = MachNumber(flightSpeed,staticTemperature);
mach = MachNumber(flightSpeed,staticTemperature,'m/s');
etaAdiabaticQ4 = AdiabaticEfficiency(staticTemperature,mach,cP,energyLoss)
pressureRecoverFactorQ4 = InletPressureRecovery(etaAdiabaticQ4,gamma,mach)
stagnationTemperatureQ4 = IsentropicTemp(staticTemperature,mach);
temps = [staticTemperature,stagnationTemperatureQ4,ActualStagnationT(stagnationTemperatureQ4,energyLoss,cP)];
InterrimEnthalpyEntropyChart(temps,q)

staticPressure = 61.9; staticTemperature = 263.15; flightSpeed = 305; pressureLoss = 4; cP = 1.004; gamma = 1.4; q = 5;
mach = MachNumber(flightSpeed,staticTemperature,'m/s');
energyLoss = Pressure2EnergyLoss(staticTemperature,staticPressure,pressureLoss,gamma,mach);
etaAdiabaticQ5 = AdiabaticEfficiency(staticTemperature,mach,cP,energyLoss)
pressureRecoverFactorQ5 = InletPressureRecovery(etaAdiabaticQ5,gamma,mach)
stagnationTemperatureQ5 = IsentropicTemp(staticTemperature,mach);
temps = [staticTemperature,stagnationTemperatureQ5,ActualStagnationT(stagnationTemperatureQ5,energyLoss,cP)];
InterrimEnthalpyEntropyChart(temps,q)

staticPressure = 75.22; staticTemperature = 272.15; stagnationPressure = 128; etaAdiabatic = 0.9; cP = 1.004; gamma = 1.4; q = 6;
stagnationTemperatureQ6 = IsentropicTemperature(staticTemperature,staticPressure,stagnationPressure,gamma);
actualStagnationTemperatureQ6 = staticTemperature + (stagnationTemperatureQ6 - staticTemperature)/etaAdiabatic
SpeedQ6 = sqrt(2*cP*1000*(actualStagnationTemperatureQ6-staticTemperature))
temps = [staticTemperature,stagnationTemperatureQ6,actualStagnationTemperatureQ6];
InterrimEnthalpyEntropyChart(temps,q)