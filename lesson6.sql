-- 1. Создать и заполнить таблицы лайков и постов.

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  -- не очень понимаю, как это будет работать на практике
  -- как это увязать во внешний ключ, чтобы была единая система, поэтому для этого поля внешнего ключа не задаю
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
  );
 
 -- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
 
 -- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
 
 -- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `posts` VALUES (1,79,15,'Vitae recusandae amet in non veniam porro sunt.','Labore doloribus ea quod consequuntur quia aut tenetur. Ullam rerum blanditiis accusamus quidem excepturi ut aut.\nAut ut possimus asperiores. Quasi quasi earum omnis iusto voluptatibus.',20,1,0,'2020-07-02 19:06:59','2017-02-14 19:50:24'),(2,8,11,'Enim dolorem non ab saepe.','Sunt quam quisquam earum est sit. Et nulla autem deserunt et dicta non assumenda. Pariatur at rem consequuntur et deserunt quisquam veritatis. Quae error qui quaerat sequi tenetur id iusto corporis.',41,1,0,'2017-08-04 06:43:06','2021-01-12 10:26:51'),(3,83,14,'Accusamus nostrum ex occaecati pariatur.','At ipsa rerum inventore amet incidunt. Aut recusandae aliquid doloremque doloremque explicabo. Animi nisi sit praesentium sequi quisquam placeat voluptate.',43,0,0,'2017-05-07 13:27:51','2019-07-14 14:49:40'),(4,57,15,'Et quis nisi labore molestiae atque fugit blanditiis.','Voluptate dignissimos culpa id inventore ullam dolores in. In eum et ducimus culpa minus. Velit vel eum pariatur ullam. Expedita repellendus et quia est aliquid ut.',52,1,1,'2013-10-07 00:04:05','2019-05-31 23:06:55'),(5,77,1,'Atque excepturi iste hic et eum.','Vitae et asperiores tempora optio laudantium. Exercitationem blanditiis similique et autem assumenda reiciendis ab eligendi. Non dolorem ad provident hic ut. Fugiat ut et est sunt nihil quia.',96,0,1,'2012-03-15 11:23:17','2015-11-16 06:16:34'),(6,75,1,'Odit vitae eligendi amet quisquam sit et sit.','Est incidunt tempore dolorem et repudiandae atque sint. Ab rem fugiat et quas maxime quia fugit.',34,0,1,'2011-03-22 05:37:06','2018-11-23 11:41:06'),(7,61,17,'Ut omnis sed cum.','Esse cum corrupti molestiae repellendus minus. Quia eveniet dolorem architecto. Esse voluptas molestiae voluptas. Distinctio quasi architecto modi in labore itaque.',50,1,1,'2020-02-28 14:43:06','2020-12-01 09:04:38'),(8,26,10,'Odio veniam aut dicta enim maiores alias.','Voluptatem ut rerum occaecati alias eligendi magni ut architecto. Sint rerum officia adipisci aperiam eos molestiae. Et molestias cupiditate dolore aut enim. Nesciunt illo eum omnis dolorem ratione.',95,1,0,'2018-11-01 17:10:41','2019-01-26 21:54:49'),(9,77,5,'Consequatur perspiciatis omnis consequatur eos rem non aperiam at.','Et asperiores labore odit expedita non. Placeat odio qui aut quis. Odio est quasi vel possimus aut voluptatem voluptas.',13,0,1,'2013-08-15 10:24:30','2018-03-12 13:49:09'),(10,72,6,'Excepturi excepturi est autem exercitationem rem iure.','Hic est iste quas. Voluptas sapiente eveniet qui tempore pariatur. Nihil dolore sunt quam nam. Et magnam maxime voluptatem eius consequatur itaque porro voluptatem.',60,0,0,'2019-09-17 01:30:27','2014-05-10 10:51:37'),(11,2,4,'Blanditiis commodi nulla sequi necessitatibus deserunt.','Necessitatibus earum debitis aliquam ad corporis odio facere voluptatem. Eligendi laborum omnis est repellendus ullam enim. Consequatur cumque dolores et cum voluptas.',21,0,0,'2014-02-18 09:27:17','2014-04-10 05:38:22'),(12,86,1,'Et cum sit itaque tenetur sequi numquam a est.','Beatae ut pariatur eius excepturi. Quo sit labore odit et est earum dolorem et. Odit explicabo eum cumque voluptas natus quia ea. Eos sequi laboriosam earum dolor eveniet quia libero.',86,0,0,'2013-11-27 03:36:46','2018-07-01 20:49:16'),(13,50,18,'Aut et eum consequatur inventore sint.','Recusandae quisquam corrupti quas. Hic tenetur ab labore quod veniam minima a.',46,1,0,'2016-09-11 20:10:41','2019-03-17 03:22:10'),(14,32,2,'Modi atque hic accusamus praesentium qui suscipit et iusto.','Est laudantium accusamus ut ab sequi omnis est eum. Eos voluptas saepe quo recusandae. Doloremque non distinctio aliquam accusamus accusamus vel. Nesciunt atque quibusdam molestias et repellat.',85,0,0,'2013-01-15 03:45:13','2011-12-17 08:33:32'),(15,70,19,'Voluptatem aut consequatur rerum earum repellendus quasi.','Rerum sequi neque quia necessitatibus saepe sequi ipsa. Et numquam ipsum aspernatur distinctio ipsa et voluptatem. Voluptatum optio saepe deleniti omnis minima dolor eligendi.',71,0,0,'2020-09-01 14:12:36','2015-08-03 17:01:32'),(16,100,3,'Cupiditate quae iure ut voluptatibus non rerum expedita.','Sit expedita maxime exercitationem occaecati. Consequuntur molestiae hic et voluptatibus at veniam. Architecto aut maiores deleniti unde.',93,0,1,'2019-08-23 02:15:14','2013-07-26 02:10:11'),(17,10,3,'Id et architecto assumenda error facere atque.','Ut ullam impedit natus ullam nobis. Architecto consequatur cumque quaerat sit consequatur illo excepturi ut. Eveniet ut tempore rerum deleniti esse et.',38,0,0,'2017-03-24 17:36:26','2018-06-10 11:23:20'),(18,96,12,'Ipsa rem autem sit amet.','Iusto assumenda ducimus facere voluptatem quia earum maxime. Iusto nostrum est et quasi ullam quod. Dolores et consequatur est.',31,1,1,'2017-06-28 15:54:41','2017-01-22 23:04:15'),(19,17,6,'Et veritatis atque vel officiis ipsam odio architecto.','Eaque nam aut debitis provident sequi voluptas cupiditate. Voluptatibus occaecati officia et. Dolor rem eveniet aliquid quia adipisci.',81,0,1,'2014-02-25 08:43:16','2016-08-02 11:42:33'),(20,6,20,'Eos magni officiis veritatis sequi veritatis.','Quam et repellendus amet molestiae. Cumque quis delectus asperiores velit sit. Optio esse et repellat sed nulla quisquam et.',100,1,1,'2018-06-04 07:19:49','2012-10-01 08:11:55'),(21,67,9,'Magni dolor voluptatem repellendus delectus laboriosam.','Quos quo ratione mollitia repellat. Harum aliquid ex quia asperiores omnis et rerum. Reiciendis fugiat sunt hic dolor aspernatur quidem. Molestiae in voluptate iusto placeat deserunt aut.',81,0,0,'2016-10-24 22:11:44','2016-05-23 04:26:37'),(22,23,12,'Iusto sunt consequatur ut nisi vitae et.','Voluptatibus saepe atque voluptate consequatur impedit. Rerum in rerum ipsam sequi quia inventore omnis. Labore rerum ut totam dolorem omnis. Fuga facilis voluptates accusantium labore.',37,1,0,'2015-06-07 08:26:46','2017-11-14 21:37:26'),(23,96,3,'Aperiam cumque est quos aut.','Non perspiciatis sint vero velit fuga velit. Nam blanditiis suscipit est consequuntur laborum.',11,1,1,'2011-03-28 22:58:17','2020-12-23 06:23:34'),(24,40,3,'Qui dolor distinctio illum sint.','Dolor voluptas ipsa officiis delectus eveniet adipisci quam. Voluptates voluptatum corporis ad animi ut. Quo laudantium et autem nam autem qui.',4,1,0,'2012-08-31 06:41:01','2015-12-24 18:12:31'),(25,33,20,'Qui facilis molestiae veniam libero.','Rerum aut quas culpa aut minima sint ex recusandae. Blanditiis autem et eveniet. Et fuga vel iure culpa et repellat eaque sit.',61,0,0,'2019-01-21 06:09:03','2013-10-30 12:02:54'),(26,83,6,'Dolorem nesciunt sint rerum dignissimos non est placeat.','Sed tempora id et aut consequatur sint hic. Et qui voluptas id delectus aspernatur quaerat. Non est exercitationem repudiandae consequatur qui libero commodi. Unde recusandae similique saepe in quis.',69,0,1,'2013-12-20 19:20:46','2017-03-24 13:13:19'),(27,29,17,'Dolorem optio ipsa sint odio animi ullam.','Nam provident non iste odit. Laudantium impedit est iusto nam adipisci sed ut. Vitae sed quaerat ipsa nemo consectetur consequatur.',68,0,0,'2016-07-27 17:57:54','2019-01-30 13:46:40'),(28,83,13,'Natus sed ad ut id deleniti facilis asperiores.','Et quas explicabo aut minus reiciendis distinctio reiciendis ut. Iure est labore consectetur ullam. Optio omnis eos dolor aliquam. Repellat et in aspernatur quis.',86,0,1,'2016-05-27 16:15:09','2019-12-25 15:43:00'),(29,3,9,'Ut rerum libero magni vitae.','Est aspernatur quo et vero blanditiis. Et voluptas enim repudiandae est aspernatur recusandae expedita recusandae. Cupiditate repellat itaque asperiores repudiandae et et corrupti.',63,1,0,'2019-08-04 05:32:39','2016-07-03 15:55:39'),(30,8,9,'Voluptatem ducimus quos optio reiciendis dolor accusantium aut in.','Quos accusantium et quia. Iusto quia occaecati repellendus placeat quia. Aliquid ducimus molestiae reiciendis quasi enim reprehenderit. Dignissimos neque ut occaecati repellat quia incidunt hic est.',93,1,0,'2011-09-03 18:02:27','2011-06-06 00:33:31'),(31,43,18,'Sint omnis vel animi ut corporis et atque.','Quibusdam repudiandae dolores suscipit necessitatibus id illum expedita. Quam ratione fuga saepe error dolores et accusamus. Ut culpa voluptatem quia voluptas alias explicabo.',3,1,0,'2020-09-24 15:21:14','2017-01-29 18:10:25'),(32,19,8,'Illum tempore molestiae dicta repudiandae laborum alias assumenda.','Accusamus quia maxime dolores vero rerum. Quo facere in veniam at. Delectus molestiae eaque doloremque et quae.',31,0,0,'2019-05-15 09:04:14','2019-07-30 07:03:06'),(33,53,9,'Et rerum eos ut dolorum minima quam.','Molestiae pariatur corrupti voluptatum voluptatem ut. Voluptas possimus nostrum nulla laudantium nisi et numquam. Perferendis vel qui quo enim et mollitia excepturi.',69,0,1,'2013-03-12 14:30:46','2017-02-20 15:39:21'),(34,9,18,'Minima ratione quia voluptatem et molestias quaerat ut.','Et ullam beatae odio eos vel sit. Vitae aliquid voluptas vero fuga suscipit ratione et. Nesciunt nemo expedita occaecati.',13,1,0,'2018-07-26 04:00:39','2017-12-15 02:05:23'),(35,94,9,'Inventore fuga dignissimos assumenda fugit sint blanditiis id.','Est dicta consequuntur ut delectus temporibus magni. Corrupti iste cum repellendus qui est. Placeat aliquid voluptate et. Qui accusantium consequatur alias vel omnis eveniet.',41,0,0,'2013-09-16 16:26:04','2014-11-11 00:26:00'),(36,78,19,'Earum non et itaque itaque.','Et asperiores voluptatem sunt voluptas perferendis illo. Voluptatibus labore ea praesentium ad. Quod corrupti quia eligendi sequi.',7,0,0,'2015-01-17 23:19:54','2019-08-09 02:43:19'),(37,44,16,'Eius tenetur amet nemo ab quia consequuntur dolores.','Facilis eum repellendus quasi quis sed sint quia in. Doloribus maiores aliquid odit eveniet. Vitae nobis ea sapiente sit non molestias. Ut enim harum iusto illo fugiat fugiat.',92,1,1,'2017-04-23 19:57:43','2011-09-16 15:48:21'),(38,82,16,'Pariatur nobis maiores dolorem et corporis.','Consequatur voluptatem voluptas sit odit. Qui nulla consectetur quae commodi sint. Non placeat nisi vero tempore et. Omnis ea non ab dolores voluptatum.',76,1,0,'2014-06-20 04:59:27','2019-10-21 09:20:44'),(39,36,7,'Id voluptas explicabo sapiente voluptatem unde iure dolor sed.','Voluptas blanditiis quia voluptas sed maxime. In commodi nisi dicta sed. Qui aut corporis id voluptatem sed.',69,0,0,'2018-02-15 09:09:16','2020-04-22 23:52:49'),(40,87,18,'Accusamus tenetur excepturi voluptatem.','Ut ratione nulla id quasi provident. Omnis magni ipsum hic ea est eum. Voluptas ea provident alias voluptas dolore consequatur qui. Perspiciatis dolorem veritatis fugit ut iure.',62,1,1,'2018-04-08 22:57:30','2020-01-21 16:04:39'),(41,51,17,'Accusantium non perferendis dolore soluta aliquam voluptas sed.','Repudiandae voluptatem placeat debitis. Ad beatae iste rem repudiandae.',7,1,0,'2013-04-08 02:11:50','2020-02-26 12:13:47'),(42,65,3,'Ut a dolorum harum voluptatem magni quia.','Iure officia vero molestias at. Voluptate reprehenderit nobis magni quisquam facilis quo. Aperiam soluta quia ullam animi voluptatum nesciunt quo.',27,0,1,'2011-05-28 09:03:06','2013-10-06 14:20:33'),(43,77,1,'Deleniti dicta fugiat error aut aut ut.','Minima et quod sapiente blanditiis. Distinctio eum illo dolorem vel repudiandae velit. Rem adipisci voluptatem sit sunt mollitia.',8,0,1,'2016-01-18 15:51:31','2015-03-20 12:53:16'),(44,4,5,'Qui rerum unde quaerat voluptatum aut voluptatibus.','Eos cumque ut quisquam cum fugiat repellendus. Quae dolorem necessitatibus vel libero eveniet quam et quis. Accusantium aliquam animi eum quasi deserunt.',8,0,1,'2013-11-15 21:12:49','2019-06-16 10:26:22'),(45,5,12,'Impedit et eos fugit voluptate.','Dolores corporis veritatis voluptatem ullam recusandae doloremque accusantium. Est perferendis debitis impedit ratione. Omnis aut aut aut et. Nam velit suscipit quas explicabo possimus.',43,0,0,'2017-05-15 06:42:52','2019-02-11 01:21:18'),(46,22,15,'Ab voluptatem est mollitia eaque qui quis dicta.','Necessitatibus ipsam et consectetur ratione. Aut nihil et molestias ex. Ullam cumque dolores ipsum dolor aut vero unde. Commodi enim fugiat non qui.',21,1,0,'2016-05-29 06:18:50','2016-04-19 16:14:03'),(47,29,13,'Et atque dignissimos est accusantium culpa.','Asperiores et iure tenetur enim et qui. Totam numquam illo omnis quo non exercitationem sunt. Quo rem aliquid optio reiciendis ut quis non. Iure et nisi et ratione et consequatur.',55,0,0,'2018-01-23 08:13:32','2018-11-02 22:17:06'),(48,4,14,'Ut officiis voluptatem iste quia aut modi voluptates.','Dolor vel distinctio architecto veniam quos. Sequi in dolorum rerum eum impedit. Voluptatem debitis totam pariatur vel doloremque.',1,0,1,'2013-08-26 14:17:37','2012-12-29 22:25:52'),(49,47,8,'Et blanditiis quia et vel quisquam.','Aut numquam aut porro corporis. Sint recusandae nemo ipsa voluptas assumenda repudiandae. Odio aut eligendi corrupti quis.',51,0,0,'2018-06-10 00:06:14','2019-06-08 01:51:49'),(50,68,14,'Eius reiciendis modi est provident.','Voluptatem est sit eum deleniti repudiandae. Odio nesciunt voluptate numquam fuga reprehenderit et quo. Architecto enim laboriosam nesciunt alias.',94,0,1,'2017-07-29 01:04:07','2013-09-01 02:29:12'),(51,4,19,'Harum voluptates iusto et rerum.','Saepe eos harum quasi libero libero deserunt. Voluptatem nostrum aut tenetur quia vero rerum architecto. Quia nulla sed animi tempore.',7,0,1,'2013-02-13 20:16:37','2013-11-17 11:47:46'),(52,61,8,'Ducimus doloremque ducimus aspernatur ut delectus.','Animi dicta quam magnam est. Quasi nihil voluptatem iusto odit. Inventore alias ut at repellat et cum. Rem qui porro amet veritatis dolorem ut.',26,1,0,'2017-07-08 06:13:59','2017-02-18 01:16:58'),(53,82,18,'Veritatis sunt harum odit velit corporis inventore autem.','Sunt ipsa vel nihil perspiciatis ab tempore. Id saepe et eum consequuntur est quas ut. Et architecto quod sint iste cumque vitae. Ut natus odio vero aliquid esse necessitatibus.',90,0,0,'2014-03-14 20:56:00','2012-06-11 21:19:48'),(54,25,10,'Est pariatur qui expedita omnis et cum.','Illo id possimus aut omnis. Quaerat necessitatibus est laboriosam at nulla reiciendis repellat sed. Quia dolor itaque sequi non qui.',43,0,1,'2011-10-18 09:18:45','2015-10-14 00:22:11'),(55,16,12,'Et totam pariatur eum.','Rerum atque aliquam est impedit omnis id. Eaque cupiditate voluptatibus libero sit reprehenderit voluptatum sequi consequatur. Quos iste rem consequatur alias non esse quia.',25,0,0,'2013-01-21 16:40:44','2019-12-09 18:36:01'),(56,38,4,'Pariatur et repudiandae magni dolorem et.','Magnam quis voluptatem nemo sequi omnis deserunt. Qui eligendi quia natus rerum sit sequi. Hic eaque dolorem exercitationem. Earum temporibus minima vero perferendis dolores est voluptate debitis.',78,0,1,'2012-06-23 21:56:13','2012-03-22 15:25:08'),(57,50,8,'Architecto magni voluptas eveniet culpa ea.','Quia praesentium vel harum sunt deserunt quos. Cum necessitatibus nam qui dolores eligendi iusto.',99,0,1,'2016-09-30 22:53:55','2017-06-17 22:34:13'),(58,25,6,'Tempora sit rem temporibus consequatur minima autem nisi et.','Adipisci dolor voluptatem quisquam. Sint placeat veritatis dolorum quibusdam voluptas quos. Totam ut odio aut aspernatur ratione.',59,1,1,'2013-06-13 14:57:30','2011-06-26 06:36:30'),(59,1,11,'Nostrum dicta sunt aliquid quis quia asperiores aut.','Occaecati consequatur minima ex atque et distinctio. Officiis molestiae temporibus officia ad dolorem ipsum.',8,0,1,'2017-07-14 19:31:21','2020-01-22 09:34:20'),(60,12,5,'Magni non et magnam veritatis eaque enim nulla.','Maiores ut et eos hic nihil. Sit omnis aut voluptates architecto. Et mollitia fugiat laborum laboriosam voluptatem dolorem.',61,1,0,'2018-08-01 23:29:09','2012-06-29 09:58:32'),(61,20,14,'Repellat vel necessitatibus quam temporibus accusamus.','Ad non est soluta modi numquam dolor. Non tempore alias corrupti consequatur maxime. Occaecati voluptas dolor ea neque aut velit fuga.',99,1,1,'2013-06-03 06:21:37','2017-06-23 20:21:04'),(62,55,10,'Iste eveniet error eius vel dolore nam.','Facilis fuga consequatur voluptates est nihil deleniti doloremque. Quo expedita repellat deserunt ut. Tempore fuga qui optio. Dolores eius blanditiis aut delectus.',15,1,1,'2011-05-20 22:20:17','2012-09-21 13:45:23'),(63,86,2,'Quam et ut blanditiis deserunt eum.','Dolore dolorum officiis qui eveniet omnis est. Quibusdam rem occaecati quia suscipit qui debitis. Itaque rerum harum nihil voluptatem. Quis sed sit quis similique aut in cum at.',97,1,0,'2012-09-04 23:25:59','2014-02-15 01:21:43'),(64,8,16,'Necessitatibus eos minima et et corrupti.','Quas consectetur inventore excepturi ut dicta. Non aut non quia omnis laboriosam non molestiae. Corrupti et modi labore qui.',73,1,1,'2020-10-31 04:19:53','2017-11-16 00:13:09'),(65,72,1,'Dolorem ut eveniet consequuntur temporibus quia dolorem aut.','Quia voluptas deserunt incidunt deleniti nulla explicabo et. Tempora ea ex expedita fugit. Harum vitae assumenda non autem. Sed temporibus hic facilis tenetur sed laboriosam inventore.',29,1,0,'2016-12-20 21:27:31','2011-11-24 22:29:25'),(66,96,17,'Ut omnis aspernatur nesciunt enim.','Iste sed unde ad at. Non hic velit porro iusto quis natus unde. Beatae rerum aut quia enim. Tempore ab odit repellendus esse aliquam aut.',41,0,0,'2014-10-08 23:05:01','2013-12-06 22:33:27'),(67,98,6,'Corporis harum possimus officia sequi beatae dolorem praesentium.','Aspernatur sed necessitatibus rerum asperiores. Illum error aspernatur eum dolorem distinctio.',29,1,1,'2018-03-21 20:52:52','2014-04-12 08:51:55'),(68,78,20,'Beatae consequatur et fugiat sapiente.','Quia veritatis et eos quas voluptatum. Autem voluptate numquam ad voluptates odit et autem. Voluptatem eos voluptatum tempora repellendus voluptate voluptatum voluptas.',46,1,0,'2014-02-27 15:17:25','2020-10-26 11:07:00'),(69,71,11,'Qui architecto accusantium aut repellat amet et.','Quam quo recusandae accusamus rem odit. Autem natus et dolorum accusamus. Explicabo aut nihil quidem qui. Totam accusamus architecto quas.',44,0,0,'2014-09-05 15:27:11','2014-05-25 19:39:21'),(70,70,3,'Itaque quos tempore tempore unde vel aut laboriosam.','Illo excepturi corporis architecto impedit dicta est. Et aut aspernatur quo animi saepe alias quas. Illum ipsum corrupti tenetur unde perferendis sequi est.',72,1,0,'2020-04-25 08:35:48','2019-01-04 08:34:47'),(71,84,6,'Et et excepturi quas deserunt non similique voluptatibus.','Velit earum et placeat voluptatum est cum eaque. Et reiciendis qui dolorem ut sed provident aliquam voluptas. Qui nisi non neque in dolor quidem cumque.',54,0,1,'2019-12-24 15:57:57','2015-02-01 14:26:57'),(72,94,16,'Enim quo neque rem quia.','Sit delectus voluptatem similique mollitia id itaque. Porro hic nihil suscipit cum maiores sequi. In labore ea sunt aspernatur id facere.',98,1,0,'2011-12-17 03:51:51','2021-01-27 01:16:58'),(73,91,9,'Qui ab sed est corporis.','Et mollitia corporis hic nam. Magni facilis at sint enim.',93,1,0,'2020-09-05 00:41:39','2016-09-29 17:26:51'),(74,53,2,'Quos accusantium consequatur aut et laudantium.','Doloremque suscipit qui delectus quo blanditiis placeat enim deleniti. Ab aut voluptas quia et. Et natus et facere sed praesentium.',48,0,0,'2020-03-05 00:23:09','2012-04-19 07:42:40'),(75,83,20,'Amet eos quas a maiores consectetur.','Enim accusamus qui ut et. Omnis iure explicabo sapiente voluptate. Nostrum et dolores tempore odit ullam.',50,1,1,'2014-12-17 01:46:56','2012-09-22 23:11:01'),(76,5,17,'Quam ratione in non occaecati soluta quis iusto.','Cupiditate nesciunt odio nesciunt nemo sint. Natus dolor et aspernatur harum consequuntur culpa sunt. Vel alias recusandae aut assumenda.',97,0,0,'2011-08-31 15:45:29','2014-07-28 13:03:45'),(77,56,6,'Sit aut aut a voluptatem asperiores aspernatur.','Voluptatem ut cum commodi consequatur. Suscipit dignissimos dignissimos qui ut aspernatur ut. Molestias fugiat sint molestias consectetur sunt.',23,0,0,'2021-01-17 01:54:43','2018-09-27 15:07:03'),(78,7,3,'Et dolores nihil commodi laborum quasi officiis doloremque.','Rerum non tenetur in. Qui maiores quos laboriosam totam. Fuga nesciunt nihil ea omnis et consectetur numquam quo. Ut cupiditate in vel natus aliquid voluptatum praesentium.',95,1,0,'2012-07-13 13:45:03','2019-02-28 06:05:42'),(79,84,3,'Ut dolorum voluptatem nostrum vel sit deleniti.','Veritatis voluptatem reprehenderit aperiam impedit aperiam et hic. Et blanditiis dolores exercitationem fuga sequi id officiis deleniti. Placeat qui eum omnis ratione fugit.',13,1,1,'2015-03-12 05:12:20','2020-05-22 18:46:34'),(80,10,4,'Labore eius quis nobis laudantium ea.','Quaerat nihil laudantium totam tenetur. Eos aliquid quidem pariatur consequatur sit consequatur corporis. Dolor explicabo harum dolorem optio repellat vel omnis id.',96,1,1,'2018-05-03 00:31:32','2019-11-08 02:15:15'),(81,88,19,'Consequatur dolores dolorem officiis.','Voluptas iusto sint recusandae id placeat error. Qui totam odit corporis illo non. Quas harum temporibus ipsum reiciendis ut.',27,0,1,'2019-09-09 06:46:56','2013-12-23 11:19:44'),(82,56,6,'Voluptatem vero totam quis voluptatem cumque enim repudiandae.','Beatae recusandae ipsum vel mollitia ut porro. Eum voluptas excepturi non fuga perspiciatis ut. Ut et quia mollitia veniam.',62,0,1,'2012-03-03 09:43:36','2019-01-25 18:10:12'),(83,34,18,'Sequi atque consequuntur voluptatum molestiae.','Enim quia consectetur sit in. Voluptatem dolores et dignissimos incidunt commodi. Aut laboriosam voluptate quia voluptatum aut accusantium eligendi molestiae.',18,1,1,'2018-11-21 14:42:40','2011-06-05 15:53:59'),(84,53,10,'Porro expedita illum facilis ipsa dolores.','Qui earum iste in aperiam dolores doloremque. Impedit voluptatem fugit inventore voluptatem. Tempore accusantium autem officiis quia.',57,0,0,'2017-11-28 14:09:31','2012-04-02 13:03:26'),(85,84,14,'Doloribus laborum nulla harum non modi voluptatem sapiente nam.','Voluptas ullam eius et voluptates. Nobis velit id sapiente aut sit sunt recusandae. Aspernatur id omnis qui et quaerat. Minus optio asperiores accusantium perferendis fuga adipisci enim.',58,0,0,'2017-04-25 06:14:26','2015-08-02 22:33:04'),(86,81,3,'In laborum iste quis optio facere quasi repellat.','Alias sint nobis sunt. Enim corporis magnam animi tempore aperiam quo eum. Aspernatur non sunt natus. Vero nostrum est ipsam earum est aut.',1,0,1,'2016-07-26 02:24:11','2017-08-22 02:15:07'),(87,94,16,'Harum velit eum eligendi quia dolorem possimus iste.','Dolores omnis dolorem harum quasi nisi est. Dolorum neque ratione reprehenderit a. Quisquam voluptatum nulla facere eum amet repellendus. Enim et mollitia praesentium quia ab fugit voluptatibus.',29,1,1,'2019-02-23 01:43:38','2019-10-19 07:05:22'),(88,62,16,'Molestiae sed a eos amet.','Quibusdam aut dolor laborum incidunt odit non sint. Itaque magni nisi modi vitae ut nemo. Consequuntur et sit dolorem praesentium voluptatem accusamus.',94,1,1,'2017-01-04 22:38:49','2016-08-29 17:47:30'),(89,73,19,'Alias et enim ut.','Est exercitationem tenetur occaecati vero ut. Voluptatem consectetur sit ut non consequatur perferendis aut. Ipsam dolore quisquam quia illo non et consequuntur.',75,1,1,'2015-05-18 23:49:34','2021-02-10 08:49:29'),(90,37,19,'Beatae aut nihil eos provident aut suscipit.','Voluptatibus et asperiores ut sint dolorem eum. Officiis explicabo velit quia. Ut sapiente est et ut numquam. Qui excepturi quam sunt officia molestias qui.',65,1,0,'2019-12-17 09:53:53','2012-05-21 23:30:10'),(91,92,4,'Numquam voluptatibus nam ut vero possimus.','Debitis quis debitis repellat inventore sint. Libero rem sint et ullam vitae eaque. A ea a corporis. Nobis necessitatibus perferendis amet velit sunt velit molestiae.',66,0,1,'2013-12-18 05:27:31','2011-05-03 16:21:35'),(92,74,9,'In architecto rem eos id sed.','Aut optio illo tempora vero corrupti. Et est recusandae aut non distinctio qui. Et est ut sed nostrum. Ab sed eveniet saepe ut quia quo sint.',84,1,0,'2014-11-09 21:54:48','2016-09-24 13:54:23'),(93,16,11,'Ut suscipit consectetur nihil eos hic autem.','Assumenda modi ea ullam non. Aut tenetur velit qui accusantium et aut. In necessitatibus eum quos et. Autem atque iusto eos.',52,1,0,'2012-07-23 19:45:59','2017-04-11 10:29:50'),(94,14,6,'Non qui explicabo quos eos qui nulla cumque.','Veritatis debitis voluptatem tenetur ut hic eligendi molestiae ut. Atque deleniti deserunt officia nemo quibusdam molestiae. Aspernatur ut dolore ad tempore aut molestias ut.',27,1,0,'2013-03-11 02:50:25','2014-11-25 04:03:04'),(95,41,20,'Quam a atque nihil quia omnis.','Eligendi voluptatem pariatur ad. Minima sed nam similique quas error at odio. Aut asperiores sint dolor dolores.',16,0,0,'2017-03-17 14:08:23','2012-04-13 18:17:55'),(96,38,19,'Voluptas dolorum similique et saepe cupiditate atque dolorem vel.','Saepe voluptatem et iusto. Suscipit ratione nihil sed consequatur aut et accusamus aut. Enim saepe possimus ipsa voluptatem iste autem et.',14,0,0,'2015-11-20 13:54:52','2015-09-25 07:37:59'),(97,9,7,'Ipsum ipsa nam eius.','Sunt odit reprehenderit porro id accusamus neque et. Quaerat aliquam et omnis ut. Qui temporibus non veritatis nam rem. Consequuntur non aut animi ipsum et.',19,0,1,'2011-12-09 04:08:57','2012-08-26 03:23:14'),(98,5,19,'Facilis iure fugiat quasi vitae asperiores itaque qui.','Veniam corrupti nostrum porro blanditiis omnis. Consequuntur consequatur recusandae dicta at. Molestias odio vel fugiat modi possimus ipsum quo.',99,0,1,'2013-10-02 15:28:21','2014-10-03 17:36:27'),(99,16,17,'Ex recusandae quia fuga tempora consequatur aperiam iure.','Facere ipsam nesciunt quia velit ut. At repudiandae qui maxime facilis aperiam ratione vitae. Magni quia minus consectetur nesciunt tenetur qui. Enim itaque natus sit laborum.',6,0,0,'2019-03-17 22:16:23','2018-09-20 18:21:27'),(100,45,5,'Sit nulla ad neque nihil eaque neque earum.','Impedit sit reiciendis voluptas repudiandae ut commodi. Et est omnis eum est. Odit sit atque numquam.',3,0,0,'2012-10-03 00:51:20','2018-01-10 23:20:55');

