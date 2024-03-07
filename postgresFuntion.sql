-- Active: 1708926568697@@127.0.0.1@5432@company_db@public

CREATE Function () RETURN INTEGER LANGUAGE;

SELECT * FROM employees;

CREATE PROCEDURE remove_user(id INTEGER) 
LANGUAGE plpgsql AS 
$$
BEGIN
	DELETE employees WHERE employee_id = id END
$$; 