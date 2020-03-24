clear;
clc;

//Círculo Unitário
circulo = linspace(0,2*%pi,100);
x=cos(circulo);
y=sin(circulo);
figure(0);
plot(x,y);
MatrizXY = [x ; y];

//Matriz A
A = [2 -2; 1 1];
disp(A);

//Matriz aleatória B
B = rand(2,2);
disp(B);

//Multiplicação de A pelos valores de x e y
fx = A * MatrizXY;
xfx = [1 0]*fx;
yfx = [0 1]*fx;
figure(1);
plot(xfx,yfx);

//Multiplicação de B pelos valores de x e y
fy = B * MatrizXY;
xfy = [1 0]*fy;
yfy = [0 1]*fy;
figure(2);
plot(xfy,yfy);

//SDV
r = svd(A);
[U,S,V] = svd(A);
disp(U);
disp(S);
disp(V);

s = svd(B);
[U,S,V] = svd(B);
disp(U);
disp(S);
disp(V);
