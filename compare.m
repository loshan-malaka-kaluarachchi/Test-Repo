%parameters
k = 0.5;
m = 10;
c = 0.5;

%system1
p1 = tf([1/m],[1 0 0]);
p2 = tf([k/m^2],[1 k/c k/m 0 0]);

system1 = p1 - p2;

%system2
system2 = tf([1/m],[1 c/m k/m]);

impulse(system1,t)