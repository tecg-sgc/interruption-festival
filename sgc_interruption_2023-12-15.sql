# ************************************************************
# Sequel Ace SQL dump
# Version 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.27)
# Database: sgc_interruption
# Generation Time: 2023-12-15 16:19:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table artists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `artists`;

CREATE TABLE `artists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `thumb` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `genre_id` int unsigned DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `birthday` date DEFAULT NULL,
  `popularity` int unsigned NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artists_genre_id_genres_id` (`genre_id`),
  KEY `artists_country_id_countries_id` (`country_id`),
  CONSTRAINT `artists_country_id_countries_id` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `artists_genre_id_genres_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;

INSERT INTO `artists` (`id`, `thumb`, `name`, `genre_id`, `country_id`, `birthday`, `popularity`, `youtube`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'abstral-official-bdlMO9z5yco-unsplash.jpg','Carl Cox',1,1,'1980-07-12',5000,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:53:25','2023-11-09 10:53:25',NULL),
	(2,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Nina Kraviz',1,2,'1980-07-12',43234,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:53:56','2023-11-09 10:53:56',NULL),
	(3,'joecalih-UmTZqmMvQcw-unsplash.jpg','Adam Beyer',1,3,'1980-07-12',34123,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:54:31','2023-11-09 10:54:31',NULL),
	(4,'abstral-official-bdlMO9z5yco-unsplash.jpg','Charlotte de Witte',1,4,'1980-07-12',43523,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:55:02','2023-11-09 10:55:02',NULL),
	(5,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Richie Hawtin',1,5,'1980-07-12',12341,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:55:33','2023-11-09 10:55:33',NULL),
	(6,'joecalih-UmTZqmMvQcw-unsplash.jpg','Daft Punk',2,6,'1980-07-12',24121,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:56:01','2023-11-09 10:56:01',NULL),
	(7,'abstral-official-bdlMO9z5yco-unsplash.jpg','Calvin Harris',2,11,'1980-07-12',21412,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:56:36','2023-11-09 10:56:36',NULL),
	(8,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Disclosure',2,11,'1980-07-12',123123,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:57:01','2023-11-09 10:57:01',NULL),
	(9,'joecalih-UmTZqmMvQcw-unsplash.jpg','The Chemical Brothers',2,1,'1980-07-12',123123,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:57:26','2023-11-09 10:57:26',NULL),
	(10,'abstral-official-bdlMO9z5yco-unsplash.jpg','Eric Prydz',2,3,'1980-07-12',123123,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:58:07','2023-11-09 10:58:07',NULL),
	(11,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Pendulum',3,7,'1980-07-12',12342,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 10:58:38','2023-11-09 10:58:38',NULL),
	(12,'joecalih-UmTZqmMvQcw-unsplash.jpg','Noisia',3,8,'1980-07-12',23412,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:07:58','2023-11-09 11:07:58',NULL),
	(13,'abstral-official-bdlMO9z5yco-unsplash.jpg','Andy C',3,1,'1980-07-12',214124,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:08:38','2023-11-09 11:08:38','2023-12-01 16:54:33'),
	(14,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Sub Focus',3,1,'1980-07-12',123431,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:09:03','2023-11-09 11:09:03',NULL),
	(15,'joecalih-UmTZqmMvQcw-unsplash.jpg','Netsky',3,4,'1980-07-12',3241234,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:09:43','2023-11-09 11:09:43',NULL),
	(16,'abstral-official-bdlMO9z5yco-unsplash.jpg','Armin van Buuren',4,8,'1980-07-12',24124,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:10:18','2023-11-09 11:10:18',NULL),
	(17,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Tiesto',4,8,'1980-07-12',12412412,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:10:47','2023-11-09 11:10:47',NULL),
	(18,'joecalih-UmTZqmMvQcw-unsplash.jpg','Above & Beyond',4,1,'1980-07-12',1241243,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:11:17','2023-11-09 11:11:17',NULL),
	(19,'abstral-official-bdlMO9z5yco-unsplash.jpg','Paul van Dyk',4,9,'1980-07-12',124124,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:12:04','2023-11-09 11:12:04',NULL),
	(20,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Aly & Fila',4,10,'1980-07-12',124214,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:12:25','2023-11-09 11:12:25',NULL),
	(21,'joecalih-UmTZqmMvQcw-unsplash.jpg','Skrillex',5,12,'1980-07-12',214312,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:12:58','2023-11-09 11:12:58',NULL),
	(22,'abstral-official-bdlMO9z5yco-unsplash.jpg','Zeds Dead',5,5,'1980-07-12',12341234,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:18:05','2023-11-09 11:18:05',NULL),
	(23,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Rusko',5,1,'1980-07-12',21412,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:18:29','2023-11-09 11:18:29',NULL),
	(24,'joecalih-UmTZqmMvQcw-unsplash.jpg','Flux Pavilion',5,1,'1980-07-12',23124,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 11:19:52','2023-11-09 11:19:52',NULL),
	(25,'abstral-official-bdlMO9z5yco-unsplash.jpg','Excision',5,5,'1980-07-12',23523,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:18:43','2023-11-09 14:18:43',NULL),
	(26,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Moby',6,12,'1980-07-12',345634,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:19:11','2023-11-09 14:19:11',NULL),
	(27,'joecalih-UmTZqmMvQcw-unsplash.jpg','Enigma',6,9,'1980-07-12',436346,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:19:54','2023-11-09 14:19:54',NULL),
	(28,'abstral-official-bdlMO9z5yco-unsplash.jpg','Brian Eno',6,1,'1980-07-12',325235,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:20:25','2023-11-09 14:20:25',NULL),
	(29,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Tycho',6,12,'1980-07-12',32523,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:20:45','2023-11-09 14:20:45',NULL),
	(30,'joecalih-UmTZqmMvQcw-unsplash.jpg','Carbon Based Lifeforms',6,3,'1980-07-12',3531245,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:21:16','2023-11-09 14:21:16',NULL),
	(31,'abstral-official-bdlMO9z5yco-unsplash.jpg','The Postal Service',7,12,'1980-07-12',14513,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:21:43','2023-11-09 14:21:43',NULL),
	(32,'soundtrap-rAT6FJ6wltE-unsplash.jpg','CHVRCHES',7,11,'1980-07-12',12341234,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:22:23','2023-11-09 14:22:23',NULL),
	(33,'abstral-official-bdlMO9z5yco-unsplash.jpg','La Roux',7,1,'1980-07-12',12421354,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:22:51','2023-11-09 14:22:51',NULL),
	(34,'abstral-official-bdlMO9z5yco-unsplash.jpg','ODESZA',7,12,'1980-07-12',12444,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:23:24','2023-11-09 14:23:24',NULL),
	(35,'soundtrap-rAT6FJ6wltE-unsplash.jpg','The Knife',7,3,'1980-07-12',23412,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:23:51','2023-11-09 14:23:51',NULL),
	(36,'joecalih-UmTZqmMvQcw-unsplash.jpg','Headhunterz',8,8,'1980-07-12',21423432,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:25:10','2023-11-09 14:25:10',NULL),
	(37,'abstral-official-bdlMO9z5yco-unsplash.jpg','Brennan Heart',8,8,'1980-07-12',124141,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:25:35','2023-11-09 14:25:35',NULL),
	(38,'soundtrap-rAT6FJ6wltE-unsplash.jpg','Wildstylez',8,8,'1980-07-12',24423332,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:27:06','2023-11-09 14:27:06',NULL),
	(39,'joecalih-UmTZqmMvQcw-unsplash.jpg','Coone',8,4,'1980-07-12',235415,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:28:04','2023-11-09 14:28:04',NULL),
	(40,'abstral-official-bdlMO9z5yco-unsplash.jpg','Angerfist',8,8,'1980-07-12',234235,'https://www.youtube.com/watch?v=LIPc1cfS-oQ','2023-11-09 14:28:37','2023-11-09 14:28:37',NULL);

/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Angleterre','2023-11-09 10:48:44','2023-11-09 10:48:44',NULL),
	(2,'Russie','2023-11-09 10:48:52','2023-11-09 10:48:52',NULL),
	(3,'Suède','2023-11-09 10:49:04','2023-11-09 10:49:04',NULL),
	(4,'Belgique','2023-11-09 10:49:50','2023-11-09 10:49:50',NULL),
	(5,'Canada','2023-11-09 10:50:00','2023-11-09 10:50:00',NULL),
	(6,'France','2023-11-09 10:50:11','2023-11-09 10:50:11',NULL),
	(7,'Australie','2023-11-09 10:50:23','2023-11-09 10:50:23',NULL),
	(8,'Pays-Bas','2023-11-09 10:50:57','2023-11-09 10:50:57',NULL),
	(9,'Allemagne','2023-11-09 10:51:21','2023-11-09 10:51:21',NULL),
	(10,'égypte','2023-11-09 10:51:45','2023-11-09 10:51:45',NULL),
	(11,'écosse','2023-11-09 10:52:16','2023-11-09 10:52:16',NULL),
	(12,'états-unis','2023-11-09 11:13:16','2023-11-09 11:13:16',NULL);

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table days
# ------------------------------------------------------------

DROP TABLE IF EXISTS `days`;

CREATE TABLE `days` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `edition_id` int unsigned NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `days_edition_id_editions_id` (`edition_id`),
  CONSTRAINT `days_edition_id_editions_id` FOREIGN KEY (`edition_id`) REFERENCES `editions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;

