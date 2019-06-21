%{  
    FeedBack Control System LAB 1
   Created By: " Muhammad Hamza Zia "
   Section: E    Roll no.: EE-16196
   Lab Teacher: " Sir Muhammad Arshad "
%}
clear all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A = [ 1 6 11 6];
% B = [ 2 5 3 6];
% syms s
% a = s^3 + 6*s^2 + 11*s + 6;
% b = 2*s^3 + 5*s^2 + 3*s + 6;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part B %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B = [ 1 2 3 ];
A = conv([1 1],[1 1],'full');
syms s
b =  s^2 + 2*s + 3;
a = (s+1)^2;
[r,p,k] = residue(B,A);
disp('############################# Solution of transfer function at part  ##########################');
disp(' ');
disp(' Residues of Partial Fraction  = ');
fprintf('\b %2d \n',r);
disp(' Poles of Partial Fraction     = ');
fprintf('\b %2d \n',p);
disp(' Constants of Partial Fraction = ');
fprintf('\b %2d \n',k);
disp(' ');
pretty(partfrac(b/a));