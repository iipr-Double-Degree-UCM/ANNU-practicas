%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 5.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mieuler.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

mispracticas 
[t,u]=mieuler(fun,[tinic,tfin],x0,N,par); 
misgraficas