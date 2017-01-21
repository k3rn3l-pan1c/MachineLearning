function [a, b] = linearRegression(x, y, alpha, tol, start_a, start_b)
% Univariable Linear Regression
% The given function obtains the parameters a and b for a linear fit
% function, y = a*x + b, minimizating the mean square error.
%
% The cost function is $\frac{1}{2m}\sum_{i=1}^m(h_{\theta}(x_i) - y_i)$
% Where $h_{\theta}(x) = \theta_0 + \theta_1x$
% And the minimization function using the mean square error is
% $\frac{1}{2m}\sum_{i=1}^m(h_{\theta}(x_i) - y_i)^2$
% The minimization problem is solved by a gradient descent algorithm.
% The mathematical expression is the following:
% $$\theta_j = \theta_j - \alpha\frac{\partial}{\partial \theta_j} J(\theta_0, \theta_1)$$
%
% USAGE:
%   [a, b] = linearRegression(x, y, alpha, tol, start_a, start_b)
%
% INPUT:
%   x       -> X value of data set
%   y       -> Y value of data set
%   alpha   -> learning rate
%   tol     -> tolerance of minimum error
%   start_a -> guess start value for parameter a
%   start_b -> guess start value for parameter b
%
%
    
    % number of training examples in the dataset
    m = length(x);

    while(1)
        % New values for iteration
        new_b = start_b - alpha ./ m .*  sum((start_b + start_a .* x) - y);
        new_a = start_a - alpha ./ m .*  sum(((start_b + start_a .* x) - y) .* x');
        
        % Check for convergence
        if( abs(new_a - start_a) <= tol && abs(new_b - start_b) <= tol)
            break;
        end;
        
        % Update simultaneously for next iteration
        start_b = new_b;
        start_a = new_a;
    end;
end
