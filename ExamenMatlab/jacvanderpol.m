%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: jacobiano de la funci�n de Van der Pol.

function f=jacvanderpol(~,x,par)
    alfa = par(1);
    beta = par(2);
    
    f=[0, 1; -2*alfa*x(1)*x(2)-1, alfa*(beta-x(1)^2)];
end