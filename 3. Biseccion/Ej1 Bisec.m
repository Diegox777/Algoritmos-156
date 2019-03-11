%Chapra, Pag 139, Ejercicio 5.1
syms b;
syms a;
syms r;

fa=-0.5*a^2 + 2.5*a + 4.5;
fb=-0.5*b^2 + 2.5*b + 4.5;
fr=-0.5*r^2 + 2.5*r + 4.5;

a=5;
b=10;

%valor verdadero
p=roots([-0.5 2.5 4.5]);
X=p(1);
rold=(a+b)/2;
%while abs(eval(fr))>tol
for i=1:3
    r=(a+b)/2;
    
    if(i==1)
        disp('Error Estimado      Error Verdadero')
    end
    
    fprintf('%-19.3f %.3f\n', abs((r-rold)/r)*100, abs((X-r)/X)*100);
    
    if eval(fa)*eval(fr)>0
        a=r;
    else
        b=r;
    end
    
    rold=r;
end

fprintf('\nValor Verdadero %-5.3f\n', X);
fprintf('Valor encontrado: %-5.3f con Iteraciones: %d\n', r,i);

%graficando
syms r;
a=5;
b=10;
fr=-0.5*r^2 + 2.5*r + 4.5;
ezplot(fr, a, b), grid on;