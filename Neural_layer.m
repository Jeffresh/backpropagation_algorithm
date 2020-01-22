classdef Neural_layer
    %NEURAL_LAYER Summary of this class goes here
    %   Detailed explanation goes here
    
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
            %   Detailed explanation goes here
            
            obj.n_input_connections = n_input_connections;
            obj.n_neurons = n_neurons;
            obj.activation_function = activation_function;
            obj.bias = ones(1,n_neurons) ; % entre menos -1 y 1
            obj.W = rand(n_input_connections, n_neurons) *2 -1; % entre -1 y 1
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
        
        function obj = reset_bias(obj)
            obj.bias = ones(1,obj.n_neurons) ;
        end
    end
end

