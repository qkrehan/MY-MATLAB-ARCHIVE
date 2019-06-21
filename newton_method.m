% Newton-Raphson


" TEST PROBLEM "

" f(x) = exp(x)- x^3 + 10 "
syms f(x) f1(x)
f(x) = exp(x)- x^3 + 10 ;

f1(x) = diff(f(x)) ;

x0 = input('Enter value of initial approximation of root i.e. x0 : ');
fprintf('The value you entered of x0 is : %d. \n', x0);
stopping_criteria = input('Enter the value of stopping_criteria  :');
i = 0;
while(1)
     i = i+1;    
     x0 = x0 - (f(x0)/f1(x0)) ;
     double(f(x0));
     
     if abs(f(x0))<= stopping_criteria
         break
     end
end
   
fprintf('The number of iteration : %d. \n', i);
fprintf('The APPROXIMATED root   : %d. \n', double(x0));
fprintf('The value of f(x) is : %d. \n', double(f(x0)));