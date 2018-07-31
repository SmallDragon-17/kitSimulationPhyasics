% Hx‚ÌŒvŽZ
tmp1Hx=coeYmuHx.*(tilEz(iHx,jHx+1,kHx)-tilEz(iHx,jHx,kHx));
tmp2Hx=coeZmuHx.*(tilEy(iHx,jHx,kHx+1)-tilEy(iHx,jHx,kHx));
tilHx(iHx,jHx,kHx)=tilHx(iHx,jHx,kHx)-(tmp1Hx-tmp2Hx);
%Hy‚ÌŒvŽZ
tmp1Hy=coeZmuHy.*(tilEx(iHy,jHy,kHy+1)-tilEx(iHy,jHy,kHy));
tmp2Hy=coeXmuHy.*(tilEz(iHy+1,jHy,kHy)-tilEz(iHy,jHy,kHy));
tilHy(iHy,jHy,kHy)=tilHy(iHy,jHy,kHy)-(tmp1Hy-tmp2Hy);
%Hz‚ÌŒvŽZ
tmp1Hz=coeXmuHz.*(tilEy(iHz+1,jHz,kHz)-tilEy(iHz,jHz,kHz));
tmp2Hz=coeYmuHz.*(tilEx(iHz,jHz+1,kHz)-tilEx(iHz,jHz,kHz));
tilHz(iHz,jHz,kHz)=tilHz(iHz,jHz,kHz)-(tmp1Hz-tmp2Hz);
