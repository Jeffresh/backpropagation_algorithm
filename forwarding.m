function [out] = forwarding(neural_net,out)
%FORWARDING First phase of the backpropagation algorithm.
%  With this function we will obtain the activation function ( the output) and the derivates of all the layers
% and store them in the matrix out. This values are necessary to the backpropagation phase.

    for i=1:length(neural_net)

        z = out{end,2} * neural_net(i).W + neural_net(i).bias;
        [a,~] = neural_net(i).activation_function(z);
        out(i+1,1:2)={z,a};
    end

end

