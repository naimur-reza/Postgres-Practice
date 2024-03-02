-- Active: 1708926568697@@127.0.0.1@5432@test_db@public

-- FOR USER RELATION
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY, user_name VARCHAR(25) NOT NULL
);

DROP TABLE post;

DROP Table "user"

ALTER TABLE "user"
DROP COLUMN email
-- THAT MAKE POST TABLE MAKE RELATION WITH USER TABLE

CREATE TABLE post (
    id SERIAL PRIMARY KEY, title VARCHAR(100) NOT NULL, user_id INTEGER REFERENCES "user" (id) on delete cascade
)

INSERT INTO
    "user" (user_name)
VALUES ('Abdul'),
    ('Rahman'),
    ('Rahim'),
    ('Karim');

INSERT INTO
    post (title, user_id)
VALUES ('first post', 1),
    ('second post', 2),
    ('third post', 3),
    ('fourth post', 4);

SELECT * FROM "user";

SELECT * FROM post

DELETE FROM "user" WHERE id = 4;