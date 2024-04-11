clear;clc;

a = [1 2 3 4 5 6];                                      %Short Polynomial
b = [1 2 3 4 5 6 7 8];                                          %Long Polynomial

if length(a)>length(b)
    c = a;
    a = b;
    b = c;
end

n_terms_a = length(a);                                  %m rows
n_terms_b = length(b);                                  %n columns
degree_a = n_terms_a - 1;                               %m-1
degree_b = n_terms_b - 1;                               %n-1
product_degree = degree_a + degree_b;                   %m+n-2
plateau_diagonals = abs(n_terms_a - n_terms_b) + 1;      %|m-n|+1
terms_per_plateau_diagonal = min(n_terms_a,n_terms_b);

total_diagonals = n_terms_a + n_terms_b - 1;             %m+n-1
diagonals_per_triangle = (total_diagonals - plateau_diagonals)*0.5;
product = zeros([n_terms_a n_terms_b]);                 %Empty matrix for powers
result = zeros([1 product_degree+1]);                   %Vector for the resultant polynomial


%Contruct a matrix for products
row = 0;
column = 0;

for a_i = a        
    row = row + 1;
    for b_j = b
        column = column + 1;
        product(row,column) = a_i*b_j;
    end
    column = 0;
end
row = 0;

%Array for the increasing triangle
inc_tri = zeros([diagonals_per_triangle terms_per_plateau_diagonal]);
for d_k = 1:diagonals_per_triangle
    for a_i = d_k:-1:1
        b_j = d_k - a_i + 1;
        inc_tri(d_k,b_j) = product(a_i,b_j);
        %store = cat(1,store,product(a_i,b_i));
    end
end

%Array for the wide plateau
plateau = zeros(0);
for d_k = diagonals_per_triangle + 1:diagonals_per_triangle + plateau_diagonals
    for a_i = terms_per_plateau_diagonal:-1:1
        b_j = d_k - a_i + 1;
        plateau(d_k-diagonals_per_triangle,a_i) = product(a_i,b_j);
    end
end

%Array for tall plateau


%Array for the decreasing triangle
dec_tri = zeros([diagonals_per_triangle terms_per_plateau_diagonal]);
for d_k = diagonals_per_triangle + plateau_diagonals+1:total_diagonals
    for b_j = n_terms_b:-1:n_terms_a + d_k - n_terms_b - 1 
        a_i = d_k - b_j + 1;
        ro = d_k - n_terms_b;
        co = a_i - 1 ;
        dec_tri(ro,co) = product(a_i,b_j);
    end
end

%Print
a;
b;
product
inc_tri
plateau
dec_tri