UPDATE posts SET updated_at = NOW() WHERE updated_at < created_at;  
 
-- 2. Создать все необходимые внешние ключи и диаграмму отношений.

-- Добавляем внешние ключи

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

ALTER TABLE friendship 
  ADD CONSTRAINT request_from_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT request_to_user_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id),
  ADD CONSTRAINT friendship_statuses_id_fk 
    FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id);
   
ALTER TABLE media
  ADD CONSTRAINT media_uploaded_by_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT media_types_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);
   
ALTER TABLE posts 
  ADD CONSTRAINT posts_uploaded_by_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT posts_uploaded_to_communitiy_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id);

ALTER TABLE likes
  ADD CONSTRAINT likes_by_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id),
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);
   
ALTER TABLE communities_users
  ADD CONSTRAINT communities_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id),
  ADD CONSTRAINT communities_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

select 
    count(*) as amount, 
    (select gender from profiles where user_id = likes.user_id) as people from likes 
    group by people;
   
-- сравним с количеством женщин и мужчин среди всех пользователей 

select count(*) as amount, gender from profiles group by gender;

-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

select user_id as list_id from profiles order by birthday desc limit 10;
drop table if exists t2; 
CREATE TEMPORARY TABLE t2 (value int(10));
INSERT INTO `t2` (`value`) select user_id from profiles order by birthday desc limit 10;
select * from likes where target_id in (select value from t2) and target_type_id = 2; 


