%Chapra, Pag 139, Ejercicio 5.4
syms b;
syms a;
syms r;

%funciones
fa=-2.75*a^3 + 18*a^2 - 21*a - 12;
fb=-2.75*b^3 + 18*b^2 - 21*b - 12;
fr=-2.75*r^3 + 18*r^2 - 21*r - 12;

%asignando valores
a=-1;
b=1;
%
Es=0.001;

%valor verdadero
i=1;
p=roots([-2.75 18 -21 -12]);
X=p(3);

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
a=-1;
b=1;
syms r;
fr=-2.75*r^3 + 18*r^2 - 21*r - 12;
ezplot(fr, a, b), grid on;