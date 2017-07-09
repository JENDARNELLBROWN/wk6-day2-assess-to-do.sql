CREATE TABLE todos(
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

--Write INSERT statements to insert five todos into this table, with one of them completed. --
INSERT INTO todos(title, details, priority, created_at, completed_at) VALUES('Wash clothes', 'separate colors and wash, dry and fold clothes', 2, '07/09/2017 01:56:00','07/09/2017 02:30:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('pickup drycleaning', 'Pick up drycleaning and drop off dirty dry clean only clothes', 3, '07/09/2017 01:56:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('Get fuel', 'Put gas in the car', 5, '07/09/2017 01:57:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('Projects and Assessments', 'catch up on at least one incomplete assessment every weekday and complete projects.', 6, '07/09/2017 02:00:00');
INSERT INTO todos(title, details, created_at) VALUES('Talk to Brice', 'ask for extra help and ask him to talk to Isaac about his singing out of tune', '07/09/2017 02:02:00');

--Write a SELECT statement to find all incomplete todos. --
SELECT * FROM todos WHERE completed_at IS NULL;

--Write a SELECT statement to find all todos with a priority above 1. --
SELECT * FROM todos WHERE priority > 1;

--Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up. --
UPDATE todos SET completed_at = '07/09/2017 01:48:00' WHERE id = (2);

--Write a DELETE statement to delete all completed todos. --
DELETE FROM todos WHERE completed_at IS NOT NULL;
