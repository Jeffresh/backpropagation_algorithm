
function [neural_net,y_predicted, learning_rate]= train(neural_net,X,Y,...
cost_function,learning_rate)

%TRAIN Training based in two steps, forwarding and backpropagation.

out(1,1:2)={nan,X};

% calculate de "error" of the last layer.
out = forwarding(neural_net, out);

% "propagate" that error to modify the weights of every layer
neural_net = backpropagation(neural_net,cost_function, out, learning_rate, Y);  

% usefull to calculate and analize the behavior of the cost in every epoch. (to detect overfitting, underfitting...)
y_predicted = out{end,2};

end

