function [ input_vector, fxy, poly_x_vector, coefficients ] = mylagrange( N )
% Lagrage interpolating polynomial
% N is the data node number
% Meaning the number of data points we have
% since the interval is predefined in our case,
% we can create data points with only N

input_vector = linspace(-1,1,N);
% create data points with equal spacing 
% since the interval [-1 1] is already given, I use the N, number of data
% points to create a vector of equally spaced data points.
fxy = fx(input_vector); % calculate Y = f(x) for given data points
% XX = X;
poly_x_vector = -1:0.01:1; % create the input vector for the polynomial
pvals = zeros(N,N); % empty matrix to be used in polynomial coefficient calculation


for i = 1:N  % here we calculate the roots that we will
    % use to calcualte the coefficients of the polynomial
  pp = poly(input_vector( (1:N) ~= i)); % matlab predefined poly function
                                        % converts roots to polynomial
  pvals(i,:) = pp ./ polyval(pp, input_vector(i));
end

% Now we have vectors that hold polynomials that hold the value 1 at
% corresponding X data point, meaning that we can weight each vector 
% by the required vector and summing to calculate the polynomial
% that passes through our preselected pointscoefficients = fxy*pvals;
coefficients = fxy*pvals;

end