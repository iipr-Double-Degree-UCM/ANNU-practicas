%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 7 (funccorazon, funcvanderpol, función escalar de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mitrap.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
mispracticas
par = 0;
%par es para parámetros y se usa en prácticas posteriores
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,N,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);