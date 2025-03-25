function turbineTotalTemperature = TurbineTotalTemperature(Tt4,Tt3,Tt2,f,mechanicalEfficiency,airCp,burntCp)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
turbineTotalTemperature = Tt4 - (airCp * (Tt3 - Tt2)) / ((1 + f) * mechanicalEfficiency * burntCp);
end

