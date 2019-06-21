
clear all;
close all;
clc;
for VAR= 5:5:25
X0=[0 0 0];
[t,X]=ode45(@(t,X) RLC1(t,X,VAR),[0 500],X0);
hold on;
subplot(1,3,1);plot(t,X(:,1)); 
xlabel('Time(t)');
ylabel('Voltage Vc');
title('Voltage of Capacitor');
hold on;
subplot(1,3,2);plot(t,X(:,2)); 
xlabel('Time(t)');
ylabel('Current I1 ');
title('Current Of Inductor 1');
hold on;
subplot(1,3,3);plot(t,X(:,3)); 
xlabel('Time(t)');
ylabel('Current I2 ');
title('Current Of Inductor 2');
end