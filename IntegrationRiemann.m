% Function takes function and delX value (directly determines rectangle
% size) and calculates the left Riemann sum under the function as an
% approximation of the integral. Function sums the product offunction (vector) by
% delX to approximate the result. 

function result = IntegrationRiemann(f, delX)

f(end) = [];
b = f .* delX;
result = sum(b);

end
