x0=[0;10];
t=0:0.001:30;
[t,x]=ode45(@xdot_type4,t,x0);
%plot(t,x(:,1),t,x(:,2),'r');
%title

xx=abs(x(:,2));
xxx=min(xx);
for i=1:length(t)
   if abs(x(i,2))==xxx;
      S=i;
   end
end

T=round((S/1000),3,'significant')
X=round(x(S,1),3,'significant')
