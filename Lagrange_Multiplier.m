% Initialization: 
syms x y lam real 
f= x^2+2*y^2 %input('Enter f(x,y) to be extremized : '); 
g= x^2+y^2-1 %%input('Enter the constraint function g(x,y) : '); 

% Computing Partial derivatives and finding the critical points:
F=f-lam*g
Fx=diff(F,x)
Fy=diff(F,y)
[ax,ay,alam]=solve([Fx,Fy,g],x,y,lam) 
ax=double(ax)
ay=double(ay)
%% Collecting critical points
r=1; 
for k=1:1:size(ax) 
if((imag(ax(k))==0)&&(imag(ay(k))==0))    
    ptx(r)=ax(k); 
    pty(r)=ay(k); 
      r=r+1; 
end
end

% Computing the values at the critical points
ax=ptx
ay=pty
T = subs(f,{x,y},{ax,ay})
T=double(T)
epx=3 
epy=3 
figure (1)
for i = 1:length(T)
D=[ax(i)-epxax(i)+epx ay(i)-epy ay(i)+epy] 
fprintf('The critical point (x,y) is (%1.3f,%1.3f).',ax(i),ay(i)) 
fprintf('The value of the function is %1.3f\n',T(i)) 
ezcontour(f,D) 
holdon 
h = ezplot(g,D); 
set(h,'Color',[1,0.7,0.9]) 
plot(ax(i),ay(i),'k.','markersize',15+2*i) 
end

% Finding the Maximum and minimum at those points
f_min=min(T)
f_max=max(T) 

