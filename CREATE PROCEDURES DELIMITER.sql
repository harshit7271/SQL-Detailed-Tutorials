-- STORED PROCEDURES -- VERY VERY USEFUL AND IMPORTANT


CREATE PROCEDURE large_salaries() 
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN 
     SELECT *
	 FROM employee_salary
     WHERE salary >= 50000;
     SELECT*
     FROM employee_salary
     WHERE salary >= 10000;
END   $$
delimiter  ;

CALL large_salaries3();


DELIMITER $$
CREATE PROCEDURE large_salaries4(NAME_ INT)
BEGIN 
     SELECT salary
	 FROM employee_salary
     WHERE employee_id = NAME_
     ;
END   $$
DELIMITER  ;

CALL large_salaries4(1)








 













