
-- create or replace function fun1 return int is 
-- begin 
--     DBMS_OUTPUT.PUT_LINE('called function');
--     return 1;
-- end;


-- declare 
--     n int := 0;

-- begin 
--     n := fun1();
--     dbms_output.put_line(n);
-- end;









-- create a funtion to find the lcm using the while loop 

-- create or replace function lcm(num1 int , num2 int) 
-- return int is 
-- result int := greatest(num1,num2);

-- begin 
--     while (true) loop 
--         if (mod(result,num1)=0 and mod(result,num2) =0) then 
--             return result;
--         else 
--             result := result + 1;
--         end if;
--     end loop;
-- end;



-- begin 
--     dbms_output.PUT_LINE(LCM(32,48));
--     dbms_output.PUT_LINE(LCM(25,60));
--     dbms_output.PUT_LINE(LCM(47,37));
--     dbms_output.PUT_LINE(LCM(30,4));    
-- end;











-- create a function to factorial of a given number 

-- create or replace function factorial (x int) 
-- return int is 
-- fact int := 1;

-- begin 

--     for i in 1..x loop 
--         fact := fact*i;
--     end loop;

--     return fact;

-- end;


-- begin 
--     dbms_output.PUT_LINE(FACTORIAL(4));
--     dbms_output.PUT_LINE(FACTORIAL(5));
--     dbms_output.PUT_LINE(FACTORIAL(10));
--     dbms_output.PUT_LINE(FACTORIAL(7));    
-- end;