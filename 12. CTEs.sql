-- CTEs (Common Table Exprretion)

# Define a subquery block that you can reference within a main query
# it's a little similiar to subquery blocks but with this one we can name the block and more standadised
# you can use CTEs immediately after you create them

WITH CTE_Example (Gender, Avg_Sal, Max_Sal,Min_Sal,Count_Sal)AS
(
SELECT gender, AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

# CTEs are used to allow for more advanced calculations
# You can change the name of a column using CTEs

SELECT AVG(avg_sal)
FROM (SELECT gender, AVG(salary) avg_sal,MAx(salary) max_sal,MIN(salary) min_sal,COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery;

# CTEs are more simpler to read compared to subqueries

WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics d
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;