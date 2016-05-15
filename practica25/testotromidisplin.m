%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 25 (4 casos en mispracticas.m).

% (1º) Lee los datos correspondientes a una ecuación (mispracticas.m).
% (2º) Ejecuta midisplin para distintas conidiciones de contorno.
% (3º) Pinta las gráficas de la solución (misgraficasquick.m).

clear all;
clc;
mispracticas

%___________________________________________________________%

%Parte 1:

% disp('Práctica 24 (1) con a=0:10 y b=0:10.');
% for a=0:10
%     for b=0:10
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 2:

% disp('Práctica 24 (2) con a=-2:5 y b=0:10.');
% for a=-2:5
%     for b=0:10
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 3:

% disp('Práctica 24 (3) con a=-2:5 y b=-1:7.');
% for a=-2:5
%     for b=-1:7
%         [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
%         misgraficasquick
%     end
% end

%___________________________________________________________%

%Parte 4:    

disp('Práctica 24 (4) con a=-2:5 y b=-1:7.');
for a=-2:5
    for b=-1:7
        [t,u]=midisplin(tinic,tfin,a,b,N,C1,C2,pqr); 
        misgraficasquick
    end
end