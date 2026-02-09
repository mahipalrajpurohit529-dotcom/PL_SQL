-- create a program to check if a given number is armstrong or not 

DECLARE
    num int := 153;
    temp_num int := num; 
    power_int INT := 0;
    sum int := 0;
    temp int := 0;

begin 
    while temp_num>0 loop 
        power_int := power_int+1;
        temp_num := trunc(temp_num /10);
    end loop;

    temp_num := num;

    while (temp_num > 0) loop
        temp := mod(temp_num,10 );
        sum := sum + power(temp,power_int);
        temp_num := trunc(temp_num/10 );
    end loop;

if (sum = num ) then 
    DBMS_OUTPUT.put_line('Armstrong number');
else 
    DBMS_OUTPUT.put_line('Not Armstrong number');
end if;
end;