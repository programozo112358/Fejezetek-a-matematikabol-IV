%feladat: gömfelszínre egyenletes eloszlásból pontok

%gömböt csinál, a [] a konkatenáció parancsa, 100: milyen részletes
[X,Y,Z] = sphere(100);
%a surf a plotnak a 3D-s változata (ősMATLAB maradvány), kiszínezi az egyes
%lapokat
surf(X,Y,Z);
%egyes tengelyek egymáshoz viszonyított aránya
daspect([1,1,1])
%milyen legyen a színezés?
shading('interp')
colorbar
colormap("summer")
n = 1000;
a = randn(n,3); %három dimenziós normális eloszlás
h = sqrt(sum(a.^2,2)); %normalizálom vagyis minden sornak kiszámolom a hosszát 
a = a./h; 
hold on;
scatter3(a(:,1),a(:,2),a(:,3),'r','*') % három oszlopvektor mint paraméter 
hold off;
shg;

%2*3-as mátrix létrehozása
c = [1 2 3;4 5 6]

c = [1 2;3 4]

%3.előadás
n = 10000;
a = trnd(1,10000,1);
plot(cumsum(a))

