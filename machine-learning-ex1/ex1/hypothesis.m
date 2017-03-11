function h = hypothesis(X, theta)
% Note:
% The dimension of X is 97x2 (see the code in ex1.m)
% The dimension of theta is 2x1 (initialised in ex1.m)
% The dimension of y is 97x1
% Our hypothesis should be of dimension 97x1
% We can have h = X * theta (97x2 * 2x1 = 97*1)
h = X * theta; % compute hypothesis, h(x)

end