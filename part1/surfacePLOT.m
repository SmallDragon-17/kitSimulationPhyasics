function surfacePLOT
x=-2:0.2:2;%0.2çèÇ›
y=-3:0.2:3;
numx=length(x);
numy=length(y);
Z=zeros(numy,numx);
for i=1:numy
  Z(i,:) = (x+y(i)).*exp(-x.^2-y(i)^2);
end
surf(x,y,Z);