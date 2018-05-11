% Mehmet Sinan INCI @ WPI
% Numerical Methods HW3 Question 1

% Finding the nontrivial root of 
% f(x) = x^3 - 25
% using the Simple Fixed-Point Iteration

%% Bisection Method 
%  to calculate a good initial guess in few iterations

clear all;
clc;
% To pick a good initial guess, I will perform bisection for a few
% iterations
a = 0; % left border value
b = 10; % right border value

for i=1:10 % do 10 iterations, benefit of more iterations degrades after 10
    fa = fx(a); % calculate the fx value for left border value
    fb = fx(b); % calculate the fx value for right border value
    mid = (a+b)/2;
    fmid = fx(mid);
    
    if fmid == 0
        break;
    end
    
    if fa*fmid < 0
        b = mid;
    else
        a = mid;
    end    
end

x(1) = mid; % starting point - initial guess
fzero(@fx,2) % using Matlab's fzero tool to find root around '2'

%% Newton Rhapson Algorithm

clear all;
close all;
clc;
format long;
N = 1;    % iteration counter
x(1) = 2; % starting point - initial guess
error(1) = 1; % randomly large relative approximate error
tolerance = 10^-6; % our error tolerance

for N=1:100
    
    fN = fx(x(N));
    gN = gx(x(N));
    x(N+1) = x(N) - (fN/gN);
    error(N) = abs(x(N+1)-x(N) ) / abs(x(N+1));
    if error(N) <= tolerance
        break
    end
    N = N + 1
end

% N  % number of iterations
plot(x);
title('Estimated root values over 5 iterations');
xlabel('Iteration') % x-axis label
ylabel('Estimated root value') % y-axis label

figure;
plot(error);
title('Error values over 5 iterations');
xlabel('Iteration') % x-axis label
ylabel('Error') % y-axis label

figure;
scatter(1:101,x)
title('Scatter plot of estimated root values over 5 iterations');
xlabel('Iteration') % x-axis label
ylabel('Estimated root value') % y-axis label
