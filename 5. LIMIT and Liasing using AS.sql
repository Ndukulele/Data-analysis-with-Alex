-- Limit & Liasing

SELECT *
FROM employee_demographics
LIMIT 2, 3
;

# having only one number ( LIMIT 3) will only point to the position of the row
# when having another number with a comma (LIMIT 2, 2) this means to show the first 2 rows after the second row

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

-- Aliasing
# A way to change the name of the column

SELECT gender , AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

# AS can be used to rename the column
# The code can do this without using AS because it will always be implied

SELECT gender , AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;

