%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 21.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirkf45.
% (3º) Pinta las gráficas de la solución (misgraficas.m).
% (4º) Pinta la gráfica de los valores que va tomando h.

clear all;
clc;
mispracticas 

[t,u,hvalues]=mirkf45(fun,tinic,tfin,x0,N,TOL,fac,facmax,hmin,hmax,h0,par); 
misgraficas
figure(4);
plot(t,hvalues);
title('Variación del paso');
legend('h');