%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 12.

function f = funcbelza(~,x,par)
    alfa = par(1);
    beta = par(2);
    gamma = par(3);
    delta = par(4);
    
    f = [alfa*(x(2)-x(1)*x(2)+x(1)-beta*x(1)^2);
         1/alfa*(gamma*x(3)-x(2)-x(1)*x(2));
         delta*(x(1)-x(3))];
end
