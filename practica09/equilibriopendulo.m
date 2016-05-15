%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 9 (funcpendulo de mispracticas.m).

% Comprobar equilibrio, M = g/l = 9.8, x0=[pi/2;0].
% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 de la normal y la linealizada para beta=0,1/2.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

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
disp('Péndulo con Runge-Kutta de orden 4, M= 9.8 y beta=1/2.');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 
disp('Péndulo linealizado con Runge-Kutta de orden 4 y beta=1/2.');
fun=@funcpendulolin;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

par(1)=9.7;
disp('Péndulo con Runge-Kutta de orden 4, M= 9.7 y beta=1/2.');
fun=@funcpendulo;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 

par(1)=9.9;
disp('Péndulo con Runge-Kutta de orden 4, M= 9.9 y beta=1/2.');
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
misgraficas
pause(3); 