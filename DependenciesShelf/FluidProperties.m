function properties = FluidProperties(fluidName)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    switch lower(fluidName)
        case 'air'
            properties.density = 1.225;
            properties.cP = 1.004;
            properties.gamma = 1.4;
        otherwise
            error('Fluid not found in database')
    end
end

