%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 24. Con condiciones de Robin:

%a(1)*x(t0)  + a(2)*x'(t0)  = a(3)
%b(1)*x(tfin)+ b(2)*x'(tfin)= b(3)

%Con el método de Newton.

function [t,u] = midispnolinrobin(tinic,tfin,a,b,N,Nmax,TOL,ffxfy)
    s = (b(3)-a(3))/(tfin-tinic);
    
    for i = 1 : Nmax
        if(a(2) == 0)
        	x0 = [a(3)/a(1); s; 0; 1];
        elseif(a(1) == 0)
        	x0 = [s; a(3)/a(2); 1; 0]; %Estaba 0, 1
        else
            x0 = [(a(3)-s*a(2))/a(1); s; 0; 1];
        end
        %u es de la forma: u=(v,w,z,u)'
        [t,u]=mirk4(@funcdispnolin,[tinic,tfin],x0,N,ffxfy);
        %La diferencia entre el valor esperado 'b' y el valor real de u(T):
        F = b(1)*u(1,N+1)+b(2)*u(2,N+1)-b(3);
        if abs(F) < TOL 
        	return; 
        end
        
        s = s - F/(b(1)*u(3,N+1)+b(2)*u(4,N+1));
    end
    
end