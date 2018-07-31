common_initialization;
t=0;
nMax=1000;
setting_for_others2;
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
Ez=Emax*exp(-(4*(t-tau)/tau).^2);
subplot(2,2,3);
plot(t,Ez,'r');
subplot(2,2,4);
plot(t,EEz(1:length(t)), 'b');