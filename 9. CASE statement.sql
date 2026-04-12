-- Case Statements

#CASE statements are more or less the same as IF statements

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'old'
    WHEN age >= 50 THEN "on Death's door"
END age_bracket
FROM employee_demographics
;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10%

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary*1.05
    WHEN salary > 50000 THEN salary*1.07
END new_salary,
CASE
	WHEN dept_id = 6 THEN salary*.1
END bonus
FROM employee_salary;

SELECT *
FROM employee_salary;


