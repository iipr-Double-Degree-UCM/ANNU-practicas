%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 12 (funclorenz de mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta mitrap de funcbelza para ciertos parámetros y c.i.
% (3º) Pinta las gráficas de la solución (misgraficas.m).

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

disp('Ecuación de de Belousov-Zhabotinsky con trapecio y alpha=2*10^4, beta= 8*10^(-4), gamma = 5000, delta = 0.75.');
disp('Condiciones iniciales: (0.25,0.75,0.25).');
for r=10:5:500
    N = r;
    [t,u,numfun]=mitrap(fun,tinic,1,x0,100,jac,itmax,par); 
    misgraficasquick
    disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);
end
disp(' ');