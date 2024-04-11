%Matrix
A = [1 2 3;4 5 6;7 8 9];


%Obtaining rows of a matrix
row_1 = A(1,:)
row_2 = A(2,:)
row_3 = A(3,:)

%Obtaining columns of a matrix
col_1 = A(:,1)
col_2 = A(:,2)
col_3 = A(:,3)

%Concatenating columns of a matrix into a column vector
B = [1 2 3 4; 5 6 7 8; 9 10 11 12]
A(:)'
B(:)'
