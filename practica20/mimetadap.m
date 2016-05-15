%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 20.

%Teoría a partir de la página 163. 
%TOL es la tolerancia. fac es el factor de seguridad, facmax para evitar 
%cambios de paso bruscos. Para el nuevo paso, hmin es el paso mínimo y 
%hmax el máximo. El paso inicial es h0. El metodo monopaso que utilizamos
%es met y ord es el orden de dicho método (para asuntos del paso).

function [t,u,hvalues] = mimetadap(func,tinic,tfin,cinit,N,TOL,fac,facmax,hmin,hmax,h0,met,ord,par)    
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
    
    n=1;
    while(t(n) < tfin)
        [~, y] = met(func,[t(n),t(n)+h],u(:,n),2,par); %Ojo: N=2 
        [~, z] = met(func,[t(n),t(n)+h],u(:,n),1,par); %Ojo: N=1 
        %Error local relativo:
        ERR = norm(y(:,3)-z(:,2))/h;    
        %Chequeamos si estamos dentro de la tolerancia o no:
        if (abs(ERR) <= TOL)
            u(:,n+1)=y(:,3);
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
         end
        %Calculamos el siguiente valor para el paso, teniendo en cuenta fac y facmax:
        h = min([hmax,h*facmax,h*fac*(TOL/ERR)^(1/ord)]); 
    end
    
    %Y solo devolvemos los valores calculados:
    t = t(:,1:n);
    u = u(:,1:n);
    hvalues = hvalues(:,1:n);
    
end