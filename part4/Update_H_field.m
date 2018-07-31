temp1Hx = coeYmuHx.*(tilEz(iHx, jHx+1, kHx) - tilEz(iHx, jHx, kHx));
temp2Hx = coeZmuHx.*(tilEy(iHx, jHx, kHx+1) - tilEy(iHx, jHx, kHx));
tilHx(iHx, jHx, kHx) = tilHx(iHx, jHx, kHx) - (temp1Hx - temp2Hx);

temp1Hy = coeZmuHy.*(tilEx(iHy, jHy, kHy+1) - tilEx(iHy, jHy, kHy));
temp2Hy = coeXmuHy.*(tilEz(iHy+1, jHy, kHy) - tilEz(iHy, jHy, kHy));
tilHy(iHy, jHy, kHy) = tilHy(iHy, jHy, kHy) - (temp1Hy - temp2Hy);

temp1Hz = coeXmuHz.*(tilEy(iHz+1, jHz, kHz) - tilEy(iHz, jHz, kHz));
temp2Hz = coeYmuHz.*(tilEx(iHz, jHz+1, kHz) - tilEx(iHz, jHz, kHz));
tilHz(iHz, jHz, kHz) = tilHz(iHz, jHz, kHz) - (temp1Hz - temp2Hz);
