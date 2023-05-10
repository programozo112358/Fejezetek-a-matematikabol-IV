n = 50;m = 1;
[w,t] = wiener(n,m);
plot(t,w);
hold on
plot(t,3*sqrt(t),'r','LineWidth',3);
plot(t,-3*sqrt(t),'r','LineWidth',3);
plot(t,zeros(size(t)),'b','LineWidth',3);
hold off
shg;