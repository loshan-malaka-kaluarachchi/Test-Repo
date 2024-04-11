clear;clc;
x_n = [0 1 2 3];
n_0 = -1;
t_stamp = (- n_0:length(x_n) - n_0 - 1); 

lim = max(abs(t_stamp));

t = -lim:lim;
noZ = length(t)-length(t_stamp);

if noZ ~= 0
    padding = zeros([1 noZ]);
end

x = [padding,x_n]
clear n_0 noZ x_n t_stamp padding lim

even = 0.5*(x + flip(x))
odd = 0.5*(x - flip(x))

syms a b
L = a + b
s = ['$$',latex(L),'$$']
figure(1)

subplot(3,1,1)
hold('on')
title(s,'Interpreter','latex')
stem(t,x,'filled','k')
grid on

subplot(3,1,2)
hold('on')
title('Even signal')
stem(t,even,'filled','k')
grid on

subplot(3,1,3)
hold('on')
title('Odd signal')
stem(t,odd,'filled','k')
grid on


