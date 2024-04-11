clc;
clear;
%{
%{
    %   VARIABLES "n_min" AND "n_max" SET THE RANGE OF VALUES FOR "n" 
    %   CREATES VECTOR "x_n" USING USER DEFINED FUNCTION "unit_impulse" 
%}
n_min = -5;     
n_max = 5;      
n = n_min:n_max;    
x_n = 2*unit_impulse(n_min,n_max,-2) - unit_impulse(n_min,n_max,4); 

%{
    %   MAKES A VECTOR FOR AXIS LIMITS
    %   PLOT "x_n" USING THE "stem" FUNTION
    %   TURN ON MAJOR AND MINOR GRIDS
    %   SET AXIS LIMITS
%}
axis_lim = [(n_min-1) (n_max+1) (min(x_n)-1) (max(x_n)+1)];
stem(n,x_n,'filled','k');     
grid 'on';      
grid 'minor';       
axis(axis_lim);     
title('x(n) = 2.delta(n + 2) - delta(n - 4)');
xlabel('n');
ylabel('x(n)');

n = -10:9;
f_1 = 5 - mod(n,5)

stem(n,f_1)
%}

t = -10:10;
size_t = size(t);
length = size_t(1,2);
v = zeros(size_t);
delay = 4;
for i = 1:length
    if t(1,i)<= -delay
        v(1,i) = 1;
    elseif t(1,i) > -delay
        v(1,i) = 0;
    end
end
stem(t,v)






