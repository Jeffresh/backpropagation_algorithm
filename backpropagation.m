function neural_net = backpropagation(neural_net, cost_function, out, learning_rate, Y)
%BACKPROPAGATION Summary of this function goes here
%   Detailed explanation goes here

    for i=length(neural_net):-1:1
        
        a = out{i+1,2};

        if i == length(neural_net)

            [~,derivated_cost] = cost_function(a,Y);
            [~,derivated_activation_function] = neural_net(i).activation_function(a);
            deltas = derivated_cost .* derivated_activation_function;

        else
            [~,derivated_activation_function] = neural_net(i).activation_function(a);
            deltas = deltas * aux_W' .* derivated_activation_function ;
        end

        aux_W = neural_net(i).W;

        neural_net(i).bias = neural_net(i).bias - deltas *learning_rate;
        neural_net(i).W = neural_net(i).W - out{i,2}'* deltas*learning_rate;
        

    end
    
end

