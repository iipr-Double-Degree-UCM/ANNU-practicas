%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 13.

function [t,u] = miab4(func,tinic,tfin,cinit,N,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    [~,u]=mirk4(func,[t(1),t(4)],cinit,3,par); %Ojo: N=3
    %Aunque calculemos todo u con mirk4, de la 5a columna en adelante se machacan:
    
    for n=4:N
       u(:,n+1) = u(:,n) + h/24*(55*func(t(n),u(:,n),par)     - 59*func(t(n-1),u(:,n-1),par) ...
                               + 37*func(t(n-2),u(:,n-2),par) -  9*func(t(n-3),u(:,n-3),par));
    end
    
end