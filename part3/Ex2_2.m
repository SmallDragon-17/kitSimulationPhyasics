N=32;
h=1/N;
x=0+h:h:1;
v=5;

r=1/2;
yVec=zeros(N-1,1);
yNewVec=zeros(N-1,1);

for i=1:length(x)-1
 yVec(i) =exp((5*x(i))/2)*sin(pi*x(i));
end

for n = 0:r*h^2:1
 yNewVec(1)=yVec(1)+(r*(yVec(2)-2*yVec(1))-((r*h*v)/2)*(yVec(2)));
 yNewVec(2:N-2)=yVec(2:N-2)+(r*(yVec(3:N-1)-2*yVec(2:N-2)+yVec(1:N-3))-(((r*h*v)/2)*(yVec(3:N-1)-yVec(1:N-3))));
 yNewVec(N-1)=yVec(N-1)+(r*(-2*yVec(N-1)+yVec(N-2))+(((r*h*v)/2)*yVec(N-2)));
 yVec=yNewVec;
end

Xt=0:0.01:1;
Yt=exp(5*Xt/2-(25/4*pi^2)).*sin(pi*Xt);
plot(x(1:31),yVec(:,length(n)),Xt,Yt)