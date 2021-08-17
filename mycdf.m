%{
Integrantes:
    Hugo Arenas
    José Ibaceta
    Victor Huanqui
%}
function [x,F] = mycdf(distname,a,b,mean,sigma)
    f = 0;
    x = zeros(1,1000);
    F = zeros(1,1000);
    if distname == "Normal" || distname == "normal" || distname == "N" || distname == "n"
        distname = "Normal";
        for i=1:1000
            x(i)= random('Normal',a,b);
        end
        x=sort(x);
        f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
        for i=1:1000
            F(i)=integral(f, - inf , x(i));
        end
    elseif  (distname == "Uniform" || distname == "uniform" || distname == "U" || distname == "u" || distname == "uniforme" || distname == "Uniforme")
        distname = "Uniform";
        f = @(x) 1/(b - a);
        for i=1:1000
            x(i)= random('uniform',a,b);
        end
        x=sort(x);
        for i=1:1000
            F(i)=(x(i)-a)/(b-a);
        end
    else
        distname = "Normal";
        for i=1:1000
            x(i)= random('Normal',a,b);
        end
        x=sort(x);
        f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
        for i=1:1000
            F(i)=integral(f, - inf , x(i));
        end
end

