clear all
close all
clc

X0=[0;0];	% (Initial xb, Vb, xa, Va)

[t,X]=ode45('openended',[0 500],X0);

figure;
subplot(2,1,1); 
plot(t,X(:,1));
xlabel('Time(T)')
ylabel('angular displacement')
subplot(2,1,2)
plot(t,X(:,2),'r');
xlabel('Time(t)');
ylabel('angular velocity');
title('Rotaional System');
grid;
