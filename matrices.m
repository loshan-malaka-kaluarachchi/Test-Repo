clc;clear;

form = [0 0 0 1 2 1 0 0 0];
sig = horzcat(zeros([1 length(form)-1]),form);
tilde_sig = flip(sig);
even_sig = 0.5*(sig + tilde_sig);
odd_sig = 0.5*(sig - tilde_sig);
orig_sig = even_sig + odd_sig;
n = -0.5*(length(sig)-1):0.5*(length(sig)-1);

tiledlayout(3,1)
nexttile;
stem(n,even_sig,'filled','k');
grid on;
nexttile;
stem(n,odd_sig,'filled','k');
grid on;
nexttile;
stem(n,orig_sig,'filled','k');
grid on;


