function [out] = forwarding(neural_net,out)
%FORWARDING Summary of this function goes here
%   Detailed explanation goes here

    for i=1:length(neural_net)

        z = out{end,2} * neural_net(i).W + neural_net(i).bias;
        [a,~] = neural_net(i).activation_function(z);
        out(i+1,1:2)={z,a};


    end

end

