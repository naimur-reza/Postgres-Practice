-- Active: 1708926568697@@127.0.0.1@5432@test_db@public

SELECT * FROM person2;

ALTER Table person2 alter COLUMN age set NOT NULL

CREATE Table person (
    student_id serial PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, age INT NOT NULL, grade CHAR(2), course VARCHAR(50), email VARCHAR(50), dob DATE, blood_group VARCHAR(5), county VARCHAR(50)
)
-- Inserting data into the person table
INSERT INTO
    person (
        first_name, last_name, age, grade, course, email, dob, blood_group, county
    )
VALUES (
        'John', 'Doe', 25, 'A', 'Mathematics', 'john.doe@example.com', '1999-05-15', 'O+', 'USA'
    ),
    (
        'Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2002-03-10', 'A-', 'Canada'
    ),
    (
        'Robert', 'Johnson', 28, 'C', 'Chemistry', 'robert.johnson@example.com', '1996-08-20', 'B+', 'UK'
    ),
    (
        'Emily', 'Davis', 20, 'A', 'Biology', 'emily.davis@example.com', '2004-01-05', 'AB+', 'Australia'
    );

-- You can add more rows following the same format

SELECT age as personAge FROM person ORDER BY age ASC;

SELECT upper(first_name) as newName, * FROM person

SELECT COALESCE(county, 'Unknown') as country FROM person;

SELECT * from person LIMIT 4