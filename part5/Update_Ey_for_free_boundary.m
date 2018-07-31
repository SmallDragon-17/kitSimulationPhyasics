oldEy1ax(1,jEy,kEy)=tilEy(2,jEy,kEy);
oldEyNxM1bx(1,jEy,kEy)=tilEy(Nx,jEy,kEy);
oldEy1az(iEy,jEy,1)=tilEy(iEy,jEy,2);
oldEyNzM1bz(iEy,jEy,1)=tilEy(iEy,jEy,Nz);

tmp1EyIn=coeZepEy.*(tilHx(iEyIn,jEy,kEyIn)-tilHx(iEyIn,jEy,kEyIn-1));
tmp2EyIn=coeXepEy.*(tilHz(iEyIn,jEy,kEyIn)-tilHz(iEyIn-1,jEy,kEyIn));
tilEy(iEyIn,jEy,kEyIn)=tilEy(iEyIn,jEy,kEyIn)+(tmp1EyIn-tmp2EyIn);

%x=ax
tilEy(1,jEy,kEy)=oldEy1ax(1,jEy,kEy)+coeCTX*(tilEy(2,jEy,kEy)-tilEy(1,jEy,kEy));
%x=bx
tilEy(Nx1,jEy,kEy)=oldEyNxM1bx(1,jEy,kEy)+coeCTX*(tilEy(Nx,jEy,kEy)-tilEy(Nx1,jEy,kEy));
%z=az 
tilEy(iEy,jEy,1)=oldEy1az(iEy,jEy,1)+coeCTZ*(tilEy(iEy,jEy,2)-tilEy(iEy,jEy,1));
%z=bz
tilEy(iEy,jEy,Nz1)=oldEyNzM1bz(iEy,jEy,1)+coeCTZ*(tilEy(iEy,jEy,Nz)-tilEy(iEy,jEy,Nz1));