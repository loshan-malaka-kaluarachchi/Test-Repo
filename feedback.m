
T_s = 0.1;

a = 0;
b = 100;
n = a:b;
t = T_s*n;

w = 1-exp(-0.01*t);
v = sin(w.*t);
u = v;

k = 0.5;
for it = 1:(b - a + 1)
    
    if v(1,it) >= k
        u(1,it) = 1;
    else
        u(1,it) = 0;
    end
    
end

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