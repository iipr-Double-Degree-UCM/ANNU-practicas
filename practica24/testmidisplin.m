%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 24 y 25 (4 casos en mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta midisplin.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas
[t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr);
misgraficas