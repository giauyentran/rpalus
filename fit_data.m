function [fitobject, gof] = fit_data(data,data_range,time)
% Takes our data and outputs the curve fit parameters, along with a plot of 
% the experimental data and fit.
%
%   Args:
%       data: a vector with optical density measurements 
%       time: a vector with time in minutes, with indices matching 'data'
%       data_range: a list of indexes of data that forms the exponential
%       section of the curve, often in the form startindex:endindex
%       
%   
%   Returns:
%       fitobject:
%       gof:

% Create new figure
figure; clf;

% Find curve fit
[fitobject,gof] = fit(time(data_range), data(data_range), 'exp1');
coeff_values = [coeffvalues(fitobject)];
fit_fn = @(x) coeff_values(1) * exp(coeff_values(2)*x);

% plot
semilogy(time(data_range), data(data_range), '*')
hold on
fplot(fit_fn)
xlabel('Time (hours)')
ylabel('Optical Density')
legend('Data', 'Fitted Curve', 'Location', 'Northwest')

end