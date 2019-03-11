%Chapra, Pag 139, Ejercicio 4.2
syms b;
syms a;
syms r;

%funciones
fa=5*a^3 - 5*a^2 + 6*a -2;
fb=5*b^3 - 5*b^2 + 6*b -2;
fr=5*r^3 - 5*r^2 + 6*r -2;

%asignando valores
a=0;
b=1;
Es=0.1;

%valor verdadero
i=1;
p=roots([5 -5 6 -2]);
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
syms r;
a=0;
b=1;
fr=5*r^3 - 5*r^2 + 6*r -2;
ezplot(fr, a, b), grid on;