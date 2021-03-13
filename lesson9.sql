-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW prod AS
select p.name as 'название', c.name as 'тип' 
from products as p
join catalogs as c
on c.id = p.catalog_id
order by p.id, p.name;

select * from prod

-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
-- если дата присутствует в исходном таблице и 0, если она отсутствует.

DROP TABLE IF EXISTS t1;
CREATE TEMPORARY TABLE t1 (дата DATE);
INSERT INTO `t1` values ('2018-08-01'), ('2016-08-04'), ('2018-08-16'), ('2018-08-17');
select * from t1 


CREATE VIEW august AS SELECT * FROM 
(SELECT adddate('1970-01-01',t4*10000 + t3*1000 + t2*100 + t1*10 + t0) selected_date FROM
 (SELECT 0 t0 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t0,
 (SELECT 0 t1 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t1,
 (SELECT 0 t2 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t2,
 (SELECT 0 t3 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t3,
 (SELECT 0 t4 UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t4) v
WHERE selected_date BETWEEN '2018-08-01' AND '2018-08-31' order by selected_date

select * from august;
select count(*) from august group by selected_date

select a.selected_date, count(t1.дата)
from t1
Right join august as a
on t1.дата = a.selected_date
group by a.selected_date
order by a.selected_date


-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

-- Дошлю в телеграм. К 15 часам чуть-чуть не успеваю сделать.

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

drop function if exists hello();

DELIMITER //

create function hello()
returns varchar(20) deterministic

begin
	
	DECLARE now_good varchar(20);

	if curtime() between '06:00:00' and '11:59:59' then
		set now_good = 'Good morning!';
	
	elseif curtime() between '12:00:00' and '17:59:59' then
		set now_good = 'Good morning!';
	
	elseif curtime() between '18:00:00' and '23:59:59' then
		set now_good = 'Good morning!';
	
	elseif curtime() between '00:00:00' and '05:59:59' then
		set now_good = 'Good morning!';
	
	end if;
		
	return now_good;
end; //

DELIMITER ;

select hello();


-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

select name, description from products;

DELIMITER //

CREATE TRIGGER check_catalog_id_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  DECLARE prod_name varchar(255);
  SELECT name INTO prod_name FROM products ORDER BY name LIMIT 1;
  SET NEW.name = COALESCE(NEW.name, OLD.name, prod_name);
END//

CREATE TRIGGER check_catalog_id_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE prod_name varchar(255);
  SELECT name INTO prod_name FROM products ORDER BY name LIMIT 1;
  SET NEW.name = COALESCE(NEW.name, prod_name);
END//

CREATE TRIGGER check_description_update BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  DECLARE prod_description text;
  SELECT description INTO prod_description FROM products ORDER BY description LIMIT 1;
  SET NEW.description = COALESCE(NEW.description, OLD.description, prod_description);
END//

CREATE TRIGGER check_description_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  DECLARE prod_description text;
  SELECT description INTO prod_description FROM products ORDER BY description LIMIT 1;
  SET NEW.description = COALESCE(NEW.description, prod_description);
END//

DELIMITER ;

desc products;

-- Проверяю

UPDATE products SET name = NULL WHERE id = 1;
UPDATE products SET description = NULL WHERE id = 2;

SELECT id, name, price, description, catalog_id FROM products

-- Null значений не появилось, теперь сделаю тоже для столбца price

UPDATE products SET price = NULL WHERE id = 3;

SELECT id, name, price, description, catalog_id FROM products

-- Как видно, значение Null было присвоено


-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

drop function FIBONACCI() if exists;

DELIMITER //

create function FIBONACCI(n INT)
returns INT deterministic

begin
	
	DECLARE res, i int default 0;    
    DECLARE n1, n2 int default 1;
   
    if ((n = 1) or (n = 2)) then
    
        set res = 1;
       
    elseif (n > 0) then
    
        while (i < (n - 2)) do
        
            set res = n1 + n2;
            set n1 = n2;
            set n2 = res;
	        set i = i + 1;
	       
	    end while;
	   
    end if;
   
	return res;

end; //

DELIMITER ;

select FIBONACCI(10) as 'Значение десятого числа в ряду Фибоначчи равняется:';
select FIBONACCI(46) as 'Значение 46-го числа в ряду Фибоначчи равняется:';
