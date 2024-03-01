-- Active: 1708926568697@@127.0.0.1@5432@test_db

-- SHOW timezone

CREATE TABLE timeZone (
    ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone
);

INSERT INTO timeZone (ts, tsz) VALUES (now(), now());

SELECT to_char(
        now(), 'YYYY-MM-DD HH24:MI:SS'
    ) as "Current Date and Time";

-- this is for counting date of the year
SELECT to_char(now(), '') as "Current Date and Time";

-- this is for counting age from person dob postgres
SELECT dob, age (dob) as "Age" FROM person;