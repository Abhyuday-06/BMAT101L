% Draw the vector field of xi + yj 

clc
close all
clear all
syms x y 
F = input("enter the vector as i and j order in vector form, eg- xi + yj -> [x y]:");
P = inline(vectorize(F(1)), 'x', 'y')
Q = inline(vectorize(F(2)), 'x', 'y')
x = linspace(-1,1,10);
y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y, U,V,1)
axis on
xlabel('x')
ylabel('y')

% Draw the vector field of xi - yj + zk  

clc
close all
clear all
syms x y z
F = input("enter the vector as i, j and k order in vector form, eg- xi - yj + zk -> [x -y z]:");
P = inline(vectorize(F(1)), 'x', 'y', 'z')
Q = inline(vectorize(F(2)), 'x', 'y', 'z')
R = inline(vectorize(F(3)), 'x', 'y', 'z')
x = linspace(-1,1,5);
y = x;
z = x;
[X,Y, Z] = meshgrid(x,y,z);
U = P(X,Y,Z);
V = Q(X,Y,Z);
W = R(X,Y,Z);
quiver3(X,Y,Z,U,V,W,1.5)
axis on
xlabel('x')
ylabel('y')
zlabel('z')

% Draw the gradient vector field of (x,y) = x^2*y = y^3. Plot the gradient vector field toegther with a contour map of f. How are they related?

clc
close all
clear all
syms x y 
f = input("enter the function f(x,y):");
F = gradient(f)
P = inline(vectorize(F(1)), 'x', 'y')
Q = inline(vectorize(F(2)), 'x', 'y')
x = linspace(-2,2,10);
y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y, U,V,1)
axis on
xlabel('x')
ylabel('y')
hold on
ezcontour(f, [-2 2])
