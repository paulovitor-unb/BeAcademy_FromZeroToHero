CREATE DATABASE  IF NOT EXISTS `db_from_zero_to_hero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_from_zero_to_hero`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_from_zero_to_hero
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('00f96f90-72b8-4227-821f-9cc02ee72613','comment09','966451b7-f046-4f30-8560-8fad74b3324e','6645a7f4-1188-4ca9-8d74-ad9e2a110c10','2022-12-01 17:38:01',NULL),('01b8cc52-0488-4379-a185-ea0b31ac45f6','comment07','d3b94841-bf44-48cf-9509-0a34368c5af1','6645a7f4-1188-4ca9-8d74-ad9e2a110c10','2022-12-01 17:37:59',NULL),('3da401bc-f44f-4550-886a-b23b9d50d9f7','comment05','0c30a1a2-7e99-42aa-b460-af046312d6a5','2a5beecf-6480-4075-a2af-17d49cec5ee9','2022-12-01 17:37:57',NULL),('4e858487-1bbf-4102-9eae-77b73df29e00','comment01','0c30a1a2-7e99-42aa-b460-af046312d6a5','af0881ee-529d-4211-9612-589ab8e72cd4','2022-12-01 17:37:53',NULL),('54ca7458-b2cd-4e2c-b608-92e440f33529','comment02','966451b7-f046-4f30-8560-8fad74b3324e','af0881ee-529d-4211-9612-589ab8e72cd4','2022-12-01 17:37:54',NULL),('6ef6a11f-c260-4fab-8915-62926f3e2f38','comment08','0c30a1a2-7e99-42aa-b460-af046312d6a5','6645a7f4-1188-4ca9-8d74-ad9e2a110c10','2022-12-01 17:38:00',NULL),('78925693-4d5e-43d3-ae88-c8cd83051d01','comment10','d3b94841-bf44-48cf-9509-0a34368c5af1','82c3dc52-5675-4573-b27e-e633d65bb61a','2022-12-01 17:38:02',NULL),('86ce3ef5-e490-4da8-954f-8d07375c2667','comment11','966451b7-f046-4f30-8560-8fad74b3324e','82c3dc52-5675-4573-b27e-e633d65bb61a','2022-12-01 17:38:03',NULL),('924476db-0dd1-40c8-a223-12bcb86d2cb3','comment04','966451b7-f046-4f30-8560-8fad74b3324e','08cc48f6-5b47-4ed4-9065-e7b05d638dec','2022-12-01 17:37:56',NULL),('a1484e8a-45f8-42e4-983d-4c792ca07e1e','comment13','d3b94841-bf44-48cf-9509-0a34368c5af1','40e4bdd1-3b8d-4727-8f7b-2d034e468b78','2022-12-01 17:38:05',NULL),('c4b65498-4ce3-44cf-bdee-d964d3bdf549','comment06','966451b7-f046-4f30-8560-8fad74b3324e','2a5beecf-6480-4075-a2af-17d49cec5ee9','2022-12-01 17:37:58',NULL),('e526371a-47ba-4a7b-949f-6783af54d426','comment03','d3b94841-bf44-48cf-9509-0a34368c5af1','08cc48f6-5b47-4ed4-9065-e7b05d638dec','2022-12-01 17:37:55',NULL),('e5d4f535-7f7c-4133-a733-43db794378d8','comment12','966451b7-f046-4f30-8560-8fad74b3324e','77a1b418-7a67-47a7-b720-24021d5d57e0','2022-12-01 17:38:04',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('08cc48f6-5b47-4ed4-9065-e7b05d638dec','post2','0c30a1a2-7e99-42aa-b460-af046312d6a5','2022-12-01 17:37:47',NULL),('2a5beecf-6480-4075-a2af-17d49cec5ee9','post3','d3b94841-bf44-48cf-9509-0a34368c5af1','2022-12-01 17:37:48',NULL),('40e4bdd1-3b8d-4727-8f7b-2d034e468b78','post7','966451b7-f046-4f30-8560-8fad74b3324e','2022-12-01 17:37:52',NULL),('6645a7f4-1188-4ca9-8d74-ad9e2a110c10','post4','966451b7-f046-4f30-8560-8fad74b3324e','2022-12-01 17:37:49',NULL),('77a1b418-7a67-47a7-b720-24021d5d57e0','post6','d3b94841-bf44-48cf-9509-0a34368c5af1','2022-12-01 17:37:51',NULL),('82c3dc52-5675-4573-b27e-e633d65bb61a','post5','0c30a1a2-7e99-42aa-b460-af046312d6a5','2022-12-01 17:37:50',NULL),('af0881ee-529d-4211-9612-589ab8e72cd4','post1','d3b94841-bf44-48cf-9509-0a34368c5af1','2022-12-01 17:37:46',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_followers` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0c30a1a2-7e99-42aa-b460-af046312d6a5','user2','2aa60a8ff7fcd473d321e0146afd9e26df395147',200,'user2@email.com','(61) 23456-7891','1992-02-20','2022-12-01 17:37:44',NULL),('966451b7-f046-4f30-8560-8fad74b3324e','user3','1119cfd37ee247357e034a08d844eea25f6fd20f',100,'user3@email.com','(61) 34567-8912','1993-03-30','2022-12-01 17:37:45',NULL),('d3b94841-bf44-48cf-9509-0a34368c5af1','user1','e38ad214943daad1d64c102faec29de4afe9da3d',400,'user1@email.com','(61) 12345-6789','1991-01-10','2022-12-01 17:37:43',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01 14:39:06
