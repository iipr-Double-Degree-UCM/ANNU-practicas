%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10 (funccompet de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de funccompet para distintas c.i.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
a = 1;
b = 1;
c = 1;
d = 0.2;
e = 0.4;
f = 0.0001;
par(1) = a;
par(2) = b;
par(3) = c;
par(4) = d;
par(5) = e;
par(6) = f;
mispracticas

disp('Sistema de competición con Runge-Kutta de orden 4 y a=b=c=1, d=0.2, e=0.4, f=0.0001.');
disp('Condiciones iniciales: (1, 1).');
[t,u]=mirk4(fun,[tinic,tfin],[1;1],N,par); 
misgraficas
pause(3);
disp('Sistema competición con Runge-Kutta de orden 4 y a=b=c=1, d=0.2, e=0.4, f=0.0001.');
disp('Condiciones iniciales: (2, 4).');
[t,u]=mirk4(fun,[tinic,tfin],[2;4],N,par); 
misgraficas
pause(3);
disp('Sistema competición con Runge-Kutta de orden 4 y a=b=c=1, d=0.2, e=0.4, f=0.0001.');
disp('Condiciones iniciales: (0, 10).');
[t,u]=mirk4(fun,[tinic,tfin],[0;10],N,par); 
misgraficas
disp(' ');
pause(3);