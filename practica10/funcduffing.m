%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10.

function f=funcduffing(~,xIN,par)
    alfa = par;
    x = xIN(1);
    y = xIN(2);
    
    f = [y; x*(1 - x^2) - alfa*y];
end