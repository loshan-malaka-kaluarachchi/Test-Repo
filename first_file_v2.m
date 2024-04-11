% printing sys G and H in one plot


num1 = 100; den1 = [1 10 100];

num2 = 120; den2 = [1 14 100];
                
G = tf(num1,den1); H = tf(num2,den2);


step(G,H)
title('Title')
xlabel('xlabel')
ylabel('ylabel')
axis([0 6 0 10])
