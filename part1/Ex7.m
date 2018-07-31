x= -2:0.2:2;
y= -3:0.2:3;

numx =length(x);
numy =length(y);
Z=zeros(numy,numx);

for i=1:numy
  Z(i,:)=(x+y(i)).*exp(-x.^2-y(i)^2);
end

baseSURF=surf(x,y,Z);
axis([-2 2 -3 3 -5 5]);
set(gca,'drawmode','fast');

for t=0:0.005:10;
  v=5*sin(pi*t);
  for i= 1:numy
     Z(i,:) = (x+y(i)+v).*exp(-x.^2-y(i)^2);
  end
  set(baseSURF,'zdata',Z);
  drawnow;
end
      