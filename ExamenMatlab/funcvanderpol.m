%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: funci�n de Van der Pol.

function f = funcvanderpol(~, x,par)
    alfa = par(1);
    beta = par(2);
    
    f=[x(2); alfa*(beta-x(1)^2)*x(2)-x(1)];
end