clear 
clc

%start time
a = 0;
%end time
b = 6;
%sampling period 'Ts' in seconds
Ts = 1;

%sample times 't'
t1 = (a:0.7*Ts:b);
t2 = (a:0.41*Ts:b);
t3 = (a:0.1*Ts:b);

%signals with varying frequency 
x = sin(t1);
y = sin(t2);
z = sin(t3);

tiledlayout(3,1)

%stem plot 1 line properties
nexttile
stem(t1,x,'-r','LineWidth',1)
title('Ts = 0.7s')
xlabel('time(s)')
ylabel('Amplitude(units)')
grid minor

%stem plot 2 line properties
nexttile
stem(t2,y,'--g','LineWidth',1)
title('Ts = 0.41s')
xlabel('time(s)')
ylabel('Amplitude(units)')
grid minor

%stem plot 3 line properties
nexttile
stem(t3,z,'.-b','LineWidth',1)
title('Ts = 0.1s')
xlabel('time(s)')
ylabel('Amplitude(units)')
grid minor







