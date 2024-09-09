clc
clear all
format compact % removes blank space from the output
syms x y
z = input('Enter the two dimensional function f(x,y):');
x1 = input('Enter the x value at which the derivative has to be evaluated:');
y1 = input('Enter the y value at which the derivative has to be evaluated:');

% Slope calculation
z1 = subs(subs(z,x,x1),y,y1)  ;
ezsurf(z, [x1-2 x1+2]) %plotting a surface
f1 = diff(z,x) ;
slopex = subs(subs(f1,x,x1), y,y1);

% Visualisation of the plane in which the partial derivative is sought
[x2, z2] = meshgrid(x1-2: 0.25: x1+2, 0:0.5:10); % assigning an array i.e. domain for x2 and z2
y2 = y1* ones(size(x2)); % creates an array 
hold on
h1 = surf(x2, y2, z2);
set(h1, 'FaceColor', [0.7, 0.7,0.7], 'EdgeColor', 'none')

% The Tangent Line
t = linspace(-1,1);
x3 = x1 + t; % calculates x coordinate for the tangent
y3 = y1* ones(size(t));
z3 = z1 + slopex*t;
line(x3, y3, z3, 'color', 'red', 'linewidth', 2)
