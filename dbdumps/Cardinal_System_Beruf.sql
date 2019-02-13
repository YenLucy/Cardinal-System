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
-- Table structure for table `Beruf`
--

DROP TABLE IF EXISTS `Beruf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beruf` (
  `idBeruf` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Stand` int(11) NOT NULL,
  PRIMARY KEY (`idBeruf`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Beruf`
--

LOCK TABLES `Beruf` WRITE;
/*!40000 ALTER TABLE `Beruf` DISABLE KEYS */;
INSERT INTO `Beruf` VALUES (0,'Bettler',0),(1,'Dieb',0),(2,'Hausierer',0),(3,'Hure',0),(4,'Landstreicher',0),(5,'Lumpensammler',0),(6,'Spielmann',0),(7,'Straßenkind',0),(8,'Wegelagerer',0),(9,'Zigeuner',0),(10,'Ackerknecht',1),(11,'Handwerksgeselle',1),(12,'Kaufmannslehrling',1),(13,'Jagdgehilfe',1),(14,'Kirchendiener',1),(15,'Koch',1),(16,'Kurier',1),(17,'Magd',1),(18,'Säcker',1),(19,'Tagelöhner',1),(20,'Bader',2),(21,'Barbier',2),(22,'Kesselflicker',2),(23,'Leinenweber',2),(24,'Müller',2),(25,'Nachtwächter',2),(26,'Schäfer',2),(27,'Türmer',2),(28,'Abdecker',3),(29,'Färber',3),(30,'Gassenkehrer',3),(31,'Gerber',3),(32,'Kerkermeister',3),(33,'Köhler',3),(34,'Metzger',3),(35,'Scharfrichter',3),(36,'Seifensieder',3),(37,'Totengräber',3),(38,'Bäcker',4),(39,'Brauer',4),(40,'Böttcher',4),(41,'Buchbinder',4),(42,'Dachdecker',4),(43,'Drechsler',4),(44,'Kürschner',4),(45,'Maler',4),(46,'Sattler',4),(47,'Schmied',4),(48,'Messerschmied',4),(49,'Grobschmied',4),(50,'Nagelschmied',4),(51,'Goldschmied',4),(52,'Hufschmied',4),(53,'Schneider',4),(54,'Schuhmacher',4),(55,'Tischler',4),(56,'Wagner',4),(57,'Zimmerer',4),(58,'Advocat',5),(59,'Alchemist',5),(60,'Arzt',5),(61,'Naturforscher',5),(62,'Philosoph',5),(63,'Richter',5),(64,'Schreiber',5),(65,'Schöffe',5),(66,'Schullehrer',5),(67,'Universitätsstudent',5),(68,'Beamter',6),(69,'Großbauer',6),(70,'Herold',6),(71,'Schultheiß',6),(72,'Amtsvogt',6),(73,'Professor',6),(74,'Zunftmeister',6),(75,'Gardist',7),(76,'Hauptmann',7),(77,'Söldner',7),(78,'Soldat',7),(79,'niedergelassener Veteran',7),(80,'Abt/Äbtin',8),(81,'Bischof',8),(82,'Dekan',8),(83,'Mönch/Nonne',8),(84,'Laienprediger',8),(85,'Pfarrer',8),(86,'Wanderprediger',8),(87,'Weihbischof',8),(88,'Bankier',9),(89,'Wechsler',9),(90,'Bürgermeister',9),(91,'Kaufmann',9),(92,'Ratsherr',9),(93,'Adels-Angehörige',10),(94,'Baron',10),(95,'Freiherr',10),(96,'Graf',10),(97,'Ritter',10),(98,'Jäger',11);
/*!40000 ALTER TABLE `Beruf` ENABLE KEYS */;
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
