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



