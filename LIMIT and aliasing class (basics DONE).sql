-- LIMIT AND ALIASING

SELECT *
from employee_demographics
ORDER BY age DESC
LIMIT 4
;

SELECT *
from employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;
 
 -- ALIASING ----
 
 SELECT gender, avg(age) avg_age
 FROM employee_demographics
 GROUP BY gender
 having avg_age > 40
 ;
 
 
 
 
 