INSERT INTO `days` (`id`, `edition_id`, `date`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'2019-07-11','2023-11-09 14:33:44','2023-11-09 14:33:44',NULL),
	(2,1,'2019-07-12','2023-11-09 14:36:40','2023-11-09 14:36:40',NULL),
	(3,1,'2019-07-13','2023-11-09 14:37:43','2023-11-09 14:37:43',NULL),
	(4,1,'2019-07-14','2023-11-09 14:37:58','2023-11-09 14:37:58',NULL),
	(5,2,'2020-07-09','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(6,2,'2020-07-10','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(7,2,'2020-07-11','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(8,2,'2020-07-12','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(9,3,'2021-07-08','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(10,3,'2021-07-09','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(11,3,'2021-07-10','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(12,3,'2021-07-11','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(13,4,'2022-07-07','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(14,4,'2022-07-08','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(15,4,'2022-07-09','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(16,4,'2022-07-10','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(17,5,'2023-07-06','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(18,5,'2023-07-07','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(19,5,'2023-07-08','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(20,5,'2023-07-09','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(21,6,'2024-07-11','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(22,6,'2024-07-12','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(23,6,'2024-07-13','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL),
	(24,6,'2024-07-14','2023-11-09 14:41:40','2023-11-09 14:41:40',NULL);

/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table editions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `editions`;

CREATE TABLE `editions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `current` tinyint unsigned NOT NULL,
  `started_at` timestamp NOT NULL,
  `ended_at` timestamp NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `editions` WRITE;
/*!40000 ALTER TABLE `editions` DISABLE KEYS */;

INSERT INTO `editions` (`id`, `title`, `current`, `started_at`, `ended_at`, `address`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Interruption 2019: Sonic Odyssey',0,'2019-07-11 09:54:09','2019-07-14 09:54:09','belgique','2023-11-09 09:56:59','2023-11-09 09:56:59',NULL),
	(2,'Interruption 2020: Electric Dreams',0,'2020-07-09 09:57:01','2020-07-12 09:57:01','belgique','2023-11-09 09:58:00','2023-11-09 09:58:00',NULL),
	(3,'Interruption 2021: Harmony Unleashed',0,'2021-07-08 09:58:02','2021-07-11 09:58:02','belgique','2023-11-09 09:59:03','2023-11-09 09:59:03',NULL),
	(4,'Interruption 2022: Ethereal Escapes',0,'2023-12-01 16:40:15','2022-07-10 09:59:07','belgique','2023-11-09 10:00:01','2023-11-09 10:00:01',NULL),
	(5,'Interruption 2023: Rhythm Resurgence',0,'2023-07-06 10:00:10','2023-07-09 10:00:10','belgique','2023-11-09 10:00:59','2023-11-09 10:00:59',NULL),
	(6,'Interruption 2024: Synaptic Fusion',1,'2023-12-01 16:40:12','2024-07-14 10:01:02','belgique','2023-11-09 10:01:40','2023-11-09 10:01:40',NULL);

/*!40000 ALTER TABLE `editions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table genres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Techno','2023-11-09 09:33:10','2023-11-09 09:33:10',NULL),
	(2,'House','2023-11-09 09:33:34','2023-11-09 09:33:34',NULL),
	(3,'Drum and Bass','2023-11-09 09:33:52','2023-11-09 09:33:52','2023-12-15 10:02:18'),
	(4,'Trance','2023-11-09 09:34:01','2023-11-09 09:34:01',NULL),
	(5,'Dubstep','2023-11-09 09:34:10','2023-11-09 09:34:10',NULL),
	(6,'Chillout / Ambient','2023-11-09 09:34:28','2023-11-09 09:34:28',NULL),
	(7,'Electro-Pop','2023-11-09 09:34:42','2023-11-09 09:34:42',NULL),
	(8,'Hardstyle','2023-11-09 09:34:53','2023-11-09 09:34:53',NULL);

/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` (`id`, `from`, `email`, `company`, `content`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'un nom','email@test.com','Test','Salut les copains','2023-12-15 12:00:22','2023-12-15 12:00:22',NULL),
	(2,'Toon Van den Bos','toon@whitecube.be','Whitecube','Ceci est un message de test !','2023-12-15 12:02:03','2023-12-15 12:02:03',NULL),
	(3,'Toon Van den Bos','toon@whitecube.be','Whitecube','Test','2023-12-15 17:08:04','2023-12-15 17:08:04',NULL);

/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `template` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_uri_unique` (`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table schedules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schedules`;

CREATE TABLE `schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `day_id` int unsigned NOT NULL,
  `artist_id` int unsigned NOT NULL,
  `stage_id` int unsigned NOT NULL,
  `started_at` time NOT NULL,
  `ended_at` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_day_id_days_id` (`day_id`),
  KEY `schedules_artist_id_artists_id` (`artist_id`),
  KEY `schedules_stage_id_stages_id` (`stage_id`),
  CONSTRAINT `schedules_artist_id_artists_id` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `schedules_day_id_days_id` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE,
  CONSTRAINT `schedules_stage_id_stages_id` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;

INSERT INTO `schedules` (`id`, `day_id`, `artist_id`, `stage_id`, `started_at`, `ended_at`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,21,1,1,'13:30:00','14:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(2,21,2,1,'14:00:00','14:30:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(3,21,3,1,'14:30:00','15:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(4,21,4,2,'14:00:00','15:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(5,21,5,2,'15:00:00','17:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(6,21,6,3,'15:00:00','17:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(7,21,7,3,'17:00:00','20:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(8,21,8,3,'20:00:00','23:30:00','2023-11-09 14:53:12','2023-11-09 14:53:12','2023-12-15 11:21:45'),
	(9,22,9,4,'13:00:00','15:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(10,22,10,4,'15:00:00','18:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(11,22,11,5,'14:00:00','16:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(12,22,12,5,'16:00:00','18:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(13,22,13,6,'16:00:00','18:00:00','2023-11-09 14:53:12','2023-11-09 14:53:12',NULL),
	(14,24,26,17,'23:00:00','01:00:00','2023-12-15 11:20:08','2023-12-15 11:20:08',NULL),
	(15,23,11,17,'23:00:00','01:00:00','2023-12-15 15:21:05','2023-12-15 15:21:05',NULL);

/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int unsigned NOT NULL,
  `order` int unsigned NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `content` json NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_pages_id_slug_unique` (`page_id`,`slug`),
  CONSTRAINT `sections_page_id_pages_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table stages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stages`;

CREATE TABLE `stages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `genre_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stages_genre_id_genres_id` (`genre_id`),
  CONSTRAINT `stages_genre_id_genres_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `stages` WRITE;
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;

INSERT INTO `stages` (`id`, `name`, `location`, `capacity`, `genre_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Voltage Synapse','Fond',10000,1,'2023-11-09 09:41:12','2023-11-09 09:41:12',NULL),
	(2,'Rhythmic Pulse','fond droite',10000,1,'2023-11-09 09:41:44','2023-11-09 09:41:44',NULL),
	(3,'Groove Grovelers','fond gauche',5000,2,'2023-11-09 09:42:12','2023-11-09 09:42:12',NULL),
	(4,'Beat Bliss','gauche',7500,2,'2023-11-09 09:42:41','2023-11-09 09:42:41',NULL),
	(5,'Bass Surgeons','fond',4600,3,'2023-11-09 09:43:13','2023-11-09 09:43:13',NULL),
	(6,'Jungle Breakmasters','milieu gauche',4566,3,'2023-11-09 09:43:36','2023-11-09 09:43:36',NULL),
	(7,'Trance Nebula','Milieu droit',5677,4,'2023-11-09 09:44:03','2023-11-09 09:44:03',NULL),
	(8,'Dreamwave Explorers','front droit',9800,4,'2023-11-09 09:44:35','2023-11-09 09:44:35',NULL),
	(9,'Wobblequake Syndicate','front gauche',8700,5,'2023-11-09 09:45:29','2023-11-09 09:45:29',NULL),
	(10,'Bassquake Beasts','front gauche',4875,5,'2023-11-09 09:46:25','2023-11-09 09:46:25',NULL),
	(11,'Ethereal Horizon','droite',3522,6,'2023-11-09 09:46:47','2023-11-09 09:46:47',NULL),
	(12,'Serene Soundscapes','droite',3454,6,'2023-11-09 09:47:06','2023-11-09 09:47:06',NULL),
	(13,'Neon Dreamscape','gauche',35623,7,'2023-11-09 09:47:33','2023-11-09 09:47:33',NULL),
	(14,'Synthwave Sparklers','droite',3456,7,'2023-11-09 09:49:14','2023-11-09 09:49:14',NULL),
	(15,'Hard Impact Unit','gauche',12345,8,'2023-11-09 09:50:25','2023-11-09 09:50:25',NULL),
	(16,'Sonic Barricade','droite',6543,8,'2023-11-09 09:51:13','2023-11-09 09:51:13',NULL),
	(17,'mainstage','centre',60000,8,'2023-11-09 09:52:50','2023-11-09 09:52:50',NULL);

/*!40000 ALTER TABLE `stages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ticket_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ticket_user`;

CREATE TABLE `ticket_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_user_ticket_id_tickets_id` (`ticket_id`),
  KEY `ticket_user_user_id_users_id` (`user_id`),
  CONSTRAINT `ticket_user_ticket_id_tickets_id` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  CONSTRAINT `ticket_user_user_id_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tickets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `edition_id` int unsigned NOT NULL,
  `day_id` int unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` int unsigned NOT NULL,
  `vat` int unsigned NOT NULL,
  `discount` int unsigned DEFAULT NULL,
  `content` json NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_edition_id_editions_id` (`edition_id`),
  KEY `tickets_day_id_days_id` (`day_id`),
  CONSTRAINT `tickets_day_id_days_id` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tickets_edition_id_editions_id` FOREIGN KEY (`edition_id`) REFERENCES `editions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;

INSERT INTO `tickets` (`id`, `edition_id`, `day_id`, `name`, `price`, `vat`, `discount`, `content`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,6,21,'Thursday tickets',5000,21,NULL,'{}','2023-12-08 10:38:00','2023-12-08 10:38:00',NULL),
	(2,6,22,'Friday tickets',6000,21,NULL,'{}','2023-12-08 10:38:19','2023-12-08 10:38:19',NULL),
	(3,6,23,'Saturday tickets',5000,21,NULL,'{}','2023-12-08 10:38:41','2023-12-08 10:38:41',NULL),
	(4,6,24,'Sunday tickets',7000,21,NULL,'{}','2023-12-08 10:39:07','2023-12-08 10:39:07',NULL),
	(5,6,NULL,'Combi tickets',199999,21,30,'{}','2023-12-08 10:39:43','2023-12-08 10:39:43',NULL);

/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
