% Problem 1
clear all
P0 = 86; Pt7 = 360; Tt7 = 1010; adiabaticEfficiency = 0.93; Cpt = 1.153; gammat = 1.34;
choke = ChokeChecker(P0,Pt7,adiabaticEfficiency,gammat);

%Problem 2
clear all
P0 = 86; Pt7 = 165; Tt7 = 910; adiabaticEfficiency = 0.89; Cpt = 1.154; gammat = 1.34;
choke = ChokeChecker(P0,Pt7,adiabaticEfficiency,gammat);
