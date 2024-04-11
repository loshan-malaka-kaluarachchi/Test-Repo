clear;clc;

A = zeros([3 3]);

dim = size(A);
rows = dim(1,1);
columns = dim(1,2);

for i = 1:rows
    for j = 1:columns
        A(i,j) = i+j-1;    
    end
end

str_A = string(A)

for diagonal = 1:3
    for row = 1:diagonal
        column = diagonal - row + 1;
        str_A(row,column) = "(" + string(row) + "," + string(column) + ")";
    end
end

for diagonal = 4:5
   for row = diagonal-2:3
       column = diagonal - row + 1;
       str_A(row,column) = "(" + string(row) + "," + string(column) + ")"; 
   end
end
str_A
