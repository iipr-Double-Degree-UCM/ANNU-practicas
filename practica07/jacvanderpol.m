%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 7.

function f=jacvanderpol(~,x,par)
    %En la práctica 4, es para alfa=beta=1, luego pasamos par = 0 para
    %distinguirlo de la práctica 10 donde sí se usan los parámetros.
    if par(1) == 0
        alfa = 1;
        beta = 1;
    else
        alfa = par(1);
        beta = par(2);
    end
    
    f=[0, 1; -2*alfa*x(1)*x(2)-1, alfa*(beta-x(1)^2)];
end