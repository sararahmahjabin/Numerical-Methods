%{
Use Newton-Raphson method to estimate the root of e
x−3x2=0. Conduct 10 iterations assuming that the root exists in the interval of [3, 5]. Show the result in
a 10×4 matrix that contains 4 columns such as: Iteration No., Root (xi), Absolute relative approximate
error (|Ɛa|), and No. of significant digits.
%}

f = @(x) exp(x)-(3*x^2);

fprime=@(x)(exp(x) - 6*x);

iter = 2;
x_old = 4;
matrix = zeros(10,4);
matrix(1,1) = 0;
matrix(1,2) = 4;
matrix(1,3) = NaN;
matrix(1,4) = NaN;

while iter<=11
    x_new = x_old - f(x_old)/fprime(x_old);
    matrix(iter,1) = iter-1;
    matrix(iter,2) = x_new;
    
    eror = abs((abs(x_new-x_old)/x_new)*100);
    
    matrix(iter,3) = eror;
    sig = 0;
    if eror>5
        sig=0;
    

    elseif eror>0.5 && eror<=5
        sig=1;
    

    elseif eror>0.05 && eror<=0.5
        sig=2;
    

   elseif eror>0.005 && eror<=0.05
        sig=3;
    

   elseif eror>0.0005 && eror<=0.005
        sig=4;
    

   elseif eror>0.00005 && eror<=0.0005
        sig=5;
  

   elseif eror>0.000005 && eror<=0.00005
    sig=6;
    end  
    matrix(iter,4) = sig;
    
    x_old = x_new;
    iter=iter+1;
end

disp(matrix)