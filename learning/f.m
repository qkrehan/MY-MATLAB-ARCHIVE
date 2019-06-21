function dydt = f(t,y)
a=1;
b=4;
c=7;
k=78;
I=6;
dydt(1,1) = (a+b+c)*y(1) + k*y(2) + I*y(3)
 dydt(2,1)=k*y(2) + a*y(1)
 dydt(3,1)=I*y(3) + b*y(1);
end