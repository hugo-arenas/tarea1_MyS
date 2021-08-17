function [f,c,d] = sumuniforme(n, a, b)
f=zeros(1,n);


vac=zeros(1,n);
c=0;
d=0;
for i=1:n
    vac(i)=a + i/n *(b-a);

end