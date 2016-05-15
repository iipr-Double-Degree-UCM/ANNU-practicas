%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 28.

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta midispnolin (método 1-> Newton, método 2->Secante).
% (3º) Pinta las gráficas de la solución (misgraficas.m).

clear all;
clc;

mispracticas
%Para el método de Newton, poner un 1 en el último parámetro de entrada:
[t,u]=midispnolin(tinic,tfin,a,b,N,C1,C2,ffxfy,TOL,1);
%Primero pintamos la solución obtenida con el método (u):
misgraficasquick
figure(3);
plot3(u(1,:),u(2,:),t,'k');
title('Trayectoria vista según avanza el tiempo');

%Luego pintamos la solución exacta (v):
solex = @(t) exp(2-cos(t^2));
dsolex = @(t) 2*t*sin(t^2)*exp(2-cos(t^2));
v = zeros(2,N+1);
for i=1:(N+1)
    v(1,i) = solex(t(i));
    v(2,i) = dsolex(t(i));
end
figure(4);
subplot(2,1,1);
plot(t,v(1,:),'r');
title('Componente 1');
legend('v_1');
subplot(2,1,2);
plot(t,v(2,:),'g');
title('Componente 2');
legend('v_2');
figure(5);
plot(v(1,:),v(2,:),'r');
title('Trayectoria de la solución exacta en R^2');
figure(6);
plot3(v(1,:),v(2,:),t,'k');
title('Trayectoria de la solución exacta según avanza el tiempo');

%Por último pintamos la diferencia entre ambas soluciones (w):
w = v-u;
figure(7);
subplot(2,1,1);
plot(t,w(1,:),'r');
title('Componente 1');
legend('w_1');
subplot(2,1,2);
plot(t,w(2,:),'g');
title('Componente 2');
legend('w_2');
figure(8);
plot(w(1,:),w(2,:),'r');
title('Trayectoria de la diferencia');
figure(9);
plot3(w(1,:),w(2,:),t,'k');
title('Trayectoria de la diferencia según avanza el tiempo');