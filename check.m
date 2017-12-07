function dx=check(t,x,flag,a)
m=size(a,2);
for i=1:m
    dx(i)=a(i,:)*x(:,1);
end
dx=dx';
