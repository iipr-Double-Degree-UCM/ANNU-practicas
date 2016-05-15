%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10 (funcvanderpol de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 de funcvanderpol para distintos par�metros y c.i.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
alfa = 1;
beta = -0.2;
par(1) = alfa;
par(2) = beta;
mispracticas

disp('Ecuaci�n de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=-0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
par(2) = 0; %beta
disp('Ecuaci�n de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=0.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
pause(3);
par(2) = 0.2; %beta
disp('Ecuaci�n de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
misgraficas
disp(' ');
pause(3);
%___________________________________________________________%
par(2) = 1; %beta
disp('Ecuaci�n de Van der Pol con Runge-Kutta de orden 4 y alfa=1:0.2:10, beta=1.');
disp('Condiciones iniciales: (0.1, 0.2).');
for alfa=1:0.2:10
    par(1) = alfa;
    [t,u]=mirk4(fun,[tinic,tfin],[0.1;0.2],N,par); 
    misgraficasquick
end