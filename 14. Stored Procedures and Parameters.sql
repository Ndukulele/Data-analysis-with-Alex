-- Stored Procedures

# stored procedures are a way to store code and use them later especially when the code is complex


CREATE PROCEDURE large_sal()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

#on top of CREATE PROCEDURE you can say USE parks _and_recreation to determine which database you want the procedure to be store in
#clicking on the lightning icon on the "large_sal" will show you how to call it in a different way"call parks_and_recreation.large_sal();"


CALL large_sal();

-- including another query in the PROCEDURE using DELIMITER

DELIMITER $$
CREATE PROCEDURE large_sal4()
BEGIN
SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL parks_and_recreation.`large_sal4`();


# the ';' is a delimiter to show the code where the query ends
# you can change a delimiter with DELIMITER
# after setting a delimiter remember to ALWAYS change it back to ;
# you can go to 'Stored Procedures' then right click and click on create procedure to make a procedure
# you can type in DROP procedure if EXISTS to delete a procedure that already has the same name as the one you're making

-- parameters

# parameters are passed as an input

DELIMITER $$
CREATE PROCEDURE large_sal5(parameter INT)
BEGIN
	SELECT salary
	FROM employee_salary 
    WHERE employee_id = parameter
    ;
END $$
DELIMITER ;

CALL large_sal5(1);

# it is encouraged to name your parameter after or very similar to the input column that you want to use in this case it was supposed to be 'employee_id' but I named it 'parameter'
# for example naming the parameter employee_id_param or p_employee_id