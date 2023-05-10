function Z = stintegral(X,Y)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
dY = diff(Y);
X(1,:)=[];
Z = [zeros(1,size(X,2));cumsum(X.*dY)];
end