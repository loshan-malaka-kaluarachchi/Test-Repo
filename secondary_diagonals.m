clear;clc;
%Square Matrices
%Filling row by row
A = zeros(3);
initial = 1;
for row = 1:3
    for column = 1:3
        A(row,column) = initial;
        initial = initial + 1;
    end
end

%Filling column by column
B = A;
initial = 1;
for column = 1:3
    for row = 1:3
        B(row,column) = initial;
        initial = initial + 1;
    end 
end

%Transpose of matrix A gives matrix B
C = transpose(A);


