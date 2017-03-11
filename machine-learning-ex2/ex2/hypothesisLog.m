function h = hypothesisLog(X, theta)
% Note:
% The dimension of X is m x 3 (100 x 3) (see the code in ex2.m)
% The dimension of theta is n x 1 (3 x 1) (initialised in ex2.m)
% The dimension of y is m x 1 (100 x 1)
% Our hypothesis should be of dimension m x 1 (100 x 1)
% We can have h = X * theta (m x 3 * 3 x 1 = m * 1)
h = sigmoid(X * theta); % compute hypothesis, h(x)

end