function z = test(x,y)
  d=[0 0
     0 2
     2 0
     2 2];
 
 e=zeros(4,1);
 for i=1:4
   e(i)=norm(d(i,:)-[x y]);  
 end
 m=min(e);
 if(m>1)
     z=false;
 else
     z=true;
 end
end

