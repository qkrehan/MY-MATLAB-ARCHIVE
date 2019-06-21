%{
syms x
eqn = sin(x) == 1;
solx = solve(eqn,x)
%} 
syms x
eqn = x^2+2*x+4 == 0;
solx = solve(eqn,x)

syms y x 
y = 2*x^4 + 1;
diff(y,2)

syms x y z
eq1 = x +3*y +z == 0
eq2 = x +3*y + 5*z == 0
eq3 = 2*x + 5*y +z == 0
solve([eq1,eq2,eq3],[x y z])











