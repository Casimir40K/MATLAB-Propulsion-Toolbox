function Choke = ChokeChecker(P0,Pt7,adiabaticEfficiency,gammat)
%EXITVELOCTY Summary of this function goes here
%   Detailed explanation goes here

pstar = Pt7*(1-(1/adiabaticEfficiency)*((gammat-1)/(gammat+1)))^(gammat/(gammat-1));
if P0 < pstar
    Choke = true;
else
    Choke = false;












end

