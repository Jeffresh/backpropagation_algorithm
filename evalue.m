function y_predicted = evalue(neural_net, X)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    for i=1:length(neural_net)      
        neural_net(i) = neural_net(i).reset_bias();
    end

    out(1,1:2)={nan,X};


    for i=1:length(neural_net)

        z = out{end,2} * neural_net(i).W + neural_net(i).bias;
        [a,~] = neural_net(i).activation_function(z);
        out(i+1,1:2)={z,a};


    end

    y_predicted = out{end,2};



end

