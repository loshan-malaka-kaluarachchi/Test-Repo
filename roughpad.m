%defining values for n
n = linspace(0,4*pi,20);
%functions in terms of n
y_n = sin(n);
f = sin(0.1*n);

%plotting the above functions in the same figure
hold on;
stem(n,f)
stem(n,y_n)
%x and y ranges for the plot 
axis([0 4*pi -2 2])
xlabel('n')
ylabel('f(n)')
hold off;



