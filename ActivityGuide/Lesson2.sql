-- ActivityGuide Lesson2
-- 1. True
select last_name
, job_id
, salary AS Sal 
from employees;
-- 2. True
select * from job_grades;
-- 3. False, missing comma, no sal column, no x as operator
select employee_id, last_name
sal x 12 ANNUAL SALARY 
From employees;
-- 4
DESCRIBE departments;
--5 a.
DESCRIBE employees;
-- 5 b.
SELECT employee_id
, last_name
, job_id
, hire_date AS STARTDATE
FROM employees;
-- 6
SELECT DISTINCT job_id from employees;

-- 7
SELECT employee_id Emp#
, last_name Employee
, job_id Job
, hire_date AS "Hire Date"
FROM employees;
-- 8
SELECT last_name || ', ' || job_ID AS "Employee and Title"
from employees;
-- 9 
SELECT employee_id || ', '|| 
         first_name ||', '||
          last_name ||', '|| 
       phone_number ||', '||
              job_id||', '||
           hire_date||', '||
              salary||', '|| 
        department_id AS THE_OUTPUT
from employees;


