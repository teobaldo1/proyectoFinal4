-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal4
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacoras`
--

DROP TABLE IF EXISTS `bitacoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacoras` (
  `id_bitacora` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bitacora` varchar(255) NOT NULL,
  `id_usuario` bigint(20) unsigned NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `so` varchar(255) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_bitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoras`
--

LOCK TABLES `bitacoras` WRITE;
/*!40000 ALTER TABLE `bitacoras` DISABLE KEYS */;
INSERT INTO `bitacoras` VALUES (1,'Voluptatum at iusto eum accusantium. Et tenetur et modi pariatur voluptas. Amet nemo omnis quasi voluptas ratione. Et ut ut dolorum dolores iste ut quae tempora.',4,'1970-10-04','2003-10-08','857-754-5170','Mr. Kim Rohan','sawayn.jett@dickinson.com','althea42','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,'Sed placeat harum laborum. Dolorem tenetur impedit molestiae ex rerum quia ut repellat.',9,'1976-03-29','1984-09-07','458-989-4517','Priscilla O\'Connell','lesch.helena@gmail.com','wcremin','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,'Provident tempore molestias labore nobis vitae animi. Temporibus ea ipsum harum dolorem qui iure. Accusamus non nesciunt et non consequatur beatae sit.',9,'1992-02-09','1982-06-28','(681) 745-3940','Hans Thiel','nettie78@daniel.com','rondricka','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,'Ex exercitationem sed vel aliquam. Quis officiis vel reiciendis ratione ex. Eum culpa alias dignissimos quos minima incidunt voluptas. Consequatur at natus voluptas delectus iure autem.',9,'1998-03-10','1987-07-08','+1 (248) 753-2560','Franco Runte','myrtice.dibbert@koch.com','juanita64','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,'Sunt mollitia sunt aut odit nihil sit consequuntur. Impedit similique voluptas est et. Est eum quam omnis accusantium magnam alias.',2,'2011-10-14','1972-06-29','1-347-617-2266','Rosalee McCullough','aoconnell@smitham.com','deckow.gaston','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,'Tempore quibusdam adipisci qui nostrum omnis facilis praesentium. Ipsum veniam est vel consectetur consectetur. Praesentium mollitia quia deserunt temporibus voluptatibus facilis.',8,'1995-08-23','1982-07-22','+1-240-730-8544','Lorenz White','annabell58@spinka.com','virginia78','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,'Suscipit tempore ratione qui dolores. Iste magni modi aut reiciendis eos. Doloribus eos ipsam est explicabo vitae.',6,'2012-07-16','1997-08-12','(559) 791-2794','Prof. Jeromy Runolfsson DDS','frieda.corwin@gmail.com','kunde.cali','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,'Nisi eum odit ab suscipit non quia qui. Cumque ut assumenda iure ipsa illo ducimus. Excepturi voluptas earum natus sint.',6,'2014-07-16','2017-01-10','726.682.1206','Luciano Lindgren','freddy.davis@gerhold.org','okeefe.kaya','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,'Qui illo qui non. Adipisci id natus est explicabo. Hic eligendi molestiae voluptates eum ut facilis. Necessitatibus error quaerat deleniti.',3,'1999-10-27','1986-08-22','762-982-0358','Eulah Hills','neal73@hotmail.com','nmayer','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,'Placeat accusamus voluptas veritatis cum alias nulla et accusantium. Possimus laboriosam aliquam in veritatis quasi sequi atque. Sit et alias quo autem.',7,'1983-08-20','1981-03-02','+1 (970) 477-0546','Coy Considine','hill.pinkie@mckenzie.info','michale73','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `bitacoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enlaces`
--

DROP TABLE IF EXISTS `enlaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enlaces` (
  `id_enlace` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pagina` bigint(20) unsigned NOT NULL,
  `id_rol` bigint(20) unsigned NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fechaCreacion` varchar(255) NOT NULL,
  `fechaModificacion` varchar(255) NOT NULL,
  `usuarioCreacion` varchar(255) NOT NULL,
  `usuarioModificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_enlace`),
  KEY `enlaces_id_pagina_foreign` (`id_pagina`),
  KEY `enlaces_id_rol_foreign` (`id_rol`),
  CONSTRAINT `enlaces_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `paginas` (`id_pagina`),
  CONSTRAINT `enlaces_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enlaces`
