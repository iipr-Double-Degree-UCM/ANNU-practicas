%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 9 (funcpendulo de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de la normal y la linealizada para beta=0,0.25,1.5.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

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
disp('Péndulo con Runge-Kutta de orden 4 y beta=0.');
par(2)= 0; %beta
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 
disp('Péndulo linealizado con Runge-Kutta de orden 4 y beta=0.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

disp('Péndulo con Runge-Kutta de orden 4 y beta=0.25.');
par(2)= 0.25; %beta
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3);
disp('Péndulo linealizado con Runge-Kutta de orden 4 y beta=0.25.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

disp('Péndulo con Runge-Kutta de orden 4 y beta=1.5.');
par(2)= 1.5; %beta
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
disp('Péndulo linealizado con Runge-Kutta de orden 4 y beta=1.5.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 