function [product] = productMatrix(vec_1,vec_2)
%PRODUCT_MATRIX Create a matrix of coefficients from vectors 1 and 2
%   Contruct a matrix for products

product = zeros([length(vec_1) length(vec_2)]);

row = 0;
column = 0;
for a_i = vec_1
    row = row + 1;
    for b_j = vec_2
        column = column + 1;
        product(row,column) = a_i*b_j;
    end
    column = 0;
end
end