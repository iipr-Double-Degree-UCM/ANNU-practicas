%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 12 (funclorenz de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mitrap de funcbelza para ciertos par�metros y c.i.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
alfa = 2*10^4;
beta = 8*10^(-4);
gamma = 5000;
delta = 0.75;
par(1) = alfa;
par(2) = beta;
par(3) = gamma;
par(4) = delta;
mispracticas

disp('Ecuaci�n de de Belousov-Zhabotinsky con trapecio y alpha=2*10^4, beta= 8*10^(-4), gamma = 5000, delta = 0.75.');
disp('Condiciones iniciales: (0.25,0.75,0.25).');
for r=10:5:500
    N = r;
    [t,u,numfun]=mitrap(fun,tinic,1,x0,100,jac,itmax,par); 
    misgraficasquick
    disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);
end
disp(' ');