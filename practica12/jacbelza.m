%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 12.

function f = jacbelza(~,x,par)
    alfa = par(1);
    beta = par(2);
    gamma = par(3);
    delta = par(4);
%     f = [alfa*(x(2)-x(1)*x(2)+x(1)-beta*x(1)^2);
%          1/alfa*(gamma*x(3)-x(2)-x(1)*x(2));
%          delta*(x(1)-x(3))];
    f = [alfa*(-x(2)+1-2*beta*x(1)), alfa*(1-x(1)), 0;
         -1/alfa*x(2), -1/alfa*(1+x(1)), (1/alfa)*gamma;
         delta, 0, -delta];
end
