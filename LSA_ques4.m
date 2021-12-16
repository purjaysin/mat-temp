%Least square approximation Ques 4%
clc
clear
x=[0.1 0.2 0.4 0.5 1 2];
y=[21 11 7 6 5 6];
N=length(x);
M=[sum(x) sum(1./sqrt(x)); sum(1./sqrt(x)) sum(1./(x.^2))];
B=[sum(y.*x.^(1/2)); sum(y./x)];
L=inv(M)*B;

f=L(1)*sqrt(x)+ L(2)*(1./x)
plot(x,y,'*r')
hold on
plot(x,f,'b-')

