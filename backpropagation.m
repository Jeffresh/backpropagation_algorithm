function neural_net = backpropagation(neural_net, cost_function, out, learning_rate, Y)
%BACKPROPAGATION  update de weights using the  backpropagation algorithm
%  

    for i=length(neural_net):-1:1
        
        a = out{i+1,2};
        
        
        % for the last layer. This is evaluated only once, so you can put this outside of the loop
        % and start in length(neural_net) -1, put y prefer this way to not duplicate the code and readability purpouses.
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

