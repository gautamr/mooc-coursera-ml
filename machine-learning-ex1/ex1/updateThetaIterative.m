function theta = updateThetaIterative(X, y, theta, alpha)

m = length(y); % number of training examples
n = size(X, 2); % number of feature
h = hypothesis(X, theta);
for j = 1: n
    theta(j) = theta(j) - (alpha / m) * sum ((h - y) .* X (:, j));
end

end
