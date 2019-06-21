syms x
string_from_input=input(' Enter the Expression  :     ');
f = sym(string_from_input);
diff(f,x,2)


int(f,x)
