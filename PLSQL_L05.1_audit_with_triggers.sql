-- drop table emp_cp2;

-- create table emp_cp2 
-- as select employee_id , first_name , salary from hr.employees;


-- drop table employess_audit;

-- create table employess_adt (
--     adit_id number generated always as IDENTITY,
--     emp_id number,
--     old_salary number,
--     new_salary number,
--     changed_by varchar2(100),
--     changed_on date,
--     action varchar2(10)
-- );


-- create or replace trigger trg_employees_audit 
-- after insert or update or delete on emp_cp2
-- for each row 
-- begin 
--     if inserting then 
--         insert into employess_adt
--         (emp_id,OLD_SALARY,NEW_SALARY,CHANGED_BY,CHANGED_ON,ACTION)
--         VALUES
--         (:new.employee_id,null,:new.salary,user,sysdate,'insert');
--     elsif updating then 
--         insert into employess_adt 
--         (emp_id,OLD_SALARY,NEW_SALARY,CHANGED_BY,CHANGED_ON,ACTION)
--         VALUES
--         (:new.employee_id,:old.salary,:new.salary,user,sysdate,'update');
--     elsif deleting then 
--         insert into employess_adt 
--         (emp_id,OLD_SALARY,NEW_SALARY,CHANGED_BY,CHANGED_ON,ACTION)
--         VALUES
--         (:old.employee_id,:old.salary,null,user,sysdate,'delete');
--     end if;
-- end;


insert into  emp_cp2(employee_id,first_name,salary)
values (1000,'Raj',45000);

update EMP_CP2 set FIRST_NAME = 'yash' where employee_id between 200 and 205;
delete from emp_cp2 where first_name = 'yash';


select * from EMPLOYESS_adt;
select * from EMP_CP2;