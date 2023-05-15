function K = kvar1(X,alpha)
%Alpha variáció készítése
K = [zeros(1,size(X,2));cumsum(abs(diff(X)).^alpha)];
end