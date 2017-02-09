function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to the X data matrix (add bias term)
X = [ones(m, 1) X];

% Calculate Feedforward Propagation from first activation layer (input
% layer)
z1 = X * Theta1';

% Second activation layer, after using the feedforward propagation from
% first activation layer (input layer) as argument of the sigmoid function
a2 = sigmoid(z1);

% Add ones to the a2 data matrix (add bias term)
a2 = [ones(size(a2, 1), 1) a2];

% Calculate Feedforward Propagation from second activation layer (hidden
% layer - only has one)
z2 = a2 * Theta2';

% Third activation layer, after using the feedforward propagation from
% second activation layer (hidden layer) as argument of the sigmoid function
% This is the output layer, with the prediction results
h = sigmoid(z2); %a3

% Using a neural network for one-vs-all classification, the correct class
% of the object is the one with more probability than the others
[~, p] = max(h, [], 2);






% =========================================================================


end
