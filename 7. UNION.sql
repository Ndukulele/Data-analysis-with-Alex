-- Unions

#UNION allows you to combine rows of data on separate tables or same table


SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_Salary
;
# This is an example of a bad data because the data must be the same

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_Salary
;

#The reason why there is no repetition of data is because this is also UNION DISTINCT and it only takes unique values
# UNION ALL will give all the data with repeating ones allowing for duplicates to show

SELECT first_name, last_name, 'Old Man' Label 
FROM employee_demographics
WHERE age > 40 and gender = 'male'
UNION
SELECT first_name, last_name, 'Old Lady' Label
FROM employee_demographics
WHERE age > 40 AND gender = 'female' 
UNION
SELECT first_name, last_name, 'Highly Paid Employee' Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;
