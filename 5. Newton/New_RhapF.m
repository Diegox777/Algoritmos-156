function [it x]=New_RhapF(f, Xi, error);
fx=sym(f);
gx=diff(fx);
%x=findsym(fx);
x=Xi;
it=0;
tol=error;

ii='#it';
ij='X';
ik='f(x)';
il='f^(x)';

while abs(eval(fx)) > tol
    if it==0
        fprintf('%-5s %-7s %-8s %s\n', ii, ij, ik, il);
    end
    
    fprintf('%-5d %-7.3f %-8.3f %.3f\n', it, x, eval(fx), eval(gx));
    
    x=x-eval(fx)/eval(gx);
    it=it+1;
end