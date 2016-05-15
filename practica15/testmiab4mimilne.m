%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 15.

clear all;
clc;
mispracticas 

%___________________________________________________________%

%Para la ecuación rígida de la pr8:

% par = 0; %Aquí no hay parámetros
% [t,u]=miab4(fun,tinic,tfin,x0,N*10,par);
% misgraficas
% pause(2);
% [t,u]=mimilne(fun,tinic,tfin,x0,N*10,par);
% misgraficas
%___________________________________________________________%

%El pendulo lo estudiamos en la pr16.
%___________________________________________________________%

%Para el sistema depredador-presa:
%Se puede poner como c.i. también (2,4) o (0,10)
%Se puede poner también par=(3,0.2,0.6,5) y tfin=20

% a = 1;
% b = 1;
% c = 1;
% d = 2;
% par(1) = a;
% par(2) = b;
% par(3) = c;
% par(4) = d;
% disp('Sistema depredador-presa con AB4 y a=b=c=1, d=2.');
% disp('Condiciones iniciales: (1, 1).');
% [t,u]=miab4(fun,tinic,tfin,[1;1],N,par); 
% misgraficas
% disp('Sistema depredador-presa con Milne4 y a=b=c=1, d=2.');
% disp('Condiciones iniciales: (1, 1).');
% [t,u]=mimilne(fun,tinic,tfin,[1;1],N,par); 
% misgraficas
%___________________________________________________________%

%Para el sistema de competición:
%Se puede poner como c.i. también (2,4) o (0,10)

% a = 1;
% b = 1;
% c = 1;
% d = 0.2;
% e = 0.4;
% f = 0.0001;
% par(1) = a;
% par(2) = b;
% par(3) = c;
% par(4) = d;
% par(5) = e;
% par(6) = f;
% disp('Sistema de competición con AB4 y a=b=c=1, d=0.2, e=0.4, f=0.0001.');
% disp('Condiciones iniciales: (1, 1).');
% [t,u]=miab4(fun,tinic,tfin,[1;1],N,par); 
% misgraficas
% disp('Sistema de competición con Milne4 y a=b=c=1, d=0.2, e=0.4, f=0.0001.');
% disp('Condiciones iniciales: (1, 1).');
% [t,u]=mimilne(fun,tinic,tfin,[1;1],N,par); 
% misgraficas
%___________________________________________________________%

%Para la ecuación de Duffing:
%Se puede poner como c.i. también (0.1,0.2) o (5,20)
%Se puede poner también alfa=1

% alfa = 0;
% par = alfa;
% disp('Ecuación de Duffing con AB4 y alfa=0.');
% disp('Condiciones iniciales: (1, 2).');
% [t,u]=miab4(fun,tinic,tfin,[1;2],N,par); 
% misgraficas
% disp('Ecuación de Duffing con Milne4 y alfa=0.');
% disp('Condiciones iniciales: (1, 2).');
% [t,u]=mimilne(fun,tinic,tfin,[1;2],N,par); 
% misgraficas
%___________________________________________________________%

%Para el sistema de Lorenz:
%Se puede poner también rho=99.524:0.02:100.795 con N=10000

sigma = 10;
beta = 8/3;
par(1) = sigma;
par(3) = beta;
disp('Ecuación de Lorenz con AB4 y sigma=10, beta=8/3 ,rho=1:0.4:10.');
disp('Condiciones iniciales: (0, 5, 75).');
for rho=1:0.4:30
    par(2) = rho;
    [t,u]=miab4(fun,tinic,tfin,[0;5;75],N,par); 
    misgraficasquick
end
% disp('Ecuación de Lorenz con Milne4 y sigma=10, beta=8/3 ,rho=1:0.4:10.');
% disp('Condiciones iniciales: (0, 5, 75).');
% for rho=1:0.4:30
%     par(2) = rho;
%     [t,u]=mimilne(fun,tinic,tfin,[0;5;75],N,par); 
%     misgraficasquick
% end