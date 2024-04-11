clear;clc;
a = [1 2 3 4 5 6 7];
b = [1 2 3 4];

%Constants
n_terms_a = length(a);                                              %m rows
n_terms_b = length(b);                                              %n columns
degree_a = n_terms_a - 1;                                           %m-1
degree_b = n_terms_b - 1;                                           %n-1
product_degree = degree_a + degree_b;                               %m+n-2
plateau_diagonals = abs(n_terms_a - n_terms_b) + 1;                 %|m-n|+1
terms_per_plateau_diagonal = min(n_terms_a,n_terms_b);              %
total_diagonals = n_terms_a + n_terms_b - 1;                        %m+n-1
diagonals_per_triangle = (total_diagonals - plateau_diagonals)*0.5; %


product = product_matrix(a,b); 
store = zeros([total_diagonals terms_per_plateau_diagonal]);
result = zeros([1 total_diagonals]);
%First Sum
for diagonal = (1:diagonals_per_triangle)
    for row = (diagonal:-1:1)
        column = diagonal - row + 1;
        store(diagonal,column) = product(row,column);
    end
end


if n_terms_a > n_terms_b
    sprintf("tall matrix")
    %Second Sum
    for diagonal = (diagonals_per_triangle + 1:diagonals_per_triangle + plateau_diagonals) 
        for row = (diagonal:-1:diagonal - terms_per_plateau_diagonal + 1)
            column = diagonal - row + 1;
            store(diagonal,column) = product(row,column);
        end
    end
    %Third Sum
    for diagonal = (diagonals_per_triangle + plateau_diagonals + 1:total_diagonals)
        count = 0;
        for row = (n_terms_a:-1:diagonal - diagonals_per_triangle)
            count = count + 1;
            column = diagonal - row + 1;
            store(diagonal,count) = product(row,column);           
        end
    end
    

elseif n_terms_a == n_terms_b
    sprintf("square matrix")
    %Second Sum 
    for diagonal = (diagonals_per_triangle + 1:diagonals_per_triangle + plateau_diagonals) 
        for row = (diagonal:-1:diagonal - terms_per_plateau_diagonal + 1)
            column = diagonal - row + 1;
            store(diagonal,column) = product(row,column);
        end
    end
    %Third Sum
    for diagonal = (diagonals_per_triangle + plateau_diagonals + 1:total_diagonals)
        count = 0;
        for row = (diagonals_per_triangle + 1:-1:diagonal - diagonals_per_triangle)
            count = count + 1;
            column = diagonal - row + 1;
            store(diagonal,count) = product(row,column);       
        end
    end
    

else
    sprintf("wide matrix")
    %Second Sum
    for diagonal = (diagonals_per_triangle + 1:diagonals_per_triangle + plateau_diagonals)
        count = 0;
        for row = (diagonals_per_triangle + 1:-1:1)
            count = count + 1;
            column = diagonal - row + 1;
            store(diagonal,count) = product(row,column);
        end
    end
    %Third Sum
    for diagonal = (diagonals_per_triangle + plateau_diagonals + 1:total_diagonals)
        count = 0;
        for row = (diagonals_per_triangle + 1:-1:diagonal - degree_b)
            count = count + 1;
            column = diagonal - row + 1;
            store(diagonal,count) = product(row,column);       
        end
    end
end

% Summing up the diagonals
count = 0;
while count < total_diagonals
    count = count + 1;
    result(1,count) = sum(store(count,:));
end

a
b
product
store
result


