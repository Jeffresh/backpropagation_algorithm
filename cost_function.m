function [c,d_c] = cost_function(so,sd)
%COST_FUNCTION Summary of this function goes here
%   Detailed explanation goes 

c =mean((so-sd).^2);
d_c = so-sd;
end

