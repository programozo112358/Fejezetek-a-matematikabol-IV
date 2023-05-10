%Lévi folyamatok típusai: Wiener folyamat és t folyamat(ezen belül Cauchy)
n = 1000;m = 10000;
d = 4; %növekmények definiálása 
a = trnd(d,n,m);  %ebben különböznek az egyes típusok
plot(cumsum(a));
shg;