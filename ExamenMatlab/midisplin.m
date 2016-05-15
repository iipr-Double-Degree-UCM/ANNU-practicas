%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 24. Disparo lineal.

%En funci�n de los valores C1 y C2 se toman unas u otras condiciones de contorno.

function [t,u] = midisplin(t0,T,a,b,N,C1,C2,pqr)
    C=[C1,C2];
    
    if(isequal(C, [0,0]))     %Condiciones de contorno tipo Dirichlet
        [t,v1] = mirk4(@funcdisplin1,[t0,T],[a;0],N,pqr);
        [t,v2] = mirk4(@funcdisplin2,[t0,T],[0;1],N,pqr);
        if(v2(1, N+1) ~= 0)
            s = (b-v1(1,N+1))/v2(1,N+1);
            u = v1 + s*v2; 
        else 
            if (v1(1,N+1) == b) 
                u = v1;
                disp('Tiene infinitas soluciones, lo hacemos para s=0.');
            else
                error('No existe soluci�n.');
            end
        end
            
    elseif(isequal(C, [0,1])) %Mezcla tipo Dirichlet-Neumann
        [t,v1] = mirk4(@funcdisplin1,[t0,T],[a;0],N,pqr);
        [t,v2] = mirk4(@funcdisplin2,[t0,T],[0;1],N,pqr);
        if (v2(2, N+1) ~= 0)
            s = (b-v1(2,N+1))/v2(2,N+1);
            u = v1+s*v2; 
        else 
            if (v1(2,N+1) == b) 
                u = v1;
                disp('Tiene infinitas soluciones, lo hacemos para s=0.');
            else
                error('No existe soluci�n.');
            end
        end
            
    elseif(isequal(C, [1,0])) %Mezcla tipo Neumann-Dirichlet
        [t,v1] = mirk4(@funcdisplin1,[t0,T],[0;a],N,pqr);
        [t,v2] = mirk4(@funcdisplin2,[t0,T],[1;0],N,pqr);
        if (v2(1, N+1) ~= 0)
            s = (b-v1(1,N+1))/v2(1,N+1);
            u = v1+s*v2; 
        else 
            if (v1(1,N+1) == b) 
                u = v1;
                disp('Tiene infinitas soluciones, lo hacemos para s=0.');
            else
                error('No existe soluci�n.');
            end
        end
            
    elseif(isequal(C, [1,1])) %Condiciones de contorno tipo Neumann
        [t,v1] = mirk4(@funcdisplin1,[t0,T],[0;a],N,pqr);
        [t,v2] = mirk4(@funcdisplin2,[t0,T],[1;0],N,pqr);
        if (v2(2, N+1) ~= 0)
            s = (b-v1(2,N+1))/v2(2,N+1);
            u = v1+s*v2; 
        else 
            if (v1(2,N+1) == b) 
                u = v1;
                disp('Tiene infinitas soluciones, lo hacemos para s=0.');
            else
                error('No existe soluci�n.');
            end
        end
            
    else
        disp('Condiciones C1, C2 erroneas.')
        t = 0; 
        u = 0;
    end

end