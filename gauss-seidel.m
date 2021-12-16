%gauss seidel 
format short
clc
clear 

A= [10 8 -3 1; 2 10 1 -4; 3 -4 10 1; 2 2 -3 10];
B= [16; 9; 10; 11];
n=4;
tol=0.00001;
x= zeros(1,n);

error=inf;
itr=0;
while(error>tol)
    x_old=x;
    for i=1:n
        sum=0;
        for j=1:i-1
            sum=sum+A(i,j)*x(j);
        end
        for j=i+1:n
            sum=sum+A(i,j)*x_old(j);
        end
    x(i)=(1/A(i,i))*(B(i)-sum);
    end;
    itr=itr+1;
    error=abs(x-x_old);
end

itr
x

    
