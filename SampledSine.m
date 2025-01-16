% Function takes inputs amplitude, frequency, change in time, and total
% time then outputs a function and coresponding time value stored in a time vector.

% Function checks that dT, and maxTime are bigger than 0 and that dT is
% smaller than maxTime then runs for loop to generate outputs 

function [y, t] = SampledSine(amp, freq, dT, maxTime)

p = pi;

y = [];

if dT > 0 && maxTime > 0 && dT < maxTime

    for i = 0 : dT : maxTime
    
        y = [y amp*sin(2*freq*i*p)];
        t = 0 : dT : maxTime; 

    end


    else
    
    y = [];  

end 

end

