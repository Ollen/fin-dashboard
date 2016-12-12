CREATE DATABASE  IF NOT EXISTS `cso_finance` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cso_finance`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: cso_finance
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activityID` int(11) NOT NULL AUTO_INCREMENT,
  `orgID` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `dateSubmitted` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `submittedBy` varchar(100) DEFAULT NULL,
  `beginDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `dateDesc` varchar(255) NOT NULL,
  `processType` varchar(100) DEFAULT NULL,
  `PRSno` int(11) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `particular` varchar(100) DEFAULT NULL,
  `payTo` varchar(100) DEFAULT NULL,
  `PCVno` int(11) DEFAULT NULL,
  `DORno` int(11) DEFAULT NULL,
  `actualRevenue` int(11) DEFAULT NULL,
  `expRevenue` int(11) DEFAULT NULL,
  `expDisburse` int(11) DEFAULT NULL,
  `netIncome` int(11) DEFAULT NULL,
  `FRAno` int(11) DEFAULT NULL,
  PRIMARY KEY (`activityID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (22,15,'2016-12-12 06:30:40','2016-12-12 06:30:40','ESA Fund Raising Event','A two-day fund raising event in DLSU-M','John Locke','2016-12-21','2016-12-22','Specific','LQ',143782747,4300,'Food,Transportation, Venue',NULL,NULL,175837467,NULL,NULL,NULL,NULL,NULL),(23,2,'2016-12-12 06:39:30','2016-12-12 06:39:30','Origami 101','Origami Folding 101','Bryan Myers','2016-12-12','2016-12-12','Specific','DP',18746274,1600,'Venue, Materials','Julian Hobbes',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,2,'2016-12-12 06:48:38','2016-12-12 06:48:38','AdCreate Sport','A one week Sport Event in Razon','Henry Townshend','2016-12-20','2016-12-27','Specific','NE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,2,'2016-12-12 06:51:34','2016-12-12 06:51:34','Movie Marathon','Movie Watching!!!','Bobby Fischer','2017-01-06','2017-04-21','Term Long','RM',21857289,3000,'Venue, Food','John Ymir',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,5,'2016-12-12 07:08:13','2016-12-12 07:08:13','BMS Clean up Drive','Clean up Drive in DLSU','Sam Yeager','2016-12-29','2016-12-31','Specific','BT',146274627,4200,'Venue, Food, Transportation','Todd Great',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,18,'2016-12-12 07:11:25','2016-12-12 07:11:25','Katakana 101','Katakana Tutorial in Andrew','Rin Hideyoshi','2016-12-21','2016-12-21','Term Long','DP',15632644,4300,'Papers, many papers','Drake Cobold',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,26,'2016-12-12 07:14:31','2016-12-12 07:14:31','Eat all you can Sushi','Eat Sushi at Binondo','Bryan Julius','2016-12-29','2017-01-07','Specific','LQ',142154272,3000,'SUSHI',NULL,NULL,73452341,NULL,NULL,NULL,NULL,NULL),(29,6,'2016-12-12 07:16:46','2016-12-12 07:16:46','Slav appreciation day','Appreciating Slavs','Ivan Ivanovitch Ivanovsky','2017-01-06','2017-02-04','Term Long','RM',12174827,3000,'Addidas','Boris Yurov',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,22,'2016-12-12 07:19:05','2016-12-12 07:19:05','Star City Field Trip','Field Trip','Wally Boyola','2016-12-27','2017-01-06','Specific','CA',2147483647,3100,'Transportation','Jobert Hue',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,32,'2016-12-12 07:21:21','2016-12-12 07:21:21','Window Shopping @ MOA','Window Shopping','Greg Morris','2016-12-27','2017-01-06','Term Long','RM',126472617,1000,'Transportion','Hong Kong',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,25,'2016-12-12 07:34:30','2016-12-12 07:34:30','MOOvie Watching','Movie Watching in the Mall of Asia','Allegori Grigori','2016-12-28','2017-01-07','Term Long','RM',13657162,6000,'Movie, Food, Transportation','Hill Jill',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,25,'2016-12-12 07:44:07','2016-12-12 07:44:07','Dance Workshop','Dance Workshop in Razon','Sergio Hank','2016-12-12','2016-12-30','Term Long','RM',231263726,439209,'Food','Mark Crisp',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,19,'2016-12-12 07:47:17','2016-12-12 07:47:17','Trip to Manila Zoo','Manila Zoo Trip','Mary Angelique','2016-12-21','2017-01-06','Term Long','RM',1234234,4200,'Food','Jobert Sanchez',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,21,'2016-12-12 07:47:57','2016-12-12 07:47:57','MVC Workshop','Tutorial in MVC','Allendale Nato','2016-12-30','2017-01-05','Specific','RM',1542334,2133,'Computers','Jose Mari',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,21,'2016-12-12 08:10:33','2016-12-12 08:10:33','Java Workshop','Java Workshop','Ryan Go','2016-12-20','2017-01-05','Specific','CA',234123123,4000,'Food','Allendale Nato',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,21,'2016-12-12 08:13:38','2016-12-12 08:13:38','MySQL Workshop','MySQL Workshop in Gokongwei bldg','Ian Ernesto','2016-12-12','2016-12-22','Term Long','CA',46372837,7000,'Venue, Food, Tranportation','Horace Yu',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,23,'2016-12-12 08:20:58','2016-12-12 08:20:58','Calculus 201','Advance Calculus','Kenneth Santos','2016-12-26','2017-01-05','Term Long','DP',42153232,2300,'Room','Joel Dingo',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,23,'2016-12-12 08:21:50','2016-12-12 08:21:50','Mathematics Talk',NULL,'Kenneth Santos','2016-12-15','2016-12-29','Term Long','NE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,41,'2016-12-12 08:23:56','2016-12-12 08:23:56','Charity Event',NULL,'Juan Luna','2016-12-12','2016-12-28','Term Long','DP',573758274,9000,'Venue, Food, Tranportation','Jack Sam',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,41,'2016-12-12 08:25:02','2016-12-12 08:25:02','Painting 101','Introduction to Painting','Clarence Philips','2016-12-19','2016-12-30','Term Long','NE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,41,'2016-12-12 08:28:59','2016-12-12 08:28:59','Anti-Marcos Rally','One week rally','Nohto Marcos','2016-12-19','2016-12-31','Term Long','LQ',736475698,6000,'fOOD',NULL,NULL,565738,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `billingID` int(11) NOT NULL AUTO_INCREMENT,
  `orgID` int(11) NOT NULL,
  `dateSubmitted` date DEFAULT NULL,
  `orgAcronym` varchar(50) DEFAULT NULL,
  `activityTitle` varchar(100) DEFAULT NULL,
  `activityDate` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `payableTo` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unsettled',
  PRIMARY KEY (`billingID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,1,'2016-08-16','ACCESS','General Assembly','2016-08-24',5000,'LCR','settled'),(2,3,'2016-09-10','AIESEC','Shirt Selling','2016-10-10',3000,'PDFO','settled'),(3,5,'2016-07-07','BMS','Management Seminar','2016-07-20',15000,'PDFO','unsettled'),(4,6,'2016-03-30','BSS','General Assembly','2016-04-15',5000,'LCR','unsettled'),(5,41,'2016-07-11','CSO','Annual Recruitment Week','2016-08-25',20000,'PDFO','settled'),(6,41,'2016-11-11','CSO','Christmas Party','2016-12-10',7500,'LCR','unsettled'),(7,10,'2016-01-15','Cultura','Earth Jam','2016-02-13',4000,'PDFO','unsettled'),(8,20,'2016-05-19','LSS','General Assembly','2016-06-06',3500,'LCR','settled'),(9,30,'2016-07-09','POLISCY','Lecture on the Philippine Constitution','2016-07-20',11000,'PDFO','unsettled');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund`
--

DROP TABLE IF EXISTS `fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund` (
  `fundID` int(11) NOT NULL AUTO_INCREMENT,
  `initBalance` float unsigned DEFAULT '0',
  `netChange` float DEFAULT '0',
  `currBalance` float AS ((`initBalance` - `netChange`)) VIRTUAL,
  PRIMARY KEY (`fundID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund`
--

LOCK TABLES `fund` WRITE;
/*!40000 ALTER TABLE `fund` DISABLE KEYS */;
INSERT INTO `fund` VALUES (1,10000,0,10000),(2,10000,4100,5900),(3,10000,-20.5,10020.5),(4,5000,45000,-40000),(5,0,0,0),(6,0,0,0),(7,0,0,0),(8,0,0,0),(9,0,0,0),(10,0,0,0),(11,0,0,0),(12,0,0,0),(13,0,0,0),(14,0,0,0),(15,0,0,0),(16,0,0,0),(17,0,0,0),(18,0,0,0),(19,0,0,0),(20,0,0,0),(21,0,0,0),(22,0,0,0),(23,0,0,0),(24,0,0,0),(25,0,0,0),(26,0,0,0),(27,0,0,0),(28,0,0,0),(29,0,0,0),(30,0,0,0),(31,0,0,0),(32,0,0,0),(33,0,0,0),(34,0,0,0),(35,0,0,0),(36,0,0,0),(37,0,0,0),(38,0,0,0),(39,0,0,0),(40,0,0,0),(41,0,5000,-5000),(42,0,0,0),(43,0,0,0),(44,0,0,0),(45,0,0,0),(46,0,0,0),(47,0,0,0);
/*!40000 ALTER TABLE `fund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notifID` int(11) NOT NULL AUTO_INCREMENT,
  `activityID` int(11) NOT NULL,
  `orgID` int(11) NOT NULL,
  `notifType` varchar(50) NOT NULL,
  `timedate` datetime NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `orgID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `acronym` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fundID` int(11) NOT NULL,
  PRIMARY KEY (`orgID`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `acronym_UNIQUE` (`acronym`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Association of Computer Engineering Students','ACCESS','access@dlsu.edu.ph','access',1),(2,'AdCreate Society','AdCreate','adcreate@dlsu.edu.ph','adcreate',2),(3,'AIESEC-DLSU','AIESEC','aiesec@dlsu.edu.ph','aiesec',3),(4,'The Organization for American Studies Students','AMSTUD','amstud@dlsu.edu.ph','amstud',4),(5,'Business Management Society','BMS','bms@dlsu.edu.ph','bms',5),(6,'Behavioral Science Society','BSS','bss@dlsu.edu.ph','bss',6),(7,'Civil Engineering Society','CES','ces@dlsu.edu.ph','ces',7),(8,'Chemistry Society','ChemSoc','chemsoc@dlsu.edu.ph','chemsoc',8),(9,'Chemical Engineering Society','ChEn','chen@dlsu.edu.ph','chen',9),(10,'Cultura','Cultura','dlsucultura@gmail.com','cultura',10),(11,'Dalubhasaan ng mga Umuusbong na Mag-aaral ng Araling Filipino','DANUM','danum@dlsu.edu.ph','danum',11),(12,'Electronics and Communications Engineering Society','ECES','eces@dlsu.edu.ph','eces',12),(13,'Economics Organization','EconOrg','econorg@dlsu.edu.ph','econorg',13),(14,'ENGLICOM','ENGLICOM','englicom@dlsu.edu.ph','englicom',14),(15,'European Studies Association','ESA','esa@dlsu.edu.ph','esa',15),(16,'Gakuen Anime Soshiki','GAS','gas.dlsu.stc@gmail.com','gas',16),(17,'Industrial Management Engineering Society','IMES','imes@dlsu.edu.ph','imes',17),(18,'Junior Philippine Institute of Accountants','JPIA','jpia@dlsu.edu.ph','jpia',18),(19,'Kapatiran ng Kabataan para sa Kaunlaran','KKK','kkk@dlsu.edu.ph','kkk',19),(20,'Ley La Salle','LSS','leylasalle@dlsu.edu.ph','lss',20),(21,'La Salle Computer Society','LSCS','lscs@dlsu.edu.ph','lscs',21),(22,'Management of Financial Institution Association','MaFIA','mafia@dlsu.edu.ph','mafia',22),(23,'Mathematics Circle','Math Circle','mathcircle@dlsu.edu.ph','mathcircle',23),(24,'Mechanical Engineering Society','MES','mes@dlsu.edu.ph','mes',24),(25,'MOOMEDIA','MOOMEDIA','moomedia@dlsu.edu.ph','moomedia',25),(26,'Nihon Kenkyuu Kai','NKK','nkk@dlsu.edu.ph','nkk',26),(27,'Outdoor Club','OC','outdoor@dlsu.edu.ph','oc',27),(28,'Physics Society','PhySoc','physoc@dlsu.edu.ph','physoc',28),(29,'Samahan ng Lasalayanong Pilosopo','Pilosopo','pilosopo@dlsu.edu.ph','pilosopo',29),(30,'Political Science Society','POLISCY','poliscy@dlsu.edu.ph','poliscy',30),(31,'Rotaract Club of DLSU','ROTARACT','rotaract@dlsu.edu.ph','rotaract',31),(32,'Sociedad de Historia','SDH','sdh@dlsu.edu.ph','sdh',32),(33,'Society of Manufacturing Engineering','SME','sme@dlsu.edu.ph','sme',33),(34,'Samahan ng mga Mag-aaral sa Sikolohiya','SMS','sms@dlsu.edu.ph','sms',34),(35,'Societas Vitae','SV','sv@dlsu.edu.ph','sv',35),(36,'Team Communications','TEAMCOMM','teamcomm@dlsu.edu.ph','teamcomm',36),(37,'United International Student Organization','UNISTO','unisto@dlsu.edu.ph','unisto',37),(38,'Union of Students Inspired Towards Education','UNITED','united@dlsu.edu.ph','united',38),(39,'Writers’ Guild','WG','wg@dlsu.edu.ph','wg',39),(40,'Young Entrepreneurs Society','YES','yes@dlsu.edu.ph','yes',40),(41,'Council of Student Organizations','CSO','cso@dlsu.edu.ph','cso',41),(42,'Tinola','TNL','tnl.dlsu.edu.ph','tnl',42),(43,'Alpha A','AA','aa.dlsu.edu.ph','aa',43),(44,'Pie Face','PIE','pie@dlsu.edu.ph','pie',44),(45,'Chicken','CHKN','chkn.dlsu.edu.ph','chkn',45);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remark` (
  `remarkID` int(11) NOT NULL AUTO_INCREMENT,
  `activityID` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `revisions` varchar(500) DEFAULT NULL,
  `datePendedCSO` date DEFAULT NULL,
  `CSOremarks` varchar(500) DEFAULT NULL,
  `auditedBy` varchar(50) DEFAULT NULL,
  `dateAudited` date DEFAULT NULL,
  `encodedBy` varchar(50) DEFAULT NULL,
  `dateEncoded` date DEFAULT NULL,
  `dateReceivedSLIFE` date DEFAULT NULL,
  `dateReceivedAcc` date DEFAULT NULL,
  `datePendedSLIFE` date DEFAULT NULL,
  `SLIFEremarks` varchar(500) DEFAULT NULL,
  `datePendedAcc` date DEFAULT NULL,
  `AccRemarks` varchar(500) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`remarkID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remark`
--

LOCK TABLES `remark` WRITE;
/*!40000 ALTER TABLE `remark` DISABLE KEYS */;
INSERT INTO `remark` VALUES (24,22,'Pending','3','2016-12-15','Please revise X and Y.','Ryan Tan','2016-12-22','Jose Albus','2016-12-23','0000-00-00','0000-00-00','0000-00-00','','0000-00-00','',''),(25,23,'Approved','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,24,'Pending','1','2016-12-07','','','0000-00-00','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','0000-00-00','',''),(27,25,'Pending','1','0000-00-00','','','0000-00-00','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','0000-00-00','',''),(28,26,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,27,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,28,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,29,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,30,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,31,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,32,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,33,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,34,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,35,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,36,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,37,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,38,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,39,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,40,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,41,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,42,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `remark` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12  8:32:51