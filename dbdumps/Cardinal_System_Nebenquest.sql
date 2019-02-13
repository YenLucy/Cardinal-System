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
-- Table structure for table `Nebenquest`
--

DROP TABLE IF EXISTS `Nebenquest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nebenquest` (
  `idNebenquest` int(11) NOT NULL,
  `Questlog` varchar(45) NOT NULL,
  `Stand` int(11) NOT NULL,
  `BelohnungGold` varchar(45) DEFAULT NULL,
  `BelohnungRuf` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNebenquest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nebenquest`
--

LOCK TABLES `Nebenquest` WRITE;
/*!40000 ALTER TABLE `Nebenquest` DISABLE KEYS */;
INSERT INTO `Nebenquest` VALUES (0,'Erteilt Person X eine Lektion.',0,NULL,'Gesindel +; Rest -'),(1,'Stehlt Gegenstand X von Person Y.',0,NULL,'Gesindel +; Rest -'),(2,'Macht Werbung für X.',0,NULL,'Gesindel +'),(3,'Eskortiert Klient X an Ort Y.',0,NULL,'+'),(4,'Eskortiert Klient X an Ort Y.',1,NULL,'+'),(5,'Besorgt Menge X von Gegenstand Y.',1,'--',NULL),(6,'Beschützt Ort X oder Gegenstand Y.',1,'--','+'),(7,'Findet Person X.',2,'-','+'),(8,'Findet einfache Bestien.',2,'-','++'),(9,'Findet gestohlene Waren.',2,'-','(+)'),(10,'Findet Häftling X.',3,'O (Lebendig) / - (Tot)',NULL),(11,'Besorgt Menge X von Gegenstand Y.',3,'- / O',NULL),(12,'Findet Gegenstand X wieder auf.',3,'O',NULL),(13,'Beschützt Klient X oder Ort Y.',4,'O','+ ; Gesindel -'),(14,'Bringt Ware X an Ort Y.',4,'-',NULL),(15,'Besorgt Menge X von Gegenstand Y.',4,'O',NULL),(16,'Erledige mittelgroße Bestie.',4,'O','+'),(17,'Testet Medizin X oder Trank Y.',5,'O bis +',NULL),(18,'Findet seltenen Gegenstand X.',5,'+',NULL),(19,'Besorgt Gegenstand X von Ort Y.',5,'O',NULL),(20,'Beschützt Klient X oder Ort Y.',6,'O',NULL),(21,'Bringe Ware X an Ort Y.',6,'-',NULL),(22,'Besorgt Menge X von Gegenstand Y.',6,'O',NULL),(23,'Erledigt eine mittelgroße Bestie.',6,'O',NULL),(24,'Testet Medizin X.',6,'O bis +',NULL),(25,'Findet seltenen Gegenstand',6,'+',NULL),(26,'Besorgt Gegenstand X von Ort Y',6,'O',NULL),(27,'Findet Häftling X.',7,'+ (Lebendig) / O (Tot)',NULL),(28,'Besorgt Menge X von Gegenstand Y.',7,'O bis +',NULL),(29,'Findet Gegenstand X wieder auf.',7,'+',NULL),(30,'Indoktriniert Personenkreis X.',8,NULL,'Erfolg: ++ / Niederlage: -'),(31,'Unterstützt die Inquisition.',8,'++','-'),(32,'Erlegt eine große Bestie.',8,'+++','+++'),(33,'Erteilt Person X eine Lektion',9,'++','++'),(34,'Stehlt Gegenstand X von Person Y',9,'++','++'),(35,'Eskortiert Klient X an Ort Y.',9,'++','++'),(36,'Besorgt Menge X von Gegenstand Y.',9,'++','++'),(37,'Beschützt Ort X oder Klient Y.',9,'++','++'),(38,'Findet Person X.',9,'++','++'),(39,'Jagt große Bestien.',9,'++','++'),(40,'Findet gestohlene Gegenstände wieder auf.',9,'++','++'),(41,'Findet gesuchten Verbrecher X',9,'++','++'),(42,'Findet Gegenstand X wieder auf',9,'++','++'),(43,'Bringe Ware X an Ort Y',9,'++','++'),(44,'Testet Trank X.',9,'++','++'),(45,'Findet seltenen Gegenstand X',9,'++','++'),(46,'Besorgt Gegenstand X von Ort Y',9,'++','++'),(47,'Indoktriniert Personenkreis X',9,'++','Erfolg: ++ / Niederlage: --'),(48,'Helft der Inquisition',9,'++','-'),(49,'Stehlt Gegenstand X von Person Y',10,'+++','+++'),(50,'Eskortiert Klient X an Ort Y.',10,'+++','+++'),(51,'Besorgt Menge X von Gegenstand Y.',10,'+++','+++'),(52,'Beschützt Ort X oder Klient Y.',10,'+++','+++'),(53,'Findet Person X.',10,'+++','+++'),(54,'Jagt große Bestien.',10,'+++','+++'),(55,'Findet gestohlene Gegenstände wieder auf.',10,'+++','+++'),(56,'Findet gesuchten Verbrecher X',10,'+++','+++'),(57,'Findet Gegenstand X wieder auf',10,'+++','+++'),(58,'Bringe Ware X an Ort Y',10,'+++','+++'),(59,'Testet Trank X.',10,'+++','+++'),(60,'Findet seltenen Gegenstand X',10,'+++','+++'),(61,'Besorgt Gegenstand X von Ort Y',10,'+++','+++'),(62,'Indoktriniert Personenkreis X',10,'+++','Erfolg: +++ / Niederlage: --'),(63,'Helft der Inquisition',10,'+++','--');
/*!40000 ALTER TABLE `Nebenquest` ENABLE KEYS */;
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
