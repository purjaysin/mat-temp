%SOR method Ques3(a)%
clc 
clear()
n=4;
x1=zeros(1,n);

A=[10 8 -3 1 16; 2 10 1 -4 9; 3 -4 10 1 10; 2 2 -3 10 11];
x1 = [0 0 0 0];
tol = 0.00001;
N = 100;
w=1.2;

for a=1:N
   e=0;

   for i=1:n
      s = 0;
      for j=1:n
        s = s-A(i,j)*x1(j);
      end
      s = w*(s+A(i,n+1))/A(i,i);
      if abs(s) > e
         e=abs(s);
      end
      x1(i) = x1(i) + s;
   end
  
   if e <= tol 
      break;
   
   end
end

x1
