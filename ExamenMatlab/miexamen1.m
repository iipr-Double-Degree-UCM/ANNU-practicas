%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: testeo del nuevo mitrap.m:

clear all;
clc;
%Para Van der Pol:
fun=@funcvanderpol; 
x0=[0;-2];
tinic=0; 
tfin=50; 
N=5000; 
jac=@jacvanderpol;
itmax = 20;  
par=[10,1];
[t,u,numfun]=mitrap(fun,tinic,tfin,x0,N,jac,itmax,par); 
%Pintamos las componentes de la solución:
figure(1);
subplot(size(u,1),1,1);
plot(t,u(1,:),'r');
title('Componente 1 de la solución');
legend('u_1');
subplot(size(u,1),1,2);
plot(t,u(2,:),'g');
title('Componente 2 de la solución');
legend('u_2');
pause(1);
%Pintamos la trayectoria aproximada en R^2:
figure(2);
plot(u(1,:),u(2,:),'r');
title('Trayectoria de la solución (R^2)');
%Mostramos por pantalla el número de evaluaciones de la función:
disp(['El número de evaluaciones de la función ha sido: ', num2str(numfun)]);