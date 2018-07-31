function yout=ydot_type2(t,y)

GM=5.05*10^12;

ydot1=y(3);
ydot2=y(4);
ydot3=(-GM/(y(1))^2)+(y(1)*(y(4))^2);
ydot4=(-2*y(3)*y(4))/y(1);

yout=[ydot1;ydot2;ydot3;ydot4];

end