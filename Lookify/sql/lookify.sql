-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: lookify-schema
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `canciones`
--

DROP TABLE IF EXISTS `canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canciones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `artista` varchar(255) DEFAULT NULL,
  `clasificacion` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canciones`
--

LOCK TABLES `canciones` WRITE;
/*!40000 ALTER TABLE `canciones` DISABLE KEYS */;
INSERT INTO `canciones` VALUES (2,'Black Sabbath',8,'2020-08-22 21:44:54.370000','IronMan',NULL),(5,'Led Zepellin',8,'2020-08-23 11:19:03.707000','Stair way to heaven',NULL),(6,'AC DC',9,'2020-08-23 12:25:17.554000','Back in Black',NULL),(7,'AC DC',9,'2020-08-23 12:26:44.723000','Thunderstruck',NULL),(8,'Metallica',10,'2020-08-23 14:33:00.377000','The call of ktulu',NULL),(9,'Pearl Jam',10,'2020-08-23 14:40:20.266000','Yellow Ledbetter',NULL),(10,'Cramberries',7,'2020-08-23 14:40:41.681000','Zombies',NULL),(11,'Black Sabbath',8,'2020-08-23 14:41:53.164000','War Pigs',NULL),(12,'Deep Purple',10,'2020-08-23 14:42:29.107000','Child in time',NULL),(13,'Toool',10,'2020-08-23 14:46:09.636000','Sober',NULL),(15,'AC DC',8,'2020-08-23 17:26:21.566000','T.N.T.',NULL),(16,'Deep Purple',8,'2020-08-23 19:41:30.093000','Smoke on Wather',NULL),(18,'Metallica',7,'2020-08-23 20:29:31.725000','Seek and Destroy',NULL);
/*!40000 ALTER TABLE `canciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 21:24:04
