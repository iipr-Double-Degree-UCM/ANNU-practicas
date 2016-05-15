%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10 (funcvanderpol de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de funcvanderpol para distintos parámetros y c.i.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
alfa = 1;
beta = -0.2;
par(1) = alfa;
par(2) = beta;
mispracticas

disp('Ecuación de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=-0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
par(2) = 0; %beta
disp('Ecuación de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=0.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
par(2) = 0.2; %beta
disp('Ecuación de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%
par(2) = 1; %beta
disp('Ecuación de Van der Pol con Runge-Kutta de orden 4 y alfa=1:0.2:10, beta=1.');
disp('Condiciones iniciales: (0.1, 0.2).');
for alfa=1:0.2:10
    par(1) = alfa;
    [t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
    misgraficasquick
end