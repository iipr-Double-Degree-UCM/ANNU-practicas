%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 10.

figure(1);
for i=1:size(u,1)   %Pintamos cada componente de u
    subplot(size(u,1),1,i);
    if i == 1
        plot(t,u(i,:),'r');
    elseif i == 2
        plot(t,u(i,:),'g');
    else
        plot(t,u(i,:),'b');
    end
    title(['Componente ', num2str(i)]);
    legend(['u_', num2str(i)]);   
end
%pause(0.1);
if size(u,1) == 2   %EDO en R^2
    figure(2);
    plot(u(1,:),u(2,:),'r');
    title('Trayectoria de la soluci�n (R^2)');
    %pause(0.1);
elseif size(u,1) == 3   %EDO en R^3
    figure(2);
    plot3(u(1,:),u(2,:),u(3,:),'k');
    title('Trayectoria de la soluci�n (R^3)');
end