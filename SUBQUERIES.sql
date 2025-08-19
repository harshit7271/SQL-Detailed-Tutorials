-- SUBQUERIES --

SELECT *
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
                     FROM employee_salary
                     WHERE dept_id =1)
                     ;
 
 SELECT first_name, salary,
  
        (SELECT AVG(salary)
         from employee_salary)
   
 FROM employee_salary
 ;
 
 
 
 
 
 
 
 


