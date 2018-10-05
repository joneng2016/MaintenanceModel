-- MySQL dump 10.16  Distrib 10.2.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: maintenanceliveline
-- ------------------------------------------------------
-- Server version	10.2.16-MariaDB

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
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_15` (`entity_id`),
  CONSTRAINT `FK_15` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artefact`
--

DROP TABLE IF EXISTS `artefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artefact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_9` (`entity_id`),
  CONSTRAINT `FK_9` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artefact`
--

LOCK TABLES `artefact` WRITE;
/*!40000 ALTER TABLE `artefact` DISABLE KEYS */;
INSERT INTO `artefact` VALUES (1,10),(2,11),(3,12),(4,13),(5,14),(6,15),(7,16),(8,17),(9,18),(10,19),(11,20),(12,21),(13,22),(14,23),(15,24),(16,25),(17,26),(18,27),(19,28),(20,29),(21,30),(22,31),(23,32),(24,33);
/*!40000 ALTER TABLE `artefact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_goal`
--

DROP TABLE IF EXISTS `change_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change_goal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `probability` int(11) NOT NULL,
  `goal_id` int(10) unsigned NOT NULL,
  `long_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_203` (`goal_id`),
  KEY `long_id` (`long_id`),
  CONSTRAINT `change_goal_ibfk_1` FOREIGN KEY (`goal_id`) REFERENCES `goal` (`id`),
  CONSTRAINT `change_goal_ibfk_2` FOREIGN KEY (`long_id`) REFERENCES `long_consequence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_goal`
--

