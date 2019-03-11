%Resolucion: problema de errores
X=input('Valor Verdadero ');
Xa=input('Valor Aproximado ');
Ea=abs(X-Xa)
Erp=(Ea/abs(X))*100
disp('Error Absoluto ')
disp(Ea)
fprintf('Error Relativo Porcentual %5d \n', Erp)