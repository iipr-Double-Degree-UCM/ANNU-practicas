%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 6 (funccorazon, funcvanderpol, función escalar de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas 
par = 0;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
%El ultimo argumento es para parámetros y se usa en prácticas posteriores
misgraficas