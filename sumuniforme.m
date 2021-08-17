%{
Integrantes:
    Hugo Arenas
    José Ibaceta
    Victor Huanqui
%}
% Función suma uniforme
function [f, c, d] = sumuniforme(n, a, b)
    % se definen los vectores
    f = zeros(1, 1000);
    vector = zeros(1, 1000);
    
    % se crean las distribuciones uniformes
    f = f + 1/(b-a);
    vector = vector + 1/(b-a);
    
    % se convolucionan las distribuciones
    for j = 1 : (n-1)
        f = conv(f, vector, 'full');
    end
    
    % definiendo rango de la convolución
    c = min(f);
    d = max(f);
    
    if ( n == 2 || n == 8 || n == 16 || n == 32)
        % mostrando gráfico de aproximación 
        figure(1);
        plot(f);
        title(['Aproximación para N = ' num2str(n)]);
    end
end
