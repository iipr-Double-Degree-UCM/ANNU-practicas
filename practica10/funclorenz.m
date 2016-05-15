%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10.

function f=funclorenz(~,xIN,par)
    sigma = par(1);
    rho = par(2);
    beta = par(3);
    x = xIN(1);
    y = xIN(2);
    z = xIN(3);
    
    f = [sigma*(y - x); rho*x - y - x*z; x*y - beta*z];
end