-- JOIN, INNER JOIN, outer join, AS --

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT *
FROM employee_demographics AS dem   # AS is used to give a short name
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
  ;
  
SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem   # AS is used to give a short name
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
  ;


-- self join --

SELECT *
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
  ON emp1.employee_id = emp2.employee_id
;


SELECT *
FROM employee_demographics AS dem   # AS is used to give a short name
INNER JOIN employee_salary AS sal
  ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
  ON sal.dept_id = pd.department_id
  ;
  




  
   
  
  
  