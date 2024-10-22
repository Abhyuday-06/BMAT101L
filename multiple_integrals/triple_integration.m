% Evaluate triple integration of 6xz dydxdz over y = 0 to x+z, x = 0 to z and z = 0 to 1

syms x y z
sol = int(int(int(6*x*z, y,0,x+z),x,0,z),z,0,1)

% Evaluate the triple integration 6xy dV where E lies under the plane z = 1 + x + y and above the region in the xy plane bounded by the curves y = x^0.5, y = 0 and x = 1.

syms x y z
sol = int(int(int(6*x*y, z, 0, 1+x+y), y, 0, sqrt(x)), x, 0, 1)
viewSolid(z, 0+0*x*y, 1 + x + y, 0 + 0*x, sqrt(x), x, 0,1); % here we pass z = 0 in 0*x*y
axis equal; grid on;

% A solid E lies within the cylinder x^2 + y^2 = 1 below the plane z = 4 and above the paraboloid z= 1 - (x^2 + y^2). The density at any point is proportional to its distance from the axis of the cylnder. Find the mass of E. 

syms r z theta K
Ma = int(int(int((K*r)*r, z, 1 -r^2, 4), r, 0, 1) theta, 0, 2*pi)

x = r*cos(theta); y = r*sin(theta); s = sym(4);
fsurf(x,y,1-r^2, [0 1 0 2*pi], 'g', 'EdgeColor', 'none);
hold on
fsurf(1*cos(theta), 1*sin(theta), r, 'y', [0 4 0 2*pi], 'EdgeColor', 'none') % here we pass r = 1, in 1*cos or 1*sin
fsurf(x,y,s, [0 1 0 2*pi], 'b', 'EdgeColor', 'none');
hold on
axis equal; xlabel('x'); ylabel('y'); zlabel('z');
alpha 0.5

% Draw solid enclosed by the paraboloids z = x^2 + y^2 and z = 5-x^2-y^2

syms r z theta
x = r*cos(theta); y = r*sin(theta);
fsurf(z,y,5-4^2, [0 sqrt(5) 0 2*pi], 'g', 'EdgeColor', 'none');
hold on
fsurf(x,y,r^2, [0 sqrt(5), 0 2*pi], 'y', 'EdgeColor', 'none');
axis equal; xlabel('x'); ylabel('y'); zlabel('z');
alpha 0.5
