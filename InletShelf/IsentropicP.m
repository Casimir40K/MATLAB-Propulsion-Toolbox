function stagnationPressure = IsentropicP(staticP,mach)
% IsentropicP: finds isentropic stagnation pressure using isentropic relation formulae.

% /////////////////////////////////////////////////////////////////////////

% Finding or creating fluid properties
    %Fluid_Data = importdata(Fluid_Data); % Not implemented yet
    
    % Fluid Properties Override
    gamma = 1.4;
    R = 287;

% /////////////////////////////////////////////////////////////////////////

% pressure calculation
        stagnationPressure = staticP * (1 + (((gamma - 1)/2)* mach ^ 2))^(gamma/(gamma-1));
% /////////////////////////////////////////////////////////////////////////