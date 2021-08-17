%{
Integrantes:
    Hugo Arenas
    José Ibaceta
    Victor Huanqui
%}
% Función simulador de la CDF
function [x,F] = mycdf(distname, a, b, mean, sigma)
    % se definen los vectores 
    x = zeros(1,1000);
    F = zeros(1,1000);
    
    if distname == "Normal" || distname == "normal" || distname == "N" || distname == "n"
        % Se obtienen valores aleatorios para la distribución normal
        for i = 1 : 1000
            x(i) = random('Normal', a, b); 
        end        
        x = sort(x);
        
        % se define la función densidad (PDF)
        f = @(x)(exp((-((x - mean)/sigma).^2)/2))/(sigma*(2*pi)^(1/2));
        
        % se obtiene la CDF
        for i = 1 : 1000
            F(i) = integral(f, -inf , x(i));
        end
    elseif distname == "Uniform" || distname == "uniform" || distname == "U" || distname == "u" || distname == "uniforme" || distname == "Uniforme"
        % Se obtienen valores aleatorios para la distribución uniforme
        for i=1:1000
            x(i)= random('uniform', a, b);
        end
        x=sort(x);
        
        % se obtiene la CDF
        for i = 1 : 1000
            F(i) = (x(i)-a)/(b-a);
        end
    else
        disp("Incorrect distname")
    end
    % Graficando la CDF
    figure(1);
    plot(x, F);
    title ('Gráfico F(x)');
end

