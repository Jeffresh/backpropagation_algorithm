
function [neural_net,y_predicted, learning_rate]= train(neural_net,X,Y,...
cost_function,learning_rate)

%TRAIN Summary of this function goes here
%   Detailed explanation goes here

out(1,1:2)={nan,X};

% forward, get z(output) values of all layers.

out = fordwarding(neural_net, out);

%back propagation, modify the weights of the nn.

neural_net = backpropagation(neural_net,cost_function, out, learning_rate, Y);  

% la salida se almacena en la última posición de out.

y_predicted = out{end,2};

end

