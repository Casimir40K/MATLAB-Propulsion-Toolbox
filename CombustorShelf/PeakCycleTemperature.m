function peakCycleTemperature = PeakCycleTemperature(AFRorF,ReactionHeat,CompressorTotalTemperature,CpAir,CpTotal)
%PEAKCYCLETEMPERATURE Summary of this function goes here
%   Detailed explanation goes here
if AFRorF > 1
    f = 1/AFRorF;
else
    f = AFRorF;
end
peakCycleTemperature = ((f * ReactionHeat) + (CompressorTotalTemperature * CpAir)) / (CpTotal * (1 + f));
end

