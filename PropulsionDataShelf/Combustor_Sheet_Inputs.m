




% Question 3
etaB = 0.98; massFlowFuel = 3; speed = 280; staticPressure = 69.64; ...
staticTemperature = -5+273.15; CpAir = 1.004; gamma = 1.4;...
massFlowAir = 295; piC = 22; etaSsB = 0.93; heatReaction = 43000;...
CpGas = 1.15; etaC = 0.93;
mach = MachNumber(speed,staticTemperature,'m/s');
inletTotalTemperature = IsentropicTemperature(staticTemperature,mach);
compressorTotalTemperature = CompressorTotalTemperature(...
    inletTotalTemperature,piC,'air',etaC);
peakCycleTemperature = PeakCycleTemperature(massFlowFuel/massFlowAir,...
    heatReaction,compressorTotalTemperature,CpAir,CpGas)
thermalLimit = ThermalLimit(staticTemperature,peakCycleTemperature,...
    CpAir,CpGas)

clear all

% Question 4
powerIdeal = 185; powerFriction = 10; speed = 300; ...
    staticTemperature = 293.15; staticPressure = 70; ...
    fluid = 'air'; massFlowTotal = 349; massFlowFuel = 3; piD = 0.98; ...
    pressureLoss = 0.03; reactionHeat = 44000; etaB = 0.96; ...
    realReactionHeat = reactionHeat * etaB;
mach = MachNumber(speed,staticTemperature,'m/s');
massFlowAir = massFlowTotal - massFlowFuel;
inletTotalTemperature = IsentropicTemperature(staticTemperature,mach);
compressorTotalTemperature = CompressorPower2Temperature(195,...
    massFlowAir,inletTotalTemperature,fluid);
peakCycleTemperature = PeakCycleTemperature(massFlowFuel/massFlowAir,...
    realReactionHeat,compressorTotalTemperature,1.004,1.15)
inletStagnationPressure = IsentropicP(staticPressure,mach);
inletTotalPressure = piD * inletStagnationPressure;
etaC = 185/195;
tauC = compressorTotalTemperature / inletTotalTemperature;
piC = CompressorPressureRatio(etaC,tauC,'air');
piB = 1 - pressureLoss;
compressorTotalPressure = inletTotalPressure * piC;
combustorTotalPressure = CombustorTotalPressure(piB,compressorTotalPressure)
