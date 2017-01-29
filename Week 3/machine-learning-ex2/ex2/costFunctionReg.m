function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% The hypothesis function is the same as the linear regression but is
% passed as an argument to the sigmoid function
h = sigmoid(X * theta);

% Cost function vectorized
J = 1/ m *( -y' * log(h) - (1 - y')* log(1 - h)) + lambda / (2 * m) * sum(theta(2:end).^2);

% Gradient vectorized calculations. Treat as a normal logistic
% regularization and then add the regularization term, adding zero to
% theta_0 that should not be regularized
reg = [0  lambda / m * theta(2:end)'];
grad = 1 / m * (h  - y)' * X + reg;


% =============================================================

end
