%Least square approximation Ques 3%
clc
clear
x=[2 3 4 5];
X=log(x);
y=[27.8 62.1 110 161];
Y=log(y);
N=length(x);
M=[N sum(X); sum(X) sum(X.^2)];
B=[sum(Y); sum(X.*Y)];
L=inv(M)*B;

f=exp(L(1))*x.^L(2)
plot(x,y,'*r')
hold on
plot(x,f,'b-')

