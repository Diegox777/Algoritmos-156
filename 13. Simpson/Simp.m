function [] = Simp(f, a, b, n);
	fx=sym(f);
	h=(b-a)/n;
	Y=[];
    Ix=int(fx, a, b);
   
	for i=1:n+1
		x=a;
		Y(i)=eval(fx);
        %fprintf('%f %f\n', x, eval(fx));
        a=a+h;
	end

	sumim=0; i=2;
    while i<=n
        sumim=sumim+Y(i);
        i=i+2;
    end  
    
    sump=0; i=3;
	while i<n
		sump=sump+Y(i);
		i=i+2;
    end
	I=(h/3)*(Y(1)+Y(n+1)+4*sumim+2*sump);

    Ea=double((Ix-I)/Ix)*100;
    fprintf('\nn = %d\nh = %f\nI = %f\nEa = %f\n\n', n, h, I, Ea);
end