%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 14.

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mimilne.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas 
par = 0; %Aqu� solo probamos los de la pr4, luego no hay par�metros
[t,u]=mimilne(fun,tinic,tfin,x0,10000,par); 
misgraficas