
function [outVec] = zeroPadding(inpVec,width)
%ZEROPADDING
%Adds Zeros between values of inpVec

arguments
    inpVec  (1,:)   double  {} 
    width   (1,1)   double  {mustBePositive} = 1
end

zEds = zeros([width size(inpVec,2)]);
temp = [inpVec;zEds];
outVec = reshape(temp,1,[]);
end