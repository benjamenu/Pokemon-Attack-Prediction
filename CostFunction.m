%   Author: Benjamen Underwood
%   COSTFUNCTION: This function will compute the cost for linear regression
%
%
%   Parameters:
%
%       X = MXN matrix, where M is the number of training entries and
%           N is the number of features.
%       
%       y = MX1 matrix
%
%       theta = parameter for linear regression to fit the data.  

function J = CostFunction(X, y, theta)         

%% =======================Initalization===========================

m = length(y); % m is the size of the training entries.
J = 0;         % The variable that needs to be returned


%% =======================Computation==============================

theta_2 = theta;
theta_2(1) = 0;

hypothesis_vector = X * theta;
error_vector = (hypothesis_vector - y).^2;
regularization = (1 / (2*m)) .* theta_2;
J = 1/(2*m) * sum(error_vector) + sum(regularization);

%% ========================End of File=============================
end