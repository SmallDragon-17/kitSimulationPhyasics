common_initialization;
t=0;
nMax=330;
setting_for_others;
for nn=1:nMax
    Update_Ex_for_free_boundary;
    Update_Ey_for_free_boundary;
    Update_Ez_for_free_boundary;
    Additional_update_E_field;
    t=t+ht/2;
    Update_H_field;
    t=t*ht/2;
end
  
plot(tt,Ezplot,'g');
hold;
plot(tt,Ezplot1,'b');
plot(tt,Ezplot2,'r');
plot(tt,Ezplot3,'y');
