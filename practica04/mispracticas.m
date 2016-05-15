%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�cticas 4, 5, 6 y 7.

%Para la cardioide:
%fun=@funccorazon; x0=[0;2]; tinic=0; tfin=2*pi; N=1000; jac=@jaccorazon; itmax = 100; par=0;
%fun=@funccorazon; x0=[0;2]; tinic=0; tfin=pi; N=1000; jac=@jaccorazon; itmax = 100;  par=0;

%Para Van der Pol:
%fun=@funcvanderpol; x0=[0.1;0.2]; tinic=0; tfin=10; N=1000; jac=@jacvanderpol; itmax = 100;  par=0;
%fun=@funcvanderpol; x0=[2;0]; tinic=0; tfin=10; N=1000; jac=@jacvanderpol; itmax = 100;  par=0;

%Para otra, escalar:
%fun=@(t,x,par) (t-2*x/t-1+1/t); x0=100; tinic=0.1; tfin=10; N=1000; jac=@jacotra; itmax = 100; par=0;

%___________________________________________________________%

%Pr�ctica 8 y 15.

%Para la funci�n de una ecuaci�n r�gida:
%fun=@funcecrigida; x0=0; tinic=0; tfin=pi/2; N=100; jac=@jacecrigida; itmax = 100; par=0;

%___________________________________________________________%

%Pr�ctica 9.

%Para la ecuaci�n del p�ndulo:
%fun=@funcpendulo; x0=[0;0]; tinic=0; tfin=10; N=100; %Abajo y sin impulso
%fun=@funcpendulo; x0=[0;1]; tinic=0; tfin=5; N=100; %Abajo y con impulso +
%fun=@funcpendulo; x0=[pi/2;0]; tinic=0; tfin=10; N=100; %En 90� sin impulso
%fun=@funcpendulo; x0=[pi/4;0]; tinic=0; tfin=5; N=100; %En 45� sin impulso
%fun=@funcpendulo; x0=[pi;0]; tinic=0; tfin=5; N=100; %Arriba sin impulso

%___________________________________________________________%

%Pr�ctica 10 y 15.

%Para la funci�n del sistema depredador-presa:
%fun=@funcdeppresa; x0=[1;1]; tinic=0; tfin=10; N=2000;

%Para la funci�n del sistema de competici�n: 
%fun=@funccompet; x0=[1;1]; tinic=0; tfin=10; N=1000;

%Para la de Van der Pol, ver arriba.

%Para la funci�n de la ecuaci�n de Duffing:
%fun=@funcduffing; x0=[1;2]; tinic=0; tfin=100; N=1000;

%Para la funci�n del sistema de Lorenz:
%fun=@funclorenz; x0=[0;5;75]; tinic=0; tfin=20; N=1000;

%___________________________________________________________%

%Pr�ctica 12.

%Para la funci�n de la ecuaci�nde Belousov-Zhabotinsky:
%fun=@funcbelza; x0=[0.25;0.75;0.25]; tinic=0; tfin=10; N=100; jac=@jacbelza; itmax = 100;

%___________________________________________________________%

%Pr�ctica 20.

%TOL=10^(-5); fac=0.9; facmax=5; hmin=10^(-5); hmax=(tfin-tinic)*0.1; h0=hmin; 
%TOL=10^(-3); fac=0.9; facmax=1.5; hmin=10^(-5); hmax=0.001; h0=(tfin-tinic)/N;
%met=@mieuler; ord=1;
%met=@mirk4; ord=4;

%___________________________________________________________%

%Pr�ctica 21.

%TOL=10^(-1); fac=0.9; facmax=2; hmin=10^(-6); hmax=(tfin-tinic)*0.1; h0=hmin; 
%TOL=10^(-5); fac=0.9; facmax=1.5; hmin=10^(-7); hmax=0.001; h0=(tfin-tinic)/N;

%___________________________________________________________%

%Pr�ctica 22.

