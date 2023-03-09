-- Задание 1
CREATE TABLE city(
    city_id BIGSERIAL NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
); -- 1
ALTER TABLE employee ADD city_id BIGINT NOT NULL; -- 2
ALTER TABLE employee ADD FOREIGN KEY(city_id) REFERENCES city(city_id); -- 3
INSERT INTO city(city_name) VALUES('НеМосква'); -- 4
INSERT INTO city(city_name) VALUES('Ленинград'); -- 4
INSERT INTO city(city_name) VALUES('Анадырь'); -- 4
INSERT INTO city(city_name) VALUES('Кейптаун'); -- 4
UPDATE employee SET city_id = 1 WHERE id = 1; -- 4
UPDATE employee SET city_id = 1 WHERE id = 5; -- 4
UPDATE employee SET city_id = 2 WHERE id = 3; -- 4
-- Задание 2
SELECT first_name, last_name, city_name FROM employee INNER JOIN city ON employee.city_id = city.city_id; -- 1
SELECT city_name, first_name, last_name FROM city LEFT JOIN employee ON city.city_id = employee.city_id; -- 2
SELECT first_name, city_name FROM employee FULL JOIN city ON employee.city_id = city.city_id; -- 3
SELECT first_name, city_name FROM employee CROSS JOIN city; -- 4