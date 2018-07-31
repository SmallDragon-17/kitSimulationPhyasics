% 1)�����p�����[�^�̐ݒ�
c=3e8;
ep0=8.845e-12; mu0=4*pi*1e-7;
% 2)��ԂƎ��Ԃ̗��U���Ɋւ���ݒ�
ax=0; bx=100e-3; ay=0; by=100e-3; az=0; bz=100e-3;
Nx=32; Ny=32; Nz=32;
hx=(bx-ax)/Nx; hy=(by-ay)/Ny; hz=(bz-az)/Nz;
htMax=1/(c*sqrt(1/hx^2+1/hy^2+1/hz^2));
ht=1/2;
while ht>htMax
    ht=ht/2;
end
% 3)FDTD�@�Ɍ����W���̐ݒ�
coeXmu=ht/(hx*mu0); coeYmu=ht/(hy*mu0); coeZmu=ht/(hz/mu0);
coeXep=ht/(hx*ep0); coeYep=ht/(hy*ep0); coeZep=ht/(hz/ep0);
coeCTX=(c*ht-hx)/(c*ht+hx);
coeCTY=(c*ht-hy)/(c*ht+hy);
coeCTZ=(c*ht-hz)/(c*ht+hz);
% 4)FDTD�@�ŗp������ϐ��̏�����
Nx1=Nx+1; Ny1=Ny+1; Nz1=Nz+1;
tilEx=zeros(Nx,Ny1,Nz1); tilEy=zeros(Nx1,Ny,Nz1); tilEz=zeros(Nx1,Ny1,Nz);
tilHx=zeros(Nx1,Ny,Nz); tilHy=zeros(Nx,Ny1,Nz); tilHz=zeros(Nx,Ny,Nz1);
tmp1Hx=tilHx; tmp2Hx=tilHx;
tmp1Hy=tilHy; tmp2Hy=tilHy;
tmp1Hz=tilHz; tmp2Hz=tilHz;
tmp1ExIn=zeros(Nx,Ny-1,Nz-1); tmp1EyIn=zeros(Nx-1,Ny,Nz-1); tmp1EzIn=zeros(Nx-1,Ny-1,Nz);
tmp2ExIn=tmp1ExIn; tmp2EyIn=tmp1EyIn; tmp2EzIn=tmp1EzIn;
% 5)FDTD�@�ŗp������C���f�b�N�X�̐ݒ�
iHx=1:Nx1; jHx=1:Ny; kHx=1:Nz;
iHy=1:Nx; jHy=1:Ny1; kHy=1:Nz;
iHz=1:Nx; jHz=1:Ny; kHz=1:Nz1;
iEx=1:Nx; jEx=1:Ny1; kEx=1:Nz1;
iEy=1:Nx1; jEy=1:Ny; kEy=1:Nz1;
iEz=1:Nx1; jEz=1:Ny1; kEz=1:Nz;
jExIn=2:Ny; kExIn=2:Nz; iEyIn=2:Nx; kEyIn=2:Nz; iEzIn=2:Nx; jEzIn=2:Ny;
% 6)Mur��1���z�����E�����Ŏg����ϐ��i�ꎟ�ۑ��̈�j�̏�����
oldEx1ay=zeros(Nx,1,Nz1); oldExNyM1by=zeros(Nx,1,Nz1);
oldEx1az=zeros(Nx,Ny1,1); oldExNzM1bz=zeros(Nx,Ny1,1);
oldEy1ax=zeros(1,Ny,Nz1); oldEyNxM1bx=zeros(1,Ny,Nz1);
oldEy1az=zeros(Nx1,Ny,1); oldEyNzM1bz=zeros(Nx1,Ny,1);
oldEz1ax=zeros(1,Ny1,Nz); oldEzNxM1bx=zeros(1,Ny1,Nz);
oldEz1ay=zeros(Nz1,1,Nz); oldEzNyM1by=zeros(Nx1,1,Nz);
% 7)FDTD�@�Ɍ����W������ԓ��̈ʒu���ɐݒ�
coeYmuHx=coeYmu*ones(Nx1,Ny,Nz); coeZmuHx=coeZmu*ones(Nx1,Ny,Nz);
coeZmuHy=coeZmu*ones(Nx,Ny1,Nz); coeXmuHy=coeXmu*ones(Nx,Ny1,Nz);
coeXmuHz=coeXmu*ones(Nx,Ny,Nz1); coeYmuHz=coeYmu*ones(Nx,Ny,Nz1);
coeYepEx=coeYep*ones(Nx,Ny-1,Nz-1); coeZepEx=coeZep*ones(Nx,Ny-1,Nz-1);
coeZepEy=coeZep*ones(Nx-1,Ny,Nz-1); coeXepEy=coeXep*ones(Nx-1,Ny,Nz-1);
coeXepEz=coeXep*ones(Nx-1,Ny-1,Nz); coeYepEz=coeYep*ones(Nx-1,Ny-1,Nz);