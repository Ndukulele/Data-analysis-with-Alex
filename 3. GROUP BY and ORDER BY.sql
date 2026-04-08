-- Group By

select *
from employee_demographics;

SELECT first_name
FROM employee_demographics
GROUP BY gender;
# just found out that the reason why capital letters is for formatting it you can code without capitilisation but it helps when someone else reads your code
#The GROUP BY needs to match the column you're matching it with

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
# AVG(),MAX(),COUNT(),MIN() are aggregate functions

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;
#the reason why "Office Manager" shows up twice even if it's grouped is because the "Salary" are unique numbers. If the salary were the same value they would be grouped together.

-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;
#naturally ORDER BY starts by ordering the names in ascending(ASC) order
#you can use DESC to order by descending order

SELECT *
FROM employee_demographics
ORDER BY gender, age ;
#because gender only has two values to oder,age will be ordered in ascending order while grouped by gender

SELECT *
FROM employee_demographics
ORDER BY age, gender;
#oder priority is given to the first column that is called 
#because all ages are unique numbers the gender is not grouped, if there were multiple people with the same age they would group the gender as well

SELECT *
FROM employee_demographics
ORDER BY 5, 4 ;
#you can use the column position if you know the position of the column you want and for a quick query
#this is highly not recommended