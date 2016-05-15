%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 5.

function [t,u] = mieuler(func,range,cinit,N,par)
    tinic=range(1);
    tfin=range(2);
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(size(cinit,1), size(t,2));
    u(:,1)=cinit';
    
    for n=1:N
       u(:,n+1) = u(:,n) + h*func(t(n),u(:,n),par);
    end
    
end