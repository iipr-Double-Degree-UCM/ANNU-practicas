%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 25 (4 casos en mispracticas.m).

% (1�) Lee los datos correspondientes a una ecuaci�n (mispracticas.m).
% (2�) Ejecuta midisplin para distintas conidiciones de contorno.
% (3�) Pinta las gr�ficas de la soluci�n (misgraficasquick.m).

clear all;
clc;
mispracticas

%___________________________________________________________%

%Parte 1:

% disp('Pr�ctica 24 (1) con a=0:10 y b=0:10.');
% for a=0:10
%     for b=0:10
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 2:

% disp('Pr�ctica 24 (2) con a=-2:5 y b=0:10.');
% for a=-2:5
%     for b=0:10
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 3:

% disp('Pr�ctica 24 (3) con a=-2:5 y b=-1:7.');
% for a=-2:5
%     for b=-1:7
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 4:    

disp('Pr�ctica 24 (4) con a=-2:5 y b=-1:7.');
for a=-2:5
    for b=-1:7
        [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
        misgraficasquick
    end
end