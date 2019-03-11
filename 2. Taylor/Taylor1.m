% Ejercicio 4.4 f(x)=25x^3-6x^2+7x-88 taylor
% para predecir f(2)
% punto base x=1
syms x;
f=25*x^3-6*x^2+7*x-88;

x=2;
disp('Valor Verdadero');
r=eval(f);
disp(eval(f));

x=1;
h=(2-x); 
s=eval(f);

for i=1:3
    f=diff(f);
    s=s+(eval(f)*h^i)/factorial(i);
end
    
disp('Valor Aproximado')
disp(s);

disp('Error Verdadero')
disp(abs(s-r));

disp('Error Relativo Porcentual');
disp(abs(r-s)/abs(r)*100);
    
