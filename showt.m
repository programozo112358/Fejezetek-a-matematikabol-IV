%Cauchy folyamat ha d=1, egy ugrás dönti el mi történik 
n = 1000;m = 100;
d=3;
a = trnd(d,n,m);
plot(cumsum(a));
shg;