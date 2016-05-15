%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Examen: prueba de midisplin.m

clear all;
clc;
%Para la función dada en el enunciado del examen, parte 2:
pqr={@(t)-2*pi^2*t, ...
     @(t)pi^2, ...
     @(t)-2*pi*(1+pi^2*t^2)*sin(pi*t)}; 
a=-1; 
b=-1; 
tinic=-1; 
tfin=1; 
N=2000; %Dado de palabra durante el examen 
C1=1; %x'(-1)=-1
C2=1; %x'(1)=-1
[t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr);
%Pintamos las componentes de la solución aproximada:
figure(1);
subplot(size(u,1),1,1);
plot(t,u(1,:),'r');
title('Componente 1 de la solución aproximada');
legend('u_1');
subplot(size(u,1),1,2);
plot(t,u(2,:),'g');
title('Componente 2 de la solución aproximada');
legend('u_2');
pause(0.5);
%Pintamos la trayectoria aproximada en R^2:
figure(2);
plot(u(1,:),u(2,:),'r');
title('Trayectoria de la solución aproximada (R^2)');

%Luego pintamos la solución exacta (v):
solex = @(t) t*cos(pi*t);
dsolex = @(t) cos(pi*t)-t*pi*sin(pi*t);
v = zeros(2,N+1);
for i=1:(N+1)
    v(1,i) = solex(t(i));
    v(2,i) = dsolex(t(i));
end
pause(0.5);
figure(3);
subplot(2,1,1);
plot(t,v(1,:),'r');
title('Componente 1 de la solución exacta');
legend('v_1');
subplot(2,1,2);
plot(t,v(2,:),'g');
title('Componente 2 de la solución exacta');
legend('v_2');
pause(0.5);
figure(4);
plot(v(1,:),v(2,:),'r');
title('Trayectoria de la solución exacta en R^2');

%Por último pintamos la diferencia entre u(1,:) y v(1,:):
w = abs(v-u);
pause(0.5);
figure(5);
%subplot(2,1,1);
subplot(1,1,1);
plot(t,w(1,:),'r');
title('Diferencia de la componentes 1 (la solución)');
legend('w_1');
% subplot(2,1,2);
% plot(t,w(2,:),'g');
% title('Diferencia de las componentes 2');
% legend('w_2');
% pause(0.5);
% figure(6);
% plot(w(1,:),w(2,:),'r');
% title('Trayectoria de la diferencia');