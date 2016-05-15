%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 26.

function f = funcdispnolin(t,x,par)
    %Aqu� par es una lista con las funciones f, fx, fy (no un vector)
    f = par{1};
    fx = par{2};
    fy = par{3};
    
    f = [x(2); f(t,x(1),x(2)); ...
         x(4); fy(t,x(1),x(2))*x(4) + fx(t,x(1),x(2))*x(3)];
end
