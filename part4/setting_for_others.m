tau=1/(2.5*10.^9);
for i=0:ht:3*tau;
    nMax=nMax+1;
end
EEz=1:nMax;

y = Ny/2 + 1;
x = Nx/2 + 1;
z = Nz/2 + 1;
oldVn = 0;
