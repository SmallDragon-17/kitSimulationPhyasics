for kk = numPointGap + 1 : numPointPole
    tilEz(x,y,kk) = 0;
end

if t<=2.5*r
    Vn=Vmax*exp(-(sqAlpha*(t-r))^2);
else
    Vn=0;
   
end%Œ»Ý‚Ì“ü—Í“dŠE

differVn=Vn-oldVn;%tt0-tt1
oldVn=Vn;

tilEz(x,y,1:numPointGap)=tilEz(x,y,1:numPointGap)+differVn/gap;%“dŠE‚ÌŒv
tilEx(iExGround,jExGround,1)=0;
tilEy(iEyGround,jEyGround,1)=0;

resTotalVn(nn)=tilEz(x,y,1)*gap;
if 1==nn
    resInputVn(nn)=Vn;
else
    resInputVn(nn)=resInputVn(nn-1)+differVn;
end


