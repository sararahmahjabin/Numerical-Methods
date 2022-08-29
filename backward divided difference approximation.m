%{
Use backward divided difference approximation of the first derivative of f(x) = 3e2.5x+
x2 to calculate the derivative at x0=2.12, x1, x2 with a step size of 2. Print the BDD result
and use plot function to display the values of x (i.e. x0, x1, x2) and their corresponding
values of y by x-axis and y-axis, respectively.
%}
clc
syms f(x)
syms x c m n x_0 z y_0 y_1 y_2
f(x)=3*exp(2.5*x)+x^2;
x_0=2.12;
x_1=x_0-2;

c=double(f(x_0)-f(x_1));

c=c/2; %approximate value

disp(['BDD result for x_1 :',num2str(c)])

x_2=x_1-2;

z=double(f(x_1)-f(x_2));

z=z/2; %approximate value

disp(['BDD result for x_2 :',num2str(z)])
y_0=double(f(x_0));
y_1=double(f(x_1));
y_2=double(f(x_2));


X=[x_0;x_1;x_2]

Y=[y_0;y_1;y_2]

plot(X,Y)




