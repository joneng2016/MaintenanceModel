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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artefact`
--

LOCK TABLES `artefact` WRITE;
/*!40000 ALTER TABLE `artefact` DISABLE KEYS */;
INSERT INTO `artefact` VALUES (1,10),(2,11),(3,12),(4,13),(5,14),(6,15),(7,16),(8,17),(9,18),(10,19),(11,20),(12,21),(13,22),(14,23),(15,24),(16,25),(17,26),(18,27);
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
  PRIMARY KEY (`id`),
  KEY `fkIdx_203` (`goal_id`),
  CONSTRAINT `FK_203` FOREIGN KEY (`goal_id`) REFERENCES `goal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_goal`
--

LOCK TABLES `change_goal` WRITE;
/*!40000 ALTER TABLE `change_goal` DISABLE KEYS */;
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
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition`
--

LOCK TABLES `condition` WRITE;
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` VALUES (1,'analize_preliminar_risco');
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_entity`
--

DROP TABLE IF EXISTS `condition_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_entity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_89` (`entity_id`),
  KEY `fkIdx_93` (`condition_id`),
  CONSTRAINT `FK_89` FOREIGN KEY (`entity_id`) REFERENCES `entity` (`id`),
  CONSTRAINT `FK_93` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_entity`
--

LOCK TABLES `condition_entity` WRITE;
/*!40000 ALTER TABLE `condition_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_relation_artefact_artefact`
--

DROP TABLE IF EXISTS `condition_relation_artefact_artefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_relation_artefact_artefact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condition_id` int(10) unsigned NOT NULL,
  `relation_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_114` (`condition_id`),
  KEY `fkIdx_117` (`relation_id`),
  CONSTRAINT `FK_114` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`),
  CONSTRAINT `FK_117` FOREIGN KEY (`relation_id`) REFERENCES `relation_artefact_artefact` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_relation_artefact_artefact`
--

LOCK TABLES `condition_relation_artefact_artefact` WRITE;
/*!40000 ALTER TABLE `condition_relation_artefact_artefact` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_sanction`
--

LOCK TABLES `condition_sanction` WRITE;
/*!40000 ALTER TABLE `condition_sanction` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_sanction` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` VALUES (1,'agente01'),(2,'agente02'),(3,'agente03'),(4,'agente04'),(5,'agente05'),(6,'agente06'),(7,'agente07'),(8,'agente08'),(9,'agente09'),(10,'cone'),(11,'fita'),(12,'carretilha'),(13,'corda'),(14,'bastao_universal'),(15,'testador_de_corrente_de_fulga'),(16,'sela'),(17,'colar'),(18,'bastao_garra'),(19,'estopo'),(20,'chave_catraca'),(21,'condutor'),(22,'torre'),(23,'isolador_de_pedestal_velho'),(24,'isolador_de_pedestal_novo'),(25,'conector'),(26,'luva'),(27,'óculos');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `probability` int(11) NOT NULL,
  `percentual_ok` int(11) NOT NULL,
  `condition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_209` (`condition_id`),
  CONSTRAINT `FK_209` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_mission`
--

LOCK TABLES `goal_mission` WRITE;
/*!40000 ALTER TABLE `goal_mission` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_safety_risk`
--

LOCK TABLES `group_safety_risk` WRITE;
/*!40000 ALTER TABLE `group_safety_risk` DISABLE KEYS */;
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
  `change_goal` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_197` (`change_goal`),
  CONSTRAINT `FK_197` FOREIGN KEY (`change_goal`) REFERENCES `change_goal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `long_consequence`
--

LOCK TABLES `long_consequence` WRITE;
/*!40000 ALTER TABLE `long_consequence` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object`
--

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` VALUES (1,12),(2,13),(3,14),(4,15),(5,16);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
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
  `id_1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_221` (`id_1`),
  KEY `fkIdx_224` (`goal_sub_id`),
  KEY `fkIdx_227` (`plan_id`),
  CONSTRAINT `FK_221` FOREIGN KEY (`id_1`) REFERENCES `goal` (`id`),
  CONSTRAINT `FK_224` FOREIGN KEY (`goal_sub_id`) REFERENCES `goal` (`id`),
  CONSTRAINT `FK_227` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_goal`
--

LOCK TABLES `plan_goal` WRITE;
/*!40000 ALTER TABLE `plan_goal` DISABLE KEYS */;
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
  `type_of_relation` varchar(45) NOT NULL,
  `artefact_first_id` int(10) unsigned NOT NULL,
  `artefact_two_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_105` (`artefact_first_id`),
  KEY `fkIdx_108` (`artefact_two_id`),
  CONSTRAINT `FK_105` FOREIGN KEY (`artefact_first_id`) REFERENCES `artefact` (`id`),
  CONSTRAINT `FK_108` FOREIGN KEY (`artefact_two_id`) REFERENCES `artefact` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation_artefact_artefact`
--

LOCK TABLES `relation_artefact_artefact` WRITE;
/*!40000 ALTER TABLE `relation_artefact_artefact` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk`
--

LOCK TABLES `risk` WRITE;
/*!40000 ALTER TABLE `risk` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanction`
--

LOCK TABLES `sanction` WRITE;
/*!40000 ALTER TABLE `sanction` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema`
--

LOCK TABLES `schema` WRITE;
/*!40000 ALTER TABLE `schema` DISABLE KEYS */;
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
  `risk_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkIdx_176` (`risk_id`),
  CONSTRAINT `FK_176` FOREIGN KEY (`risk_id`) REFERENCES `risk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `short_consequence`
--

LOCK TABLES `short_consequence` WRITE;
/*!40000 ALTER TABLE `short_consequence` DISABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-25 19:51:12
