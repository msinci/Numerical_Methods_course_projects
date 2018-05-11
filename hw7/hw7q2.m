% Mehmet Sinan INCI @ WPI
% Numerical Methods HW7 Question 2
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands
format long; 
%%

% real value of integral of first function between 0 and 5
integral1 = ( (5/2)*sqrt(26) ) - ( (1/2)* log( -5 + sqrt(26) ) );
% real value of integral of second function between 0 and pi
integral2 = 2*pi;
a1 = 0;  % lower bound for function 1
b1 = 5;  % upper bound for function 1
a2 = 0;  % lower bound for function 2
b2 = pi;  % upper bound for function 2
index=1;    % start index for the vector

for n = [5, 50, 500]   % approximate the integral with different n values
                                % using trapezoidal and simpson's rule
    h1 = (b1 - a1)/n;
    h2 = (b2 - a2)/n;
    trapz1(index) = mytrapz(@q2f1,a1,b1,n);  % approx. the integral of the first function between 0 and 5 using trapezoidal rule
    trapz2(index) = mytrapz(@q2f2,a2,b2,n);  % approx. the integral of the second function between 0 and 5 using trapezoidal rule
    errtrapz1(index) = abs(trapz1(index) - integral1);  % calculate the error for the first function
    errtrapz2(index) = abs(trapz2(index) - integral2);  % calculate the error for the second function
    ordertrapz1(index) = errtrapz1(index)/h1^2;
    ordertrapz2(index) = errtrapz2(index)/h2^2;

    simpson1(index) = mysimpsons(@q2f1,a1,b1,n);  % approx. the integral of the first function between 0 and 5 using Simpson's rule
    simpson2(index) = mysimpsons(@q2f2,a2,b2,n);  % approx. the integral of the second function between 0 and 5 using Simpson's rule
    errsimpson1(index) = abs(simpson1(index) - integral1); % calculate the error for the first function
    errsimpson2(index) = abs(simpson2(index) - integral2); % calculate the error for the second function
    ordersimpson1(index) = errsimpson1(index)/h1^4;
    ordersimpson2(index) = errsimpson2(index)/h2^4;
    
    index = index+1;    % increment the index in each iteration
end

