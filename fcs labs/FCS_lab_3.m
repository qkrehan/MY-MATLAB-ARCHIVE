%{  
    FeedBack Control System LAB 3
   Created By: " Muhammad Hamza Zia "
   Section: E    Roll no.: EE-16196
   Lab Teacher: " Sir Muhammad Arshad "
%}
clear all;close all;clc;
for VAR= 0.001:0.5:2.001
X0=[0;0;0;0];	% (Initial xb, Vb, xa, Va)
[t,X]=ode45(@(t,X)multiple_element_sys(t,X,VAR),[0 300],X0);
subplot(2,2,1);
plot(t,X(:,1));
xlabel('Time(t)');
ylabel('Position xb ');
hold on;
subplot(2,2,2); 
plot(t,X(:,2));
xlabel('Time(t)');
ylabel('speed Vb ');
hold on;
subplot(2,2,3)
plot(t,X(:,3));
xlabel('Time(t)');
ylabel('Position xa');
hold on;
subplot(2,2,4); 
plot(t,X(:,4));
xlabel('Time(t)');
ylabel('Speed Va');
end