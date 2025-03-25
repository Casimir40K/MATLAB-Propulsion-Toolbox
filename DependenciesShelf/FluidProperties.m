function properties = FluidProperties(fluidName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    switch lower(fluidName)
        case 'air'
            properties.density = 1.225;
            properties.cP = 1.004;
            properties.gamma = 1.4;
        case 'burnt_gas'
            properties.density = 1.225;
            properties.cP = 1.19;
            properties.gamma = 1.3;
        otherwise
            error('Fluid not found in database')
    end
end

