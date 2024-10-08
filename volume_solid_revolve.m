% VOlume of solid generated by revolving a curve
% AIm: To find the volume and visualise the solid generated by revoolving a
% curve

clc 
clear all 
syms x
y1 = x.^3;
y2 = 3*x.^2+1;
l1 = 0;
ul = 4;
vol = int(pi * (y1-y2)^2, l1, ul)

% Visualising the solid

 x= linspace(1,4);
 y1 = x.^3;
 y2 = 3*x.^2 + 1;
 
 % X = [x, fliplr(x)];
 % Y = [y1, fliplr(y2)];
  % fill(X, Y, 'b')
  [U V W] = cylinder(y1-y2)
  figure(1)
  surf(U, V, W)
  figure(2)
  surf(V, W, U)
  figure(3)
  surf(W, U, V)
  