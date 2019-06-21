% Gauss-Siedle Method
C=input('How many columns are there in P?  ');
    R=input('How many rows are there in P?  ');
    A=zeros(R:C);
     r = 1;
     c = 1;
     while r<=R
         fprintf('The Row number : %d. \n', r);
      while c<=C
          A(r,c)= input('Input Values Column wise ');
          c=c+1;
      end
         r=r+1;
         c=1;  
     end
     
     
      " THE MATRIX ENTERED IS "
        
      A
        
      " Enter THE MATRIX OF CONSTANTs i.e b  "
      r=1;
      b = zeros(r,1);
      while r<=R
       b(r,1) = input(' Enter the values of Matrix B ');   
       r=r+1;
      end
      " THE MATRIX OF COEFFICIENTS is : "
      
      b
      
      "The initial Assumed solution "
      
        r=1;
      x = zeros(r,1);
      while r<=R
       x(r,1) = input(' Enter the values of Matrix x ');   
       r=r+1;
      end
      
x


n=size(x,1);
normVal=Inf; 
q=input('Enter the Value of tolerance :');
tol=q;
GaussItr=0;
plotGauss=[];
while normVal>tol
    x_old=x;
    
    for i=1:n
        
        sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    GaussItr=GaussItr+1;
    normVal=norm(x_old-x);
    plotGauss=[plotGauss;normVal];
end
fprintf('Solution of the system is : \n%f\n%f\n%f\n%f\n%f in %d iterations',x);
fprintf('the number of iterations  : %d ',GaussItr);


