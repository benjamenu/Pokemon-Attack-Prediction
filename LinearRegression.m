%   Author: Benjamen Undrwood

%   Machine Learning Linear Regression Algorithim
%   that will utilize the cost function and gradient
%   descent. This linear regression function will
%   predict the Attack of a Pokemon. This is a learning 
%   example that I have completed to get practice at linear
%   but this can be applied to any data set that you have.

%   This file contains the start up code that will call
%   the other functions to run the code. This file will call
%   the files listed below.
%
%
%       Pokemon.csv            % Contains information on 800 different pokemon
%       FeatureNormalization.m % Used to normalize the data.
%       CostFunction.m         % Computes the error of the function
%       GradientDescent.m      % Computes the new theta values using gradient descent.
%       NormalEquation.m       % Computes the value of theta using the Normal Equation.
%

%% =======================Initalization===========================

clear; close all; clc;

fprintf('Loading the Data...\n')
data = csvread('Pokemon.csv');

partoneX = data(:, 6);
parttwoX = data(:, 8:11);
X = [partoneX parttwoX]; % X = [HP, Defense, Sp. Atk, Sp.Def, Speed]
X = X(2:length(X), :);

y = data(:, 7);
y = data(2:length(y), 7);

%% ======================Feature Normalization=====================

% X = FeatureNormalization(X);  % If you need to Normaliza Uncomment this line

%% ======================Plotting the data=========================

fprintf('Plotting the Data...\n')
plot(X, y, 'x', 'markersize', 10)
legend('Training data')
hold on;

ylabel('Pokemon Attack')
xlabel('Pokemon Features')

fprintf("Programmed Paused, Press enter to Continue.\n\n")
pause;

%% ========================Compute Cost=============================

fprintf("The Theta and Error values before Cost Reduction are:\n")

X = [ones(size(X), 1), X]; # Add a column of ones to start of X matrix.
theta = ones(size(X, 2), 1) * 1
error = CostFunction(X, y, theta)

plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression Before Gradient')

fprintf("Programmed Paused, Press enter to Continue.\n\n")
pause;

%% ========================Gradient Descent=========================

fprintf("The Theta and Error values after using Gradient Descent are:\n")

alpha = 0.00001;
theta = GradientDescent(theta, alpha, X, y)
error = CostFunction(X, y, theta)

fprintf("Programmed Paused, Press enter to Continue.\n\n")
pause;

%% ======================Using Normal Equation========================

fprintf("The Theta and Error values after using the Normal Equation are:\n")

theta = NormalEquation(X, y)
error = CostFunction(X, y, theta)
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression Before Gradient', 'Linear regression After Gradient')

fprintf("Programmed Paused, Press enter to Continue.\n\n")
pause;

%% =========================Prediction=================================

predict = 0;

HP = input("Enter the HP of the Pokemon \n");
def = input("Enter the Defense of the Pokemon \n");
sp_atk = input("Enter the Sp. Atk of the Pokemon \n");
sp_def = input("Enter the Sp. Def of the Pokemon \n");
speed = input("Enter the Speed of the Pokemon \n");
fprintf("The Predicted Attack is...\n\n")

given_values = [1; HP; def; sp_atk; sp_def; speed];
predict = theta' * given_values
pause;

close all;


%% =========================End of File================================
