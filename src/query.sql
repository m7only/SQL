INSERT INTO employee(first_name, last_name, gender, age) VALUES( 'Вася', 'Васий', 'муж', 159);
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Мария', 'Магдалина', 'жен', 159);
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Жанна', 'д''Арк', 'жен',19);
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Лаврентий', 'Берия', 'муж', 54);
INSERT INTO employee(first_name, last_name, gender, age) VALUES('Владимир', 'Ульянов', 'муж',53);
SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age < 30 OR age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE first_name LIKE '____%';
SELECT * FROM employee WHERE LENGTH(first_name) > 4;

UPDATE employee SET first_name='Павел' WHERE id = 3;
UPDATE employee SET first_name='Владимир' WHERE id = 7;
SELECT first_name AS Имя, SUM(age) as Суммарный_возраст FROM employee GROUP BY first_name;
SELECT first_name AS Имя, age AS Минимальный_возраст FROM employee WHERE age = (SELECT MIN(age) FROM employee);
SELECT first_name, MAX(age) AS max_age FROM employee GROUP BY first_name HAVING COUNT(first_name) > 1 ORDER BY max_age ASC;