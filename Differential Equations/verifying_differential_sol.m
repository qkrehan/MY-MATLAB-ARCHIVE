syms y(x)
ode = diff(y,x,2) + diff(y,x,1) -2*y == 0;
cond1 = y(0) == 2 ;
cond2 = diff(y,x) == 0;
cond2 = subs(cond2,x,0);
conds = [cond1 cond2];
ySol(t) = dsolve(ode,conds);
ySol(t) = simplify(ySol(t)) 