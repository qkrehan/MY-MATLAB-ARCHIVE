function dXdt=RLC(t,X)
e=60;  R=10;  L=1;  C=10
dXdt(1,1)=(-1/R*C)*X(1)+(1/C)*X(2);
dXdt(2,1)=(-1/L)*X(1)+(1/L)*e;
