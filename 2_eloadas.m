%pi értékét szimuláljuk 
tic;
N = 1000000;
m = 1000;
pikoz = zeros(N/m,1);
for n=m:m:N
    a = rand(n,2); %kétdimenziós véletlen vektor egyenletes eloszlás
    d = a(:,1).^2
end
toc;