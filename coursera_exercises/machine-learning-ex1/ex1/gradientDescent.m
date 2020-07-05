function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
cur_theta = theta;
cur_cost = 0;

x = X(:,2);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    prediction = theta(1) + (theta(2) * x);

    theta_0 = theta(1) - (1/m) * alpha * sum(prediction - y);
    theta_1 = theta(2) - (1/m) * alpha * sum((prediction - y) .* x);

    theta = [theta_0; theta_1];
    cost = computeCost(X, y, theta);

    % Save the cost J in every iteration    
    J_history(iter) = cost
end
