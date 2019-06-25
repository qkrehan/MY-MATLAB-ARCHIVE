%%
x  = [1 2 3 4 5 6 7 8 9];
y  = [7 8 9 4 5 6 1 2 3];
fn1 = tf(x,y)
%%
syms x y
f = 1/sqrt(x);
laplace(f)
%%
syms s x
x = ilaplace(1/s)
y = laplace(x)

%%
q = ilaplace(sym(1))
class(q)

%%
x = 7;

isvarname('double')
who
%%
isvarname('double')
%% 
g = tf([ 1 2 3],[4 5 6])
[a b] = tfdata(g)




