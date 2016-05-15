%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 18.

function [t,u] = miab4am3(func,tinic,tfin,cinit,N,par)
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(length(cinit), length(t));
    %Inicializamos con RK4:
    [~,u] = mirk4(func,[t(1),t(4)],cinit,3,par); %Ojo: N=3   
    f=zeros(length(cinit), length(t));
    %Inicializamos los 3 primeros valores:
    for n=1:3
        f(:,n) = func(t(n),u(:,n),par);
    end
    
    for n=4:N
        f(:,n) = func(t(n),u(:,n),par);
        u(:,n+1) = u(:,n) + h/24*(55*f(:,n)-59*f(:,n-1) + ...
            37*f(:,n-2)-9*f(:,n-3)); %Predicción
        u(:,n+1) = u(:,n)+h/24*(9*func(t(n),u(:,n+1), par) + ...
            19*f(:,n)-5*f(:,n-1)+f(:,n-2)); %Corrección
    end

end
