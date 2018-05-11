function [ out ] = myfp( t )
% out given function
    e = exp(1);
    out = (2*myf(t)/t) + (t^2 * e^t );
end

