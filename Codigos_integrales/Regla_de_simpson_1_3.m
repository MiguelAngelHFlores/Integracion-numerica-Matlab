%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Regla de Simpson 1/3')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,los puntos a y b,así como
%porcentaje de error
f =input('Introduzca la función f(x):');
a =input('Introduzca el punto a: ');
b =input('Introduzca el punto b: ');
%Graficamos la función en el intervalo [a,b]
ezplot(f,[a,b]);
grid,title('\bf Regla de Simpson 1/3')
f=inline(f);
%Aproximamos la integral con la fórmula correspondiente
int=((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nAproximación a la integral=%12.6f \n',int);