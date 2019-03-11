function [it x]=SecanteF(f, X0, X1, error);
fx=sym(f);
it=2;
tol=error;

fprintf('%-5s %-7s %-8s\n', '#it', 'X', 'f(x)');
x=X0;
fprintf('%-5d %-7.4f %-8.4f\n', 0, X0, eval(fx));
x=X1;
fprintf('%-5d %-7.4f %-8.4f\n', 1, X1, eval(fx));

while abs(eval(fx)) > tol
    
    x=X0;fX0=eval(fx);
	x=X1;fX1=eval(fx);
    x=X1-(fX1*(X0-X1))/(fX0-fX1);
    fprintf('%-5d %-7.4f %-8.4f\n', it, x, eval(fx));
    X0=X1;
    X1=x;
    it=it+1;
end