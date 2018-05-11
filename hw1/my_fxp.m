function [ output ] = my_fxp( x, h)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    output = ( my_fx(x+h) - my_fx(x) )/h; % calculate the f'(x)

end

