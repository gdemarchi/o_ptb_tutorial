classdef Human
    %HUMAN Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        BMI
    end
    
    methods
        % constructor. Called every time i create an instance
        function obj = AdvancedHuman(BMI)
            fprintf('Creating a nice BMI for you: %f', BMI);
            obj.BMI = BMI;
        end %function
        
        function curse(obj)
            disp('FU !$%$#%#$!!');
        end
        
        function say_bad_things(obj)
            if obj.BMI > 25
                disp('Fatty b**rd!!!!')
            else
                disp('You are in good shape!!!!')
            end %if
        end %function
        
    end
end

