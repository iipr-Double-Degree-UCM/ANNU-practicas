%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 17.

function [t,u] = mieulertr(func,tinic,tfin,cinit,N,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(length(cinit), length(t));
    u(:,1)=cinit';
    
    for n=1:N
        f = func(t(n),u(:,n),par);
        u(:,n+1) = u(:,n) + h*f; %Predicci�n
        u(:,n+1) = u(:,n) + h/2*(f + func(t(n+1),u(:,n+1),par)); %Correcci�n
    end
    
end