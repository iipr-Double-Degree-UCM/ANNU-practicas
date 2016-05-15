%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 26.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta midispnolin (método 1-> Newton, método 2->Secante).
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas
%Para el método de Newton, poner un 1 en el último parámetro de entrada:
[t,u]=midispnolin(tinic,tfin,a,b,N,C1,C2,ffxfy,TOL,2);
misgraficas

% clear all;
% clc;
% mispracticas
% %Para el método de la secante, poner un 2 en el último parámetro de entrada:
% [t,u]=midispnolin(tinic,tfin,a,b,N,C1,C2,ffxfy,TOL,2);
% misgraficas