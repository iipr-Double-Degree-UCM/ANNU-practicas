%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 8 (ecrigida de mispracticas.m).
 
% (1º) Lee los datos correspondientes a la ecuación (mispracticas.m).
% (2º) Ejecuta mirk4 para N=25,33,40,50,100.
% (3º) Pinta las gráficas de la solución (misgraficas.m).
% (4º) Ejecuta mitrap para N=25,33,40,50,100.
% (5º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;
par = 0;
%par es para parámetros y se usa en prácticas posteriores
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

disp('Método del trapecio con N=25.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,25,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);
pause(3);
disp('Método del trapecio con N=33.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,33,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);
pause(3);
disp('Método del trapecio con N=40.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,40,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);
pause(3);
disp('Método del trapecio con N=50.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,50,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);
pause(3);
disp('Método del trapecio con N=100.');
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,100,jac,itmax,par); 
misgraficas
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);