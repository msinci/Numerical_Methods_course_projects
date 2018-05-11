% Mehmet Sinan INCI @ WPI
% Numerical Methods Question 5

% clear the workspace first
clc;
clear all;
format long;
% declare variables that i will use

cal_der = 4*log(2) + 2; % calculated derivatite
h = 0;
n=1;

wb = waitbar(0,'Please wait...');

low = 10^-15;
high = 10^-5;
intv = 10^-10;
range = round((high-low)/intv);
n=1;
err = zeros(2,range);

% for i=(10^-13):-(10^-17):(10^-15)
for i=low:intv:high
    fofd = my_fxp(2,i); % computed derivate
    err(2,n) = i; % the h value
    err(1,n) = abs(fofd - cal_der); % get the absolute difference of 
    n=n+1;              % calculated derivative and computed
    waitbar(n/range);
end
close(wb);
%%
[err_min, pos] = min(err(1,:)); % calculate where the error was minimum
err_min  % print the min error
h_ideal = err(2,pos) % find out for what value of h the error was min

semilogx(err(2,:),err(1,:)); % plot the error over h values

