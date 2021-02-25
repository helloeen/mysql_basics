-- 1.Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

USE vk;
select created_at, updated_at from users;
UPDATE users SET created_at = NOW();
UPDATE users SET updated_at = NOW();
select created_at, updated_at from users;

-- 2. Таблица users была неудачно спроектирована. 
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

-- По всей видимости это уже было сделано на прошлом уроке при помощи:
-- alter table users modify column created_at datetime not null;
-- alter table users modify column updated_at datetime not null;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
-- если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
-- чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.

drop table if exists storehouses_products;

CREATE TEMPORARY TABLE storehouses_products (value int(10));

INSERT INTO storehouses_products VALUES (0), (2500), (0), (30), (500), (1);

select * from storehouses_products ORDER BY CASE WHEN value = 0 THEN 2147483647 ELSE value END;

-- 4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)
SELECT * from profiles where MONTHNAME(birthday) IN ('may', 'august');

-- 5. Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.

drop table if exists t1;
CREATE TEMPORARY TABLE t1 (value int(10));
INSERT INTO t1 VALUES (0), (1), (2), (3), (4), (5), (6), (7);
select * from t1 WHERE value IN (5, 1, 2) ORDER BY CASE WHEN value = 2 THEN 2147483647
when value = 1 THEN 2147483646
ELSE value END;

-- 1. Подсчитайте средний возраст пользователей в таблице users.
-- Для простоты буду использовать уже имеющиеся данные из таблицы профилей в базе ВК

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, NOW())) FROM profiles;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

select dayofweek(concat(year(now()), 
if (month(birthday) > 9, month(birthday), concat(0, month(birthday))),
if (day(birthday) > 9, day(birthday), concat(0, day(birthday))))) 
as dayweek, count(*) as 'количество ДР' from profiles
group by dayweek with rollup;


-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.
select id from media_types;
select exp(sum(ln(id))) from media_types;