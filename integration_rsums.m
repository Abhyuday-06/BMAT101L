syms x 
f=input('enter the function f(x):'); 
a=input('enter lower limit of x '); 
b=input('enter the upper limit of x'); 
n=input('number of intervals'); 
z=int(f,a,b) % direct evaluation

% Initialization:
value = 0; 
dx = (b-a)/n; 
% sum of the function values at all the right points

for k=1:n
    c = a+k*dx; 
    d=subs(f,x,c); 
    value = value + d; 
end 

% value of the sum* length of the sub interval is the approx. value of the integral
ivalue = dx*value 
ezplot(f,[a b]) 

% Taking mid point function values
rsums(f, a, b) 