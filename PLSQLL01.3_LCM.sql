-- get lcm of two numbers using while loop 

declare
    num1 int := 32;
    num2 int := 48;
    lcm int := greatest(num1,num2);

begin 
    while (mod(lcm,num1) != 0 or mod(lcm,num2) != 0) loop
        lcm := lcm + 1;
    end LOOP;
    
    dbms_output.put_line('The lcm of ' || num1 || ' and ' || num2 || ' is ' || lcm);
end;