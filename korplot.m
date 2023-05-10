%pi értékét szimuláljuk 
tic;
N = 1000000;
m = 1000;
pikoz = zeros(N/m,1);
for n = m:m:N
    a = rand(n,2); %kétdimenziós véletlen vektor egyenletes eloszlásból
    d = a(:,1).^2+a(:,2).^2<1; %logikai feltétel
    a=a(d,:);
    pikoz(n/m) = 4*size(a,1)/n;
end
plot(pikoz);
hold on
plot(pi*ones(size(pikoz)),'r','LineWidth',3);
hold off
shg
toc