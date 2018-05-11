% Mehmet Sinan INCI
% Numerical Methods HW2
% Question 4

%% PART A

% Finding the nontrivial root of 
% f(x) = x^3 - 25
% using the Simple Fixed-Point Iteration
close all;
clear all;
clc;

x = 2.0     %starting point - initial guess
xold = x;   
tolerance = 10^-4; %our error tolerance
error = 100;   %randomly large relative approximate error
iteration = 0;      %iteration counter

while error > tolerance
    xold = x;
    x = gx(x)
    iteration = iteration + 1;
    error(iteration) = abs(gx(x)-gx(xold));
    x_hist(iteration) = x;
    if iteration==100 % iterate for 100 iterations only
        break % and then break. Otherwise goes to infinite loop
    end
end
x  %the root
iteration   %number of iterations
semilogy(x_hist);
figure;
semilogx(error);

%% PART B

% Finding the nontrivial root of 
% f(x) = x^3 - 25
% using the Simple Fixed-Point Iteration

close all;
clear all;
clc;

x = 2.0     %starting point - initial guess
xold = x;   
tolerance = 10^-4; %our error tolerance
error = 100;   %randomly large relative approximate error
iteration = 0;      %iteration counter

while error > tolerance % keep iterating until the error is less than tolerance value
    xold = x;
    x = g2x(x)
    iteration = iteration + 1; % increase the index
    error(iteration) = abs((g2x(x)-g2x(xold)));
    x_hist(iteration) = x;
end
x  %the root
iteration   %number of iterations
plot(x_hist);
figure;
plot(error);

%% PART A

clc;
clear all;

real_root = nthroot(25,3);
root = 2; % X0, the starting point
iteration = 1;

% for iteration = 1:100
while abs(real_root-root)>(10^-5)
    temp(iteration) = root;
%     if gx(root) > real_root
       root = nthroot(25,3);
%     elseif gx(root) < real_root
%        root = root+(10^-4);
%     end
    iteration = iteration + 1;
end

root
iteration  % we found the required root in 924th iteration
plot(temp) % with step sizes of 10^-3

%% PART B

clc;
clear all;

real_root = nthroot(25,3);
root = 2; % X0, the starting point
iteration = 0;

while abs(real_root-g2x(root))>(10^-4)
    
    iteration = iteration + 1;
    temp(iteration) = root;

    if g2x(root) > real_root
       root = root-(10^-4);
    elseif g2x(root) < real_root
       root = root+(10^-4);
    end
end

root
iteration  % we found the required root in 9239th iteration
plot(temp) % with step sizes of 10^-3

