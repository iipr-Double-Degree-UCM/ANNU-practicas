%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 26.

clear all;
clc;
mispracticas 

[t,u] = midispnolinrobin(tinic,tfin,a,b,N,Nmax,TOL,ffxfy);
%para dibujar sólo v,w (u=(v,w,z,u))
u = u(1:2,:);
misgraficas
