-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
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

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `idRegion` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (0,'Deutschland'),(6,'England'),(1,'Frankreich'),(5,'Italien'),(3,'Niederlande'),(4,'Ost-Europa'),(2,'Spanien');
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stand`
--

DROP TABLE IF EXISTS `Stand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stand` (
  `idStand` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`idStand`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stand`
--

LOCK TABLES `Stand` WRITE;
/*!40000 ALTER TABLE `Stand` DISABLE KEYS */;
INSERT INTO `Stand` VALUES (10,'Adlige'),(1,'Bedienstete'),(6,'Gehobenes'),(8,'Geistliche'),(5,'Gelehrte'),(0,'Gesindel und fahrendes Volk'),(4,'Handwerker'),(11,'Jäger'),(7,'Kriegsvolk'),(9,'Patrizier'),(2,'Unehrlicher Beruf'),(3,'Unreine Dienste');
/*!40000 ALTER TABLE `Stand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05  9:07:23
