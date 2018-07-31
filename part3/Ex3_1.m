N=32;
h=1/N;
x=0:h:1;

y0=zeros(N-1,1);

for i=1:length(x)-2
    y0(i,1)=sin(x(i)*pi);
end

[t,y]=ode45(@zdot_type1,[0:0.01:1],y0);
X=0:0.01:1;
Y=exp(-pi^2).*sin(pi*X);

plot(x(1,2:32),y(101,:),'--',X,Y);

