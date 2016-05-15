%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 6.

function [t,u] = mirk4(func,range,cinit,N,par)
    tinic=range(1);
    tfin=range(2);
    h=(tfin-tinic)/N;
    t=tinic:h:tfin;
    %En principio, cinit es un vector columna y t es un vector fila
    u=zeros(size(cinit,1), size(t,2));
    u(:,1)=cinit';
    a = [0,0,0,0; ...
         1/2,0,0,0; ...
         0,1/2,0,0; ...
         0,0,1,0];
    b = [1/6,2/6,2/6,1/6];
    c = [0,1/2,1/2,1];
    K = zeros(4,length(cinit));
    
    for n=1:N
       for j=1:4
            K(j,:) =  func(t(:,n)+h*c(j),u(:,n)+h*(a(j,:)*K)', par);
       end
       u(:,n+1) = u(:,n)+h*(b*K)';
    end
end