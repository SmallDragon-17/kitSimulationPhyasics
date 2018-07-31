y0=[2;0];
mu=1;
[t,y] = ode45(@ydot_1,[0 20],y0,'',mu);
figure
subplot(1,2,1);
plot(t,y(:,1),t,y(:,2),'--');
title('É =1');

y0=[2;0];
mu=2;
[t,y] = ode45(@ydot_1,[0 20],y0,'',mu);
subplot(1,2,2);
plot(t,y(:,1),t,y(:,2),'--');
title('É =2');
