-- ActivityGuide Lesson 4 Single-Row functions
-- 1
SELECT sysdate "Date" FROM dual;

--2
SELECT employee_id, last_name, salary
,ROUND( salary * 1.155, 0) "New Salary"
FROM employees
Order by "New Salary" DESC;

--3 
SELECT employee_id, last_name, salary
,ROUND( salary * 1.155, 0) "New Salary"
, ROUND (salary *1.155,0 )- salary "Increase"
FROM employees;


--5 a.
SELECT INITCAP (last_name) "Name"
, length (last_name)"Length"
FROM employees
where last_name like 'J%' OR last_name like 'A%' OR last_name like 'M%'
Order by last_name;
-- 5 b.
SELECT INITCAP (last_name) "Name"
, length (last_name)"Length"
FROM employees
where last_name like '&start_letter%' 
--OR last_name like 'A%' OR last_name like 'M%'
Order by last_name;

-- 5 c.
SELECT INITCAP (last_name) "Name"
, length (last_name)"Length"
FROM employees
where last_name like UPPER('&start_letter%')
--OR last_name like 'A%' OR last_name like 'M%'
Order by last_name;

--6
SELECT 



select * from employees;