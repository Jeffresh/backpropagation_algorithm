function [sigm,d_sigm] = sigmoid_function(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
sigm = 1./(1+exp(-x));
d_sigm = x.*(1-x);
end

