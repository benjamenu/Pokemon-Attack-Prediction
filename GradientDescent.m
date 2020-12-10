%   Author: Benjamen Underwood
%   COSTFUNCTION: This function will compute the cost for linear regression
%   
%
%   Parameters:
%
%       X = MXN matrix, where M is the number of training entries and
%           N is the number of features.
%       y = MX1 matrix
%       theta = parameter for linear regression to fit the data.
%       alpha = Value to increase rate of gradient descent.

function [theta] = GradientDescent(theta, alpha, X, y)

m = length(y);
theta_2 = theta;
theta_2(1) = 0;

for iter = 1:10000
    h_vector = X * theta;
    error_vector = (h_vector - y);
    new_theta = X' * error_vector;
    theta = theta - alpha * (1/m) * new_theta + (1 / m) * theta_2;
end

%% ========================End of File==============================

end