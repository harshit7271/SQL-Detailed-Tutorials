-- GROUP BY --

SELECT *
FROM employee_demographics;

SELECT gender,
avg(age), max(age), min(age), count(age)
FROM employee_demographics
group by gender
;

select occupation
FROM employee_salary
group by occupation
;

select occupation, salary
FROM employee_salary
group by occupation,salary
;

-- ORDER BY (TO ARRANGE IN ORDERS LIKE ASC, DESC,ETC)--

SELECT *
FROM employee_demographics
order by gender, age desc
;
#we can use ASC for assecending order#

SELECT *
FROM employee_demographics
order by 5, 4  #these are coloumn no. for gender n age in table, we use it less
;










