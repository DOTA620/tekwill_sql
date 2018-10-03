-- 26.09.18
--1 Exercitii
Select first_name, last_name , salary*12 from employees;
--2
select first_name || q'['s last name is ]' || last_name "FullName" from employees;
--3
select DISTINCT exam_type from ad_exam_details;
-- Lectia6

select employee_id, last_name, job_id, department_id From employees where department_id = 90;

select * from employees where last_name = 'King';

select * from employees where hire_date = '24-MAR-14';

select hire_date from employees;

select * from employees where salary <= 3000;
select * from employees where salary <> 9000;
 --BETWENN...AND
select * from employees where salary BETWEEN 3000 AND 17000;

select * from employees where hire_date BETWEEN '24-MAR-14' AND '24-MAR-16';
-- IN
select * from employees where salary IN (9000, 3000 ,17000);
select * from employees where hire_date IN ('24-MAR-14', '24-FEB-14', '24-MAR-16');

-- LIKE

select * from employees where last_name LIKE '%l';
select * from employees where first_name LIKE 'A%';
select * from employees where first_name LIKE '%i%';
select * from employees where first_name LIKE '__e%';

select * from employees where last_name LIKE '%r';
select * from employees where job_id LIKE '%CLERK%';
select * from employees where job_id LIKE 'ST%';
-- a 3-a pozitie contine _ si verifica orice
select * from employees where job_id LIKE '___%';

-- IS NULL / IS NOT NULL
select * from employees where manager_id IS NULL;

select * from employees where COMMISSION_PCT IS NOT NULL;

--AND
select * from employees where salary >=3000 AND  DEPARTMENT_ID = 90;
select * from employees where salary >=10000 AND job_id LIKE '%MAN%';
-- OR
select * from employees where salary >= 17000 OR  DEPARTMENT_ID = 90;





-- 28.09.19
-- OR/AND toghether
select last_name
, department_id
, salary
from employees
where department_id = 60 -- department_id is choosing between 60 or 80
or department_id = 80 and salary > 10000; --these 2 are toghether

-- to apply AND condition for both OR
select last_name
, department_id
, salary
from employees
where (department_id = 60 -- department_id is choosing between 60 or 80
or department_id = 80) and salary > 10000; --these 2 are toghether


select * from employees where job_id= 'SA_REP' OR job_id = 'SA_MAN' and phone_number like '5%';

select * from employees where (job_id= 'SA_REP' OR job_id = 'SA_MAN') and phone_number like '5%';

-- Order by
select * from employees
where job_id= 'SA_REP' OR job_id = 'SA_MAN' 
and phone_number like '0%'
ORDER BY salary;


select * from employees
where job_id= 'SA_REP' OR job_id = 'SA_MAN' 
and phone_number like '0%'
ORDER BY salary DESC;

-- alias  can be  used  in order by
select last_name || first_name FullName
from employees
ORDER BY FullName;

select last_name || first_name FullName
,salary 
from employees
ORDER BY 1 ,2;

select last_name || first_name FullName
,salary 
from employees
ORDER BY 1 desc ,2 asc;

-- fetch , offset
select * from employees
order by employee_id
fetch first 10 rows only;

-- last 10 rows
select * from employees
order by employee_id desc
fetch first 10 rows only;


-- substitution
select * from employees where employee_id = &employee_id;
-- 01.10.2018
-- string
select * from employees where first_name = '&name_var';
-- showing a column
select first_name,email, salary, hire_date, &hide_column from employees
 where first_name = '&var_name';

-- 3 variables
select first_name, last_name, &hide_column
from employees
where hire_date = '&date_var' -- 03-JAN-14
Order By &hide_column_2;


-- remember the subtitution value
select employee_id, last_name, job_id, &&column_name
from employees
order by &column_name;
-- delete the remembered value
undefine column_name;

-- define a variable
DEFINE salary_num = 17000
select employee_id, last_name, job_id, salary
from employees
where salary = &salary_num;

-- set verify on
SET VERIFY ON
select employee_id, last_name, job_id, salary
from employees
where salary = &salary_num;



