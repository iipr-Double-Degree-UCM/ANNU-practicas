%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 17.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mieulertr.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas 

mispracticas 
[t,u]=mieulertr(fun,tinic,tfin,x0,N,par); 
misgraficas