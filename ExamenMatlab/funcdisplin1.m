%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 24.

function f = funcdisplin1(t,x,par)
    %Aquí par es una lista con las funciones p, q, r (no un vector)
    p = par{1};
    q = par{2};
    r = par{3};
    
    f = [x(2); p(t)*x(2) + q(t)*x(1) + r(t)];
end