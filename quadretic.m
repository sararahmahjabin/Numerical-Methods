
clc

%linear
t0=8;
v_t0=227.04;
t1=36;
v_t1=1004.597;

b0=v_t0;

b1=double((v_t1-v_t0)/(t1-t0));

v(t)=b0+b1*(t-t0);
v_old=double(v(16));


%quadratic
t0=8;
v_t0=227.04;
t1=36;
v_t1=1004.597;
t2=65.75;
v_t2=1902.249;

b0=v_t0;

b1=double((v_t1-v_t0)/(t1-t0));

b2=double((((v_t2-v_t1)/(t2-t1))-((v_t1-v_t0)/(t1-t0)))/(t2-t0));

v(t)=b0+(b1*(t-t0))+(b2*(t-t0)*(t-t1));
v_new=double(v(16));

disp(['Velocity of 16 second is ',num2str(v_new),' m/s'])

E=double(((v_new-v_old)/v_new)*100);
E=abs(E);
disp(['Absolute relative error is ',num2str(E),' %'])
