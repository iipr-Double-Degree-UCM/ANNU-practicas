%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 17.

function [t,u] = mieulertr(func,tinic,tfin,cinit,N,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(length(cinit), length(t));
    u(:,1)=cinit';
    
    for n=1:N
        f = func(t(n),u(:,n),par);
        u(:,n+1) = u(:,n) + h*f; %Predicción
        u(:,n+1) = u(:,n) + h/2*(f + func(t(n+1),u(:,n+1),par)); %Corrección
    end
    
end