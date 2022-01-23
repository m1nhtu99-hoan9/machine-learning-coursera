% Copied from ex2 with modifications

function [J, grad] = costFn(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

m = length(y); % number of training examples
n = length(theta); % number of features

J = 0;
grad = zeros([n,1]);

h = sigmoid(X * theta); % vector of predictions
J = sum( -y .* log(h) - (1 - y) .* log(1 - h) ) / m;

grad(1:n) = sum( (h-y) .* X(:,1:n) ) / m;

end