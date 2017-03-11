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

% Add ones to the X data matrix, i.e. 'bias' unit, X is of dimension m X n, where m = number of training set, n = number of features
a1 = [ones(m, 1) X]; % a1 with 'bias' term; now 'a1' is of dimension: m X (n + 1) | a1 = 5000 X 401
a2 = sigmoid(Theta1 * a1'); % Theta1 is of dimension l2 X (n + 1), then a2 becomes of dimension l2 X m, where l2 = number of unit is layer 2 | a2 = 25 X 5000
a2 = [ones(1, size(a2, 2)); a2]; % a2 with 'bias' term; now 'a2' is of dimension (l2 + 1) X m | a2 = 25 X 5000
a3 = sigmoid(Theta2 * a2); % The is of dimension l3 X (l2 + 1) | a3 = 10 X 5000 
h = a3'; % h = 5000 X 10
[max_elem, max_index] = max(h, [], 2);
p = max_index;

% =========================================================================

end
