%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 26.

clear all;
clc;
mispracticas 

[t,u] = midispnolinrobin(tinic,tfin,a,b,N,Nmax,TOL,ffxfy);
%para dibujar s�lo v,w (u=(v,w,z,u))
u = u(1:2,:);
misgraficas
