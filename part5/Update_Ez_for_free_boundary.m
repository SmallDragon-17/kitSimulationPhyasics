oldEz1ax(1,jEz,kEz)=tilEz(2,jEz,kEz);
oldEzNxM1bx(1,jEz,kEz)=tilEz(Nx,jEz,kEz);
oldEz1ay(iEz,1,kEz)=tilEz(iEz,2,kEz);
oldEzNyM1by(iEz,1,kEz)=tilEz(iEz,Ny,kEz);

tmp1EzIn=coeXepEz.*(tilHy(iEzIn,jEzIn,kEz)-tilHy(iEzIn-1,jEzIn,kEz));
tmp2EzIn=coeYepEz.*(tilHx(iEzIn,jEzIn,kEz)-tilHx(iEzIn,jEzIn-1,kEz));
tilEz(iEzIn,jEzIn,kEz)=tilEz(iEzIn,jEzIn,kEz)+(tmp1EzIn-tmp2EzIn);

%x=ax
tilEz(1,jEz,kEz)=oldEz1ax(1,jEz,kEz)+coeCTX*(tilEz(2,jEz,kEz)-tilEz(1,jEz,kEz));
%x=bx
tilEz(Nx1,jEz,kEz)=oldEzNxM1bx(1,jEz,kEz)+coeCTX*(tilEz(Nx,jEz,kEz)-tilEz(Nx1,jEz,kEz));
%y=ay
tilEz(iEz,1,kEz)=oldEz1ay(iEz,1,kEz)+coeCTY*(tilEz(iEz,2,kEz)-tilEz(iEz,1,kEz));
%y=by
tilEz(iEz,Ny1,kEz)=oldEzNyM1by(iEz,1,kEz)+coeCTY*(tilEz(iEz,Ny,kEz)-tilEz(iEz,Ny1,kEz));