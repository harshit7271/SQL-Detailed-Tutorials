-- CASE Statements --

SELECT first_name,
last_name,
CASE 
      WHEN age <= 30 THEN 'YOUNG'  # we can add multiple WHEN and THEN statements
      WHEN age BETWEEN 31 AND 50 then 'old'
      when age >= 50 then 'on death door'
END AS Age_bracket


FROM employee_demographics
;


select first_name, last_name, salary,

case 
     WHEN salary < 50000 then salary + (salary*0.05)       # 5% increment
     WHEN salary > 50000 then salary + (salary * 0.07)
     WHEN salary = 50000 then salary + 0
end as INCREASED_SAL
FROM employee_salary
;


select first_name, last_name, salary,

case 
     WHEN salary < 50000 then salary * 1.05    # 5% increment
     WHEN salary > 50000 then salary * 1.07
     WHEN salary = 50000 then salary + 0
	
end as INCREASED_SAL,
case
     WHEN dept_id=6 then salary * .10
     
     end as BONUS
FROM employee_salary
;




   




   
 














      



