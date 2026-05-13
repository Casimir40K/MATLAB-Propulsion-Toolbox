function piT = TurbinePressureRatio(tauT,burntGamma,polyTurbineEfficiency)
%TURBINEPRESSURERATIO Summary of this function goes here
%   Detailed explanation goes here
piT = tauT^(1/(((burntGamma-1)/(burntGamma))*polyTurbineEfficiency));
end

