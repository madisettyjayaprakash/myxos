integer main(){
    integer i,j;
   
    j=Fork();
     i=2;
while(i<10)do
  
    print(i);
     
    i=i+2;
    
endwhile;
    
    i=Exec("odd.xsm");
    
    
     return 0;
}