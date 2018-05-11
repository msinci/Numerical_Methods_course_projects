% Mehmet Sinan INCI @ WPI
% Numerical Methods Question 2

% clear the workspace first
clc;
clear all;

% declare variables that i will use
step = 0;

for x=-1/2:1/100000:1/2
    lhs = 1/(1-x);
    rhs = 0;
    for i=0:10
        rhs = rhs + x^i;
    end
    step = step+1;
    error(step) = abs(lhs-rhs);
end

plot(error);

