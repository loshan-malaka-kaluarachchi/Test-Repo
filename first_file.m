%comment - this is my first file
%num = 15
%den = [1 4 15]
%G = tf(num,den)
%step(G)
G = tf(100,[1 10 100])
H = tf(120,[1 14 100])

step(G,H)
%End of the .m file