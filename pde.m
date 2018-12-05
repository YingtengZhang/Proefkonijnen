function pde()
clear; clc;
x=0:0.05:1;
t=0:0.05:2;
m=0;
sol=pdepe(m,@pdefun,@pdeic,@pdebc,x,t);
subplot(2,1,1);
surf(x,t,sol(:,:,1));
subplot(2,1,2);  
surf(x,t,sol(:,:,2));
end