-- Задание 1
INSERT INTO employee(first_name, last_name, gender, age) VALUES( 'Вася', 'Васий', 'муж', 159); -- 1
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Мария', 'Магдалина', 'жен', 159); -- 1
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Жанна', 'д''Арк', 'жен',19); -- 1
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Лаврентий', 'Берия', 'муж', 54); -- 1
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Владимир', 'Ульянов', 'муж',53); -- 1
SELECT first_name AS Имя, last_name AS Фамилия FROM employee; -- 2
SELECT * FROM employee WHERE age < 30 OR age > 50; -- 3
SELECT * FROM employee WHERE age BETWEEN 30 AND 50; -- 4
SELECT * FROM employee ORDER BY last_name DESC; -- 5
SELECT * FROM employee WHERE first_name LIKE '____%'; -- 6
SELECT * FROM employee WHERE LENGTH(first_name) > 4; -- 6

-- Задание 2
UPDATE employee SET first_name='Павел' WHERE id = 3; -- 1
UPDATE employee SET first_name='Владимир' WHERE id = 7; -- 1
SELECT first_name AS Имя, SUM(age) as Суммарный_возраст FROM employee GROUP BY first_name; -- 2
-- Выведите имя и самый юный возраст, соответствующий имени. Не совсем понял, самый минимальный среди всех или миимальный для каждого имени, сделал оба варианта
SELECT first_name AS Имя, age AS Минимальный_возраст FROM employee WHERE age = (SELECT MIN(age) FROM employee); -- 3
SELECT first_name AS Имя, MIN(age) AS Минимальный_возраст FROM employee GROUP BY Имя; -- 3
SELECT first_name, MAX(age) AS max_age FROM employee GROUP BY first_name HAVING COUNT(first_name) > 1 ORDER BY max_age ASC; -- 4