% Script employing SampledSine function in plot demonstration. 
% -- Defining parameters -- 

amp = 10;
maxTime = 5;
dT = .1;
frequency = [.2, 1, 2.5, 4.5];

% -- Employing parameters in SampledSine function -- 

[y1, t1] = SampledSine(amp, frequency(1), dT, maxTime); 
[y2, t2] = SampledSine(amp, frequency(2), dT, maxTime);
[y3, t3] = SampledSine(amp, frequency(3), dT, maxTime);
[y4, t4] = SampledSine(amp, frequency(4), dT, maxTime);

% -- Plotting --

hold on

plot(t1, y1, 'o-r', 'Linewidth', 3)  
title('Time vs Sinewave based on frequency .2')
xlabel('Time (s)')
ylabel('Sinewave (function)')
legend('y1(frequency(1)')

figure 

plot(t2, y2, 'o-r', 'LineWidth', 3)
title('Time vs Sinewave based on frequency 1')
xlabel('Time (s)')
ylabel('Sinewave (function)')
legend('y2(frequency(2))')

figure 

plot(t3, y3, 'o-r', 'LineWidth', 3)
title('Time vs Sinewave based on frequency 2.5')
xlabel('Time (s)')
ylabel('Sinewave (function)')
legend('y3(frequency(3))')

figure 

plot(t4, y4, 'o-r', 'LineWidth', 3)

title('Time vs Sinewave based on frequency 4.5')
xlabel('Time (s)')
ylabel('Sinewave (function)')
legend('y4(frequency(4))')

hold off

