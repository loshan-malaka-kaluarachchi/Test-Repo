clc;clear;
A = [1,1,3 ;3,-1,1]
diag_select(A)

function [] = diag_select(inputVec)
%CNTRL
%
d_start = inputVec(1,1);
d_inc = inputVec(1,2);
d_stop = inputVec(1,3);
r_start = inputVec(2,1);
r_inc = inputVec(2,2);
r_stop = inputVec(2,3);

for k = d_start :d_inc: d_stop
    for i = k:r_inc:k-r_stop
        j = k - i + 1;
        
        sprintf('d_k, a_i, b_j = (%d,%d,%d)',k,i,j)
    end
end

end