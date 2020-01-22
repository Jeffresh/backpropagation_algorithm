function nn = create_nn(topology,activation_function)
%  CREATE_NN Create a Neural Network layer, based in a vector representing the topology, and a activation function.
%  Example:
%  topology=[2,10,3]; neural_network = create_nn(topology, @sigmoid_function); 
%  create a Neural Network with 3 layers, being the numbers of vector the number of neurons of each layer.
%  First position/index of the vector, imput layer, last position, output layer, the others in between, hiden layers.

for i=1:length(topology)-1
    nn(i)=Neural_layer(topology(i),topology(i+1),activation_function);
end



