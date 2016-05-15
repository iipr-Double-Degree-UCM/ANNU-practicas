%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 17.

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mieulertr.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas 

mispracticas 
[t,u]=mieulertr(fun,tinic,tfin,x0,N,par); 
misgraficas