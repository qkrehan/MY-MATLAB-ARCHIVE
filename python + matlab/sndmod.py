def combination(n,r):
    def factorial(num):
        if num == 1:
            return 1
        else:
            return num*factorial(num-1) 
    return factorial(n)/(factorial(r)*factorial(n-r))