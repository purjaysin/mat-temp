%Newton's divided difference interp
clc
clear
x = [1 1.5 2 2.5];
y= [2.7183 4.4817 7.3891 12.1825];
n=4;
p=2.25;
DD=zeros(n,n);
for i=1:n
    DD(i,1)=y(i);
end

for j=2:n
    for i=1:(n-j+1)
        num=DD(i+1,j-1)-DD(i,j-1);
        den=x(i+j-1)-x(i);
        DD(i,j)=num./den;
    end
end
for i=1:n-1
    P(i)=prod(p-x(:,1:i))*DD(1,i+1);
end

Y=y(1)+sum(P);

Y   
