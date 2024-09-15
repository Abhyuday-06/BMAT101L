clc 
clear all 
close all 
format compact
%
syms = x, y real
f = input('Enter the function f(x,y):');
fx = diff(f,x);
fy = diff(f,y);
[ax, ay] = solve(fx, fy);
fxx = diff(fx, x);
D = fxx * diff(fy,y) - diff(fx, y)^2 ;

% Collectuing critical points %

r = 1;
for k = 1:1: size(ax)
     if ((imag(ax(k)) == 0) && (imag(ay(k)) == 0))
         ptx(r) = ax(k);
         pty(r) = ay(k);
         r = r + 1;
     end 
end
% Visualising the function
a1 = max(double(ax));
a2 - min(double(ax));
b1 = max(double(ay));
b2 - min(double(ay));
ezsurf(f, [a2 - 0.5,a1+0.5, b2-0.5, b1 + 0.5])
colormap('summer');
shading interp 
hold on

% Finding the maximum and  minimum values of the function and their
% visualisation

for r1 = 1:1:(r-1)
    T1 = subs(subs(D, x, ptx(r1)), y, pty(r1));
    T2 = subs(subs(fxx, x, ptx(r1)), y, pty(r1));
    if (double(T1) == 0)
        sprintf('The point (x,y) is  (%d, %d) and need further investigation', double (ptx(r1), double (pty(r1))))
    elseif (double(T1) < 0)
        T3 = subs(subs(f,x,ptx(r1), y,pty(r1)))
        sprintf('The point (x,y) is (%d, %d) a saddle point', double(ptx(r1), (pty(r1))))
        plot3(double(ptx(r1)), double(pty(r1)), double(T3), 'r+', 'markersize', 30);
    else
        sprintf('The minimum point(x ,y) is (%d, %d)', double(ptx(r1), double(pty(r1))))
        T3 = subs(subs(f,x,ptx(r1)), y, pty(r1))
        sprintf('The value of the function is %d', double(T3))
        plot3(double(ptx(r1)), double(pty(r1)), double(T3),'m*', 'markersize', 30);
    end
end
hold off;

    