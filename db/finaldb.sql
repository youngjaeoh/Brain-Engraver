-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: us-cdbr-east-02.cleardb.com    Database: heroku_3543b79134f61fd
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `wordId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (713,'hire','고용하다',11),(714,'training','교육',12),(715,'reference','추천서',13),(716,'position','일자리',14),(717,'achievement','성취',15),(718,'condition','조건',16),(719,'excellent','훌륭한',17),(720,'eligible','적격의',18),(721,'identify','알아보다',19),(722,'associate','관련시키다',20),(723,'resume','이력서',44),(724,'applicant','지원자',45),(725,'requirement','필요조건',46),(726,'meet','만족시키다',47),(727,'qualified','자격있는',48);
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fexam`
--

DROP TABLE IF EXISTS `fexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fexam`
--

LOCK TABLES `fexam` WRITE;
/*!40000 ALTER TABLE `fexam` DISABLE KEYS */;
INSERT INTO `fexam` VALUES (452,'requirement','필요조건'),(453,'highly','매우'),(454,'professional','전문적인'),(455,'interview','면접'),(456,'directory','주소록'),(457,'duplicate','사본'),(458,'foster','육성하다'),(459,'widely','널리'),(460,'feedback','의견'),(461,'resume','이력서');
/*!40000 ALTER TABLE `fexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgettingrate`
--

DROP TABLE IF EXISTS `forgettingrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forgettingrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wordId` int(11) NOT NULL,
  `forgettingRate` float unsigned NOT NULL DEFAULT '100',
  `forgettingStage` int(11) NOT NULL DEFAULT '1',
  `testTime` datetime NOT NULL,
  `wordSetId` int(11) DEFAULT NULL,
  `subWordSetId` int(11) DEFAULT NULL,
  `studied` int(11) DEFAULT NULL,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgettingrate`
--

LOCK TABLES `forgettingrate` WRITE;
/*!40000 ALTER TABLE `forgettingrate` DISABLE KEYS */;
INSERT INTO `forgettingrate` VALUES (44,1,18.4116,3,'2020-11-28 14:23:50',1,1,1,'resume','이력서'),(45,2,18.4116,2,'2020-11-28 14:23:55',1,1,1,'applicant','지원자'),(46,3,18.4116,2,'2020-11-28 14:23:59',1,1,1,'requirement','필요조건'),(47,4,18.4116,2,'2020-11-28 14:24:04',1,1,1,'meet','만족시키다'),(48,5,18.4116,3,'2020-11-28 14:24:10',1,1,1,'qualified','자격있는'),(49,6,18.4116,2,'2020-11-28 14:19:45',1,1,1,'candidate','후보자'),(50,7,18.4116,1,'2020-11-28 14:19:51',1,1,1,'confidence','확신'),(51,8,18.4116,2,'2020-11-28 14:19:55',1,1,1,'highly','매우'),(52,9,18.4116,2,'2020-11-28 14:20:01',1,1,1,'professional','전문적인'),(53,10,18.4116,1,'2020-11-28 14:20:06',1,1,1,'interview','면접'),(54,91,18.4116,1,'2020-11-28 14:20:11',1,1,1,'directory','주소록'),(55,92,18.4116,1,'2020-11-28 14:20:19',1,1,1,'duplicate','사본'),(56,93,18.4116,1,'2020-11-28 14:20:30',1,1,1,'foster','육성하다'),(57,94,18.4116,1,'2020-11-28 14:20:35',1,1,1,'widely','널리'),(58,95,18.4116,1,'2020-11-28 14:20:40',1,1,1,'feedback','의견'),(59,11,18.4116,2,'2020-11-28 14:22:58',1,2,1,'hire','고용하다'),(60,12,18.4116,2,'2020-11-28 14:23:06',1,2,1,'training','교육'),(61,13,18.4116,2,'2020-11-28 14:23:10',1,2,1,'reference','추천서'),(62,14,18.4116,2,'2020-11-28 14:23:17',1,2,1,'position','일자리'),(63,15,18.4116,2,'2020-11-28 14:23:21',1,2,1,'achievement','성취'),(64,16,18.4116,2,'2020-11-28 14:23:26',1,2,1,'condition','조건'),(65,17,18.4116,2,'2020-11-28 14:23:32',1,2,1,'excellent','훌륭한'),(66,18,18.4116,2,'2020-11-28 14:23:36',1,2,1,'eligible','적격의'),(67,19,18.4116,2,'2020-11-28 14:23:41',1,2,1,'identify','알아보다'),(68,20,18.4116,2,'2020-11-28 14:23:46',1,2,1,'associate','관련시키다');
/*!40000 ALTER TABLE `forgettingrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `wordId` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
INSERT INTO `study` VALUES (321,'hire','고용하다','11'),(322,'training','교육','12'),(323,'reference','추천서','13'),(324,'position','일자리','14'),(325,'achievement','성취','15'),(326,'condition','조건','16'),(327,'excellent','훌륭한','17'),(328,'eligible','적격의','18'),(329,'identify','알아보다','19'),(330,'associate','관련시키다','20');
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subwordset`
--

DROP TABLE IF EXISTS `subwordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subwordset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wordSetId` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `studied` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subwordset`
--

LOCK TABLES `subwordset` WRITE;
/*!40000 ALTER TABLE `subwordset` DISABLE KEYS */;
INSERT INTO `subwordset` VALUES (1,'1','Chapter1',0),(2,'1','Chapter2',0),(3,'1','Chapter3',0),(4,'2','Chapter1',0),(5,'2','Chapter2',0),(6,'2','Chapter3',0);
/*!40000 ALTER TABLE `subwordset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idUser_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'kiMin','kiMin','1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word`
--

DROP TABLE IF EXISTS `word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `wordSetId` int(11) NOT NULL,
  `subWordSetId` int(11) NOT NULL,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `forgettingStage` int(11) NOT NULL,
  `forgettingRate` float unsigned DEFAULT '0',
  `testTime` datetime DEFAULT NULL,
  `studied` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word`
--

LOCK TABLES `word` WRITE;
/*!40000 ALTER TABLE `word` DISABLE KEYS */;
INSERT INTO `word` VALUES (1,1,1,'resume','이력서',10,200000,'2020-11-27 09:50:19',1),(2,1,1,'applicant','지원자',3,100000,'2020-11-27 09:50:24',1),(3,1,1,'requirement','필요조건',10,200000,'2020-11-27 09:50:27',1),(4,1,1,'meet','만족시키다',5,200000,'2020-11-27 09:50:48',1),(5,1,1,'qualified','자격있는',6,200000,'2020-11-27 09:50:57',1),(6,1,1,'candidate','후보자',9,200000,'2020-11-27 09:51:02',1),(7,1,1,'confidence','확신',4,100000,'2020-11-27 09:51:07',1),(8,1,1,'highly','매우',10,200000,'2020-11-27 09:53:01',1),(9,1,1,'professional','전문적인',8,200000,'2020-11-27 09:54:02',1),(10,1,1,'interview','면접',9,200000,'2020-11-27 09:54:08',1),(11,1,2,'hire','고용하다',2,100000,'2020-11-27 07:47:02',1),(12,1,2,'training','교육',1,67.7113,'2020-11-27 07:47:06',1),(13,1,2,'reference','추천서',2,100000,'2020-11-27 07:47:21',1),(14,1,2,'position','일자리',1,67.7406,'2020-11-27 07:47:29',1),(15,1,2,'achievement','성취',1,67.7508,'2020-11-27 07:47:37',1),(16,1,2,'condition','조건',1,67.7598,'2020-11-27 07:47:44',1),(17,1,2,'excellent','훌륭한',2,100000,'2020-11-27 07:47:48',1),(18,1,2,'eligible','적격의',1,67.7726,'2020-11-27 07:47:54',1),(19,1,2,'identify','알아보다',2,100000,'2020-11-27 07:48:02',1),(20,1,2,'associate','관련시키다',1,67.7892,'2020-11-27 07:48:07',1),(21,1,3,'employment','고용',0,0,NULL,0),(22,1,3,'lack','부족',0,0,NULL,0),(23,1,3,'managerial','관리의',0,0,NULL,0),(24,1,3,'diligent','성실한',0,0,NULL,0),(25,1,3,'familiar','익숙한',0,0,NULL,0),(26,1,3,'proficiency','숙달',0,0,NULL,0),(27,1,3,'prospective','미래의',0,0,NULL,0),(28,1,3,'appeal','매력적이다',0,0,NULL,0),(29,1,3,'consultatn','고문',0,0,NULL,0),(30,1,3,'degree','학위',0,0,NULL,0),(31,2,1,'vary','바꾸다',0,0,NULL,0),(32,2,1,'release','풀어주다',0,0,NULL,0),(33,2,1,'tilt','기울이다',0,0,NULL,0),(34,2,1,'multiply','늘리다',0,0,NULL,0),(35,2,1,'steep','적시다',0,0,NULL,0),(36,2,1,'utilize','이용하다',0,0,NULL,0),(37,2,1,'patron','고객',0,0,NULL,0),(38,2,1,'infirm','약한',0,0,NULL,0),(39,2,1,'crown','올리다',0,0,NULL,0),(40,2,1,'crest','절정',0,0,NULL,0),(41,2,2,'decimate','없애다',0,0,NULL,0),(42,2,2,'drastic','강력한',0,0,NULL,0),(43,2,2,'lethal','치명적인',0,0,NULL,0),(44,2,2,'lucrative','수지맞는',0,0,NULL,0),(45,2,2,'pronounced','현저한',0,0,NULL,0),(46,2,2,'advocate','지지하다',0,0,NULL,0),(47,2,2,'disperse','퍼트리다',0,0,NULL,0),(48,2,2,'sediment','침전물',0,0,NULL,0),(49,2,2,'net','최종적인',0,0,NULL,0),(50,2,2,'incise','자르다',0,0,NULL,0),(51,2,3,'exempt','면해주다',0,0,NULL,0),(52,2,3,'enactment','재정',0,0,NULL,0),(53,2,3,'primordial','최초의',0,0,NULL,0),(54,2,3,'urbane','세련된',0,0,NULL,0),(55,2,3,'susceptible','민감한',0,0,NULL,0),(56,2,3,'conjecture','추측',0,0,NULL,0),(57,2,3,'prowess','기술',0,0,NULL,0),(58,2,3,'demise','사망',0,0,NULL,0),(59,2,3,'renowned','유명한',0,0,NULL,0),(60,2,3,'calculatedly','일부러',0,0,NULL,0),(61,3,1,'abase','낮추다',1,0,'2020-11-27 10:13:01',0),(62,3,1,'abash','당황케하다',0,0,NULL,0),(63,3,1,'abdicate','포기하다',0,0,NULL,0),(64,3,1,'abettor','교사자',0,0,NULL,0),(65,3,1,'abeyance','중지',0,0,NULL,0),(66,3,1,'abhor','싫어하다',0,0,NULL,0),(67,3,1,'abjure','그만두다',0,0,NULL,0),(68,3,1,'ablution','목욕',0,0,NULL,0),(69,3,1,'amusing','재밌는',0,0,NULL,0),(70,3,1,'abominate','진저리내다',0,0,NULL,0),(71,3,2,'aboriginal','원시의',0,0,NULL,0),(72,3,2,'aboritive','실패의',0,0,NULL,0),(73,3,2,'acrid','예리한',0,0,NULL,0),(74,3,2,'abrogate','폐지하다',0,0,NULL,0),(75,3,2,'abscond','잠적하다',0,0,NULL,0),(76,3,2,'absolve','용서하다',0,0,NULL,0),(77,3,2,'abstemious','절제하는',0,0,NULL,0),(78,3,2,'abstruse','심오한',1,292.256,'2020-11-27 11:17:17',1),(79,3,2,'accelerate','가속하다',1,62.5724,'2020-11-27 06:20:49',1),(80,3,2,'connubial','결혼의',1,62.6194,'2020-11-27 06:21:49',1),(81,3,3,'consanguinity','혈족',1,62.6194,'2020-11-27 06:21:49',1),(82,3,3,'consecrate','바치다',1,62.6225,'2020-11-27 06:21:53',1),(83,3,3,'consensus','일치',1,62.6304,'2020-11-27 06:22:03',1),(84,3,3,'consort','교제하다',1,62.6374,'2020-11-27 06:22:12',1),(85,3,3,'constraint','강제',1,62.6437,'2020-11-27 06:22:20',1),(86,3,3,'construe','설명하다',1,62.6477,'2020-11-27 06:22:25',1),(87,3,3,'consummate','완전한',1,62.6524,'2020-11-27 06:22:31',1),(88,3,3,'contaminate','오염시키다',1,62.6579,'2020-11-27 06:22:38',1),(89,3,3,'contortions','뒤틀림',1,62.6618,'2020-11-27 06:22:43',1),(90,3,3,'contraband','암거래',1,0,NULL,0),(91,1,1,'directory','주소록',0,0,NULL,0),(92,1,1,'duplicate','사본',0,0,NULL,0),(93,1,1,'foster','육성하다',0,0,NULL,0),(94,1,1,'widely','널리',0,0,NULL,0),(95,1,1,'feedback','의견',0,0,NULL,0);
/*!40000 ALTER TABLE `word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wordset`
--

DROP TABLE IF EXISTS `wordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wordset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wordset`
--

LOCK TABLES `wordset` WRITE;
/*!40000 ALTER TABLE `wordset` DISABLE KEYS */;
INSERT INTO `wordset` VALUES (2,'TOEFL'),(1,'TOEIC');
/*!40000 ALTER TABLE `wordset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-29 16:41:47
