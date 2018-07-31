Emax=1;
r=1/(2.5*10^9);
tt=0:ht:ht*(nMax-1);
Ez=Emax.*exp(-(4*(tt-r)/r).^2);%tt=n
Ez0=Emax.*exp(-(-4)^2);%tt=0
x=Nx/2+1;
y=Ny/2+1;%L=0
z=Nz/2+1;
y1=y+5;%L=5
y2=y+10;%L=10
y3=y+15;%L=15

Ezplot =zeros(nMax);
Ezplot1=zeros(nMax);
Ezplot2=zeros(nMax);
Ezplot3=zeros(nMax);