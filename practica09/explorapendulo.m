%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 9 (funcpendulo de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 de la normal y la linealizada para beta=0,0.25,1.5.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
M = 0;
g = 9.8;
l = 1;
par = zeros(4);
par(1)= M;
par(3)= g;
par(4)= l;

mispracticas
disp('P�ndulo con Runge-Kutta de orden 4 y beta=0.');
par(2)= 0; %beta
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 
disp('P�ndulo linealizado con Runge-Kutta de orden 4 y beta=0.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

disp('P�ndulo con Runge-Kutta de orden 4 y beta=0.25.');
par(2)= 0.25; %beta
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('P�ndulo linealizado con Runge-Kutta de orden 4 y beta=0.25.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

disp('P�ndulo con Runge-Kutta de orden 4 y beta=1.5.');
par(2)= 1.5; %beta
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
disp('P�ndulo linealizado con Runge-Kutta de orden 4 y beta=1.5.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 