-- WHERE CLAUSE

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary >= 55000
;


SELECT *
FROM employee_demographics
WHERE gender='female'
;


SELECT *
FROM employee_demographics
WHERE gender !='female'
;


-- Logical operators, AND or OR--

SELECT *
FROM employee_demographics
WHERE gender='male'
AND birth_date > '1985-01-01'
;


select *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = '44') OR age > 55
;


-- LIKE statement --
-- % (anything) and _ (specific value) --

select *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

select *
FROM employee_demographics
WHERE first_name LIKE '%a%'
;

select *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

select *
FROM employee_demographics
WHERE first_name LIKE 'a__%'
;


























