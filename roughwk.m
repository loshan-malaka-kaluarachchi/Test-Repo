
%{
b is the final time
a is the initial time
Fs is the sampling frequency
f is the frequency of a sine wave
 %}
b = 1;
a = 0;
Fs = 20;
f = 5;
%{
N is the number of samples
t1 is the time 
 %}
N = (b - a)*Fs + 1;
t1 = linspace(a,b,N);
%{
w is the angular frequency of the sine signal
y is the the sine signal 
 %}
w = 2*pi*f;
y = sin(w.*t1);
%{
This section is for continuous signal as a reference
number of samples are higher to smooth the reference signal
 %}
x = linspace(a,b,100*N);
y_ref = sin(w.*x);
%{
Graphs of y //red// and yref //black// for comparison
xrange 0->1
yrange -2->2
%}
stem(t1,y,'ok','MarkerFaceColor','k','LineWidth',1.5)
hold on;
plot(x,y_ref,'r','LineWidth',1)
hold off;
axis([0 1 -2 2])


