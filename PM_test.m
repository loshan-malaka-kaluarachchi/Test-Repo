clc;clear;
%% Inputs
a = [1 0 1 1];
b = [1 0 1 1];

%% Constants
n_terms_a = length(a);                       %No of rows                 -> m
n_terms_b = length(b);                       %No of columns              -> n
degree_a = n_terms_a - 1;                    %Degree of 'a'              -> m-1
degree_b = n_terms_b - 1;                    %Degree of 'b'              -> n-1
P_D = degree_a + degree_b;                   %Product Degree             -> m+n-2
n_pd = abs(n_terms_a - n_terms_b) + 1;       %No of Plateau Diagonals    -> |m-n|+1
tppd = min(n_terms_a,n_terms_b);             %Terms Per Plateau Diagonal
td = n_terms_a + n_terms_b - 1;              %Total Diagonals            -> m+n-1
dpt = (td - n_pd)*0.5;                       %Diagonals Per Triangle     -> 0.5*(Total Diagonals - No of Plateau Diagonals)

%% Containers
product = productMatrix(a,b);
store = zeros([td tppd]);
result = zeros([1 td]);

%% Increasing Triangle
store = firstDiags(1,dpt,store,product);

%% Plateau Diagonals and Decreasing Triangle 
if n_terms_a > n_terms_b
    % Tall Matrix
    sprintf('Tall')
    store = vertplateauDiags(dpt + 1, dpt + n_pd, tppd, store, product);
    store = lastDiags(dpt + n_pd + 1,td ,n_terms_a ,dpt,store,product);
elseif n_terms_a == n_terms_b
    % Square Matrix
    sprintf('Square')
    store = singleplateauDiag(dpt + 1, dpt + 1, 0, store, product);
    store = lastDiags(dpt + n_pd + 1,td ,n_terms_a ,dpt,store,product);
else
    % Wide Matrix
    sprintf('Wide')
    store = horzplateauDiags(dpt + 1, dpt + n_pd, 0, store, product);
    store = lastDiags(dpt + n_pd + 1,td,dpt + 1,degree_b,store,product);
end
%% Summing up coefficients
count = 0;
while count < td
    count = count + 1;
    result(1,count) = sum(store(count,:));
end
%% Display Results
product
store
result


%% Function Declaration

function [strge_mtrx] = firstDiags(d_ini,d_fin,strge_mtrx,coeff_mtrx)
%FIRSTSUM Retrieves terms along diagonals of a matrix and returns it.
%

for diagonal = d_ini:d_fin
    count = 0;
    for row = diagonal:-1:1
        count = count + 1;
        column = diagonal - row + 1;
        strge_mtrx(diagonal,count) = coeff_mtrx(row,column);
    end
end

end
%%
function [strge_mtrx] = vertplateauDiags(d_ini,d_fin,k,strge_mtrx,coeff_mtrx)
%VERTPLATEAUDIAGS 
%

for diagonal = d_ini:d_fin
    count = 0;
    for row = (diagonal:-1:diagonal - k + 1)
        count = count + 1;
        column = diagonal - row + 1;
        strge_mtrx(diagonal,count) = coeff_mtrx(row,column);
    end
end

end
%%
function [strge_mtrx] = singleplateauDiag(d_ini,d_fin,k,strge_mtrx,coeff_mtrx)
%SINGLEPLATEAUDIAGONAL
%

for diagonal = d_ini:d_fin
    count = 0;
    for row = (diagonal:-1:1 - k)
        count = count + 1;
        column = diagonal - row + 1;
        strge_mtrx(diagonal,count) = coeff_mtrx(row,column);
    end
end

end
%%
function [strge_mtrx] = horzplateauDiags(d_ini,d_fin,k,strge_mtrx,coeff_mtrx)
%HORZPLATEAUDIAGS 
%

for diagonal = d_ini:d_fin
    count = 0;
    for row = (d_ini:-1:1 - k)
        count = count + 1;
        column = diagonal - row + 1;
        strge_mtrx(diagonal,count) = coeff_mtrx(row,column);
    end
end

end
%%
function [strge_mtrx] = lastDiags(d_ini,d_fin,r_ini,k,strge_mtrx,coeff_mtrx)
%LASTDIAGS
%

for diagonal = d_ini:d_fin
    count = 0;
    for row = r_ini:-1:diagonal - k
        count = count + 1;
        column = diagonal - row + 1;
        strge_mtrx(diagonal,count) = coeff_mtrx(row,column);
    end
end

end


