clear all
clc
syms x
f = input("Enter the function f(x):")
a = input('enter the lower limit of x:')
b = input('enter the upper limit of x:')
n = input("no. of intervals:") % No. of rectangles
z = int(f,a,b) % direct integration- to check the value
value = 0;
 dx = (b-a)/n
 for k = 1:n
     c = a+ k*dx
     d = subs(f,x,c)
     value = value + d %checking value manually
 end
 ivalue = dx* value
 ezplot(f, [a b])
 rsums(f,a,b)