function ret = ilocalmax(z)
  len_z=length(z);
  ret=zeros(len_z,1);
  
  if len_z<2
      return;
  end
  
  if z(1)<=z(2)
     flag = 1;
  else 
     flag= 0;
     ret(1)=1;
  end
  
 prev=z(2);
 for ii=3:len_z
     if 1==flag
       if z(ii)<prev
           flag = 0;
           ret(ii-1)=1;
       end
     else
       if z(ii) >= prev
           flag =1;
       end
     end
     prev=z(ii);
     if(ii==len_z) && (1==flag)
         ret(len_z)=1;
     end
 end