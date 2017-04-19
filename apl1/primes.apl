
integer main(){
breakpoint;
integer a,i,c,j,k;
string f;
read (a);
f="No primes";
if(a<=2) then
    print (f);
else
      j=2;
      while(j!=a)do
         c=0;
         k=j;
         i=2;
         while(i!=k+1)do
            if(k%i==0)then
               c=c+1;
            endif;
               i=i+1;
         endwhile;
              if(c==1)then
                 print(k);
              endif;
                 j=j+1;
       endwhile;
  
endif;
return 0;
}
