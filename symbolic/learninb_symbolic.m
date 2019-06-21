%{
syms x y z f(x,y,z)
f(x,y,z) = x^2 + 2*y +z
f(1,2,3)
%}

%{
syms f(x,y) x y
f(x,y) = input('Enter the function : ')

diff(f(x,y),x)
diff(f(x,y),y)
%}

%{

i=15;
fprintf('The number of iteration : %f \n', i)

%}


