-- CTEs --


WITH CTE_Example AS

(
SELECT GENDER, avg(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) total_persons
from employee_demographics dem
  JOIN employee_salary sal 
       ON dem.employee_id = sal.employee_id
group by gender 
)

SELECT AVG(salary)
FROM CTE_Example


# We use ctes because to use queries within queries and handle big datas
;

SELECT AVG(avg_sal)
FROM (
SELECT GENDER, avg(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) total_persons
from employee_demographics dem
  JOIN employee_salary sal 
       ON dem.employee_id = sal.employee_id
group by gender 
)  example_subquery


# EXAMPLE OF SUB QUERIES WHERE WE GET THE SAME EXACT OUTPUT BUT THE SYNTAX IS VERY DIFFICULT TO READ THAT'S WHY WE USE CTEs
;
WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
where birth_day > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
where salary > 50000
)
select *
from CTE_Example
join CTE_Exmaple2
    on  CTE_Example.employee_id = CTE_Example2.employee_id
    ;
    
    
    
    
    
    






  