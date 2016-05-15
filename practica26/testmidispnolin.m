%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 26.

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta midispnolin (m�todo 1-> Newton, m�todo 2->Secante).
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas
%Para el m�todo de Newton, poner un 1 en el �ltimo par�metro de entrada:
[t,u]=midispnolin(tinic,tfin,a,b,N,C1,C2,ffxfy,TOL,2);
misgraficas

% clear all;
% clc;
% mispracticas
% %Para el m�todo de la secante, poner un 2 en el �ltimo par�metro de entrada:
% [t,u]=midispnolin(tinic,tfin,a,b,N,C1,C2,ffxfy,TOL,2);
% misgraficas