LOCK TABLES `change_goal` WRITE;
/*!40000 ALTER TABLE `change_goal` DISABLE KEYS */;
INSERT INTO `change_goal` VALUES (71,75,58,16),(72,75,59,16),(73,75,60,16),(74,75,61,16),(75,75,62,16),(76,75,63,16),(77,75,64,16),(78,75,65,16),(79,75,66,16),(80,75,67,16),(81,75,68,16),(82,75,69,16),(83,75,70,16),(84,75,71,16),(85,75,72,16),(86,75,73,16),(87,75,74,16),(88,75,75,16),(89,75,76,16),(90,75,77,16),(91,75,78,16),(92,75,79,16),(93,75,80,16),(94,75,81,16),(95,75,82,16),(96,75,83,16),(97,75,84,16),(98,75,85,16),(99,75,86,16),(100,75,87,16),(101,75,88,16),(102,75,89,16),(103,75,90,16),(104,75,91,16),(105,75,92,16),(106,75,93,16),(107,75,94,16),(108,75,95,16),(109,75,96,16),(110,75,97,16),(111,75,98,16),(112,75,99,16),(113,75,100,16),(114,75,101,16),(115,75,102,16),(116,75,103,16),(117,75,105,16),(118,75,106,16),(119,75,107,16),(120,75,108,16),(121,75,58,17),(122,75,59,18),(123,75,60,19),(124,75,61,20),(125,75,62,21),(126,75,63,22),(127,75,64,23),(128,75,65,24),(129,75,66,25),(130,75,67,26),(131,75,68,27),(132,75,69,28),(133,75,70,29),(134,75,71,30),(135,75,72,31),(136,75,73,32),(137,75,74,33),(138,75,75,34),(139,75,76,35),(140,75,77,36),(141,75,78,37),(142,75,79,38),(143,75,80,39),(144,75,81,40),(145,75,82,41),(146,75,83,42),(147,75,84,43),(148,75,85,44),(149,75,86,45),(150,75,87,46),(151,75,88,47),(152,75,89,48),(153,75,90,49),(154,75,91,50),(155,75,92,51),(156,75,93,52),(157,75,94,53),(158,75,95,54),(159,75,96,55),(160,75,97,56),(161,75,98,57),(162,75,99,58),(163,75,100,59),(164,75,101,60),(165,75,102,61),(166,75,103,62),(167,75,105,63),(168,75,106,64),(169,75,107,65),(170,75,108,66),(171,75,58,67),(172,75,59,68),(173,75,60,69),(174,75,61,70),(175,75,62,71),(176,75,63,72),(177,75,64,73),(178,75,65,74),(179,75,66,75),(180,75,67,76),(181,75,68,77),(182,75,69,78),(183,75,70,79),(184,75,71,80),(185,75,72,81),(186,75,73,82),(187,75,74,83),(188,75,75,84),(189,75,76,85),(190,75,77,86),(191,75,78,87),(192,75,79,88),(193,75,80,89),(194,75,81,90),(195,75,82,91),(196,75,83,92),(197,75,84,93),(198,75,85,94),(199,75,86,95),(200,75,87,96),(201,75,88,97),(202,75,89,98),(203,75,90,99),(204,75,91,100),(205,75,92,101),(206,75,93,102),(207,75,94,103),(208,75,95,104),(209,75,96,105),(210,75,97,106),(211,75,98,107),(212,75,99,108),(213,75,100,109),(214,75,101,110),(215,75,102,111),(216,75,103,112),(217,75,104,113),(218,75,106,114),(219,75,107,115),(220,75,108,116),(221,75,59,117),(222,75,59,118),(223,75,60,119),(224,75,61,120),(225,75,62,121),(226,75,63,122),(227,75,64,123),(228,75,65,124),(229,75,66,125),(230,75,67,126),(231,75,68,127),(232,75,69,128),(233,75,70,129),(234,75,71,130),(235,75,72,131),(236,75,73,132),(237,75,74,133),(238,75,75,134),(239,75,76,135),(240,75,77,136),(241,75,78,137),(242,75,79,138),(243,75,80,139),(244,75,81,140),(245,75,82,141),(246,75,83,142),(247,75,84,143),(248,75,85,144),(249,75,86,145),(250,75,87,146),(251,75,88,147),(252,75,89,148),(253,75,90,149),(254,75,91,150),(255,75,92,151),(256,75,93,152),(257,75,94,153),(258,75,95,154),(259,75,96,155),(260,75,97,156),(261,75,98,157),(262,75,99,158),(263,75,100,159),(264,75,101,160),(265,75,102,161),(266,75,103,162),(267,75,104,163),(268,75,105,164),(269,75,106,165),(270,75,107,166),(271,75,108,167),(272,75,58,168),(273,75,60,169),(274,75,61,170),(275,75,62,171),(276,75,63,172),(277,75,64,173),(278,75,65,174),(279,75,66,175),(280,75,67,176),(281,75,68,177),(282,75,69,178),(283,75,70,179),(284,75,71,180),(285,75,72,181),(286,75,73,182),(287,75,74,183),(288,75,75,184),(289,75,76,185),(290,75,77,186),(291,75,78,187),(292,75,79,188),(293,75,80,189),(294,75,81,190),(295,75,82,191),(296,75,83,192),(297,75,84,193),(298,75,85,194),(299,75,86,195),(300,75,87,196),(301,75,88,197),(302,75,89,198),(303,75,90,199),(304,75,91,200),(305,75,92,201),(306,75,93,202),(307,75,94,203),(308,75,95,204),(309,75,96,205),(310,75,97,206),(311,75,98,207),(312,75,99,208),(313,75,100,209),(314,75,101,210),(315,75,102,211),(316,75,103,212),(317,75,104,213),(318,75,105,214),(319,75,106,215),(320,75,107,216),(321,75,108,217),(322,85,61,218),(323,85,62,219),(324,85,63,220),(325,85,64,221),(326,85,65,222),(327,85,66,223),(328,85,67,224),(329,85,68,225),(330,85,69,226),(331,85,70,227),(332,85,71,228),(333,85,72,229),(334,85,73,230),(335,85,74,231),(336,85,75,232),(337,85,76,233),(338,85,77,234),(339,85,78,235),(340,85,79,236),(341,85,80,237),(342,85,81,238),(343,85,82,239),(344,85,83,240),(345,85,84,241),(346,85,85,242),(347,85,86,243),(348,85,87,244),(349,85,88,245),(350,85,89,246),(351,85,90,247),(352,85,91,248),(353,85,92,249),(354,85,93,250),(355,85,94,251),(356,85,95,252),(357,85,96,253),(358,85,97,254),(359,85,98,255),(360,85,99,256),(361,85,100,257),(362,85,101,258),(363,85,102,259),(364,85,103,260),(365,85,104,261),(366,85,105,262),(367,85,106,263),(368,85,107,264),(369,85,108,265),(370,50,75,266),(371,50,95,266),(372,50,97,266),(373,50,83,266),(374,50,84,266),(376,50,75,267),(377,50,95,267),(378,50,97,267),(379,50,83,267),(380,50,84,267),(381,50,75,268),(382,50,95,268),(383,50,97,268),(384,50,83,268),(385,50,84,268),(386,50,75,269),(387,50,95,269),(388,50,97,269),(389,50,83,269),(390,50,84,269),(391,50,75,270),(392,50,95,270),(393,50,97,270),(394,50,83,270),(395,50,84,270),(396,50,79,271),(397,50,86,271),(398,50,88,271),(399,50,94,271),(400,50,84,271),(401,50,100,271),(402,50,101,271),(403,50,79,272),(404,50,86,272),(405,50,88,272),(406,50,94,272),(407,50,84,272),(408,50,100,272),(409,50,101,272),(410,50,79,273),(411,50,86,273),(412,50,88,273),(413,50,94,273),(414,50,84,273),(415,50,100,273),(416,50,101,273),(417,50,79,274),(418,50,86,274),(419,50,88,274),(420,50,94,274),(421,50,84,274),(422,50,100,274),(423,50,101,274),(424,50,79,275),(425,50,86,275),(426,50,88,275),(427,50,94,275),(428,50,84,275),(429,50,100,275),(430,50,101,275),(431,0,74,276),(432,0,75,276),(435,0,83,277),(436,0,98,277),(437,0,99,277);
/*!40000 ALTER TABLE `change_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibility`
--

DROP TABLE IF EXISTS `compatibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compatibility` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_one_id` int(10) unsigned NOT NULL,
  `role_two_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_195` (`role_one_id`),
  KEY `fkIdx_198` (`role_two_id`),
  KEY `fkIdx_201` (`group_id`),
  CONSTRAINT `FK_195` FOREIGN KEY (`role_one_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_198` FOREIGN KEY (`role_two_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_201` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibility`
--

LOCK TABLES `compatibility` WRITE;
/*!40000 ALTER TABLE `compatibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition`
--

DROP TABLE IF EXISTS `condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition`
--

LOCK TABLES `condition` WRITE;
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` VALUES (1,'analize_preliminar_risco'),(2,'procedimentos-iniciais'),(3,'sinalizacao'),(4,'cavalete'),(5,'limpar-ferramenta'),(6,'medicao-corrente-fulga-inicio-manutencao'),(7,'medicao-corrente-fulga-durante-manutencao'),(8,'medicao-corrente-fulga-final-operacao'),(9,'posicionamento-cavalete'),(10,'procedimentos-corda-manutencao-carretilha'),(11,'verificar-corda-limpa'),(12,'teste-impedancia-corda'),(13,'rasga-corda-pedacos'),(14,'interpolar-corda-bastao-universal'),(16,'fixar-carretilha-corda-bastao-universal'),(17,'instalar-sela-corda-lado-1'),(18,'fixar-bastao-garra-colar-sela'),(19,'fixar-bastao-garra-lado-1-condutor'),(20,'instalar-sela-colar-coluna-lado-2'),(21,'fixar-bastao-garra-invertido-lado-2'),(22,'fixar-carretilha-corda-fibra-sintetica-ponta-bastao'),(23,'girar-sela-erguer-bastao'),(24,'enforcar-estopo-alto-isolador'),(25,'conectar-corda-estop'),(26,'operacao-isolador-pedestal'),(27,'bastao-universal-chave-catraca-saltar-parafusos'),(28,'retirar-parafuso-cima'),(29,'finalizar-troca-isolador-pedestal'),(30,'tencionar-corda-estopo'),(31,'tirar-parafusos-baixo-isolador-chave-catraca'),(32,'passar-corda-base-isolador-chave-catraca'),(33,'corda-erguer-isolador'),(34,'retirar-isolador-antigo'),(35,'estopo-isolador'),(36,'suspender-isolador'),(37,'engate-corda-guia'),(38,'icar-isolador'),(39,'parafusar-isolador-coluna-chave-catraca'),(40,'fechar-conector-bastao-universal'),(41,'desconectar-batao-garra-conector'),(42,'retirar-bastao-garra'),(43,'retirar-sela-colar-bastao-garra-lado-1'),(44,'retirar-estopo-isolador'),(45,'retirar-sela-colar-bastao-garra-lado-2'),(46,'recolher-equipamento'),(47,'metodo-a-distancia'),(48,'supervisao'),(49,'observacao'),(50,'objetivo-final'),(51,'etapas-metodologicas'),(52,'metodo-finalizado');
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_relation_artefact_artefact`
--

DROP TABLE IF EXISTS `condition_relation_artefact_artefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_relation_artefact_artefact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condition_one_id` int(10) unsigned NOT NULL,
  `relation_two_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_114` (`condition_one_id`),
  KEY `fkIdx_117` (`relation_two_id`),
  CONSTRAINT `FK_114` FOREIGN KEY (`condition_one_id`) REFERENCES `condition` (`id`),
  CONSTRAINT `FK_117` FOREIGN KEY (`relation_two_id`) REFERENCES `relation_artefact_artefact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_relation_artefact_artefact`
--

LOCK TABLES `condition_relation_artefact_artefact` WRITE;
/*!40000 ALTER TABLE `condition_relation_artefact_artefact` DISABLE KEYS */;
INSERT INTO `condition_relation_artefact_artefact` VALUES (1,3,3),(2,3,4),(3,9,5),(4,9,6),(5,9,7),(6,9,8),(7,9,9),(8,9,10),(9,9,11),(10,9,12),(11,9,13),(12,9,14),(13,9,15),(14,9,16),(15,9,17),(16,9,18),(17,9,19),(18,9,20),(19,9,21),(20,9,22),(21,9,23),(22,9,24),(23,5,26),(24,5,27),(25,5,28),(26,5,29),(27,6,27),(28,6,28),(29,7,27),(30,7,28),(31,8,27),(32,8,28),(33,12,32),(34,14,33),(37,16,35),(38,17,36),(39,17,37),(40,18,38),(41,19,39),(42,20,38),(43,21,39),(44,22,40),(45,23,42),(46,24,43),(47,25,44),(48,25,45),(49,27,46),(50,27,47),(51,28,48),(52,28,49),(53,28,50),(54,30,51),(55,31,52),(56,31,53),(57,32,54),(58,32,55),(59,33,56),(60,35,57),(61,35,58),(62,36,59),(63,37,60),(64,39,61),(65,39,62),(66,39,63),(67,40,64),(68,40,65),(69,40,66),(70,41,67),(71,41,68),(72,42,69),(73,43,70),(74,43,71),(75,44,72),(76,45,73),(77,45,74);
/*!40000 ALTER TABLE `condition_relation_artefact_artefact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_relation_role_tool`
--

DROP TABLE IF EXISTS `condition_relation_role_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_relation_role_tool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relation_role_tool_id` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_247` (`relation_role_tool_id`),
  CONSTRAINT `FK_247` FOREIGN KEY (`relation_role_tool_id`) REFERENCES `relation_role_tool` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_relation_role_tool`
--

LOCK TABLES `condition_relation_role_tool` WRITE;
/*!40000 ALTER TABLE `condition_relation_role_tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_relation_role_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_sanction`
--

DROP TABLE IF EXISTS `condition_sanction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_sanction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condition_id` int(10) unsigned NOT NULL,
  `sanction_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_150` (`condition_id`),
  KEY `fkIdx_184` (`sanction_id`),
  CONSTRAINT `FK_150` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`),
  CONSTRAINT `FK_184` FOREIGN KEY (`sanction_id`) REFERENCES `sanction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_sanction`
--

LOCK TABLES `condition_sanction` WRITE;
/*!40000 ALTER TABLE `condition_sanction` DISABLE KEYS */;
INSERT INTO `condition_sanction` VALUES (4,48,5),(5,48,6),(6,48,7),(7,48,8),(8,48,9),(9,48,10),(10,48,11),(11,48,12),(12,48,13),(13,48,14),(14,48,15),(15,48,16),(16,48,17),(17,48,18),(18,48,19),(19,48,20),(20,48,21),(21,48,22),(22,48,23),(23,48,24),(24,48,25),(25,48,26),(26,48,27),(27,48,28),(28,48,29),(29,48,30),(30,48,31),(31,48,32),(32,48,33),(33,48,34),(34,48,35),(35,48,36),(36,48,37),(37,48,38),(38,48,39),(39,48,40),(40,48,41),(41,48,42),(42,48,43),(43,48,44),(44,48,45),(45,48,46),(46,48,47),(47,48,48),(48,48,49),(49,48,50),(50,48,51),(51,48,52),(52,48,53),(53,48,54),(54,48,55),(55,49,56),(56,49,57),(57,49,58),(58,49,59),(59,49,60),(60,49,61),(61,49,62),(62,49,63),(63,49,64),(64,49,65),(65,49,66),(66,49,67),(67,49,68),(68,49,69),(69,49,70),(70,49,71),(71,49,72),(72,49,73),(73,49,74),(74,49,75),(75,49,76),(76,49,77),(77,49,78),(78,49,79),(79,49,80),(80,49,81),(81,49,82),(82,49,83),(83,49,84),(84,49,85),(85,49,86),(86,49,87),(87,49,88),(88,49,89),(89,49,90),(90,49,91),(91,49,92),(92,49,93),(93,49,94),(94,49,95),(95,49,96),(96,49,97),(97,49,98),(98,49,99),(99,49,100),(100,49,101),(101,49,102),(102,49,103),(103,49,104),(104,49,105),(105,1,107),(106,1,108),(107,1,109),(108,1,110),(109,1,111),(110,1,112),(111,1,113),(112,1,114),(113,1,115),(114,1,116),(115,1,117),(116,1,118),(117,1,119),(118,1,120),(119,1,121),(120,1,122),(121,1,123),(122,1,124),(123,1,125),(124,1,126),(125,1,127),(126,1,128),(127,1,129),(128,1,130),(129,1,131),(130,1,132),(131,1,133),(132,1,134),(133,1,135),(134,1,136),(135,1,137),(136,1,138),(137,1,139),(138,1,140),(139,1,141),(140,1,142),(141,1,143),(142,1,144),(143,1,145),(144,1,146),(145,1,147),(146,1,148),(147,1,149),(148,1,150),(149,1,151),(150,1,152),(151,1,153),(152,1,154),(153,1,155),(154,1,156),(155,2,157),(156,2,158),(157,2,159),(158,2,160),(159,2,161),(160,2,162),(161,2,163),(162,2,164),(163,2,165),(164,2,166),(165,2,167),(166,2,168),(167,2,169),(168,2,170),(169,2,171),(170,2,172),(171,2,173),(172,2,174),(173,2,175),(174,2,176),(175,2,177),(176,2,178),(177,2,179),(178,2,180),(179,2,181),(180,2,182),(181,2,183),(182,2,184),(183,2,185),(184,2,186),(185,2,187),(186,2,188),(187,2,189),(188,2,190),(189,2,191),(190,2,192),(191,2,193),(192,2,194),(193,2,195),(194,2,196),(195,2,197),(196,2,198),(197,2,199),(198,2,200),(199,2,201),(200,2,202),(201,2,203),(202,2,204),(203,2,205),(204,2,206),(205,3,207),(206,3,208),(207,3,209),(208,3,210),(209,3,211),(210,3,212),(211,3,213),(212,3,214),(213,3,215),(214,3,216),(215,3,217),(216,3,218),(217,3,219),(218,3,220),(219,3,221),(220,3,222),(221,3,223),(222,3,224),(223,3,225),(224,3,226),(225,3,227),(226,3,228),(227,3,229),(228,3,230),(229,3,231),(230,3,232),(231,3,233),(232,3,234),(233,3,235),(234,3,236),(235,3,237),(236,3,238),(237,3,239),(238,3,240),(239,3,241),(240,3,242),(241,3,243),(242,3,244),(243,3,245),(244,3,246),(245,3,247),(246,3,248),(247,3,249),(248,3,250),(249,3,251),(250,3,252),(251,3,253),(252,3,254),(253,4,255),(254,5,256),(255,6,257),(256,7,258),(257,9,259),(258,11,260),(259,12,261),(260,13,262),(261,14,263),(262,16,264),(263,17,265),(264,19,266);
/*!40000 ALTER TABLE `condition_sanction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_without_relation_entity`
--

DROP TABLE IF EXISTS `condition_without_relation_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_without_relation_entity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_262` (`entity_id`),
  KEY `fkIdx_265` (`condition_id`),
  CONSTRAINT `FK_262` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`),
  CONSTRAINT `FK_265` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_without_relation_entity`
--

LOCK TABLES `condition_without_relation_entity` WRITE;
/*!40000 ALTER TABLE `condition_without_relation_entity` DISABLE KEYS */;
INSERT INTO `condition_without_relation_entity` VALUES (1,13,10),(2,24,38);
/*!40000 ALTER TABLE `condition_without_relation_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deontic_relation`
--

DROP TABLE IF EXISTS `deontic_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deontic_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `mission_id` int(10) unsigned NOT NULL,
  `type` enum('PERMISSION','OBLIGATION-PERMISSION') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_272` (`role_id`),
  KEY `fkIdx_275` (`mission_id`),
  CONSTRAINT `FK_272` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_275` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deontic_relation`
--

LOCK TABLES `deontic_relation` WRITE;
/*!40000 ALTER TABLE `deontic_relation` DISABLE KEYS */;
INSERT INTO `deontic_relation` VALUES (1,1,41,'OBLIGATION-PERMISSION'),(2,3,27,'OBLIGATION-PERMISSION'),(3,3,33,'OBLIGATION-PERMISSION'),(4,3,34,'OBLIGATION-PERMISSION'),(5,3,38,'OBLIGATION-PERMISSION'),(6,3,39,'OBLIGATION-PERMISSION'),(7,3,40,'OBLIGATION-PERMISSION'),(8,3,41,'OBLIGATION-PERMISSION'),(9,3,42,'OBLIGATION-PERMISSION'),(10,4,26,'OBLIGATION-PERMISSION'),(11,4,27,'OBLIGATION-PERMISSION'),(12,4,32,'OBLIGATION-PERMISSION'),(13,4,33,'OBLIGATION-PERMISSION'),(14,4,34,'OBLIGATION-PERMISSION'),(15,4,38,'OBLIGATION-PERMISSION'),(16,4,39,'OBLIGATION-PERMISSION'),(17,4,40,'OBLIGATION-PERMISSION'),(18,4,42,'OBLIGATION-PERMISSION'),(19,5,26,'OBLIGATION-PERMISSION'),(20,5,27,'OBLIGATION-PERMISSION'),(21,5,32,'OBLIGATION-PERMISSION'),(22,5,33,'OBLIGATION-PERMISSION'),(23,5,34,'OBLIGATION-PERMISSION'),(24,5,35,'OBLIGATION-PERMISSION'),(25,5,36,'OBLIGATION-PERMISSION'),(26,5,39,'OBLIGATION-PERMISSION'),(27,5,40,'OBLIGATION-PERMISSION'),(28,5,42,'OBLIGATION-PERMISSION'),(29,6,26,'OBLIGATION-PERMISSION'),(30,6,28,'OBLIGATION-PERMISSION'),(31,6,33,'OBLIGATION-PERMISSION'),(32,6,34,'OBLIGATION-PERMISSION'),(33,6,35,'OBLIGATION-PERMISSION'),(34,6,36,'OBLIGATION-PERMISSION'),(35,6,39,'OBLIGATION-PERMISSION'),(36,6,40,'OBLIGATION-PERMISSION'),(37,6,42,'OBLIGATION-PERMISSION'),(38,7,26,'OBLIGATION-PERMISSION'),(39,7,29,'OBLIGATION-PERMISSION'),(40,7,33,'OBLIGATION-PERMISSION'),(41,7,35,'OBLIGATION-PERMISSION'),(42,7,36,'OBLIGATION-PERMISSION'),(43,7,39,'OBLIGATION-PERMISSION'),(44,7,40,'OBLIGATION-PERMISSION'),(45,7,42,'OBLIGATION-PERMISSION'),(46,8,26,'OBLIGATION-PERMISSION'),(47,8,30,'OBLIGATION-PERMISSION'),(48,8,33,'OBLIGATION-PERMISSION'),(49,8,37,'OBLIGATION-PERMISSION'),(50,8,38,'OBLIGATION-PERMISSION'),(51,8,39,'OBLIGATION-PERMISSION'),(52,8,40,'OBLIGATION-PERMISSION'),(53,8,42,'OBLIGATION-PERMISSION'),(54,9,26,'OBLIGATION-PERMISSION'),(55,9,31,'OBLIGATION-PERMISSION'),(56,9,33,'OBLIGATION-PERMISSION'),(57,9,37,'OBLIGATION-PERMISSION'),(58,9,38,'OBLIGATION-PERMISSION'),(59,9,39,'OBLIGATION-PERMISSION'),(60,9,40,'OBLIGATION-PERMISSION'),(61,9,42,'OBLIGATION-PERMISSION'),(62,1,41,'OBLIGATION-PERMISSION'),(63,2,42,'OBLIGATION-PERMISSION');
/*!40000 ALTER TABLE `deontic_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (1,'agente01'),(2,'agente02'),(3,'agente03'),(4,'agente04'),(5,'agente05'),(6,'agente06'),(7,'agente07'),(8,'agente08'),(9,'agente09'),(10,'cone'),(11,'fita'),(12,'carretilha'),(13,'corda'),(14,'bastao_universal'),(15,'testador_de_corrente_de_fulga'),(16,'sela'),(17,'colar'),(18,'bastao_garra'),(19,'estopo'),(20,'chave_catraca'),(21,'condutor'),(22,'torre'),(23,'isolador_de_pedestal_velho'),(24,'isolador_de_pedestal_novo'),(25,'conector'),(26,'luva'),(27,'óculos'),(28,'chão'),(29,'torres-subestacao'),(30,'cavalete'),(31,'alcool_isopropilico'),(32,'pano_seco'),(33,'parafuso');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_fatality`
--

DROP TABLE IF EXISTS `entity_fatality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_fatality` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_consequence_id` int(10) unsigned NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `type` enum('CAUSER','SUFFERER') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_234` (`short_consequence_id`),
  KEY `fkIdx_237` (`entity_id`),
  CONSTRAINT `FK_234` FOREIGN KEY (`short_consequence_id`) REFERENCES `short_consequence` (`id`),
  CONSTRAINT `FK_237` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_fatality`
--

LOCK TABLES `entity_fatality` WRITE;
/*!40000 ALTER TABLE `entity_fatality` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_fatality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `probability` int(11) DEFAULT NULL,
  `percentual_ok` int(11) NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_209` (`condition_id`),
  CONSTRAINT `FK_209` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (58,'Fazer uma análise de todos os possíveis riscos que podem ocorrer durante a execução das atividades',95,100,1),(59,'Reunioes para Analise do que deve ser feito',90,100,2),(60,'Sinalizacao do Local com Cones e Fitas Zebradas',90,100,3),(61,'Montagem do Cavalete que mantem as ferramentas',95,90,4),(62,'Limpar as ferramentas com alcool Isopropilico',95,90,5),(63,'Testar o isolamento das ferramentas antes de fazer uso.',90,100,6),(64,'Medir a corrente de fulga durante a operacao da manutencao',90,100,7),(65,'Medicao da corrente de fulga no final da operacao',90,100,8),(66,'Posicionar as Ferramentas no Cavalete',90,100,9),(67,'Todos os procedimentos relacionados com a instalação da corda e carretilha',NULL,100,10),(68,'Verificar se a corda esta limpa',90,100,11),(69,'Fazer o teste de impedÃ¢ncia da corda',90,100,12),(70,'Rasgar a corda em vários pedaços',99,100,13),(71,'Interpolar os pedaços de corda com o bastÃ£o universal',99,100,14),(72,'Prender a carretilha na corda (sendo esta corda interpolada por batoes universais)',99,100,16),(73,'Instalar a sela e o colar na coluna no lado 1',99,100,17),(74,'Fixar o bastão garra no colar e sela no lado 1',99,100,18),(75,'Fixar o topo do bastao garra do lado 1 no condutor',99,100,19),(76,'Instalar a sela e o colar na coluna base do lado 2',99,100,20),(77,'Fixar o batao garra invertido no colar e na sela do lado 2',99,100,21),(78,'Fixar a carretilha com a corda de fibra sintÃ©tica na ponta do bastÃ£o',99,100,22),(79,'Girar sela de forma a erguer o bastão com a carretilha e corda na ponta',99,100,23),(80,'Instalar e enforcar com um estopo o alto do isolador usando um bastÃ£o universal',99,100,24),(81,'Conectar corda ao estopo',99,100,25),(82,'Objetivos relacionados com a parte operacional da substituição do isolador de pedestal',NULL,100,26),(83,'Usar um bastão universal com chave catraca para soltar os parafusos',99,100,27),(84,'Retirar a parte de cimda do conector com a chave catraca para soltar os parafusos de cima',99,100,28),(85,'Sequencia de atividades que levam a finalizacao da troca do isolador de pedestal',NULL,100,29),(86,'Tencionar a corda presa ao estopo',99,100,30),(87,'Tirar os parafusos de baixo do isolador com a chave catraca',95,100,31),(88,'Passar a corda na base do isolador para auxiliar na descida',95,100,32),(89,'Puxar corda para erguer isolador',95,100,33),(90,'Retirar Isolador Antigo',95,100,34),(91,'Enforcar Estopo ao Isolador',95,100,35),(92,'Suspender Novo Isolador',95,100,36),(93,'Engate corda guia no novo isolador pedestal',95,100,37),(94,'Içar novo isolador na coluna usando chave catraca',95,100,38),(95,'Parafusar base do isolador na coluna usando chave catraca',95,100,39),(96,'Fechar os parafusos do conector usando bastao Universal com a chave catraca',95,100,40),(97,'Desconectar o bastão garra do conector',95,100,41),(98,'Retirar o bastão garra do conector',95,100,42),(99,'Remover sela e o colar do lado um da torre',95,100,43),(100,'Retirar o estopo do Isoldor',95,100,44),(101,'Retirar sela e colar do lado dois do isolador',95,100,45),(102,'Remover os equipamentos do cavalete para os carros',95,100,46),(103,'Metodo em que o procedimento são executado a distancia do potencial',95,100,47),(104,'Orienta e Supervisiona as atividades técnica que estão acontecendo no campo',NULL,100,48),(105,'Observa se estão acontecendo alguma violação',NULL,100,49),(106,'Objetivo final da manutencao foi atingido com sucesso',NULL,100,50),(107,'Etapas que devem ser feitas para concluir a manutencao',NULL,100,51),(108,'Procedimento total finalizado',NULL,100,52);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_mission`
--

DROP TABLE IF EXISTS `goal_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal_mission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goal_id` int(10) unsigned NOT NULL,
  `mission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_245` (`goal_id`),
  KEY `fkIdx_248` (`mission_id`),
  CONSTRAINT `FK_245` FOREIGN KEY (`goal_id`) REFERENCES `goal` (`id`),
  CONSTRAINT `FK_248` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_mission`
--

LOCK TABLES `goal_mission` WRITE;
/*!40000 ALTER TABLE `goal_mission` DISABLE KEYS */;
INSERT INTO `goal_mission` VALUES (1,58,26),(5,59,26),(6,60,27),(7,61,28),(8,62,29),(9,63,30),(10,66,31),(11,64,32),(12,68,33),(13,70,34),(14,71,34),(15,72,34),(16,73,34),(17,74,34),(18,75,34),(19,76,34),(20,77,34),(21,78,34),(22,79,34),(23,81,35),(24,83,35),(25,84,35),(26,86,35),(27,87,35),(28,88,36),(29,89,36),(30,90,36),(31,91,36),(32,92,37),(33,93,37),(34,94,38),(35,95,38),(36,96,38),(37,97,39),(38,98,39),(39,99,39),(40,58,40),(41,82,40),(42,85,40),(43,104,41),(44,106,42),(45,107,42),(46,108,42),(47,105,42);
/*!40000 ALTER TABLE `goal_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'supervisores'),(2,'observadores'),(3,'executores');
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_role`
--

DROP TABLE IF EXISTS `group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_253` (`role_id`),
  KEY `fkIdx_256` (`group_id`),
  CONSTRAINT `FK_253` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_256` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_role`
--

LOCK TABLES `group_role` WRITE;
/*!40000 ALTER TABLE `group_role` DISABLE KEYS */;
INSERT INTO `group_role` VALUES (1,1,1),(2,2,2),(3,3,3),(10,4,3),(11,5,3),(12,6,3),(13,7,3),(14,8,3),(15,9,3);
/*!40000 ALTER TABLE `group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_safety`
--

DROP TABLE IF EXISTS `group_safety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_safety` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `type` enum('GROUP_GREEN','GROUP_RED','GROUP_BROWN','GROUP_YELLOW','GROUP_BLUE') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_safety`
--

LOCK TABLES `group_safety` WRITE;
/*!40000 ALTER TABLE `group_safety` DISABLE KEYS */;
INSERT INTO `group_safety` VALUES (1,'ruido','GROUP_GREEN'),(2,'vibracao','GROUP_GREEN'),(3,'radiacao_ionizante','GROUP_GREEN'),(4,'radiacao_nao_ionizante','GROUP_GREEN'),(5,'frio','GROUP_GREEN'),(6,'calor','GROUP_GREEN'),(7,'pressao_anormal','GROUP_GREEN'),(8,'umidade','GROUP_GREEN'),(9,'poeira','GROUP_RED'),(10,'fumo','GROUP_RED'),(11,'neblina','GROUP_RED'),(12,'gas','GROUP_RED'),(13,'vapor','GROUP_RED'),(14,'substancia_composta_ou_produtos_quimicos_gerais','GROUP_RED'),(15,'risco_ergonimico','GROUP_YELLOW'),(16,'esforco_fisico_intenso','GROUP_YELLOW'),(17,'levantamento_transporte_manual_peso','GROUP_YELLOW'),(18,'controle_rigido_produtividade','GROUP_YELLOW'),(19,'imposicao_ritmo_excessivo','GROUP_YELLOW'),(20,'trabalho_em_turno_e_noturno','GROUP_YELLOW'),(21,'jornada_de_trabalho_prolongadas','GROUP_YELLOW'),(22,'monotonia_e_repetitividade','GROUP_YELLOW'),(23,'outras_situacoes_causadoras_estresse_fisico_psiquico','GROUP_YELLOW'),(24,'virus','GROUP_BROWN'),(25,'bacteria','GROUP_BROWN'),(26,'fungos','GROUP_BROWN'),(27,'parasitas','GROUP_BROWN'),(28,'bacilos','GROUP_BROWN'),(29,'riscos_de_acidentes','GROUP_BLUE'),(30,'arranjo_fisico_inadequado','GROUP_BLUE'),(31,'maquinas_equipamentos_sem_protecao','GROUP_BLUE'),(32,'iluminacao_inadequada','GROUP_BLUE'),(33,'eletricidade','GROUP_BLUE'),(34,'probabilidade_incendio_explosao','GROUP_BLUE'),(35,'armazenamento_inadequado','GROUP_BLUE'),(36,'animais_peconhentos','GROUP_BLUE'),(37,'outras_situacoes_de_risco_que_poderao_gerar_acidentes_fatais','GROUP_BLUE');
/*!40000 ALTER TABLE `group_safety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_safety_risk`
--

DROP TABLE IF EXISTS `group_safety_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_safety_risk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `risk_id` int(10) unsigned NOT NULL,
  `group_safety_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_1720` (`risk_id`),
  KEY `fkIdx_2410` (`group_safety_id`),
  CONSTRAINT `FK_1720` FOREIGN KEY (`risk_id`) REFERENCES `risk` (`id`),
  CONSTRAINT `FK_2410` FOREIGN KEY (`group_safety_id`) REFERENCES `group_safety` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_safety_risk`
--

LOCK TABLES `group_safety_risk` WRITE;
/*!40000 ALTER TABLE `group_safety_risk` DISABLE KEYS */;
INSERT INTO `group_safety_risk` VALUES (1,2,24),(2,2,24),(3,2,24),(4,14,15),(5,14,15);
/*!40000 ALTER TABLE `group_safety_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heritage`
--

DROP TABLE IF EXISTS `heritage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heritage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_one_id` int(10) unsigned NOT NULL,
  `role_two_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_181` (`role_one_id`),
  KEY `fkIdx_186` (`role_two_id`),
  KEY `fkIdx_189` (`group_id`),
  CONSTRAINT `FK_181` FOREIGN KEY (`role_one_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_186` FOREIGN KEY (`role_two_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_189` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heritage`
--

LOCK TABLES `heritage` WRITE;
/*!40000 ALTER TABLE `heritage` DISABLE KEYS */;
/*!40000 ALTER TABLE `heritage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_one_id` int(10) unsigned NOT NULL,
  `role_two_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `type_linl` enum('autor','com','acq') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_172` (`role_two_id`),
  KEY `fkIdx_175` (`group_id`),
  KEY `fkIdx_283` (`role_one_id`),
  CONSTRAINT `FK_172` FOREIGN KEY (`role_two_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_175` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `FK_283` FOREIGN KEY (`role_one_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `long_consequence`
--

DROP TABLE IF EXISTS `long_consequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `long_consequence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_consequence`
--

LOCK TABLES `long_consequence` WRITE;
/*!40000 ALTER TABLE `long_consequence` DISABLE KEYS */;
INSERT INTO `long_consequence` VALUES (16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140),(141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180),(181),(182),(183),(184),(185),(186),(187),(188),(189),(190),(191),(192),(193),(194),(195),(196),(197),(198),(199),(200),(201),(202),(203),(204),(205),(206),(207),(208),(209),(210),(211),(212),(213),(214),(215),(216),(217),(218),(219),(220),(221),(222),(223),(224),(225),(226),(227),(228),(229),(230),(231),(232),(233),(234),(235),(236),(237),(238),(239),(240),(241),(242),(243),(244),(245),(246),(247),(248),(249),(250),(251),(252),(253),(254),(255),(256),(257),(258),(259),(260),(261),(262),(263),(264),(265),(266),(267),(268),(269),(270),(271),(272),(273),(274),(275),(276),(277);
/*!40000 ALTER TABLE `long_consequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `schema_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_257` (`schema_id`),
  CONSTRAINT `FK_257` FOREIGN KEY (`schema_id`) REFERENCES `schema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (26,'missao00',1),(27,'missao01-01',1),(28,'missao01-02',1),(29,'missao01-03',1),(30,'missao01-04',1),(31,'missao01-05',1),(32,'missao01-06',1),(33,'missao02',1),(34,'missao03',1),(35,'missao04',1),(36,'missao05',1),(37,'missao06',1),(38,'missao07',1),(39,'missao08',1),(40,'missao09',1),(41,'missao10',1),(42,'missao11',1),(43,'missao12',1);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object`
--

DROP TABLE IF EXISTS `object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artefact_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_30` (`artefact_id`),
  CONSTRAINT `FK_30` FOREIGN KEY (`artefact_id`) REFERENCES `artefact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` VALUES (1,12),(2,13),(3,14),(4,15),(5,16),(6,24);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_plan` varchar(255) NOT NULL,
  `type` enum('SEQUENCE','PARALLEL','CHOICE') NOT NULL,
  `goal_super_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_232` (`goal_super_id`),
  CONSTRAINT `FK_232` FOREIGN KEY (`goal_super_id`) REFERENCES `goal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'plan01','SEQUENCE',107),(2,'plan02','SEQUENCE',108),(3,'plan03','SEQUENCE',67),(4,'plan04','SEQUENCE',82),(5,'plan05','SEQUENCE',85),(6,'plan06','PARALLEL',106),(7,'plan07','PARALLEL',59),(8,'plan08','PARALLEL',103);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_goal`
--

DROP TABLE IF EXISTS `plan_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_goal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goal_sub_id` int(10) unsigned NOT NULL,
  `plan_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_224` (`goal_sub_id`),
  KEY `fkIdx_227` (`plan_id`),
  CONSTRAINT `FK_224` FOREIGN KEY (`goal_sub_id`) REFERENCES `goal` (`id`),
  CONSTRAINT `FK_227` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_goal`
--

LOCK TABLES `plan_goal` WRITE;
/*!40000 ALTER TABLE `plan_goal` DISABLE KEYS */;
INSERT INTO `plan_goal` VALUES (1,58,1),(2,59,1),(3,66,1),(4,82,1),(5,103,2),(6,82,2),(7,68,3),(8,69,3),(9,70,3),(10,71,3),(11,72,3),(12,73,3),(13,74,3),(14,75,3),(15,76,3),(16,77,3),(17,78,3),(18,79,3),(19,80,3),(20,81,3),(21,83,4),(22,84,4),(23,86,5),(24,87,5),(25,88,5),(26,89,5),(27,92,5),(28,90,5),(29,91,5),(30,93,5),(31,94,5),(32,95,5),(33,96,5),(34,97,5),(35,98,5),(36,99,5),(37,100,5),(38,101,5),(39,65,5),(40,102,5),(41,104,6),(42,105,6),(43,108,6),(44,60,7),(45,61,7),(46,62,7),(47,63,7),(48,64,8),(49,107,8);
/*!40000 ALTER TABLE `plan_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_artefact_artefact`
--

DROP TABLE IF EXISTS `relation_artefact_artefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation_artefact_artefact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_of_relation` varchar(255) NOT NULL,
  `artefact_first_id` int(10) unsigned NOT NULL,
  `artefact_two_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_105` (`artefact_first_id`),
  KEY `fkIdx_108` (`artefact_two_id`),
  CONSTRAINT `FK_105` FOREIGN KEY (`artefact_first_id`) REFERENCES `artefact` (`id`),
  CONSTRAINT `FK_108` FOREIGN KEY (`artefact_two_id`) REFERENCES `artefact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_artefact_artefact`
--

LOCK TABLES `relation_artefact_artefact` WRITE;
/*!40000 ALTER TABLE `relation_artefact_artefact` DISABLE KEYS */;
INSERT INTO `relation_artefact_artefact` VALUES (3,'primeiro se mantem sobre o segundo',1,19),(4,'primeiro se mantem em volta do segundo',2,20),(5,'primeiro-apoiado-sobre-segundo',1,21),(6,'primeiro-apoiado-sobre-segundo',2,21),(7,'primeiro-apoiado-sobre-segundo',3,21),(8,'primeiro-apoiado-sobre-segundo',4,21),(9,'primeiro-apoiado-sobre-segundo',5,21),(10,'primeiro-apoiado-sobre-segundo',6,21),(11,'primeiro-apoiado-sobre-segundo',7,21),(12,'primeiro-apoiado-sobre-segundo',8,21),(13,'primeiro-apoiado-sobre-segundo',9,21),(14,'primeiro-apoiado-sobre-segundo',10,21),(15,'primeiro-apoiado-sobre-segundo',11,21),(16,'primeiro-apoiado-sobre-segundo',12,21),(17,'primeiro-apoiado-sobre-segundo',13,21),(18,'primeiro-apoiado-sobre-segundo',14,21),(19,'primeiro-apoiado-sobre-segundo',15,21),(20,'primeiro-apoiado-sobre-segundo',16,21),(21,'primeiro-apoiado-sobre-segundo',17,21),(22,'primeiro-apoiado-sobre-segundo',18,21),(23,'primeiro-apoiado-sobre-segundo',19,21),(24,'primeiro-apoiado-sobre-segundo',20,21),(26,'passar-primeiro-no-segundo',22,23),(27,'esfregar-primeiro-no-segundo',23,5),(28,'esfregar-primeiro-no-segundo',23,9),(29,'esfregar-primeiro-no-segundo',23,11),(30,'primeiro-testa-segundo',6,5),(31,'primeiro-testa-segundo',6,9),(32,'primero-testa-segundo',6,4),(33,'interpolar-primeiro-segundo',5,8),(35,'fixar primeiro no segundo',3,4),(36,'fixar primeiro no segundo',8,7),(37,'fixar primeiro no segundo',7,20),(38,'passar primeiro por dentro do segundo',5,4),(39,'acoplar primeiro sob o segundo',5,12),(40,'fixar a carretilha com a corda na ponta do bastao',4,9),(41,'girar primeiro atÃ© que o segundo fique na vertical',7,9),(42,'girar primeiro atÃ© que o segundo fique na vertical',7,9),(43,'enforcar primeiro com o segundo',10,15),(44,'engatar primeiro no segundo',4,5),(45,'engatar primeiro no segundo',5,10),(46,'acoplar primeiro no segundo',5,11),(47,'acoplar primeiro no segundo',11,24),(48,'primeiro desacolpla segundo',11,24),(49,'primeiro Ã© solto do segundo',24,16),(50,'primeiro Ã© solto do segundo',16,12),(51,'primeiro Ã© fortemente tencionado',4,10),(52,'remove o primeiro da parte de baixo do segundo',11,24),(53,'remove o primeiro Ã© removido da parte de baixo do segundo',24,14),(54,'prender primeiro no segundo',11,4),(55,'passar primeiro em volta do segundo',4,14),(56,'primeiro envolto do segundo',4,14),(57,'primeiro enforca do segundo',10,15),(58,'primeiro acoplado no segundo',4,10),(59,'primeiro usado para suspender segundo',4,15),(60,'primeiro engata segundo',4,15),(61,'posicionar primeiro sobre segundo',15,20),(62,'passar primero pelo segundo',24,20),(63,'passar primero pelo segundo',24,15),(64,'acoplar prmeiro no segundo',16,15),(65,'atravessar primeiro no segundo',24,16),(66,'atravessar primeiro no segundo',24,15),(67,'remover primeiro do segundo',9,12),(68,'remover primeiro do segundo',12,16),(69,'remover primeiro do segundo',9,8),(70,'remover primeiro do segundo',8,7),(71,'remover primeiro do segundo',7,20),(72,'remover primeiro do segundo',10,15),(73,'remover primeiro do segundo',8,7),(74,'remover primeiro do segundo',7,20);
/*!40000 ALTER TABLE `relation_artefact_artefact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation_role_tool`
--

DROP TABLE IF EXISTS `relation_role_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation_role_tool` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tool_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_2210` (`tool_id`),
  KEY `fkIdx_2240` (`role_id`),
  CONSTRAINT `FK_2210` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`id`),
  CONSTRAINT `FK_2240` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_role_tool`
--

LOCK TABLES `relation_role_tool` WRITE;
/*!40000 ALTER TABLE `relation_role_tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation_role_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk`
--

DROP TABLE IF EXISTS `risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk`
--

LOCK TABLES `risk` WRITE;
/*!40000 ALTER TABLE `risk` DISABLE KEYS */;
INSERT INTO `risk` VALUES (2,'one'),(3,'one'),(4,'one'),(5,'one'),(6,'one'),(7,'one'),(8,'one'),(9,'one'),(10,'one'),(11,'one'),(12,'one'),(13,'risco01'),(14,'riskFixarBastaoGarraColarSela'),(15,'riskBataoGarraLado1Condutor');
/*!40000 ALTER TABLE `risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `name` varchar(45) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('supervisor',1),('observador',2),('executor01',3),('executor02',4),('executor03',5),('executor04',6),('executor05',7),('executor06',8),('executor07',9);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_allocation`
--

DROP TABLE IF EXISTS `role_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `agent_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_208` (`role_id`),
  KEY `fkIdx_215` (`agent_id`),
  CONSTRAINT `FK_208` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_215` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_allocation`
--

LOCK TABLES `role_allocation` WRITE;
/*!40000 ALTER TABLE `role_allocation` DISABLE KEYS */;
INSERT INTO `role_allocation` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9);
/*!40000 ALTER TABLE `role_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanction`
--

DROP TABLE IF EXISTS `sanction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_consequence_id` int(10) unsigned DEFAULT NULL,
  `long_consequence_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_163` (`short_consequence_id`),
  KEY `fkIdx_190` (`long_consequence_id`),
  CONSTRAINT `FK_163` FOREIGN KEY (`short_consequence_id`) REFERENCES `short_consequence` (`id`),
  CONSTRAINT `FK_190` FOREIGN KEY (`long_consequence_id`) REFERENCES `long_consequence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction`
--

LOCK TABLES `sanction` WRITE;
/*!40000 ALTER TABLE `sanction` DISABLE KEYS */;
INSERT INTO `sanction` VALUES (5,NULL,16),(6,NULL,17),(7,NULL,18),(8,NULL,19),(9,NULL,20),(10,NULL,21),(11,NULL,22),(12,NULL,23),(13,NULL,24),(14,NULL,25),(15,NULL,26),(16,NULL,27),(17,NULL,28),(18,NULL,29),(19,NULL,30),(20,NULL,31),(21,NULL,32),(22,NULL,33),(23,NULL,34),(24,NULL,35),(25,NULL,36),(26,NULL,37),(27,NULL,38),(28,NULL,39),(29,NULL,40),(30,NULL,41),(31,NULL,42),(32,NULL,43),(33,NULL,44),(34,NULL,45),(35,NULL,46),(36,NULL,47),(37,NULL,48),(38,NULL,49),(39,NULL,50),(40,NULL,51),(41,NULL,52),(42,NULL,53),(43,NULL,54),(44,NULL,55),(45,NULL,56),(46,NULL,57),(47,NULL,58),(48,NULL,59),(49,NULL,60),(50,NULL,61),(51,NULL,62),(52,NULL,63),(53,NULL,64),(54,NULL,65),(55,NULL,66),(56,NULL,67),(57,NULL,68),(58,NULL,69),(59,NULL,70),(60,NULL,71),(61,NULL,72),(62,NULL,73),(63,NULL,74),(64,NULL,75),(65,NULL,76),(66,NULL,77),(67,NULL,78),(68,NULL,79),(69,NULL,80),(70,NULL,81),(71,NULL,82),(72,NULL,83),(73,NULL,84),(74,NULL,85),(75,NULL,86),(76,NULL,87),(77,NULL,88),(78,NULL,89),(79,NULL,90),(80,NULL,91),(81,NULL,92),(82,NULL,93),(83,NULL,94),(84,NULL,95),(85,NULL,96),(86,NULL,97),(87,NULL,98),(88,NULL,99),(89,NULL,100),(90,NULL,101),(91,NULL,102),(92,NULL,103),(93,NULL,104),(94,NULL,105),(95,NULL,106),(96,NULL,107),(97,NULL,108),(98,NULL,109),(99,NULL,110),(100,NULL,111),(101,NULL,112),(102,NULL,113),(103,NULL,114),(104,NULL,115),(105,NULL,116),(106,NULL,117),(107,NULL,118),(108,NULL,119),(109,NULL,120),(110,NULL,121),(111,NULL,122),(112,NULL,123),(113,NULL,124),(114,NULL,125),(115,NULL,126),(116,NULL,127),(117,NULL,128),(118,NULL,129),(119,NULL,130),(120,NULL,131),(121,NULL,132),(122,NULL,133),(123,NULL,134),(124,NULL,135),(125,NULL,136),(126,NULL,137),(127,NULL,138),(128,NULL,139),(129,NULL,140),(130,NULL,141),(131,NULL,142),(132,NULL,143),(133,NULL,144),(134,NULL,145),(135,NULL,146),(136,NULL,147),(137,NULL,148),(138,NULL,149),(139,NULL,150),(140,NULL,151),(141,NULL,152),(142,NULL,153),(143,NULL,154),(144,NULL,155),(145,NULL,156),(146,NULL,157),(147,NULL,158),(148,NULL,159),(149,NULL,160),(150,NULL,161),(151,NULL,162),(152,NULL,163),(153,NULL,164),(154,NULL,165),(155,NULL,166),(156,NULL,167),(157,NULL,168),(158,NULL,169),(159,NULL,170),(160,NULL,171),(161,NULL,172),(162,NULL,173),(163,NULL,174),(164,NULL,175),(165,NULL,176),(166,NULL,177),(167,NULL,178),(168,NULL,179),(169,NULL,180),(170,NULL,181),(171,NULL,182),(172,NULL,183),(173,NULL,184),(174,NULL,185),(175,NULL,186),(176,NULL,187),(177,NULL,188),(178,NULL,189),(179,NULL,190),(180,NULL,191),(181,NULL,192),(182,NULL,193),(183,NULL,194),(184,NULL,195),(185,NULL,196),(186,NULL,197),(187,NULL,198),(188,NULL,199),(189,NULL,200),(190,NULL,201),(191,NULL,202),(192,NULL,203),(193,NULL,204),(194,NULL,205),(195,NULL,206),(196,NULL,207),(197,NULL,208),(198,NULL,209),(199,NULL,210),(200,NULL,211),(201,NULL,212),(202,NULL,213),(203,NULL,214),(204,NULL,215),(205,NULL,216),(206,NULL,217),(207,NULL,218),(208,NULL,219),(209,NULL,220),(210,NULL,221),(211,NULL,222),(212,NULL,223),(213,NULL,224),(214,NULL,225),(215,NULL,226),(216,NULL,227),(217,NULL,228),(218,NULL,229),(219,NULL,230),(220,NULL,231),(221,NULL,232),(222,NULL,233),(223,NULL,234),(224,NULL,235),(225,NULL,236),(226,NULL,237),(227,NULL,238),(228,NULL,239),(229,NULL,240),(230,NULL,241),(231,NULL,242),(232,NULL,243),(233,NULL,244),(234,NULL,245),(235,NULL,246),(236,NULL,247),(237,NULL,248),(238,NULL,249),(239,NULL,250),(240,NULL,251),(241,NULL,252),(242,NULL,253),(243,NULL,254),(244,NULL,255),(245,NULL,256),(246,NULL,257),(247,NULL,258),(248,NULL,259),(249,NULL,260),(250,NULL,261),(251,NULL,262),(252,NULL,263),(253,NULL,264),(254,NULL,265),(255,NULL,266),(256,NULL,267),(257,NULL,268),(258,NULL,269),(259,NULL,270),(260,NULL,271),(261,NULL,272),(262,NULL,273),(263,NULL,274),(264,NULL,275),(265,3,276),(266,4,277);
/*!40000 ALTER TABLE `sanction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema`
--

DROP TABLE IF EXISTS `schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema`
--

LOCK TABLES `schema` WRITE;
/*!40000 ALTER TABLE `schema` DISABLE KEYS */;
INSERT INTO `schema` VALUES (1,'Padrão');
/*!40000 ALTER TABLE `schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `short_consequence`
--

DROP TABLE IF EXISTS `short_consequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `short_consequence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fatality_condition` int(11) NOT NULL,
  `risk_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkrisk` (`risk_id`),
  CONSTRAINT `fkrisk` FOREIGN KEY (`risk_id`) REFERENCES `risk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_consequence`
--

LOCK TABLES `short_consequence` WRITE;
/*!40000 ALTER TABLE `short_consequence` DISABLE KEYS */;
INSERT INTO `short_consequence` VALUES (3,0,14),(4,0,14);
/*!40000 ALTER TABLE `short_consequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool`
--

DROP TABLE IF EXISTS `tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artefact_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_21` (`artefact_id`),
  CONSTRAINT `FK_21` FOREIGN KEY (`artefact_id`) REFERENCES `artefact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool`
--

LOCK TABLES `tool` WRITE;
/*!40000 ALTER TABLE `tool` DISABLE KEYS */;
INSERT INTO `tool` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,17),(14,18);
/*!40000 ALTER TABLE `tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trigger_sanction`
--

DROP TABLE IF EXISTS `trigger_sanction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trigger_sanction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sanction_id` int(10) unsigned NOT NULL,
  `sanction_requirement_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_282` (`sanction_id`),
  KEY `sanction_requirement_id` (`sanction_requirement_id`),
  CONSTRAINT `FK_282` FOREIGN KEY (`sanction_id`) REFERENCES `sanction` (`id`),
  CONSTRAINT `trigger_sanction_ibfk_1` FOREIGN KEY (`sanction_requirement_id`) REFERENCES `sanction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trigger_sanction`
--

LOCK TABLES `trigger_sanction` WRITE;
/*!40000 ALTER TABLE `trigger_sanction` DISABLE KEYS */;
/*!40000 ALTER TABLE `trigger_sanction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-05 12:47:43
