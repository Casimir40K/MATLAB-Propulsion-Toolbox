

% Q3
speed = 250; staticTemperature = 283.15;...
    cP = 1.004; gamma = 1.4;...
    piC = 16; etaC = 0.88;...
    fluidName = 'air';
Tt3 = CompressorTotalTemperature(IsentropicTemperature(staticTemperature,...
    MachNumber(speed,staticTemperature,12)),piC,fluidName,etaC)

tauC = Tt3/IsentropicTemperature(staticTemperature,MachNumber(speed,staticTemperature,'m/s'));
polytropicEfficiency = PolytropicEfficiency(piC,tauC,fluidName)

% Q4
etaC = 0.89; massFlowRate = 400; numStages = 8; fluidName = 'air'; ...
    staticTemperature = 273.15+5; speed = 300; compressorPower = 150000;

Tt2 = IsentropicTemperature(staticTemperature,MachNumber(speed,staticTemperature,12));
actualCompressorPower = compressorPower / etaC;
Tt3 = CompressorPower2Temperature(actualCompressorPower,massFlowRate,Tt2,fluidName);
tauC = Tt3 / Tt2
compressorPressureRatio = CompressorPressureRatio(etaC,tauC,fluidName) 
smallStagePressureRatio = SmallStagePressureRatio(compressorPressureRatio,numStages)
polytropicEfficiency = PolytropicEfficiency(compressorPressureRatio,tauC,fluidName)
