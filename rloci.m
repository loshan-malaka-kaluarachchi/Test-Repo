z = -9
%{
G = zpk( [z] ,[0 -10 p_c], gain);
H = G/(1+G)
step(H)
stepinfo(H)
%}

desired_pole = 9;
h = 9.182;
d = 180/pi;
theta_1 = d*atan(h/9)
theta_2 = d*atan(h)
theta_3 = -90-theta_1-theta_2+360 
p_c = 1/(tan(theta_3)/h)-9

d_4 = sqrt(h^2 + 9^2)
d_3 = 9.182
d_2 = sqrt(1+h^2)
d_1 = sqrt((p_c+9)^2+h^2)

gain = (d_1*d_2*d_4)/d_3
