clear  close Clc

X0=[0 0];
[t,X]=ode45('RLC1',[0 500],X0);

subplot(2,1,1);  
plot(t,X(:,1));  
legend('Vc');  
grid on;  
title('Vc');

subplot(2,1,2);  
plot(t,X(:,2),'r'); 
legend('i');
grid on;  
title('i');