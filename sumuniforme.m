%{
Integrantes:
    Hugo Arenas
    José Ibaceta
    Victor Huanqui
%}
function [f,c,d] = sumuniforme(n, a, b)
    f= zeros(1,1000);
    vector=zeros(1,1000);
    f=f+1/(b-a);
    vector=vector+1/(b-a);
    for j=1:(n-1)
        f=conv(f,vector,'full');
    end
    c=0;
    d=0;
    if (n==2 || n==8 || n==16 || n==32)
       plot(f); 
    end
end
