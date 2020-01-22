function nn = create_nn(topology,activation_function)
%CREATE_NN Summary of this function goes here
%   Detailed explanation goes here

for i=1:length(topology)-1
    nn(i)=Neural_layer(topology(i),topology(i+1),activation_function);
end



