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
) ENGINE=InnoDB AUTO_INCREMENT=2363 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exam`
--

LOCK TABLES `Exam` WRITE;
/*!40000 ALTER TABLE `Exam` DISABLE KEYS */;
INSERT INTO `Exam` VALUES (2348,'resume','이력서',1),(2349,'applicant','지원자',2),(2350,'requirement','필요조건',3),(2351,'meet','만족시키다',4),(2352,'qualified','자격있는',5),(2353,'candidate','후보자',6),(2354,'confidence','확신',7),(2355,'highly','매우',8),(2356,'professional','전문적인',9),(2357,'interview','면접',10),(2358,'directory','주소록',91),(2359,'duplicate','사본',92),(2360,'foster','육성하다',93),(2361,'widely','널리',94),(2362,'feedback','의견',95);
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ForgettingRate`
--

LOCK TABLES `ForgettingRate` WRITE;
/*!40000 ALTER TABLE `ForgettingRate` DISABLE KEYS */;
INSERT INTO `ForgettingRate` VALUES (44,1,200000,10,'2020-12-06 15:07:02',1,1,1,'resume','이력서'),(45,2,200000,6,'2020-12-06 15:07:18',1,1,1,'applicant','지원자'),(46,3,77.009,3,'2020-12-06 15:07:35',1,1,1,'requirement','필요조건'),(47,4,200000,7,'2020-12-06 15:07:50',1,1,1,'meet','만족시키다'),(48,5,98.5961,4,'2020-12-06 15:08:07',1,1,1,'qualified','자격있는'),(49,6,77.0109,3,'2020-12-06 15:08:23',1,1,1,'candidate','후보자'),(50,7,56.6114,2,'2020-12-06 15:08:39',1,1,1,'confidence','확신'),(51,8,56.6118,3,'2020-12-06 15:08:55',1,1,1,'highly','매우'),(52,9,98.6001,5,'2020-12-06 15:09:12',1,1,1,'professional','전문적인'),(53,10,56.6127,2,'2020-12-06 15:09:28',1,1,1,'interview','면접'),(54,91,37.0976,1,'2020-12-06 15:09:45',1,1,1,'directory','주소록'),(55,92,34.6506,1,'2020-12-06 15:10:01',1,1,1,'duplicate','사본'),(56,93,34.6506,1,'2020-12-06 15:10:18',1,1,1,'foster','육성하다'),(57,94,34.6506,1,'2020-12-06 15:10:35',1,1,1,'widely','널리'),(58,95,34.6507,1,'2020-12-06 15:10:54',1,1,1,'feedback','의견'),(59,11,200000,6,'2020-12-02 14:59:10',1,2,1,'hire','고용하다'),(60,12,78.0498,3,'2020-12-02 14:59:26',1,2,1,'training','교육'),(61,13,78.0505,3,'2020-12-02 14:59:43',1,2,1,'reference','추천서'),(62,14,78.0513,3,'2020-12-02 15:00:01',1,2,1,'position','일자리'),(63,15,57.2554,2,'2020-12-02 15:00:18',1,2,1,'achievement','성취'),(64,16,57.2558,2,'2020-12-02 15:00:36',1,2,1,'condition','조건'),(65,17,57.2563,2,'2020-12-02 15:00:53',1,2,1,'excellent','훌륭한'),(66,18,57.2567,2,'2020-12-02 15:01:09',1,2,1,'eligible','적격의'),(67,19,78.0551,3,'2020-12-02 15:01:27',1,2,1,'identify','알아보다'),(68,20,78.0559,3,'2020-12-02 15:01:45',1,2,1,'associate','관련시키다'),(69,61,70.5193,3,'2020-11-29 08:31:05',3,1,1,'abase','낮추다'),(70,62,52.4684,2,'2020-11-29 10:57:50',3,1,1,'abash','당황케하다'),(71,63,52.3659,2,'2020-11-29 08:31:16',3,1,1,'abdicate','포기하다'),(72,64,52.4685,2,'2020-11-29 10:57:58',3,1,1,'abettor','교사자'),(73,65,52.4686,2,'2020-11-29 10:58:07',3,1,1,'abeyance','중지'),(74,66,52.4688,2,'2020-11-29 10:58:17',3,1,1,'abhor','싫어하다'),(75,67,52.3662,2,'2020-11-29 08:31:39',3,1,1,'abjure','그만두다'),(76,68,52.4689,2,'2020-11-29 10:58:29',3,1,1,'ablution','목욕'),(77,69,52.3662,2,'2020-11-29 08:31:47',3,1,1,'amusing','재밌는'),(78,70,52.3664,2,'2020-11-29 08:31:59',3,1,1,'abominate','진저리내다'),(79,31,200000,5,'2020-12-02 14:29:30',2,1,1,'vary','바꾸다'),(80,32,37.4327,1,'2020-12-02 14:29:47',2,1,1,'release','풀어주다'),(81,33,57.2067,2,'2020-12-02 14:30:04',2,1,1,'tilt','기울이다'),(82,34,37.4332,1,'2020-12-02 14:30:21',2,1,1,'multiply','늘리다'),(83,35,37.4334,1,'2020-12-02 14:30:37',2,1,1,'steep','적시다'),(84,36,57.2081,2,'2020-12-02 14:30:54',2,1,1,'utilize','이용하다'),(85,37,77.9757,3,'2020-12-02 14:31:10',2,1,1,'patron','고객'),(86,38,77.9765,3,'2020-12-02 14:31:27',2,1,1,'infirm','약한'),(87,39,57.2094,2,'2020-12-02 14:31:44',2,1,1,'crown','올리다'),(88,40,57.2099,2,'2020-12-02 14:32:01',2,1,1,'crest','절정'),(89,81,200000,5,'2020-11-30 04:20:55',3,3,1,'consanguinity','혈족'),(90,82,35.1345,1,'2020-11-30 04:20:58',3,3,1,'consecrate','바치다'),(91,83,35.1345,1,'2020-11-30 04:21:01',3,3,1,'consensus','일치'),(92,84,35.1345,1,'2020-11-30 04:21:03',3,3,1,'consort','교제하다'),(93,85,35.1345,1,'2020-11-30 04:21:06',3,3,1,'constraint','강제'),(94,86,35.1346,1,'2020-11-30 04:21:09',3,3,1,'construe','설명하다'),(95,87,35.1346,1,'2020-11-30 04:21:13',3,3,1,'consummate','완전한'),(96,88,35.1347,1,'2020-11-30 04:21:20',3,3,1,'contaminate','오염시키다'),(97,89,35.1348,1,'2020-11-30 04:21:33',3,3,1,'contortions','뒤틀림'),(98,90,53.2613,2,'2020-11-30 04:21:39',3,3,1,'contraband','암거래'),(99,71,52.4138,2,'2020-11-29 09:40:01',3,2,1,'aboriginal','원시의'),(100,72,52.4071,2,'2020-11-29 09:30:28',3,2,1,'aboritive','실패의'),(101,73,52.4138,2,'2020-11-29 09:40:07',3,2,1,'acrid','예리한'),(102,74,52.4137,2,'2020-11-29 09:39:56',3,2,1,'abrogate','폐지하다'),(103,75,70.5904,3,'2020-11-29 09:40:33',3,2,1,'abscond','잠적하다'),(104,76,35.1354,1,'2020-11-30 04:22:51',3,2,1,'absolve','용서하다'),(105,77,37.4618,1,'2020-12-02 15:02:03',3,2,1,'abstemious','절제하는'),(106,78,57.2587,2,'2020-12-02 15:02:21',3,2,1,'abstruse','심오한'),(107,79,37.4623,1,'2020-12-02 15:02:38',3,2,1,'accelerate','가속하다'),(108,80,37.4626,1,'2020-12-02 15:02:56',3,2,1,'connubial','결혼의'),(109,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(110,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(111,43,34.5924,1,'2020-11-29 09:39:32',2,2,1,'lethal','치명적인'),(112,44,34.5924,1,'2020-11-29 09:39:34',2,2,1,'lucrative','수지맞는'),(113,45,34.5924,1,'2020-11-29 09:39:37',2,2,1,'pronounced','현저한'),(114,46,34.5924,1,'2020-11-29 09:39:39',2,2,1,'advocate','지지하다'),(115,47,34.5925,1,'2020-11-29 09:39:41',2,2,1,'disperse','퍼트리다'),(116,48,34.5925,1,'2020-11-29 09:39:43',2,2,1,'sediment','침전물'),(117,49,34.5925,1,'2020-11-29 09:39:46',2,2,1,'net','최종적인'),(118,50,34.5925,1,'2020-11-29 09:39:52',2,2,1,'incise','자르다'),(119,51,52.4192,2,'2020-11-29 09:47:51',2,3,1,'exempt','면해주다'),(120,52,70.5984,3,'2020-11-29 09:48:19',2,3,1,'enactment','재정'),(121,53,34.6252,1,'2020-11-29 09:48:02',2,3,1,'primordial','최초의'),(122,54,34.6252,1,'2020-11-29 09:48:07',2,3,1,'urbane','세련된'),(123,55,34.6244,1,'2020-11-29 09:46:03',2,3,1,'susceptible','민감한'),(124,56,34.6244,1,'2020-11-29 09:46:08',2,3,1,'conjecture','추측'),(125,57,34.6244,1,'2020-11-29 09:46:12',2,3,1,'prowess','기술'),(126,58,34.6245,1,'2020-11-29 09:46:20',2,3,1,'demise','사망'),(127,59,34.6245,1,'2020-11-29 09:46:26',2,3,1,'renowned','유명한'),(128,60,34.6253,1,'2020-11-29 09:48:12',2,3,1,'calculatedly','일부러'),(139,21,52.4711,2,'2020-11-29 11:01:40',1,3,1,'employment','고용'),(140,22,52.4712,2,'2020-11-29 11:01:49',1,3,1,'lack','부족'),(141,23,52.4713,2,'2020-11-29 11:01:56',1,3,1,'managerial','관리의'),(142,24,52.4714,2,'2020-11-29 11:02:05',1,3,1,'diligent','성실한'),(143,25,52.4715,2,'2020-11-29 11:02:12',1,3,1,'familiar','익숙한'),(144,26,34.657,1,'2020-11-29 11:02:17',1,3,1,'proficiency','숙달'),(145,27,34.657,1,'2020-11-29 11:02:22',1,3,1,'prospective','미래의'),(146,28,34.6571,1,'2020-11-29 11:02:29',1,3,1,'appeal','매력적이다'),(147,29,34.6571,1,'2020-11-29 11:02:35',1,3,1,'consultatn','고문'),(148,30,34.6572,1,'2020-11-29 11:02:43',1,3,1,'degree','학위'),(149,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(150,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(151,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(152,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(153,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(154,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(155,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(156,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(157,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(158,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(159,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(160,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(161,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(162,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(163,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(164,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(165,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(166,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(167,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(168,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(169,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(170,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(171,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(172,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(173,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(174,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(175,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(176,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(177,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(178,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(179,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(180,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(181,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(182,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(183,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(184,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(185,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(186,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(187,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(188,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(189,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(190,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(191,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(192,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(193,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(194,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(195,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(196,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(197,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(198,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(199,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(200,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(201,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(202,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(203,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(204,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(205,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(206,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(207,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(208,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(209,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(210,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(211,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(212,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(213,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(214,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(215,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(216,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(217,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(218,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(219,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(220,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(221,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(222,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(223,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(224,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(225,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(226,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(227,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(228,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(229,41,52.3626,3,'2020-12-06 15:12:37',2,2,1,'decimate','없애다'),(230,42,37.4009,2,'2020-12-06 15:12:54',2,2,1,'drastic','강력한'),(231,43,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lethal','치명적인'),(232,44,34.5924,1,'2000-10-10 10:10:10',2,2,1,'lucrative','수지맞는'),(233,45,34.5924,1,'2000-10-10 10:10:10',2,2,1,'pronounced','현저한'),(234,46,34.5924,1,'2000-10-10 10:10:10',2,2,1,'advocate','지지하다'),(235,47,34.5925,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(236,48,34.5925,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(237,49,34.5925,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(238,50,34.5925,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다');
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
) ENGINE=InnoDB AUTO_INCREMENT=1341 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Study`
--

LOCK TABLES `Study` WRITE;
/*!40000 ALTER TABLE `Study` DISABLE KEYS */;
INSERT INTO `Study` VALUES (1331,'abase','낮추다','61'),(1332,'abash','당황케하다','62'),(1333,'abdicate','포기하다','63'),(1334,'abettor','교사자','64'),(1335,'abeyance','중지','65'),(1336,'abhor','싫어하다','66'),(1337,'abjure','그만두다','67'),(1338,'ablution','목욕','68'),(1339,'amusing','재밌는','69'),(1340,'abominate','진저리내다','70');
/*!40000 ALTER TABLE `Study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TESTTEST`
--

DROP TABLE IF EXISTS `TESTTEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TESTTEST` (
  `INTTEST` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TESTTEST`
--

LOCK TABLES `TESTTEST` WRITE;
/*!40000 ALTER TABLE `TESTTEST` DISABLE KEYS */;
/*!40000 ALTER TABLE `TESTTEST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) NOT NULL,
  `token` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idUser_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'',''),(30,'youngjaeoh','');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Word`
--

DROP TABLE IF EXISTS `Word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Word` (
  `id` int NOT NULL,
  `wordSetId` int NOT NULL,
  `subWordSetId` int NOT NULL,
  `word` varchar(45) DEFAULT NULL,
  `meaning` varchar(45) NOT NULL,
  `forgettingStage` int NOT NULL,
  `forgettingRate` float unsigned DEFAULT '0',
  `testTime` datetime DEFAULT NULL,
  `studied` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `word_UNIQUE` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Word`
--

LOCK TABLES `Word` WRITE;
/*!40000 ALTER TABLE `Word` DISABLE KEYS */;
INSERT INTO `Word` VALUES (1,1,1,'resume','이력서',10,200000,'2020-11-27 09:50:19',1),(2,1,1,'applicant','지원자',3,100000,'2020-11-27 09:50:24',1),(3,1,1,'requirement','필요조건',10,200000,'2020-11-27 09:50:27',1),(4,1,1,'meet','만족시키다',5,200000,'2020-11-27 09:50:48',1),(5,1,1,'qualified','자격있는',6,200000,'2020-11-27 09:50:57',1),(6,1,1,'candidate','후보자',9,200000,'2020-11-27 09:51:02',1),(7,1,1,'confidence','확신',4,100000,'2020-11-27 09:51:07',1),(8,1,1,'highly','매우',10,200000,'2020-11-27 09:53:01',1),(9,1,1,'professional','전문적인',8,200000,'2020-11-27 09:54:02',1),(10,1,1,'interview','면접',9,200000,'2020-11-27 09:54:08',1),(11,1,2,'hire','고용하다',2,100000,'2020-11-27 07:47:02',1),(12,1,2,'training','교육',1,67.7113,'2020-11-27 07:47:06',1),(13,1,2,'reference','추천서',2,100000,'2020-11-27 07:47:21',1),(14,1,2,'position','일자리',1,67.7406,'2020-11-27 07:47:29',1),(15,1,2,'achievement','성취',1,67.7508,'2020-11-27 07:47:37',1),(16,1,2,'condition','조건',1,67.7598,'2020-11-27 07:47:44',1),(17,1,2,'excellent','훌륭한',2,100000,'2020-11-27 07:47:48',1),(18,1,2,'eligible','적격의',1,67.7726,'2020-11-27 07:47:54',1),(19,1,2,'identify','알아보다',2,100000,'2020-11-27 07:48:02',1),(20,1,2,'associate','관련시키다',1,67.7892,'2020-11-27 07:48:07',1),(21,1,3,'employment','고용',0,0,NULL,1),(22,1,3,'lack','부족',0,0,NULL,1),(23,1,3,'managerial','관리의',0,0,NULL,1),(24,1,3,'diligent','성실한',0,0,NULL,1),(25,1,3,'familiar','익숙한',0,0,NULL,1),(26,1,3,'proficiency','숙달',0,0,NULL,1),(27,1,3,'prospective','미래의',0,0,NULL,1),(28,1,3,'appeal','매력적이다',0,0,NULL,1),(29,1,3,'consultatn','고문',0,0,NULL,1),(30,1,3,'degree','학위',0,0,NULL,1),(31,2,1,'vary','바꾸다',0,0,NULL,1),(32,2,1,'release','풀어주다',0,0,NULL,1),(33,2,1,'tilt','기울이다',0,0,NULL,1),(34,2,1,'multiply','늘리다',0,0,NULL,1),(35,2,1,'steep','적시다',0,0,NULL,1),(36,2,1,'utilize','이용하다',0,0,NULL,1),(37,2,1,'patron','고객',0,0,NULL,1),(38,2,1,'infirm','약한',0,0,NULL,1),(39,2,1,'crown','올리다',0,0,NULL,1),(40,2,1,'crest','절정',0,0,NULL,1),(41,2,2,'decimate','없애다',0,0,NULL,1),(42,2,2,'drastic','강력한',0,0,NULL,1),(43,2,2,'lethal','치명적인',0,0,NULL,1),(44,2,2,'lucrative','수지맞는',0,0,NULL,1),(45,2,2,'pronounced','현저한',0,0,NULL,1),(46,2,2,'advocate','지지하다',0,0,NULL,1),(47,2,2,'disperse','퍼트리다',0,0,NULL,1),(48,2,2,'sediment','침전물',0,0,NULL,1),(49,2,2,'net','최종적인',0,0,NULL,1),(50,2,2,'incise','자르다',0,0,NULL,1),(51,2,3,'exempt','면해주다',0,0,NULL,1),(52,2,3,'enactment','재정',0,0,NULL,1),(53,2,3,'primordial','최초의',0,0,NULL,1),(54,2,3,'urbane','세련된',0,0,NULL,1),(55,2,3,'susceptible','민감한',0,0,NULL,1),(56,2,3,'conjecture','추측',0,0,NULL,1),(57,2,3,'prowess','기술',0,0,NULL,1),(58,2,3,'demise','사망',0,0,NULL,1),(59,2,3,'renowned','유명한',0,0,NULL,1),(60,2,3,'calculatedly','일부러',0,0,NULL,1),(61,3,1,'abase','낮추다',1,0,'2020-11-27 10:13:01',1),(62,3,1,'abash','당황케하다',0,0,NULL,1),(63,3,1,'abdicate','포기하다',0,0,NULL,1),(64,3,1,'abettor','교사자',0,0,NULL,1),(65,3,1,'abeyance','중지',0,0,NULL,1),(66,3,1,'abhor','싫어하다',0,0,NULL,1),(67,3,1,'abjure','그만두다',0,0,NULL,1),(68,3,1,'ablution','목욕',0,0,NULL,1),(69,3,1,'amusing','재밌는',0,0,NULL,1),(70,3,1,'abominate','진저리내다',0,0,NULL,1),(71,3,2,'aboriginal','원시의',0,0,NULL,1),(72,3,2,'aboritive','실패의',0,0,NULL,1),(73,3,2,'acrid','예리한',0,0,NULL,1),(74,3,2,'abrogate','폐지하다',0,0,NULL,1),(75,3,2,'abscond','잠적하다',0,0,NULL,1),(76,3,2,'absolve','용서하다',0,0,NULL,1),(77,3,2,'abstemious','절제하는',0,0,NULL,1),(78,3,2,'abstruse','심오한',1,292.256,'2020-11-27 11:17:17',1),(79,3,2,'accelerate','가속하다',1,62.5724,'2020-11-27 06:20:49',1),(80,3,2,'connubial','결혼의',1,62.6194,'2020-11-27 06:21:49',1),(81,3,3,'consanguinity','혈족',1,62.6194,'2020-11-27 06:21:49',1),(82,3,3,'consecrate','바치다',1,62.6225,'2020-11-27 06:21:53',1),(83,3,3,'consensus','일치',1,62.6304,'2020-11-27 06:22:03',1),(84,3,3,'consort','교제하다',1,62.6374,'2020-11-27 06:22:12',1),(85,3,3,'constraint','강제',1,62.6437,'2020-11-27 06:22:20',1),(86,3,3,'construe','설명하다',1,62.6477,'2020-11-27 06:22:25',1),(87,3,3,'consummate','완전한',1,62.6524,'2020-11-27 06:22:31',1),(88,3,3,'contaminate','오염시키다',1,62.6579,'2020-11-27 06:22:38',1),(89,3,3,'contortions','뒤틀림',1,62.6618,'2020-11-27 06:22:43',1),(90,3,3,'contraband','암거래',1,0,NULL,1),(91,1,1,'directory','주소록',0,0,NULL,1),(92,1,1,'duplicate','사본',0,0,NULL,1),(93,1,1,'foster','육성하다',0,0,NULL,1),(94,1,1,'widely','널리',0,0,NULL,1),(95,1,1,'feedback','의견',0,0,NULL,1);
/*!40000 ALTER TABLE `Word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  `wordId` int NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `forgettingRate_youngjaeoh`
--

DROP TABLE IF EXISTS `forgettingRate_youngjaeoh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forgettingRate_youngjaeoh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wordId` int NOT NULL,
  `forgettingRate` float NOT NULL,
  `forgettingStage` int NOT NULL,
  `testTime` datetime NOT NULL,
  `wordSetId` int DEFAULT NULL,
  `subWordSetId` int DEFAULT NULL,
  `studied` int DEFAULT NULL,
  `word` varchar(45) NOT NULL,
  `meaning` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgettingRate_youngjaeoh`
--

LOCK TABLES `forgettingRate_youngjaeoh` WRITE;
/*!40000 ALTER TABLE `forgettingRate_youngjaeoh` DISABLE KEYS */;
INSERT INTO `forgettingRate_youngjaeoh` VALUES (1,41,61.1633,2,'2020-12-06 15:30:10',2,2,1,'decimate','없애다'),(2,42,61.1641,2,'2020-12-06 15:30:27',2,2,1,'drastic','강력한'),(3,43,39.5573,1,'2020-12-06 15:30:43',2,2,1,'lethal','치명적인'),(4,44,39.5578,1,'2020-12-06 15:31:01',2,2,1,'lucrative','수지맞는'),(5,45,61.1666,2,'2020-12-06 15:31:17',2,2,1,'pronounced','현저한'),(6,46,61.1674,2,'2020-12-06 15:31:35',2,2,1,'advocate','지지하다'),(7,47,18.4097,1,'2000-10-10 10:10:10',2,2,1,'disperse','퍼트리다'),(8,48,18.4097,1,'2000-10-10 10:10:10',2,2,1,'sediment','침전물'),(9,49,18.4097,1,'2000-10-10 10:10:10',2,2,1,'net','최종적인'),(10,50,18.4097,1,'2000-10-10 10:10:10',2,2,1,'incise','자르다'),(11,1,200000,8,'2020-12-09 07:57:11',1,1,1,'resume','이력서'),(12,2,18.4097,1,'2000-10-10 10:10:10',1,1,1,'applicant','지원자'),(13,3,18.4097,1,'2000-10-10 10:10:10',1,1,1,'requirement','필요조건'),(14,4,18.4097,1,'2000-10-10 10:10:10',1,1,1,'meet','만족시키다'),(15,5,18.4097,1,'2000-10-10 10:10:10',1,1,1,'qualified','자격있는'),(16,6,18.4097,1,'2000-10-10 10:10:10',1,1,1,'candidate','후보자'),(17,7,18.4097,1,'2000-10-10 10:10:10',1,1,1,'confidence','확신'),(18,8,18.4097,1,'2000-10-10 10:10:10',1,1,1,'highly','매우'),(19,9,18.4097,1,'2000-10-10 10:10:10',1,1,1,'professional','전문적인'),(20,10,18.4097,1,'2000-10-10 10:10:10',1,1,1,'interview','면접'),(21,91,18.4097,1,'2000-10-10 10:10:10',1,1,1,'directory','주소록'),(22,92,18.4097,1,'2000-10-10 10:10:10',1,1,1,'duplicate','사본'),(23,93,18.4097,1,'2000-10-10 10:10:10',1,1,1,'foster','육성하다'),(24,94,18.4097,1,'2000-10-10 10:10:10',1,1,1,'widely','널리'),(25,95,18.4097,1,'2000-10-10 10:10:10',1,1,1,'feedback','의견'),(26,61,135.927,3,'2020-12-08 04:19:58',3,1,1,'abase','낮추다'),(27,62,39.6049,1,'2020-12-06 16:02:37',3,1,1,'abash','당황케하다'),(28,63,39.6053,1,'2020-12-06 16:02:53',3,1,1,'abdicate','포기하다'),(29,64,39.6057,1,'2020-12-06 16:03:09',3,1,1,'abettor','교사자'),(30,65,18.4097,1,'2000-10-10 10:10:10',3,1,1,'abeyance','중지'),(31,66,18.4097,1,'2000-10-10 10:10:10',3,1,1,'abhor','싫어하다'),(32,67,18.4097,1,'2000-10-10 10:10:10',3,1,1,'abjure','그만두다'),(33,68,18.4097,1,'2000-10-10 10:10:10',3,1,1,'ablution','목욕'),(34,69,18.4097,1,'2000-10-10 10:10:10',3,1,1,'amusing','재밌는'),(35,70,18.4097,1,'2000-10-10 10:10:10',3,1,1,'abominate','진저리내다');
/*!40000 ALTER TABLE `forgettingRate_youngjaeoh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgettingrate`
--

DROP TABLE IF EXISTS `forgettingrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forgettingrate` (
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
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `wordSetId` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `studied` int NOT NULL,
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
-- Table structure for table `synonyms`
--

DROP TABLE IF EXISTS `synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synonyms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) NOT NULL,
  `synonym` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonyms`
--

LOCK TABLES `synonyms` WRITE;
/*!40000 ALTER TABLE `synonyms` DISABLE KEYS */;
INSERT INTO `synonyms` VALUES (1,'resume','이력 서'),(2,'resume','이 력서'),(3,'resume','이 력 서'),(4,'resume','이력숴'),(13,'confidence','신 뢰'),(14,'confidence','확 신'),(15,'reference','추 천서'),(16,'reference','추천 서'),(17,'reference','추 천 서'),(18,'reference','참고'),(19,'reference','참 고'),(20,'condition','상태'),(21,'condition','상 태'),(22,'condition','상 테'),(23,'condition','상테'),(24,'condition','조 건'),(25,'degree','학 위'),(26,'degree','정도'),(27,'degree','정 도'),(28,'net','그물'),(29,'net','그 물'),(30,'demise','종말'),(31,'demise','종 말');
/*!40000 ALTER TABLE `synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wordset`
--

DROP TABLE IF EXISTS `wordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wordset` (
  `id` int NOT NULL AUTO_INCREMENT,
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

-- Dump completed on 2020-12-09 17:00:16
