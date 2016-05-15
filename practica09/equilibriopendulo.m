%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 9 (funcpendulo de mispracticas.m).

% Comprobar equilibrio, M = g/l = 9.8, x0=[pi/2;0].
% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 de la normal y la linealizada para beta=0,1/2.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
M = 9.8;
beta = 1/2;
g = 9.8;
l = 1;
par = zeros(4);
par(1)= M;
par(2)= beta;
par(3)= g;
par(4)= l;

mispracticas
x0=[pi/2;0];
disp('P�ndulo con Runge-Kutta de orden 4, M= 9.8 y beta=1/2.');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 
disp('P�ndulo linealizado con Runge-Kutta de orden 4 y beta=1/2.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

par(1)=9.7;
disp('P�ndulo con Runge-Kutta de orden 4, M= 9.7 y beta=1/2.');
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

par(1)=9.9;
disp('P�ndulo con Runge-Kutta de orden 4, M= 9.9 y beta=1/2.');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 