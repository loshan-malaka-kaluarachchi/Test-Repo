%% UNIT STEP FUNCTION DECLARATION
%{
--------------------------------------------------------------------------
    *   INPUTS : t_initial, t_final ,delay
    *   OUPUTS : u_t,t
--------------------------------------------------------------------------
    *   MAKES A VECTOR "t" FOR VALUES OF TIME
    *   GETS DIMENSIONS OF "t" USING THE "size" FUNCTION
    *   MAKES A ZERO VECTOR FOR THE UNIT STEP SIGNAL USING DIMENSIONS
    *   GET THE NUMBER OF TERMS FROM "dimensions" VECTOR
    *   ASSIGN VALUES OF "u_t" USING FOR AND IF LOOPS
%}
function [u_t,t] = unit_step(t_initial,t_final,delay)
    t = (t_initial:t_final);            
    dimensions = size(t);               
    u_t = zeros(dimensions);        
    no_of_terms = dimensions(1,2);

    for i = 1:no_of_terms   %FOR ALL VALUES OF "t"
        if t(1,i) < delay
            u_t(1,i) = 0;
        elseif t(1,i) >= delay
            u_t(1,i) = 1;
        end
    end   
end
