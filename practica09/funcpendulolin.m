%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 9.
%M: masa que pende
%l: longitud del péndulo
%g: gravedad

function f=funcpendulolin(~,x,par)
    M = 0;
    beta = par(2);
    g = par(3); 
    l = par(4);
    
    
    f=[x(2); M-2*beta*x(2)-g/l*x(1)];
end