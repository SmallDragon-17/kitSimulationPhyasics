if (tt<2*tt)
    Ez(nn)=Emax.*exp(-(4*(tt-r)/r).^2);
end%現在の入力電界

Ez2=Ez(nn)-Ez0;%tt0-tt1
Ez0=Ez(nn);

tilEz(iEx,y,kEz)=tilEz(iEx,y,kEz)+Ez2;%電界の計算

Ezplot(nn)=tilEz(x,y,z);
Ezplot1(nn)=tilEz(x,y1,z);
Ezplot2(nn)=tilEz(x,y2,z);
Ezplot3(nn)=tilEz(x,y3,z);