%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10 (funcduffing de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de funcduffing para distintos parámetros y c.i.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
alfa = 0;
par = alfa;
mispracticas

disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (1,2).');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (0.1,0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (5,20).');
[t,u]=mirk4(fun,[tinic,tfin],[5;20],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%

par = 1; %alfa
disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (1,2).');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (0.1,0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
disp('Ecuación de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (5,20).');
[t,u]=mirk4(fun,[tinic,tfin],[5;20],N,par); 
misgraficas