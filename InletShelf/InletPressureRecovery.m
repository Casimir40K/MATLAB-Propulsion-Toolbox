function pressureRecoveryFactor = InletPressureRecovery(etaAdiabatic, gamma, mach)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

pressureRecoveryFactor = ((1 + (etaAdiabatic * ( (gamma - 1) / 2) * mach  ...
    ^ 2)) ^ ((gamma) / (gamma - 1))) / ((1 + (( (gamma - 1) / 2) * mach ... 
    ^ 2)) ^ ((gamma) / (gamma - 1)));

end