%   Author: Benjamen Underwood
%   NomralEquation: This function will find the global minimum
%   
%
%   Parameters:
%
%       X = MXN matrix, where M is the number of training entries and
%           N is the number of features.
%       y = MX1 matrix

function theta = NormalEquation(X, y)
theta = pinv(X'*X) * X' * y;

%% ========================End of File==============================
end
