% Visualising the volume of a sphere %

clc 
clear all
syms x y z
vol = 8*int(int(sqrt(1-x^2-y^2), y, 0, sqrt(1-x^2)), x, 0, 1)
viewSolid(z, 0+0*x*y, sqrt(1-x^2-y^2), y, 0 + 0*x, sqrt(1-x^2), x, 0, 1); 
axis equal;
grid on;

% Visualising the volume of a paraboloid z = x^2 + y^2 bounded by y = 2*x and y = x^2%

clc 
clear all
syms x y z
vol = int(int(x^2 + y^2, x, y/2, sqrt(y)), y, 0, 4)
viewSolidone(z, 0+0*x*y, x^2 + y^2, x, y/2, sqrt(y), y, 0, 4);
grid on;

% Visualising the volume using cyiindrical coordinates %

clc
clear all
syms r theta
vol = int(int(1-r^2)*r, r, 0,1), theta, 0, 2*pi)
fsurf(r*cos(theta), r*sin(theta 0                      
