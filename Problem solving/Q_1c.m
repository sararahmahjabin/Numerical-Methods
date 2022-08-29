%{
1.(c) Find the velocity at t=16 seconds using the Newton Divided Difference
method for quadratic interpolation and calculate absolute relative error (ε a)
using MATLAB.
%}

clc

%for linear equation
t0=8;
vt0=227.04;
t1=36;
vt1=1004.597;

b0=vt0;

b1=double((vt1-vt0)/(t1-t0));

v(t)=b0+b1*(t-t0);
vold=double(v(16));


%for quadratic equation
t0=8;
vt0=227.04;
t1=36;
vt1=1004.597;
t2=65.75;
vt2=1902.249;

b0=vt0;

b1=double((vt1-vt0)/(t1-t0));

b2=double((((vt2-vt1)/(t2-t1))-((vt1-vt0)/(t1-t0)))/(t2-t0));

v(t)=b0+(b1*(t-t0))+(b2*(t-t0)*(t-t1));
vnew=double(v(16));

disp(['Velocity of 16 second : ',num2str(vnew),' m/s'])

Error=double(((vnew-vold)/vnew)*100);
Error=abs(Error);
disp(['Absolute relative error : ',num2str(Error),'%'])
