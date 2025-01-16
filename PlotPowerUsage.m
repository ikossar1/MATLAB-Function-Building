% Script employing LinearInterp function with the input of a dataset

load('powerDataset.mat') 

xTabulatedlength = length(timeMinutes);

outputvector = [];

for steps = [15 : 15: 180]

    y = LinearInterp(steps, timeMinutes, powerWatts);
    outputvector = [outputvector y];

end 

steps = [15 : 15: 180];

hold on  

plot(steps, outputvector, 'o-r', 'LineWidth',3); 
plot(timeMinutes, powerWatts, 'o-b', 'LineWidth', 3);

title('Original vs Interpolated Data')
xlabel('Time') 
ylabel('power')

legend('Interpolated data', 'Original data')

hold off

