% Mehmet Sinan INCI @ WPI
% Numerical Methods HW3 Question 2

% Finding the nontrivial root of 
% f(x) = cos(x^2) - x in [0,pi/2] to within TOL = 10-7
% with X0 starting point = 1.5

%% Part A
% Newton Rhapson Algorithm

clear all;
% close all;
clc;
format long;
N = 1;    % iteration counter
x(1) = 1.5; % starting point - initial guess
TOL = 10^-7; % our error tolerance

for N=1:1000
    fN = myfx(x(N)); % fN = f(Xn)
    gN = mygx(x(N)); % gN = f'(Xn)
    x(N+1) = x(N) - (fN/gN); % Next X estimation calculated
    % using Newton Rhapson method
    error(N) = abs(x(N+1)-x(N) ) / abs(x(N+1));
    if error(N) <= TOL % stop when the error is within range
        break
    end
    N = N + 1;
end

% N  % number of iterations
% plot(x);
% title('Estimated root values over 6 iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Estimated root value') % y-axis label
% 
% figure;
% plot(error);
% title('Error values over 6 iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Error') % y-axis label

figure;
esize = size(error,2);
temp1 = error(1:esize-1);
temp2 = error(2:esize);
plot(log(temp1),log(temp2));
title('Error Graph with Newtons Method');

%% Part B
% Secant method

clear all;
% close all;
clc;
format long;
N = 1;    % iteration counter
x(1) = 1.5; % starting point - initial guess
x(2) = 1.4; % 2nd starting point - initial guess
TOL = 10^-7; % our error tolerance

for N=2:100
    
    fN = myfx(x(N)); % f(Xn)
    prevfN = myfx(x(N-1)); % f(Xn-1)
    x(N+1) = x(N) - (fN/( (fN-prevfN)/(x(N)-x(N-1)) ) ); 
    % next Xn calculated using the secant method in above line
    error(N-1) = abs(x(N+1)-x(N) ) / abs(x(N+1));
    if error(N-1) <= TOL % stop when the error is within range
        break
    end
    N = N + 1
end

% N  % number of iterations
% plot(x);
% title('Estimated root values over 7 iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Estimated root value') % y-axis label
% 
% figure;
% plot(error);
% title('Error values over 7 iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Error') % y-axis label

figure;
esize = size(error,2);
temp1 = error(1:esize-1);
temp2 = error(2:esize);
plot(log(temp1),log(temp2));
title('Error Graph with Secant Method');

%% Part C
% Fixed point iteration method

% close all;
clear all;
clc;
x(1) = 1.5;  % starting point - initial guess
TOL = 10^-7; % our error tolerance

for N=1:1000
    x(N+1) = fpgx(x(N)); % our gx function, cos(x^2) that solves fx
    error(N) = abs(x(N+1)-x(N) ) / abs(x(N+1));
    if error(N) <= TOL % stop when the error is within range
        break
    end
    N = N + 1;
end

% % N  % number of iterations
% plot(x);
% title('Estimated root values over iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Estimated root value') % y-axis label
% 
% figure;
% plot(error);
% title('Error values over iterations');
% xlabel('Iteration') % x-axis label
% ylabel('Error') % y-axis label

figure;
esize = size(error,2);
temp1 = error(1:esize-1);
temp2 = error(2:esize);
plot(log(temp1),log(temp2));
title('Error Graph with Fixed Point Method');

