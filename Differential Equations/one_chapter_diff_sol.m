%{
 analytical solutions of differential equations

%}

% solving dy/dt = a*y 
%{
syms a y(t)
eqn = diff(y,t) == a*y;
dsolve(eqn)

%}
%{

%}
syms  y(x)
eqn = y*(exp(x) + 1) - exp(x)*diff(y,x) == 0;
dsolve(eqn)
