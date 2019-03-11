%Chapra, Pag 139, Ejercicio 4.3
syms b;
syms a;
syms r;

%funciones
fa=0.7*a^5 - 8*a^4 + 44*a^3 - 90*a^2 + 82*a - 25;
fb=0.7*b^5 - 8*b^4 + 44*b^3 - 90*b^2 + 82*b - 25;
fr=0.7*r^5 - 8*r^4 + 44*r^3 - 90*r^2 + 82*r - 25;

%asignando valores
a=0.5;
b=1;
%
Es=0.1;

%valor verdadero
i=1;
p=roots([0.7 -8 44 -90 82 -25]);
X=p(5);

r=(a+b)/2;
rold=r;

while abs(eval(fr)) > Es
    r=(a+b)/2;
    Ea=abs((r-rold)/r)*100;
    Et=abs((X-r)/X)*100;
        
    if(i==1)
    disp('Error Estimado      Error Verdadero')
    i=0;
    end
    
    fprintf('%-19.3f %.3f\n', Ea, Et);
    if eval(fa)*eval(fr)>0
        a=r;
    else
        b=r;
    end
    rold=r;
end

fprintf('\nValor Verdadero:  %.3f\n', X);
fprintf('Valor Encontrado: %.3f\n', r);

%graficando
a=0.5;
b=1;
syms r;
fr=0.7*r^5 - 8*r^4 + 44*r^3 - 90*r^2 + 82*r - 25;
ezplot(fr, a, b), grid on;