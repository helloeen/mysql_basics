/*
Курсовой проект Влада Нортона по теме «Основы реляционных баз данных. MySQL». 
г. Москва, 2021.

За основу базы данных взят сайт https://www.kinopoisk.ru.

В рамках курсового проекта реализован частичный функционал сайта, который отображает базовую информацию.
Страницы персоналий, кинематографических произведений и их взаимосвязи: 
*/

DROP DATABASE IF EXISTS `kinopoisk`;
CREATE DATABASE `kinopoisk`;

USE kinopoisk;

-- 1. Информация о роде деятельности человека во время создания конретного кинопродукта;

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `activities` (`name`) VALUES ("Director"),("Producer"),("Screenwriter"),("Actor"),("Cinematographer"),("Composer"),("Film editor"),("Casting director"),("Special effects director"),("Set decorator");

-- 2. Информация о структурах, учреждающих кинонаграды;

DROP TABLE IF EXISTS `award_types`;
CREATE TABLE `award_types` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `country_id` INT UNSIGNED NOT NULL,
  `avatar_media_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `avatar_media_id_UNIQUE` (`avatar_media_id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `award_types` (`name`, `country_id`, `avatar_media_id`) VALUES ("Huskar", 12, 89),("Steel GPS", 12, 90),("MUFTA",14,14),("Actors Alliance",12,91),("Veronika",2,92),("Shiny Eagle",2,93),("Uranus",12,12),("Hoya",16,94),("Dummy",12,98),("Red Sun Award",20,99);

ALTER TABLE award_types
  ADD CONSTRAINT award_types_avatar_with_media_id_fk 
    FOREIGN KEY (avatar_media_id) REFERENCES media(id),     
  ADD CONSTRAINT award_types_founded_by_country_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);

-- 3. Уточняющая информация о киноградах: номинациях и дате проведения;

DROP TABLE IF EXISTS `awards`;
CREATE TABLE `awards` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `award_type_id` INT UNSIGNED NOT NULL,
  `year` YEAR NOT NULL,
  `nomination` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idawards_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `awards` (`award_type_id`,`year`,`nomination`) VALUES (9,"2007","Best Director"),(2,"1956","Best Actor in a Leading Role"),(7,"2017","Best Sound"),(2,"1932","Best Adapted Screenplay"),(7,"1935","Best Original Screenplay"),(7,"2015","Best Costume Design"),(8,"1933","Best Director"),(4,"2006","Best Actor in a Leading Role"),(4,"1970","Best Live-Action Short Film"),(5,"1969","Best Original Screenplay"),(6,"2017","Best Picture"),(1,"1993","Best Animated Short Film"),(1,"1988","Best Film Editing"),(2,"1958","Best Picture"),(7,"2012","Best Documentary Short Subject"),(5,"1936","Best Actor in a Supporting Role"),(8,"2009","Best Original Song"),(2,"1958","Best Original Song"),(4,"1984","Best Costume Design"),(5,"1991","Best Cinematography"),(1,"1984","Best Production Design"),(2,"1969","Best Adapted Screenplay"),(5,"1974","Best Original Song"),(5,"1939","Best Cinematography"),(9,"2020","Best Director");
INSERT INTO `awards` (`award_type_id`,`year`,`nomination`) VALUES (4,"1959","Best Actor in a Supporting Role"),(5,"1937","Best Director"),(9,"1962","Best International Feature Film"),(10,"2016","Best Animated Short Film"),(6,"1999","Best Picture"),(3,"1980","Best Original Screenplay"),(7,"1946","Best Animated Short Film"),(5,"2021","Best Actor in a Supporting Role"),(9,"1998","Best Original Score"),(8,"1958","Best Costume Design"),(7,"2000","Best Original Score"),(9,"1977","Best Makeup and Hairstyling"),(10,"1952","Best Makeup and Hairstyling"),(7,"1960","Best Animated Feature Film"),(10,"2008","Best Animated Feature Film"),(4,"1955","Best Director"),(6,"1950","Best Original Song"),(7,"2011","Best Documentary Short Subject"),(9,"1932","Best Actor in a Leading Role"),(8,"2012","Best Documentary Feature"),(5,"1986","Best International Feature Film"),(5,"1983","Best Costume Design"),(2,"2003","Best International Feature Film"),(8,"1939","Best Documentary Feature"),(8,"1968","Best Production Design");
INSERT INTO `awards` (`award_type_id`,`year`,`nomination`) VALUES (2,"1969","Best Animated Feature Film"),(2,"1977","Best Adapted Screenplay"),(9,"1992","Best Picture"),(5,"1982","Best Visual Effects"),(1,"2006","Best International Feature Film"),(2,"1941","Best Animated Short Film"),(6,"1973","Best Production Design"),(3,"1985","Best Production Design"),(3,"1992","Best Animated Feature Film"),(6,"2003","Best Actor in a Leading Role"),(7,"1942","Best Makeup and Hairstyling"),(9,"1951","Best Original Song"),(9,"1985","Best Production Design"),(4,"1999","Best Animated Short Film"),(6,"2016","Best Picture"),(7,"2005","Best Original Screenplay"),(6,"1966","Best Film Editing"),(9,"1994","Best Adapted Screenplay"),(2,"2004","Best Costume Design"),(3,"1968","Best Actor in a Leading Role"),(1,"1971","Best Sound"),(3,"1988","Best Actor in a Supporting Role"),(8,"1968","Best International Feature Film"),(4,"2016","Best Picture"),(4,"1973","Best Picture");
INSERT INTO `awards` (`award_type_id`,`year`,`nomination`) VALUES (1,"1942","Best Picture"),(6,"2014","Best Original Song"),(7,"1952","Best Makeup and Hairstyling"),(5,"2008","Best Live-Action Short Film"),(3,"1960","Best International Feature Film"),(2,"1994","Best Film Editing"),(5,"1999","Best Original Score"),(10,"1971","Best Actor in a Leading Role"),(9,"1942","Best Animated Feature Film"),(4,"1985","Best Picture"),(5,"1951","Best Cinematography"),(9,"1960","Best Documentary Short Subject"),(8,"1985","Best Cinematography"),(2,"2002","Best Actor in a Leading Role"),(6,"1969","Best Adapted Screenplay"),(10,"2019","Best Live-Action Short Film"),(6,"2010","Best Production Design"),(3,"1976","Best Original Song"),(5,"1991","Best International Feature Film"),(3,"2000","Best Original Score"),(7,"1967","Best Production Design"),(4,"1946","Best Documentary Short Subject"),(2,"1966","Best Director"),(5,"2015","Best Director"),(4,"2013","Best Original Song");

ALTER TABLE awards
  ADD CONSTRAINT awards_def_by_award_type_id_fk 
    FOREIGN KEY (award_type_id) REFERENCES award_types(id);

-- 4. Информация о номинантах и победителях кинонаград;

