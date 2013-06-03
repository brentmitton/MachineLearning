function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
S = [];  % the squares of (x_theta(x^i) - y^i)
i = 1; 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
while (i <= m)
    S(end + 1) = (hypothesis(X(i, :), theta) - y(i))^2;
    i = i+1;
end

J = sum(S)/(2*m);
% =========================================================================

end


function H = hypothesis(Xi, theta) 
    H = Xi * theta;
end
