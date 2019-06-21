%% 
syms x
eqn = sin(x) == 1;
solx = solve(eqn,x)
 
%% 
syms x
eqn = x^2+2*x+4 == 0;
solx = solve(eqn,x)

%% solving  

syms y x 
y = 2*x^4 + 1;
diff(y,2)

%%

syms u v
eqns = [2*u + v == 0, u - v == 1];
s = solve(eqns, [u v])



%% 

syms x
eqns = [3*x+2, 3*x+1];
solve(eqns, x)

%% 

solve(x + 1 == 5, x)

%%
syms x y 
eqns01 = input('Input the first equation :')
eqns02 = input('Input the Second equation :')
eqns = [eqns01, eqns02];
[u,v]=solve(eqns)
%%


