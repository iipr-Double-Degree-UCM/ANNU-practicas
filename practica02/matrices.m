%___________________________________________________________%
%                                                           %
%           Pr�cticas de An�lisis Num�rico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matem�ticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Pr�ctica 2. Opcional. Matrices.

%(i)
clear A
A=[0,-1,4;4,2,1/3;-1,1/2,-2]
B=[A(3,:);A(1,:)+A(2 ,:)]
v=[1;-1;0] 
z=A\v
A*z-v

%(ii)
zeros(3,1)
ones(2,3)