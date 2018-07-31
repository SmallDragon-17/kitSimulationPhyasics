common_initialization;
t=0;
nMax=1;
setting_for_others;
for nn=1:nMax
    Update_Ex_for_free_boundary;
    Update_Ey_for_free_boundary;
    Update_Ez_for_free_boundary;
    Additional_update_E_field;
    t=t+ht/2;
    Update_H_field;
    t=t+ht/2;
end

Emax=1;
tau=1/(2.5*10.^9);
t=0:tau/100:3*tau;
Ez = Emax*exp(-(4*(t-tau)/tau).^2);
subplot(1,2,1);
plot(t,Ez,'r');
subplot(1,2,2);
plot(t,EEz(1:length(t)),'b', t,EEz1(1:length(t)),'r', t,EEz2(1:length(t)),'black', t,EEz3(1:length(t)),'g');