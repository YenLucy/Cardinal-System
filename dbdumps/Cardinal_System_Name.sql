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
-- Table structure for table `Name`
--

DROP TABLE IF EXISTS `Name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Name` (
  `idName` int(11) NOT NULL,
  `Region` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`idName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Name`
--

LOCK TABLES `Name` WRITE;
/*!40000 ALTER TABLE `Name` DISABLE KEYS */;
INSERT INTO `Name` VALUES (0,'0','Albert'),(1,'0','Anton'),(2,'0','August'),(3,'0','Bartholomeus'),(4,'0','Casper'),(5,'0','Christian'),(6,'0','Clemens'),(7,'0','Cornelius'),(8,'0','Ernst'),(9,'0','Eugen'),(10,'0','Friedrich'),(11,'0','Heinrich'),(12,'0','Hieronymus'),(13,'0','Ignaz'),(14,'0','Jakob'),(15,'0','Johannes'),(16,'0','Leopold'),(17,'0','Matthäus'),(18,'0','Moritz'),(19,'0','Nicolas'),(20,'0','Peter'),(21,'0','Sigmund'),(22,'0','Theodor'),(23,'0','Wilhelm'),(24,'0','Adelheid'),(25,'0','Anne'),(26,'0','Augusta'),(27,'0','Cäcilie'),(28,'0','Caroline'),(29,'0','Charlotte'),(30,'0','Christine'),(31,'0','Dorothea'),(32,'0','Elisabeth'),(33,'0','Friederike'),(34,'0','Henriette'),(35,'0','Hildegard'),(36,'0','Josepha'),(37,'0','Katharina'),(38,'0','Konstanze'),(39,'0','Louise'),(40,'0','Margarita'),(41,'0','Maria'),(42,'0','Mathilde'),(43,'0','Sophie'),(44,'0','Theresa'),(45,'0','Wilhelmine'),(46,'1','Anne'),(47,'1','Antoinette'),(48,'1','Catherine'),(49,'1','Christine'),(50,'1','Claudette'),(51,'1','Colette'),(52,'1','Constance'),(53,'1','Diane'),(54,'1','Francoise'),(55,'1','Isabelle'),(56,'1','Jacquet'),(57,'1','Jeanne'),(58,'1','Josephine'),(59,'1','Lucile'),(60,'1','Madeleine'),(61,'1','Marguerite'),(62,'1','Marie'),(63,'1','Olimpe'),(64,'1','Rose'),(65,'1','Solange'),(66,'1','Alexandre'),(67,'1','André'),(68,'1','Antoine'),(69,'1','Baptiste'),(70,'1','Bénigne'),(71,'1','Bodin'),(72,'1','Charles'),(73,'1','Clément'),(74,'1','Denis'),(75,'1','Etienne'),(76,'1','Eustache'),(77,'1','Francois'),(78,'1','Germain'),(79,'1','Guillaume'),(80,'1','Henri'),(81,'1','Jacques'),(82,'1','Jean'),(83,'1','Joseph'),(84,'1','Louis'),(85,'1','Marc'),(86,'1','Marin'),(87,'1','Maxime'),(88,'1','Michel'),(89,'1','Paul'),(90,'1','Pierre'),(91,'1','Richard'),(92,'1','Robert'),(93,'2','Miguel'),(94,'2','Ana'),(95,'2','Cristóbal'),(96,'2','Alejandra'),(97,'2','Juan'),(98,'2','Juana'),(99,'2','Felipe'),(100,'2','Elisabetta'),(101,'3','Digna'),(102,'3','Christiaan'),(103,'3','Catharina'),(104,'3','Jan'),(105,'3','Marijke'),(106,'3','Rembrandt'),(107,'4','Józef'),(108,'4','Olga'),(109,'4','Tytus'),(110,'4','Alexei'),(111,'4','Pjotr'),(112,'4','Natalja'),(113,'4','Iwan'),(114,'5','Tomaso'),(115,'5','Impératrice'),(116,'5','Antonio'),(117,'5','Lucrezia'),(118,'5','Giovanni'),(119,'5','Camillá'),(120,'5','Giuseppe'),(121,'5','Barbara'),(122,'2','Ruiz'),(123,'2','Inés'),(124,'2','Gonzales'),(125,'3','Harmenszoon'),(126,'4','Wissiljewitsch'),(127,'4','Alexejewitsch'),(128,'4','Kirillowna'),(129,'5','Maria'),(130,'5','Battista'),(131,'5','Ottavia');
/*!40000 ALTER TABLE `Name` ENABLE KEYS */;
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
