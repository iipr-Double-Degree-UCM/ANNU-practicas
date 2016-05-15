%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 4.
%Nota: Como la funci�n no depende de t, no hace falta poner expl�citamente
%t, pero s� que hay que poner el gusanillo ~.
%Probar tambi�n con c.i. (2,0), se cierra la curva (en 2d, l�gicamente).

function f = funcvanderpol(~, x,par)
    %En la pr�ctica 4, es para alfa=beta=1, luego pasamos par = 0 para
    %distinguirlo de la pr�ctica 10 donde s� se usan los par�metros.
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
