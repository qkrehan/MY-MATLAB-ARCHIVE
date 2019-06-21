function dXdt=RLC1(t,X,VAR)

L1=1;
L2=1;
e=60;
R1=10;
R2=10;
C=VAR;
dXdt(1,1)= -(R1/L1)*X(1)-(1/L1)*X(3)+(e/L1);
dXdt(2,1)= -(R2/L2)*X(2)+(1/L2)*X(3);
dXdt(3,1)= (1/C)*X(1)-(1/C)*X(2);