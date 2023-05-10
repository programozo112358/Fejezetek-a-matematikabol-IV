function [w,t] = wiener(n,m)
%Wiener-folyamatot előállító függvény
% n: osztópontok száma, m: trajektóriák száma
% A folyamat a [0,1] időszakaszon lesz definiálva 
    t = 0:1/n:1; %Vigyázat: n+1 osztópont van 
    w = [zeros(1,m);cumsum(randn(n,m))/sqrt(n)]; %Időben, oszlop szerint az utolsó elem szórása éppen egy 
end