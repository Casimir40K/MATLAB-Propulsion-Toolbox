function actualStagTemp = ActualStagnationT(stagTemp,energyLoss,cP)
% Calculates the actual stagnation temperature given the ideal stagnation
% temperature, the energy loss and the cP value for the fluid.

actualStagTemp = stagTemp - (energyLoss / cP);

end