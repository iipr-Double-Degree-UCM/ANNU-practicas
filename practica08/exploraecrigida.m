%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 8 (ecrigida de mispracticas.m).
 
% (1�) Lee los datos correspondientes a la ecuaci�n (mispracticas.m).
% (2�) Ejecuta mirk4 para N=25,33,40,50,100.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficas.m).
% (4�) Ejecuta mitrap para N=25,33,40,50,100.
% (5�) Pinta las gr�ficas de la soluci�n (misgraficas.m).

clear all;
clc;
par = 0;
%par es para par�metros y se usa en pr�cticas posteriores
mispracticas
disp('Runge-Kutta de orden 4 y N=25.');
[t,u]=mirk4(fun,[tinic,tfin],x0,25,par); 
misgraficas
pause(3);
disp('Runge-Kutta de orden 4 y N=33.');
[t,u]=mirk4(fun,[tinic,tfin],x0,33,par); 
misgraficas
pause(3);
disp('Runge-Kutta de orden 4 y N=40.');
[t,u]=mirk4(fun,[tinic,tfin],x0,40,par); 
misgraficas
pause(3);
disp('Runge-Kutta de orden 4 y N=50.');
[t,u]=mirk4(fun,[tinic,tfin],x0,50,par); 
misgraficas
pause(3);
disp('Runge-Kutta de orden 4 y N=100.');
[t,u]=mirk4(fun,[tinic,tfin],x0,100,par); 
misgraficas

pause(4);
disp([' ']);

disp('M�todo del trapecio con N=25.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,25,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);
pause(3);
disp('M�todo del trapecio con N=33.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,33,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);
pause(3);
disp('M�todo del trapecio con N=40.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,40,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);
pause(3);
disp('M�todo del trapecio con N=50.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,50,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);
pause(3);
disp('M�todo del trapecio con N=100.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,100,jac,itmax,par); 
misgraficas
disp(['El n�mero de evaluaciones de la funci�n ha sido: ', num2str(numfun)]);