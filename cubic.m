clc
syms v(t) t a0 a1 a2 
syms v_new(t) a_0 a_1 a_2 a_3



%for quadratic
eqn1=a0+a1*(8)+a2*(8)^2 == 227.04;
eqn2=a0+a1*(36)+a2*(36)^2 == 1004.597;
eqn3=a0+a1*(65.75)+a2*(65.75)^2== 1902.249;
sol= solve([eqn1,eqn2,eqn3], [a0,a1,a2]);
a0 =double(sol.a0);
a1 =double(sol.a1);
a2 =double(sol.a2);
v(t)=a0+a1*(t)+a2*(t)^2;
x_old=double(v(16));


%for cubic
eqn_1=a_0+a_1*(8)+a_2*(8)^2+a_3*(8)^3 == 227.04;
eqn_2=a_0+a_1*(36)+a_2*(36)^2+a_3*(36)^3 == 1004.597;
eqn_3=a_0+a_1*(65.75)+a_2*(65.75)^2+a_3*(65.75)^3 == 1902.249;
eqn_4=a_0+a_1*(95.5)+a_2*(95.5)^2+a_3*(95.5)^3 == 2799.901;
sol= solve([eqn_1,eqn_2,eqn_3,eqn_4], [a_0,a_1,a_2,a_3]);
a_0 =double(sol.a_0);
a_1 =double(sol.a_1);
a_2 =double(sol.a_2);
a_3 =double(sol.a_3);

v_new(t)=a_0+a_1*(t)+a_2*(t)^2+a_3*(t)^3;
x_new=double(v_new(16));

disp(['Velocity of 16 second is ',num2str(x_new),' m/s'])

E=double(((x_new-x_old)/x_new)*100);
E=abs(E);
disp(['Absolute relative error is ',num2str(E),' %'])