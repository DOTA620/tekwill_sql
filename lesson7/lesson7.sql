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


define test_string = 'MD-2000, or. Chisinau, str. Mihai Eminescu 12, ap. 28'
select substr ('&test_sting',1, instr ('&test_sting',',',1,1)-1) as zip_code
from dual;

Create table String_Addreses as
Select 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28' as address from dual
Union
Select '2010,or.Chisinau, str. Grigore Vieru 50, ap.3' as address from dual
Union
Select 'MD2015,or.Chisinau, str. Ion Creanga 4, ap.17'  as address from dual
Union
Select 'md-2030,Chisinau, st. Muncesti 8, ap.54'  as address from dual
Union
Select 'MD-2004,Chisineov, str-da. Bucuriei 2, ap.23'  as address from dual
Union
Select 'Md-2045,or Chisin., s. Ion Inculet 8, ap.50'  as address from dual
Union
Select 'Md2013,chisinau, str. Vasile Lupu 40, ap.20'  as address from dual
Union
Select 'MD2031,or.CHISINAU,'  as address from dual
Union
Select 'md2017,or.CH, str. , ap.28'  as address from dual;

select * from String_Addreses;

select address, 'MD-' || substr(substr(address, 1,
instr(address, ',')-1),-4)  as zip_code
from String_Addreses;

Select Substr(address,1,instr(address,',',1,1)-1) as t1
     ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;



Select address
     ,instr(address,',',1,1) as t1
     ,substr(address,1,instr(address,',',1,1)-1) as t2
     ,substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
     ,'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as adress
From String_Addreses;


select salary 
,lpad (salary,10,'$')
,rpad (SALARY, 6,'e')
,lower(concat(concat(first_name, ' ' ),last_name)) as full_name
, upper(concat(concat(first_name, ' ' ),last_name)) as full_name
, initcap(concat(concat(first_name, ' ' ),last_name)) as full_name
FROM EMPLOYEES;



select round (100.455321,2)round_1
,round (100.452321,2)round_1
,round (100.455321,0) round_2
,round (100.455321) round_3
,round (105.455321,-1) round_4
,round (150.455321,-2) round_5
from dual;



select trunc (100.455321,2)trunc_1
,trunc (100.452321,2)trunc_1_a
,trunc (100.455321,0) trunc_2
,trunc (100.455321) trunc_3
,trunc (105.455321,-1) trunc_4
,trunc (150.455321,-2) trunc_5
,trunc (150.545321,2) trunc_5
from dual;


select ceil (100.455321)ceil_1
,ceil (100.00001)ceil_2
,ceil (105.00001)ceil_3
,floor  (100.452321)floor_1_a
,floor (100.00001)floor_2
,floor (105.00001)floor_3
,floor (105.999999)floor_3_b
from dual;

select mod (10,5)mod_1
,mod (10,2)mod_2
,mod (100,3)mod_3
from dual;
