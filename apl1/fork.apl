decl
integer a,b,c;
enddecl

integer main()
{
a=Getpid();
print(a);
a=Getppid();
print(a);
a=Fork();
print("forked");
print(a);
a=Fork();

a=Getpid();
print(a);
if(a==0) then 
	b=Wait(1);
	if(b!=-1) then 
	 print(a);
	 b=Exec("odd.xsm");
	endif;
else if(a==1) then
	b=Wait(2);
	 if(b!=-1) then 
	  print(a); 
	  b=Exec("even.xsm");
	 endif;
else if(a==2) then
		b=Wait(3);
		 if(b!=-1) then 
		  print(a); 
		  b=Exec("odd.xsm");
		 endif;
else 
		 b=Wait(0);
		  print("Not waited");
          a=Signal();
		  if(b!=-1) then 
		   print(a); 
		   b=Exec("even.xsm");
		  endif;

endif;
endif;
endif;

print(a);
print(b);
return 0;
}