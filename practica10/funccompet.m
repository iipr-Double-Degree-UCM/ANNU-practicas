%___________________________________________________________%
%                                                           %
%           Prácticas de Análisis Numérico (ANNU)           %
%             Universidad Complutense de Madrid             %
%                  Facultad de Matemáticas                  %
%                  Ignacio Iker Prado Rujas                 %
%                 Octubre 2015-Febrero 2016                 %
%___________________________________________________________%

%Práctica 10.
%Los parámteros a, b, c, d, e, f son no negativos.

function f=funccompet(~,xIN,par)
    a = par(1);
    b = par(2);
    c = par(3);
    d = par(4);
    e = par(5);
    f = par(6);
    x = xIN(1);
    y = xIN(2);
    
    f = [(a*x - b*x*y - e*x^2); (-c*y + d*x*y -f*y^2)];
end