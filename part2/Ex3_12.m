x0=[0.5;1.5;1.0;-1.0];
t=0:0.0005:20;
[t,x]=ode45(@xdot_type1,t,x0);

Y1=(max(x(:,1))-min(x(:,1)))/2;
Y2=(max(x(:,2))-min(x(:,2)))/2;
ren=abs(max(x(:,1))-Y1-(max(x(:,2))-Y2))

temp1=ilocalmax(x(:,1));
temp2=find(temp1(:,1));
Ta=(temp2(3)-temp2(2))/2000
temp1=ilocalmax(x(:,2));
temp2=find(temp1(:,1));
Tb=(temp2(3)-temp2(2))/2000

figure
subplot(1,3,1);
plot(t,x(:,1),'c',t,x(:,2),'r');
%title

p=2*x(:,3)+1*x(:,4);
w=((x(:,2)-x(:,1)-2).^2)/2+(2*x(:,3).^2)/2+(1*x(:,4).^2)/2;
subplot(1,3,2);
plot(t,p,'b',t,w,'k');
%title

hen=x(:,2)-x(:,1);
subplot(1,3,3);
plot(t,hen,'--');
%title

