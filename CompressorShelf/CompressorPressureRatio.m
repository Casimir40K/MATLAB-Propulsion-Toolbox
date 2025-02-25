function piC = CompressorPressureRatio(etaC,tauC,fluidName)
properties = FluidProperties(fluidName);
gamma = properties.gamma;


piC = (1 + etaC * (tauC - 1))^((gamma) / (gamma - 1));


end

