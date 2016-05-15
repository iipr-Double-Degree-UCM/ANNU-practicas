%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 21.

%Teoría a partir de la página 165. 
%TOL es la tolerancia. fac es el factor de seguridad, facmax para evitar 
%cambios de paso bruscos. Para el nuevo paso, hmin es el paso mínimo y 
%hmax el máximo. El paso inicial es h0.

function [t,u,hvalues] = mirkf45(func,tinic,tfin,cinit,N,TOL,fac,facmax,hmin,hmax,h0,par)
    %Inicializamos t con tinic en t(1):
    t=zeros(1, N+1);
    t(1)=tinic;
    h = h0;
    %Inicializamos hvalues con h0 en hvalues(1):
    hvalues=zeros(1, N+1);
    hvalues(1)=h0;
    %En principio, cinit es un vector columna y t es un vector fila:
    u=zeros(length(cinit), N+1);
    u(:,1)=cinit';
    
    %Matrices para el método:
    a = [0,          0,          0,           0,          0,      0; ...
         1/4,        0,          0,           0,          0,      0; ...
         3/32,       9/32,       0,           0,          0,      0; ...
         1932/2197,  -7200/2197, 7296/2197,   0,          0,      0; ...
         439/216,    -8,         3680/513,    -845/4104,  0,      0; ...
         -8/27,      2,          -3544/2565,  1859/4104,  -11/40, 0];
    c = [0, 1/4, 3/8, 12/13, 1, 1/2];
    b = [25/216,0,1408/2565,2197/4104,-1/5,0];
    bgorro =[16/135, 0, 6656/12825, 28561/56430, -9/50, 2/55];
    K=zeros(length(cinit),6);
   
    n=1;
    while(t(n) < tfin)
        for i=1:6
            aux=zeros(length(cinit),1);
            for j=1:(i-1) 
                aux = aux + a(i,j)*K(:,j);
            end
            K(:,i) = func(t(n)+c(i)*h, u(:,n)+h*aux, par);
        end
        e1=u(:,n)+h*(b(1)*K(1)+b(3)*K(3)+b(4)*K(4)+b(5)*K(5));
        e2=u(:,n)+h*(bgorro(1)*K(1)+bgorro(3)*K(3)+bgorro(4)*K(4)+bgorro(5)*K(5)+bgorro(6)*K(6));
        %Error local relativo:
        ERR= norm(e1-e2)/h;

        %Chequeamos si estamos dentro de la tolerancia o no:
        if (abs(ERR) <= TOL)
            u(:,n+1)=e1; 
            t(n+1)=t(n)+h;
            hvalues(n+1)=h;
            n=n+1;
        end        
        
        %Chequeamos que no nos pasamos de hmin:
        if h < hmin
           %FORZAMOS el final del bucle, por ejemplo asignado t(n) a
           %tfin (ver las condiciones del bucle while):
           tfin = t(n); 
           disp('Error! h < hmin');
           disp(['Iteración número: ', num2str(n)]);
        end;
        %Calculamos el siguiente valor para el paso, teniendo en cuenta fac y facmax:
        h = min([hmax,h*facmax,h*fac*(TOL/ERR)^(1/4)]); %Ojo: orden 4
    end;
    
    %Y solo devolvemos los valores calculados:
    t = t(:,1:n-1);
    u = u(:,1:n-1);
    hvalues = hvalues(:,1:n-1);
    
end
