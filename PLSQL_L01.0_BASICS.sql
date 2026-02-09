-- PlSQL
	-- it stands for procedural language SQL
    -- it is an extension of SQL where we combine the capablities of SQL and programing langueage together 
    -- we use it because it allows logic reuse
    -- it allows exceptional handelling
    -- it allows conditions,loops,variables,functions,etc


-- it has 3 blocks
    -- Declare 
        -- we define variables,exceptions,procedures,etc 
        -- not compulsary
    -- begin/end 
        -- we call this executive/executivable block
        -- this is compulsory 
    -- exception 
        -- here we handle the errors
        -- this is not compulsory



-- SET SERVEROUTPUT ON;

-- begin 
--     DBMS_OUTPUT.PUT_LINE('hey guyz');
-- end;






-- -- join two strings 
-- begin 
--     DBMS_OUTPUT.PUT_LINE('hey guyz' || '-' || 'yash');
-- end;





-- -- creating variable

-- DECLARE
--     var int := 10;

-- begin 
--     DBMS_OUTPUT.PUT_LINE(var);
-- end;




-- conditions

-- DECLARE
--     var int := 10;

-- begin 
--     var := 12;       -- value changed
--     if(mod(var,2)=0) then 
--         DBMS_OUTPUT.PUT_LINE( 'divisible' );
--     else
--         DBMS_OUTPUT.PUT_LINE( 'not divisible' );
--     end if;
-- end;

















-- loops 
    -- basic ,while , for




-- while :- 

-- DECLARE
--     var int := 10;

-- begin 
--     while var>=5 loop
--         DBMS_OUTPUT.PUT_LINE( 'num = ' || var );
--         var := var -1; 
--     end loop ;
-- end;





-- basic :- 

-- DECLARE
--     var int := 10;

-- begin 
--     loop
--         DBMS_OUTPUT.PUT_LINE( 'num = ' || var );
--         var := var + 1; 
--         exit when var >20;
--     end loop;
-- end;





-- for loop :- 


-- BEGIN
--     FOR i IN 1..5 LOOP
--         DBMS_OUTPUT.PUT_LINE(i);
--     END LOOP;
-- END;









-- CURSER :-
    -- it is a pointer which provides the control over the result of a sql quary 


-- declare
--     name varchar(20);
--     v_salary hr.employees.salary%type;

-- begin
--     select first_name,salary into name,v_salary from hr.employees where employee_id = 101;
--     dbms_output.PUT_line(name || '  ' || v_salary);
-- end;










-- %rowtype 
    -- it is an attribute which is used to create a variable of record type
    -- in this record type we store/create a column with its data type
    -- it is kind of like dictionary (key and value )

-- record data type :-
    -- it is a data structure which is used to store different datatypes together


-- DECLARE
--     v_Rec hr.employees%rowtype;

-- begin 
--     select * into v_rec from hr.employees where employee_id = 101;
--     dbms_output.put_line(v_rec.first_name || ' : ' || v_rec.salary);
-- end;






