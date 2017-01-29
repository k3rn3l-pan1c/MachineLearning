function grad = gradientDescent(theta, X, y, lambda)
% BETA

% Your code goes here.
m = size(X, 1)
grad(1) = sum((X * theta - y)*X(1, :)) / m
grad(2:end) = sum((X* theta - y)*X(:, 2:end) / m + lambda/m * theta(2:end)
end
