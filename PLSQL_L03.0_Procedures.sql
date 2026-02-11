-- a stored procedure is a block of code that can used again and again 
-- the logic is saved in database and not the server or file
-- so if we make a procedure in one file ,we can call it in another file of the same database






-- create procedure or replace pro
-- as 
-- begin
--     dbms_output.put_line('hey guyz');
-- end;

-- execute pro();






-- create procedure pro2
-- as 
-- begin 
--     dbms_output.put_line('calling second procedure');
--     pro();
-- end;


-- execute pro2();





-- input :-


-- create procedure pro3(x in int)
-- as 
-- begin 
--     dbms_output.put_line('The sq of given input is ' || x*x);
-- end;


-- execute pro3(10);







-- loop in procedure

-- create procedure pro4(x in int)
-- as 
-- begin 
--     for i in 1..x loop
--         dbms_output.put_line(i);
--     end loop;
-- end;


-- execute pro4(10);






-- logic with salary(give increase of 5%)

-- CREATE OR REPLACE PROCEDURE pro5(salary IN NUMBER, newsalary OUT NUMBER)
-- AS 
-- BEGIN 
--     newsalary := salary*1.05;
--     DBMS_OUTPUT.PUT_LINE(salary*1.05);
-- END;
-- /

-- DECLARE 
--     x NUMBER := 25000;
--     y NUMBER := 0;

-- BEGIN 
--     pro5(x,y);
--     DBMS_OUTPUT.PUT_LINE(y);
-- END;
-- /












-- logic with salary(give increase of 5%)

-- create procedure pro6(salary in out int)
-- as 
-- begin 
--     dbms_output.put_line('old salary = ' || salary);
--     salary := salary*1.05;
--     dbms_output.put_line('new salary = ' || salary);
-- end;


-- declare 
--     x int := 25000;
-- begin 
--     pro6(x);
--     dbms_output.put_line(x);
-- end;














