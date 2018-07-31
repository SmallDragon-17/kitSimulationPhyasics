function xout = xdot_type1(t,x)

mA= 1.00;
mB= 1.00;
l = 2.00;
k = 1.00;

xdot1=x(3);
xdot2=x(4);
xdot3=k*(x(2)-x(1)-l)/mA;
xdot4=-k*(x(2)-x(1)-l)/mB;

xout=[xdot1;xdot2;xdot3;xdot4];



