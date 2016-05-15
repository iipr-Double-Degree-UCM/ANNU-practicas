%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10.

function f=funclorenz(~,xIN,par)
    sigma = par(1);
    rho = par(2);
    beta = par(3);
    x = xIN(1);
    y = xIN(2);
    z = xIN(3);
    
    f = [sigma*(y - x); rho*x - y - x*z; x*y - beta*z];
end