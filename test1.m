clear;clc;
a = [1 2 3 4];
b = [1 2 3 4];

n_terms_a = length(a);                                              %m rows
n_terms_b = length(b);                                              %n columns
degree_a = n_terms_a - 1;                                           %m-1
degree_b = n_terms_b - 1;                                           %n-1
product_degree = degree_a + degree_b;                               %m+n-2
plateau_diagonals = abs(n_terms_a - n_terms_b) + 1;                 %|m-n|+1
terms_per_plateau_diagonal = min(n_terms_a,n_terms_b);              %
total_diagonals = n_terms_a + n_terms_b - 1;                        %m+n-1
diagonals_per_triangle = (total_diagonals - plateau_diagonals)*0.5; %

product = product_matrix(a,b)
store = zeros([total_diagonals terms_per_plateau_diagonal]);







