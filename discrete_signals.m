%transformations on discrete signals

%defining values of n
n = linspace(0,10,k);

%signal x(n)
x = sin(n);

%{
%stem plot of the signal
stem(n,x,'k','LineWidth',0.2);
%}

%continuous version of the signal as reference
t = linspace(0,10,50);
%x_t = sin(t);
%plot(t,x_t,'--b')

%various transformations of x(t)
x_1t = sin(2*t);
x_2t = sin(0.5*t);
x_3t = sin(-t);
x_4t = sin(t-2);

%discrete versions 
y_1n = sin(2*n);
y_2n = sin(0.5*n);
y_3n = sin(-n);
y_4n = sin(n-2);


%plotting 4 graphs vertically
tiledlayout(4,1)

nexttile
stem(n,y_1n)
hold on;
plot(t,x_1t)
hold off;
xlabel('time(n)')
title('x(2*n)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile
stem(n,y_2n)
hold on;
plot(t,x_2t)
hold off;
xlabel('time(n)')
title('x(0.5*n)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile
stem(n,y_3n)
hold on;
plot(t,x_3t)
hold off;
xlabel('time(n)')
title('x(-n)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nexttile
stem(n,y_4n)
hold on;
plot(t,x_4t)
hold off;
xlabel('time(n)')
title('x(n-2)')

