-- ActivityGuide Lesson 3 Restricting ans Sorting Data
-- 1
SELECT last_name, salary
FROM employees 
WHERE salary >= 12000;

--2 
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;
--3 
SELECT last_name, salary
FROM employees 
WHERE salary NOT BETWEEN 5000 AND  12000;

--4 
SELECT last_name, job_id, hire_date 
FROM employees
WHERE last_name IN ('Matos', 'Taylor');

--5
SELECT last_name, department_id 
FROM employees
WHERE department_id IN (20,50)
ORDER BY last_name;
--6 
SELECT last_name, salary
FROM employees 
WHERE salary  BETWEEN 5000 AND  12000 AND department_id IN (20,50);

--7
SELECT last_name, hire_date
FROM employees
WHERE hire_date > = '01-JAN-06' AND hire_date < '01-JAN-07';

--8
SELECT last_name, job_id
FROM employees
WHERE manager_ID IS NULL;

--9 
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
Order by commission_pct DESC;

--10 value in prompt message 12 000
SELECT last_name, salary
FROM employees
WHERE salary>= &sal_amt;
--11    
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id= &manager
Order by &order_col;
undefine &manager;
undefine &order_col;
--12
SELECT last_name
FROM employees
WHERE last_name like '__a%';
--13
SELECT last_name
FROM employees
WHERE last_name like '%a%' and last_name like '%e%';

--14
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK') AND salary != 2500 AND salary !=3500 AND salary !=7000;

--15
SELECT last_name, salary as "Monthly Salary", commission_pct
FROM employees
WHERE commission_pct = 0.2;
