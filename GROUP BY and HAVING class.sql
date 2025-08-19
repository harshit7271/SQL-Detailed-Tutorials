-- having vs where

SELECT gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40  #having comes after group by statement
;

SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation like '%manager%'
group by occupation 
HAVING AVG(salary) > 75000
;




