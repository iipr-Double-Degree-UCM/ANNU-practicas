%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 24.

function f = funcdisplin2(t,x,par)
    %Aqu� par es una lista con las funciones p, q, r (no un vector)
    p = par{1};
    q = par{2};
    
    f = [x(2); p(t)*x(2) + q(t)*x(1)];
end