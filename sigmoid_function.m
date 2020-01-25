function [sigm,d_sigm] = sigmoid_function(x)
%SIGMOID_FUNCTION Function to calculate de sigmoid function and his derivate.

sigm = 1./(1+exp(-x));

% the derivate expression is expresed in this way to improve the 
% eficiency. Look the way in which is used in the code and you will understand.
d_sigm = x.*(1-x);
end

