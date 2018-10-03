-- case conversions function
select first_name
,last_name
,LOWER (first_name) as lower
, Upper( last_name)as upper
, INITCAP(last_name) as initcap
from  employees;

-- convers a letter  for searching
select first_name
,last_name
from  employees
where lower (last_name) like '%a%';

-- CONCAT
select first_name || ' ' || last_name as fullname
, CONCAT(first_name , last_name) as concatname
from  employees;

-- SUBSTR 
select first_name 
, SUBSTR (first_name, 1,3) as substring1 -- cut from 1st letter to 3rd
, SUBSTR (first_name, 2,4) as substring2 -- cut from 2nd to 4th letter
, SUBSTR (first_name, -1,4) as substring3 -- cut from last letter -1 to 4 possition to the right
from  employees;

-- length
select first_name, length(first_name)
from  employees;
-- INSTR
select first_name
, INSTR (first_name,'e', 1,1) -- found 1st e in the word
, INSTR (lower(first_name),'e', 1,1) -- convert in lower letter and dfound 1st E letter
from  employees;

-- found 1st comma and show the result until 1st comma //result = MD-2000
select substr ('MD-2000, or. Chisinau, str. Mihai Eminescu 12, ap. 28',1,
INSTR ('MD-2000, or. Chisinau, str. Mihai Eminescu 12, ap. 28',',',1,1)-1) as COMMA
from dual;


