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
-- Table structure for table `Alter`
--

DROP TABLE IF EXISTS `Alter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alter` (
  `idAlter` int(11) NOT NULL,
  `Beschreibung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAlter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alter`
--

LOCK TABLES `Alter` WRITE;
/*!40000 ALTER TABLE `Alter` DISABLE KEYS */;
INSERT INTO `Alter` VALUES (0,'sehr jung'),(1,'sehr alt'),(2,'gesetzt'),(3,'wirkt alterlos'),(4,'wirkt älter'),(5,'wirkt jünger'),(6,'erwachsenenalter');
/*!40000 ALTER TABLE `Alter` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Gegenstand`
--

DROP TABLE IF EXISTS `Gegenstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gegenstand` (
  `idGegenstand` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Wert` int(11) DEFAULT NULL,
  `Kategorie` int(11) DEFAULT NULL,
  `Beschreibung` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idGegenstand`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gegenstand`
--

LOCK TABLES `Gegenstand` WRITE;
/*!40000 ALTER TABLE `Gegenstand` DISABLE KEYS */;
INSERT INTO `Gegenstand` VALUES (0,'Aristokratische Kleidung',150,0,'Regeln: Unterhalt + 20; Redekunst + 2'),(1,'Bürgerliche Kleidung',50,0,'Regeln: Redekunst + 1'),(2,'Gardeuniform',50,0,'Regeln: Parieren + 1; Schildblock + 1'),(3,'Gelehrtenkleidung',35,0,'Regeln: 1x/Kampf von gebundenem Gegner lösen'),(4,'Handwerkerkleidung',20,0,'Regeln: Handwerken + 2'),(5,'Kriegeruntergewand',25,0,'Regeln: LeP + 3'),(6,'Landsknechtkleidung',20,0,'Regeln: 1 Gegner mehr gleichzeitig an sich binden als sonst möglich'),(7,'Lithurgisches Gewand',70,0,'Regeln: Menschliche Gegner greifen seltener an; 1x/Kampf Nahkampfangriff - 3 Erfolge'),(8,'Mönchs-/Nonnenkleidung',5,0,'Regeln: 1x/Konflikt: Tausche 1 Idee gegen Segnung oder umgekehrt'),(9,'Musketierkleidung',30,0,'Regeln: 1x/Kampf Schusswaffe für 1 AP weniger (Min. 1 AP) ausführen'),(10,'Reisekleidung',25,0,'Regeln: Puffer-LeP +2'),(11,'Söldnerkleidung',20,0,'Regeln: 1x/Kampf Nahkampfwaffe/Schleuderwaffe für 1 AP weniger (Min 1AP) ausführen'),(12,'Kürass/Brigantine',70,1,'schwere Rüstung'),(13,'Lederkoller',30,1,'mittlere Rüstung'),(14,'Ross-Harnisch',80,1,'Pferde-Rüstung (PW+1)'),(15,'Armbrust/Bogen',40,2,'Standard Armbrust oder Bogen'),(16,'Dolch/Messer',10,2,'Standard Dolch oder Messer'),(17,'Fechtwaffe',75,2,'Standard Fechtwaffe'),(18,'Explosivgranate',5,2,'Wurfwaffe; Standard Explosivgeschoss'),(19,'Lanze',30,2,'Standard Lanze'),(20,'Muskete',100,2,'Standard Muskete'),(21,'Schlagwaffe',50,2,'Standard Schlagwaffe'),(22,'Pistole',90,2,'Standard Steinschlosspistole'),(23,'Säbel',60,2,'Standard Säbel'),(24,'Schleuder',5,2,'Standard Schleuder'),(25,'Schwert',45,2,'Standard Einhand-Schwert'),(26,'Stangenwaffe',35,2,'Standard Stangenwaffe'),(27,'Schild/Parierschild',20,2,'Standard Schild'),(28,'Transportables Laboratorium',60,3,'Erforderlich für Herstellungsprozesse (Elixiere, Gifte, Wurfgeschosse)'),(29,'Werkzeugkiste',25,3,'Erforderlich für handwerkliche Tätigkeiten'),(30,'Fackel',1,4,'Schwaches Licht für 1 Stunde'),(31,'Fernrohr',70,4,'Bonus von +2 auf Erkennen von weit entfernten Objekten (nicht im Kampf)'),(32,'Kletterhaken',10,4,'Bonus von +2 auf Akrobatik-Proben beim Klettern mit Seilen oder ähnliche Tätigkeit'),(33,'Kompass',25,4,'Bestimmt automatisch Norden'),(34,'Landkarte für 50x50km',15,4,'Automatisches Finden von Städten, Herbergen, Burgen etc'),(35,'Öllampe',10,4,'Erfordert Öl; Unterhalt + 10'),(36,'Rückentrage',8,4,'Träger kann 2 Beutegut-Pakete tragen'),(37,'Schlafsack',7,4,'1 Person; erforderlich, um im Freien LeP zu regenerieren'),(38,'Seil',10,4,'5 Meter; vielseitig einsetzbar'),(39,'Schreibutensilien',15,4,'Papier, Silberstift, Feder und Tinte für eigene Notizen'),(40,'Vorrat an Alkohol',20,4,'Schnaps, Wein, Liköre'),(41,'Zelt',20,4,'2 Personen; erforderlich, um im Freien LeP zu regenerieren'),(42,'Feldbett',15,4,'Verbesserte Regeneration von LeP'),(43,'Handschellen mit Schlüssel',22,4,'Fesseln von besiegten menschenähnlichen Gegnern möglich'),(44,'Vorhängeschloss mit Schlüssel',17,4,'Zum Abschließen von Türen und Truhen'),(45,'Truhe mit Schloss mit Schlüssel',33,4,'Sicheres Verwahren von Gegenständen/Münzen (max 1000 Gulden in Münzen passen in eine Kiste)'),(46,'Reitpferd',90,5,'Unterhalt + 20; 2 Beutegut-Pakete'),(47,'Schlachtross',200,5,'Unterhalt + 40; 2 Beutegut-Pakete'),(48,'Lasttier (Esel, Ochse)',20,5,'Unterhalt + 10; 4 Beutegut-Pakete'),(49,'Kutsche, 1-Achser',250,5,'Unterhalt + 20; 10 Beutegut-Pakete'),(50,'Kutsche, 2-Achser',500,5,'Unterhalt + 30; 15 Beutegut-Pakete'),(51,'Karren, 1-Achser',30,5,'Unterhalt + 5; 20 Beutegut-Pakete'),(52,'Wagen, 2-Achser',50,5,'Unterhalt + 10; 40 Beutegut-Pakete'),(53,'Flussschiff',610,5,'Unterhalt + 50; 100 Beutegut-Pakete');
/*!40000 ALTER TABLE `Gegenstand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GegenstandKategorie`
--

DROP TABLE IF EXISTS `GegenstandKategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GegenstandKategorie` (
  `idGegenstandKategorie` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGegenstandKategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GegenstandKategorie`
--

LOCK TABLES `GegenstandKategorie` WRITE;
/*!40000 ALTER TABLE `GegenstandKategorie` DISABLE KEYS */;
INSERT INTO `GegenstandKategorie` VALUES (0,'Kleidungssets'),(1,'Typische Panzerungen'),(2,'Typische Waffen'),(3,'Ausrüstung für Jägerkräfte'),(4,'Ausrüstung'),(5,'Reittiere und Fahrzeuge');
/*!40000 ALTER TABLE `GegenstandKategorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gulden`
--

DROP TABLE IF EXISTS `Gulden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gulden` (
  `idGulden` int(11) NOT NULL,
  `Minimum` int(11) DEFAULT NULL,
  `Maximum` int(11) DEFAULT NULL,
  `Bezeichner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGulden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gulden`
--

LOCK TABLES `Gulden` WRITE;
/*!40000 ALTER TABLE `Gulden` DISABLE KEYS */;
INSERT INTO `Gulden` VALUES (0,0,20,'---'),(1,21,50,'--'),(2,51,80,'-'),(3,81,100,'O'),(4,101,130,'+'),(5,131,160,'++'),(6,161,200,'+++');
/*!40000 ALTER TABLE `Gulden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kosmetik`
--

DROP TABLE IF EXISTS `Kosmetik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kosmetik` (
  `idKosmetik` int(11) NOT NULL,
  `Beschreibung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idKosmetik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kosmetik`
--

LOCK TABLES `Kosmetik` WRITE;
/*!40000 ALTER TABLE `Kosmetik` DISABLE KEYS */;
INSERT INTO `Kosmetik` VALUES (0,'stark gepudert'),(1,'pickeliges Gesicht'),(2,'stilvoll geschminkt'),(3,'übertrieben geschminkt'),(4,'unschöne Narbe im Gesicht'),(5,'grobporige Haut'),(6,'Ätz-/Säurespuren'),(7,'schlechte Zähne');
/*!40000 ALTER TABLE `Kosmetik` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `RepXRewards`
--

DROP TABLE IF EXISTS `RepXRewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepXRewards` (
  `idReputation` int(11) NOT NULL,
  `ReputationXReward` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReputation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepXRewards`
--

LOCK TABLES `RepXRewards` WRITE;
/*!40000 ALTER TABLE `RepXRewards` DISABLE KEYS */;
INSERT INTO `RepXRewards` VALUES (0,'---'),(1,'--'),(2,'-'),(3,'O'),(4,'+'),(5,'++'),(6,'+++');
/*!40000 ALTER TABLE `RepXRewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sprechart`
--

DROP TABLE IF EXISTS `Sprechart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sprechart` (
  `idSprechart` int(11) NOT NULL,
  `Beschreibung` varchar(45) DEFAULT NULL,
  `Mindeststand` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSprechart`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sprechart`
--

LOCK TABLES `Sprechart` WRITE;
/*!40000 ALTER TABLE `Sprechart` DISABLE KEYS */;
INSERT INTO `Sprechart` VALUES (0,'Starker Dialekt','0'),(1,'Lispeln','0'),(2,'Stottern','0'),(3,'Hasenscharte','0'),(4,'sehr eloquent','5'),(5,'Gossensprache','0');
/*!40000 ALTER TABLE `Sprechart` ENABLE KEYS */;
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

--
-- Table structure for table `Statur`
--

DROP TABLE IF EXISTS `Statur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Statur` (
  `idStatur` int(11) NOT NULL,
  `Beschreibung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStatur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Statur`
--

LOCK TABLES `Statur` WRITE;
/*!40000 ALTER TABLE `Statur` DISABLE KEYS */;
INSERT INTO `Statur` VALUES (0,'Sehr dünn'),(1,'Sehr dick'),(2,'hochgewachsen'),(3,'kleinwüchsig'),(4,'muskulös'),(5,'stiernackig'),(6,'gebückt gehend'),(7,'steife Haltung');
/*!40000 ALTER TABLE `Statur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Verletzungen`
--

DROP TABLE IF EXISTS `Verletzungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verletzungen` (
  `idVerletzungen` int(11) NOT NULL,
  `Beschreibung` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVerletzungen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verletzungen`
--

LOCK TABLES `Verletzungen` WRITE;
/*!40000 ALTER TABLE `Verletzungen` DISABLE KEYS */;
INSERT INTO `Verletzungen` VALUES (0,'Humpelt'),(1,'fehlender Arm'),(2,'fehlendes Bein'),(3,'Feuernarben'),(4,'Krankheitsnarben'),(5,'kann Arm nicht verwenden'),(6,'Augenklappe');
/*!40000 ALTER TABLE `Verletzungen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-13 16:00:14
