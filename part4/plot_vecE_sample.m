nskip = 2;
Nxp = Nx / nskip + 1;
Nyp = Ny / nskip + 1;
Nzp = Nz / nskip + 1;
xpoints = zeros(Nxp, Nyp, Nzp);
ypoints = zeros(Nxp, Nyp, Nzp);
zpoints = zeros(Nxp, Nyp, Nzp);

iExSkip = [1 nskip:nskip:Nx-2 Nx-1];
jExSkip = [2 (nskip + 1):nskip:Ny-1 Ny];
kExSkip = [2 (nskip + 1):nskip:Nz-1 Nz];
iEySkip = [2 (nskip + 1):nskip:Nx-1 Nx];
jEySkip = [1 nskip:nskip:Nx-2 Nx-1];
kEySkip = [2 (nskip + 1):nskip:Nz-1 Nz];
iEzSkip = [2 (nskip + 1):nskip:Nx-1 Nx];
jEzSkip = [2 (nskip + 1):nskip:Nx-1 Nx];
kEzSkip = [1 nskip:nskip:Nz-2 Nz-1];

for jj = 1:Nyp
    for kk=1:Nzp
        xpoints(:, jj, kk) = ax + hx * iExSkip;
    end
end
for ii = 1:Nxp
    for kk=1:Nzp
        ypoints(ii,:, kk) = ay + hy * jEySkip;
    end
end
for ii = 1:Nxp
    for jj=1:Nyp
        zpoints(ii, jj,:) = ax + hz * kEzSkip;
    end
end

tmp1 = tilEx(iExSkip, jExSkip, kExSkip);
tmp2 = tilEx(iExSkip+1, jExSkip, kExSkip);
ExElements = (tmp1 + tmp2) / 2;
tmp1 = tilEx(iEySkip, jEySkip, kEySkip);
tmp2 = tilEx(iEySkip, jEySkip+1, kEySkip);
EyElements = (tmp1 + tmp2) / 2;
tmp1 = tilEx(iEzSkip, jEzSkip, kEzSkip);
tmp2 = tilEx(iEzSkip, jEzSkip, kEzSkip+1);
EzElements = (tmp1 + tmp2) / 2;

scale = 0;
quiver3(zpoints, ypoints, zpoints, ExElements, EyElements, EzElements, scale);
axis([ax bx ay by az bz]);
xlabel('x', 'FontSize', 12);
ylabel('y', 'FontSize', 12);
zlabel('z', 'FontSize', 12);