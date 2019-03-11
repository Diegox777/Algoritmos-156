% Ejercicio 4.5 f(x)=ln(x)
% para predecir f(3)
% punto base x=1
syms x;
f=log(x);
x=3;
disp('Valor Verdadero');
r=eval(f);
disp(eval(f));

x=1;
h=(3-x); 
s=eval(f);

disp('Error Relativo Porcentual, Orden 0');
disp(abs(r-s)/abs(r)*100);

for i=1:4
    f=diff(f);
    s=s+(eval(f)*h^i)/factorial(i);
    
    fprintf('Error Relativo Porcentual, Orden %d \n', i);
    disp(abs(r-s)/abs(r)*100);
end
    
disp('Valor Aproximado')
disp(s);