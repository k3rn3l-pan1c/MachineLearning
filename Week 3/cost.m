function cost = cost(theta, X, y, lambda)
% Computes the linear regression cost function using regularization to
% avoid overfitting.
% Remember theta_0 should be penalized, so the regularization term only
% uses theta_1, theta_2, ...
m = size(X, 1);
cost = 1/(2*m) * (sum((X* theta - y).^2) + lambda * sum(theta(2:end).^2));
end
