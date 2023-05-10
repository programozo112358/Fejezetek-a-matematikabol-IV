function Z = stint(X,Y)
%Sztochasztikus integrál
%Befektetés: X darabot Y árfolyamon
dY = diff(Y); %Az árfolyam megváltozása 1 periódus alatt 
X(end,:)=[]; %Ito integrál, mindig előbb kell megmondani a darabot mint az új árfolyam
Z = cumsum(X.*dY); %Kumulált változás, nyereség vagy veszteség
Z = [zeros(1,size(Z,2));Z];
end