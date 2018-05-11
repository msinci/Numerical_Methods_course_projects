function [ out ] = myfx( x )
% f(x) function used for the secant method
% f(x) = cos(x^2) - x in [0,pi/2] to within TOL = 10-7
    out = cos(x^2) - x;
end
