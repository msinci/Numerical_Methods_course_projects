% richardson_main

% Mehmet Sinan INCI @ WPI
% Numerical Methods HW7 Question 1
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands

%%  Richardson Extrapolation
Tol = 10^-11; % maximum tolerance
err = 1.0;  % initial error value, doesn't mean anything
h = 0.1;    % starting h value, starting from 1 as given
j=1;        % 

x = 1/sqrt(2); % evaluation point
M = [0 0
    0 0];
D(1,1)=(q1fx(x+h)-q1fx(x-h))/(2*h); % starting approximation
fprimex = (sin(1/x)*cos(cos(1/x)))/x^2; % real value of F'(x) for the given point

while (err >= Tol) % continue until error is smaller or equal to the tolerance
    h=h/2;  % divide h by 2 each iteration
    D(j+1,1)=(q1fx(x+h)-q1fx(x-h))/(2*h); % compute next matrix element, approx.
    for k=1:j
        D(j+1,k+1)=D(j+1,k)+(D(j+1,k)-D(j,k))/(4^k-1); % fill the row of approx. matrix
    end
    err = abs(D(j,k)-fprimex) % calculate the error
    j=j+1;  % increment row number
end


