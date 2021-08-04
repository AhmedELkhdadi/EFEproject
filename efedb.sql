-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: efedb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` varchar(40) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `meetLink` varchar(100) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `speaker_id` varchar(40) DEFAULT NULL,
  `day` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_a` varchar(40) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_a`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chatmessages`
--

DROP TABLE IF EXISTS `chatmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatmessages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `person_id` varchar(40) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_status` int NOT NULL,
  `stand` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `privacy` int NOT NULL DEFAULT '0',
  `responseTo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responseTo_idx` (`responseTo`),
  KEY `standMessages_idx` (`stand`),
  CONSTRAINT `responseTo` FOREIGN KEY (`responseTo`) REFERENCES `chatmessages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `standMessages` FOREIGN KEY (`stand`) REFERENCES `entreprise` (`id_ent`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entreprise` (
  `id_ent` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `slogan` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `logo` varchar(50) NOT NULL DEFAULT 'noLogo.png',
  `bannerImage` varchar(50) NOT NULL DEFAULT 'noBanner.png',
  `location` text NOT NULL,
  `meetLink` varchar(70) DEFAULT NULL,
  `representative` varchar(40) NOT NULL,
  PRIMARY KEY (`id_ent`),
  UNIQUE KEY `representative_UNIQUE` (`representative`),
  CONSTRAINT `representative` FOREIGN KEY (`representative`) REFERENCES `representatives` (`id_r`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `id_inst` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `id_p` varchar(40) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `level` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `studyField` varchar(60) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `age` int NOT NULL,
  `imagePath` varchar(50) NOT NULL DEFAULT 'noImage.png',
  `training` varchar(150) DEFAULT NULL,
  `Awards` varchar(150) DEFAULT NULL,
  `techSkills` varchar(200) DEFAULT NULL,
  `softSkills` varchar(200) DEFAULT NULL,
  `langages` varchar(45) DEFAULT NULL,
  `description` text,
  `intrests` varchar(150) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `gitHub` varchar(100) DEFAULT NULL,
  `linkedIn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_p`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `representatives`
--

DROP TABLE IF EXISTS `representatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representatives` (
  `id_r` varchar(40) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `approved` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_r`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `login_2` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume` (
  `id_resume` varchar(40) NOT NULL,
  `path` varchar(45) NOT NULL,
  `participant` varchar(40) NOT NULL,
  `enterprise` varchar(40) NOT NULL,
  `participant_name` varchar(70) NOT NULL,
  PRIMARY KEY (`id_resume`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `speakers`
--

DROP TABLE IF EXISTS `speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `speakers` (
  `id` varchar(40) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `description` varchar(90) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-25 22:08:27
