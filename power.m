%power method test
clc
clear

A=[2 -1 0; -1 2 -1; 0 -1 2];
x=[1;1;1];
n=3;
tol=0.01;
error=1;
while error>tol
    x_old=x;
    y=A*x;
    e_value=max(abs(y));
    e_vector=y./e_value;
    x=e_vector;
    error=abs(sum(x_old-x));
end

x
e_value
