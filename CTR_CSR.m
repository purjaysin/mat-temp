%Composite Trapezoidal rule Q4%
clc
clear
syms x;
y=atan(1+x^2);
q=inline(y);
d=sqrt(1+(diff(q(x)))^2);
f=inline(d);
ll=0;
ul=2;
n=4;
sum=0;
h=(ul-ll)/n;
for i=1:1:n-1
    x=ll+h*i;
    sum=sum+2*f(x);
end
sum=sum+f(ll)+f(ul);
sum*(h/2)


%Simpson rule Q4%
clc
clear
syms x;
y=atan(1+x^2);
q=inline(y);
d=sqrt(1+(diff(q(x)))^2);
f=inline(d);
ll=0;
ul=2;
n=8;
sum=0;
h=(ul-ll)/n;
for i=1:n-1
    x=ll+h*i;
    if(rem(i,2)==0)
        sum=sum+2*f(x);
    else
        sum=sum+4*f(x);
    end
end
(sum+f(ll)+f(ul))*(h/3)
