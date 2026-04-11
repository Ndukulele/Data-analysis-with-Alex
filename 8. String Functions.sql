-- String Functions

SELECT LENGTH('Joburg');

SELECT first_name, LENGTH(first_name) name_length
FROM employee_demographics
ORDER BY 2
;

# ORDER BY 2 allows the table to be ordered from the smallest length to the largest 

SELECT UPPER('me') Not_you;
SELECT LOWER('YOU') Not_me;

# UPPER to change text to uppercase
# LOWER to change text to lowercase

SELECT first_name, UPPER(first_name) name_Uppercase
FROM employee_demographics;

-- TRIM
# Gets rid of white space infront of at the end of a word

SELECT TRIM('                                me                            ');
SELECT LTRIM('                                me                            ');
SELECT RTRIM('                                me                            ');

# LTRIM gets rid of space on the Left side of the word
# RTRIM gets rid of space on the right side of the word

-- Substring

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 3),
birth_date,
SUBSTRING(birth_date,6, 2) birth_month
FROM employee_demographics;

# LEFT takes the first characters of a string
# RIGHT takes the right most characters of a string
# SUBSTRING takes the characters specified position

SELECT first_name, REPLACE(first_name , 'a', 'y')
FROM employee_demographics;

# replaces the words that are specified

SELECT LOCATE('x' ,'The Xan');

#Locates the position of the character

SELECT first_name, LOCATE('An' ,first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name)
FROM employee_demographics;

# CONCAT combines two separate columns
