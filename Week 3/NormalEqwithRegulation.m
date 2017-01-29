function theta = NormalEqwithRegulation(X, y, lambda)
% Normal Equation method to obtain theta parameters using Regularization to
% prevent overfitting 

    [m, n] = size(X)
    % Because X' * X is [m, n]' * [m, n] = [n, m] * [m, n] = [n,n], L should
    % be a square matrix with the same number of rows and columns equal to
    % the number of columns in X
    L = eye(n, n);    
    L(1, 1) = 0;      % First element in diagonal is 0
    theta =  pinv(X' * X + lambda * L ) * X' * y;     
end
