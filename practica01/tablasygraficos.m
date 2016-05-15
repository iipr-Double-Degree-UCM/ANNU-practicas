%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 1. Opcional. Tablas y gráficos.

%(i)
t=1:10 
t=t+1
2*t
t=[1,t,12] 
s=[t;1./t]
s=[s,[0;0]] 
t.^2
s.^2

%(ii)
t=0:0.1:2*pi;
x=sin(t)
y=cos(t)
z=exp(-t)
plot(t,x)
plot(t,y)
plot(t,x,'r',t,y,'g-*') 
plot(x,y)
hold on
axis equal
plot(9*x,4*y)
hold off
plot3(x,y,z)
u=x.*z 
plot(t,u)

%(iii)
A=[t;x;y]
size(A)
size(A,1)
size(A,2)
plot3(A(1,:),A(2,:),A(3,:)) 
j=size(A,2)-9 : size(A,2)
C=A(:,j)