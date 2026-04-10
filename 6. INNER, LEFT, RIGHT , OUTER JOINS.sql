-- Joins

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON sal.employee_id = dem.employee_id
;
# You can write it as just JOIN because INNER JOIN is always implied
# If error gives "clause is ambiguous" you have to specify which tables the columns come from
# You can change the names of the tables to make the code more shorter and readable

-- Outer Joins

# There are left joins and right joins
# Left joins will take everything from the left table even if there are no matches and will only return the matches on the right table
# The same is true for the right join

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON sal.employee_id = dem.employee_id
;
#You can either say LEFT OUTER JOIN or LEFT JOIN, both is the same
# We pick the RIGHT JOIN because there is no Jon(employee_id no2) on employee_demographics table

-- Self Join

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

# Simplifiying the tables

-- Joining multiple tables together

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON sal.employee_id = dem.employee_id
INNER JOIN parks_departments as pd
	on sal.dept_id = pd.department_id
;
# When joining multiple tables together there must be a column that can be comparable between at least one of the tables
