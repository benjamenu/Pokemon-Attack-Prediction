%   Author: Benjamen Underwood
%   FeatureNormalization: This function will normalize your data.
%   
%
%   Parameters:
%
%       X = MXN matrix, where M is the number of training entries and
%           N is the number of features.

function X = FeatureNormalization(X)

mu = mean(X);
sigma = std(X);

mu_matrix = ones(length(X), 1) * mu;
sigma_matrix = ones(length(X), 1) * sigma;

X = X - mu_matrix;
X = X ./ sigma_matrix;

%% ========================End of File==============================
end
