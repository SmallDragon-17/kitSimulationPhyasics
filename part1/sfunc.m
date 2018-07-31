function sfunc = sfunc(t)

if t>=0.5 && t<=1
    count = 1;
elseif t>1 && t<=2
    count = 2;
else
     count =3;      
end
    
switch count
    case 1
    n=-7;
    
    case 2
    n=-5;
    
    otherwise
    n=-9;
end

f=440*2^(n/12);
sfunc = sin(2*pi*f*t)
end