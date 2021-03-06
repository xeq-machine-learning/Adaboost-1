function [ W ] = Calculate_Weights( data, labels, W0, weights )
%{
    Implements a function to calculate the weights for a given logistic
    regression 
        
    Inputs: 
        a. W0 
			-initial weights 
            - (D+1) x1 vector   (in this case 5x1
				
		b. data 
			-used in each iteration of evaluating Gradient_Error
            - N+ (D+1) matrix 
                - Xi = [1, Xi1, Xi2, Xi3, Xi4, Xi5]
				
		c. labels 
            -Nx1 vector of corresponding data labels 

        d.weights 
            -weights from adaboost for the Grad Error function 

    Outputs 
        a. W 
            -final weights 

    Design 
        -implements a fixed step gradient descent algorithm 

%}

step_size = 2;
max_iters = 100;

W = W0;
design_matrix = Polynomial_Basis(data);
for i=1:max_iters 
    
   % Gradient_Error(design_matrix, labels, W, weights)
    W = W - step_size .* (Gradient_Error(design_matrix, labels, W, weights));
    %%gradErr = Gradient_Error(design_matrix, labels, W)
    %update = step_size .* gradErr
    %W = W-update';
    
end 
    
    
    
end 






