
T_s = 0.1;

a = 0;
b = 100;
n = a:b;
t = T_s*n;

w = 1;
v = sin(w.*t);
u = v;

if u(1,term) >= (term - 1)*resolution && u(1,term) < (term)*resolution
    u(1,term) = (term - 1)*resolution
else u(
    

%{

figure(1);
tiledlayout(2,1);

nexttile;
stem(n,v);
grid on;
grid minor;

nexttile;
stem(n,u);
grid on;
grid minor;

%}