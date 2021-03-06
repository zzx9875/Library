-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publish` varchar(20) DEFAULT NULL,
  `pages` int(10) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `bookcaseid` int(10) DEFAULT NULL,
  `abled` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ieh6qsxp6q7oydadktc9oc8t2` (`bookcaseid`),
  CONSTRAINT `FK_ieh6qsxp6q7oydadktc9oc8t2` FOREIGN KEY (`bookcaseid`) REFERENCES `bookcase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'瑙ｅ咖鏉傝揣搴?,'涓滈噹鍦惥','鐢靛瓙宸ヤ笟鍑虹増绀?,102,27.30,9,0),(2,'杩介绛濈殑浜?,'鍗″嫆寰仿疯儭璧涘凹','涓婃捣浜烘皯鍑虹増绀?,230,33.50,3,0),(3,'浜洪棿澶辨牸','澶娌?,'浣滃鍑虹増绀?,150,17.30,1,1),(4,'杩欏氨鏄簩鍗佸洓鑺傛皵','楂樻槬棣?,'鐢靛瓙宸ヤ笟鍑虹増绀?,220,59.00,3,1),(5,'鐧藉琛?,'涓滈噹鍦惥','鍗楁捣鍑虹増鍏徃',300,27.30,4,1),(6,'鎽嗘浮浜?,'鍏嬭幈鍎柯烽害鍏嬬灏?,'鐧捐姳娲叉枃鑹哄嚭鐗堢ぞ',225,22.80,1,1),(7,'鏆栨殩蹇冪粯鏈?,'绫虫嫤寮楃壒姣?,'婀栧崡灏戝効鍑虹増绀?,168,131.60,5,1),(8,'澶╂墠鍦ㄥ乏鐤瓙鍦ㄥ彸','楂橀摥','鍖椾含鑱斿悎鍑虹増鍏徃',330,27.50,6,1),(9,'鎴戜滑浠?,'鏉ㄧ粵','鐢熸椿.璇讳功.鏂扮煡涓夎仈涔﹀簵',89,17.20,7,1),(10,'娲荤潃','浣欏崕','浣滃鍑虹増绀?,100,100.00,6,1),(11,'姘存祾浼?,'鏂借€愬旱','涓夎仈鍑虹増绀?,300,50.00,1,1),(12,'涓夊浗婕斾箟','缃楄疮涓?,'涓夎仈鍑虹増绀?,300,50.00,2,1),(13,'绾㈡ゼ姊?,'鏇归洩鑺?,'涓夎仈鍑虹増绀?,300,50.00,5,1),(14,'瑗挎父璁?,'鍚存壙鎭?,'涓夎仈鍑虹増绀?,300,60.00,3,1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookadmin`
--

DROP TABLE IF EXISTS `bookadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookadmin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookadmin`
--

LOCK TABLES `bookadmin` WRITE;
/*!40000 ALTER TABLE `bookadmin` DISABLE KEYS */;
INSERT INTO `bookadmin` VALUES (1,'admin1','123123'),(2,'admin2','222222'),(3,'admin3','123456'),(4,'admin4','123456');
/*!40000 ALTER TABLE `bookadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookcase`
--

DROP TABLE IF EXISTS `bookcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookcase`
--

LOCK TABLES `bookcase` WRITE;
/*!40000 ALTER TABLE `bookcase` DISABLE KEYS */;
INSERT INTO `bookcase` VALUES (1,'绀句細'),(2,'鎯呮劅'),(3,'鍥藉'),(4,'鎺ㄧ悊'),(5,'缁樼敾'),(6,'蹇冪悊瀛?),(7,'浼犺'),(8,'绉戞妧'),(9,'璁＄畻鏈?),(10,'灏忚');
/*!40000 ALTER TABLE `bookcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookid` int(10) DEFAULT NULL,
  `readerid` int(10) DEFAULT NULL,
  `borrowtime` varchar(20) DEFAULT NULL,
  `returntime` varchar(20) DEFAULT NULL,
  `adminid` int(10) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,2,3,'2020-06-02','2020-06-16',1,1),(2,4,3,'2020-06-03','2020-06-17',1,3),(3,6,3,'2020-06-03','2020-06-17',1,3),(4,3,3,'2020-06-05','2020-06-19',1,2),(5,3,3,'2020-06-05','2020-06-19',1,2),(6,3,3,'2020-06-05','2020-06-19',1,3),(7,3,3,'2020-06-05','2020-06-19',1,3),(8,2,3,'2020-06-05','2020-06-19',NULL,0),(9,6,3,'2020-06-05','2020-06-19',1,2),(10,6,3,'2020-06-05','2020-06-19',1,2),(11,5,3,'2020-06-05','2020-06-19',1,2),(12,5,3,'2020-06-05','2020-06-19',1,3),(13,5,3,'2020-06-05','2020-06-19',1,3),(14,5,3,'2020-06-05','2020-06-19',1,3),(15,5,3,'2020-06-05','2020-06-19',1,1),(16,3,4,'2020-06-05','2020-06-19',1,1),(17,3,4,'2020-06-05','2020-06-19',1,2),(18,5,4,'2020-06-05','2020-06-19',1,1),(19,5,4,'2020-06-05','2020-06-19',2,1),(20,2,4,'2020-06-05','2020-06-19',NULL,0),(21,5,3,'2020-06-05','2020-06-19',NULL,0),(22,5,3,'2020-06-05','2020-06-19',2,2),(23,6,3,'2020-06-05','2020-06-19',1,1),(24,6,3,'2020-06-05','2020-06-19',1,1),(25,1,3,'2020-06-05','2020-06-19',1,1),(26,2,3,'2020-06-05','2020-06-19',NULL,0),(27,2,3,'2020-06-05','2020-06-19',NULL,0),(28,1,3,'2020-06-05','2020-06-19',NULL,0),(29,6,3,'2020-06-06','2020-06-20',NULL,0),(30,14,3,'2020-06-07','2020-06-21',1,1),(31,13,2,'2020-06-07','2020-06-21',NULL,0),(32,2,2,'2020-06-07','2020-06-21',NULL,0),(33,4,2,'2020-06-07','2020-06-21',NULL,0),(34,1,3,'2020-06-07','2020-06-21',NULL,0),(35,13,3,'2020-06-07','2020-06-21',NULL,0),(36,11,3,'2020-06-07','2020-06-21',NULL,0),(37,14,3,'2020-06-07','2020-06-21',NULL,0);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `cardid` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES (2,'zhangsan','123456','寮犱笁','15630106653','002','鐢?),(3,'lisi','123123','鏉庡洓','131','003','鐢?),(4,'test001','000000','娴嬭瘯','987655123','004','濂?);
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnbook`
--

DROP TABLE IF EXISTS `returnbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returnbook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookid` int(10) DEFAULT NULL,
  `readerid` int(10) DEFAULT NULL,
  `returntime` varchar(20) DEFAULT NULL,
  `adminid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnbook`
--

LOCK TABLES `returnbook` WRITE;
/*!40000 ALTER TABLE `returnbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `returnbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-07 21:50:25
