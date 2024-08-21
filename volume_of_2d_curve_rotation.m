clc
clear all
close all
x = 0:0.1:4;
%y = x.^2;

% y= x.^3;
%y = 2*sin(x);
%y = 2\x;
%y = sqrt(x);
% y = [1 2 3 2 1];
y = asin(x)

[X,Y,Z] = cylinder(y, 300);
% surf(X,Y,Z)
h = 50; 
Z = Z*h;
figure(1)
surf(X, Y, Z)
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');

figure(2)
surf(Y, X, Z)
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');

figure(3)
surf(Z, X, Y)
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');

