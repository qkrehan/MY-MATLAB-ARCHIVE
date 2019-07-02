syms x(t) y(t) 
ode1 = diff(x) == 5*x + 3*y;
ode2 = diff(y) == -6*x + 2*y;
odes = [ode1 ; ode2];
s = dsolve(odes)