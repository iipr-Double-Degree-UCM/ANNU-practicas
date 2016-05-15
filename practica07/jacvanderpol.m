%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 7.

function f=jacvanderpol(~,x,par)
    %En la pr�ctica 4, es para alfa=beta=1, luego pasamos par = 0 para
    %distinguirlo de la pr�ctica 10 donde s� se usan los par�metros.
    if par(1) == 0
        alfa = 1;
        beta = 1;
    else
        alfa = par(1);
        beta = par(2);
    end
    
    f=[0, 1; -2*alfa*x(1)*x(2)-1, alfa*(beta-x(1)^2)];
end