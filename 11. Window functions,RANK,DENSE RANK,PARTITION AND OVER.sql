-- Window functions

SELECT gender, AVG(salary) avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

SELECT dem.first_name,sal.last_name , gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
    ;
# this helps with displaying results of aggregate functions on each row without grouping
# PARTITION kind of works like grouping


SELECT dem.first_name,sal.last_name , gender, 
SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
    ;
    
    
SELECT dem.first_name,sal.last_name , gender, 
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

#adding ORDER BY into a PARTITION BY causes a rolling sum

-- ROW numbers, RANK and dense RANK

SELECT dem.employee_id,dem.first_name,sal.last_name , gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) as row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

# row numbers return the number of each row
# rank allows for duplicates to appear... it is similar to how when a tornament is won and certain people have the same points and have to share a rank
# DENSE_RANK is similar to RANK but different by allowing the next number numerically
    
    