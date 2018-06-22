%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Regla de Simpson 3/8')
%Damos de alta la variable simbólica X
syms x
%Introducimos la función,los puntos a y b,así como
%porcentaje de error
f =input('Introduzca la función f(x):');
a =input('Introduzca el punto a: ');
b =input('Introduzca el punto b: ');
%Graficamos la función en el intervalo [a,b]
ezplot(f,[a,b]);
grid,title('\bf Regla de Simpson 3/8')
f=inline(f);
h=((b-a)/3);
x=a;
sum=0;
for i=2:3
x= x + h;
sum=sum + 3*f(x);
end
%Aproximamos la integral con la fórmula correspondiente
int=((b-a)/8)*(f(a)+sum +f(b));
%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nAproximación a la integral=%12.3f \n',int);