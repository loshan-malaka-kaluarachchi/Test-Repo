%% No of iterations
itera = 30;
%% First value and second value
f_value = 10;
s_value = -10;
%% Preallocatting matrices
%Series - Sequence matrix
%ratio - ratio of the next term and the current term 
series = zeros([1 itera]);
series(1,1) = f_value;
series(1,2) = s_value;
ratio = zeros([1 itera]);
%% For loop calculates the rest of the sequence
for i = 1:itera
    
    sum = 1*f_value + 3*s_value;
    ratio(1,i) = sum/s_value;
    f_value = s_value;
    s_value = sum;
    series(1,i+2) = sum;
    
end
%% Stemplot of the ratio
stem(ratio);
grid on;
grid minor;