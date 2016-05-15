%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 24 y 25 (4 casos en mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta midisplin.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas
[t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr);
misgraficas