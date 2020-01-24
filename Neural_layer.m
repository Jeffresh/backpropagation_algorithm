classdef Neural_layer
    %NEURAL_LAYER Class that represent a layer of a neural network.
    %   attr: n_input_connections, activation_function, n_neurons, bias, w (weights).
    
    properties
        n_input_connections
        activation_function
        n_neurons
        bias
        W
    end
    
    methods
        function obj = Neural_layer(n_input_connections,n_neurons,activation_function)
            %NEURAL_LAYER Construct an instance of this class
            %  the weights are initialized randomly with values between -1 and 1.
            
            obj.n_input_connections = n_input_connections;
            obj.n_neurons = n_neurons;
            obj.activation_function = activation_function;
            obj.bias = ones(1,n_neurons) ;
            obj.W = rand(n_input_connections, n_neurons) *2 -1; % entre -1 y 1
        end
        
        function obj = reset_bias(obj)
            obj.bias = ones(1,obj.n_neurons) ;
        end
    end
end

