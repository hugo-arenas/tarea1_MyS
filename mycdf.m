function [x,F] = mycdf(distname,a,b,mean,sigma)
f = 0;
if distame == "Normal" || distame == "normal" || distame == "N" || distname == "n"
    distname = "Normal";
    f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
elseif  (distame == "Uniform" || distame == "uniform" || distame == "U" || distname == "u" || distname == "uniforme" || distname == "Uniforme")
    distname = "Uniform";
    f = @(x) 1/(b - a);
else
    distname = "Normal";
    f = @(x) (exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
x = [];
F = [];
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


    

    

