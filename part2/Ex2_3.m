y0=[1.60*10^4;0.00;0.00;9.00*10^(-1)];
t=0:0.0005:20;
[t,y] = ode45(@ydot_type1,t,y0);

temp1=ilocalmax(x(:,1));
temp2=find(temp1(:,1));


T=(temp2(3)-temp2(2))/2000

syu=0:0.0005:T;
TLen=length(syu);
x=y(1:TLen,1).*cos(y(1:TLen,2));
yy=y(1:TLen,1).*sin(y(1:TLen,2));
plot(x,yy,'');
