-- TRIGGERS and EVENTS --

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
    AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN 
    INSERT INTO employee_demographics (employee_id, first_name, last_name)
	values ( NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary ( employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES ( 13, 'GARIMA', 'SINGH', 'MASTERJI', 50000, NULL  )
;


-- EVENTS --

SELECT *
FROM employee_demographics;

delimiter $$

CREATE EVENT delete_retires
on schedule every 30 second 
 #We have to schedule event so that this will keep repeating by itself
 # after that interval of time whenever someone crosses age 60
do
BEGIN 
    DELETE
    FROM employee_demographics
    WHERE age >= 60;
END $$
delimiter     ;

SHOW VARIABLES LIKE 'event%' ;












    
             
         