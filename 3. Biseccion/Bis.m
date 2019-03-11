syms x;
f=sin(10*x)+cos(3*x);
a=4.227;
b=4.232;
tol=0.0001
while abs(a-b)>tol
    x=(a+b)/2;
    disp(eval(f));
        if eval(f)<0
            b=x;
        else
            a=x;
        end    
end
