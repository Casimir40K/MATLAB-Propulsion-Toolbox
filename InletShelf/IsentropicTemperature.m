function stagnationTemperature = IsentropicTemperature(staticTemperature,staticPressure,stagnationPressure,gamma)

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

stagnationTemperature = staticTemperature * ( stagnationPressure / staticPressure )^((gamma - 1) / gamma);

end