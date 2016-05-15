%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 11 (funcvanderpol de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 y mitrap de funcvanderpol para alfa=30, beta=1.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
alfa = 30;
beta = 1;
par(1) = alfa;
par(2) = beta;
mispracticas

disp('Ecuaci�n de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=-0.2.');
disp('Condiciones iniciales: (2, 8).');
[t,u]=mirk4(fun,[tinic,100],[2;8],4000,par); 
misgraficas
pause(1);
%___________________________________________________________%

disp(' ');
disp('Ahora igual, pero con el m�todo del trapecio.');
[t,u,numfun]=mitrap(fun,tinic,100,[2;8],4000,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);