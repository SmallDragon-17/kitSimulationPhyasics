function xout4 = xdot_type4(t,x)

u=0.5;
m=10;
g=9.81;
r=0.5;
alp=pi./8;

N=(3/2)*m*g*r*(u*cos(alp)-sin(alp)/3)*(1-exp(-180/(110-x(1))));
xdot1=x(2);
xdot2=(2/3)*g*sin(alp)-2*N/(3*m*r);
xout4=[xdot1;xdot2];
end