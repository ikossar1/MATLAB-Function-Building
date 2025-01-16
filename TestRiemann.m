% Script employing SampledSine and IntegrationRiemann function 

%% -- Part 1 -- 

T = .5;
dT = .01;
amp = 1;
freq = 1;

[y, time] = SampledSine(amp, freq, dT, T);
integral = sum(IntegrationRiemann(y, dT));

plot(y, T, 'o-r', 'LineWidth', 3); 

title('Index vs Sin function')
xlabel('index (i)') 
ylabel('Sin function (y)')

legend('f(1, 1, .01, .5)')

%% -- Part 2 --

delX = dT;
areaundercurve = IntegrationRiemann(y, delX);
relativeerror = abs(1/pi - areundercurve);

