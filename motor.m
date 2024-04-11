
%motor parameters
K = 3.6;
b = 3.5;
J = 1.6*10^-4;
L = 0.019*10^-3;
R = 16*10^-3;

%transfer function for the motor
a = tf('s');
p = (J*a+b)*(L*a+R)+K^2;
T = K^2/p;
T_2 = zpk(T)
stepinfo(T);


%step response
step(T,'k')
grid('on')

%rlocus(T_2)
%grid('on')
