% Mehmet Sinan INCI @ WPI
% Numerical Methods HW9 Question 2
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands
format long;

% Initial vectors
a  =  1; % left border of interval
b  =  2; % right border of interval
initial =  0;
h = 0.2; % given h, step size
steps  = abs(b-a)/h; % number of steps
e = exp(1);


%% taylor method 2nd order 
tic;
t=a;
tn = 1;

y(1) = 0; % initial value
h2 = h^2; % since i'll use it a lot, I precalculate
e = exp(1); % get the value of e
et = e^t;   % and e*t for sake of simplicity

while t<=b
    t2 = t^2;
    ytn = y(tn);
    real(tn) = ytn; 
    yp = (2*ytn/t) + (t2 *et); % yprime calculation
    y(tn+1) = y(tn) + ( (2*ytn/t)+ t2*et)*h + ( (h2/2)*(2*((yp/t)-(ytn/t2) )+ (2*t*et + (et*t2))));
    error(tn) = abs(y(tn+1) - 4*(exp(2)-exp(1))); % calculate the error at each step
    t = t+h; % increment the t by step
    tn = tn + 1; % increment the array index
end

plot(y);
hold on;
plot(real)
figure;
plot(error);
toc;

%% Runge-Kutta Method

tic;

n =1/h;
t =1;
y(1) = 0;

F = @(t,y) t^2 *(e^t -e); % f function for t and y
k1 = h*F(t,y(1));   % k1 and k2 calculation to be used in RK method
k2 = h*F(t+((1/2)*h),y(1)+((1/2)*h));
y(2) = y(1)+k2; % initial value

for index=3:n+1
    t=t+h;
    k1 = h*F(t,y(index-1));
    k2 = h*F(t+((1/2)*h),y(index-1)+((1/2)*h));
    y(index) = y(index-1) + k2; % approximation calculation
    error(index) = abs(y(index) - 4*(exp(2)-exp(1))); % error calculation
end

x = 1:h:2;
plot(y);hold on;
figure;
plot(error);

toc;

%% Implicit Euler

clc
clear all
close all

tic
% initial conditions
x(1) = 1;
y(1) = 0;
b =2;
h = 0.2;% step size

i = 1;
t = 1;
e = exp(1);

while t<=b
    x(i+1) = x(i)+h;
    y(i+1) = (y(i)+ h* (t^2 *(e^t -e)));
    i = i +1;
    t = t+h;
end

plot(y);
toc