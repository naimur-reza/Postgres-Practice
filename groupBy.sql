-- Active: 1708926568697@@127.0.0.1@5432@test_db@public

SELECT * FROM person

SELECT course, count(*) FROM person GROUP BY course

SELECT county, avg(age)
FROM person
GROUP BY
    county
HAVING
    avg(age) >= 30

-- counting how many student born in year
SELECT extract(
        year
        from dob
    ) as birth_year, count(*)
FROM person
GROUP BY
    birth_year