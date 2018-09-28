-- afisati numele complet, numele departamentului
 select first_name||' ' ||last_name "FullName"
 , 'Shipping' as department_name
 , department_id
 , phone_number
 , salary 
 from employees 
 where job_id = 'ST_CLERK' 
 and phone_number like '%4'
 and department_id = 50;
 
 
 
-- Verificati care sunt persoanele care sunt din departmentul IT si au salariu cuprins intre 4000 si 10000
  
 select first_name
 ,last_name
 , salary
 ,'IT' as department_name 
 from employees 
 where department_id = 60 and salary BETWEEN 4000 AND 10000;