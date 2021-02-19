-- 1.Повторить все действия по доработке структуры БД vk и данных.

USE vk;

-- Внесём изменения в базу данных ВК
alter table users modify column created_at datetime not null;
alter table users modify column updated_at datetime not null;

-- Внесём изменения в базу данных ВК
alter table users add username varchar(30) not null comment "Имя пользователя для входа в сервис" AFTER id;

-- Приводим в порядок временные метки
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE friendship SET updated_at = NOW() WHERE updated_at < created_at; 
UPDATE friendship_statuses SET updated_at = NOW() WHERE updated_at < created_at; 
UPDATE media SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE media_types SET updated_at = NOW() WHERE updated_at < created_at;

-- Добавим значения username
UPDATE users SET username = LOWER(last_name);  

-- Исправим пол пропускаю, так как изначально для обозначения пола использовал буквенные символы.

-- Преобразуем в тип ENUM
ALTER TABLE profiles MODIFY COLUMN gender ENUM('M', 'F');

-- Вставляем сслучайную страну в столбец country тоже пропускаю, так как данный столбец заполнен изначально корректно.

-- Исправляем ссылки на пользователей. Пропускаю. Данные введены корректно.

-- Создаём временную таблицу форматов медиафайлов
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));

-- Заполняем значениями
INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png'), ('mp3'), ('aac'), ('gif'), ('bmp'), ('flac'), ('oo3');

-- Обновляем ссылку на файл

UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

-- Обновляем размер файлов
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;

-- Заполняем метаданные убрал вторые кавычки для более читабельного вида.
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  

 -- Возвращаем столбцу метеданных правильный тип, если нужно
ALTER TABLE media MODIFY COLUMN metadata JSON;

TRUNCATE media_types;

-- Добавляем нужные типы
INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;

-- Обновляем данные для ссылки на тип
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);

-- Смотрим структуру таблицы дружбы: совпадение по строке 84 — 84, с 84 есть ещё пара 11

UPDATE friendship SET user_id = 83 WHERE user_id = friend_id;

-- Очищаем таблицу
TRUNCATE friendship_statuses;

-- Вставляем значения статусов дружбы
INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
 
-- Обновляем ссылки на статус 
UPDATE friendship SET friendship_status_id = FLOOR(1 + RAND() * 3); 

ALTER TABLE friendship DROP COLUMN requested_at;

-- Удаляем часть групп
DELETE FROM communities WHERE id > 20;

-- Обновляем значения community_id и user_id
UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20);

-- 2.Подобрать сервис который будет служить основой для вашей курсовой работы. 
-- Мой выбор — сайт Кинопоиск

-- 3.(по желанию) Предложить свою реализацию лайков и постов.
-- В ближайшие выходные предстоит уехать из города, не уверен, что успею сесть и полноценно подумать над этим, дла перестраховки сдаю д/з без третьего задания.
-- По возможности реализацию докину позже в телеграм за комментариями.



