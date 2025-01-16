% Functiont takes two vectors and a x coordinate of a point to identify as inputs and outputs
% a function that estimates the y coordinate at that point.

% Function identifies two closest x values in vector xTabulated to x-coordinate provided and finds
% corresponding y-values to estimate the y coordinate corresponding to the
% x-coordinate provided.

function y = LinearInterp(x, xTabulated, yTabulated)

    xTabulatedlength = length(xTabulated);

    if (xTabulated(end) < x) 

        y = -99;
        return 

    elseif (x < xTabulated(1))

        y = -99;
        return

    end 
    
    for i = 1 : (xTabulatedlength-1)

        if (xTabulated(i) <= x) && (xTabulated(i+1) > x) % 2 x values near x value 

            x0 = xTabulated(i); % Finding 1 less than the index of x
            x1 = xTabulated(i + 1); % Finding 1 less than the index of x
            y0 = yTabulated(i); 
            y1 = yTabulated(i + 1);

            y = y0 + ((x-x0)*((y1-y0)/(x1-x0)));

        end 
      
    end 

end
