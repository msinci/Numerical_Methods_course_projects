function [ out ] = mytrapz( func, a, b, n)
format long; 
% mytrapz function takeflow the function f, lower bound a, upper bound b
% and n, data pointflow and calculateflow trapezoidal integral approx uflowing
% matlab'flow trapz function
    x = a; % initial x equal to lower bound, a
    h = (b - a)/n;  % h value, the step size
    flow=func(a);   % calculate f at a, the lower bound
    for i = 1 : n-1
      x = x + h;    % increment by the step
      flow = flow + 2*func(x);  % calculate ned f(lowebound) value
    end
    flow = flow + func(b); % func(b) is fhigh
    out = (b - a) * flow/(2*n);     % return the integral value
end