function J = costFunction(X, y, theta)
    % X is the design matrix containing our training examples.
    % Y is the class labels
    
    m = size(X, 1);     % number of training examples
    predictions = X * theta;    % predictions of hyphotesis on all m examples
    sqrErrors = (predictions - y).^2;   % Squared errors
    
    J = 1/(2*m) * sum(sqrErrors);
