-- create a PL/SQL program to check if a given number is prime or not 

declare 
    num int := 37;
    ind int := 1;

BEGIN
    for x in 2..trunc(num/2) LOOP
        if(mod(num,x) =0 ) then 
            ind := 0;
            exit;
        end if;
    end loop;

    if(ind = 1 ) then 
        dbms_output.put_line('Prime Number');
    else
        dbms_output.put_line('Not a Prime Number');
    end if;
end;
