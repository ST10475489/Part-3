-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: cybersecurity_bot
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `details` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'Bot Started','User launched the application','2026-06-25 23:31:05'),(2,'User Identified','Name set to mpho','2026-06-25 23:31:27'),(3,'Quiz Started','User started the cybersecurity quiz','2026-06-25 23:31:42'),(4,'Bot Started','User launched the application','2026-06-25 23:44:36'),(5,'User Identified','Name set to mpho','2026-06-25 23:44:52'),(6,'Bot Started','User launched the application','2026-06-25 23:45:24'),(7,'User Identified','Name set to mpho','2026-06-25 23:45:51'),(8,'Topic Query','User asked about: passwords','2026-06-25 23:46:35'),(9,'View Tasks','User viewed their task list','2026-06-25 23:47:05'),(10,'View Tasks','User viewed their task list','2026-06-25 23:47:07'),(11,'Quiz Started','User started the cybersecurity quiz','2026-06-25 23:47:16'),(12,'Quiz Started','User started the cybersecurity quiz','2026-06-25 23:47:17'),(13,'Quiz Started','User started the cybersecurity quiz','2026-06-25 23:47:19'),(14,'Bot Started','User launched the application','2026-06-25 23:53:32'),(15,'User Identified','Name set to mpho','2026-06-25 23:53:59'),(16,'Bot Started','User launched the application','2026-06-25 23:58:59'),(17,'User Identified','Name set to mpho','2026-06-25 23:59:24'),(18,'Bot Started','User launched the application','2026-06-26 00:02:47'),(19,'User Identified','Name set to mpho','2026-06-26 00:03:17'),(20,'Bot Started','User launched the application','2026-06-26 00:04:19'),(21,'User Identified','Name set to MPHO','2026-06-26 00:04:50'),(22,'Bot Started','User launched the application','2026-06-26 00:11:10'),(23,'User Identified','Name set to mpho','2026-06-26 00:11:39'),(24,'Bot Started','User launched the application','2026-06-26 00:13:13'),(25,'Bot Started','User launched the application','2026-06-26 00:18:14'),(26,'Bot Started','User launched the application','2026-06-26 00:21:59'),(27,'Bot Started','User launched the application','2026-06-26 00:23:25'),(28,'Bot Started','User launched the application','2026-06-26 00:25:14'),(29,'Bot Started','User launched the application','2026-06-26 00:26:50'),(30,'Bot Started','User launched the application','2026-06-26 00:33:04'),(31,'Bot Started','User launched the application','2026-06-26 00:34:54'),(32,'User Identified','Name set to mpho','2026-06-26 00:35:41'),(33,'Bot Started','User launched the application','2026-06-26 00:40:35'),(34,'User Identified','Name set to mpho','2026-06-26 00:41:01'),(35,'Bot Started','User launched the application','2026-06-26 00:56:44'),(36,'User Identified','Name set to mpho','2026-06-26 00:57:54'),(37,'Topic Query','User asked about: passwords','2026-06-26 00:58:16'),(38,'Quiz Started','User started the cybersecurity quiz','2026-06-26 00:58:43'),(39,'View Tasks','User viewed their task list','2026-06-26 01:00:02'),(40,'User Exit','User closed the application','2026-06-26 01:00:55');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `reminder_date` datetime DEFAULT NULL,
  `is_completed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-26  3:09:21