%fun = @func22_1; tinic=0; tfin=2; x0=1; par=0;  N=2000; %Asintota en 1.
%fun = @func22_2; tinic=0; tfin=10; x0=1; par=0;  N=2000; %Asintota en 2.1 (aprox). 

%TOL=10^(-3); fac=0.9; facmax=1.5; hmin=10^(-5); hmax=0.001; h0=(tfin-tinic)/N;
%met=@mieuler; ord=1;
%TOL=10^(-5); fac=0.9; facmax=5; hmin=10^(-5); hmax=(tfin-tinic)*0.1; h0=hmin;
%met=@mirk4; ord=4;

%___________________________________________________________%

%Pr�ctica 23.

%fun = @funcoscil; tinic=0; tfin=8; x0=1/exp(1); par=0; N=2000;  
%TOL=10^(-3); fac=0.9; facmax=1.5; hmin=10^(-5); hmax=0.001; h0=(tfin-tinic)/N;
%met=@mieuler; ord=1;
%met=@mirk4; ord=4;

%___________________________________________________________%

%Pr�ctica 25.

%Parte 1:
%pqr={@(t)0, @(t)4, @(t)-4*t}; a=0; b=2; tinic=0; tfin=1; N=1000; C1=0; C2=0;

%Parte 2:
%pqr={@(t)3, @(t)2, @(t)3*cos(t)}; a=-2; b=1; tinic=0; tfin=5; N=1000; C1=0; C2=1;

%Parte 3:
%pqr={@(t)0, @(t)cos(t), @(t)t}; a=-2; b=-1; tinic=0; tfin=10; N=1000; C1=1; C2=0;

%Parte 4:    
%pqr={@(t)1-sin(t), @(t)cos(t), @(t)sin(t)}; a=-2; b=-1; tinic=0; tfin=10; N=1000; C1=1; C2=1;

%___________________________________________________________%

%Pr�ctica 27.

%Parte 1:
%ffxfy={@(t,x,y)2*x^3, @(t,x,y)6*x^2, @(t,x,y)0};
%a=1/2; b=1/3; tinic=1; tfin=2; N=1000; C1=0; C2=0; TOL = 0.0001;

%tinic = 0; tfin = 1; a=[1,0,1/3]; b=[0,1,2]; N = 1000; Nmax = 20; TOL = 0.0001; %Robin

%Parte 2:
%ffxfy={@(t,x,y)8*x^3, @(t,x,y)24*x^2, @(t,x,y)0}; 
%a=1/3; b=-2/25; tinic=0; tfin=1; N=1000; C1=0; C2=1; TOL = 0.0001;

%Parte 3:
%ffxfy={@(t,x,y)(-t*y+x+t)^3 + 1/t, @(t,x,y)3*(-t*y+x+t)^2, @(t,x,y)3*(-t)*(-t*y+x+t)^2};
%a=1; b=2; tinic=1; tfin=exp(1); N=1000; C1=1; C2=1; TOL = 0.0001;
%a=1; b=exp(e); tinic=1; tfin=exp(1); N=1000; C1=1; C2=0; TOL = 0.0001;

%Parte 4:
%ffxfy={@(t,x,y)-y^2+x+t, @(t,x,y)1, @(t,x,y)-2*y}; 
%a=0; b=2; tinic=1; tfin=2; N=1000; C1=1; C2=1; TOL = 0.0001;

%___________________________________________________________%

%Pr�ctica 28.

%ffxfy={@(t,x,y)(2*sin(t^2)+8*t^2)*x - 4*t^2*x*log(x) + 2*t*sin(t^2)*y, ...
%       @(t,x,y)(2*sin(t^2)+8*t^2) - 4*t^2*(log(x) + 1), @(t,x,y)2*t*sin(t^2)}; 
%a=exp(1); b=exp(2); tinic=1; tfin=sqrt(10.5*pi); N=1000; C1=0; C2=0; TOL = 0.0001;

%tinic = 0; tfin = sqrt(10.5*pi); a = [1,0,exp(1)]; b = [1,0,exp(1)^2]; N=1000; Nmax = 20;  TOL = 0.0001; %Robin