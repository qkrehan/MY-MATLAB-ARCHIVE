function dXdt=openended(t,X,VAR)
K= 300;     		
J=750;     		
B=VAR; 			
u = 60;     			
dXdt(1,1)=X(2);
dXdt(2,1)=(-K/J)*X(1)-(B/J)*X(2)+(-1/J)*u;
