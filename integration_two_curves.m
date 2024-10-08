clc 
clear all
close all
syms x
y1 = input("Enter the y1 region value:")
y2 = input("Enter the y2 region value:")
t = solve(y1-y2)
po = double(t)
poi = sort(po) % point of intersection will be sorted 
n = length(poi) % no of intersection points
m1 = min(poi)
m2= max(poi)

ez1 = ezplot(y1, [m1-1, m2+1])
hold on
TA = 0
ez2= ezplot(y2, [m1-1, m2+1])
if n>2
    for i=1:n-1
        A = int(y1-y2, poi(i), poi(i+1))
        TA = TA + abs(A)
        x1 = linspace(poi(i), poi(i+1))
        yy1 = subs(y1, x, x1)
        yy2 = subs(y2, x, x1)
        
        % Creating a polygon
        xx = [x1, fliplr(x1)]
        yy = [yy1, fliplr(yy2)]
        fill(xx,yy, 'g')
        grid on
    end
else
    
    A = int(y1-y2, poi(1), poi(2))
    TA = abs(A);
    x1 =linspace(poi(1), poi(2));
    yy1 = subs(y1, x, x1)
    yy2 = subs(y2, x, x1)
    xx = [x1, fliplr(x1)]
    yy = [yy1, fliplr(yy2)]
    fill(xx, yy, 'g')
end
