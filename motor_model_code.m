%motor parameters
K_emf = 3.5;
K_torque = 3.6;
gearbox_ratio = 0.02;
b = 3.5;
J = 1.6*10^-4;
L = 0.019*10^-3;
R = 16*10^-3;

%defining 's'
s = tf('s');

%electrical model
motor_electric = 1/(L*s+R);

%mechanical model
motor_mech = K_torque/(J*s+b);

%auxiliary function
motor_open = 1 + K_emf*motor_electric*motor_mech;

%transfer functions for y/x and y/z
A = motor_electric*motor_mech/motor_open;
B = motor_mech/motor_open;

%input step voltage
x = 1;

%external load/torque
z = 0;

%output signal
y = gearbox_ratio*(A*x-B*z)

step(y);
grid('on')

