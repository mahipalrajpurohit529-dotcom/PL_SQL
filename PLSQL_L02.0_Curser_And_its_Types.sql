-- CURSOR:
-- A cursor is a PL/SQL construct used to process the result of a SQL query one row at a time.
-- It acts as a pointer to the rows returned by a SELECT statement.
-- Cursors are required when a query returns multiple rows and row-wise logic is needed.


-- TYPES OF CURSORS:
-- 1) Implicit Cursor: Created automatically by Oracle for INSERT, UPDATE, DELETE,
--    and SELECT INTO statements.It is autometically created when we run DML operations
-- 2) Explicit Cursor: Defined by the programmer to handle queries returning multiple rows
--    and gives full control using OPEN, FETCH, and CLOSE.


-- there are four attributes of curser :- 
-- %FOUND     : Returns TRUE if the last FETCH returned a row.
-- %NOTFOUND  : Returns TRUE if the last FETCH did not return any row.
-- %ROWCOUNT  : Returns the number of rows fetched so far.
-- %ISOPEN    : Returns TRUE if the cursor is currently open.



-- create table emp_cp as 
-- (SELECT employee_id,first_name from hr.EMPLOYEES where employee_id between 100 and 104);

-- select * from emp_cp

-- begin
--     dbms_output.put_line('we are inside the loop');
--     update emp_cp set first_name = 'regex' where EMPLOYEE_ID = 103;
--     dbms_output.put_line(sql%rowcount);        -- shows you how many rows were affected
-- end;







-- declare 
--     cursor emp_cur is select * from EMP_CP;
--     emp_rec emp_cp%rowtype;

-- begin 
--     open emp_cur;
--     fetch emp_cur into emp_rec;
    
--     if emp_cur%found then 
--         dbms_output.PUT_LINE('curser found');
--     else 
--         dbms_output.PUT_LINE('curser not found');
--     end if;

--     if emp_cur%found then           -- this depends on the fatch 
--         dbms_output.put_line('data is being fatched');
--     else 
--         dbms_output.put_line('Data not found ');
--     end if;
--     CLOSE emp_cur;
-- end;





-- declare 
--     cursor emp_cur is select * from EMP_CP;
--     emp_rec emp_cp%rowtype;

-- begin 
--     open emp_cur;
--     fetch emp_cur into emp_rec;

--     while(emp_cur%found) LOOP
--         if emp_cur%found then           -- this depends on the fatch 
--             dbms_output.put_line(emp_rec.employee_id);
--         else 
--             dbms_output.put_line('Data not found ');
--         end if;
--         fetch emp_cur into emp_rec;
--     end loop;
--     CLOSE emp_cur;
-- end;
     





-- we dont have to open,fatch,close the cursor when using for loop

declare 
    cursor emp_cur is select * from EMP_CP;

begin 
    for line in emp_cur loop
            dbms_output.put_line(line.employee_id);
    end loop;
end;