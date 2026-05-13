function InterrimEnthalpyEntropyChart(temps,q)
figure
entropyAxisSize = 100;

LowOM = floor(log(abs(min(temps)))./log(10));
HighOM = floor(log(abs(max(temps)))./log(10));
if round((floor(min(temps) / (10^LowOM))) + 0.5) == round((floor(min(temps) / (10^LowOM))) + 1)
    
    yAxisHigh = (10 ^ HighOM) * ((ceil(max(temps) / (10^LowOM)))-0.5);
else

    yAxisHigh = (10 ^ HighOM) * (ceil(max(temps) / (10^LowOM)));
end

if round((ceil(max(temps) / (10^LowOM))) + 0.5) == round((ceil(max(temps) / (10^LowOM))) + 1)
    yAxisLow = (10 ^ LowOM) * ((floor(min(temps) / (10^LowOM)))+0.5);
else
    yAxisLow = (10 ^ LowOM) * (floor(min(temps) / (10^LowOM)));
end

axis([0 entropyAxisSize yAxisLow yAxisHigh]);


entropypadding = entropyAxisSize * 0.15;

s = entropyAxisSize * 0.4;
deltaS =  s + entropyAxisSize / 7.5;



isobarGradient = 1; %(temps(2) - temps(3))/deltaS;


staticIsotherm = [linspace(0,entropyAxisSize,entropyAxisSize/2); temps(1) * ones(1, entropyAxisSize/2)];

stagnationIsotherm = [linspace(0,entropyAxisSize,entropyAxisSize/2); temps(2) * ones(1, entropyAxisSize/2)];


staticIsobar= [linspace(s - entropypadding, s + entropypadding,...
    entropyAxisSize/2); (linspace(s - entropypadding, s + entropypadding,...
    entropyAxisSize/2) * isobarGradient) + (temps(1)- (s*isobarGradient))];

stagnationIsobar = [linspace(s - entropypadding, s + entropypadding,...
    entropyAxisSize/2); (linspace(s - entropypadding, s + entropypadding,...
    entropyAxisSize/2) * isobarGradient) + (temps(2) - (s*isobarGradient))];

actualStagnationIsobar = [linspace(deltaS - entropypadding,deltaS + ...
    entropypadding,entropyAxisSize/2); (linspace(deltaS - entropypadding,deltaS + ...
    entropypadding,entropyAxisSize/2) * isobarGradient) + ((temps(2))-(deltaS*isobarGradient))];

hold on
set(gca, 'XColor', 'none')
plot(staticIsotherm(1,:),staticIsotherm(2,:),'k--')
plot(stagnationIsotherm(1,:),stagnationIsotherm(2,:),'k--')

plot(staticIsobar(1,:),staticIsobar(2,:),'b-.')
plot(stagnationIsobar(1,:),stagnationIsobar(2,:),'b-.')
plot(actualStagnationIsobar(1,:),actualStagnationIsobar(2,:),'g-.')

plot([s, s], [yAxisLow, temps(2)],'k--')
plot([deltaS,deltaS], [yAxisLow,temps(2)],'k--')

plot([s,deltaS], [temps(1),temps(2)],'-r')

plot([s,deltaS], [(yAxisLow + (temps(1)-yAxisLow)/1.5),(yAxisLow + (temps(1)-yAxisLow)/1.5)],"Color",[0.6350 0.0780 0.1840],"LineStyle","-")

text(s - 4,temps(1) + 3,'$$T_{0}$$','Interpreter','latex','FontSize',12)
text(s - 4, temps(2) + 2.5,'$$T_{t2}$$','Interpreter','latex','FontSize',12.5)

text(staticIsobar(1,entropyAxisSize/2),staticIsobar(2,entropyAxisSize/2),'$$P_{0}$$','Interpreter','latex','FontSize',12,'Color','blue')
text(stagnationIsobar(1,entropyAxisSize/2),stagnationIsobar(2,entropyAxisSize/2),'$$P_{t0}$$','Interpreter','latex','FontSize',12,'Color','blue')
text(actualStagnationIsobar(1,entropyAxisSize/2),actualStagnationIsobar(2,entropyAxisSize/2),'$$P_{t2}$$','Interpreter','latex','FontSize',12,'Color','green')


text(s - 7.5,temps(3) - 12,'$$T_{t2s}$$','Interpreter','latex','Color','green','FontSize',12)
text(deltaS - 1,temps(2) + 2.5,'$$ T_{t2}$$','Interpreter','latex','Color','red','FontSize',12)

text((s + (deltaS - s)),(yAxisLow + (temps(1)-yAxisLow)/2),'$$\Delta S$$','Interpreter','latex','Color',[0.6350 0.0780 0.1840])

text(entropyAxisSize/10,yAxisHigh - ((yAxisHigh-yAxisLow)/10),sprintf('Question %.i',q),'Interpreter','latex','FontSize',16)
