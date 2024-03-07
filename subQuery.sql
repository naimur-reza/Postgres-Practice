-- Active: 1708926568697@@127.0.0.1@5432@test_db@public
CREATE TABLE employees (
    employee_id INT PRIMARY KEY, employee_name VARCHAR(255) NOT NULL, salary DECIMAL(10, 2) NOT NULL, company VARCHAR(255) NOT NULL
);

-- Inserting sample data into the employees table
INSERT INTO
    employees (
        employee_id, employee_name, salary, company
    )
VALUES (
        1, 'John Doe', 50000.00, 'ABC Corp'
    ),
    (
        2, 'Jane Smith', 60000.50, 'XYZ Ltd'
    ),
    (
        3, 'Bob Johnson', 75000.75, '123 Industries'
    ),
    (
        4, 'Alice Williams', 55000.25, 'Tech Innovators'
    ),
    (
        5, 'Charlie Brown', 70000.00, 'Global Solutions'
    );

SELECT max(salary) from employees