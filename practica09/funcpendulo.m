%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 9.
%M: masa que pende
%l: longitud del p�ndulo
%g: gravedad

function f=funcpendulo(~,x,par)
    M = par(1);
    beta = par(2);
    g = par(3); 
    l = par(4);
    
    
    f=[x(2); M-2*beta*x(2)-g/l*sin(x(1))];
end