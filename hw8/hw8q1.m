% Mehmet Sinan INCI @ WPI
% Numerical Methods HW8 Question 1
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands

%% Part a
% Euler's method with h=0.2, L=25000, k=0.00003 I0=250
clear y t;
clc;
format long;

k = 3*10^-5;    % given k
y(1) = 250;     % initial Infected people
index=1;
h=0.025;
step = 1/h;
t=0;

while (t<=60)
    y(index+1) = y(index)+ h*k*y(index)*(25000-y(index)); % next step calculation
                                % adding the previous infected and the rate
                                % of change (newly infected) which if
                                % proportional to the Infected*Susceptible
    index = index+1;
    t=t+h;
end

y(30*step)   % final infected after 60 days. Since matlab doesn't allow '0' as 
        % array index, I had to start from 1 and go until 61
        % After 60 days, # of infected is 2.4999999e+04
        % Also for different h, we have different steps
factor  = round(4800/(size(y,2)-1));
y  = interp(y,factor);
plot(y);hold on;

%% Part b
% h=0.2, 0.1, 0.05, 0.025 Find order of convergence at I(30)
clear y t error;
clc;
format long;

k = 3*10^-5;    % given k
y(1) = 250;     % initial Infected people
index=1;
h=0.025;
step = 1/h;
t=0;

while (t<=60)
    y(index+1) = y(index)+ h*k*y(index)*(25000-y(index)); % next step calculation    
    error(index) = abs(y_exact((2*index)+1)-y(index+1))/h;                            
    index = index+1;
    t=t+h;
end
% 
factor  = round(4800/(size(error,2)-1));
error  = interp(error,factor);
error(2400)
plot(error); hold on;

mean(y)
% ymean = ymean/4
% y(30*step)
% y_exact = y;
% plot(y(30*step));hold on;

%% Part c
% Estimate average # of infected by finding the average
% solution value

my = mean(y);
minty = quad(Y, 60, 0, 10^-10) / (60);
fprintf('Mean Infected is: %.6e\n',my);
fprintf('MVT of the integral%.6e\n',minty);
fprintf('Error: %.6e\n',abs((my-minty)/my));



