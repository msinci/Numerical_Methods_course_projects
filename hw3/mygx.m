function [ out ] = mygx( x )
% f'(x) function used for the secant method
% f'(x) = derivative of fx = cos(x^2) - x
    out = -2*x*sin(x^2) - 1;
end

