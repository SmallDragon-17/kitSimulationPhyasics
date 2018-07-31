x0 = [0.5;1.5;0;0];
t=0:0.0005:20;
[t,x] = ode45(@xdot_type2,t, x0);

plot(t,x(:,1),t,x(:,2),'--');

Y1=(max(x(:,1))-min(x(:,1)))/2;
Y2=(max(x(:,2))-min(x(:,2)))/2;
ren=abs(max(x(:,1))-Y1-(max(x(:,2)))-Y2)

temp1=ilocalmax(x(:,1));
temp2=find(temp1(:,1));
Ta=(temp2(3)-temp2(2))/2000
temp1=ilocalmax(x(:,2));
temp2=find(temp1(:,1));
Tb=(temp2(3)-temp2(2))/2000

figure

plot(t,x(:,1),'c',t,x(:,2),'r');

xlim([0 20]);
ylim([-0.5 2.5]);






