%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 26.

function [t,u] = midispnolin(t0,T,a,b,N,C1,C2,ffxfy,TOL,metodo)
    iteraciones = 0;
    if(metodo == 1)     %Método de Newton
        F = TOL+1; %Inicializo F con valor TOL+1 para entrar al bucle
        s = (b-a)/(T-t0);
        while abs(F) > TOL
            iteraciones=iteraciones+1;
            if(C1 == 0)
                [t,u] = mirk4(@funcdispnolin,[t0,T],[a;s;0;1],N,ffxfy);
            elseif(C1 == 1)
                [t,u] = mirk4(@funcdispnolin,[t0,T],[s;a;1;0],N,ffxfy);
            else
                disp('Condición C1 erronea.')
                t = 0; 
                u = 0;
                return;
            end 
            if(C2 == 0)
                F = u(1,N+1) - b;
                s = s - F/u(3,N+1);
            elseif(C2 == 1)
                F = u(2,N+1) - b;
                s = s - F/u(4,N+1);
            else
                disp('Condición C2 erronea.')
                t = 0; 
                u = 0;
            end
        end
    
    elseif(metodo == 2) %Método de la secante
        snmenos1 = (b-a)/(T-t0);
        %Esta primera iteración solo es para inicializar sn:
        if(C1 == 0)
            [t,u] = mirk4(@funcdispnolin,[t0,T],[a;snmenos1;0;1],N,ffxfy);
        elseif(C1 == 1)
            [t,u] = mirk4(@funcdispnolin,[t0,T],[snmenos1;a;1;0],N,ffxfy);
        else
            disp('Condición C1 erronea.')
            t = 0; 
            u = 0;
            return;
        end
        %Inicializamos sn:
        if(C2 == 0)
            sn = snmenos1 + (b-u(1,N+1))/(T-t0);
        elseif(C2 == 1)
            sn = snmenos1 + (b-u(2,N+1))/(T-t0);
        else
            disp('Condición C2 erronea.')
            t = 0; 
            u = 0;
            return;
        end
        saux = 0;
        %Esto es para inicializar Fnmenos1:
        if(C2 == 0)
            Fnmenos1 = u(1,N+1) - b;
        else %Aquí seguro que C2 es 1
            Fnmenos1 = u(2,N+1) - b;
        end
        Fn = TOL+1; %Inicializo F con valor TOL+1 para entrar al bucle
        while abs(Fn) > TOL            
            iteraciones=iteraciones+1;
            if(C1 == 0)
                [t,u] = mirk4(@funcdispnolin,[t0,T],[a;sn;0;1],N,ffxfy);
            else %Aquí seguro que C1 es 1
                [t,u] = mirk4(@funcdispnolin,[t0,T],[sn;a;1;0],N,ffxfy);
            end
            if(C2 == 0)
                Fn = u(1,N+1) - b;
            else %Aquí seguro que C2 es 1
                Fn = u(2,N+1) - b;
            end
            saux = sn;
            sn = sn - Fn/(Fn-Fnmenos1)*(sn-snmenos1);
            Fnmenos1 = Fn;
            snmenos1 = saux;
        end
        
    else
        disp('El valor de entrada "metodo" no es correcto.')
        t = 0; 
        u = 0; 
    end
    
    %Sólo devolvemos las dos primeras filas
    u=u(1:2,:);
    disp(['El número de iteraciones con el método ', num2str(metodo), ...
        ' ha sido ', num2str(iteraciones)]);
    
end