-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
--(критерии активности необходимо определить самостоятельно).

-- Критерии: пользователь не писал сообщений или постов, не заливал медиа, не ставил лайки, не отправлял запросов в друзья
-- Отмечу, что наличие пользователя в группе не говорит о его активности
-- По-хорошему ещё необходимо учитывать дату обновления, так как активность собирают за недавний промежуток времени, 
-- но этот момент я буду игнорировать.

-- сначала всех пользователей по группам выбираем и смотрим, есть ли такие пользователи, которые не совершали вообще никаких действий.

select user_id from friendship union
select user_id from likes union
select user_id from posts union
select user_id from media union
select from_user_id from messages order by user_id;

-- Увы, таких нет.

drop table if exists t3; 
CREATE TEMPORARY TABLE t3 (total int(10)); 
INSERT INTO `t3` (`total`) select user_id from friendship union all
select user_id from likes union all
select user_id from posts union all
select user_id from media union all
select from_user_id from messages order by user_id;

-- Смотрю на таблицу

select * from t3;

-- Привожу к читабельному виду

select total as id, count(*) as amonut from t3 group by total

-- Ограничиваю 10 пользователями с наименьшей активностью

select total as id, count(*) as amonut from t3 group by total order by amonut limit 10;

-- И ещё чуть красоты для финального вывода.

select 
    total as id, 
    (select username from users u2 where id = t3.total) as username, 
    count(*) as amonut 
from t3 
group by total order by amonut limit 10;

