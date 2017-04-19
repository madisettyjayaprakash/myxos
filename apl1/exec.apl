integer main(){
     
	integer i,pid,j;
	pid=Fork();
	print(pid);
    pid=Fork();
    print(pid);
    pid=Fork();
    print(pid);
     pid=Fork();
    print(pid);

     return 0;
}