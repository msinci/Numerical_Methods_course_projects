function [ out ] = myf( t )
% out given function
    e = exp(1);
    out = t^2 *(e^t -e);
end

