%{
2.(a) Perform 13 iterations of the Bisection Method on f(x) using the end-points
of the interval as initial data. Show the new estimate xn and f(xn) at each step.
%}
clc

syms  f(x) h x E i xmold xu xl  xm

xmold=0;
 
xu =2 ;
x_1 =0;

f(x)=  4*x-1-sin(x);

 if f(x_1) * f(xu) <0 
    for j = 1:13
        
        xm = (x_1 + xu) / 2; 
        if f(x_1) * f(xm) <0 
           xu= xm; 
            disp(['New estimate : ',num2str(xm)]);
            h=double(f(xm));
            disp(['f(x) of New estimate : ', num2str(h)]);
        elseif f(x_1) * f(xm) >0 
            x_1 = xm;
            disp(['New estimate : ', num2str(xm)]);
            h=double(f(xm));
            disp(['f(x) of New estimate : ', num2str(h)]);
            
        elseif f(x_1) * f(xm) == 0  
            disp(['Root : ', num2str(xm)]);
            h=double(f(xm));
            disp(['f(x) of New estimate : ', num2str(h)]);
        end
       
        xmold=xm;
        
   
    end
end
   
   