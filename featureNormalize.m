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
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
mu(1)=sum(X(:,1))/length(X(:,1))
mu(2)=sum(X(:,2))/length(X(:,1))
mu=[mu(1) mu(2)]
std_first_colm=std(X(:,1))
std_secnd_colm=std(X(:,2))
sigma=[std_first_colm std_secnd_colm]
First_colmn=X(:,1)-mu(1);
Seconed_column=X(:,2)-mu(2);
X_norm=[First_colmn/std_first_colm Seconed_column/std_secnd_colm]

% Hint: You might find the 'mean' and 'std' functions useful.
%       


% ============================================================

end
