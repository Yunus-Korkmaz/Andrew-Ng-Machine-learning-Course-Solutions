function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values

m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


%hipotezimiz theta0 + theta1*x1 + theta2*x2 ...
h=X*theta;

 % iterative şekilde maliyet fonksiyonu hesaplanması
% for i=1:m
% J = J + (h(i) - y(i))^2/(2*m);
% end

 % matrix yardımı ile maliyet fonksiyonu hesabı 
J=sum((h-y).^2)/(2*m);



% =========================================================================

end
