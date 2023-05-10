function Z = kvar(X)
%UNTITLED2 Summary of this function goes here
%Kvadratikus variáció számolása
dX = diff(X);
Z = [zeros(1,size(X,2));cumsum(dX.^2)];
end