%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: función de Van der Pol.

function f = funcvanderpol(~, x,par)
    alfa = par(1);
    beta = par(2);
    
    f=[x(2); alfa*(beta-x(1)^2)*x(2)-x(1)];
end