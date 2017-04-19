decl
	integer status;
	integer fds1,fd2;
	string a;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	fds1 =Open("myfile.dat");
	print(fds1);
	 status=Close(fds1);
	 
	status=Write(fds1,"odd");
	print(status);

    fd2=Open("myfile.dat");
    print(fd2);
    status=Write(fd2,"even");
    print(status);

return 0;
}
