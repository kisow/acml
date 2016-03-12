function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% 구현=================
%min_err = realmax;
%step = [0.01 0.03 0.1 0.3 1 3 10 30];
%for C_step = step
%    for sigma_step = step
%        model = svmTrain(X, y, C_step,...
%                 @(x1, x2) gaussianKernel(x1, x2, sigma_step));
%        predictions = svmPredict(model, Xval);
%        err = mean(double(predictions ~= yval));
%        fprintf('cur: C=%f, sigma=%f, err=%f\n', C_step, sigma_step, err);
%        fprintf('min: C=%f, sigma=%f, err=%f\n', C, sigma, min_err);
%        if min_err > err
%            min_err = err;
%            C = C_step;
%            sigma = sigma_step;
%        end
%    end
%end

C = 1.0;
sigma = 0.1;
% =========================================================================

end
