%{  
    FeedBack Control System LAB 1
   Created By: " Muhammad Hamza Zia "
   Section: E    Roll no.: EE-16196
   Lab Teacher: " Sir Muhammad Arshad "
%}
clear all;clc;
Matrix_A = magic(6);
Matrix_x = [ 0 : 0.1 :1.1 ];
Matrix_y = [ 10 : 21 ];
disp('############################################################ Part C #####################################################')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% disp(' Matrix A = ');disp(Matrix_A);
% disp(' Row 4 of Matrix A created by magic command = ');
% disp(Matrix_A(4,:));

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part B %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(' Matrix X = ');fprintf(' %f ',Matrix_x(:,:));
disp(' ');disp(' ');disp(' Matrix y = ');
fprintf(' %i ',Matrix_y(:,:));disp(' ');result_1 = Matrix_x.*Matrix_y;disp(' ');
disp(' Result of element wise Matrix X and Matrix y  Multiplication= ');fprintf(' %f ',result_1);
disp(' ');result_2 = Matrix_x(1,:)./Matrix_y(1,:);disp(' ');
disp(' Result of element wise Matrix X and Matrix y  Division= ');
fprintf(' %f ',result_2);disp(' ');disp(' ');
disp(' Result of Matrix X and Matrix y  Multiplication = ')
disp('                            " Matrix x and y can not multiply as rows of x is not equal to  columns of y." ');disp(' ');
disp(' Result of Matrix X and Matrix y  Division= ');
disp('"                           " Matrix x and y can not divided as x is not a square matrix." ')

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Part C %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % 
% disp('Random Matrix 4 by 5 =');
% Random_Matrix = randi( [-8 0], 4, 5); disp(Random_Matrix);