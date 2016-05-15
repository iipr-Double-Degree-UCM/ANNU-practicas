%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 16.

clear all;
clc;
mispracticas 

%___________________________________________________________%

%Para la ecuaci�n del p�ndulo:

% M = 0;
% g = 9.8;
% l = 1;
% par(1)= M;
% par(3)= g;
% par(4)= l;
% 
% disp('P�ndulo con Milne4 de orden 4 y beta=0.');
% par(2)= 0; %beta
% [t,u]=mimilne(fun,tinic,15,x0,N,par); 
% misgraficas
% pause(2); 
% 
% disp('P�ndulo con Milne4 y beta=0.25.');
% par(2)= 0.25; %beta
% [t,u]=mimilne(fun,tinic,10,x0,N,par); 
% misgraficas
% pause(2);
% 
% disp('P�ndulo con Milne4 y beta=1.5.');
% par(2)= 1.5; %beta
% [t,u]=mimilne(fun,tinic,tfin,x0,N,par); 
% misgraficas

%Observaci�n: Parece que cuanto m�s crece beta, m�s pronto aparecen las
%oscilaciones esp�reas. Probar con beta=4.5 y tfin=2.

%___________________________________________________________%

%Para la ecuaci�n del p�ndulo linealizado:

% M = 0;
% g = 9.8;
% l = 1;
% par(1)= M;
% par(3)= g;
% par(4)= l;
% fun=@funcpendulolin;
% 
% disp('P�ndulo linealizado con Milne4 y beta=0.');
% par(2)= 0; %beta
% [t,u]=mimilne(fun,tinic,15,x0,N,par); 
% misgraficas
% pause(2); 
% 
% disp('P�ndulo linealizado con Milne4 y beta=0.25.');
% par(2)= 0.25; %beta
% [t,u]=mimilne(fun,tinic,10,x0,N,par); 
% misgraficas
% pause(2); 
% 
% disp('P�ndulo linealizado con Milne4 y beta=1.5.');
% par(2)= 1.5; %beta
% [t,u]=mimilne(fun,tinic,tfin,x0,N,par); 
% misgraficas

%___________________________________________________________%

%Para la ecuaci�n de Van der Pol:

alfa = 1;
beta = -0.2;
par(1) = alfa;
par(2) = beta;

disp('Ecuaci�n de Van der Pol con Milne4 y alfa=1, beta=-0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mimilne(fun,tinic,50,[0.1;0.2],N,par); 
misgraficas
pause(2);

par(2) = 0; %beta
disp('Ecuaci�n de Van der Pol con Milne4 y alfa=1, beta=0.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mimilne(fun,tinic,50,[0.1;0.2],N,par); 
misgraficas
pause(2);

par(2) = 0.2; %beta
disp('Ecuaci�n de Van der Pol con Milne4 y alfa=1, beta=0.2.');
disp('Condiciones iniciales: (0.1, 0.2).');
[t,u]=mimilne(fun,tinic,50,[0.1;0.2],N,par); 
misgraficas
disp(' ');
pause(2);

par(2) = 1; %beta
disp('Ecuaci�n de Van der Pol con Milne4 y alfa=1:0.2:10, beta=1.');
disp('Condiciones iniciales: (0.1, 0.2).');
for alfa=1:0.2:10
    par(1) = alfa;
    [t,u]=mimilne(fun,tinic,tfin,[0.1;0.2],N,par); 
    misgraficasquick
end