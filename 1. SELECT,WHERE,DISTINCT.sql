SELECT * 
FROM employee_demographics;
#did not specify the database (parks_and_recreation)
# * == everything

SELECT *
FROM parks_and_recreation.employee_demographics;
#now database is specified

SELECT first_name,age,birth_date
FROM parks_and_recreation.employee_demographics;
#select columbs "first_name,age and gender" and show it in a table
# tried switching the lines to see if it would still work but it gave error
# due to "no tables used"
# when "SELECT" is written the script is starts from there

SELECT first_name,
last_name,
birth_date,
(age + 10)*5
FROM parks_and_recreation.employee_demographics;
#this format also makes sense to try to make it simpler to read,especially for calculations as well
#PEDMAS is the calculation sequence that the code calculates in(this is just the american version of BODMAS)
#Parenthesis
#Exponents
#Divition
#Multiplication
#Addition
#Subtraction

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics;
#DISTINCT is the same as UNIQUE