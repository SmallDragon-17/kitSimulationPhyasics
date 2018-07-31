function zout = zdot_type1(t,z)
a=1; b=1; c=1;p=1;q=1;r=1;
zdot1 = 1+(q*r-1)*z(1)/q-a*z(1)*z(2)/(a+b*z(1));
zdot2 = a*c*z(1)*z(2)/(1+b*z(1))-p*z(2);
zout =[zdot1;zdot2];
end