-- Создайте базу данных example, разместите в ней таблицу users, 
-- состоящую из двух столбцов, числового id и строкового name.

USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имена пользовтаелей',
  UNIQUE unique_name(name(10))
  ) COMMENT = 'Пользователи';
  
 INSERT INTO users VALUES
  (DEFAULT, 'Ольга'),
  (DEFAULT, 'Julius'),
  (DEFAULT, 'Ann'),
  (DEFAULT, 'Sebastian'),
  (DEFAULT, 'Dobrolyub'),
  (DEFAULT, 'Mephostophel'),
  (DEFAULT, 'Basil');
  
 select * from users
 
 -- Создайте дамп базы данных example из предыдущего задания, 
 -- разверните содержимое дампа в новую базу данных sample.
 
 -- пишу mysqldump example > task2.sql
 -- затем mysqldump sample < task2.sql
 

 -- (по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. 
 -- Создайте дамп единственной таблицы help_keyword базы данных mysql. 
 -- Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
 
 -- mysqldump --opt --where="1 limit 100" mysql help_keyword > 100keys.sql
