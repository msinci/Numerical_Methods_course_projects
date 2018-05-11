function out = mysimpsons(inputfunction, a, b, n)
    format long;
% Calculate the integral using Simpson's rule in the interval [a,b] with n+1 equally spaced points
    h=(b-a)/n; % calculate the step size
    xvector=a:h:b;  % create the xvector that holds equally spaced values between upper and lower bounds
    out= h/3.*(inputfunction(xvector(1))+2.*sum(inputfunction(xvector(3:2:end-2)))+4.*sum(inputfunction(xvector(2:2:end)))+inputfunction(xvector(end)));
end