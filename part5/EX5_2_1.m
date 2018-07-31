r=1/(2.5*(10^9));
Emax=1;
t=0:1/(10)^12:3*r;

Ez=Emax*(exp(-(4*(t-r)/r).^2));
plot(t,Ez);

