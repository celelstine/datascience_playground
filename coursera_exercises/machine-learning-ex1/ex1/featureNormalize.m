function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it is standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

num_feature =  size(X, 2); % number of features is the number of columns
for iter = 1:num_feature;
    % get the mean of each column
    feature_mean = mean(X(:,iter));
    mu(iter) = feature_mean

    % substract mean from the dataset
    X_1 = X - feature_mean;
end

for iter = 1:num_feature;
    % get the standard deviation of each column
    feature_std = std(X(:,iter));
    sigma(iter) = feature_std

    % divide the dataset by 
    X_2 = X_1 / feature_std;
end

X_norm = X_2
% ============================================================

end
