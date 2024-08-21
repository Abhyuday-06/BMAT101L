clc
close all
syms x real
f = input('Enter the function f(x):');
fx = diff(f, x);
c = solve(fx);
cmin = min(double(c));
cmax = max(double(c));
ezplot(f, [cmin-2, cmax + 2])
hold on
fxx = diff(fx, x);
for i = 1:1:size(c)
    T1 = subs(fxx, x, c(i));
    T3 = subs(f, x, c(i));
    if (double(T1)==0)
        sprintf('The point x is %d inflexion point', double (c(i)))
    else
        if (double(T1) < 0)
    sprintf('The maximum point of x is %d', double(c(i)))
    sprintf('The value of the function is point is %d', double(T3))
        else
sprintf('The minimum point x is %d', double(c(i)))
sprintf('The value of the function is %d', double(T3))
        end 
    end
    plot(double(c(i)), double(T3), 'r*', 'markersize', 15)
end

h = ezplot(fx, [cmin-2, cmax+2]);
set(h, 'color', 'r')
hold on

e = ezplot(fxx, [cmin-2, cmax +2]);
set(e, 'color', 'g')
hold off
    