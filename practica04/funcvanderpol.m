%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 4.
%Nota: Como la función no depende de t, no hace falta poner explícitamente
%t, pero sí que hay que poner el gusanillo ~.
%Probar también con c.i. (2,0), se cierra la curva (en 2d, lógicamente).

function f = funcvanderpol(~, x,par)
    %En la práctica 4, es para alfa=beta=1, luego pasamos par = 0 para
    %distinguirlo de la práctica 10 donde sí se usan los parámetros.
    if par(1) == 0
        alfa = 1;
        beta = 1;
    else
        alfa = par(1);
        beta = par(2);
    end
    
    f=[x(2); alfa*(beta-x(1)^2)*x(2)-x(1)];
end

% [t,u]=ode45(@funcvanderpol,[0:0.01:10],[0.1;0.2]);
% u=u.';
% figure(1)
% subplot(2,1,1)
% plot(t,u(1,:))
% subplot(2,1,2)
% plot(t,u(2,:))
% figure(2)
% plot(u(1,:),u(2,:))
% plot3(u(1,:),u(2,:),t)
