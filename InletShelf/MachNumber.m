function mach = MachNumber(speed, temp, variation)

% Function finds the mach number for speeds, by taking an argument at the
% end that changes the units that are used

% Constants
% /////////////////////////////////////////////////////////////////////////
% Gas Constant
R = 287; % 287 for air, change if necessary
K = 1.401; % Note that this is only valid for T = -40 to 25 C
% /////////////////////////////////////////////////////////////////////////

% Calculations speed in meters per second
% /////////////////////////////////////////////////////////////////////////
if strcmp(variation,'miles/h') == 1
    mach = (speed/2.237) / sqrt(K*R*temp);
elseif strcmp(variation,'knots') == 1
    mach = (speed/1.944) / sqrt(K*R*temp);
elseif strcmp(variation,'km/h') == 1
    mach = (speed/3.6) / sqrt(K*R*temp);
else
        mach = speed / sqrt(K*R*temp);
end
% /////////////////////////////////////////////////////////////////////////