%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 3.
%Para resolver esta recurrencia, utilizamos la ecuaci�n caracter�stica:
%x(n+2)=Ax(n+1)+Bx(n), con A=4, B=-3 => r^2=Ar+B => Soluciones 1 y 3.
%Por tanto la soluci�n tiene la forma alfa+beta*3^n
%Los valores alfa y beta se pueden calcular en funci�n de las c.i.:
%alfa=(x1-x0)/2 ; beta=(3*x0-x1)/2

function x = funcecdif(x0,x1,N)

    x=zeros(N,1);
    x(1)=x0;
    x(2)=x1;
    for n=1:N-2
        x(n+2)=4*x(n+1)-3*x(n);
    end
    plot(1:N,x);

end