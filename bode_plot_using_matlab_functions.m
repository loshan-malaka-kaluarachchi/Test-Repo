
s = tf('s');
G = zpk(400/((s+3)*(s+12)))
bodeplot(G,{0.001,1000})
grid minor;
