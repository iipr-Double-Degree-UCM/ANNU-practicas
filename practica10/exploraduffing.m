%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10 (funcduffing de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 de funcduffing para distintos par�metros y c.i.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
alfa = 0;
par = alfa;
mispracticas

disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (1,2).');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (0.1,0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (5,20).');
[t,u]=mirk4(fun,[tinic,tfin],[5;20],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%

par = 1; %alfa
disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (1,2).');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (0.1,0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
disp('Ecuaci�n de Duffing con Runge-Kutta de orden 4 y alfa=0.');
disp('Condiciones iniciales: (5,20).');
[t,u]=mirk4(fun,[tinic,tfin],[5;20],N,par); 
misgraficas