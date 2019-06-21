A = input('Enter the number of rows :')
B = input('Enter the number of columns :')
X = zeros(A,B)
a=1
b=1
while b<=B
    while a<=A
        X(a,b) = input('Enter the element rowwise :')
        a=a+1;
    end
    a=1;
   b=b+1;
end
