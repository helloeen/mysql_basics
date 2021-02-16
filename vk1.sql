-- Выполняю оба задания сразу объединённо.
-- 1. Создать структуру БД Вконтакте по скриптам, приложеным в файле примеров examples.sql
-- 2. Используя сервис http://filldb.info или другой по вашему желанию, сгенерировать тестовые данные для всех таблиц, 
-- учитывая логику связей. Для всех таблиц, где это имеет смысл, создать не менее 100 строк. 
-- Загрузить тестовые данные в свою локальную базу данных ВК. Приложить к отчёту полученный дамп с данными.

-- 3. (по желанию) Проанализировать структуру БД vk, которую мы создали на занятии, и внести предложения по усовершенствованию (если такие идеи есть). 
-- Напишите пожалуйста, всё-ли понятно по структуре.

-- В виду отсутсвия времени на текущий момент дополнений по усовершенствованию кода не предлагаю.
-- По структуре разобрался.

-- Создаём БД
-- DROP TABLE IF EXISTS vk
CREATE DATABASE vk;

-- Делаем её текущей
USE vk;

#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Veum-Hegmann', '2015-03-26 14:12:01', '2010-04-19 11:12:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Jaskolski, Jacobi and Grant', '1992-12-06 19:11:35', '1977-06-10 02:48:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Johnson Inc', '1991-01-09 17:51:39', '1985-04-19 00:27:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Baumbach Group', '2008-04-05 22:24:31', '1990-06-01 00:03:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Haag, Mayert and Welch', '1975-10-16 11:19:29', '2004-05-10 13:30:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Nader Group', '2004-11-24 01:13:27', '2009-01-16 16:36:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Carter-Gleason', '1982-08-19 14:12:44', '2003-01-23 21:47:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Quigley, Larkin and Veum', '1979-07-26 18:01:08', '2001-07-18 07:14:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Buckridge-Dach', '1991-06-24 16:25:02', '2018-10-08 19:10:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Kuhic, Considine and Howe', '2006-02-18 18:34:18', '1973-06-24 10:24:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Hegmann, Beahan and Thiel', '2016-08-21 09:24:45', '1985-05-30 02:16:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Davis Group', '1981-12-12 09:17:12', '2007-05-01 13:40:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Will Group', '2015-05-29 02:10:47', '1990-03-01 11:56:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Schmidt-Medhurst', '1988-09-29 06:37:48', '2000-07-29 09:21:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Quitzon-Smitham', '1983-10-22 04:05:53', '1998-12-27 18:58:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Schroeder, Fadel and Jacobi', '2012-08-12 14:45:50', '1989-04-03 07:36:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Bogisich, Kunde and Stroman', '2004-03-29 12:38:14', '1986-09-05 17:29:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Wolff-Anderson', '2008-02-17 04:11:30', '2015-07-11 16:44:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Hauck LLC', '2003-07-11 10:17:19', '1987-06-10 05:03:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Keebler-Sanford', '2001-07-20 23:36:33', '2014-10-18 17:56:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Turner, Labadie and Hansen', '2003-09-29 09:56:45', '2002-03-31 20:54:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Rice, McLaughlin and Kub', '2012-03-26 11:09:50', '2013-05-30 16:53:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Sawayn and Sons', '1999-03-03 08:03:22', '2012-04-27 00:10:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Connelly-Feest', '2020-09-16 13:11:14', '1975-01-13 12:29:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'McLaughlin-Doyle', '2009-08-25 21:49:46', '1973-10-13 16:18:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Lang Group', '1998-12-25 06:03:26', '1981-12-20 21:26:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Rice Ltd', '2017-11-22 08:12:14', '1982-03-17 13:35:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Runolfsson Group', '1972-03-15 18:59:30', '1989-03-15 06:37:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'Kemmer, Osinski and Becker', '1982-08-06 06:50:42', '2017-06-24 10:38:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Altenwerth, Kuhlman and Wilderman', '2017-12-28 09:14:21', '2005-04-12 11:17:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Murazik-Skiles', '1995-01-17 15:46:41', '1976-08-08 08:54:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Morissette-Frami', '2019-03-14 23:35:13', '1994-11-04 02:33:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'Walter LLC', '1984-12-31 01:05:28', '2014-10-18 20:03:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Windler-Green', '1977-08-07 08:09:23', '2013-06-07 16:18:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Stroman-Bergstrom', '1983-01-08 22:17:08', '2009-09-23 23:23:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Pfeffer Inc', '1979-07-20 07:50:20', '1991-02-19 08:05:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Cremin-Ziemann', '2000-02-07 09:29:49', '2005-09-09 10:38:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Marquardt, Stark and King', '2013-01-14 09:14:39', '1988-06-03 22:22:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Maggio, Gusikowski and Cummerata', '2004-02-08 20:00:28', '2018-11-08 02:13:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Pollich-Jaskolski', '2019-04-06 02:09:45', '2014-07-29 18:14:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Gerlach Inc', '2009-10-26 10:18:41', '1973-07-10 14:35:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Corwin-Frami', '1985-04-12 04:58:16', '1981-10-27 14:40:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Hansen-Konopelski', '2000-09-19 00:43:28', '1989-12-30 08:56:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Raynor Group', '2016-02-13 07:53:01', '2019-04-23 22:37:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Cronin Inc', '2011-03-13 11:43:53', '2012-06-06 17:22:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Rempel-Bernier', '2002-03-21 02:24:48', '1971-01-03 14:54:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Hudson, Daniel and Kutch', '1995-10-04 13:52:05', '1999-05-15 20:29:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Schuster-Wunsch', '2008-05-27 11:15:58', '2020-05-20 09:34:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Baumbach-Spencer', '2009-10-20 16:59:57', '2013-11-29 02:19:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'Feeney, Orn and Pfeffer', '1990-07-26 16:09:29', '2018-11-25 11:49:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Hickle LLC', '2017-05-06 02:37:41', '1991-02-25 12:42:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Stokes Group', '1976-01-20 19:05:07', '2014-08-12 11:23:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Hilll PLC', '1980-11-07 13:53:12', '1985-12-13 11:29:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Predovic, Murazik and King', '1978-10-05 17:38:25', '1975-09-13 18:29:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Bartoletti, Streich and Kihn', '1990-08-18 10:50:57', '2009-01-08 07:40:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Lesch Group', '1972-03-06 07:59:09', '2015-07-11 13:22:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Lesch LLC', '1989-04-18 09:02:49', '2016-11-13 16:46:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Spinka PLC', '2000-05-31 11:54:37', '2012-06-15 00:34:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Wisozk-Klein', '1977-04-27 12:37:30', '1997-08-16 12:57:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Lemke, Kling and Lehner', '1979-01-24 23:47:00', '1985-04-20 13:19:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Lebsack, Hand and Bradtke', '2005-04-11 10:41:45', '1991-11-26 07:30:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Lubowitz, Trantow and Upton', '2015-06-29 02:54:50', '2008-09-01 06:34:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'Pouros, Trantow and Blanda', '1992-08-25 20:09:08', '2011-09-25 07:02:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Armstrong-McGlynn', '1986-08-06 09:38:49', '1980-09-22 23:20:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'Murphy and Sons', '1976-08-30 16:46:58', '1981-07-11 14:34:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'Greenfelder-Blick', '2001-11-07 11:07:00', '2014-07-20 14:47:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Price-Wiza', '2021-02-11 12:11:42', '1981-11-10 20:10:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Wiegand-Cremin', '2015-07-22 10:12:48', '1996-11-03 22:41:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Nader Ltd', '2018-09-30 00:39:32', '1976-04-15 05:10:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Willms, Mosciski and Feeney', '1994-01-20 02:52:50', '2015-05-12 16:07:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Langworth, Luettgen and Vandervort', '1990-11-20 04:47:56', '2013-02-24 15:17:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'Block, Moore and Schinner', '1992-02-25 13:53:22', '1994-04-09 11:26:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Rau-Swift', '2018-07-12 20:22:21', '1980-06-24 10:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Yundt, Mosciski and Corwin', '2013-06-23 02:31:52', '1998-09-21 13:46:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Haag, McCullough and Nikolaus', '1977-01-24 07:17:30', '2006-07-08 21:08:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Hegmann, Hickle and McCullough', '1977-06-05 23:54:12', '1999-06-11 22:01:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'Gibson, Romaguera and Schumm', '2017-02-16 04:47:22', '2009-09-11 06:10:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Robel Inc', '2012-10-19 05:09:06', '1998-02-07 12:08:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'Kiehn-Vandervort', '1989-08-07 09:11:31', '1997-02-13 07:17:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'Bayer Inc', '1979-02-03 16:19:01', '1978-07-17 23:10:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Jenkins-Zulauf', '2009-03-24 17:50:06', '1980-06-02 05:50:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Collins, Dibbert and Nicolas', '2003-10-01 20:05:00', '1994-02-20 00:05:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Huels Group', '1998-01-22 01:38:14', '2003-09-10 03:49:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Crist Group', '2001-01-04 14:36:16', '1987-10-16 23:36:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Kemmer-Connelly', '1992-02-18 22:59:50', '1992-04-23 04:59:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Torp and Sons', '2013-05-31 21:40:42', '1994-04-03 23:14:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Greenfelder, Farrell and Conroy', '1993-11-04 02:47:22', '1983-09-10 18:48:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Quitzon-Goldner', '2006-11-29 17:32:44', '1999-05-15 19:58:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Cremin-Rohan', '1999-03-16 18:56:15', '2011-11-22 19:56:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Zemlak Ltd', '1978-06-18 02:15:43', '2003-10-23 07:44:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Rempel, Swaniawski and Gleason', '1983-02-04 00:01:43', '1978-12-17 20:11:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Schoen Inc', '1982-08-07 00:31:12', '1981-01-01 13:46:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Fahey-Greenholt', '2003-10-07 00:07:30', '2007-10-06 09:27:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Walter, D\'Amore and Harber', '2009-09-04 08:53:47', '2010-10-16 14:05:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'Bernhard, Flatley and Koelpin', '1993-04-01 20:38:39', '2006-08-01 15:33:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Purdy-Ortiz', '1979-12-16 11:41:17', '2015-04-01 03:30:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Conn-Wolf', '2007-12-10 06:39:04', '1984-08-13 02:21:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'Durgan Group', '2008-11-04 14:38:25', '1997-12-16 06:18:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Kuhic-Beer', '1993-03-13 18:49:01', '1993-06-10 14:37:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Dach Ltd', '2013-11-22 02:28:57', '2010-02-03 14:21:57');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 18, '2019-03-01 23:36:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 60, '2014-12-17 17:20:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 19, '2018-11-15 20:53:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 51, '2019-06-06 05:51:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 99, '2013-12-29 23:39:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 61, '2015-06-17 23:08:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2018-02-22 15:48:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 36, '2020-12-23 10:24:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 49, '2014-04-23 11:21:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 68, '2013-11-10 09:14:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2017-07-15 02:17:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 14, '2011-09-28 07:13:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 15, '2018-08-15 07:09:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 39, '2019-02-09 20:31:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 61, '2014-06-23 02:54:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 40, '2016-01-31 16:46:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 60, '2011-10-03 23:24:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 36, '2017-07-12 05:45:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 38, '2020-10-03 00:19:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 86, '2018-02-15 05:54:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 48, '2020-05-26 01:34:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 80, '2016-03-05 11:10:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 14, '2012-05-26 12:00:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 28, '2019-10-10 19:55:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 95, '2013-10-02 17:29:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 70, '2018-11-18 21:23:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 85, '2020-08-17 23:50:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 78, '2020-10-23 23:01:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 28, '2018-01-21 18:07:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 51, '2019-03-04 15:45:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 83, '2013-09-09 15:59:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 34, '2018-06-26 04:56:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 74, '2012-06-04 01:34:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 79, '2011-05-13 07:36:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 13, '2020-07-11 03:07:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 27, '2015-04-06 01:16:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 40, '2020-04-29 21:28:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 30, '2020-08-30 11:11:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 13, '2013-05-21 07:43:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 35, '2012-04-04 21:01:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 38, '2011-09-12 08:47:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 41, '2016-03-16 19:54:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 20, '2014-10-11 10:41:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 23, '2019-06-05 07:04:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 3, '2019-01-07 08:08:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 23, '2020-07-17 01:11:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 39, '2018-01-19 04:04:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 80, '2017-01-29 23:23:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 99, '2013-10-12 14:55:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 72, '2017-08-27 06:35:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 84, '2017-04-17 13:55:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 54, '2017-06-17 14:56:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 19, '2013-06-09 06:21:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 84, '2020-02-05 09:00:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 73, '2015-02-20 00:10:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 33, '2012-04-22 08:27:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 2, '2016-12-12 03:10:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 10, '2020-07-02 03:02:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 78, '2015-08-06 05:14:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 4, '2015-08-13 12:16:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 31, '2011-08-20 21:45:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 40, '2020-12-21 11:47:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 77, '2018-08-17 10:01:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 82, '2014-12-06 22:44:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 15, '2020-02-17 10:55:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 71, '2013-08-13 20:22:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 44, '2011-10-11 02:30:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 38, '2017-08-12 20:51:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 44, '2015-11-11 05:27:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 60, '2013-06-13 14:31:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 67, '2013-12-10 07:31:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 74, '2012-01-02 17:37:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 5, '2014-06-13 02:49:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 47, '2014-06-06 08:35:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 91, '2012-06-10 20:17:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 8, '2020-05-24 20:56:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 14, '2015-06-20 16:47:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 90, '2020-11-04 05:05:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 57, '2019-05-24 20:41:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 21, '2011-06-14 16:42:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 18, '2014-01-05 23:04:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 24, '2017-08-04 16:30:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 63, '2014-02-11 13:32:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 82, '2018-11-28 09:47:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 41, '2020-05-25 04:54:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 53, '2020-09-25 08:26:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 80, '2017-05-30 03:10:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 1, '2014-03-06 12:57:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 2, '2012-06-23 21:47:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 7, '2020-09-08 00:33:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 19, '2017-10-15 13:09:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 20, '2017-07-21 13:52:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 21, '2019-07-17 07:02:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 44, '2018-05-01 03:52:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 45, '2014-05-09 13:33:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 96, '2018-08-15 05:40:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 28, '2014-01-10 09:48:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 51, '2014-09-22 03:27:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 52, '2016-08-26 09:31:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 81, '2014-11-29 14:52:23');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 48, 1, '1996-09-17 15:09:02', '2016-10-21 07:59:57', '2016-12-24 14:02:37', '2015-08-25 10:07:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 73, 2, '2017-12-30 11:28:01', '2017-09-29 23:24:39', '2015-03-12 14:10:39', '2015-04-14 11:03:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 22, 4, '1987-09-28 16:51:26', '2013-07-17 16:43:08', '2018-06-21 19:21:57', '2020-11-05 16:22:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 67, 2, '1979-10-15 20:38:30', '2011-10-19 06:07:30', '2012-01-18 18:19:39', '2020-12-11 13:10:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 28, 5, '2014-04-19 00:44:09', '2012-11-24 07:57:42', '2017-01-02 18:49:54', '2011-12-07 12:45:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 88, 5, '1961-07-27 09:47:05', '2019-09-21 19:46:24', '2021-01-06 14:00:55', '2015-11-24 19:42:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 9, 1, '1982-03-10 11:34:04', '2017-10-18 03:55:00', '2014-12-21 13:23:03', '2014-01-05 14:06:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 13, 5, '1998-12-16 19:36:13', '2020-03-02 23:48:09', '2019-09-28 17:34:55', '2013-07-31 09:08:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 43, 3, '1988-07-04 02:30:35', '2011-11-18 20:29:39', '2020-03-17 15:40:34', '2018-04-03 17:22:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 71, 1, '1958-11-18 13:45:14', '2011-05-18 22:50:49', '2019-07-23 22:45:48', '2016-09-05 06:58:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 27, 4, '1946-09-30 03:11:59', '2019-05-27 04:37:58', '2011-03-06 13:42:25', '2019-01-01 13:28:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 6, 2, '1999-06-30 09:59:19', '2018-07-19 11:46:30', '2012-10-02 03:17:07', '2012-09-08 16:08:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 14, 6, '1949-10-03 20:44:47', '2015-05-12 17:30:02', '2020-02-09 04:46:46', '2018-03-18 21:58:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 9, 3, '1948-11-16 18:25:47', '2019-03-29 18:10:00', '2015-04-07 03:25:38', '2020-05-01 15:24:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 89, 2, '2018-05-13 13:43:35', '2020-01-13 11:33:31', '2016-01-06 23:13:59', '2019-02-25 06:03:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 29, 1, '1962-07-31 16:28:16', '2011-10-31 06:52:16', '2020-03-18 16:05:07', '2019-02-11 03:37:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 95, 6, '1976-01-01 14:43:16', '2016-08-13 16:23:39', '2020-11-20 22:04:18', '2019-02-10 14:15:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 66, 1, '1943-08-13 00:05:48', '2020-06-08 05:25:17', '2014-10-15 23:19:35', '2020-06-30 16:08:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 4, 6, '1997-06-06 08:39:08', '2014-03-21 01:13:11', '2020-08-14 04:13:20', '2018-09-17 12:22:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 75, 4, '2013-06-29 04:39:28', '2014-03-24 05:56:34', '2020-08-13 21:22:07', '2019-09-18 18:45:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 16, 3, '1962-12-13 21:25:26', '2015-12-10 13:05:07', '2020-01-07 22:08:25', '2011-09-06 22:58:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 88, 7, '1943-10-14 11:55:13', '2019-03-17 15:11:46', '2019-10-07 02:31:44', '2011-10-11 11:30:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 37, 1, '1938-06-17 20:46:22', '2014-10-04 02:52:12', '2017-06-02 01:04:12', '2016-11-09 17:38:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 57, 3, '1979-02-07 18:34:02', '2017-06-29 03:08:35', '2019-01-17 03:08:58', '2013-10-03 18:51:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 5, 6, '1961-07-17 17:24:51', '2014-10-24 23:35:07', '2017-06-28 08:11:27', '2013-07-12 03:22:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 49, 6, '1969-09-12 14:01:46', '2012-05-23 19:09:12', '2017-05-09 17:05:01', '2018-10-17 13:53:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 73, 3, '1996-11-11 04:34:17', '2015-07-29 18:57:36', '2019-06-03 10:51:17', '2016-09-05 20:26:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 2, 2, '1986-04-22 03:17:04', '2013-06-23 01:40:09', '2014-05-14 17:30:35', '2015-01-03 06:45:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 2, 6, '1991-06-03 18:00:29', '2018-05-08 20:39:42', '2011-05-25 21:59:54', '2015-06-22 04:19:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 21, 2, '2010-11-24 10:49:20', '2013-09-19 17:44:57', '2017-12-20 04:57:13', '2020-11-13 08:44:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 42, 2, '1972-12-08 17:15:34', '2020-09-23 05:12:22', '2016-12-11 15:48:55', '2012-12-17 05:12:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 1, 5, '2012-03-01 13:20:37', '2016-03-11 19:11:21', '2019-07-04 16:49:54', '2014-04-07 09:37:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 33, 7, '1976-03-13 09:22:21', '2011-07-31 19:31:04', '2015-04-20 03:17:09', '2020-07-04 23:31:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 37, 5, '1923-06-23 23:12:30', '2017-06-26 13:24:57', '2014-06-11 03:35:41', '2015-10-28 16:01:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 42, 2, '1994-10-21 21:48:35', '2019-12-18 00:48:38', '2016-09-12 05:18:33', '2016-05-31 02:44:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 57, 6, '2001-01-21 06:20:10', '2017-09-06 17:44:55', '2015-05-26 13:03:56', '2015-05-15 08:10:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 43, 2, '1954-01-04 08:05:53', '2014-11-15 12:34:52', '2018-09-24 08:11:51', '2011-04-22 14:38:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 35, 6, '1982-11-14 04:45:20', '2013-08-16 00:57:29', '2011-06-15 21:42:03', '2016-01-06 13:57:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 32, 1, '1960-06-21 08:40:53', '2018-08-28 07:50:03', '2016-02-18 12:05:38', '2013-09-13 07:03:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 2, 7, '2004-10-04 20:29:59', '2018-03-01 09:14:22', '2012-05-31 22:37:46', '2018-08-07 17:52:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 87, 1, '2011-11-09 20:33:13', '2013-08-15 06:29:08', '2014-11-15 23:29:59', '2015-06-29 08:34:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 8, 7, '1995-04-24 16:14:03', '2019-08-14 02:58:09', '2017-04-08 22:10:45', '2014-02-24 22:46:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 5, 7, '2008-08-13 17:50:30', '2015-02-04 07:06:41', '2012-04-19 02:05:01', '2015-09-16 11:13:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 90, 5, '1940-11-22 09:18:35', '2013-06-17 22:25:20', '2011-04-06 21:22:56', '2016-02-24 02:31:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 18, 3, '1926-06-29 21:25:26', '2014-12-30 01:39:54', '2012-12-13 04:56:34', '2011-03-30 10:24:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 83, 2, '2001-04-11 11:54:16', '2020-03-05 20:40:42', '2013-11-21 14:17:55', '2011-12-20 08:14:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 49, 3, '1956-09-26 19:11:35', '2014-05-05 02:02:30', '2017-11-24 21:38:00', '2011-06-07 03:17:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 69, 4, '1978-04-06 13:29:21', '2013-03-13 04:54:06', '2016-02-02 22:11:44', '2017-07-05 11:55:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 6, 1, '1926-08-25 18:34:46', '2015-02-27 14:53:30', '2015-10-19 13:57:03', '2019-04-08 10:39:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 77, 7, '1969-01-10 00:16:02', '2011-11-29 21:38:50', '2020-10-19 00:27:04', '2018-02-02 02:14:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 82, 1, '1977-08-25 11:26:49', '2013-11-23 08:16:58', '2019-10-16 17:11:01', '2015-06-10 12:24:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 39, 2, '2020-11-18 12:19:18', '2014-02-27 19:11:58', '2015-08-19 13:01:06', '2021-01-04 08:40:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 70, 4, '2010-07-06 03:35:36', '2020-05-11 02:25:23', '2016-05-16 19:21:15', '2013-10-16 06:00:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 65, 7, '1947-12-12 11:47:13', '2012-04-11 02:29:56', '2019-02-20 12:59:30', '2020-04-29 02:00:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 1, 3, '1963-05-26 01:24:42', '2013-09-12 19:04:38', '2017-11-13 17:44:55', '2014-07-18 08:36:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 65, 5, '1988-10-20 15:16:06', '2017-09-29 21:33:55', '2018-06-17 12:02:30', '2016-04-03 08:20:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 40, 6, '1989-02-20 14:37:34', '2014-08-10 09:54:12', '2014-02-18 23:26:39', '2013-09-06 12:53:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 79, 6, '1999-03-08 00:14:42', '2017-06-03 14:27:26', '2020-04-15 15:36:14', '2016-07-23 19:03:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 10, 1, '1995-06-26 00:05:05', '2020-07-11 15:12:54', '2017-12-30 23:09:31', '2011-05-17 11:21:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 58, 4, '1956-01-08 09:43:42', '2015-05-12 17:05:07', '2019-10-14 22:52:34', '2016-06-24 11:00:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 85, 3, '1951-07-04 03:22:01', '2015-02-08 20:18:41', '2017-09-17 11:31:43', '2020-07-17 13:54:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 19, 4, '2013-11-22 19:09:37', '2018-07-26 01:26:14', '2014-06-09 12:01:56', '2011-10-12 17:13:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 20, 2, '1953-12-05 22:04:35', '2011-03-13 23:36:59', '2018-05-27 04:17:02', '2018-10-16 01:47:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 27, 4, '1968-05-23 02:07:09', '2019-05-28 05:22:05', '2019-12-19 14:39:50', '2018-11-01 23:03:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 41, 5, '1950-03-07 19:33:59', '2020-09-29 11:35:04', '2018-09-19 02:36:09', '2013-09-05 09:27:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 49, 5, '1933-12-07 18:46:53', '2011-06-11 20:21:15', '2017-01-18 01:01:29', '2020-08-12 14:09:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 38, 3, '1975-06-24 00:48:25', '2019-03-29 21:19:12', '2019-08-08 13:19:32', '2012-04-12 16:48:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 45, 3, '1922-09-25 08:26:55', '2020-03-28 05:40:57', '2012-04-26 06:06:36', '2015-01-18 07:21:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 92, 6, '1946-05-09 21:14:00', '2013-10-10 13:39:19', '2015-02-06 16:08:30', '2012-01-23 15:54:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 36, 3, '1986-10-16 18:31:14', '2012-06-21 03:41:13', '2015-03-22 06:33:54', '2012-05-24 22:36:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 77, 1, '1971-01-26 02:19:50', '2015-08-18 19:23:07', '2018-11-08 20:16:04', '2014-02-22 15:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 6, 7, '1947-11-21 22:30:53', '2019-12-06 11:58:02', '2014-12-14 18:41:08', '2016-08-13 21:31:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 14, 7, '1983-06-16 06:14:19', '2013-12-16 21:02:17', '2015-11-22 07:00:44', '2015-12-09 11:35:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 98, 2, '1994-08-23 03:49:22', '2011-11-01 16:05:29', '2020-03-18 03:24:55', '2018-07-22 16:18:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 1, 7, '1970-10-17 04:01:08', '2011-10-10 15:04:10', '2012-01-05 17:01:58', '2018-09-29 07:10:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 52, 5, '1953-12-01 15:32:01', '2018-01-06 08:49:21', '2016-11-14 23:34:32', '2011-08-26 20:29:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 11, 3, '1989-08-16 05:57:14', '2016-03-14 21:36:54', '2017-10-11 15:00:30', '2020-10-29 03:29:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 2, '1953-12-20 13:53:16', '2015-07-24 08:55:06', '2017-11-25 03:48:05', '2011-04-08 11:49:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 79, 2, '1932-11-24 06:52:01', '2019-12-15 16:28:01', '2018-12-08 02:55:04', '2017-12-10 06:56:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 87, 2, '1991-06-29 12:07:30', '2013-06-11 03:02:12', '2019-09-24 20:30:38', '2014-09-30 08:06:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 21, 2, '2003-05-28 15:27:39', '2015-07-19 06:44:06', '2020-01-27 14:13:31', '2016-05-04 11:53:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 38, 3, '1939-02-08 15:51:51', '2020-04-22 07:08:30', '2012-12-06 18:57:43', '2020-07-27 19:22:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 55, 1, '1924-05-24 19:49:31', '2020-02-11 17:05:27', '2014-04-15 20:44:54', '2019-11-17 05:37:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 61, 6, '1967-12-18 20:46:35', '2017-08-31 13:01:20', '2012-09-23 13:23:01', '2019-10-28 00:41:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 30, 7, '1946-12-14 14:41:02', '2017-07-29 00:51:06', '2019-10-18 13:14:52', '2018-04-08 13:21:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 72, 1, '1951-02-20 22:04:35', '2017-12-31 11:19:59', '2015-04-01 00:28:46', '2018-02-01 00:57:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 7, 3, '1925-06-16 03:03:11', '2019-11-18 01:29:12', '2012-08-06 14:04:49', '2013-05-14 10:43:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 12, 3, '2012-10-01 02:15:05', '2017-01-23 09:00:00', '2011-07-05 07:24:24', '2020-12-05 23:17:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 73, 5, '1941-11-14 19:21:01', '2020-02-07 03:00:57', '2015-04-06 05:43:40', '2014-11-18 02:04:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 30, 2, '1938-08-02 09:57:59', '2017-12-25 18:29:54', '2017-03-14 00:46:05', '2019-09-09 20:07:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 81, 6, '1968-08-16 23:07:01', '2018-05-22 03:04:27', '2020-07-11 01:15:00', '2013-06-22 15:08:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 93, 4, '1951-07-28 07:12:59', '2020-01-12 03:33:16', '2011-06-13 18:14:50', '2014-06-11 22:07:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 95, 3, '2008-07-13 18:50:33', '2018-06-15 08:50:36', '2017-08-20 18:45:54', '2018-05-17 01:40:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 61, 2, '1985-10-15 15:44:50', '2020-06-02 06:45:11', '2013-08-15 14:25:29', '2021-02-11 04:03:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 99, 3, '2000-03-23 02:35:52', '2015-04-27 07:33:26', '2020-01-04 02:11:41', '2012-02-27 22:07:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 18, 5, '1937-05-14 15:38:23', '2019-03-20 03:56:33', '2011-08-08 13:02:23', '2016-06-17 10:03:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 25, 4, '1939-06-03 14:29:38', '2017-08-20 23:13:01', '2013-11-28 02:30:27', '2019-01-30 05:35:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 13, 5, '1948-10-23 23:24:10', '2019-04-15 00:12:09', '2018-10-04 17:55:07', '2016-11-29 01:19:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 27, 6, '1953-04-05 01:41:42', '2020-07-13 16:55:45', '2018-04-13 07:42:50', '2020-07-10 23:32:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 38, 4, '2005-06-14 08:57:51', '2020-03-29 06:24:27', '2013-04-18 08:21:08', '2015-06-12 07:24:51');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'tempore', '1940-07-03 20:52:13', '1980-05-16 02:43:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'porro', '1977-06-12 05:18:34', '1986-10-29 05:13:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'temporibus', '1966-08-04 11:58:30', '1974-06-04 06:34:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quam', '2012-02-11 00:06:38', '1993-01-16 19:04:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'totam', '1939-05-23 03:08:21', '1980-11-06 19:30:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'modi', '1989-09-05 13:09:25', '1950-12-06 15:54:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'nihil', '1960-06-02 03:32:55', '1937-12-12 14:08:57');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 17, '8d702b13-f6ee-3f88-9f66-9af6c78a7ddf', 192591087, NULL, 12, '1934-09-07 14:45:01', '2020-09-06 01:14:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 95, 'ac5f4166-1ce1-37df-880a-ef8a2502659c', 73234060, NULL, 8, '1962-11-29 04:21:03', '2012-09-08 23:23:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 52, '55cae0cb-62c6-3cdd-abf2-b0b8652f391a', 148, NULL, 28, '1963-04-12 19:04:39', '2013-01-28 21:09:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 28, '7dd078b6-3eb0-3415-b5c2-96e458919e3f', 9147325, NULL, 33, '1926-11-26 02:09:08', '2018-07-24 08:33:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 6, 'ca971cc2-7305-341a-bed7-b5f9b03bcf2c', 947, NULL, 50, '1993-06-24 08:06:41', '2020-05-09 17:12:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 84, 'd583faad-b928-3866-b233-c47bbaf41897', 13, NULL, 1, '1964-02-13 10:30:16', '2013-03-23 00:00:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 68, 'fa291b04-28a0-34ec-979e-468391de67fa', 1, NULL, 12, '2013-04-01 02:45:34', '2019-06-04 09:57:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 25, 'a89067ab-1ed7-36d4-a906-abc1c4bc7d11', 1111118, NULL, 16, '1932-11-29 18:44:54', '2014-03-07 02:09:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 3, '5981c06e-db85-368a-b9c3-760e69f42406', 519, NULL, 7, '1921-10-08 09:28:41', '2014-07-18 22:06:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 22, '6725a7eb-b61f-3867-810f-33f221a50317', 173882, NULL, 43, '1943-07-12 01:40:40', '2014-11-04 14:55:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 93, '5e1c8b43-aa7c-3daf-876a-4b393b92ff4d', 208601, NULL, 18, '1960-07-22 15:25:36', '2012-11-17 02:00:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 74, '6868dd80-ea8c-36cd-8385-077197cfc0f9', 4, NULL, 11, '1983-02-04 18:20:42', '2016-06-09 14:34:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 38, '41a0ff96-b857-32ad-904a-fd2975a2e713', 8, NULL, 10, '2015-05-05 09:38:19', '2012-10-10 09:23:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 6, '9b33992d-87b0-331d-9185-0595897b7b3f', 0, NULL, 16, '1960-10-19 22:48:38', '2013-06-23 13:54:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 19, '90324012-bcf8-337e-9620-b0059d3a8b77', 187684, NULL, 13, '1982-04-19 09:21:16', '2018-02-16 22:25:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 36, 'e6cad4fa-2012-33b1-bf59-6a1416e23685', 707997, NULL, 27, '1946-04-18 07:09:46', '2020-05-29 00:29:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 53, 'c4bf9f6b-7176-383e-b3db-0d8ca4eb2e8c', 0, NULL, 21, '2009-01-20 09:33:33', '2018-11-29 13:53:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 64, '9a782620-2850-3402-8e8a-ac14d683df3f', 7948, NULL, 9, '1941-10-06 02:33:26', '2018-04-05 01:14:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 17, '8f4bf052-7fe8-34ee-8410-1fdc238c08fa', 2298826, NULL, 40, '1992-05-12 12:46:59', '2017-12-09 11:45:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 14, '4df1993a-617f-3740-8e8f-63d15d07aea4', 21, NULL, 49, '1990-03-27 14:20:59', '2016-08-01 02:38:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 7, '1941a38a-d9ac-3090-b7cd-8851687c5fd8', 409, NULL, 22, '2018-03-04 22:27:52', '2021-02-08 08:30:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 65, 'b55fe0e3-8859-3a1d-a627-d3b681d58db1', 1, NULL, 44, '1964-12-31 10:01:52', '2016-11-13 11:25:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 41, '5cf96771-ecae-3ff9-ac26-bddaf69026da', 4596, NULL, 5, '1936-05-30 17:24:17', '2019-09-23 09:21:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 71, '1fbe91ff-7f68-3ed3-bee5-02521746eadf', 346234, NULL, 31, '2017-01-08 07:00:43', '2016-09-07 16:55:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 14, '9fec4d9e-7947-3b8c-a850-9c12beccaf89', 1, NULL, 33, '2000-01-07 03:52:07', '2017-01-30 22:17:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 94, '820b2511-008c-3264-8508-4214be5433ff', 95, NULL, 29, '1995-08-02 15:03:11', '2018-04-15 16:19:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 65, '3329f552-04e4-36e7-89c8-3666b9df3a90', 702449705, NULL, 50, '1950-12-29 07:12:03', '2014-11-17 21:47:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 35, '6ae1e184-af4e-384f-958e-ab6ced1dc8f0', 1708, NULL, 29, '1969-09-12 22:56:15', '2020-10-16 16:54:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 48, '24fe6423-d410-33c8-ad6e-cf8f93eac023', 34570, NULL, 47, '1995-08-02 22:37:54', '2016-01-12 21:13:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 6, '1380c1af-3b2a-3450-8068-f643702d6fda', 303760539, NULL, 17, '1970-12-24 16:49:40', '2016-02-02 18:35:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 1, '269263c8-4007-3cff-8237-055f60290a49', 25864, NULL, 31, '1971-10-23 07:44:11', '2020-02-23 03:06:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 11, 'adc3ecd7-1866-3bfb-8ec9-9812bf138c99', 1, NULL, 9, '1955-01-09 16:14:00', '2014-01-24 06:52:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 47, '075d0734-fe73-3f59-a035-38c6deae01eb', 341, NULL, 27, '2010-09-21 20:58:43', '2013-04-01 19:44:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 92, 'b0bccaa9-a8e3-30dc-b0d0-e9c807a917e0', 149884, NULL, 26, '1984-01-18 14:50:20', '2021-01-23 15:18:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 94, '409929cf-a534-3a60-8d54-268a5a186714', 7, NULL, 49, '2010-10-28 14:08:03', '2012-01-01 01:37:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 87, '4d6dc2c5-8686-391a-9bf9-81225f6bba86', 151794231, NULL, 47, '1997-09-29 11:43:49', '2011-05-23 07:12:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 97, 'f2ffe02a-a906-3144-af00-bd1d56bdece2', 26477833, NULL, 31, '1951-04-03 22:46:57', '2015-05-24 02:57:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 56, '9af386fa-4160-319d-9cdf-e13d482244a7', 1, NULL, 6, '1968-06-03 11:42:13', '2011-03-17 02:50:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 12, 'b45e216f-8e4a-3d9b-b070-11286d5ae083', 21, NULL, 33, '1975-07-01 02:29:14', '2019-10-26 09:17:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 3, 'ccd20ab3-7fdd-3059-a97e-be392439b401', 215, NULL, 3, '1955-10-02 04:34:36', '2014-07-08 08:24:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 64, 'd00e2d21-d9ff-390e-ae04-a0c143333502', 3250539, NULL, 38, '2004-10-16 04:03:02', '2013-11-02 12:23:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 97, '90ef9e79-901b-3083-a6d2-41e242dd5d6c', 7, NULL, 35, '1967-05-23 09:47:03', '2012-10-28 21:30:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 50, '92a503ea-844f-3ddf-9fad-917a827f19b1', 3, NULL, 39, '1960-08-04 12:15:38', '2016-03-07 13:52:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 60, 'e8728edc-b680-35e6-8fbe-f6fa977c95ba', 3, NULL, 5, '1981-05-10 13:16:18', '2018-11-12 05:27:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 36, 'a28b71fc-66d4-3b7e-9588-79002d264797', 1, NULL, 25, '1977-07-11 01:37:12', '2018-05-08 00:58:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 22, '0ab82785-0e98-30ec-a960-c6e047314819', 5, NULL, 13, '1972-07-21 13:53:08', '2013-08-05 03:03:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 6, '284a336c-addd-3233-8a26-8408d0b5f054', 4820103, NULL, 35, '2010-12-03 00:20:41', '2014-01-01 11:06:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 53, '6551a0c4-9f4a-36b8-a5ef-fba3f8aab97f', 2540808, NULL, 1, '2016-11-01 20:27:19', '2014-07-29 08:45:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 14, '618ab8b3-5735-3a62-ba7c-1f7d8afb75c5', 151061, NULL, 30, '2005-06-21 09:09:20', '2020-02-24 19:52:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 67, 'f2a2a77d-3878-36d7-b711-729a68d1e2ed', 2444828, NULL, 46, '1996-05-16 13:45:51', '2014-12-06 20:38:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 7, '694ac189-6213-393a-a0dd-aac64a366cca', 4542928, NULL, 18, '1985-06-28 07:00:00', '2013-04-26 11:40:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 32, '41f96a98-5bc2-3c44-9e9d-ffe8f1bd2ffe', 0, NULL, 30, '1988-10-18 14:51:42', '2020-07-11 19:05:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 89, '2486425f-4583-3178-9bf2-b2734ef16b40', 2, NULL, 5, '1986-06-01 15:15:17', '2018-10-26 15:18:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 51, '3d0c48b4-7857-35e2-a937-fa69c1589eef', 7, NULL, 42, '1954-10-29 10:11:58', '2017-01-28 05:48:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 100, 'dba4ff6f-8808-3736-8d35-fa02949b79bc', 366394951, NULL, 27, '1956-09-26 11:46:48', '2019-06-22 10:23:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 39, '7ac296be-a068-3dc2-a97c-0ddf2672d8a0', 371, NULL, 13, '1923-01-29 19:03:17', '2020-07-15 15:58:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 7, 'e029b154-9e06-3e2e-9aa8-f173a9902a1a', 83859717, NULL, 43, '1933-07-18 16:00:16', '2014-07-03 21:37:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 25, 'bac99d6c-2419-3b5b-b140-8207f1c05fb4', 86795, NULL, 20, '1979-07-17 13:47:05', '2012-08-02 06:45:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 38, '7209540b-8917-3fe3-833f-e89d18d8e822', 47713, NULL, 5, '1939-05-03 15:01:05', '2012-02-13 05:42:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 9, 'e99e9084-e902-35cf-a25c-1bf5379d746e', 86, NULL, 19, '1988-01-07 12:01:46', '2013-04-06 04:08:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 50, 'b6e5a26f-a1d5-3c54-9fc4-cf6b04663972', 10448, NULL, 18, '1945-07-19 15:28:01', '2018-01-28 02:06:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 26, '17191108-6c76-3dd9-a821-c83bf50c86ce', 833305, NULL, 26, '1952-03-30 03:32:23', '2014-04-17 04:41:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 99, '4417929a-a638-38be-a86a-f64c05d5303b', 26428, NULL, 49, '1945-10-16 17:09:37', '2016-06-12 03:30:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 92, 'dd527f1b-1674-3c5b-bb7b-ef56a2c001a7', 2455, NULL, 9, '1936-03-01 00:10:26', '2019-02-21 01:28:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 61, 'ef37b6e4-962b-3932-accb-a1a863c66a57', 24162, NULL, 41, '1937-09-27 06:45:24', '2014-09-04 10:55:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 53, 'c08d742d-8b13-32ae-a0d8-81c0c5f4691a', 3, NULL, 32, '1992-12-08 19:07:34', '2014-07-22 11:47:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 43, 'c57e2a35-bcbb-373c-9dd0-3ca3c01eab95', 7, NULL, 33, '1964-03-13 21:28:02', '2012-01-05 14:34:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 91, '13ca091c-3f6c-31bf-8acc-c7c40ea4ccb7', 28, NULL, 6, '1922-04-05 03:29:43', '2016-02-21 00:08:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 28, 'b7393172-ea08-33e7-9a89-59174463a631', 0, NULL, 10, '1926-07-21 11:02:00', '2017-12-17 18:25:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 37, 'e3395a11-b147-3269-82ee-a7ec7dbe151e', 3, NULL, 5, '1971-05-04 17:10:39', '2020-01-14 19:15:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 43, '4ea234b6-dff1-3f54-b2ce-1676db43ca90', 7, NULL, 16, '2006-12-11 23:35:25', '2016-05-23 03:45:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 45, 'e335695b-bc24-3836-a116-8ab3a90f8c1c', 3, NULL, 20, '1969-10-29 08:18:39', '2011-10-12 13:46:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 31, '17472b81-4b05-3082-9f18-45aac2279888', 21069392, NULL, 41, '1988-10-23 13:33:17', '2018-12-25 15:50:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 54, 'ec03ecb5-091a-3964-8228-d5997242812c', 25807456, NULL, 25, '1995-10-14 20:39:28', '2016-09-15 07:47:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 58, '0ce24e90-5560-343b-ba2d-2f8d4d90a10e', 24363, NULL, 22, '2016-07-30 08:49:33', '2017-01-10 12:17:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 1, '41b23c31-0edf-3970-bbc5-be4fcdbe09d6', 18756389, NULL, 20, '2002-12-21 11:39:43', '2018-04-08 17:35:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 59, 'e56e825d-2adb-3588-994b-3e7d92ac3e3b', 6, NULL, 22, '2016-02-22 20:56:09', '2011-11-15 04:27:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 7, '0e371f4d-3247-37f1-9f12-04c7f933b306', 1, NULL, 21, '1969-12-10 15:59:46', '2012-11-26 19:38:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 99, 'f899d023-f631-3bdd-8074-919cfe02ef22', 203, NULL, 10, '1964-02-10 22:20:50', '2014-05-04 12:02:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 87, '2a6efe3f-9c23-38cc-bd64-a8125bc3f2c3', 36, NULL, 11, '1932-06-12 07:23:47', '2020-07-24 10:36:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 26, '7f25f6b8-a394-3e69-a367-d082121a84f4', 4507489, NULL, 13, '2000-05-10 04:30:17', '2014-03-21 06:45:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 7, '21596bca-3f6e-35d7-8349-ebbfa40251bb', 427870, NULL, 34, '1960-10-11 21:54:16', '2013-06-15 01:36:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 67, 'adbae6a2-8eb0-3918-80f8-7ece283405d4', 838, NULL, 1, '1939-06-23 08:37:17', '2012-08-26 11:18:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 29, '92595fc3-2509-3d2a-9219-1ea4646e5cd8', 39636330, NULL, 11, '1943-03-31 07:09:56', '2019-04-21 17:41:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 84, '7dc841bc-5abb-38d3-a845-0182df4f435f', 11569056, NULL, 19, '2018-02-05 19:58:40', '2011-08-05 11:22:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 100, '62c30951-ce30-3426-b3f5-ce2b90c93626', 642221, NULL, 28, '2001-01-01 20:04:01', '2020-12-11 05:37:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 96, '93f69d2c-4e48-3cbc-8e01-8f7cbcb90fd8', 45507431, NULL, 13, '1926-07-14 18:16:32', '2020-01-12 20:55:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 44, 'ff5a0208-2e22-38e2-8775-83b54aa7b143', 55233, NULL, 46, '2016-01-08 06:22:17', '2016-08-12 12:13:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 41, '15d0244f-1581-3835-8d9a-32a4c75755f7', 36, NULL, 49, '1979-11-23 06:19:21', '2018-07-04 00:40:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 60, '56f5902c-95a6-31c5-91b9-6a5e11d2aae6', 2815, NULL, 11, '2011-06-17 17:23:30', '2020-03-08 02:25:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 49, '03b58057-696c-3f2d-8560-ee41830bbdcc', 1826, NULL, 47, '1982-07-31 00:44:57', '2014-08-17 09:19:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 54, 'b5547a53-e8c1-3946-ba52-49df97e75c52', 378, NULL, 34, '1980-01-18 01:01:08', '2020-01-11 12:05:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 65, 'ea523ad8-c191-3992-9860-9682d829447d', 34437, NULL, 45, '1991-08-17 15:42:48', '2012-06-26 22:09:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 55, '368d2b3b-f2a9-3cda-be85-434b5a0c92e8', 2, NULL, 5, '1935-03-27 10:58:30', '2013-05-19 04:36:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 49, '3443d1d5-b8dc-3de5-85d0-7622c8831e15', 9598404, NULL, 2, '1956-04-06 16:14:32', '2013-02-07 15:49:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 29, 'a95e5ea0-4b8f-3faf-add5-6d93542cb4ca', 8, NULL, 31, '1947-09-25 17:48:59', '2020-11-14 04:46:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 50, 'b18f44ab-5abc-351e-afa4-8933f97b12ed', 163557, NULL, 20, '1950-07-15 07:35:24', '2012-09-06 06:10:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 35, 'fc244597-8f2b-3e22-8f92-1a00e3a00ab3', 972049329, NULL, 48, '1970-09-14 05:44:51', '2017-03-29 22:10:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 66, '7b11f6f1-f71b-3389-b6f0-8d3804ef4266', 48909, NULL, 14, '1993-09-12 02:10:52', '2016-04-30 16:58:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 2, 'af554340-efd2-325c-91a7-f4c78ba55707', 5, NULL, 7, '1936-01-10 14:56:24', '2011-11-06 03:24:55');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'air', '1935-03-12 03:16:41', '1979-01-18 15:04:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sisx', '1960-09-01 19:31:49', '1977-05-03 06:35:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'uvz', '2000-07-12 19:58:22', '1984-08-14 22:23:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'mseed', '2015-02-08 13:26:05', '2000-11-20 01:14:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'omdoc', '1990-02-23 14:22:05', '1985-10-12 17:26:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'asm', '1975-10-29 06:50:26', '1923-11-23 06:38:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'uoml', '1947-10-30 00:13:36', '1972-04-04 05:05:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'cryptonote', '2011-04-07 20:21:22', '1941-07-07 12:39:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'xop', '1937-07-11 18:02:56', '1955-05-13 11:35:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'atom', '2010-11-04 08:55:46', '1986-05-12 19:10:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ods', '1927-03-08 20:20:48', '2009-05-16 11:56:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'pgp', '2018-05-27 19:09:13', '1946-11-06 14:17:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'lbd', '2013-05-11 10:39:04', '1964-09-25 10:50:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'bdm', '1922-09-06 23:48:43', '1956-03-08 15:10:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'wbxml', '2002-03-19 09:52:17', '1960-06-17 02:38:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'uvv', '2012-01-12 07:32:39', '2008-01-16 10:09:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'aac', '1939-12-17 21:11:11', '2007-04-30 01:55:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'wmlsc', '2011-08-16 05:48:39', '1984-06-25 17:55:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'odm', '1933-02-15 21:09:15', '1975-04-26 19:07:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'mdi', '2009-04-22 04:07:49', '1990-12-03 00:40:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'xml', '2008-10-18 23:56:30', '1983-05-02 11:36:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'eml', '1988-01-03 17:10:08', '1993-04-21 04:58:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'nsc', '2007-10-03 22:44:34', '2018-12-10 16:57:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sse', '1931-09-30 10:23:51', '1997-08-03 06:26:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'wav', '1933-01-04 21:16:49', '1989-02-18 11:47:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'odf', '1955-10-07 16:51:47', '2014-06-23 00:42:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'wgt', '2011-11-21 10:54:24', '2009-07-30 18:45:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'utz', '1930-02-04 21:11:19', '2006-11-24 16:48:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'pyv', '1954-02-11 22:46:50', '1983-02-09 13:17:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'opml', '1959-04-11 23:01:31', '1990-08-18 07:01:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, '3ds', '1958-04-15 08:38:36', '1974-02-12 03:02:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'tar', '2018-10-21 00:21:45', '1968-07-23 10:58:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'fdf', '1985-03-07 04:47:04', '1967-05-06 02:05:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'xlam', '1957-10-29 03:04:33', '2015-06-08 21:56:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'tsv', '1991-08-12 15:22:56', '1983-01-22 02:56:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'semd', '1956-11-21 06:56:37', '1942-04-10 09:36:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'xap', '1996-05-30 11:52:48', '1978-09-24 11:31:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'clp', '1956-09-28 09:59:46', '1994-11-01 01:24:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'webm', '1942-05-26 00:26:20', '1966-01-27 22:45:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'umj', '2002-11-10 11:35:16', '1951-03-12 14:35:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'js', '1993-02-05 16:09:35', '1974-08-01 21:32:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'dgc', '1994-03-15 14:16:49', '1927-04-19 18:12:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'emma', '1959-12-31 17:54:16', '1929-10-13 12:43:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'blb', '2001-09-25 13:25:25', '1971-04-30 03:57:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'nbp', '1973-09-21 01:48:28', '1977-01-03 19:13:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'sm', '1954-12-22 04:36:01', '1976-08-23 01:57:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'apr', '2014-05-03 18:12:02', '1951-12-23 06:33:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'stf', '2006-11-23 18:35:41', '1991-09-13 04:05:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'xvm', '1925-01-01 19:36:39', '1941-09-22 19:13:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'zip', '1969-06-23 18:04:23', '1956-10-09 08:52:37');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 5, 34, 'Et adipisci voluptatem nisi velit cupiditate laboriosam eos. Iusto minima et molestias nesciunt est dolor autem voluptates. Aut assumenda dolores nostrum iusto sit quo eum.', 1, 0, '2019-11-10 19:52:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 24, 52, 'Sint eveniet quia saepe tenetur inventore explicabo. Temporibus quam dolorem commodi eaque libero velit officiis. Et ad aliquid consequatur voluptatum aperiam.', 0, 0, '1931-10-20 02:52:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 60, 92, 'Aut reiciendis corporis quia voluptatem. Magni placeat dolores perspiciatis ipsa illo. Repellat nemo voluptatum ut ut dolorem maxime omnis.', 1, 0, '1932-08-12 15:07:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 95, 24, 'In molestiae quibusdam non voluptatem tempore. Soluta sunt id et id. Rerum ex qui facilis nostrum qui. Aut deleniti incidunt voluptate facilis. Minus et dolores quis enim nemo sint.', 0, 0, '1932-07-14 07:28:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 49, 32, 'Veniam iste voluptatem eum iste doloribus. Sequi nihil consequuntur maiores reiciendis. Quia eos alias fugit amet eligendi sunt iusto voluptatem.', 0, 1, '1946-08-09 01:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 8, 46, 'Et totam voluptas optio. Iste dicta voluptatem corrupti totam quis ad. Molestiae excepturi quos perferendis est aperiam sed. Ut quia odit qui atque animi tenetur odit ullam.', 1, 0, '1937-06-14 13:23:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 54, 81, 'Maiores quasi praesentium nostrum iste error animi repellat laboriosam. Sit aut qui repudiandae vel ex et. Debitis incidunt tenetur quasi veritatis earum atque numquam ut.', 0, 1, '1971-08-23 18:12:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 29, 27, 'Eos ut dolorum voluptate neque non maxime. Sint ut quo nesciunt doloremque sed in alias. Sed sapiente totam accusantium sunt ut earum voluptatum. Qui consequatur necessitatibus laudantium dolor accusamus sed.', 1, 1, '1983-09-25 08:08:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 61, 66, 'Neque nulla voluptatem quia esse rerum laudantium atque. Est sit reiciendis consequatur ipsum quaerat sequi corporis. Dolorem aspernatur dolor odio illo.', 1, 0, '1992-12-17 21:12:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 47, 49, 'Voluptatem dignissimos et voluptas necessitatibus cupiditate. Dignissimos est ut quod voluptas quia quisquam. Aut doloremque exercitationem perferendis dicta ea. Ut itaque et illum eos voluptatem nulla quis porro.', 0, 0, '1993-03-07 19:16:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 70, 15, 'Assumenda dolor ducimus iusto veniam voluptates eveniet quas. Dignissimos optio nostrum est aliquam. Porro est accusamus ipsum omnis reprehenderit non nemo. Perferendis aut cum a.', 0, 1, '1966-01-03 23:15:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 3, 80, 'Earum occaecati eos alias repellat. Facilis et velit tempora ab voluptatibus. Nisi perspiciatis voluptatem et saepe voluptatem et.', 1, 1, '1959-05-03 02:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 25, 76, 'Aut quis deserunt ullam ab et aut. Sit voluptatem nobis fugit ut corrupti id. Non praesentium assumenda et. Sunt nulla quasi rerum harum.', 0, 1, '2019-03-09 11:09:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 51, 63, 'Eum porro totam libero impedit consequatur. Optio consectetur est praesentium ex aliquam necessitatibus. Dolorum asperiores eius voluptate perspiciatis quam. Et et nulla et voluptatem voluptatibus.', 0, 0, '1962-12-23 17:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 37, 99, 'Ut quidem dolorum fuga laudantium ex omnis. Animi iste omnis sed sapiente blanditiis laboriosam. Voluptatem quos et aliquid aspernatur.', 0, 0, '1932-04-24 19:00:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 43, 68, 'Id qui culpa delectus earum commodi. Hic incidunt quaerat saepe occaecati laborum. Alias sit architecto et ipsa quia atque natus. Sint autem dolorem ea minus officiis sunt ducimus.', 0, 0, '2001-10-25 22:03:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 81, 50, 'Sit eum assumenda ut tenetur. Omnis ut aliquid ut doloremque aut aut aperiam. A repudiandae asperiores quae. Accusamus officiis et fuga deserunt enim voluptatibus.', 0, 0, '1996-02-23 14:27:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 8, 85, 'Voluptatem doloribus enim eum qui. Cumque temporibus officia voluptatem consequatur hic corrupti. Unde ut perspiciatis commodi praesentium consequuntur architecto eum. Dicta ullam similique perferendis dolore aut.', 1, 0, '1954-12-21 01:35:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 92, 51, 'Debitis pariatur sapiente hic omnis. Harum facere et atque sit sunt. Suscipit consequuntur fuga accusantium sunt quidem quos aut.', 1, 1, '1936-06-06 15:05:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 52, 86, 'Provident culpa qui qui. Aut perspiciatis doloribus aut eveniet voluptatibus. In unde voluptatum iure distinctio. Est dolores natus rerum dolorum quas.', 1, 1, '1951-10-09 20:00:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 64, 19, 'In dicta et voluptatum recusandae qui eius ea. Facilis iste eos iusto vitae voluptatem. Minima est dolorem aut.', 0, 0, '2010-09-26 04:35:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 97, 90, 'Inventore sit delectus iure qui aut reiciendis nemo. Aliquam assumenda voluptatum et autem.', 1, 1, '1990-10-16 10:30:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 75, 5, 'Fugiat qui quo omnis voluptas fuga distinctio. Sed incidunt aut tenetur earum deleniti dolores. Ea placeat repudiandae qui aperiam qui saepe eos.', 1, 1, '2004-07-21 16:24:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 12, 63, 'Earum quis ut quidem assumenda maiores. Saepe qui odit sint quod sed magnam tempore. Est omnis perferendis at aliquam.', 0, 1, '2019-04-19 19:40:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 36, 18, 'Rem quae aut facilis sit. Consequatur facere dolore enim distinctio. Nesciunt et ducimus dolores.', 0, 0, '1938-12-20 12:56:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 78, 71, 'Exercitationem voluptatem odio sed distinctio veniam facilis natus. Voluptatem cum perspiciatis odit voluptates perferendis unde. Qui quasi eveniet consequatur vel omnis. Natus ex quis ut nam soluta.', 1, 0, '1922-01-10 09:48:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 31, 70, 'Sit natus repudiandae sint quia. Officiis nulla esse quo cumque repellendus quibusdam. Et sit nisi eos non. Similique adipisci aut ducimus asperiores sed.', 1, 1, '2003-12-27 03:40:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 65, 31, 'Aut maxime harum ad eum rerum ea ullam. Quos iure ut ut molestiae est illo a maxime.', 0, 1, '2000-04-07 01:39:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 70, 56, 'Et et quas magnam occaecati. Quos quos iusto id quisquam nemo ut distinctio. Vitae quis eum eius maxime nihil laborum asperiores. Eos laboriosam animi non soluta.', 0, 1, '1970-01-19 01:21:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 5, 1, 'Iusto sed voluptatem iusto non modi dolores suscipit quia. Sequi est quia nihil cumque. Ab voluptas vero tempora molestiae. Non eius quasi odio ut.', 0, 1, '2003-12-05 18:44:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 60, 42, 'Quos quam ipsam nihil neque et repellendus. Illo velit autem enim in consectetur. Dolores aut aspernatur ratione quo ut odio et.', 1, 1, '2017-08-29 20:04:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 80, 59, 'Sapiente consectetur sed esse officia ex. Aut voluptatem laborum est iste. Quo consequuntur nostrum dolor.', 0, 1, '1969-06-27 15:18:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 44, 99, 'Voluptatem esse quae eum ex repellat. Odit eveniet recusandae autem. Dolore quod est optio aut voluptates ea.', 1, 1, '1960-01-22 17:47:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 56, 82, 'Consequatur non sit dolorum. Et dolor recusandae ea non eveniet esse.', 1, 0, '1976-08-08 12:09:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 42, 55, 'Eveniet eum dolores sunt dolorum. Et tempora fugiat eum sunt mollitia velit. Fugit blanditiis quis dolor aut est. Repudiandae dolorum maiores dolores doloribus ut et corporis.', 1, 0, '1992-11-01 15:00:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 94, 22, 'Et optio quaerat quisquam ea rerum quo est. Nihil et modi corporis in officia. Cupiditate in inventore id vel amet quia. Repellat corrupti quaerat est fuga praesentium.', 1, 1, '1924-09-06 10:00:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 73, 55, 'Sunt adipisci labore rem. Omnis saepe quod excepturi optio ex sed perspiciatis.', 1, 0, '1928-03-13 22:15:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 37, 97, 'Doloribus necessitatibus neque saepe occaecati deleniti molestiae. Sed aut tempora quibusdam voluptate.', 1, 0, '2016-04-10 23:31:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 34, 78, 'Iste sunt ut debitis suscipit et voluptatem omnis amet. Soluta id illo laborum aut possimus adipisci. Incidunt quidem doloribus nihil et qui. Omnis molestiae praesentium necessitatibus.', 0, 1, '2012-07-25 11:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 29, 67, 'Quam sed nihil ut corporis sit et ducimus. Labore quo nostrum non minima nulla occaecati. Non assumenda deserunt voluptas consequatur qui laboriosam omnis.', 1, 1, '1934-01-26 09:08:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 61, 66, 'Veritatis accusantium rerum aspernatur perferendis sapiente nemo vitae. Consequatur qui rerum neque cumque sed nisi. Corporis consequuntur quia voluptas aspernatur rerum necessitatibus. Impedit voluptas eos enim consectetur aut veritatis vero sint.', 0, 0, '2009-03-11 15:35:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 89, 50, 'Recusandae aut et inventore adipisci aliquid facilis ex. Consequuntur delectus laudantium eligendi. Debitis impedit voluptatem eos aspernatur velit nesciunt voluptas. Accusamus neque voluptate quis at quam suscipit asperiores.', 1, 0, '1929-01-11 08:21:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 57, 66, 'Voluptas hic a unde et repudiandae mollitia. Dicta earum sit tempora sint hic eaque laudantium saepe. Qui minus vero suscipit numquam ipsam ratione.', 1, 1, '1954-04-17 22:44:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 55, 41, 'Velit aliquid omnis quaerat quia consectetur iusto molestiae. Ea repellendus qui quia ut. Distinctio veniam dolor et quibusdam ut rem voluptate.', 0, 0, '1986-02-01 20:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 70, 44, 'Sint quia minus doloremque voluptate labore quidem. Tenetur quia labore molestiae sed numquam ullam eum omnis. Atque aut omnis distinctio. Deleniti blanditiis dolorum voluptatem hic eaque saepe.', 1, 0, '1964-03-21 11:49:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 6, 76, 'Neque ea nemo fuga. Occaecati repellat libero est sit autem error. Repellendus perspiciatis eligendi ut inventore cupiditate blanditiis minus. Perferendis rem ut beatae.', 0, 0, '1956-04-14 19:52:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 15, 44, 'Ut officiis temporibus provident tenetur. Et eum ut distinctio aut eos ut. Cum aperiam laborum commodi. Alias excepturi voluptates est.', 0, 0, '1979-04-15 17:40:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 21, 67, 'Error ut iure ducimus occaecati quos vel id praesentium. Eum quae voluptas enim temporibus nostrum. Reprehenderit fugiat delectus totam ut. Eligendi ea ducimus cum.', 0, 1, '1958-10-20 12:47:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 94, 9, 'Vero quia dolor quidem consequatur ut repudiandae et. Nesciunt qui omnis aut aliquam accusantium. Nostrum officiis suscipit atque voluptatibus eos et consectetur. Similique natus nihil molestiae. Qui nobis numquam ab quibusdam.', 1, 0, '1947-04-03 10:54:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 42, 82, 'Sit quisquam autem voluptate blanditiis qui. Repellat rerum possimus sunt repellendus. Beatae distinctio labore inventore voluptas voluptatem a.', 1, 0, '2004-10-26 02:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 2, 99, 'Architecto tempore fugiat repudiandae. Minima quo nesciunt sequi enim. Eos repellendus accusamus et dolorem id.', 0, 0, '1962-05-23 15:01:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 88, 95, 'Quia architecto reprehenderit aut aut praesentium et sunt. Non ad accusamus veritatis consequuntur quasi non earum impedit. Sit voluptatum animi similique dolore consequatur magni earum qui. Consequuntur delectus laboriosam laborum corrupti mollitia minima eos. Aut eum aut vel impedit architecto magni explicabo.', 1, 0, '1926-03-14 12:35:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 66, 89, 'Saepe soluta ipsam consequuntur est ut et. Quam incidunt asperiores ducimus ipsa rerum.', 1, 0, '1933-02-18 12:49:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 18, 75, 'Eaque laboriosam eos illo ut. Voluptates ipsum nobis aspernatur voluptatem provident. Et quis hic dolores sit maiores unde.', 0, 1, '1966-04-04 23:48:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 86, 54, 'Suscipit voluptate eligendi quia unde veritatis rerum. Cum ipsam labore ipsam rerum et amet voluptatem ipsum.', 0, 1, '1982-09-25 07:43:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 95, 3, 'Dolor et itaque sapiente aut perferendis molestiae. Eveniet voluptate sint consequatur architecto. Blanditiis totam sit iste dolor nam architecto pariatur.', 0, 1, '1958-10-31 03:45:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 62, 63, 'Et earum placeat cumque provident neque magnam consequatur. Rerum aut placeat ea qui accusantium. Rerum voluptate quos nulla vitae omnis. Voluptatibus corporis hic reprehenderit dolor aut quo.', 0, 0, '1984-06-18 20:34:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 10, 51, 'Voluptatum ut ratione odio et excepturi voluptas alias. At repellat et aut deleniti cumque enim voluptas est. Aut voluptatem enim fugiat tenetur cumque voluptatem. Harum odio odit nesciunt numquam est. Eveniet corrupti reprehenderit id et iste itaque.', 1, 0, '1929-02-04 19:56:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 52, 86, 'Non nihil numquam necessitatibus consequuntur consequuntur similique similique amet. Qui ut quibusdam molestiae non non modi non. Aspernatur quia deserunt placeat vel officia placeat. Qui fuga consequuntur consequuntur ut illum.', 0, 1, '1943-07-22 14:29:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 13, 36, 'Odit nulla sunt voluptatem. Eum est aut quia ea debitis corrupti veniam quia. Voluptates a et doloribus et aut. Est quia ut fugit nam.', 1, 0, '1955-12-09 13:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 82, 15, 'Voluptatem ea maiores sequi quae voluptatum. Debitis in qui quisquam dolorem possimus voluptatem. Soluta quae aspernatur sint nostrum. Quisquam tempore voluptate similique.', 0, 0, '2011-03-14 17:32:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 12, 35, 'Similique quam perferendis consequuntur voluptate. Magnam non modi ipsum excepturi. Dolorem autem facilis tenetur minus. Sint exercitationem labore molestias voluptatem qui aliquam quidem.', 0, 0, '1952-02-11 15:36:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 71, 2, 'Facere quia quisquam molestias voluptatem ut. Autem et ea quas voluptatem ex sit qui. Quasi ut est recusandae odit quam et.', 0, 1, '2008-04-22 02:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 54, 15, 'Voluptas consequatur quasi neque cupiditate. Ipsam iste libero nam quidem. Expedita voluptatem tempore veniam cumque et in necessitatibus aut. Reiciendis rerum rerum sit ut et.', 1, 1, '1923-10-28 17:14:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 31, 59, 'Officiis deserunt fugiat aut reiciendis molestiae architecto. Magni voluptate quas repellat voluptatum et. Voluptatum aliquid iure ad molestiae voluptate eaque magnam. Sint quis aspernatur molestias impedit porro.', 1, 0, '2003-11-28 05:45:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 22, 15, 'Aut temporibus consequuntur culpa voluptatem eligendi aut. Ut iure rerum blanditiis. Velit modi magnam provident vitae et.', 1, 0, '1930-10-12 18:43:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 57, 31, 'Commodi corrupti veniam itaque sit architecto quam harum. Quam voluptas dolorem rerum dolor dolorem dignissimos. Modi maiores laborum error est et aut repellat. Porro doloribus natus laborum reprehenderit omnis veritatis.', 0, 1, '1932-07-17 18:15:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 32, 66, 'Voluptate commodi exercitationem quidem error. Qui qui et aut aliquid. Ex aut ipsa porro aspernatur natus. Doloremque totam itaque voluptatem aut nulla ipsum.', 0, 0, '1940-04-25 05:15:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 86, 24, 'Reprehenderit recusandae pariatur dolores ut ea. Iure molestiae qui ut deleniti. Soluta dolorum a earum dolor voluptas.', 0, 1, '2002-09-11 07:28:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 40, 40, 'Et neque quia temporibus labore. Beatae eum aliquid dolorum in. Et corrupti laboriosam ex nihil quibusdam. Autem et sapiente tempora totam voluptatem et.', 1, 0, '1986-08-06 21:52:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 63, 45, 'Facilis debitis explicabo sit officiis ducimus velit consectetur. Necessitatibus sed commodi dignissimos excepturi hic iusto sed. Quae voluptatem voluptatem dicta non repellendus.', 1, 1, '1992-03-04 14:32:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 6, 6, 'Temporibus sapiente animi quasi ex. Ut inventore perferendis pariatur culpa quis tenetur. Voluptatem ullam occaecati nostrum harum saepe ipsam quasi. Provident doloribus possimus consequatur quo quia.', 1, 1, '1948-05-08 23:57:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 11, 93, 'Eveniet id doloremque soluta est. Optio est qui sapiente nemo. Nostrum dolorem amet dolore eum ipsa esse velit consequatur. Nostrum maxime deleniti ut modi.', 0, 0, '2011-01-26 08:09:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 19, 32, 'Error pariatur id quas voluptatibus nihil reprehenderit laudantium. Est fugiat iusto qui et magni eos similique. Aut veniam cum veniam nobis sapiente ea. Est animi ducimus dolores culpa.', 1, 1, '2012-08-25 05:55:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 27, 7, 'Eos ut dolor repudiandae doloribus facere maxime qui. Alias maiores rem expedita quasi aperiam excepturi optio. Dignissimos earum quia repellat voluptatem nisi aliquid. Consequatur autem excepturi voluptatem nesciunt a porro sit.', 0, 0, '1998-05-24 13:04:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 36, 5, 'Perferendis debitis qui odit aliquam. Molestiae blanditiis distinctio est voluptatibus maxime molestias qui nobis. Iure blanditiis minima nihil ab nulla consequatur.', 0, 0, '1977-09-23 19:28:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 80, 37, 'Cupiditate earum ut nisi perspiciatis voluptatem autem ut ut. Odit voluptatem impedit animi natus harum et. Ullam dolorem excepturi dolores sunt.', 0, 1, '1950-04-08 01:43:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 47, 87, 'Ullam qui aut culpa corporis perferendis atque cumque est. Voluptate ipsum dolorem sed atque doloribus eligendi.', 1, 1, '1939-08-20 01:39:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 56, 69, 'Tempore qui omnis ullam dolorem animi cumque. Omnis blanditiis voluptate quia dolorem voluptatem quia. Praesentium iusto qui ullam occaecati saepe iusto voluptatem.', 1, 1, '2003-09-21 22:06:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 45, 70, 'Itaque dolores non explicabo tempora inventore velit distinctio numquam. Sit quaerat ut quod nesciunt laborum id. Ipsa consequuntur debitis qui eligendi praesentium est. Qui sit facilis ipsam nostrum aliquam eos sit. Consequatur ipsam voluptatem aspernatur doloribus et accusamus molestiae.', 1, 1, '1941-12-07 13:42:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 88, 10, 'Molestias nulla voluptas sunt consequatur quidem blanditiis minima. Qui minus perspiciatis non.', 1, 1, '1984-09-03 08:25:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 90, 63, 'Impedit consequatur culpa et modi. Et at aperiam suscipit veniam voluptatibus molestiae omnis. Voluptatem autem mollitia qui enim.', 1, 1, '1944-12-26 21:30:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 17, 14, 'Dignissimos pariatur fuga et. Voluptatibus et ab molestias maiores. Saepe quibusdam rerum vel eum et.', 1, 0, '1987-05-03 00:07:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 93, 35, 'Nostrum doloremque beatae eos eligendi rerum maiores magnam. Omnis voluptate sint quis atque harum. Dolorem eveniet et itaque qui dolores nihil. Et earum excepturi et sed sint ullam.', 1, 0, '1937-02-13 10:01:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 84, 73, 'Quod qui nemo facilis. Sit numquam iure sit nam consequuntur sint. Architecto qui autem rem voluptate.', 0, 0, '1989-08-27 22:55:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 65, 68, 'Minima atque fugit ea ipsum non eveniet. Distinctio soluta quae consequatur vero tempore temporibus. Repudiandae omnis aut ipsam. Quidem non et ad optio saepe.', 1, 1, '1944-08-21 22:15:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 69, 41, 'Quis libero illum cum magni. Debitis ut numquam excepturi amet exercitationem. Molestiae occaecati eum dolores nihil iure dolores est. Reiciendis quia voluptatum voluptatem.', 0, 0, '1932-04-10 09:54:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 18, 13, 'Distinctio voluptates quae eos laborum pariatur. Eius eos vel at possimus eveniet. Sed rem sed ipsum.', 0, 1, '2017-11-27 19:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 91, 37, 'Deserunt omnis qui sed nemo. Omnis est suscipit consequatur iure qui rerum. Excepturi voluptate voluptas iusto.', 0, 1, '1956-07-17 21:17:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 77, 7, 'Quos ut aut ex debitis id. Id velit et eos eveniet eligendi et alias. Eos fuga laborum qui. Tempora et debitis eius dolor ratione consequuntur.', 1, 1, '1980-04-21 03:31:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 81, 27, 'Aut est repudiandae voluptatem et expedita eaque distinctio. Fugit earum vel perferendis eveniet quia. Dicta nobis fugit eligendi ex. At temporibus nulla alias et quis soluta. Quidem aperiam aut aut est blanditiis sed.', 1, 0, '1999-02-27 20:30:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 63, 14, 'Laboriosam natus voluptatem laborum magni voluptas qui. Tempora exercitationem reiciendis corrupti sequi et natus.', 0, 1, '1945-08-28 06:54:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 8, 13, 'Suscipit amet qui perspiciatis quis dolorum. Dolorem sed cupiditate aut mollitia qui quas. Voluptatem consequatur doloremque nesciunt animi temporibus nemo magni. Sit sunt et recusandae a quia possimus.', 1, 1, '2002-01-16 16:12:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 35, 100, 'Eius voluptatem non dolor placeat quo cupiditate error illo. Consequuntur eligendi sed dolorem provident voluptas.', 1, 0, '1998-10-29 21:40:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 72, 18, 'Labore facere reprehenderit autem odit. Quod fuga consectetur quo officiis fugiat saepe libero.', 1, 1, '1927-03-09 17:38:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 85, 40, 'Error repellendus ipsam laboriosam id fugit odio repudiandae. Nulla exercitationem nostrum voluptas nesciunt fugiat. Ratione iusto dolor eius voluptatum aut rem accusantium ipsam. Quia mollitia laborum non rerum.', 0, 1, '1966-06-17 02:46:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 58, 45, 'Perferendis numquam dolores distinctio quam. Est possimus nesciunt et quia ea. Aspernatur labore dolorem fugit voluptatem nobis reprehenderit culpa.', 0, 1, '1996-11-14 03:41:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 47, 21, 'Ab voluptas facilis asperiores in et praesentium tempora excepturi. Fugit in accusantium eos corrupti et possimus sapiente. Fuga et nesciunt est eos occaecati quod.', 1, 0, '1989-04-18 20:25:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 32, 13, 'Iure voluptatem eius harum et natus rerum sequi. Rem saepe eos iure ullam dolor et vel velit.', 1, 1, '1973-12-08 22:03:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 97, 36, 'Ea et reprehenderit voluptatum sit eum odio. Consequatur voluptatem aut sed. Ad sed vel voluptas velit. Unde est id commodi sit.', 0, 1, '2000-06-26 20:59:29');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` datetime DEFAULT NULL COMMENT 'Последний вход в систему',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'm', '1970-10-15', 'Kertzmannside', 'Antarctica (the territory South of 60 deg S)', '1954-05-24 00:32:34', '1961-04-18 04:58:31', '2018-01-29 03:14:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'm', '2012-02-17', 'South Ena', 'Czech Republic', '1930-05-31 22:18:50', '1968-08-05 18:14:55', '2014-03-11 16:46:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'm', '1972-06-07', 'Port Vidalbury', 'Saint Martin', '1962-07-14 17:39:23', '1933-02-08 09:21:19', '2020-06-20 01:46:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'm', '2000-12-29', 'West Monroemouth', 'Portugal', '1975-12-10 00:12:30', '1933-03-16 05:41:08', '2013-06-14 17:40:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, 'w', '1977-03-30', 'Runteberg', 'Brazil', '1989-10-13 01:03:35', '1929-12-16 18:50:48', '2011-06-12 21:23:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'w', '1990-03-04', 'Janeside', 'China', '1948-09-25 18:59:04', '1970-04-02 22:35:35', '2019-10-26 15:18:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, 'm', '2017-09-12', 'Ullrichland', 'Eritrea', '1975-12-24 17:14:16', '2020-05-17 20:37:09', '2013-05-10 02:38:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, 'w', '1975-02-01', 'East Vita', 'Palau', '2004-08-15 23:15:17', '1944-02-28 18:00:53', '2015-03-09 14:34:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'm', '1978-07-06', 'Marionborough', 'Netherlands Antilles', '1967-08-17 00:41:53', '1995-11-19 02:30:59', '2016-12-01 19:22:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'm', '2007-11-08', 'Isadoreborough', 'Maldives', '2013-03-22 21:59:31', '1993-04-15 03:01:29', '2014-05-03 20:09:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'm', '2014-09-05', 'Vonfort', 'Belarus', '1926-07-12 11:05:15', '2001-10-08 07:33:43', '2020-03-30 20:02:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'w', '1972-08-05', 'West Nikita', 'Cook Islands', '1937-02-02 20:52:05', '2017-01-19 12:23:56', '2019-01-12 23:32:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'w', '2018-08-29', 'Abshiretown', 'United Arab Emirates', '2019-04-27 10:48:05', '1986-01-11 06:55:22', '2019-01-09 16:46:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, 'm', '1993-07-29', 'Klingside', 'Uruguay', '2011-02-06 01:44:55', '1984-03-27 19:07:14', '2011-12-24 07:04:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'w', '1985-04-02', 'North Judah', 'Slovakia (Slovak Republic)', '1956-02-12 00:53:43', '1972-07-14 13:00:35', '2017-02-06 10:50:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'w', '1978-03-13', 'Schummmouth', 'Senegal', '1954-10-02 22:43:30', '1959-10-25 09:14:11', '2011-07-04 23:40:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, 'w', '2013-05-01', 'Port Krystinaside', 'Bahrain', '1933-11-23 21:01:08', '1987-12-27 19:31:42', '2014-08-08 00:04:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'm', '1983-04-19', 'North Skylaville', 'Burkina Faso', '2013-11-19 18:26:45', '1952-03-12 18:28:19', '2012-02-19 06:24:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, 'w', '1988-07-11', 'Makaylaborough', 'Austria', '1989-12-28 17:28:52', '1941-05-12 03:47:56', '2011-05-23 23:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, 'w', '1992-08-10', 'Gordonburgh', 'Angola', '1958-10-09 07:08:19', '1953-11-10 22:24:37', '2011-05-20 07:56:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'm', '1975-01-28', 'Dakotamouth', 'Saint Martin', '1949-12-28 05:26:14', '1945-11-18 09:44:03', '2020-12-23 23:28:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, 'm', '2018-03-18', 'Wilkinsonmouth', 'Greece', '1973-12-11 22:15:37', '1945-02-24 20:12:50', '2014-02-04 07:52:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'w', '2018-04-23', 'North Amani', 'Indonesia', '1980-03-13 06:00:11', '1941-02-22 18:04:33', '2018-08-31 14:51:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, 'w', '1985-05-28', 'North Kaya', 'Canada', '1981-06-26 10:19:39', '1946-02-03 15:38:49', '2020-11-11 05:48:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, 'm', '1987-02-10', 'East Robin', 'United States of America', '2014-05-23 14:04:00', '2007-02-26 04:28:31', '2016-02-07 15:15:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, 'w', '1982-04-28', 'East Berta', 'Lebanon', '1954-02-10 01:29:33', '1935-09-19 20:30:19', '2018-05-06 03:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, 'm', '2009-11-26', 'New Deondre', 'Pakistan', '1996-10-31 10:58:56', '1951-06-12 06:44:12', '2015-08-15 11:18:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, 'w', '2017-11-23', 'Rossieberg', 'China', '1975-11-01 12:27:09', '1945-09-03 04:04:30', '2012-10-03 10:52:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, 'w', '2015-07-29', 'West Erich', 'Azerbaijan', '1994-01-29 06:19:41', '1945-08-02 21:15:47', '2013-02-05 16:51:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'm', '1999-03-18', 'Medhurstport', 'Micronesia', '1982-03-24 07:16:53', '1930-04-12 01:30:58', '2013-09-03 09:19:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'w', '1981-05-05', 'Zechariahville', 'Armenia', '1927-01-29 19:11:23', '1954-08-10 11:52:02', '2015-02-17 10:42:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'w', '1991-11-15', 'Adrienborough', 'American Samoa', '1954-04-25 17:49:16', '1925-02-07 09:08:01', '2018-06-24 12:03:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'm', '2009-10-12', 'Danielmouth', 'Armenia', '1992-03-03 06:28:14', '1949-03-21 00:57:16', '2015-05-31 09:11:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, 'w', '1991-07-13', 'Larsonbury', 'Guadeloupe', '1995-07-12 05:58:11', '1974-10-15 01:56:01', '2015-06-14 00:15:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'w', '1991-06-13', 'Kochmouth', 'Pitcairn Islands', '1977-08-08 17:09:30', '1996-11-12 05:36:09', '2016-10-22 00:59:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'm', '1992-08-05', 'Bauchview', 'Cambodia', '1991-05-08 23:21:03', '1968-08-27 18:02:57', '2013-01-31 11:57:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, 'w', '1970-05-17', 'West Dudley', 'Armenia', '1927-02-07 00:09:09', '1937-11-27 02:36:03', '2016-05-27 15:32:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, 'm', '1987-08-14', 'Lake Johanton', 'Ecuador', '1961-10-31 21:34:52', '1962-02-25 21:25:01', '2013-07-06 01:45:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'w', '1993-10-09', 'Lake Ida', 'Belgium', '1939-07-09 01:52:32', '1966-06-05 13:50:29', '2013-01-05 01:06:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'm', '2001-05-26', 'Wymanstad', 'Iran', '1961-06-17 15:54:00', '1971-06-26 00:15:49', '2017-05-18 01:33:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, 'm', '2020-01-21', 'East Fausto', 'Bouvet Island (Bouvetoya)', '1948-06-17 03:34:00', '1948-06-11 19:11:24', '2015-07-25 15:39:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'm', '2010-10-12', 'Darianaville', 'Korea', '2009-01-28 18:39:38', '1952-12-30 11:50:42', '2012-11-27 17:56:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, 'w', '1998-04-27', 'Predovicberg', 'Thailand', '2017-02-03 20:02:12', '1961-07-02 07:55:45', '2015-04-06 19:32:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, 'm', '1988-06-28', 'South Maverick', 'Syrian Arab Republic', '1972-01-10 08:38:17', '1955-12-13 19:59:41', '2019-06-24 05:55:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, 'm', '1986-09-15', 'Medhurststad', 'Bhutan', '1934-06-11 03:19:44', '1999-10-16 21:40:35', '2018-05-14 08:45:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'm', '1971-09-14', 'Thielmouth', 'Botswana', '1946-12-11 08:45:13', '1950-04-03 08:25:51', '2011-06-11 01:40:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'w', '1995-04-08', 'Rolfsonside', 'Morocco', '1931-03-06 05:59:20', '1922-07-22 09:31:48', '2013-03-23 12:30:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, 'w', '2017-02-13', 'West Cindy', 'Mongolia', '1955-07-10 20:34:47', '1992-05-12 23:33:01', '2018-06-24 01:41:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, 'm', '2003-04-11', 'Leschtown', 'Lithuania', '1991-05-30 22:18:42', '1957-07-18 06:22:58', '2017-02-21 04:14:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'w', '2002-11-04', 'Vallieview', 'Vietnam', '1951-02-09 19:26:00', '1960-01-18 04:22:24', '2018-03-11 06:39:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'm', '1997-03-06', 'Elodymouth', 'Zimbabwe', '1954-12-21 22:09:35', '1983-04-12 13:31:55', '2016-12-02 21:23:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, 'w', '1992-04-17', 'Rickeymouth', 'San Marino', '1923-01-10 02:26:05', '1954-08-19 03:34:02', '2013-05-06 01:45:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'm', '2009-02-13', 'New Annabellfurt', 'Bhutan', '2013-06-16 07:59:39', '1925-01-25 05:54:35', '2018-12-29 00:22:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, 'm', '2018-12-03', 'Muellerland', 'Burkina Faso', '1988-09-06 08:11:10', '2016-11-08 11:26:00', '2012-09-21 06:15:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'w', '1994-05-19', 'North Irmafurt', 'Madagascar', '1932-10-17 00:25:34', '1990-01-16 05:35:35', '2013-01-29 16:40:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, 'w', '1997-09-05', 'Wolffside', 'Uzbekistan', '1929-04-01 07:22:10', '2016-06-16 10:38:43', '2014-08-27 05:32:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'w', '2005-01-18', 'Paucekland', 'Czech Republic', '1951-05-28 02:24:31', '1990-06-18 03:34:26', '2019-08-31 03:49:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'w', '1976-05-01', 'Emanuelbury', 'Finland', '1940-11-08 06:56:27', '1941-09-14 07:11:45', '2017-04-29 00:47:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'w', '1983-06-25', 'South Miguelberg', 'Heard Island and McDonald Islands', '1975-02-14 19:29:22', '2003-06-11 02:19:56', '2014-02-17 14:46:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'w', '2001-05-16', 'North Beverlyview', 'Albania', '1929-06-21 21:51:56', '1962-02-02 21:28:43', '2013-06-04 17:06:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'w', '2011-06-07', 'Jeromyhaven', 'Christmas Island', '1994-11-13 12:07:20', '1974-01-19 04:51:02', '2017-12-13 02:47:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'w', '2016-05-11', 'Spencerland', 'Taiwan', '1929-03-05 05:14:42', '1940-12-08 17:48:37', '2019-10-30 05:18:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, 'w', '1977-06-26', 'Port Kylee', 'Kazakhstan', '2007-01-18 06:40:07', '2007-11-22 23:50:16', '2018-04-02 07:18:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'w', '2017-05-23', 'West Rhett', 'Macao', '1985-09-25 11:44:00', '1930-06-11 08:12:13', '2011-06-16 10:55:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, 'w', '1984-04-18', 'North Virgilbury', 'Papua New Guinea', '1933-09-06 01:35:49', '1980-07-29 09:26:39', '2012-07-09 10:13:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, 'm', '1977-01-13', 'Bufordview', 'Barbados', '1933-04-23 19:33:04', '2016-03-12 17:03:01', '2011-05-22 02:53:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, 'm', '2003-02-18', 'Berylchester', 'Algeria', '2004-08-30 11:02:32', '2011-02-01 18:51:25', '2020-07-16 03:34:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'w', '1987-08-16', 'Smithville', 'Saint Helena', '1972-05-15 02:34:33', '1961-09-25 23:34:31', '2017-07-01 04:24:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'm', '1979-05-04', 'Port Scottie', 'Solomon Islands', '1942-03-25 09:54:22', '1934-04-23 02:23:23', '2019-05-08 02:24:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'm', '1970-11-11', 'East Garry', 'Mozambique', '1971-12-24 18:37:54', '1936-02-22 00:05:39', '2018-11-21 06:14:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'm', '2013-09-09', 'Lake Lonieland', 'British Virgin Islands', '1963-03-24 19:19:04', '1977-05-09 10:14:58', '2015-04-16 01:55:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, 'w', '2001-06-20', 'Kubville', 'Paraguay', '1998-04-02 09:28:45', '1950-04-22 14:04:31', '2012-10-06 11:52:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, 'w', '2005-12-31', 'Carrollhaven', 'Macedonia', '1944-12-16 12:13:27', '2005-11-13 02:46:22', '2020-10-18 13:02:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, 'w', '1971-02-04', 'North Clevelandshire', 'Tajikistan', '1921-12-08 04:20:37', '1930-08-26 13:04:11', '2013-05-31 07:33:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, 'w', '2011-07-13', 'Lake Kory', 'Botswana', '1991-10-11 12:50:10', '1951-01-03 21:02:05', '2018-12-23 16:59:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, 'm', '1983-01-25', 'West Jaren', 'United States of America', '1965-10-18 17:41:04', '1975-01-02 22:00:00', '2015-02-06 15:23:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, 'w', '1994-04-07', 'Hilbertshire', 'Burkina Faso', '1931-08-14 07:58:24', '1923-11-18 09:11:33', '2014-03-14 22:34:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'w', '1994-12-02', 'Daijaborough', 'Venezuela', '2007-03-10 18:42:37', '2008-07-18 12:23:13', '2016-11-21 01:05:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'w', '2008-10-21', 'Hoegerfurt', 'Maldives', '1967-05-18 13:53:22', '2015-01-21 11:56:09', '2020-08-19 15:12:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, 'm', '1983-01-19', 'South Liliane', 'Papua New Guinea', '1924-09-18 19:51:56', '1961-11-16 20:58:38', '2018-04-11 09:04:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, 'w', '2020-01-27', 'Lake Collin', 'Guatemala', '1958-07-18 23:09:30', '1961-12-16 20:22:16', '2015-08-03 05:53:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'w', '1980-07-28', 'Okunevabury', 'Cyprus', '2019-12-25 21:08:05', '1927-11-07 07:39:39', '2020-10-25 03:44:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, 'w', '1972-06-20', 'Lake Emilshire', 'Tajikistan', '1936-06-09 08:10:02', '1998-06-02 11:29:42', '2016-06-03 20:20:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, 'm', '1976-05-07', 'New Bernita', 'French Polynesia', '1934-10-25 06:02:58', '1991-03-02 17:59:52', '2014-01-31 08:17:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'm', '2014-05-26', 'Shanelview', 'Montserrat', '2009-06-24 02:28:55', '1997-11-10 03:02:12', '2011-03-29 07:43:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'w', '1977-03-13', 'Port Vincemouth', 'Syrian Arab Republic', '1944-07-30 03:27:12', '1930-06-16 05:37:43', '2020-06-24 20:59:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'm', '1988-11-04', 'Haleyside', 'Papua New Guinea', '1979-12-04 08:10:43', '1992-09-18 15:59:01', '2014-06-24 19:49:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'm', '1990-02-26', 'North Codyborough', 'Palau', '1962-02-04 13:21:12', '2000-08-22 17:18:05', '2019-10-13 10:21:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'm', '2001-07-30', 'West Harryville', 'United States Minor Outlying Islands', '1988-03-08 18:54:30', '1979-06-14 08:10:18', '2013-01-26 11:54:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'm', '2005-06-02', 'Lake Ethelynmouth', 'Antarctica (the territory South of 60 deg S)', '1970-01-03 13:27:01', '1991-06-21 19:00:25', '2016-04-05 07:20:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, 'w', '1977-09-10', 'Kendrickbury', 'Georgia', '1981-10-17 18:26:36', '1939-06-03 17:38:16', '2015-04-11 23:01:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'w', '2014-10-19', 'North Hassieborough', 'Poland', '1993-06-14 07:44:15', '2017-11-23 04:23:15', '2018-04-04 22:36:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'w', '1975-12-08', 'Schmelerhaven', 'Jamaica', '1951-04-01 18:53:43', '1984-06-27 03:57:34', '2011-05-03 11:35:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'm', '2017-05-03', 'Lake Paulfort', 'Burundi', '2006-01-03 07:04:25', '1977-10-12 20:23:22', '2016-12-31 01:34:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'm', '2008-07-21', 'Port Sadyeshire', 'Syrian Arab Republic', '1924-04-30 04:32:52', '1992-04-24 15:27:50', '2016-09-13 10:48:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'w', '2011-08-26', 'East Cleora', 'Korea', '1981-03-03 09:10:08', '1928-07-03 19:44:11', '2014-11-08 05:55:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, 'w', '1977-07-19', 'Agustinshire', 'Equatorial Guinea', '1976-11-24 01:53:25', '2010-06-09 23:46:42', '2019-02-10 16:03:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'w', '1980-02-11', 'Doyleburgh', 'Costa Rica', '1967-07-10 23:31:54', '1958-05-02 12:48:18', '2017-10-24 19:09:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, 'w', '1984-06-22', 'Borerburgh', 'Seychelles', '1978-11-23 17:31:59', '1933-07-13 06:04:15', '2016-01-04 10:59:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'm', '1982-08-24', 'Okunevabury', 'Saint Kitts and Nevis', '1927-06-11 11:29:13', '1995-02-11 17:44:53', '2019-02-10 19:23:21');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Danielle', 'Kovacek', 'veum.clovis@example.net', '(055)957-0776x210', '1963-08-10 16:20:49', '2020-05-26 23:13:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Joanny', 'Abshire', 'wilfred57@example.org', '+77(9)8161347647', '1955-12-09 05:11:03', '2021-01-03 16:27:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Bret', 'Larson', 'lockman.wilburn@example.org', '112.116.7761', '1921-07-26 02:01:39', '2021-01-25 11:04:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Reuben', 'Johns', 'lindgren.santina@example.net', '+89(7)2292049709', '1942-04-11 03:28:51', '2021-02-14 11:37:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Kenton', 'Bosco', 'chester76@example.net', '(032)140-5577', '1947-09-18 15:40:50', '2020-12-22 19:00:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Josianne', 'Gutmann', 'joshua65@example.net', '(212)442-0693', '1956-02-18 19:25:59', '2020-09-29 08:41:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Angeline', 'Schmidt', 'kertzmann.verdie@example.org', '(501)940-3820x71443', '1982-11-12 13:37:32', '2020-03-08 08:39:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Daryl', 'Paucek', 'samanta.keebler@example.com', '601-134-8252', '1965-04-20 16:14:50', '2020-06-12 12:58:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Adela', 'Heathcote', 'ksteuber@example.net', '(303)550-6061x5983', '2016-06-13 19:32:41', '2020-12-05 21:35:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Shanelle', 'Mills', 'alessandro09@example.org', '408-499-8946x93806', '1943-09-02 08:04:57', '2020-10-05 19:06:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Jake', 'Prohaska', 'oberbrunner.dario@example.org', '591-556-1390x40599', '2018-01-02 07:46:28', '2020-10-26 15:29:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Davon', 'Hickle', 'loy.quitzon@example.org', '1-477-110-2518x4543', '1954-01-03 13:41:42', '2020-11-07 17:00:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Melyna', 'Quigley', 'dbartell@example.org', '046.730.0494', '2004-03-12 16:56:58', '2020-06-10 12:18:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Lela', 'Hagenes', 'mbraun@example.net', '803.339.3986x47992', '1946-08-18 12:04:27', '2020-05-21 17:09:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Angie', 'Wehner', 'keeling.brady@example.org', '1-632-364-5455x711', '1962-01-08 07:29:32', '2020-09-08 14:04:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Cornell', 'Macejkovic', 'stamm.leann@example.net', '1-936-713-8151x36588', '1940-02-04 12:41:38', '2020-06-11 09:17:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Malika', 'Torp', 'gottlieb.shakira@example.org', '762.555.3774x7516', '1956-08-03 21:45:45', '2020-11-27 11:48:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Gerry', 'Keebler', 'jerde.daniella@example.org', '(438)620-3199x1787', '1966-08-10 22:15:22', '2020-07-19 14:47:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Tavares', 'Gaylord', 'champlin.catalina@example.org', '(321)613-7776', '1925-10-16 13:08:56', '2020-02-25 19:52:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Emilio', 'Hudson', 'randall.brekke@example.net', '1-885-809-6005x9841', '1953-04-03 04:27:48', '2020-10-31 03:38:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Abner', 'Kulas', 'weimann.lesley@example.com', '(155)749-5875x5220', '2004-03-26 12:22:01', '2020-08-08 08:10:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Norwood', 'Wuckert', 'bgreenholt@example.org', '451-447-7521x0793', '2009-06-23 01:28:55', '2020-11-30 07:49:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Marcus', 'Marquardt', 'corwin.kenya@example.com', '(313)994-5265x2760', '2011-07-14 11:08:38', '2020-03-14 12:27:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Alvina', 'Walter', 'carrie.o\'reilly@example.com', '1-744-176-1010x21643', '1983-07-21 06:24:57', '2021-01-23 05:07:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Orland', 'Farrell', 'wilford.simonis@example.net', '1-658-865-1456x2112', '1954-11-08 02:49:55', '2021-01-14 11:51:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Shaniya', 'Leuschke', 'hollis.corwin@example.org', '+67(3)4109415296', '1997-04-08 11:11:39', '2020-10-21 09:46:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Raphaelle', 'O\'Keefe', 'blick.stewart@example.net', '1-823-923-6624x9596', '1987-08-13 02:34:41', '2020-07-30 12:04:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Grady', 'Shanahan', 'knikolaus@example.org', '795-566-7776x14304', '1931-05-13 12:31:10', '2020-09-27 07:25:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Kellen', 'Kling', 'freda.metz@example.net', '837.742.4987', '2005-09-16 00:55:42', '2020-10-20 02:12:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Solon', 'Altenwerth', 'israel32@example.com', '(937)721-4772x8913', '1928-11-03 03:58:34', '2020-05-05 04:56:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Trystan', 'Fay', 'abeer@example.org', '+66(7)5771902022', '1972-06-16 06:18:00', '2020-06-04 19:54:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Laila', 'Leuschke', 'luettgen.nyah@example.org', '1-116-475-7859x9259', '1955-03-13 16:56:31', '2020-04-28 19:05:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Althea', 'Rath', 'darion37@example.net', '851-005-4365', '1984-02-22 06:19:32', '2020-02-27 03:07:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Angeline', 'Christiansen', 'claude.keeling@example.net', '+07(4)4841471516', '1977-10-07 09:32:32', '2020-07-16 08:13:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Jamarcus', 'Schinner', 'loyce22@example.org', '428-889-8209x205', '1947-06-25 15:15:46', '2020-07-27 04:30:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Desiree', 'Dach', 'ross42@example.com', '(302)424-0572', '2011-05-26 11:55:54', '2020-07-22 12:32:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Catharine', 'Schmitt', 'marina.trantow@example.net', '07469482229', '1942-11-24 17:02:51', '2020-06-06 18:36:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Curtis', 'Hegmann', 'cristal11@example.org', '1-189-817-5557', '1987-05-14 16:25:05', '2020-07-16 13:17:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Catharine', 'Bergnaum', 'daniela.beahan@example.net', '+61(6)1561511901', '1928-08-09 05:18:44', '2021-01-02 06:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Marisol', 'Armstrong', 'ihansen@example.net', '(785)117-5775x61146', '1959-04-19 11:14:29', '2020-11-28 21:41:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Kyle', 'Kreiger', 'alisa.jakubowski@example.net', '1-609-303-5078x84181', '1944-04-09 01:39:35', '2020-12-23 06:08:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Maye', 'Rolfson', 'april.davis@example.net', '+73(9)6095346104', '2014-03-23 09:30:44', '2020-07-04 03:16:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Gunner', 'Walsh', 'nader.destin@example.com', '(116)461-4993x6783', '1995-10-27 00:39:59', '2020-05-04 19:25:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Margot', 'Oberbrunner', 'soledad59@example.net', '266-563-4814', '1969-12-30 08:51:03', '2020-02-29 02:32:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Brittany', 'Keeling', 'dolly84@example.org', '(422)058-3869x2211', '1951-05-07 02:46:13', '2021-01-29 00:08:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Bulah', 'Langosh', 'yost.sophia@example.net', '785.195.7247', '1974-04-05 06:58:12', '2020-06-14 18:08:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Chelsea', 'Mayer', 'kailee56@example.com', '1-542-911-0871x991', '1972-03-03 19:26:36', '2020-06-05 23:26:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kaitlin', 'Hilll', 'jameson02@example.org', '103.600.1611', '1979-11-15 23:37:33', '2020-06-04 08:48:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Deon', 'Kunze', 'crona.lela@example.org', '00421970491', '1952-01-30 00:28:54', '2020-08-02 14:00:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Grover', 'Mosciski', 'haskell09@example.com', '326-281-7265', '2013-08-30 20:09:33', '2020-08-15 10:00:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Kendra', 'Rogahn', 'terence99@example.org', '706.313.8616x3152', '2019-06-28 13:11:24', '2020-09-22 12:30:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Delphine', 'Koss', 'streich.jeanette@example.net', '035.686.6464x8344', '2001-04-29 20:42:30', '2020-11-03 03:42:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Pasquale', 'Cartwright', 'sigrid21@example.com', '155-692-3237', '1991-06-05 08:52:30', '2021-01-27 11:18:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Josianne', 'Toy', 'giovanni.grimes@example.net', '048-575-0491x3441', '1973-02-04 00:20:48', '2021-01-14 21:20:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Clementina', 'Weissnat', 'franecki.polly@example.net', '00820219811', '1997-09-09 16:23:13', '2021-01-01 09:46:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Harold', 'Auer', 'shields.trever@example.org', '1-297-743-6093x361', '2008-02-07 14:41:36', '2020-06-02 07:49:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Trey', 'Ritchie', 'zackary11@example.com', '496.151.9704', '1932-03-20 22:17:37', '2020-09-18 18:40:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Floy', 'Moore', 'erich78@example.net', '1-891-869-7073x216', '1924-01-20 00:52:36', '2020-11-19 22:54:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Sonia', 'Stiedemann', 'dankunding@example.com', '227.521.8910x751', '1930-12-17 03:05:52', '2020-08-08 03:43:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Ethelyn', 'Russel', 'blick.cecilia@example.net', '(648)455-8366', '1969-07-27 13:34:36', '2020-06-06 22:34:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Crystel', 'Ritchie', 'cschuppe@example.com', '423.939.6411x9623', '1960-10-16 22:47:45', '2020-03-12 02:07:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Amely', 'Skiles', 'randall65@example.org', '+20(2)2082500709', '1961-10-25 23:09:15', '2020-10-22 15:20:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Bertha', 'Boyer', 'cummerata.judah@example.org', '661.217.1426', '1944-05-14 23:09:57', '2020-03-19 00:40:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Hulda', 'Kreiger', 'greta71@example.org', '754-469-1585', '1953-04-10 09:47:26', '2020-02-19 00:45:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Maybelle', 'Auer', 'qrohan@example.com', '659.021.8595x3237', '2005-09-05 15:26:35', '2020-04-10 13:04:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Trevion', 'Hilll', 'umedhurst@example.org', '1-568-612-9580x1864', '1982-06-16 12:15:27', '2020-10-15 21:41:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Ayla', 'Mante', 'sd\'amore@example.net', '1-284-544-4390x2914', '1996-03-25 02:53:53', '2020-08-15 23:23:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Mandy', 'Stark', 'lue.nienow@example.net', '1-849-709-5280x37944', '2014-05-07 22:31:50', '2020-03-29 15:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Toni', 'Schimmel', 'phermiston@example.com', '(885)528-1970x5694', '1980-12-15 01:41:54', '2020-06-12 21:25:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Andrew', 'Flatley', 'kian.nicolas@example.net', '03915764453', '2015-01-12 18:26:32', '2020-05-29 01:18:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Mariano', 'Kautzer', 'ccummerata@example.net', '1-461-055-3016x97407', '1955-11-21 15:22:01', '2020-08-22 14:50:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Vernon', 'Dickinson', 'rupert.hansen@example.com', '488.657.9503x603', '1959-05-31 23:06:02', '2020-07-15 14:32:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Jude', 'McDermott', 'hane.nathanial@example.com', '173-637-2117x1915', '1998-01-22 02:49:13', '2020-08-06 05:20:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Dylan', 'Shanahan', 'sschaefer@example.com', '207.438.1604x4075', '2005-12-04 10:26:29', '2020-03-19 07:50:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Orlando', 'Reinger', 'greenholt.adele@example.net', '884-446-2242x25886', '1929-02-20 19:24:43', '2020-08-14 23:09:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Ivory', 'McClure', 'skulas@example.net', '+22(5)6363603465', '1931-07-26 07:19:18', '2020-03-06 22:04:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Bruce', 'Gleason', 'zulauf.nash@example.com', '1-156-938-5775x85303', '1944-08-22 09:44:50', '2020-11-06 10:17:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Erling', 'Hilll', 'pagac.robyn@example.org', '(614)886-0370x9818', '1937-12-18 05:27:20', '2020-03-18 01:13:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Mya', 'Botsford', 'kiley.larkin@example.org', '658.479.9509x76441', '2018-11-12 10:01:03', '2020-10-24 06:23:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Kiana', 'Pacocha', 'ambrose.howe@example.org', '(221)127-3950', '1996-06-08 15:42:44', '2020-03-31 00:26:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Edna', 'Lebsack', 'ygreenholt@example.net', '1-315-391-8918', '1955-12-28 16:29:56', '2020-05-16 23:48:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Maida', 'Torp', 'thelma.rowe@example.org', '1-999-681-9793x572', '1941-09-06 02:56:52', '2020-11-22 09:23:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Blanche', 'Toy', 'sdeckow@example.org', '(154)780-3512x25517', '2005-03-15 09:33:28', '2020-04-15 00:22:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Geovany', 'Zboncak', 'phyllis30@example.org', '140.188.6103x59316', '1941-07-05 05:35:13', '2020-05-11 18:27:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Miracle', 'Carroll', 'bbaumbach@example.com', '046.694.5325x3981', '1990-05-07 18:03:57', '2020-12-26 00:32:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Linnie', 'Leannon', 'shaun.smitham@example.org', '690.018.7652x65806', '2006-08-28 19:47:23', '2020-03-02 03:48:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Brayan', 'Mohr', 'merle71@example.com', '+43(0)1297076108', '1964-12-03 05:55:33', '2020-04-27 13:35:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Althea', 'Collier', 'chelsey.block@example.net', '09039866704', '1921-05-06 06:56:30', '2020-09-09 23:40:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Iva', 'Wiegand', 'stark.tad@example.com', '+95(7)2316129745', '1935-09-24 14:36:03', '2020-12-06 12:47:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Armani', 'Cummings', 'homenick.sadie@example.com', '112-013-4553x2730', '2020-10-12 00:28:09', '2020-08-07 19:58:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Aglae', 'Bauch', 'dibbert.bartholome@example.org', '1-958-317-5008', '1962-12-21 23:03:04', '2020-08-24 14:38:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Scottie', 'Boyer', 'purdy.scarlett@example.net', '099.943.1770x88323', '1934-11-17 04:37:56', '2020-07-10 11:30:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Zackery', 'O\'Connell', 'legros.fidel@example.com', '07920118177', '2016-09-02 18:05:08', '2020-06-03 18:49:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Bettye', 'Pacocha', 'wilton.kris@example.com', '743-024-4818x889', '1957-12-08 04:55:04', '2020-05-26 01:17:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Cydney', 'Hoppe', 'graciela.nitzsche@example.org', '+50(3)4513779922', '2006-07-18 06:50:58', '2020-11-01 18:04:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Tillman', 'Reichert', 'romaguera.jonathon@example.org', '+12(0)7794397082', '2001-05-20 07:15:28', '2020-11-21 07:40:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Wilber', 'Oberbrunner', 'kub.ressie@example.net', '+34(6)8429826702', '1978-06-24 22:21:29', '2020-04-09 22:47:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Kenny', 'Corkery', 'halie71@example.com', '1-343-818-3852x249', '1969-08-06 08:21:12', '2020-04-14 15:06:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Leopold', 'Borer', 'kirstin27@example.com', '(975)830-5904x482', '2020-07-08 12:47:06', '2020-03-19 18:18:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Adah', 'Effertz', 'jewell.o\'conner@example.org', '1-638-052-4156x444', '1923-12-06 20:33:44', '2020-09-04 10:37:34');


