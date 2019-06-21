
% Solving non-linear equations using Bisection Method

" TEST PROBLEM "

" f(x) = exp(x)- x^3 + 10 "
syms f(x) 
f(x) = exp(x)- x^3 + 10 ; % Given test problem
stopping_criteria= input('Enter stopping criteria   ');
fprintf('stopping criteria : %d. \n',stopping_criteria);
a = input('Put valur of "a" i.e. f(a)= -ve  ');
b = input('Put value of "b" i.e. f(b)= +ve  ');

rt_bound = f(a)*f(b);
if rt_bound >= 0
    "Enter the correct values of a and b such that f(a)*f(b)"
    return
end
i = 0;
while (f(a)*f(b) < 0)
    i = i+1;
  c = (a+b)/2;
  if f(c) < 0 
  a = c;
  else
  b = c;
  end
  if abs(f(c))<= stopping_criteria
  break  
  end
end
fprintf('The Required Root is : %d. \n',double(c));
fprintf('The number of Iterations: %d. \n',double(i));
fprintf('The Value of f(x) : %d. \n',double(f(c)));
