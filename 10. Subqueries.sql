-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN
				(SELECT employee_id
                FROM employee_salary
                WHERE dept_id = 1)
;

# The query in the brackets is the subquery
# the subquery should only have one column (most of the time)

-- Subqueries in SELECT statements

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary) avg_salary
FROM employee_salary
;

-- Subqueries in the FROM statements
 
 SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
 FROM employee_demographics
 GROUP BY gender;
 
 SELECT AVG(max_age)
 FROM (
 SELECT gender, 
 AVG(age) AS avg_age , 
 MAX(age) AS max_age, 
 MIN(age) AS min_age , 
 COUNT(age) AS count_age
 FROM employee_demographics
 GROUP BY gender) AS agg_table;

# Don't forget to name your table when performing a subquery in the FROM statement
# when calling a column of a table in a subquery, you must name the column or put the aggregated column in `` backticks
# when it is like this we return the average of the whole column
#formatting is important for readability for someone else who will read the code
-- 