%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Regla del trapecio')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,los puntos a y b, así como el
%porcentaje de error
f =input('Introduzca la función f(x):');
a =input('Introduzca el punto a: ');
b =input('Introduzca el punto b: ');
%Graficamos la función en el intervalo [a,b]
ezplot(f,[a,b]);
grid,title('\bf Regla del Trapecio')
f=inline(f);
%Aproximamos la integral con la fórmula correspondiente
int=((b-a)/2)*(f(a)+f(b));
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nAproximación a la integral=%12.3f \n',int);