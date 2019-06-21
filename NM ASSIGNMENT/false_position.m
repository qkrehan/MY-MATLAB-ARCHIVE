%{
  false position Method
%}

" TEST PROBLEM "

" f(x) = exp(x)- x^3 + 10 "
syms f(x) 
f(x) = exp(x)- x^3 + 10 ;
stopping_criteria= input('Enter stooping criteria   :');
fprintf('stopping criteria : %d. \n',stopping_criteria);
a = input('Enter value of "a" i.e. f(a) = -ve ');
b = input('Enter value of "b" i.e. f(b) = +ve ');
check= f(a)*f(b);
if check >= 0
    "Enter correct values"
    return
end

i=0;
while(1)
   i = i+1;
    c = ((a*f(b))-(b*f(a)))/(f(b)-f(a));
    
    if f(c)<0
        a=c;
    else
        b=c;
    end
    
    if (abs(f(c)) <= stopping_criteria)
        break
    end
end
fprintf('The number of iteration : %d. \n', i);
fprintf('The APPROXIMATED root   : %d. \n', double(c));
fprintf('The value of f(x) is : %d. \n', double(f(x0)));

