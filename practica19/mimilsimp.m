%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 19.

function [t,u] = mimilsimp(func,tinic,tfin,cinit,N,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(length(cinit), length(t));
    %Inicializamos con RK4:
    [~,u] = mirk4(func,[t(1),t(4)],cinit,3,par); %Ojo: N=3 
    % cache para la f
    f=zeros(size(cinit,1),N+1);
    %Inicializamos los 3 primeros valores:
    for n=1:3
        f(:,n) = func(t(n),u(:,n),par);
    end
    
    for n=4:N
        f(:,n) = func(t(n),u(:,n),par);
        u(:,n+1)=u(:,n-3) + 4*h/3*(2*f(:,n) - ...
            f(:,n-1) + 2*f(:,n-2)); %Predicción
        u(:,n+1)=u(:,n-1) + h/3*(f(:,n-1) + ...
            4*f(:,n) + func(t(n+1),u(:,n+1),par)); %Corrección
    end
    
end