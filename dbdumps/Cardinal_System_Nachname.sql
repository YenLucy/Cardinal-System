-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: Cardinal_System
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `Nachname`
--

DROP TABLE IF EXISTS `Nachname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nachname` (
  `idNachname` int(11) NOT NULL,
  `Region` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Stand` int(11) NOT NULL,
  PRIMARY KEY (`idNachname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nachname`
--

LOCK TABLES `Nachname` WRITE;
/*!40000 ALTER TABLE `Nachname` DISABLE KEYS */;
INSERT INTO `Nachname` VALUES (0,'0','Bach',1),(1,'0','Bader',1),(2,'0','Berger',1),(3,'0','Böddecker',1),(4,'0','Buchner',1),(5,'0','Engelmann',1),(6,'0','Faber',1),(7,'0','Greiffenberg',1),(8,'0','Heller',1),(9,'0','Jäger',1),(10,'0','Köhler',1),(11,'0','Meißner',1),(12,'0','Metternich',1),(13,'0','Praetorius',1),(14,'0','Quantz',1),(15,'0','Rauch',1),(16,'0','Rivander',1),(17,'0','Rosenmüller',1),(18,'0','Roth',1),(19,'0','Sartorius',1),(20,'0','Schmidt',1),(21,'0','Schönenberg',1),(22,'0','Schuchardt',1),(23,'0','Schütz',1),(24,'0','Siefert',1),(25,'0','Spee',1),(26,'0','Stein',1),(27,'0','Strauß',1),(28,'0','Tangel',1),(29,'0','Unger',1),(30,'0','Valentini',1),(31,'0','Voigtländer',1),(32,'0','Wagner',1),(33,'0','Walderdorff',1),(34,'0','Weber',1),(35,'0','Zeuner',1),(36,'0','von Greiffenberg',9),(37,'0','von Walderdorff',9),(38,'0','von Metternich',9),(39,'0','von Rivander',9),(40,'0','von Schönenberg',9),(41,'0','von Strauß',9),(42,'0','von Rosenmüller',9),(43,'0','von Spee',9),(44,'0','von Wagner',9),(45,'0','von Schütz',9),(46,'1','Beauchamps',1),(47,'1','Bellefonds',1),(48,'1','Belleville',1),(49,'1','Bernier',1),(50,'1','Cambert',1),(51,'1','Cosset',1),(52,'1','Daquin',1),(53,'1','Fleury',1),(54,'1','Gigault',1),(55,'1','Gondi',1),(56,'1','Lalouette',1),(57,'1','Leclair',1),(58,'1','Lefevre',1),(59,'1','Maury',1),(60,'1','Mont',1),(61,'1','Montéclair',1),(62,'1','de Mouton',9),(63,'1','de Philidor',9),(64,'1','de Richard',9),(65,'1','de Verdier',9),(66,'1','de Vintimille',9),(67,'2','Medinilla',1),(68,'2','Barroso',1),(69,'2','Suárez',1),(70,'2','da Pina',1),(71,'2','de Alarcón',1),(72,'2','de la Cruz',9),(73,'2','de Montanes',9),(74,'2','Farnese',9),(75,'4','Bilinska',1),(76,'4','Cybis',1),(77,'4','Czyzewski',1),(78,'4','Kamenski',1),(79,'4','Romanow',9),(80,'4','Naryschkina',9),(81,'4','Gruschezkaja',9),(82,'5','Pacchioni',1),(83,'5','Sessi',1),(84,'5','Albinoni',9),(85,'5','Fabris',1),(86,'5','Pergolesi',9),(87,'5','Calicchio',1),(88,'5','Pitoni',9),(89,'5','Strozzi',1),(90,'3','Baltens',1),(91,'3','Grotius',1),(92,'3','Bolnes',1),(93,'3','van Goyen',9),(94,'3','van Baburen',9),(95,'3','van Rijn',9);
/*!40000 ALTER TABLE `Nachname` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-08 11:41:41
