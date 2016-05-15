%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10 (funcdeppresa de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de funcdeppresa para distintos parámetros y c.i.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
a = 1;
b = 1;
c = 1;
d = 2;
par(1) = a;
par(2) = b;
par(3) = c;
par(4) = d;
mispracticas

disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=b=c=1, d=2.');
disp('Condiciones iniciales: (1, 1).');
[t,u]=mirk4(fun,[tinic,tfin],[1;1],N,par); 
misgraficas
pause(3);
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=b=c=1, d=2.');
disp('Condiciones iniciales: (2, 4).');
[t,u]=mirk4(fun,[tinic,tfin],[2;4],N,par); 
misgraficas
pause(3);
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=b=c=1, d=2.');
disp('Condiciones iniciales: (0, 10).');
[t,u]=mirk4(fun,[tinic,tfin],[0;10],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%
par(1) = 3;
par(2) = 0.2;
par(3) = 0.6;
par(4) = 5;
tfin = 20; %--------------------OJO: Cambio el tfin para estas c.i.--------------------
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=3, b=0.2, c=0.6, d=5.');
disp('Condiciones iniciales: (1, 1).');
[t,u]=mirk4(fun,[tinic,tfin],[1;1],N,par); 
misgraficas
pause(3);
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=3, b=0.2, c=0.6, d=5.');
disp('Condiciones iniciales: (2, 4).');
[t,u]=mirk4(fun,[tinic,tfin],[2;4],N,par); 
misgraficas
pause(3);
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=3, b=0.2, c=0.6, d=5.');
disp('Condiciones iniciales: (0, 10).');
[t,u]=mirk4(fun,[tinic,tfin],[0;10],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%
par(1) = 0.4;
par(2) = 0.01;
par(3) = 0.3;
par(4) = 0.005;
tfin = 100; %--------------------OJO: Cambio el tfin para estas c.i.--------------------
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=0.4, b=0.01, c=0.3, d=0.005.');
disp('Condiciones iniciales: (30, 50).');
[t,u]=mirk4(fun,[tinic,tfin],[30;50],N,par); 
misgraficas
pause(3);
disp('Sistema depredador-presa con Runge-Kutta de orden 4 y a=0.4, b=0.01, c=0.3, d=0.005.');
disp('Condiciones iniciales: (100, 50000).');
[t,u]=mirk4(fun,[tinic,tfin],[100;5000],N,par); 
misgraficas