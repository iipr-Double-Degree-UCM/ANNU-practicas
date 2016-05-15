%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10 (funclorenz de mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 de funclorenz para distintos par�metros y c.i.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
sigma = 10;
beta = 8/3;
par(1) = sigma;
par(3) = beta;
mispracticas

disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=1:0.4:10.');
disp('Condiciones iniciales: (0, 5, 75).');
for rho=1:0.4:30
    par(2) = rho;
    [t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
    misgraficasquick
end
disp(' ');

disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=1.');
disp('Condiciones iniciales: (0, 5, 75).');
par(2) = 1; %rho
[t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
misgraficasquick
pause(1);

disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=13.962.');
disp('Condiciones iniciales: (0, 5, 75).');
par(2) = 13.962; %rho
[t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
misgraficasquick
pause(1);

disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=24.74.');
disp('Condiciones iniciales: (0, 5, 75).');
par(2) = 24.74; %rho
[t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
misgraficasquick
pause(3);
%___________________________________________________________%

disp(' ');
tfin=10; %--------------------OJO: Cambio el tfin para estos rho--------------------
close; %Cierra las figuras anteriores para sacar las nuevas
disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=99.524:0.02:100.795.');
disp('Condiciones iniciales: (0, 5, 75).');
for rho=99.524:0.02:100.795
    par(2) = rho;
    [t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
    misgraficasquick
end

disp(' ');
disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=100.5.');
disp('Condiciones iniciales: (0, 5, 75).');
disp('Soluci�n peri�dica.');
par(2) = 100.5; %rho
[t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
misgraficasquick
pause(1);

disp('Ecuaci�n de Lorenz con Runge-Kutta de orden 4 y sigma=10, beta=8/3 ,rho=99.65.');
disp('Condiciones iniciales: (0, 5, 75).');
par(2) = 99.65; %rho
[t,u]=mirk4(fun,[tinic,tfin],[0;5;75],N,par); 
misgraficasquick
pause(1);