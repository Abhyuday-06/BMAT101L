clc 
clear all
syms x y z
vol = 8*int(int(sqrt(1-x^2-y^2), y, 0, sqrt(1-x^2)), x, 0, 1)
viewSolid(z, 0+0*x*y, sqrt(1-x^2-y^2), y, 0 + 0*x, sqrt(1-x^2), x, 0, 1); 
axis equal;
grid on;
