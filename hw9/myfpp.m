function [ out ] = myfpp( t )
% out given function
    e = exp(1);
    et = e^t;
    yp = (2*myf(t)/t) + (t^2 *et );
    out = 2*(yp/t - myf(t)/(t^2) ) + (2*t*et+ ((t^2)*et) );
end

