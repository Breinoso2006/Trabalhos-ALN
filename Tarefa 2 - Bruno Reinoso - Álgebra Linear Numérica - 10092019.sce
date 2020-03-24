clear;
clc;

//Círculo Unitário 2D e 3D
circulo = linspace(0,2*%pi,100);
x=cos(circulo);
y=sin(circulo);
for i=1:100
    z(i) = 1;
end
z = z';
figure(0);
plot(x,y);

figure(1);
param3d1(x,y,z);
MatrizXYZ = [x ; y; z];

//Matriz A
A = [2 -2 0; 1 1 5; 5 3 2];
disp(A);

//Matriz aleatória B
B = rand(3,3);
disp(B);

//Multiplicação de A pelos valores de x, y e z
fx = A * MatrizXYZ;
xfx = [1 0 0]*fx;
yfx = [0 1 0]*fx;
zfx = [0 0 1]*fx;
figure(2);
plot(xfx,yfx);

figure(3);
param3d1(xfx,yfx,zfx);

//Multiplicação de B pelos valores de x, e z
fy = B * MatrizXYZ;
xfy = [1 0 0]*fy;
yfy = [0 1 0]*fy;
zfy = [0 0 1]*fy;
figure(4);
plot(xfy,yfy);

figure(5);
param3d1(xfy,yfy,zfy);

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
