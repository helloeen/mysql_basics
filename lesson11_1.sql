-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products
-- в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
    created_at DATETIME NOT NULL,
    table_name VARCHAR(20) NOT NULL,
    id_from_tables INT NOT NULL,
    name_from_tables VARCHAR(20) NOT NULL
    ) 
ENGINE = ARCHIVE;


DELIMITER //

CREATE TRIGGER log_users AFTER INSERT ON users

FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id_from_tables, name_from_tables)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //

CREATE TRIGGER log_catalogs AFTER INSERT ON catalogs

FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id_from_tables, name_from_tables)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //

CREATE TRIGGER log_products AFTER INSERT ON products

FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, table_name, id_from_tables, name_from_tables)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //

DELIMITER ;

select * from users;
select * from logs;

insert into users (name, birthday_at) values ('Евгений', 2000-01-10);

select * from catalogs;

insert into catalogs (name) values ('Блоки питания'), ('Дисководы'), ('Зарезервировано');

select * from catalogs;
select * from logs;

select * from products;

insert into products (name, description, price, catalog_id) values ('Intel Core i7-11100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 45000, 1);

select * from products;
select * from logs;


-- (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP TABLE IF EXISTS users2; 

CREATE TABLE users2 (
	id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    birthday_at DATE,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

   
DELIMITER //
 
 create procedure add_users(IN num INT)
 
 begin
	 
	declare i int default 0;

	while i < num do
	
	    insert into users2(name, birthday_at) values (concat('Eva_', i), now());
	    set i = i + 1;
	   
	end while;
 
 end //
 
DELIMITER ;

-- Для проверки вызову процедуру для 100 записей.

call add_users(100);

select * from users2;

-- Всё работает, как планировалось.

call add_users(1000000);


   