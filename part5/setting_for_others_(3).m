Emax=100/32000;
gap=1*(bz-az)/Nz;
Vmax=gap;
r=1/(2.5e9);
%tt=0:ht:ht*(nMax-1);
%Vn=Vmax.*exp(-(4*(tt-r)/r).^2);%tt=n
%oldVn=Vmax.*exp(-(-4)^2);%tt=0
oldVn= 0;
x=Nx/2+1;
y=Ny/2+1;%L=0
z=Nz/2+1;
y1=y+5;%L=5
y2=y+10;%L=10
y3=y+15;%L=15
sqAlpha=4/r;


poleLength=30e-3;

numPointGap=length(hz/2:hz:gap);
numPointPole=length(hz/2:hz:gap+poleLength);

Ezplot =zeros(nMax);
Ezplot1=zeros(nMax);
Ezplot2=zeros(nMax);
Ezplot3=zeros(nMax);
iExGround=(length(ax+hx/2:hx:20e-3)+1):length(ax+hx/2:hx:80e-3);
jExGround=(length(ay:hy:20e-3)+1):length(ay:hy:80e-3);
iEyGround=(length(ax:hx:20e-3)+1):length(ax:hx:80e-3);
jEyGround=(length(ay+hy/2:hy:20e-3)+1):length(ay+hy/2:hy:80e-3);

resInputVn=zeros(nMax,1);
resTotalVn=zeros(nMax,1);