-- TEMPORARY TABLE ---
select *
from temp_table;

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
) ;

SELECT *
FROM temp_table;

INSERT INTO temp_table
values ('harshit', 'singh', 'LOTR');

SELECT *
FROM temp_table
;



SELECT *
FROM employee_salary;


create temporary table salary_over_50k;
select *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;











