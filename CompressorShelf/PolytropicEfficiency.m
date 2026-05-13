function polytropicEfficiency = PolytropicEfficiency(piC,tauC,fluidName)
properties = FluidProperties(fluidName);
gamma = properties.gamma;
piCConv = piC^((gamma - 1) / (gamma));
polytropicEfficiency = (log(piCConv)) / (log(tauC));
end

