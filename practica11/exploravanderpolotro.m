%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 11 (funcvanderpol de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 y mitrap de funcvanderpol para alfa=30, beta=1.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
alfa = 30;
beta = 1;
par(1) = alfa;
par(2) = beta;
mispracticas

disp('Ecuación de Van der Pol con Runge-Kutta de orden 4 y alfa=1, beta=-0.2.');
disp('Condiciones iniciales: (2, 8).');
[t,u]=mirk4(fun,[tinic,100],[2;8],4000,par); 
misgraficas
pause(1);
%___________________________________________________________%

disp(' ');
disp('Ahora igual, pero con el método del trapecio.');
[t,u,numfun]=mitrap(fun,tinic,100,[2;8],4000,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);