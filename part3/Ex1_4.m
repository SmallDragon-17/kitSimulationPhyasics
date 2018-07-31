N=32;
h=1/N;
x=0+h:h:1;

r=1/6

yVec=zeros(N-1,1);
yNewVec=zeros(N-1,1);

for i=1:length(x)-1
    yVec(i)=sin(pi*x(i));
end

for n= 0:r*h^2:1
   
 yNewVec(1)=yVec(1)+r*(yVec(2)-2*yVec(1));
 for i=2:N-2
   yNewVec(i)+r*(yVec(i+1)-2*yVec(i)+yVec(i-1));
 end
 yNewVec(N-1)=yVec(N-1)+r*(-2*yVec(N-1)+yVec(N-2));
 yVec=yNewVec;
end

X=0:0.01:1;
Y=exp(-pi^2).*sin(pi*X);

plot(x(1:31),yVec(:,length(n)),X,Y);

