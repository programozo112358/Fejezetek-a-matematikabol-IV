n = 1000;m = 5000;
[w,t]=wiener(n,m);
a = stint(w,w);
subplot(2,1,1); %oszd fel a plotot úgy, hogy 2 sor 1 oszlop legyen és ez legyen az első
plot(t,a);
hold on;
plot(t,zeros(size(t)),'g','LineWidth',3)
plot(t,mean(a,2),'r','LineWidth',3);
hold off;
subplot(2,1,2);
b = 0.5*w.^2;
plot(t,b);
hold on;
plot(t,zeros(size(t)),'g','LineWidth',3)
plot(t,mean(b,2),'r','LineWidth',3);
hold off;
shg;