DROP TABLE IF EXISTS `awards_relations`;
CREATE TABLE `awards_relations` (
  `award_id` INT UNSIGNED NOT NULL,
  `title_id` INT UNSIGNED NOT NULL,
  `name_id` INT UNSIGNED NULL,
  `is_winner` TINYINT NOT NULL DEFAULT 0,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
ENGINE = InnoDB;

INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (90,18,39,0),(41,30,NULL,0),(96,52,72,0),(22,91,42,0),(97,47,32,1),(8,44,28,1),(22,2,7,0),(15,71,6,0),(37,94,66,0),(53,97,NULL,1);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (14,86,41,0),(38,75,98,0),(8,77,27,0),(71,10,33,0),(1,88,79,0),(89,28,6,0),(37,82,9,0),(95,71,96,0),(3,11,53,0),(34,91,34,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (74,11,44,0),(85,68,91,0),(52,54,98,0),(32,13,59,1),(46,25,18,0),(53,39,10,0),(13,81,NULL,0),(68,28,33,0),(73,68,48,0),(53,2,78,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (28,62,48,0),(40,67,45,0),(56,10,4,0),(43,88,88,0),(40,5,79,0),(38,63,43,0),(92,29,83,0),(7,38,24,0),(46,89,45,0),(47,48,9,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (1,38,71,0),(59,41,68,1),(73,75,NULL,1),(21,59,75,0),(23,93,61,0),(53,16,NULL,0),(86,9,90,0),(49,86,56,0),(28,38,40,0),(30,90,15,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (74,45,75,0),(11,76,10,0),(59,76,92,0),(72,98,27,0),(2,99,16,0),(28,91,32,0),(49,41,30,1),(99,54,98,0),(32,25,55,0),(37,53,42,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (97,69,50,0),(93,82,73,0),(36,19,35,0),(79,55,90,0),(1,16,95,0),(34,39,30,0),(2,99,31,1),(12,83,43,0),(24,84,4,0),(36,74,3,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (44,7,12,0),(72,38,NULL,1),(38,26,37,0),(13,13,92,0),(35,80,63,0),(94,1,45,1),(54,55,60,0),(53,71,21,0),(3,41,32,0),(60,99,3,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (46,63,11,1),(37,90,33,0),(100,6,NULL,0),(97,25,56,0),(86,41,20,0),(3,69,38,0),(9,82,NULL,0),(40,29,100,0),(9,94,21,0),(45,51,NULL,0);
INSERT INTO `awards_relations` (`award_id`,`title_id`,`name_id`,`is_winner`) VALUES (71,23,4,0),(27,82,23,0),(10,54,31,0),(63,80,53,0),(65,11,99,0),(18,64,NULL,0),(12,42,35,0),(24,58,38,0),(2,71,65,0),(14,81,52,0);

ALTER TABLE awards_relations
  ADD CONSTRAINT awards_relations_with_award_id_fk 
    FOREIGN KEY (award_id) REFERENCES awards(id),  
  ADD CONSTRAINT awards_relations_with_title_id_fk 
    FOREIGN KEY (title_id) REFERENCES titles(id),
  ADD CONSTRAINT awards_relations_with_name_id_fk 
    FOREIGN KEY (name_id) REFERENCES names(id);
    
-- 5. Города, к которым имеют отношение кто-либо из персоналий;

DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `country_id` INT UNSIGNED NOT NULL,
  `region` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idcities_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Wonju",20,"Gan"),("Lustenau",9,"Vorarlberg"),("Crawley",18,"Sussex"),("Vienna",10,"Vienna"),("Edmundston",8,"New Brunswick"),("Almería",19,"Andalucía"),("Belfast",16,"Ulster"),("Sint-Gillis",6,"Brussels Hoofdstedelijk Gewest"),("Södertälje",17,"Stockholms län"),("Cardigan",20,"Cardiganshire");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Anseong",20,"Gye"),("Landshut",15,"Bayern"),("Tomsk",12,"Tomsk Oblast"),("Wałbrzych",9,"Dolnośląskie"),("Anchorage",1,"Alaska"),("Sint-Denijs",20,"West-Vlaanderen"),("Glimes",18,"Waals-Brabant"),("Tarnów",13,"Małopolskie"),("Abergele",16,"Denbighshire"),("Sacheon",5,"South Gyeongsang");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Mosciano Sant'Angelo",14,"Abruzzo"),("Herselt",11,"Antwerpen"),("Denver",3,"Colorado"),("Istanbul",5,"Istanbul"),("Galway",10,"Connacht"),("Belgrave",18,"Victoria"),("Karapınar",8,"Konya"),("Muzaffarpur",7,"Bihar"),("Vienna",9,"Vienna"),("Toruń",15,"Kujawsko-pomorskie");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Santa Inês",18,"Maranhão"),("Habra",3,"West Bengal"),("Penza",3,"Penza Oblast"),("A Coruña",15,"Galicia"),("Incheon",17,"Gye"),("Upper Hutt",11,"North Island"),("Santa Coloma de Gramenet",12,"Catalunya"),("Samsun",20,"Samsun"),("Lauro de Freitas",17,"Bahia"),("Saharanpur",4,"Uttar Pradesh");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Athens",11,"Georgia"),("Le Puy-en-Velay",2,"Auvergne"),("Mandela",1,"Lazio"),("Avesta",17,"Dalarnas län"),("Firenze",10,"Toscana"),("Rueil-Malmaison",6,"Île-de-France"),("Morrinsville",13,"North Island"),("Mexico City",7,"Mexico City"),("Granada",11,"Andalucía"),("Galway",21,"Connacht");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Nelson",14,"South Island"),("Wick",2,"Caithness"),("White Rock",9,"British Columbia"),("Lede",17,"Oost-Vlaanderen"),("Morrinsville",1,"North Island"),("Port Lincoln",2,"South Australia"),("Den Helder",2,"Noord Holland"),("Windermere",11,"Westmorland"),("Allappuzha",12,"Kerala"),("Kansas City",1,"Kansas");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Virginia Beach",1,"Virginia"),("Deventer",15,"Overijssel"),("Fort Collins",2,"Colorado"),("Lens",14,"Nord-Pas-de-Calais"),("Hofors",4,"Gävleborgs län"),("Beypazarı",14,"Ankara"),("Poza Rica",1,"Veracruz"),("Straubing",18,"Bayern"),("Whyalla",16,"South Australia"),("Vienna",20,"Vienna");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Sneek",6,"Friesland"),("Boryeong",1,"South Chungcheong"),("Worcester",7,"Worcestershire"),("Galway",1,"Connacht"),("Poggiorsini",21,"Puglia"),("North Bay",16,"Ontario"),("Dudley",15,"Worcestershire"),("Yaroslavl",7,"Yaroslavl Oblast"),("Yangju",13,"Gye"),("Jerez de la Frontera",21,"Andalucía");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Stargard Szczeciński",19,"Zachodniopomorskie"),("Ravenstein",11,"Noord Brabant"),("Gladstone",5,"Queensland"),("Tczew",15,"Pomorskie"),("Albacete",11,"Castilla - La Mancha"),("Ankara",21,"Ankara"),("Mâcon",2,"Bourgogne"),("Fréjus",17,"Provence-Alpes-Côte d'Azur"),("Duque de Caxias",16,"RJ"),("Istanbul",16,"Istanbul");
INSERT INTO `cities` (`name`,`country_id`,`region`) VALUES ("Berg",18,"Limburg"),("Hérouville-Saint-Clair",12,"Basse-Normandie"),("Dollard-des-Ormeaux",15,"Quebec"),("Juiz de Fora",20,"MG"),("Kent",5,"British Columbia"),("Gwangju",8,"Gye"),("Badalona",3,"Catalunya"),("Vichte",19,"West-Vlaanderen"),("Jerez de la Frontera",9,"Andalucía"),("Dublin",3,"Leinster");

ALTER TABLE cities
  ADD CONSTRAINT cities_in_country_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);

-- Предположительно поиск информации об персоналиях по городам будет вызывать определённый интерес. Для этого создаётся индекс.

CREATE INDEX cities_name_idx ON cities (name);

-- 6. Страны, к которым имеют отношение персоналии, города, кинопродукты и структуры, учреждающие кинонаграды;

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `is_exist` TINYINT NOT NULL DEFAULT 1,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idcountries_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `countries` (`name`) VALUES ("Ireland"),("Russian Federation"),("Australia"),("India"),("New Zealand"),("Brazil"),("Mexico"),("Italy"),("Turkey"),("France"),("South Korea");
INSERT INTO `countries` (`name`) VALUES ("United States"),("Canada"),("United Kingdom"),("Netherlands"),("Spain"),("Sweden"),("Belgium"),("Germany"),("China");
INSERT INTO `countries` (`name`, `is_exist`) VALUES ("USSR", 0);

-- Предположительно поиск информации по государствам будет вызывать определённый интерес. Для этого создаётся индекс.

CREATE INDEX countries_name_idx ON countries (name);

-- 7. Жанры кинематографа;

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idtable1_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `genres` (`name`) VALUES ("Action"),("Animation"),("Fantasy"),("Thriller"),("Romance"),("Mystery"),("Horror"),("History"),("Reality-TV"),("Documentary"),("Biography"),("Talk-Show"),("Film-Noir"),("Drama"),("Comedy"),("Sci-Fi"),("Crime"),("Family"),("Short"),("War"),("Western"),("Game-Show"),("Music"),("Musical");                         

-- 8. Данные о медиафайлах, загружаемых на сайт. Так как для данных, соответствующих остальным таблицам,
 -- необходимы только изображения, то media_type_id будет без типа .mov;

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `filename` VARCHAR(255) NOT NULL,
  `size` INT UNSIGNED NOT NULL,
  `metadata` JSON NULL,
  `media_type_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idmedia_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `filename_UNIQUE` (`filename` ASC) VISIBLE)
ENGINE = InnoDB;


INSERT INTO `media` (`filename`,`size`,`media_type_id`) VALUES ("048194v90j7545nr95054z681dw4588",371792,3),("661103q49a3169bo39136x873rb6422",431490,1),("149968s82v0112ko85617f014an4024",430166,2),("250998k66j4547fu09120y014gc1970",462633,1),("144677z34h3354es27190k842tp0186",270000,1),("784261r90g0528pj44040i271gd1098",75032,2),("775086f84g1897kf96048q697ig9445",312274,3),("473581g04w1398fy25408q441et7714",192221,2),("934031u03j8239ws98188w185ka4624",462296,1),("481720g28z4426zs49431f781wv3764",15615,2),("777878k97z7009nj22915a647zf3720",187875,3),("631123j54g2241ke71780y688td6247",257986,1),("363312o26s8985bh16783i591mb4393",488601,1),("087213j55j0234xj20034o082cb2931",495809,1),("730851s88s2248av32699a998dv3772",239053,1),("456169o32k3597qe87610t205py0269",309794,1),("544637j58v6914yz21552b940qu2118",137416,1),("875973i21d2747gf02710y807qk1903",113075,1),("177468h45s6795dk16291n619zr8903",349347,3),("446217f43p6275my22817q766hu5257",200300,3),("710042y92g9072zt71869k288zz7083",335688,3),("931720t57r4660cl36693h767ee9789",196388,3),("743460t91m2757wx05061v744hg0215",324332,2),("163796o93b8020mx99030y875ec4460",100178,3),("037291c91i8884it01212u897ba1469",335478,2);
INSERT INTO `media` (`filename`,`size`,`media_type_id`) VALUES ("989885g37o2330pq92061y834wk4483",256264,2),("129318i61b8545sb04272k627wu7257",388815,1),("285301o02s0833tr26227m817wv4992",386581,1),("916999h20y3601lo02657c003ct5977",116030,2),("897777w86d5332cc37191l118af4121",185904,2),("246158t27p9426kv73076o061mn3119",496439,3),("294060z53q7913iq16585q570zv9537",103682,1),("019579h40i9670gw81892y895nc2263",58955,1),("994351v61d2118nc18518c657ry7451",372071,3),("043723x01f8231jc07658x171db7842",109091,2),("482881q86x5048ht85901u628sj0400",49128,1),("351567s44j4595pa03048r010bw7921",477977,3),("040297o47g3362bb66756o406so0454",470820,1),("693735v50p9567zb23727b976uv5810",213788,3),("287482q36x4995ek97761g601bf7043",103420,1),("215125n31t0458sb76321q366eg0145",360300,3),("152685i82h1889ez23818a721wq8756",164802,2),("763708p84l4498qr77430g984wp1944",44702,1),("028413n14m6421ez49040t491gf7027",426206,2),("405833j54b6432of33262n457ux7508",114447,3),("543098b58s1696lz01518r880iw0117",246174,1),("915205a12t1328zz40468p170bx1048",356682,2),("601134d91d4519ke36738z569nd8888",208207,3),("592933e06a9511xt34773f296qb8578",489854,3),("259769x66u6823mj79416p742yh9366",117414,3);
INSERT INTO `media` (`filename`,`size`,`media_type_id`) VALUES ("407181q06u6161iv55011l235rp3794",139221,3),("240167e10l1103jr61029c182xi2265",485397,1),("922387c08n6556cn47582y190ns6745",232352,1),("045702s12u9283pk53426s068uw6230",16839,3),("560337l39h3585mr26087c853me7003",242167,1),("969554v09n2149gz18417t192uo9111",17761,1),("379901h59g4151wr19216x345qx4443",17407,2),("327512t94d8301is75623v216wx7357",114234,3),("467922b36m3577cq70336t968ho3496",136182,2),("019425t09s7018ye53959y049wl1895",280735,2),("941839d30h5375vo09786o247iz1118",271352,3),("465055r60i1895zu88271m418lt8090",88908,1),("182818e63g1666gw52248j432vp9462",490668,2),("088249p69c2070hm31666e685ku6397",453756,1),("358678n67s3480xu28804d980zg5275",491721,2),("705889c13w3567hj05927l164qx4070",209866,3),("220798r82n9885jm08297i004js0885",291533,1),("388414q74j7340we56514n649er9752",444193,3),("200107o79w9882zf20640t886hk2569",43442,3),("325024q97e1952sz65833q715uh9160",491466,3),("423264q10r6208qh73697u557li0599",409764,3),("009781v67o6063gd29656t815ya1916",428703,3),("742237n69f4428jw91024l741ew7781",87952,2),("657788x62q8414uw26358y662sq3664",137464,3),("844619c26f0578im89691m482sx8037",458884,1);
INSERT INTO `media` (`filename`,`size`,`media_type_id`) VALUES ("441495r52e8582kv05554d908om8842",200582,3),("848909d96s9079lh91873z930xz8883",444511,1),("043558q22h7417bv55476g271sk0126",331989,1),("264659c93e8505tq13933e719xx9087",238154,2),("813416x88l8238bs35686q880tv7335",92270,3),("910794x26p6162kl38740l475hw0821",479761,3),("974720q23t1452gr97253u226xb6949",381346,3),("891545s03i1065pu57843x671ig7445",205213,3),("157499u27d0832wz92617c545sy6867",27052,1),("950489u41w3980bs46711w921mn2610",349579,2),("464451b88a3870ct95764u479lv4498",343035,1),("892584k65f0437xm51735l494wi7666",54656,2),("869247e98o3886jv68025x146hj1668",277793,1),("255154q48j8470wz29773h806mv0647",21651,1),("119515a76k9119hh91580s452kq0479",148077,3),("658892i43v7285ki65862g671jz0683",346715,2),("398705o13s1633uw86169u232ws2903",268736,1),("328791n06l1468mj65357e927bf8309",30440,1),("480433r84s8604mn27437a282ts8347",242677,1),("092636d88m3579br04220w660rc9545",419048,3),("968478z26m6773ly32266k732gl1448",445775,3),("804191f94x5276xd23209m493hp6649",187212,2),("680679e97h4178ev68551i317sp3789",174943,3),("857837e00t6349ey09215v026nb6910",475305,1),("779242n41t0627im99862q448wk3756",95819,1);

UPDATE media SET filename = CONCAT(
  'https://avatars.mds.yandex.net/get-kinopoisk-image/',
  filename,
  '.',
  (SELECT name FROM media_types where id between 1 AND 3 ORDER BY RAND() limit 1)
);

UPDATE media SET metadata = CONCAT('{"owner":"', 
  'yandex',
  '"}');  

ALTER TABLE media
  ADD CONSTRAINT media_types_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id); 
 
-- 9. Типы медиафайлов, так как на сайте в основном это изображения и видео, а в проекте используется медиа только для
-- аватаров личностей и постеров фильмов, то и в типах указаны наиболее используемые расширения для видео и изображений;

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idmedia_types_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `media_types` (`name`) VALUES (".jpeg"),(".png"),(".gif"),(".mov");

-- 10. Витальная статистика персоналий;

DROP TABLE IF EXISTS `names`;
CREATE TABLE `names` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `second_name` VARCHAR(100) NOT NULL,
  `sex` ENUM('m', 'w') NOT NULL,
  `birthday` DATE NOT NULL,
  `deathday` DATE NULL,
  `height` SMALLINT UNSIGNED NOT NULL,
  `birthplace_city_id` INT UNSIGNED NOT NULL,
  `deathplace_city_id` INT UNSIGNED NULL,
  `avatar_media_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `names` (`first_name`,`second_name`,`sex`,`birthday`,`deathday`,`height`,`birthplace_city_id`,`avatar_media_id`) VALUES ("Swagat","Pastore","m","1941-07-02","1969-04-14",158,28,NULL),("Sara","Lemaire","m","2008-04-28",NULL,177,52,NULL),("Basudha","De Santis","m","1926-02-01",NULL,161,4,NULL),("Edwige","Poulain","m","1901-10-16",NULL,173,60,NULL),("Fredrik","Fabbri","w","1911-08-01",NULL,165,47,NULL),("Simona","Ferrara","w","1922-11-07",NULL,185,90,"33"),("Renaud","Kumar","w","2001-11-16",NULL,198,54,"96"),("Lena","Andersson","w","1955-04-18",NULL,190,32,"64"),("Nischal","Persson","m","1960-10-04",NULL,171,71,NULL),("Ranajay","Ismail","m","1951-05-03",NULL,205,39,NULL),("Lauriane","Carre","w","1930-07-24",NULL,150,14,"67"),("Erica","Petit","w","1910-06-13",NULL,173,37,NULL),("Florian","Bodin","m","1990-01-02",NULL,158,9,"9"),("Vismay","Hubert","m","2016-04-01",NULL,163,34,"95"),("Geetika","Mazza","m","1973-01-15",NULL,165,45,NULL),("Martin","Karlsson","m","1972-07-25",NULL,152,66,NULL),("Chloé","Bernard","w","1986-09-16",NULL,162,75,NULL),("Sanna","Gentile","m","1998-08-16",NULL,173,78,"24"),("Suchi","Samuelsson","w","1931-12-21",NULL,178,1,NULL),("Preeti","Samuelsson","w","1981-01-26",NULL,169,29,NULL),("Samuel","Carlsson","w","1963-08-20",NULL,199,40,NULL),("Zacharis","Svensson","w","1931-08-19",NULL,200,20,NULL),("Malika","Calabrese","m","1977-06-21",NULL,204,11,"7"),("Mirko","Fusco","w","1939-07-03",NULL,164,44,"38"),("Vincenzo","Staffansson","w","1997-09-30",NULL,166,33,"67");
INSERT INTO `names` (`first_name`,`second_name`,`sex`,`birthday`,`deathday`,`height`,`birthplace_city_id`,`avatar_media_id`) VALUES ("Mario","Svensson","w","1913-05-19",NULL,170,11,NULL),("Sugriva","Jacquet","m","1949-05-20",NULL,183,19,NULL),("Gianluca","Singh","w","1915-09-08",NULL,194,2,"54"),("Lilian","Farina","m","1929-09-27",NULL,187,89,NULL),("Henrik","Staffansson","w","2013-09-20",NULL,196,70,NULL),("Ratan","Dubois","w","1958-05-07",NULL,152,73,NULL),("Veena","Eriksson","w","1916-02-04",NULL,171,4,NULL),("Per","Samuelsson","m","1991-12-12",NULL,148,18,NULL),("Per","Ericsson","m","1983-02-19",NULL,167,40,"42"),("Tristan","Carlsson","m","1938-10-25",NULL,185,81,"12"),("Kristian","Khan","m","2013-12-08","1999-09-09",150,56,NULL),("Per","Villani","w","1994-08-21",NULL,193,55,NULL),("Dhara","Millet","m","1915-09-29",NULL,174,49,NULL),("Sara","Karlsson","m","1994-02-12","2001-02-20",189,70,NULL),("Jacopo","Vincent","m","1994-03-28",NULL,183,86,"49"),("Louis","Ismail","w","1986-07-17",NULL,181,61,NULL),("Nicoletta","Kumar","w","1945-02-09",NULL,193,82,"58"),("Michela","Laurent","w","1909-02-25",NULL,204,71,"91"),("Giacomo","Rey","w","1906-01-11",NULL,165,93,"41"),("Samendra","Boyer","w","1945-05-30",NULL,173,61,NULL),("Daniel","Bellini","m","2012-12-30",NULL,196,81,"55"),("Augusto","Raj","w","1937-01-10",NULL,190,41,NULL),("Märta","Carlsson","m","1921-06-22",NULL,190,52,NULL),("Claudio","Ericsson","w","2015-08-01",NULL,204,75,"49"),("Valeria","Carpentier","w","1975-02-06",NULL,164,44,NULL);
INSERT INTO `names` (`first_name`,`second_name`,`sex`,`birthday`,`deathday`,`height`,`birthplace_city_id`,`avatar_media_id`) VALUES ("Mahith","Kumar","w","1965-05-03",NULL,165,35,NULL),("Kalpita","Ismail","m","2005-11-24",NULL,191,15,NULL),("Clara","Morel","w","1930-12-11",NULL,199,49,NULL),("Mirko","Humbert","m","1924-08-23",NULL,194,27,NULL),("Cristiano","Marchetti","m","2005-09-09",NULL,151,59,NULL),("Adrien","Maillard","m","1959-03-29",NULL,173,68,NULL),("Per","Eriksson","w","1926-05-22",NULL,158,57,NULL),("Anders","Staffansson","w","1985-06-01",NULL,203,47,NULL),("Rakesh","Ferrante","w","1966-06-05",NULL,182,92,"100"),("Silvia","Legrand","w","2021-09-23",NULL,205,64,NULL),("Erica","Raj","m","1962-07-07",NULL,193,23,"75"),("Eva","Baldi","m","1921-08-11",NULL,190,82,NULL),("Camilla","Guillot","m","1915-03-17",NULL,205,3,NULL),("Harilal","Ericsson","m","2021-03-06",NULL,150,63,NULL),("Petter","Kumar","w","1980-06-17","1939-02-23",158,23,NULL),("Karan","Gentile","m","2020-09-11",NULL,183,94,NULL),("Andrea","Ferrero","w","1979-05-23",NULL,183,2,"31"),("Anna","Garnier","w","1961-08-20",NULL,153,31,NULL),("Emma","De Simone","m","1923-11-06",NULL,203,70,NULL),("Alice","Benedetti","m","1999-01-13",NULL,186,69,NULL),("Giorgia","Napolitano","m","1904-04-23",NULL,184,84,"51"),("Greta","Ismail","w","1932-12-29",NULL,180,67,"93"),("Sara","Sartori","w","2001-11-17",NULL,175,66,NULL),("Simone","Nicolas","m","1992-05-07",NULL,201,6,NULL),("Nicola","Parisi","m","1965-12-06",NULL,184,90,NULL);
INSERT INTO `names` (`first_name`,`second_name`,`sex`,`birthday`,`deathday`,`height`,`birthplace_city_id`,`avatar_media_id`) VALUES ("Angelo","De Rosa","m","1965-07-23",NULL,154,94,NULL),("Matilde","Caruso","m","1999-11-29",NULL,166,97,NULL),("Simone","Lucas","m","1920-01-22",NULL,170,67,"97"),("Lisa","Marchetti","m","2019-01-16",NULL,164,78,NULL),("Hemlata","Ismail","w","1903-08-20",NULL,163,43,"56"),("Prasiddhi","Ferrante","m","1901-12-25",NULL,160,68,NULL),("Alice","Arena","w","2005-12-26",NULL,181,43,NULL),("Akhil","Giraud","m","1933-01-05",NULL,154,71,NULL),("Nolan","Svensson","m","1963-07-01",NULL,182,88,NULL),("Filippo","Carlsson","w","2013-02-22",NULL,158,60,NULL),("Justine","Khan","w","1992-07-09",NULL,171,72,NULL),("Puneet","Bruno","w","1965-07-05",NULL,148,54,NULL),("Magdalena","Brunet","m","1979-04-22",NULL,148,56,"23"),("Domenico","Roger","w","1908-12-18",NULL,193,30,NULL),("Vidyacharan","Eriksson","w","1930-07-24",NULL,187,16,NULL),("Louis","Noel","w","2005-10-29",NULL,176,97,NULL),("Luca","Pellegrino","m","1947-06-25",NULL,150,46,NULL),("Élisa","Karlsson","w","2021-07-18",NULL,155,86,"87"),("Catarina","Raj","m","1961-03-24",NULL,159,37,NULL),("Chakshu","Sartori","w","1947-03-21",NULL,189,25,NULL),("Margherita","Karlsson","w","1981-07-04",NULL,193,17,NULL),("Anthony","Ruggiero","m","1987-07-10",NULL,181,9,NULL),("Colin","Ericsson","m","1923-12-23","1979-04-09",172,77,NULL),("Jessica","Persson","w","1945-10-05",NULL,167,40,NULL),("Hans","Eriksson","m","1964-05-06",NULL,185,70,NULL);

-- При генерации данных может выйти так, что человек умер раньше, чем он родился. Для этого решение ниже:

UPDATE `names` SET deathday=(@temp:=deathday), deathday = birthday , birthday = @temp where deathday < birthday;

-- Изначально данные в колонку deathplace_city_id не были вставлены потому, что при генерации данных могли присвоиться значения там,
-- где значения для даты смерти присвоены не были.

UPDATE `names` SET deathplace_city_id = RAND()*(100-1)+1 WHERE deathday IS NOT NULL;

ALTER TABLE names
  ADD CONSTRAINT names_birthplace_city_id_fk 
    FOREIGN KEY (birthplace_city_id) REFERENCES cities(id),
  ADD CONSTRAINT names_deathplace_city_id_fk 
    FOREIGN KEY (deathplace_city_id) REFERENCES cities(id),
  ADD CONSTRAINT names_avatar_media_id_fk 
    FOREIGN KEY (avatar_media_id) REFERENCES media(id)
      ON DELETE SET NULL;
     
-- При работе с запросами индексы ниже сократят время на обработку, так как ожидаемо будут часто использоваться при поиске:

CREATE INDEX names_full_name_idx ON names (first_name, second_name);
CREATE INDEX names_first_name_idx ON names (first_name);
CREATE INDEX names_second_name_idx ON names (second_name);

-- 11. Сведения об участии людей в производстве кинопродкутов;

DROP TABLE IF EXISTS `names_in_titles`;
CREATE TABLE `names_in_titles` (
  `name_id` INT UNSIGNED NOT NULL,
  `title_id` INT UNSIGNED NOT NULL,
  `activity_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
ENGINE = InnoDB;

INSERT INTO `names_in_titles` (`name_id`,`title_id`,`activity_id`) VALUES (27,95,4),(73,17,2),(29,91,3),(26,80,7),(66,26,8),(82,92,3),(38,49,6),(47,25,10),(96,8,6),(12,22,6),(72,87,10),(13,43,4),(62,86,6),(19,15,5),(20,53,9),(90,75,5),(54,92,10),(13,52,5),(26,32,3),(6,19,7),(92,99,6),(47,50,5),(75,12,7),(69,96,7),(5,56,9);
INSERT INTO `names_in_titles` (`name_id`,`title_id`,`activity_id`) VALUES (61,15,4),(79,83,4),(82,60,4),(97,28,4),(64,2,4),(86,83,4),(79,52,4),(9,35,4),(1,57,4),(42,3,4),(4,7,4),(9,76,4),(97,12,4),(17,64,4),(66,81,4),(37,41,4),(10,65,4),(7,100,4),(95,28,4),(88,7,4),(30,19,4),(36,23,4),(27,13,4),(99,58,4),(17,6,4);
INSERT INTO `names_in_titles` (`name_id`,`title_id`,`activity_id`) VALUES (33,39,4),(39,50,4),(58,37,4),(41,49,4),(9,37,4),(55,76,4),(37,14,4),(33,31,4),(2,71,4),(29,56,4),(23,52,4),(99,61,4),(12,74,4),(80,31,4),(90,41,4),(15,3,4),(95,6,4),(70,70,4),(57,40,4),(98,50,4),(34,28,4),(91,21,4),(25,42,4),(53,23,4),(11,20,4);
INSERT INTO `names_in_titles` (`name_id`,`title_id`,`activity_id`) VALUES (31,99,4),(28,32,4),(37,75,4),(45,10,4),(20,99,4),(84,96,4),(98,11,4),(74,60,4),(79,60,4),(90,33,4),(29,98,4),(63,38,4),(58,57,4),(61,75,4),(49,61,4),(99,11,4),(35,65,4),(55,2,4),(84,64,4),(43,87,4),(71,73,4),(55,16,4),(85,85,4),(59,60,4),(99,100,4);

ALTER TABLE names_in_titles
  ADD CONSTRAINT name_in_table_names_in_titles_id_fk 
    FOREIGN KEY (name_id) REFERENCES names(id),
  ADD CONSTRAINT titles_in_table_names_in_titles_id_fk 
    FOREIGN KEY (title_id) REFERENCES titles(id),
  ADD CONSTRAINT activity_in_table_names_in_titles_id_fk 
    FOREIGN KEY (activity_id) REFERENCES activities(id);

-- 12. Информация о типе, названии, годе производства и длительности кинопродукта;

DROP TABLE IF EXISTS `titles`;
CREATE TABLE `titles` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `year` YEAR NOT NULL,
  `duration` TIME NOT NULL,
  `type` ENUM('film', 'series') NOT NULL,
  `avatar_media_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO `titles` (`name`,`year`,`duration`,`type`,`avatar_media_id`) VALUES ("Adopting My Friends","1943","08:40:51","series","8"),("Lonely In The Country","1963","12:20:45","series","8"),("Accidents Of Ice","1931","09:47:09","film","56"),("Butcher Arrangement","1931","16:21:00","film",NULL),("Perfection Without Sin","2018","04:10:42","series",NULL),("Dishonor With Horns","1942","16:14:36","series","6"),("Enemy With Money","1966","10:23:44","film","47"),("Facing The Sun","2003","10:58:16","film","92"),("Boys","1940","10:45:32","film","46"),("Reincarnation Of The West","1940","08:24:43","film","60"),("Achievement Of The North","1973","12:05:35","film","75"),("Ending A Storm","1947","19:11:38","film","85"),("Traitors And Companions","2016","04:12:21","film","99"),("Witches And Robots","1994","01:35:03","series","75"),("Failure Without A Goal","1994","04:33:23","series","60"),("Of Gags","1936","18:09:13","series","18"),("Wolf Of Insanity","1981","11:26:33","series","92"),("Lords And Slaves","1969","22:02:25","series","93"),("Crossbow Of Perfection","1934","21:09:52","series","99"),("Assistant Without Time","1964","12:27:41","film","43"),("Aware Of My Wife","1973","07:36:34","film","52"),("Smiles Of The Mines","2009","04:20:45","series","59"),("Hunters Without Shame","2006","13:39:43","film","20"),("Wolf Of The North","1954","08:59:11","series","7"),("Girl Of Utopia","1953","13:18:30","series","1");
INSERT INTO `titles` (`name`,`year`,`duration`,`type`,`avatar_media_id`) VALUES ("Beginning Without Sin","2006","14:01:49","series","75"),("Frozen By Being Lonely","1993","20:56:41","series",NULL),("Doctor Of The River","2000","13:53:25","series","18"),("Girl Of The Stockades","1966","06:12:22","series","99"),("Opponents Without A Goal","1976","22:33:57","film","6"),("Fish Without Faith","1957","00:02:26","series","25"),("Result Without A Goal","1974","09:47:54","series","38"),("Books In The Lake","2002","16:14:42","film",NULL),("Planners Of Reality","1980","06:53:12","film","15"),("Wolf Of Insanity","1953","17:07:15","film","51"),("Altering The Guards","1949","15:43:28","film","61"),("Accidents Of Ice","1952","13:03:48","film","58"),("Traitors And Companions","1938","10:20:13","series","60"),("Peons And Assassins","1958","12:17:05","series","2"),("With White Hair","1954","01:57:46","film","7"),("Hunters And Friends","1987","15:35:20","series","45"),("Bats And Monks","1936","00:21:02","film","71"),("Stranger Of The Sea","1997","23:39:32","film","95"),("Child Program","1970","01:05:02","film",NULL),("Cullers And Descendants","1977","13:16:56","series","65"),("Girl Of Parody","1980","13:39:39","series",NULL),("Force Of The South","1976","13:24:58","film","66"),("Foreigners Of Fire","2002","22:05:36","series","59"),("Hunters Without Shame","1952","08:50:47","film",NULL),("Trinkets With A Hat","2001","14:21:25","series",NULL);
INSERT INTO `titles` (`name`,`year`,`duration`,`type`,`avatar_media_id`) VALUES ("Nation Without Desire","2000","05:41:52","series","88"),("Stranger Of The Sea","1967","01:57:17","film","17"),("Crazy In The Graveyard","2019","22:59:19","film","33"),("Trinkets With A Hat","1943","10:50:29","film","100"),("Numbers At The Hospital","1985","10:04:14","film","99"),("Woman Without Courage","1994","13:08:36","film","6"),("Never Trust The Forest","1978","22:31:06","series","66"),("Dishonor With Horns","1938","05:36:16","series","94"),("Hunters Without Shame","1950","21:14:27","film",NULL),("Girl And Parrot","1950","17:10:12","film","82"),("Frozen By Being Lonely","1959","04:04:37","film","59"),("Farmers Without Desire","1931","11:33:05","film","41"),("Wand Without Faith","1942","01:38:05","series","97"),("Doctor Of The River","1987","07:28:43","series","14"),("Girls And Slaves","1993","02:17:14","film","27"),("Altering The Guards","1976","02:03:06","film","52"),("Snakes Of The Void","2004","00:26:02","film","27"),("Vultures And Mermen","1987","05:57:02","film","95"),("Country Of MagicV58","1955","01:26:11","series","24"),("Weep For My Destiny","1951","16:09:40","film","39"),("Bringer Of Misery","1961","02:44:07","series","21"),("Opponent Of The Banished","1955","05:55:39","series",NULL),("Butcher Arrangement","1952","03:24:37","film","68"),("Demise Of The South","1947","14:26:14","series","23"),("Null","2014","12:06:51","series",NULL);
INSERT INTO `titles` (`name`,`year`,`duration`,`type`,`avatar_media_id`) VALUES ("Girl Of Utopia","1997","14:58:56","film","77"),("Force Of The South","2014","02:01:11","series","79"),("Medic With Pride","1951","06:26:28","film","22"),("Hunters And Friends","1939","21:01:54","film","18"),("Taste Of The Ocean","1992","08:55:07","film","59"),("Aware Of My Wife","1974","12:17:43","series","33"),("Slaves Of The Banner","1978","04:46:47","series","55"),("Hawk Of The North","1976","12:21:34","film","41"),("Cullers And Rats","2006","08:00:14","film","50"),("Woman Without Courage","1954","15:47:07","film","60"),("Necromancers Of Rainbows","1935","07:00:42","film","57"),("Scared In The Ocean","1979","10:50:14","series","64"),("Men And Guests","2002","01:42:54","series","17"),("Bakers Of Freedom","1949","09:18:07","series","32"),("Child Program","1990","17:50:56","film","86"),("Angels And Assassins","1994","16:36:36","film","5"),("Founder Without A Head","1991","07:22:28","series","71"),("Opponents Without A Goal","1993","09:28:02","film","6"),("Prepare For The Universe","1937","06:52:59","series",NULL),("Enhancing The Past","2007","17:24:10","series","64"),("Warriors Of Power","1939","22:41:47","series","2"),("Inventors Of Limbo","2009","14:07:30","series","24"),("Scared In The Ocean","1978","19:20:27","series","30"),("Human Without Time","1999","18:14:56","series","75"),("Beginning Without Sin","1963","12:15:20","film",NULL);

-- Там, где при генерации данных длительность вышла большой, можно внести изменения таким образом,
-- причём для серийных кинопродуктов в длительности указывается средняя длина одной серии
-- за минимум принимаем 25 минут, например. 

UPDATE `titles` SET duration = SEC_TO_TIME(ROUND(RAND()*(10800-1600)+1600)) WHERE HOUR(duration) > 3 
UPDATE `titles` SET duration = SEC_TO_TIME(ROUND(RAND()*(3600-1500)+1500)) WHERE HOUR(duration) > 0 and `type` = 'series'

-- Таким образом можно добавить новый столбец в таблицу, указавающий на число серий. Для фильмов выставляется значение 1,
-- Для сериалов в интервале от 2 до 250.
-- Изначально этих действий запланировано не было, в процессе заполнения данными, я посчитал это хорошей возможностью
-- чтобы продемонстрировать дополнительно приобретённые за время курса умения и для закрепления материала.

ALTER TABLE `titles` ADD COLUMN `episode_num` INT UNSIGNED NOT NULL;

UPDATE `titles` SET `episode_num` = 1 WHERE `type` = 'film';
UPDATE `titles` SET `episode_num` = RAND()*(251 - 2) + 2 WHERE `type` = 'series';

ALTER TABLE titles
  ADD CONSTRAINT avatar_media_in_titles_id_fk 
    FOREIGN KEY (avatar_media_id) REFERENCES media(id)
      ON DELETE SET NULL;
 
-- При работе с запросами индексы ниже сократят время на обработку, так как ожидаемо будут часто использоваться при поиске:

CREATE INDEX titles_name_and_year_idx ON titles (name, `year`);
CREATE INDEX titles_name_idx ON titles (name);
CREATE INDEX titles_year_idx ON titles (`year`);
CREATE INDEX titles_name_and_type_idx ON titles (name, `type`);
CREATE INDEX titles_type_and_year_idx ON titles (`type`, `year`);
CREATE INDEX titles_name_and_type_and_year_idx ON titles (name, `type`, `year`);

-- 13. Сведения об участии государств в производстве кинопродукта;

DROP TABLE IF EXISTS `titles_countries`;
CREATE TABLE `titles_countries` (
  `title_id` INT UNSIGNED NOT NULL,
  `country_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
ENGINE = InnoDB;

INSERT INTO `titles_countries` (`title_id`,`country_id`) VALUES (80,11),(38,18),(67,4),(38,14),(3,15),(38,4),(43,18),(45,16),(48,4),(1,20),(19,8),(96,3),(96,13),(92,12),(16,17),(99,5),(90,9),(44,11),(17,15),(23,12),(49,18),(89,16),(61,19),(64,7),(64,10);
INSERT INTO `titles_countries` (`title_id`,`country_id`) VALUES (1,3),(66,11),(16,18),(60,5),(59,6),(69,9),(52,10),(9,16),(98,3),(1,4),(93,9),(96,2),(7,16),(47,7),(60,2),(64,20),(25,9),(81,9),(35,12),(61,17),(25,21),(97,9),(64,17),(95,20),(61,6);
INSERT INTO `titles_countries` (`title_id`,`country_id`) VALUES (92,20),(90,14),(48,16),(62,10),(69,7),(95,16),(47,1),(100,8),(71,4),(100,11),(23,4),(30,4),(84,17),(36,1),(8,12),(84,4),(13,3),(82,11),(73,9),(21,4),(72,19),(67,7),(93,6),(72,5),(8,20);
INSERT INTO `titles_countries` (`title_id`,`country_id`) VALUES (100,21),(65,16),(6,19),(21,20),(87,11),(17,16),(19,2),(53,13),(24,6),(33,11),(25,10),(2,18),(20,19),(24,11),(93,11),(44,20),(5,15),(83,1),(40,8),(44,18),(3,8),(46,4),(89,14),(70,13),(82,8);

ALTER TABLE titles_countries
  ADD CONSTRAINT title_in_table_titles_countries_id_fk 
    FOREIGN KEY (title_id) REFERENCES titles(id),
  ADD CONSTRAINT country_in_table_titles_countries_id_fk 
    FOREIGN KEY (country_id) REFERENCES countries(id);

-- 14. Жанры, в которых снят конкретный кинопродукт.

DROP TABLE IF EXISTS `titles_genres`;
CREATE TABLE `titles_genres` (
  `title_id` INT UNSIGNED NOT NULL,
  `genre_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP)
ENGINE = InnoDB;

INSERT INTO `titles_genres` (`title_id`,`genre_id`) VALUES (5,13),(100,2),(50,18),(51,22),(11,12),(44,17),(59,10),(94,3),(81,23),(7,11),(36,11),(68,15),(68,4),(10,6),(14,5),(67,19),(24,24),(54,14),(43,10),(19,3),(29,23),(55,4),(87,24),(21,13),(36,8);
INSERT INTO `titles_genres` (`title_id`,`genre_id`) VALUES (8,12),(56,14),(22,9),(12,13),(77,21),(5,10),(27,16),(94,14),(90,22),(35,17),(94,15),(83,10),(5,19),(11,21),(61,3),(89,16),(55,6),(64,24),(100,13),(60,2),(56,21),(80,21),(67,14),(25,7),(76,19);
INSERT INTO `titles_genres` (`title_id`,`genre_id`) VALUES (8,9),(81,18),(7,22),(99,1),(49,12),(82,8),(74,5),(42,22),(88,22),(58,21),(37,13),(40,17),(16,5),(17,21),(64,6),(21,8),(65,3),(70,22),(72,23),(83,1),(51,9),(8,21),(37,15),(55,24),(94,11);
INSERT INTO `titles_genres` (`title_id`,`genre_id`) VALUES (82,7),(96,23),(72,1),(6,3),(99,18),(92,18),(5,3),(59,15),(13,11),(94,12),(76,16),(58,8),(35,1),(22,19),(67,1),(14,11),(92,9),(24,22),(62,13),(5,9),(71,23),(30,10),(81,24),(85,2),(92,3);

ALTER TABLE titles_genres
  ADD CONSTRAINT title_in_table_titles_genres_id_fk 
    FOREIGN KEY (title_id) REFERENCES titles(id),
  ADD CONSTRAINT genre_in_table_titles_genres_id_fk 
    FOREIGN KEY (genre_id) REFERENCES genres(id);

-- Наполение базы данных производилось при помощи генераторов и ручного ввода.

-- Выполним поиск информации о персонах, которые родились в США более 20 лет назад.

SELECT * FROM names 
WHERE 
  birthplace_city_id IN 
    (SELECT id FROM cities WHERE name IN 
      (SELECT name FROM cities WHERE country_id = 
        (SELECT id FROM countries WHERE name = 'United States'))) 
  AND DATEDIFF(NOW(), birthday) > 365.25 * 20;
 
 -- Выполним запрос, чтобы посмотреть всех актёров и актрис, имеющихся в базе
 
 select 
   concat(first_name," ",second_name) AS name,
   if(sex = 'm', 'Actor', 'Actress') AS occupy   
 FROM names 
 WHERE id IN
   (select name_id FROM names_in_titles WHERE activity_id =
     (select id FROM activities WHERE name = 'Actor'))
ORDER BY occupy, name;

-- Усложним запрос и покажем дополнительно кинопродкуты, в которых они принимали участие, как актёры.

SELECT
  CONCAT(n.first_name," ",n.second_name) AS name,
  IF(n.sex = 'm', 'Actor in', 'Actress in') AS occupy,
  CONCAT(t.name,' — ',t.`type`,' (',t.`year`,')') AS `title name`
FROM names AS n
JOIN names_in_titles AS nt
JOIN activities AS a
JOIN titles AS t
ON a.name = 'Actor' AND a.id = nt.activity_id AND n.id = nt.name_id AND t.id = nt.title_id
ORDER BY occupy, name, `title name`;

-- C помощью запроса ниже можно удостовериться, что запрос построен верно
-- и отображает весь список участий людей в фильмах, как актёров.

select * from names_in_titles where activity_id = 4

-- Посчитаем, сколько актёров играло в фильмах и отсортируем по количеству участоваших.

SELECT
  COUNT(*) AS `actors count`,
  CONCAT(t.name,' — ',t.`type`,' (',t.`year`,')') AS `title name`
FROM names AS n
JOIN names_in_titles AS nt
JOIN activities AS a
JOIN titles AS t
ON a.name = 'Actor' AND a.id = nt.activity_id AND n.id = nt.name_id AND t.id = nt.title_id AND t.`type` = 'film'
GROUP BY `title name`
ORDER BY `actors count` DESC, `title name`;

-- С помощью запроса узнаем, насколько десятилетия были продуктивными на производство фильмов, в которых снимались актёры и актрисы.

SELECT
  COUNT(DISTINCT CONCAT(t.name,' — ',t.`type`,' (',t.`year`,')')) AS `film total`,
  CONCAT(left(t.`year`, 3),'0') AS `in decades`
FROM names AS n
JOIN names_in_titles AS nt
JOIN activities AS a
JOIN titles AS t
ON a.name = 'Actor' AND a.id = nt.activity_id AND n.id = nt.name_id AND t.id = nt.title_id AND t.`type` = 'film'
GROUP BY `in decades`
ORDER BY `in decades` DESC;

-- Посмотрим на самое продуктивное десятилетие.

SELECT
  COUNT(DISTINCT CONCAT(t.name,' — ',t.`type`,' (',t.`year`,')')) AS `film total`,
  CONCAT(left(t.`year`, 3),'0') AS `in decades`
FROM names as n
JOIN names_in_titles AS nt
JOIN activities AS a
JOIN titles AS t
ON a.name = 'Actor' AND a.id = nt.activity_id AND n.id = nt.name_id AND t.id = nt.title_id AND t.`type` = 'film'
GROUP BY `in decades`
ORDER BY `film total` DESC
LIMIT 1;

-- Создадим представление из выборки данных витальной статистики людей, их рода деятельности и названий стран, откуда они.

CREATE VIEW names_activities_in_titles AS
SELECT 
  CONCAT(n.first_name,' ', n.second_name) AS `Person named as`, 
  IF((n.sex = 'w' AND a.name = 'Actor'), 'Actress', a.name) AS `was occupied as`,
--  n.sex,    
  CONCAT(t.name,' (',t.`type`,')') AS `in the`,
  t.`year` AS `in`,
  s.name AS `and was born`,
  DATE_FORMAT(n.birthday, '%D %M %Y') `at`
FROM names AS n
JOIN countries AS s
JOIN cities AS c
JOIN activities AS a
JOIN names_in_titles AS nt
JOIN titles AS t
ON c.country_id = s.id AND n.birthplace_city_id = c.id AND nt.activity_id = a.id AND nt.name_id = n.id AND t.id = nt.title_id 
GROUP BY concat(n.first_name,n.second_name,a.name,t.name, t.`type`,t.`year`)
ORDER BY concat(n.first_name,n.second_name,a.name,t.name, t.`type`,t.`year`);

-- Таким образом было создано более информативное и интересное представление информации простенького запроса ниже.

select * from names_in_titles order by name_id, title_id, activity_id 

-- Создадим представление из названий сериалов, стран, участвовавших в их производстве, 
-- количества серий и общего времени, которое необходимо затратить на просмотр всего кинопродукта.

CREATE VIEW series_produced_by_countries AS
SELECT
  t.`type` AS the,
  t.name AS named,
  t.`year` AS `was filmed in`,
  c.name AS `by`, 
  t.episode_num AS has,  
  SEC_TO_TIME(t.duration * t.episode_num) AS `episodes lasting`
FROM titles AS t
JOIN countries AS c
JOIN titles_countries AS tc
ON t.id = tc.title_id AND tc.country_id = c.id AND t.`type` = 'series'
GROUP BY CONCAT(t.id, c.name)
ORDER BY t.name, c.name

-- Таким образом было создано более информативное и интересное представление информации простенького запроса ниже.

select * from titles_countries where title_id in (select id from titles where `type` = 'series') order by title_id, country_id

-- Для пущей красоты можно создать представление для всех кинопродутктов в БД.

CREATE VIEW titles_produced_by_countries AS
SELECT
  t.`type` AS the,
  t.name AS named,
  t.`year` AS `was filmed in`,
  c.name AS `by`, 
  t.episode_num AS has,  
  SEC_TO_TIME(t.duration * t.episode_num) AS `episodes lasting`
FROM titles AS t
JOIN countries AS c
JOIN titles_countries AS tc
ON t.id = tc.title_id AND tc.country_id = c.id
GROUP BY CONCAT(t.id, c.name)
ORDER BY t.name, c.name

-- Защитим БД от вставки уже внесённых кинопродуктов в базу;

DELIMITER //

CREATE TRIGGER same_title_shall_not_pass BEFORE INSERT ON titles

FOR EACH ROW BEGIN
	IF CONCAT(NEW.name, NEW.`year`, NEW.duration, NEW.`type`) IN (SELECT CONCAT(name, `year`, duration, `type`) FROM titles) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'The title is already added!';
	END IF;
END //

CREATE TRIGGER same_title_shall_not_pass_upd BEFORE UPDATE ON titles

FOR EACH ROW BEGIN
	IF CONCAT(NEW.name, NEW.`year`, NEW.duration, NEW.`type`) IN (SELECT CONCAT(name, `year`, duration, `type`) FROM titles) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'The title is already added!';
	END IF;
END //

-- Персон существующих в БД;

CREATE TRIGGER same_name_shall_not_pass BEFORE INSERT ON names

FOR EACH ROW BEGIN
	IF CONCAT(NEW.first_name, NEW.second_name, NEW.birthday, NEW.birthplace_city_id) 
	   IN (SELECT CONCAT(first_name, second_name, birthday, birthplace_city_id) FROM names) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'The person is already added!';
	END IF;
END //

CREATE TRIGGER same_name_shall_not_pass_upd BEFORE UPDATE ON names

FOR EACH ROW BEGIN
	IF CONCAT(NEW.first_name, NEW.second_name, NEW.birthday, NEW.birthplace_city_id) 
	   IN (SELECT CONCAT(first_name, second_name, birthday, birthplace_city_id) FROM names) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'The person is already added!';
	END IF;
END //

-- Комбинации во всех остальных таблицах, для наглядности ограничусь только ещё одним примером.

CREATE TRIGGER same_country_and_title_shall_not_pass BEFORE UPDATE ON titles_coutries

FOR EACH ROW BEGIN
	IF CONCAT(NEW.title_id, NEW.country_id) IN (SELECT CONCAT(title_id, country_id) FROM titles_coutries) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'This country is already has relation with the title!';
	END IF;
END //

CREATE TRIGGER same_country_and_title_shall_not_pass_upd BEFORE INSERT ON titles_coutries

FOR EACH ROW BEGIN
	IF CONCAT(NEW.title_id, NEW.country_id) IN (SELECT CONCAT(title_id, country_id) FROM titles_coutries) THEN
	    SIGNAL SQLSTATE '45000'
	    SET MESSAGE_TEXT = 'This country is already has relation with the title!';
	END IF;
END //

DELIMITER ;

-- Пользователи любят случайности, поэтому имеет смысл создать процедуру, которая, например, будет выводить случайную персону

DELIMITER //

CREATE PROCEDURE random_name()

    BEGIN
	    
	    SELECT 
	        CONCAT(first_name,' ', second_name,' is a ',IF(sex = 'm', 'man', 'women'),
            ' who was born in ',(SELECT name FROM cities WHERE id = names.birthplace_city_id),' at ', 
            DATE_FORMAT(birthday, '%D %M %Y'),'.') as bio
        FROM names ORDER BY RAND() LIMIT 1;

    END//

DELIMITER ;

CALL random_name()

-- Мне выпала Sara Karlsson, а вам?  :)

DELIMITER //

CREATE PROCEDURE random_title()

    BEGIN
	    
	    SELECT CONCAT(name,' (',`year`,') — ',`type`)  AS `random title` FROM titles ORDER BY RAND() LIMIT 1;

    END//

DELIMITER ;

-- А посмотреть случай предложил сериал 1936 года «Of Gags». Весьма иронично, не так ли? :)
