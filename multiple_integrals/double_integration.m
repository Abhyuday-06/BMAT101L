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

% Visualising the volume bounded by z= 0 and paraboloid z 1-x^2-y^2 using polar coordinates %

clc
clear all
syms r theta
vol = int(int((1-r^2)*r, r, 0,1), theta, 0, 2*pi)
fsurf(r*cos(theta), r*sin(theta), 1-r^2, [0 1 0 2*pi], 'MeshDensity', 20)
axis equal;
axis([-2 2 -2 2 - 1.3])
xticks(-2:2); yticks(-2:2); zticks(0:1.3);
xlabel('x'); ylabel('y')

% Evaluating double integral ysin(xy)dxdy over R = [1,2]x[0,pi] %

clc 
clear all
syms x y z
viewSolidone(z,0+0*x+0*y, y*sin(x*y), x, 1+0*y, 2+0*y, y, 0, pi)
v = int(int(y*sin(x*y),x,1,2),y,0,pi) % for printing the numerical value %

% Evaluate double integral x-2y^2 dydx where R = {(x,y) | 0 <= x <= 2, | 1 <= y <= 2}

clc
clear al
syms x y z
viewSolid(z, 0+0*x+0*y, x-3*y&2+0*y, y,1+0*x, 2+0*y, x, 0, 2)
v = int(int(x-3*y^2+ 0*y,y,1,2),x,0,2)

% Find the volume of the solid that lies under the paraboloid z = x^2 + y^2 and above the xy plane and niside the cylinder x^2 + y^2 = 2*x %

clc 
clear all
syms r theta z r1
V = int(int((r^2)*r, r, 0, 2*cos(theta)), theta, -pi/2, pi/2)
r = 2*cos(theta), x = r*cos(theta), y = r*sin(theta)
fsurf(x,y,z, [0 2*pi 0 1], 'MeshDensity', 16) % For Cartesian coordinates %
axis equal; 
xlabel('x'); ylabel('y'); zlabel('z');
zticks(0:1.5)
hold on
fsurf(r1*cos(theta), r1*sin(theta), r1^2, [0 1 0 2*pi], 'MeshDensity', 20) % For Polar coordinates %
