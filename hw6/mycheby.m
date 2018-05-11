function [ nodes ] = mycheby( n )
% A function that creates n Chebyshev nodes in a given interval
    for i=1:n
        nodes(i) = cos((2*i-1)*pi/2*n);
    end
end
