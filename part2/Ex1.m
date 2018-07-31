x0=[0;2;0;0];
t=[0 20];
[t,x] = ode45(@xdot_type1,t, x0);

plot(t,x(:,1),t,x(:,2),'--');

xlim([0 20]);
ylim([-0.5 2.5]);