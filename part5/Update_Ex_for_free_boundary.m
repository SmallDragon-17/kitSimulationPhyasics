oldEx1ay(iEx,1,kEx)=tilEx(iEx,2,kEx);
oldExNyM1by(iEx,1,kEx)=tilEx(iEx,Ny,kEx);
oldEx1az(iEx,jEx,1)=tilEx(iEx,jEx,2);
oldExNzM1bz(iEx,jEx,1)=tilEx(iEx,Ny,kEx);

tmp1ExIn=coeYepEx.*(tilHz(iEx,jExIn,kExIn)-tilHz(iEx,jExIn-1,kExIn));
tmp2ExIn=coeZepEx.*(tilHy(iEx,jExIn,kExIn)-tilHy(iEx,jExIn,kExIn-1));
tilEx(iEx,jExIn,kExIn)=tilEx(iEx,jExIn,kExIn)+(tmp1ExIn-tmp2ExIn);

%y=ay
tilEx(iEx,1,kEx)=oldEx1ay(iEx,1,kEx)+coeCTY*(tilEx(iEx,2,kEx)-tilEx(iEx,1,kEx));
%y=by
tilEx(iEx,Ny1,kEx)=oldExNyM1by(iEx,1,kEx)+coeCTY*(tilEx(iEx,Ny,kEx)-tilEx(iEx,Ny1,kEx));
%z=az
tilEx(iEx,jEx,1)=oldEx1az(iEx,jEx,1)+coeCTZ*(tilEx(iEx,jEx,2)-tilEx(iEx,jEx,1));
%z=bz
tilEx(iEx,jEx,Nz1)=oldExNzM1bz(iEx,jEx,1)+coeCTZ*(tilEx(iEx,jEx,Nz)-tilEx(iEx,jEx,Nz1));