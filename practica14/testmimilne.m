%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 14.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mimilne.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas 
par = 0; %Aquí solo probamos los de la pr4, luego no hay parámetros
[t,u]=mimilne(fun,tinic,tfin,x0,10000,par); 
misgraficas