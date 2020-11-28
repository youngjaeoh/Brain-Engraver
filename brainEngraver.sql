-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 3.84.92.122    Database: brainEngraver
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `Exam`
--

DROP TABLE IF EXISTS `Exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `wordId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exam`
--

LOCK TABLES `Exam` WRITE;
/*!40000 ALTER TABLE `Exam` DISABLE KEYS */;
INSERT INTO `Exam` VALUES (713,'hire','고용하다',11),(714,'training','교육',12),(715,'reference','추천서',13),(716,'position','일자리',14),(717,'achievement','성취',15),(718,'condition','조건',16),(719,'excellent','훌륭한',17),(720,'eligible','적격의',18),(721,'identify','알아보다',19),(722,'associate','관련시키다',20),(723,'resume','이력서',44),(724,'applicant','지원자',45),(725,'requirement','필요조건',46),(726,'meet','만족시키다',47),(727,'qualified','자격있는',48);
/*!40000 ALTER TABLE `Exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FExam`
--

DROP TABLE IF EXISTS `FExam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FExam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FExam`
--

LOCK TABLES `FExam` WRITE;
/*!40000 ALTER TABLE `FExam` DISABLE KEYS */;
INSERT INTO `FExam` VALUES (452,'requirement','필요조건'),(453,'highly','매우'),(454,'professional','전문적인'),(455,'interview','면접'),(456,'directory','주소록'),(457,'duplicate','사본'),(458,'foster','육성하다'),(459,'widely','널리'),(460,'feedback','의견'),(461,'resume','이력서');
/*!40000 ALTER TABLE `FExam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ForgettingRate`
--

DROP TABLE IF EXISTS `ForgettingRate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ForgettingRate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wordId` int NOT NULL,
  `forgettingRate` float unsigned NOT NULL DEFAULT '100',
  `forgettingStage` int NOT NULL DEFAULT '1',
  `testTime` datetime NOT NULL,
  `wordSetId` int DEFAULT NULL,
  `subWordSetId` int DEFAULT NULL,
  `studied` int DEFAULT NULL,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForgettingRate`
--

LOCK TABLES `ForgettingRate` WRITE;
/*!40000 ALTER TABLE `ForgettingRate` DISABLE KEYS */;
INSERT INTO `ForgettingRate` VALUES (44,1,18.4116,3,'2020-11-28 14:23:50',1,1,1,'resume','이력서'),(45,2,18.4116,2,'2020-11-28 14:23:55',1,1,1,'applicant','지원자'),(46,3,18.4116,2,'2020-11-28 14:23:59',1,1,1,'requirement','필요조건'),(47,4,18.4116,2,'2020-11-28 14:24:04',1,1,1,'meet','만족시키다'),(48,5,18.4116,3,'2020-11-28 14:24:10',1,1,1,'qualified','자격있는'),(49,6,18.4116,2,'2020-11-28 14:19:45',1,1,1,'candidate','후보자'),(50,7,18.4116,1,'2020-11-28 14:19:51',1,1,1,'confidence','확신'),(51,8,18.4116,2,'2020-11-28 14:19:55',1,1,1,'highly','매우'),(52,9,18.4116,2,'2020-11-28 14:20:01',1,1,1,'professional','전문적인'),(53,10,18.4116,1,'2020-11-28 14:20:06',1,1,1,'interview','면접'),(54,91,18.4116,1,'2020-11-28 14:20:11',1,1,1,'directory','주소록'),(55,92,18.4116,1,'2020-11-28 14:20:19',1,1,1,'duplicate','사본'),(56,93,18.4116,1,'2020-11-28 14:20:30',1,1,1,'foster','육성하다'),(57,94,18.4116,1,'2020-11-28 14:20:35',1,1,1,'widely','널리'),(58,95,18.4116,1,'2020-11-28 14:20:40',1,1,1,'feedback','의견'),(59,11,18.4116,2,'2020-11-28 14:22:58',1,2,1,'hire','고용하다'),(60,12,18.4116,2,'2020-11-28 14:23:06',1,2,1,'training','교육'),(61,13,18.4116,2,'2020-11-28 14:23:10',1,2,1,'reference','추천서'),(62,14,18.4116,2,'2020-11-28 14:23:17',1,2,1,'position','일자리'),(63,15,18.4116,2,'2020-11-28 14:23:21',1,2,1,'achievement','성취'),(64,16,18.4116,2,'2020-11-28 14:23:26',1,2,1,'condition','조건'),(65,17,18.4116,2,'2020-11-28 14:23:32',1,2,1,'excellent','훌륭한'),(66,18,18.4116,2,'2020-11-28 14:23:36',1,2,1,'eligible','적격의'),(67,19,18.4116,2,'2020-11-28 14:23:41',1,2,1,'identify','알아보다'),(68,20,18.4116,2,'2020-11-28 14:23:46',1,2,1,'associate','관련시키다');
/*!40000 ALTER TABLE `ForgettingRate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Study`
--

DROP TABLE IF EXISTS `Study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Study` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `wordId` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Study`
--

LOCK TABLES `Study` WRITE;
/*!40000 ALTER TABLE `Study` DISABLE KEYS */;
INSERT INTO `Study` VALUES (321,'hire','고용하다','11'),(322,'training','교육','12'),(323,'reference','추천서','13'),(324,'position','일자리','14'),(325,'achievement','성취','15'),(326,'condition','조건','16'),(327,'excellent','훌륭한','17'),(328,'eligible','적격의','18'),(329,'identify','알아보다','19'),(330,'associate','관련시키다','20');
