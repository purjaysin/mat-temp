%Lagrange's interp test
clc
clear

x=[0 8 16 24 32 40];
y=[14.621 11.843 9.870 8.418 7.305 6.413];
n=6;
p=15;

for i=1:n
    l(i)=1;
    for j=1:n
        if(i~=j)
            l(i)=(p-x(j))/(x(i)-x(j))*l(i);
        end
    end
end

sum=0;
for i=1:n
    sum=sum+y(i)*l(i);
end

sum
