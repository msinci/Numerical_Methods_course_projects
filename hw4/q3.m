% Mehmet Sinan INCI @ WPI
% Numerical Methods HW4 Question 3

% Given Function
% f(x) = 1/ (1 + 25*x^2)
% using the Simple Fixed-Point Iteration

%% Part a
% Lagrange interpolating polynomial 

close all;
clear all;
clc;

% f = @(x) (1./ (1 + 25*x.^2) ); % function f definition
% fx is defined as a seperate function 

% number of data points, this file can be converted to a function
% file to set 'n' as a user input

figure; % create a new figure so that we don't overwrite a previous one
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( 5 ); 
% here I call my lagrange interpolation function and only give the 
% number of data points as input
% the function itself will create actual data points in the given 
% interval of [-1 1]
% My function also calculates the Y=f(x) values for these data points
% as well as the Lagrange polynomial P 
plot(poly_x_vector,polyval(coefficients,poly_x_vector),input_vector,fxy,'or');
% here I use the polyval function to calculate Y=P(x) values for my data
% points using the polynomial coefficients calculated by my lagrange
% function
hold on; % hold on the graph so that I can add the f(x) values
plot(input_vector,fxy);
legend('P','Data Nodes','F(x)'); % add legend
title('Polynomial when we have 5 data points'); % change title

figure;
[input_vector,fxy,poly_x_vector, coefficients ] = mylagrange( 10 ); 
plot(poly_x_vector,polyval(coefficients,poly_x_vector),input_vector,fxy,'or');
hold on;
plot(input_vector,fxy);
legend('P','Data Nodes','F(x)');
title('Polynomial when we have 10 data points');

figure;
[input_vector,fxy,poly_x_vector, coefficients ] = mylagrange( 15 ); 
plot(poly_x_vector,polyval(coefficients,poly_x_vector),input_vector,fxy,'or');
hold on;
plot(input_vector,fxy);
legend('P','Data Nodes','F(x)');
title('Polynomial when we have 15 data points');

figure;
[input_vector,fxy,poly_x_vector, coefficients ] = mylagrange( 20 ); 
plot(poly_x_vector,polyval(coefficients,poly_x_vector),input_vector,fxy,'or');
hold on;
plot(input_vector,fxy);
legend('P','Data Nodes','F(x)');
title('Polynomial when we have 20 data points');


%% Part b
% Lagrange interpolating polynomial 
% Analysis of using different number of data points

close all;
clear all;
clc;

N = 5; % number of data points
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N ); 
interval = linspace(-1,1,size(poly_x_vector,2));
En = abs(fx(interval) - polyval(coefficients,poly_x_vector) );
% here we calculate the Error by subtracting y=f(x) values from y=P(x)
% values that are created by the polynomial. Also note that I am using 
% abs function to calculate absolute value since the distance is equal to
% the error and the sign is not important.
figure; % create a new figure so that we don't overwrite a previous one
plot(interval, En); % plot Error on the given interval
title('Error when we have 5 data points');
% change the title of the figure

N = 10; % number of data points
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N ); 
interval = linspace(-1,1,size(poly_x_vector,2));
En = abs(fx(interval) - polyval(coefficients,poly_x_vector) );
figure;
plot(interval, En);
title('Error when we have 10 data points');

N = 15; % number of data points
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N ); 
interval = linspace(-1,1,size(poly_x_vector,2));
En = abs(fx(interval) - polyval(coefficients,poly_x_vector) );
figure;
plot(interval, En);
title('Error when we have 15 data points');

N = 20; % number of data points
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N ); 
interval = linspace(-1,1,size(poly_x_vector,2));
En = abs(fx(interval) - polyval(coefficients,poly_x_vector) );
figure;
plot(interval, En);
title('Error when we have 20 data points'); 

%% Part d
% Lagrange interpolating polynomial 
% Analysis of using equal space and Chebyshev nodes on the error

close all;
clear all;
clc;
format long;

% calcualate error when 15 data points with EQUAL spaces are used
N = 15;
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N ); 
interval = linspace(-1,1,size(poly_x_vector,2));
En = abs(fx(interval) - polyval(coefficients,poly_x_vector) );
figure;
plot(interval, En);
title('Error when equal spaces and Chebyshev nodes are used');
hold on;

% calcualate error when Chebyshev nodes are used
[input_vector, fxy, poly_x_vector, coefficients ] = mylagrange2( N ); 
cheby_interval = sort(mycheby(N)); % we need to sort our nodes 
% after calculating them with the chebyshev function
En = abs(fx(cheby_interval) - polyval(coefficients,cheby_interval) );
interval = linspace(-1,1,15); % create a linear space interval for comparison
plot( interval, En);
legend('Error with equal spaces','Error with Chebyshev Nodes');


