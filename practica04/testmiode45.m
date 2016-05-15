%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 4 (funccorazon, funcvanderpol, funci�n escalar de mispracticas.m).
% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta ode45.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
mispracticas 
par = 0;
%par es para par�metros y se usa en pr�cticas posteriores
[t,u]=ode45(fun,[tinic,tfin],x0,[],par);
u=u.'; 
misgraficas