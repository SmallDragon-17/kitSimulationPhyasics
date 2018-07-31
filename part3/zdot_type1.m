function dy = zdot_type1(t,y)

N=32;
h=1/N;
a = zeros(N-1, N-1);
for i=1:N-2
    a(i+1,1)=1/(h^2);
    a(i,i+1)=1/(h^2);
end
dy=a*y;

