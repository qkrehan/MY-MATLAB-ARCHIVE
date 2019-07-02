clear all;close all;clc;
for VAR= 750:50:1000
X0=[0;0];	    
[t,X]=ode45(@(t,X)openended(t,X,VAR),[0 300],X0);
X0=[0;0];	
subplot(2,1,1);
plot(t,X(:,1));
xlabel('Time(t)');
ylabel(' angular displacement ');
hold on;
grid on;
subplot(2,1,2); 
plot(t,X(:,2));
xlabel('Time(t)');
ylabel('angular velocity ');
hold on;
grid on;
end