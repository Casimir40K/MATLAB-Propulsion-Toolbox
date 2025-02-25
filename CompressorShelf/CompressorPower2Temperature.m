function Tt3 = CompressorPower2Temperature(compressorPower,massFlowRate,Tt2,fluidName)

properties = FluidProperties(fluidName);
cP = properties.cP;

Tt3 = (compressorPower / (massFlowRate * cP)) + Tt2 ;

end

