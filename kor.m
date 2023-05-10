%pi értékét szimuláljuk 
isprint = false;
n = 1000000; %minta nagysága 
a = rand(n,2); %kétdimenziós véletlen vektor egyenletes eloszlásból
d = a(:,1).^2+a(:,2).^2<1; %logikai feltétel
a=a(d,:);
if isprint
    scatter(a(:,1),a(:,2),'r','.');
    hold on;
    x = 0:0.01:1;
    plot(x,sqrt(1-x.^2),'r',"LineWidth",3);
    hold off;
    shg;
end
kozpi = 4*size(a,1)/n;
abs(pi-kozpi) %közelítő pi hibája 
x = sprintf('A pi értéke %8.5f, Közelítő érték %8.5f. Hiba %8.5f',pi,kozpi,abs(pi-kozpi))


