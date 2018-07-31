    function xy=rk4(func,x0,xe,n,y0)
        f=inline(func);
        x=linspace(x0,xe,n+1);
        y=zeros(1,n+1);
        dx=(xe-x0)/n;
        y(1)=y0;
        for k=2:n+1
            k1=feval(f,x(k-1),y(k-1))*dx;
            k2=feval(f,x(k-1)+dx/2,y(k-1)+k1/2)*dx;
            k3=feval(f,x(k-1)+dx/2,y(k-1)+k2/2)*dx;
            k4=feval(f,x(k-1)+dx,y(k-1)+k3)*dx;
            y(k)=y(k-1)+(k1+2*k2+2*k3+k4)/6;
        end
    xy=[x;y];