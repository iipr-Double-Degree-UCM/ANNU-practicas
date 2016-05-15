%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: modificaci�n de mitrap.m

function [t,u,numfun] = mitrap(func,tinic,tfin,cinit,N,jac,itmax,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(length(cinit), length(t));
    u(:,1)=cinit';
    numfun=0;
    
    for n=1:N
        j = 1;
        Z=zeros(size(u,1), itmax);
        Z(:,1) = u(:,n);
        sigue = true;
        while(sigue)
            %Ver p�gs. 54-55 de la teor�a
            numfun = numfun+2; %Cada vez que pasamos por aqu� evaluamos func dos veces debido a la siguiente l�nea 
            Fn = u(:,n) + h/2*(func(t(n),u(:,n),par) + func(t(n+1),Z(:,j),par));
            Gn = Z(:,j) - Fn;
            DGn = eye(length(cinit)) - h/2*jac(t(n+1),Z(:,j),par);
            W = DGn\Gn;
            Z(:,j+1) = Z(:,j)-W;
            j = j+1;
            sigue = (norm(W,inf) >= h^3) && (j < itmax);
        end
        u(:,n+1) = Z(:,j);
    end
    
end