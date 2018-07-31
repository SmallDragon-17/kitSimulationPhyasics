Emax=1;
a=1/(2.5*10.^9);
t=0:a/100:2*a;
Ez = Emax*exp(-(4*(t-a)/a).^2);

plot(t,Ez,' ');
