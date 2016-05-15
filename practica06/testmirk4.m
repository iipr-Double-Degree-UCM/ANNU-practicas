%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 6 (funccorazon, funcvanderpol, funci�n escalar de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas 
par = 0;
[t,u]=mirk4(fun,[tinic,tfin],x0,N,par); 
%El ultimo argumento es para par�metros y se usa en pr�cticas posteriores
misgraficas