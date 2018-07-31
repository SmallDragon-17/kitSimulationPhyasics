i=1;

sdata=zeros(50000,1);

for t = 0:0.0001:5
 sdata(i) = sfunc(t);
 i=i+1;
end