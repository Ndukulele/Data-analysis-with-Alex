-- WHERE Clause

#Where is used to filter rows instead of columns liek the SELECT clause
SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';
# "=" is called a comparison operator

SELECT *
FROM employee_salary
WHERE salary >= 50000;
#when using "> 50000" the employee that earns exactly 50000 will not show because the code will read from 50001
#if you want the employees who earn exactly 50000 to also show use ">=". the same can be done with "<="

SELECT *
FROM employee_demographics
WHERE  gender > '1985-01-01'
;
#"!=" = not equal to

-- AND OR NOT -- Logical Operators

SELECT *
FROM employee_demographics
WHERE  gender > '1985-01-01'
OR NOT gender = 'Male'
;
# AND == both must be true
# OR == one of them can be true
# NOT == exclude that

SELECT *
FROM employee_demographics
WHERE  (first_name = 'Leslie' AND age = 44) OR age > 55
;
#integers don't need to be put in quotation marks

-- LIKE Statement
-- % and _

#% == anything
#_ == specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

#for WHERE you need to know the specific value you need if using strings
#for LIKE 'JER%' the word needs to start with 'JER' but anything after that is fine
#for LIKE '%er%' the word just needs to have 'er' in any part of the word
# and it seems like capitilisation doesn't matter when it come to this
# for LIKE 'a%' the word just needs to start with 'a'
# for LIKE 'a__' the word needs to start with the letter a but must have two other letters after it
# for LIKE 'a___' the word needs to start with the letter a but must have THREE other letters after it
# for LIKE 'a___%' the word needs to start with the letter a,must have three letters after it and anything after that 

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;
# LIKE '1989%' that person needs to be born in 1989