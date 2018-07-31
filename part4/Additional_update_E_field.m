if t<=2*tau
    Vn=1*exp(-(4*(t-tau)/tau)^2);
else
    Vn=0;
   
end

differVn=Vn-oldVn;
oldVn=Vn;

tilEz(iEx,y,kEz)=tilEz(iEx,y,kEz)+differVn;
EEz(nn)=tilEz(x,y,z);
EEz1(nn)=tilEz(x,y+5,z);
EEz2(nn)=tilEz(x,y+10,z);
EEz3(nn)=tilEz(x,y+15,z);