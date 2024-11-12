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

% F(x,y,z) =  x^2*y*z i + x*y^2*z j + z*y*z^2 k

clc 
clear all
syms x y z real
F = input("Enter the vector as i, j and k order in the vector form, eg- [x y z]:")
curl_F = curl(F, [x y z])
div_F = divergence(F, [x y z])

% Determine whether or not the vector field F(x,y,z) = y^2*z^3 i + 2*x*y*z^3 j + 3*x*y^2*z^2 k is conservative. If it is, find a function f such that F = ulta_delta(f)

clc 
clear all
syms x y z real
F = input("Enter the vector as i, j and k order in the vector form, eg- [x y z]:") % f = [y^2*z^3  2*x*y*z^3  3*x*y^2*z^2]
curl_F = curl(F, [x y z])
if (curl_F == [0 0 0])
  f = potential(F, [x y z])
else
  sprintf('curl_F is not equal to zero.')
end

% line integral of F.dr for 2 variables

clc
clear all
close all
syms x y t
f = input("Enter the f vector as i and j order in vector form:");
rbar = input("Ebter the r vector as i and j order in vector form:");
lim = input("Enter the limit of integration:");
vecfi = input("Enter the vector field range:");
drbar = diff(rbar, t);
sub = subs(f, [x,y], rbar);
f1 = dot(sub, drbar);
int(f1, t, lim(1), lim(2))
P = inline(vectorize(f(1)), 'x', 'y');
Q = inline(vectorize(f(2)), 'x', 'y');
x = linspace(vecfi(1), vecfi(2),10);
y = x;
[X, Y] = meshgrid(x,y); 
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y, U,V)
hold on 
fplot(rbar(1), rbar(2), [lim(1), lim(2)])
axis on
xlabel('x'); ylabel('y')

% line integral of F.dr for 3 variables(to be fixed)

clc
clear all
close all
syms x y z t
f = input("Enter the f vector as i and j order in vector form:");
rbar = input("Ebter the r vector as i and j order in vector form:");
lim = input("Enter the limit of integration:");
vecfi = input("Enter the vector field range:");
drbar = diff(rbar, t);
sub = subs(f, [x,y, z], rbar);
f1 = dot(sub, drbar);
int(f1, t, lim(1), lim(2))
P = inline(vectorize(f(1)), 'x', 'y', 'z');
Q = inline(vectorize(f(2)), 'x', 'y', 'z');
R = inline(vectorize(f(3)), 'x', 'y', 'z');
quiver3
x = linspace(vecfi(1), vecfi(2),10);
y = x;
[X, Y] = meshgrid(x,y); 
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y, U,V)
hold on 
fplot(rbar(1), rbar(2), [lim(1), lim(2)])
axis on
xlabel('x'); ylabel('y')



