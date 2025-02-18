function stagnationTemperature = IsentropicTemperature(staticTemperature,mach)
% Fids the 

% /////////////////////////////////////////////////////////////////////////
% Finding or creating fluid properties
    %Fluid_Data = importdata(Fluid_Data); % Not implemented yet
    
    % Fluid Properties Override
    gamma = 1.4;
% /////////////////////////////////////////////////////////////////////////

% Temperature calculation
        stagnationTemperature = staticTemperature * (1 + (((gamma - 1)/2)* mach ^ 2));
% /////////////////////////////////////////////////////////////////////////