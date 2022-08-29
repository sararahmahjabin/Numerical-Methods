%{
2.(b) Perform 12 iterations of Newton’s Method on f(x) with the initial guess
x0 = 1. Show the new estimate xn and f(xn) at each step.
%}

clc
syms f(x) g(x) x x0 a b

x0=4;

f(x)= 4*x-1-sin(x);
dfdx= diff(f(x),x,1);
g(x)=dfdx;  

   for i = 1:12
        
        xnew = double((x0 - ((double(f(x0)))/(double(g(x0))))));
        disp(['New estimate : ',num2str(xnew)])
        r=(double(f(xnew)));
        disp(['f(x) of new estimate : ',num2str(r)])
        
        x0 = xnew;
        
   end




