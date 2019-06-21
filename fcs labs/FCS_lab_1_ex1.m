%{  
    FeedBack Control System LAB 1
   Created By: " Muhammad Hamza Zia "
   Section: E    Roll no.: EE-16196
   Lab Teacher: " Sir Muhammad Arshad "
%}

clear all
clc
P=[1 2 1]; % p(s) = s^2 + 2*s + 1 
Q=[1 1];   % q(s) = s + 1
syms s
Polynomial_1 =  s.^2 + 2.*s +1;
Polynomial_2 =  s + 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' ');
r = conv(P,Q,'full'); % p(s) * q(s)
disp(' Convolved Polynomials = ');
fprintf('\b %i \n',r);

A=LagOp({1 2 1});
B=LagOp({1 1});
C=mtimes(A,B);
disp(' ');
disp(C);

c= expand(Polynomial_1*Polynomial_2);
disp(' ');
disp(' Multiplied Polynomials = ');
fprintf('\b %s \n\n',c);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part B %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Roots_P = roots(P);
disp(' Roots of Polynomial P(s) = ');
fprintf('\b %d \n',Roots_P);
Roots_Q = roots(Q);
disp(' Roots of Polynomial Q(s) = ');
fprintf('\b %d \n\n',Roots_Q);

Polynomial_x1 =@(x) x.^2 + 2.*x +1;
Polynomial_x2 =@(x) x + 1;
subplot(2,2,1)
fplot(Polynomial_x1,[-7 7]);
xlabel('Values of s=[-7 7]');
ylabel('magitude of polynomiyal ');
title("Ploynomiyal  s^2 + 2*s +1");
subplot(2,2,3);
fplot(Polynomial_x2,[-7 7]);
xlabel('Values of s=[-7 7]');
ylabel('magitude of polynomiyal ');
title('Ploynomiyal  s + 1');
subplot(2,2,2);
zero_x1 = fzero(Polynomial_x1,-1);
plot(zero_x1,Polynomial_x1(zero_x1),'r*');
xlabel('Values of s= -1');
ylabel('magitude of polynomiyal ');
title('Ploynomiyal  s^2 + 2*s +1');
subplot(2,2,4);
zero_x2 = fzero(Polynomial_x2,-1);
plot(6,Polynomial_x2(6),'r*');
xlabel('Values of s= 6');
ylabel('magitude of polynomiyal');
title('Ploynomiyal  s + 1');

zero1 = feval(Polynomial_x1,[-7:1:7]);
disp(' Results of Polynomial P(s) = ');
fprintf('\b %2d \n',zero1);
zero2 = feval(Polynomial_x2,[-7:1:7]);
disp(' Results of Polynomial Q(s) = ');
fprintf('\b %2d \n',zero2);
disp(' where the value of S is    = ');
fprintf('\b %2i \n',[-7:1:7]);

Roots_Ps = solve(Polynomial_1);
Roots_Qs = solve(Polynomial_2);
disp(' ');
disp(' Roots of Polynomial P(s) = ');
fprintf('\b %d \n',Roots_Ps);
disp(' Roots of Polynomial Q(s) = ');
fprintf('\b %d \n\n',Roots_Qs);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part C %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Value1=polyval(P,-1);
disp(' Value of Polynomial P(s) at (s= -1) = ');
fprintf('\b %2d \n',Value1);
Value2 = polyval(Q,6);
disp(' Value of Polynomial Q(s) at (s= 6) = ');
fprintf('\b %2d \n',Value2);

disp(' ');
Value_1 = feval(Polynomial_x1,-1);
disp(' Results of Polynomial P(s) = ');
fprintf('\b %2d \n',Value_1);
Value_2 = feval(Polynomial_x2,6);
disp(' Result of Polynomial Q(s) = ');
fprintf('\b %2d \n',Value_2);