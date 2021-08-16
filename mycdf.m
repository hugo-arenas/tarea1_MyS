function [x,F] = mycdf(distname,a,b,mean,sigma)
    f = 0;
    x = zeros(1,1000);
    F = zeros(1,1000);
    if distname == "Normal" || distname == "normal" || distname == "N" || distname == "n"
        distname = "Normal";
        f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
        for i=1:1000
            x(i)= random('Normal',a,b);
            x=sort(x);
            F(i)=integral(f, - inf , x(i));
        end
    elseif  (distname == "Uniform" || distname == "uniform" || distname == "U" || distname == "u" || distname == "uniforme" || distname == "Uniforme")
        distname = "Uniform";
        f = @(x) 1/(b - a);
        for i=1:1000
            x(i)= random('uniform',a,b);
            x=sort(x);
            F(i)=integral(f, a, x(i));
        end
    else
        distname = "Normal";
        f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
        for i=1:1000
            x(i)= random('Normal',a,b);
            x=sort(x);
            F(i)=integral(f, - inf , x(i));
        end
end
    


%f_derivada = polyder(funcion);

%f_x0 = polyval(funcion, x0);

%f_derivada_x0 = polyval(f_derivada, x0);

%i = 0;

%while abs(f_x0) > error && i < iMax
%    x0_n = x0 - f_x0/f_derivada_x0;
%    f_x0 = polyval(funcion, x0_n);
%    f_derivada_x0 = polyval(f_derivada, x0_n);
%    x0 = x0_n;
%    i = i + 1;
%end

%fprintf('\n--- Algoritmo Newton Rahpson Iterativo ---\nIteraciones = %d\nError = %d\n', i, abs(f_x0));
%raiz = x0;


    

    

