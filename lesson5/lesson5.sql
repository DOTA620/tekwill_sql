SELECT student_id,first_name,student_reg_year AS Admission FROM AD_STUDENT_DETAILS;


SELECT * FROM AD_COURSE_DETAILS;


SELECT student_id, first_name Admission + 2 COURSE EXPIRY FROM ad_student_details;


SELECT * FROM ad_student_details;


SELECT student_id, first_name, student_reg_year+2 "COURSE EXPIRY",student_reg_year FROM ad_student_details;

DESCRIBE ad_course_details;

SELECT * FROM ad_course_details;

DESCRIBE AD_STUDENT_DETAILS;

SELECT student_id, first_name, parent_ID, student_reg_year "REGISTRATION" FROM ad_student_details;

SELECT DISTINCT name FROM ad_exam_details;

SELECT student_ID "Student#", first_name "Student", parent_id "Parent Information", student_reg_year "REGISTRATION ON" FROM ad_student_details;

SELECT * FROM EMPLOYEES;


SELECT first_name ||';' || last_name "FullName" , hire_date, salary FROM EMPLOYEES;