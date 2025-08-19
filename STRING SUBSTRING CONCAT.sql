-- STRING FUNCTIONS -- to find length

SELECT LENGTH('skyfall')
;

SELECT first_name, length(first_name)
FROM employee_demographics
order by 2
;

# UPPER AND LOWER

SELECT upper('sky');
SELECT lower('SKY');


SELECT   upper(first_name),Length(first_name)
FROM employee_demographics
;

-- LEFT AND RIGHT TRIM --

SELECT TRIM('               SKY           ');

SELECT first_name,
left(first_name, 4),  
right(first_name, 4),
substring(first_name,3,2),        #first name from third place to two next digits
birth_date,
substring(birth_date,6,2)
from employee_demographics
;


-- REPLACE ---

SELECT first_name, REPLACE(first_name, 'A', 'z')
FROM employee_demographics;

-- LOCATE --

SELECT LOCATE('I', 'HARSHIT')
;

SELECT first_name, 
LOCATE('i',  first_name)
from employee_demographics
;

SELECT first_name, 
LOCATE('nn', first_name),
LOCATE('rr', first_name)
from employee_demographics
;

-- CONCAT -- (TO ADD TWO DIFFERENT WORDS)

SELECT first_name, last_name,
concat(first_name,'   ',last_name) AS full_name
from employee_demographics
;


















   











