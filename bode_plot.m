%range of omega from 0.001 to 1000 rad/s
w = logspace(-3,3,60);
%let 'w' squared equal to 'u'
u = w.^2;

%The gain of G(jw) in decibels 
G_dB = 52.041-10.*log10((9+u).*(144+u));

%The Phase of G(jw) in degrees
Phase = (-180/pi)*(atan(w./3)+atan(w./12));

%plotting Gain and Phase 
tiledlayout(2,1);

%Gain
nexttile;
semilogx(w,G_dB)
grid minor;
title('Magnitude of G(jw)');
xlabel('angular frequency (w)');
ylabel('Magnitude');
axis([0.01 10^3 -30 30]);

%Phase
nexttile;
semilogx(w,Phase)
grid minor;
title('Phase of G(jw)');
xlabel('angular frequency(w)');
ylabel('Phase(degrees)');
axis([0.01 10^3 -180 0]);


