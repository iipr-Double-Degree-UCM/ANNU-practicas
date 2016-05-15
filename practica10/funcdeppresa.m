%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10.
%Los par�mteros a, b, c, d son no negativos.

function f=funcdeppresa(~,xIN,par)
    a = par(1);
    b = par(2);
    c = par(3);
    d = par(4);
    x = xIN(1);
    y = xIN(2);
    
    f = [a*x - b*x*y; -c*y + d*x*y];
end