%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 4.

function f = funccorazon(t,x,~)
    f=[x(2);-16*x(1)+4*sin(2*t)];
end

% [t,u]=ode45(@funccorazon,[0,2*pi],[0;2]);
% [t,u]=ode45(@funccorazon,[0:0.01:2*pi],[0;2]);
% u=u.';
% figure(1)
% subplot(2,1,1)
% plot(t,u(1,:))
% subplot(2,1,2)
% plot(t,u(2,:))
% figure(2)
% plot(u(1,:),u(2,:))
% plot3(u(1,:),u(2,:),t)