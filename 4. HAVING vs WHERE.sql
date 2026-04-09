-- HAVING vs WHERE

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

#HAVING is made specifically for when using GROUP BY isntead of using WHERE
# when using WHEN before GROUP BY the code gives and error because AVG is only calculated after the GROUP BY clause is made , so basically it will try to compare something that has not been made yet

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;
#HAVING will only work after a GROUP BY clause is called

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' AND AVG(salary) > 75000
GROUP BY occupatuion
;
#tried making the code in a different way to give the same results but returned 'Invalid use of group function
# meaning aggregate functions are mainly used for GROUP BY function to return a summary value for groups eg. AVG, MIN, MAX, MEDEAN, SUM
