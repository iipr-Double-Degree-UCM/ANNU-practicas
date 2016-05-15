%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 20.

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mimetadap.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).
% (4�) Pinta la gr�fica de los valores que va tomando h.

clear all;
clc;
mispracticas 

[t,u,hvalues]=mimetadap(fun,tinic,tfin,x0,N,TOL,fac,facmax,hmin,hmax,h0,met,ord,par); 
misgraficas
figure(4);
plot(t,hvalues);
title('Variaci�n del paso');
legend('h');