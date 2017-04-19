integer main(){
    integer status;
    string input;

    print("shell:-$");
    read(input);

    while(input != "exit") do
        status = Fork();
         print(status);
        if(status == -2) then
            status = Exec(input);

            if(status == -1) then
                print("Exec failed");
            endif;
        endif;

        if(status == -1) then
            print("Fork failed");

        else
            status = Wait(status);
        endif;

        print("shell:-$");
        read(input);
    endwhile;

    print("Shell is exiting");
    return 0;
}
