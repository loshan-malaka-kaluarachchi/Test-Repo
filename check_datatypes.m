clear;clc;

range = -200:200;
%daTy = zeros(size(range));
value = 0;
count = 1;
for i = range 
    value = int8(i);
    %daTy(1,count) = int8(i);
    count = count + 1;
end


plot(range,daTy) 
grid on;