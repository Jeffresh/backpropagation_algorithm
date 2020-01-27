function [c,d_c] = cost_function(so,sd)
%COST_FUNCTION Mean scuared error and his derivated.

c =mean((so-sd).^2);
d_c = so-sd;
end

