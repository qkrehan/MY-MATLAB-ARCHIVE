
clear all; close all; clc;
for VAR=5:10:45
X0=[0;0];
[t,X]=ode45(@(t,X)mass_spring(t,X,VAR),[0 400],X0);
hold on
title('Mass spring system');
subplot(1,2,1);
plot(t,X(:,1));
xlabel('Time(t)');
ylabel('Position');grid;
hold on
subplot(1,2,2);
plot(t,X(:,2));
xlabel('Time(t)'); ylabel('Speed');grid;
end