--

LOCK TABLES `enlaces` WRITE;
/*!40000 ALTER TABLE `enlaces` DISABLE KEYS */;
INSERT INTO `enlaces` VALUES (1,1,7,'Repellat corporis et natus et. Qui et dolores esse. In consequuntur consequatur nulla eos repudiandae distinctio eveniet.','2018-01-07','2006-01-07','halvorson.rebecca','breilly','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,8,9,'Et ad ut unde eos necessitatibus quas. In fuga mollitia aut aliquam in excepturi mollitia qui. Voluptas nostrum soluta sit sit. Voluptatem dolor possimus consectetur.','1996-10-08','1992-05-22','lfranecki','ella11','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,7,7,'Quibusdam aut architecto molestias harum. Facilis sit iusto inventore animi distinctio sapiente. Cupiditate consequuntur enim ab possimus veritatis.','1991-07-03','2006-06-25','turcotte.alek','margot60','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,9,1,'Libero quasi temporibus aut perferendis. Natus nulla officiis sit debitis non. Ut perferendis provident beatae perspiciatis earum dolor.','1993-11-29','1973-08-27','emelia44','jake00','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,10,8,'Sint nostrum molestiae assumenda non. Quasi ut qui et aperiam ab. Corrupti non aut quasi voluptas non rerum doloribus.','1995-06-04','1999-12-23','king.aletha','kgoldner','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,2,6,'Quis numquam quis sunt quod eum sed. Dicta earum ipsa ea hic explicabo. Quas natus beatae nesciunt non et.','2023-01-15','1982-03-27','iheaney','marlen76','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,2,7,'Iure tenetur quaerat et debitis. Molestias autem qui fugit. Et quia et vel ea sed sequi. Repudiandae voluptatem excepturi eaque odit.','1974-08-03','1982-06-16','lwest','kristina06','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,2,9,'Fugit odit repudiandae omnis harum et non atque. Error dicta rerum quod eaque. Vero culpa quia et fuga id. Molestiae molestiae esse suscipit ad praesentium eveniet.','2020-08-31','1990-02-19','damaris66','nicole92','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,3,10,'Aut autem omnis aut perferendis et. Aut quis nisi non optio. Quia hic omnis officia commodi.','1974-09-05','1970-12-17','raquel62','hyatt.abbie','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,6,3,'Labore sapiente eum autem atque quibusdam iusto. Repellat voluptate placeat laborum fugiat. Accusamus blanditiis reiciendis nisi consequatur. Est harum dolorum consequatur aliquid nemo impedit odit.','1972-09-13','1971-04-21','letha44','adrien.blick','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `enlaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_11_30_023831_create_paginas_table',1),(6,'2023_11_30_023855_create_personas_table',1),(7,'2023_11_30_024304_create_rols_table',1),(8,'2023_11_30_024345_create_enlaces_table',1),(9,'2023_11_30_024418_create_usuarios_table',1),(10,'2023_11_30_024509_create_bitacoras_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paginas` (
  `id_pagina` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fechaCreacion` varchar(255) NOT NULL,
  `fechaModificacion` varchar(255) NOT NULL,
  `usuarioCreacion` varchar(255) NOT NULL,
  `usuarioModificacion` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pagina`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
INSERT INTO `paginas` VALUES (1,'2002-10-11','1979-03-10','kgreenfelder','kallie02','http://www.friesen.com/','Miss Barbara Schumm','Lavina Roob','Qui porro voluptatem accusamus cumque et neque autem. Eos ut a autem nihil eius neque debitis qui. Cupiditate voluptatibus voluptatem qui quidem aspernatur aut velit.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\a3e7bca92c60f5bc7692df011af164c4.png','Lexus Kohler','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,'1975-08-04','1988-07-16','moore.pedro','beer.mable','http://toy.com/assumenda-officiis-ipsam-dignissimos-nobis-amet-ut-odio','Mr. Tomas Haag','Gennaro Corwin','Eum itaque ipsa qui autem est iusto. Sapiente nam eligendi sed sit odit. Quibusdam qui ut dolores natus velit vel.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\d4770cd25866037dc20c81ae58dae951.png','Miss Meghan Nader V','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,'2022-12-27','1991-02-11','jayme.hirthe','vfranecki','http://www.jacobson.biz/','Tressie Jenkins','Dr. Arnulfo Kub II','Accusamus itaque perferendis sunt suscipit quasi. Velit sint aut et ut deleniti neque animi. Omnis ipsum odio provident sunt porro ut sed.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\0061e48842ed3fb1b535efab49b2bf45.png','Darrin Mills Jr.','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,'1994-01-07','1984-02-22','qfahey','genesis99','http://welch.com/','Mossie Davis','Dr. Rosalind Jacobson','Ab in tempora qui. Itaque libero et aliquid temporibus aut consectetur tempore. Dicta numquam alias ad unde hic modi sequi ut. Quia eligendi et ex quisquam eos quis numquam.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\90e0a8f3333d4fcd51ec12ea6d853443.png','Mrs. Gabrielle Gaylord','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,'2002-11-14','2008-10-26','kessler.ruben','jmuller','http://www.veum.com/non-id-dolorem-accusamus-eligendi-explicabo-tempore-at-qui','Edwina Marks MD','Garret Farrell','Temporibus explicabo hic porro a nihil occaecati maxime magni. Nesciunt exercitationem numquam qui saepe soluta nam. Fugit voluptas repellat officia ad.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\e65ce5c459fd5eb56d088bc0ac8510cd.png','Annabelle Daniel','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,'2006-01-21','1979-07-24','cali.hintz','hdubuque','http://schultz.com/ullam-doloribus-voluptatem-ea-temporibus-non-est-iusto','Christelle Ortiz','Ms. Karlee Stamm','Amet ducimus laboriosam quis aliquid voluptatem. Qui doloribus totam accusantium officiis vel ut. Aperiam sunt ut dolores illo. Non non labore qui perferendis adipisci modi nam iste.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\a32b7282f55bc98bb3998c0679cf1ba2.png','Luna Adams','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,'1986-03-15','1981-08-14','schroeder.henderson','ndamore','http://streich.biz/','Conrad Little','Amy Littel','Doloremque temporibus sit fugiat provident corrupti quidem aut. Pariatur doloribus sed in numquam. Et est praesentium eum eaque amet quis a. Totam quia cumque sit porro laudantium corporis tempora.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\6239f357e4c16e4869c6df910eae3338.png','Julianne Rau','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,'1971-05-09','1976-04-03','fconroy','dana27','https://www.moen.com/in-vel-quo-tempore','Orlo Windler','Aiden Becker','Qui dolore est ut at. Illo laudantium optio consequatur harum. Nisi officiis iure quibusdam enim quis.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\706f0e3b0d30dc5403d7a093891b67d1.png','Amari Heller','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,'1994-12-17','1976-06-26','hudson55','dustin45','http://corwin.net/nesciunt-sed-mollitia-soluta-nihil-recusandae-qui-reprehenderit-sunt','Dr. Amina Macejkovic Jr.','Dr. Beryl Parker IV','Expedita magni velit dolor dignissimos. Quia autem officia vero odio ut animi. Culpa quaerat ab molestiae doloremque earum sint aut.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\ac9c6c2f732429c80d140a7725e2f11e.png','Karina Tillman','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,'2010-01-15','2013-01-29','gabriella46','kub.dax','http://www.sauer.net/','Ms. Isabell Kuhn','Edmond Bradtke','Qui ut tenetur veritatis odit hic voluptas. Pariatur in quo consequuntur fugit consequuntur commodi eveniet.','C:\\Users\\Lenovo\\AppData\\Local\\Temp\\fc8e5d165e2df4fc49d6304ae522ab87.png','Kellen Koch V','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id_persona` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `primerNombre` varchar(255) NOT NULL,
  `segundoNombre` varchar(255) NOT NULL,
  `primerApellido` varchar(255) NOT NULL,
  `segundoApellido` varchar(255) NOT NULL,
  `fechaCreacion` varchar(255) NOT NULL,
  `fechaModificacion` varchar(255) NOT NULL,
  `usuarioCreacion` varchar(255) NOT NULL,
  `usuarioModificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Cleve','Sean Maggio','Hill','Williamson','2012-08-09','2010-05-12','pnitzsche','davin37','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,'Mireille','Angelina Barrows I','Lynch','Jast','1988-05-14','2010-09-21','tremaine81','rice.lilyan','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,'Rosella','Darlene Franecki','Hermiston','Hudson','1979-05-29','2004-11-14','ydibbert','fjaskolski','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,'Erika','Natasha Towne','Luettgen','Cartwright','2004-07-23','2008-12-27','labadie.corene','alycia12','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,'Alfred','Richard Towne','Stoltenberg','Prohaska','1985-08-10','1992-12-19','qokuneva','gislason.hobart','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,'Uriel','Ethyl Bartell','Champlin','Yost','2018-12-11','1974-03-16','kirstin44','ernestine.wiza','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,'Conner','Ms. Vincenza Gaylord','Collier','Hills','2005-07-09','1988-07-29','jerome10','stiedemann.lowell','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,'Reva','Hilton Anderson IV','VonRueden','Towne','1978-09-26','2007-03-05','susana03','ophelia53','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,'Melisa','Mr. Sage Abernathy','Bailey','Sporer','1997-01-14','1989-04-03','lang.rubie','okon.kayla','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,'Breana','Antonietta Stark','Carroll','Herzog','1991-10-30','1980-04-24','uvon','gardner.morissette','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) NOT NULL,
  `fechaCreacion` varchar(255) NOT NULL,
  `fechaModificacion` varchar(255) NOT NULL,
  `usuarioCreacion` varchar(255) NOT NULL,
  `usuarioModificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Mr. Dillon Ward','1983-07-12','1990-02-02','francisco86','dedric96','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,'Mrs. Nellie Wehner','2001-09-20','1979-11-09','yesenia11','wunsch.arely','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,'Prof. Benton Schamberger DDS','2015-12-12','1976-03-06','chodkiewicz','zulauf.cecile','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,'Isaiah Thompson','1994-09-27','1980-10-20','raleigh04','zane74','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,'Benedict O\'Kon III','2015-11-14','2015-01-08','kris.junius','armstrong.lindsey','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,'Armando Goodwin','2007-05-30','1972-06-11','wrutherford','pkuhlman','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,'Porter Ledner','2021-04-15','2001-08-05','huels.winnifred','jadyn24','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,'Miss Sister Romaguera DVM','2022-11-09','2020-11-12','bailey61','csauer','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,'Katelyn Legros','2006-07-20','2014-09-19','ykling','daniel.dameon','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,'Baylee Thompson IV','1983-05-10','1990-05-07','fritsch.juanita','schaefer.jasper','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ms. Kelly Muller','greyson.ratke@example.com','2023-12-06 09:55:38','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','kJQAt6hTh0','2023-12-06 09:55:39','2023-12-06 09:55:39'),(2,'Dr. Gayle Kling','abshire.callie@example.net','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','GO89IwLoEv','2023-12-06 09:55:39','2023-12-06 09:55:39'),(3,'Judah Williamson','fanny70@example.net','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','xRTmg5sKyF','2023-12-06 09:55:39','2023-12-06 09:55:39'),(4,'Carmen Ryan','deshawn11@example.org','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','atKie17Rsk','2023-12-06 09:55:39','2023-12-06 09:55:39'),(5,'Elvis Lynch','uparisian@example.com','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','xG4uv0JTjQ','2023-12-06 09:55:39','2023-12-06 09:55:39'),(6,'Lavinia Howell','maude21@example.net','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','9ZSEBqSkBP','2023-12-06 09:55:39','2023-12-06 09:55:39'),(7,'Ursula Gaylord IV','gerlach.susan@example.org','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','bk28LQ52qV','2023-12-06 09:55:39','2023-12-06 09:55:39'),(8,'Flavie Kirlin','ycummerata@example.com','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','1Emgq7EBtb','2023-12-06 09:55:39','2023-12-06 09:55:39'),(9,'Miss Janet Zulauf','asha16@example.org','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','t0xnLQyaju','2023-12-06 09:55:39','2023-12-06 09:55:39'),(10,'Prof. Jerad Daniel III','horacio10@example.org','2023-12-06 09:55:39','$2y$12$XMt1yOd.tcTytZ1H/PKqU./L7HKFCmaJ7HWElKz0yWU1TFIu1wjZu','BwMs6HZUCy','2023-12-06 09:55:39','2023-12-06 09:55:39'),(11,'admin','admin@admin','2023-12-06 00:30:08','$2y$12$dv7l9FODg0/enEffohCFeuAc6wxN8qx7yBzdPwX/99BOjKwQZdOEq',NULL,'2023-12-06 09:58:17','2023-12-06 09:58:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_persona` bigint(20) unsigned NOT NULL,
  `id_rol` bigint(20) unsigned NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `fechaCreacion` varchar(255) NOT NULL,
  `fechaModificacion` varchar(255) NOT NULL,
  `usuarioCreacion` varchar(255) NOT NULL,
  `usuarioModificacion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `usuarios_id_persona_foreign` (`id_persona`),
  KEY `usuarios_id_rol_foreign` (`id_rol`),
  CONSTRAINT `usuarios_id_persona_foreign` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  CONSTRAINT `usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,2,3,'antonette.fay','georgette.howe','2002-05-17','2017-10-26','1970-04-27','laverna.raynor','umonahan','2023-12-06 09:55:38','2023-12-06 09:55:38'),(2,8,3,'osvaldo.von','zmcdermott','2002-06-21','2021-09-12','2018-12-08','mcarroll','cveum','2023-12-06 09:55:38','2023-12-06 09:55:38'),(3,3,4,'cummerata.haven','brianne85','2009-01-05','1982-03-08','2014-10-19','lhane','xjakubowski','2023-12-06 09:55:38','2023-12-06 09:55:38'),(4,6,7,'windler.jennings','justyn78','2022-09-07','1970-09-13','1989-01-23','iarmstrong','qflatley','2023-12-06 09:55:38','2023-12-06 09:55:38'),(5,6,10,'naomi19','nhettinger','2022-01-07','1982-08-12','1992-12-30','emma31','gusikowski.camden','2023-12-06 09:55:38','2023-12-06 09:55:38'),(6,4,1,'romaguera.domenic','mnikolaus','2000-08-22','2000-06-10','2016-08-30','kunze.ward','carmen.russel','2023-12-06 09:55:38','2023-12-06 09:55:38'),(7,7,5,'heaven60','violette38','1986-01-19','1983-06-06','1972-03-07','gaston.franecki','kaylin.ernser','2023-12-06 09:55:38','2023-12-06 09:55:38'),(8,7,10,'zechariah17','lhickle','2002-02-14','1992-03-21','2004-05-17','qmonahan','abbott.gisselle','2023-12-06 09:55:38','2023-12-06 09:55:38'),(9,1,5,'grutherford','rosalee86','1982-04-10','2009-09-22','2004-11-21','qhalvorson','aberge','2023-12-06 09:55:38','2023-12-06 09:55:38'),(10,4,9,'bennie70','claire.tillman','2022-12-10','1973-11-23','2011-05-06','kennith.hagenes','john25','2023-12-06 09:55:38','2023-12-06 09:55:38');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectofinal4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06  0:04:27
