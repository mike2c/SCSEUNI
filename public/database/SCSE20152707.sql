-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: scse
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(30) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Coordinacion'),(2,'Posgrado'),(3,'Recursos Humanos'),(4,'Dirección'),(5,'Sub direccion'),(6,'Informatica'),(7,'adssadsadsadsa'),(8,'asdsadsadsads'),(9,'prueba');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beca`
--

DROP TABLE IF EXISTS `beca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beca` (
  `beca_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicacion_id` int(11) NOT NULL,
  `programa_academico` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`beca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beca`
--

LOCK TABLES `beca` WRITE;
/*!40000 ALTER TABLE `beca` DISABLE KEYS */;
INSERT INTO `beca` VALUES (1,15,'Beca de cursos en asaber que','https://www.youtube.com/watch?v=TEDWfjDc_fE'),(9,29,'Ejemplo de beca','dasdasdasda'),(10,30,'Prueba de beca internacional','https://www.facebook.com/?q='),(11,31,'Beca en asdadsads 12',''),(12,35,'Beca alimenticias y de transporte','https://norte.uni.edu.ni/becas'),(13,36,'Una publicación larga 123456','https://www.youtube.com/watch?v=vOlF5YRV8Ow');
/*!40000 ALTER TABLE `beca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `cargo_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  PRIMARY KEY (`cargo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,1,'Coordinador'),(2,3,'Gerente'),(3,3,'Asistente'),(4,6,'Administrador de sistemas'),(5,1,'asddsa'),(6,1,'asddsa'),(7,1,'asdasdadasad'),(8,1,'Otro cargi hijo'),(9,8,'asdadasd'),(10,7,'ssssssssssssssssss'),(11,8,'gggggggggggg'),(12,8,'yuuuuuu'),(13,4,'asdsdsasadsasad'),(14,1,'1111111111111111111111111'),(15,1,'222222222222222'),(16,2,'cargo en posgrado'),(17,8,'Pruebaaaaaaaaaaa'),(18,5,'2');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `carrera_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(45) NOT NULL,
  PRIMARY KEY (`carrera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria Civil'),(2,'Ingenieria en Sistemas'),(3,'Ingenieria Industrial'),(4,'Ingenieria Agroindustrial');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `contacto_id` int(11) NOT NULL AUTO_INCREMENT,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`contacto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (16,'1111-1111','2222-2222','dsadsadsad',10),(17,NULL,'8494-4967','',8),(18,'0000-0000','0000-0000','',6),(19,'','','',1),(20,'','','',1),(21,'0000-0000','8905-9755','adasdasa',7),(22,'2713-7777','','Km 100 carretera panamericana',10);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `curriculum_id` int(11) NOT NULL AUTO_INCREMENT,
  `egresado_id` int(11) NOT NULL,
  PRIMARY KEY (`curriculum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `curso_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicacion_id` int(11) NOT NULL,
  `costo` float NOT NULL,
  `duracion` int(11) NOT NULL,
  `libre` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,33,1234,123123123,1),(2,34,100,3,1),(3,37,100,4,0),(4,38,100,4,0);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `departamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) NOT NULL,
  PRIMARY KEY (`departamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Nueva Segovia'),(2,'Estelí'),(3,'Matagalpa'),(4,'Madriz'),(5,'Region del Atlantico RAAS');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destino_mensaje`
--

DROP TABLE IF EXISTS `destino_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destino_mensaje` (
  `destino_mensaje_id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `visto` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`destino_mensaje_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino_mensaje`
--

LOCK TABLES `destino_mensaje` WRITE;
/*!40000 ALTER TABLE `destino_mensaje` DISABLE KEYS */;
INSERT INTO `destino_mensaje` VALUES (21,95,19,0),(22,96,16,0),(23,97,19,0),(24,98,17,0),(25,99,17,0),(26,100,17,0),(27,101,17,0),(28,102,17,0),(29,103,17,0),(30,104,20,0),(31,105,22,0),(32,106,20,0),(33,107,17,0),(34,108,19,0),(35,109,17,0),(36,110,16,0),(37,111,16,0),(38,112,17,0),(39,116,17,0),(40,117,17,0),(41,118,19,0),(42,119,20,0),(43,120,22,0),(44,121,17,0),(45,122,17,0),(46,123,17,0),(47,124,17,0),(48,125,16,0),(49,126,16,0),(50,127,16,0),(51,147,19,0),(52,148,17,0),(53,149,20,0),(54,151,16,0);
/*!40000 ALTER TABLE `destino_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egresado`
--

DROP TABLE IF EXISTS `egresado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egresado` (
  `egresado_id` int(11) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(10) NOT NULL,
  `cedula` varchar(16) DEFAULT NULL,
  `titulado` tinyint(1) NOT NULL DEFAULT '0',
  `trabaja` tinyint(1) NOT NULL DEFAULT '0',
  `contacto_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`egresado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egresado`
--

LOCK TABLES `egresado` WRITE;
/*!40000 ALTER TABLE `egresado` DISABLE KEYS */;
INSERT INTO `egresado` VALUES (19,'8009-30761','161-090392-0001Q',1,1,17,1,10,17),(20,'2009-30756','161-090392-0001Q',1,0,18,2,12,19),(21,'2009-30768','161-090392-0001Q',0,0,19,2,13,20),(22,'2009-30765','161-090392-0001Q',0,1,20,2,14,21),(23,'0000-00000','161-090392-0001Q',0,0,21,3,15,22);
/*!40000 ALTER TABLE `egresado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(60) NOT NULL,
  `ruc` varchar(20) DEFAULT NULL,
  `sociedad_id` int(11) DEFAULT NULL,
  `mision` tinytext,
  `vision` tinytext,
  `ocupacion` tinytext,
  `sitio_web` varchar(100) DEFAULT NULL,
  `contacto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `autenticada` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (5,'Universidad Nacional de Ingenieria','0000445589-642j',9,'prueba','prueba1','me ocupdo de adlaldadajsd','http://www.norte.uni.edu.ni/',16,16,0),(6,'Aalfs','1665550000-8777',1,'jhjkljlkjk)))))))))))))))&&&&&&&&&&&&',')))))(((((%%%%%           ','Investigar ocupacion','www.actualizarsitioweb.com',22,24,0);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiencia_laboral` (
  `experiencia_laboral_id` int(11) NOT NULL,
  `curriculum_id` int(11) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `fecha_comienzo` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  PRIMARY KEY (`experiencia_laboral_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `ficha_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicacion_id` int(11) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `ubicacion` varchar(40) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `jefe` varchar(30) DEFAULT NULL,
  `a_cargo` tinytext,
  `finalidad` tinytext,
  `funciones` mediumtext,
  `requisitos` tinytext,
  `experiencia` tinytext,
  `competencia` tinytext,
  PRIMARY KEY (`ficha_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` VALUES (9,21,'ads','dasdasda',3,'asdadaad','asdadada','asdasadasda','dadsadadd','asdadasd','asdadadas','dsadad'),(10,22,'adadadasdaasdasdsa','asdasdasd',1,'asdasdadasd','asdasdasdadsa','dsdadsadsddsd','dadadadadasdasdsad','asdadsadadsadsad','asdasdaddasdsadsada','dsadadasdasda'),(11,23,'Administrador','Administrador',1,'Gerente','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','2 años','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.'),(12,24,'Vendedor de elotes','La cotran',1,'a saberasdasd','asdada\r\nda\r\nsda\r\nasd\r\n','sdadada<br />\r\nasd<br />\r\nad<br />\r\nas<br />\r\na<br />\r\nda<br />\r\n','asdada<br />\r\nda<br />\r\ndad<br />\r\nad<br />\r\na<br />\r\n<br />\r\n','asdasdasdadaaaadada<br />\r\nadad<br />\r\ndaad<br />\r\na','2 años','asdad<br />\r\nad<br />\r\nad<br />\r\na<br />\r\nsd<br />\r\nd<br />\r\n');
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_solicitante`
--

DROP TABLE IF EXISTS `ficha_solicitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_solicitante` (
  `ficha_solicitante_id` int(11) NOT NULL AUTO_INCREMENT,
  `ficha_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`ficha_solicitante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_solicitante`
--

LOCK TABLES `ficha_solicitante` WRITE;
/*!40000 ALTER TABLE `ficha_solicitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_solicitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion_academica`
--

DROP TABLE IF EXISTS `formacion_academica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formacion_academica` (
  `formacion_academica_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(11) NOT NULL,
  `fecha_comienzo` date NOT NULL,
  `fecha_finalizacion` date NOT NULL,
  `titulo_id` int(11) NOT NULL,
  PRIMARY KEY (`formacion_academica_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion_academica`
--

LOCK TABLES `formacion_academica` WRITE;
/*!40000 ALTER TABLE `formacion_academica` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacion_academica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacion_complementaria`
--

DROP TABLE IF EXISTS `formacion_complementaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formacion_complementaria` (
  `formacion_complementaria_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `fecha_comienzo` date NOT NULL,
  `fecha_finalizacion` date NOT NULL,
  PRIMARY KEY (`formacion_complementaria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacion_complementaria`
--

LOCK TABLES `formacion_complementaria` WRITE;
/*!40000 ALTER TABLE `formacion_complementaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacion_complementaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `idioma_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(11) NOT NULL,
  `idioma` varchar(10) DEFAULT NULL,
  `nivel` enum('basico','medio','alto') DEFAULT NULL,
  PRIMARY KEY (`idioma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_publicacion`
--

DROP TABLE IF EXISTS `imagen_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen_publicacion` (
  `imagen_publicacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` mediumblob,
  `tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`imagen_publicacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_publicacion`
--

LOCK TABLES `imagen_publicacion` WRITE;
/*!40000 ALTER TABLE `imagen_publicacion` DISABLE KEYS */;
INSERT INTO `imagen_publicacion` VALUES (1,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�\\0\\n\\r(\\Z1#%(:3=<9387@H\\\\N@DWE78PmQW_bghg>Mqypdx\\\\egc/\\Z\\Z/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc��\\0h�\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0N\\0\\r\\0\\0!1AQ�\\\"6Taqt����2���#BR�Us�$357CSbr������d��4��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0?\\0��Z(4Ҿ�\\n�g�ls0=��v@=~*\\n�+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������W�;��r�F��a{�^�:�UW@DDD@DDD@DDD@DDD@DDD@[^��j����X�����V�gob	TD@DDD@DDDAu��Z�P���I�K\\Zyd��v\\rI\\r�8#ÝP���1��0�g�z�Vqwkc��f�ځ�\\r��#\\\'ܼ:gN:�2t��������?�M�V�j�2�\\r������`�yc�X���v띶Z)�-��ʯ����}J�W���c�2���\\n�&������&Kwc~2XA~��b�[%��mlnks��r\\n/K�ص�@`�y�6�v�����r�J�d�:8���;�p��P��m��km���/�\\\\�0�\\0F�����^�\\0�d�^#�E@j_#Z[�1�N1�Y�����g�����PM3X������\\\\�L�]��y^�M����\\n��*��~9g<t����zM���oG�>�{�{Rt�a,}>����q�? ��/�\\0���Wn���G��mzp�\\\'�-+�s�@��o�(�Q���䇰/\\ro����\\0���(-�r�\\0\\r��ꖳ�tnČ.�ϧ*&�\\\\2���lT��|���o�ߌzRGWء�������ǲ2~�\\0zr�m��^���|e�X�cO�SU���چ�]���^Z׺m���S;��i}��\\0�A�jZʦ���S�(z#!�t��F�/,\\Zʮ��\\r��5T8�/\\rޤ(���4��tQIHֹ�\\0�⪱��N��g[�l���!� �vJm&��K4�\\n�$��ؑ�\\r�X�_O��Ѿ{}�i� I��z0��6k9YIZYK0s\\Zdu�\\\'��B��]W�(�`{d��䁇\\07�pw����MI��Z�兄���<r�q�{�d:��=7}ç�}/ �yo^0���}0�H�Qԉ�[���� ��ɪ��#�e���~\\0�\\0����Yh���g�\\r;-fӚXJ2߫�j����� 0��a�1��O�z(j�Ӱ��������+�h�\\\"�Y<�M-)lߺ1�;qa����DA�<���;�(��Q�����رDD@DDD@DDD@DDD@DDD@DD��&����Ŋ-�K�5n�v� �DDD@DDD@DDDAX�i\\\']o\\r�G^�iֆ�8#�r� ь���˭�k����^07u�R ���Q7P�w��N�g�ώy~k�Q�h/��5�|D���	#�XE���	$��sP�$n�v\\\\^�i#kCvY�s��Y�V-\\Z&�eE��=ã�k0�z���)n��EP�#�ZY���� �)�a���j�5��r�vq��Lݬ�,M�E\\\'{�ݝ��T� ��P�KCML�;�6�8��c*],�5So}�A���n8�N�xX���H�\\\\��EM�z�c`ݴ��\\r��#PQ�Nj�y\\r���?5�.��E�uʜ����>���Ο��E�\\0�	!i���Yc�D%��H�2�ݣ����\\0T�Wd�3��9^��:������O�㿢�\\0�l:N��L|�9�d����٩��[�S�x�x���z����\\0<w�_�\\\'۝?����\\0D�iZ\\\'٠�G$���F����\\\'ޣ�ѵu��\\Z��L�� ��q�{Դ\\Z��<BFܠh<�vO������lq�i��\\0$�z�!������1D�օ޸##��Ej�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QwTj���l4O]\\\'݋�GYA3]]Ko�3�L�c�x�F��\\0|�Gi�KS�7H��P����k��vV�\\Z��-��9�ڭm����������������pַ�AD�F��\\0@��y�l:�����p����e�5��|���>����ܧ�cm�p?0+�K��.��;/��{��e����\\\\��ÛL�}�+�h�@sv#��v��c��H\\0|Uǣ�y�/�]�\\\'Gr�_�;�A\\\\�!jv�Y\\\'k�%N�É����.-h�Z���2�ڥ�޹�\\0�+C1á�����f����K[Q<��o2HH\\\'�x>�S������K�ixCIm��pi�-Ͽh��,u��,��#��f��.�+�Y\\0$\\0��y���j�� g�0J��襴���\\n\\nBF�����.b�h,�{�Ý�:�Ǘ#�Y\\\\T=�3j�B�\\0���7q����A�.���#�h�K�p��=@��y��)�%4��]��X殣h8��K�H��Z7�ˆ�\\0B��X�`|n�(�ƍ����Sm{�l�q��W�j�j��=<��\\\'���;���Sܨ����>7�o�z�N�ϥo���^�M+���;�<�� Бp�A�<���;�(��Q�����رDD@DDD@DDD@DDD@DDD@DD��&����Ŋ-�K�5n�v� �DDD@DDD@DDD@DDDAÎ\\ZO�Pt%.W:��f%���C?��j��V�<�Cg{Kbh;ˏ1�⣻�P���g�h:���=\\\\Aj^\\nڊ�P�J �#�^�_�F8p���^gG4�VH��i�9��\\07<��:a������S<�����G!iu4yo�����:��;��\\0���vA��Ul6�N3�`���4Ԕ��؞.�ŭ�\\\'�������(���<���\\\'�W��4�$od�s�,sNA;CR(�u�H��w������^��P،a�d��h8�����CpѼ����$�+�R�Z��U�����I���pQWJ�e�5sw�,kF�p	����4w��7fF���p�Q�ڌot�ٟK.	�ۃϥ���ˢ����k�\\0hH����\\0A��z���S�H��vH���MD�.lQ6���	�t��v�\\\'��g�����ۤ4�q��\\Z���9����۪)Ĵ�se���$g��T���mI�l-l�`�����Һ:vJG��r���t`��\\Z��zzC�F����Z�Čl��7��`�� ��w1u���_�+��״��m��z�z:��o�>#����+B�x�al�H�#p�^ÐPGj�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QC�{�,v��q��$M�����aQu�Q�l��a{���w�<��>k�/����i�����;\\0W*g�&�=���a�\\07�K�ygcԼ[\\\"ZqlL��e)x$F��ָ7��(�����ptP�p�\\Z�JI����� �J˻��2jH�̡�>�?�������L�*#���x�Cȏ�x�՚��,�|������S�T��Eb�\\r�tN��4�}3� ���Ǣ�g��s��*\\n��s�GLm�F�C@�/�؝t�e|t.���d͏;�^����Yb�d��1���8�<wu��6����CMOEP�HCK�<RN8u.{�QS���I��]-o���R�ON��ѽ��L�t���OGO����i.,?x�x#�;U�tVQ��S�\\n��$n!�6����ս��f�w4m��w?��%v����GQ�L6|v���	VKf��[�|���_��/���\\nx2�hZ��6����;�DfS�G��O���qQI-K�H#s�=N�V=Y�$�Hە��;�X#xῑQ�Z��/z�\\Z)��\\0�cpO��.<Z^�zn�eq�4qg�������\\0p�r6�=D��*�lk�\\\\j2vO����7t[[c&*d��KCs�ʋ}�W_��[�u%>p1����>�J�� 0Op�����$x��-\\\\u����bB|F�!�[�$�^�e�5���Z�exnc.�}|O�Ф��\\r���\\Z#,p�k���`��릫k��\\n��K�̤8�F�F��޵h�Vi\\Z����{\\\\�#��<��/~��Vi��\\\\�E#�u&s�x{�����mQT�и�����inv^Hx���A����IWOO#d���-sN�0��o�����]��xv/0�s�*������������������������/�ջ��رE��&����������A�.do�D@DDD@DDG֣:��	�_����\\n��\\n�*��=�Q�筤�\\0���5�ZP�E�W��H���U�4}�kO|8�쌑�U�3_5U��lL��_��ǀ�ߌ�����Ե\\r]\\r5��$���/tgn!���m��\\rgIhk#4�G��F���?����Kv����)�#�ۆ��`�P��UE|��R�e���kq����`�����edO�oh�҂O�[=S+%��5M#\\r�R��j}�\\\'\\Z��f�[N\\\\�w/Z�e}MXs�)��v̳���H�I��۽m֮��2Q��Nn��\\0p�\\0��\\\"��^��8���	�wdGՕ�RӲ��*x������*���GUF�\\\\�TӍ��4���~�o��23ԃ�~��š=�-F\\\\�/I^\\rMv�P=�Z�fzP�OV���k*㚪�.��\\r�Xs�q܂B���m���j0�y���J���a�t�ڍ���;`�r\\\'�*��������D]^׵��9�<y����Jy!���=�`{#�������54顎\\\\p�hv>*\\\"�W�h2��D�w�w�\\0ʅ��N� ��KP�ݭÎ8\\r�-���[�w�8���mܡo\\Z��lq�\\\'w���#�zʨ:�Pj;еU�>��˝�hkq���W;.���v_���@�\\0i.�z�\\0��z~��TV�Na���[�]Þ��qV-/�-��७��jc`k�)�]�y�u��*[c���Q1ؐ�n2~<>)g�v��%�����m�X�F�w�@A�����i�;og�f��7����t����.s�\\\'��NT�Oo���^��B���	8�IϨqWiCEʊ��\\\":h�+�p��nO������:8�x�{@|>1��ܩjըf�����)�%����x;�V�;�B��\\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -�K�5n�v�,Qmz_ɫw����\\\" /\\r�c�-gI+�gB콼[�{�V��j��ûDw9�i���s�r�3k�p7+b�h$������\\\"\\\"\\\" \\\"\\\"\\\" /���1�xk�<��D�����m5�y��ˣ��o-=�Y�c����3�\\\'E����W��Lf��J��ǯ�*X�-_���f�w]*i-�߸i2HCq��N�\\0>��\\\\�ֺ��e۫��B\\\\�܂��8�7K�F�i-gOX�����q�Y{�T�hß�H:�� ��k�]LX�.���x8	�aN��-�[\\n�w�Z� ��qTY�i��ПN)��xC�(go\\0����)��綉\\ZނJ������A�\\\"�V:�j�m5pv_�`�G����q�����w�v�,�L�����וw�b�SRZig�Q8i.$dd��Z#�uo5��T��w��2�z�QZ)`t�\\\\ -���}�E���$;�$����n�V�Z�i�}&���bc�4�{\\\\�|n~��4]��0r����˪��V���`T�x���7�x�l�j���{���gm�q��\\0�F�kLc ��e���3���iG~�����F#��bFi���r%s�U3��-Q8y�~���mV\\n\\\'��a��0r�������^�u���i�F6��;�\\n\\\"�������O�K�y��}���A!K�������� �665�$c\\0��w��smК*-�S��o%��u/.���[=oG;(�K�F��*[W�䫨�MY���@�� \\0?�wւ���f�y/�ZXԮ\\\'s�!�r���d16(��5�nxlV�l�ȩ\\\"�@����<T���s���&���0|=��y�<:��}�R��ֻ)�����K9.��ԥ���Ԇ+eBj��,81���]�OK��}��[����c<��҃��#l��\\\'�����t�x�B˖ת<���;�(�����������������������/�ջ��رE��&�������׽on�d��?�j�0���p�U>E�*��<���8���YQ:��f���4\\\\O3�U��t�i�R��<_F�f�ԗz�3��Ko@�3.�h8vw���h$���������V�g����8�\\\\׍��o9�Ms\\\\�ZA�A�����\\n���V�\\\\L�v��X^8��Z�e����-<�A���lw\\\"�;F��[b�|�}l,ā���#�Yc���ڋ��M@k�	�F3��+NAH֞Ui�\\0�G�ڧ�s&��k\\Z\\\\z>\\0g�P:�ʭ?���\\0Uʦ�SK�#:��r�9�-$z��u�f��[���4�2eۋ��\\\'ѽv>��a�ZG<��:���:���5�\\n��|����^0�.��!�����v[�h�^�4�Ue��**�e����9iaG<�=�LW_ �Z7��ݲ��G����{�b��\\Z�r%��p��{����\\0���7�]�=_ct}�#ٓ�?��E��i�d���Z��#\\\'�AX��r��|�NuTC�dd\\r��s+����\\0���\\0�����t%��WW%L�O;C\\rR�\\\"�n�O�U�G����k>1�AB���~�&6��<\\r�s��;��銫T�1W>0j���g;##�[Z\\Z0�\\0�*���\\Z�G~��6z,��nݟ~���\\Z�M+$�)o)H\\\'Ԭ,���e�k�\\0aV������5�\\Z��X8���d�>�Q|��ʇQ�\\\"u5 w�(88� �Ǩ��}T�t�l����elc8wg�䭚SL2�}U��(��w�g��W~���v8��	��v�#���\\ny|M+ �����08�A}\\Z	\\\'\\0q%g��P˨*�Y^�]�3���y��J0ߵme�Xɂ#���G�=��Z��Z!��c���c{�F�;�R(\\\"�G�Wgwb�ת<���;�(����������������������Z��M[����+e��y����=}������w~�:6��Zָ�\\0�(\\\'��QD�x� ��;d�R�\\0\\0�tVU�CJ���q0d����t�ꩤ4PLhc;\\\"6p�˾\\nsR����SI/Җ�?�g��\\\\�ࠤ���6�67\\0\\0�����MGi:3M]\\0�yc���,�~��g,�7H��їc�;�_\\Z��m+�b�Q5��;�|ƐN��Q�t5Q�QCU!�0=�も�n�3R�ޚ���H7\\Z�>#�W\\Z:�j�Dԓ�h�6������E[N�[ȑ�z���4�~�{�v\\Z�t1��F<����\\Z(�5zm��ʠ��ؑ����@DD��g���O\\\\��(k�\\\\I�2w��V��5�ak�APZ��n�[A��3vI���5���,l��i�D�ׁ��A��c���&�/d�.@�c��Ң�I_�E�E�RG�w�ۗ+��] ����� �k\\r\\\"봦����Mf�7I��_��Oi��Cr�Sϑ,�2��ޑ����1�����G��XN6�0Z⚢��K����5�x<�h3���-\\r�����G�vK�z�R�x��j����[g\\\'���9��+�F��T���n���|Vl��QUzkL�nQ>74m���;�&��[�t�dU4�Ldi`c�����r��7���.��^ȃ+A;�%�KM��+���t~�/qV�x����������;|�z�&W��k@��r��Z��n�Q�[R�Iv#nK��xu�t~�t�ْ��\\Z�݌upS��688[��9s��.���8�K��wl���_u6�&���������������JK=��>��yc[��\\\\�ӏ�\\Z\\\'��8�_ݷ���AU�w;dnl�J��\\0E�y*�M\\0e�#�vz(x3�����R��.5���Ȥ���8�x�$��4Td��}Ӹ�z��Z*��[%ұ���f���$���;��WYQЙ�e��on��o����w��	r���<�Cm�����L��[�?PܼT\\ZZ�*�����a����o\\0����_���e6�����E��q��ʺXlv:V�\\Z���G���z��j��C�QS�!̎.���@DDZ�ɫ����b�k�M\\\\}�݋@DDD@DDD@DDD@DDD@DDD@V�);�:��L�6\\n���k��T֣����-�Ĳ�*v�Rg�#�r�g�z�N=���\\Z`F��7s���%�R˕�x22�	��^QT�;��&ql잜�����i�v���_N惏�v���sF��c^��d�ֆ�5�\\07\\09/�H�ǵ�;� �����������w�GXP:�SRZm�:)㒩��&4�a�g�@hg\\Z-Is��0���N@��}J��Z\\n�QKG=Ƭ�5i��-�\\\'�*ڀ�����20UJDmz��m�g�-.������\\Z�n�7ֶ)�v��\\0	\\\'�>=���q���1[�i�U%1I���3�:�V	T�cI=��M��ۖm0�>�ܮv��.T1US�9�7;�pz�<w))�\\\"�F!y�&�O>�^��\\\'�S�7|D_O9�,\\\'޾G޽rF�XY#Z��`�� �m��Ms��N��z�8���N��fF��_N��ZCE v7\\\\q�.?e��\\0=O�̟R~˧�z���>�~�-xc���!��Һ�۬p��p�n\\Z2L$4�Â�m��	.�d�q�t�;���+�;eo���p\\\"1��5��Ma-���@\\\'�:N{��<��:���sf��K���&����d���Y\\\\�a{�#`�I�\\n6]Kf��ڸ�L_xg�փ���T�t���\\n���Ι������X!��]�[~��a۽>��~���cKa�t�8�9���|Q�ە�aW��_�Dӓ��� ��ՠ8Pij\\0�;s�����������+h��!5l��\\r���ej��U\\r�.����d\\r��Tt;{j�]���-+���3��?����L�l�u4[r���op�˩L�=)y��Zi�*�Q��;��N \\\"\\\"\\\" ��M\\\\}�݋[^��j����X�\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"����V��رE��&��������c�\\\\�}a}\\\"�����TP��v���7��U��[e��*x�m-V��s��VB��\\\'��B����j{�1���@\\0�\\\\�>o��W��\\0*�)^���U��\\0��۴��X��UHß�cd�µ\\\"\\Z�ֆ�\\0\\0���U�F���X�}���V=�[� P����#��z3SV��V�I�h#-�����jV�( �ce��X8 �Ḯ;�Q��s��SW#��v�.c$�~4eN��h��ih�&�<����Ԭ��U�ycvY��?�#�zi�7{$=��KD-/h�oT��;y�UF��3�����������{-=�UG�Z9�j\\nm\\\'t\\nQ!��G5��h��0�Yb{\\Z��P�hg�!{�m�5����)���QQc,`ߝߪ�\\0�6?�8>+��Xة�k�&N1.!q�2��\\r��������[#m�%�6�p����$/�Em�MR��\\0\\\'C���Yr�W�v��@��q���+�5-#6)�ⅹ��7��&h���d�.�-��\\Z��?%�v�v�kMLԽ����.`/${��D�L:n��~ú�7���u��ӭtp���G2G�e��7�����s�����f{������ .`��� ������N��p�c\\\' ���s�+����U-[��-��\\ZƘUiz�쳤�?�����:�����>c#�pw�X�Ej�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QR{��lߞ֫���澳YY�L�1�x����\\0� �\\\"\\\"\\\" \\\"\\\"\\\" �PlO��\\n\\\'�[Q%�n6�;C��T��t.��/�\\\"X���A����&�5W}SI`�4�4<�q;������Zˍ���=͙���U�Q��*��[D��a�3�6w���A\\\\��.��W�=�B�Zב���=�I�����v$hss�Va���b\\r���mx%���cz�,w*\\n�t�A�\\Z#\\\'�n7`�h�������������J��h�.(;�\\r���J�u�������G�k��1$�yu�������\\n+_I��ǘ�6����6�Hg����3%kHt��{�;9� �i�D\\Zz��>��-%���7�5�K!cO�\\n�@DD���O\\\\��@��E�>��Ұ9��{ˈN�\\nf�O�v��r힒7=[�{��ϓO�7�-�b�p�Jr\\\" \\\"\\\"�Q�����رE��&�>��Ŋ \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -�K�5n�v�,Qmz_ɫw����\\\" �Q�\\Z������m<a���4�|J�*=�3S�\\Z�4�qu8pf�[�^(��������wj\\\\�rnl�#=G���b �h����Xk<Y`qt`����^U^[_CUO�nı�t����Ob�Zn0�m�U��Z��<�T�G<n�V5�p�k�AT���������K��h����3ɤp\\n�(#T�$�m򃤄�:F��F�!O��$�2�Sq���G�J�9�x��:���UZmՅ����R�q���\\0n�u\\\'�]�.����8ˣ|�;���9e�ˤ��_L��x�ײ�H�4��PT��7���v;c�w�G7h���7�b�7���P��8�������k����5--���R�#�&��q���ܪ\\Z1�]�m�V���<�<y{��j*�R�+�`ͅ��R��w��,{�\\\"Y�\\\\�$�F�wZ�۝5�����ås3�����1�ul��(Zd��D��Ҽ�+N��\\\'\\\\n&�l�\\\\rX�����lmk�\\\\\\0��������.xl�ԩ}�]/zW�g����$c\\\'�\\0\\r�t���p�R�w1�����\\0�R�m�r1�\\0��V��j����X���G�Wgwb�ץ���{;{(��/�ջ��؂UF�J�Wy��ٌ��3���+�EL��*&dL$��ܲ�6���p�2�����anx�pq�oA�\\\"�GU�k��\\\"�(㹮\\ri��\\\\�����3ރvۇ0���dw���d{X:�p�5�U4�9��o��*��|��e�yX\\\\�vd�K�K����J\\\'������%~��?�)���XX��\\Z��?#9���t���y�����vG�,1������\\\'������\\\\	���L\\0H^�P��yl��RM53�`������٭ڧM���V:��7b�wY�A�\\\"��z���H�#�n�\\\"\\\'x=c�)�U4��SIO3v�������2i,ڊ��;�i%���#~�X��W�I���@���\\n�����.�QAvE�S�\\rE=8t��#�X���)e�T���I[�*\\\\vIw���� ���r�����������p}K�:���7/�Z�}-��MQ-���cw�/;�YP��f�:�[���#.s����>��f�V꫋.�v�д�����ڃ�JY�����B]�cp�8�}C������hk\\0k@���@DD[�즶��)��8�*�s6b�;�q�9ߎ#Hk{�h4���/5�n9�٢�&��4�T3bO�\\\'��B	�D@DDZ�ɫ����b�k�M\\\\}�݋@DDD@DDD@DDD@DDD@DDD@[^��j����X�����V�gob	UOԺ���ʹX��ֹ�/x��O���,��Q6���\\\'�U8�`8����� ��е��O}�H眓����\\0�{�Q�u��e�F����+�װ9���G5�OIOLd0B�̮�ykq�z��DA�����*E9��1nЏ>1x^k�ކ�I[P�������\\n����Љ/���MQ�\\\\�p/��=��y�m$�N���{��_��Z�ޫ+�Du5�ڥ�R7,x���~\\n����i�+�zYIh��\\0��AmU^��L����R��V�/69ia L{8�H;�#|�r�8�1=�k^?���Ym��-n���U7ݨxt�d�g;�8V[F�e���mڞsQJz,ǃ�:�TLT7mMq��[���Ѹ�vI>����\\Z�\\0u.U-ku���_-�嗴l�<z��:��$M{��:3��AeE^�o`���7~��j+\\\'4�z��HN�n~�At����#-D��6�s�\\0T�Ƶ�Z���К��#�\\r��k�����:}CZ�3;�c�}܇%u����ϒ�N�Q+�c�%Ĝq�PAI�[�������t��A���>�`cZ�1��h��U=g����������a��Wn@DDDAK�+?d����|�Mh@=�[��pǣob�j�\\Z�gf�{�\\\"8v#�w�^r����+Ty5q�wv,Qmz�ɫ����b���������������������k��M[����[^��j����A*�\\Z��;����M�&�4�\\\\���\\0X��k�x��G\\r�\\Z+-��x���\\\\,���x�:�v�1�F��j���!��窨���\\0��gvnMl�R�p��%�cdk@�[��?B�슋.��Fͺ}A+�\\\\����_fǬ� ����\\0��(.�㧇��>`�1�{��.���#�h�#㴻\\\"�o@#h����c�-����z驭v�c�����p,�GY����0���NOBv��.�譺��@��,5$m�8��*�O3em!qo\\0���ABʪ�W=��L�f�-��ˋ20��VKN���P���{�4�\\\"�^�vŹ����T�І��3��\\0�9��*��TЁ�*�h�kY`���\\0����=�<]��1���H߿�U���\\0����h��j:\\\" �u5;�\\\\�#s�X	+��lm\\rcCZ8\\00� ��6Jݙ׷��!F}���l����YD���e�|��Eo��ae4P4����zU~����W�=H�\\0d�^���mm=;����F��q R�W�/��p��i_�α��\\\'�}\\r��+p��X(�P\\r��:��]���k])i�3������\\0\\0\\r�.QQk����Ա9�6�����p�*�n�+{��͆�Ұ��F0;U�V��j����X���G�Wgwb�ץ���{;{(�\\Z��AC$0Q�8X��;$�����>�UYkcx�s�\\0�8}J\\\'�=�ͨ~G�J*�+�3��Q;J��tm#~Aߒz�h�ޝ�\\ZZ�� !�P9+�FT:�K�9�\\r�t{��q�*v��W�MG4�9�X��8�uZ5���o���\\nWGpdc��s����/��x�j��\\0RxG�y���\\0���/��x�j��\\0RxG�y���\\0�֨�����\\0�,b���w\\Zj�[SS}Ή�9ߒT��{ǛP����\\\\e���c�L�\\\"�,Ǎ������G�y���\\0�<#�<ڇ�ԃ@������\\0�*#���x��M�뫝ƆZI��lr�e�6������J�Ei))h�M$��y$�?ă\\\\E��G�y���\\0�<#�<ڇ�ԃPE��G�y���\\0�<#�<ڇ�ԃP\\\\\\Z	<�<#�<ڇ�ԼwMov�Ѻ����0���ՒJ\\rn���lԖ{|�r��I����Z��\\ZF*(�����W�v�ߌ��J�Y5ee����tԄ9�N|�qs��R^�mC�?�A���r��\\0��6���\\\'�{ǛP����j��\\0��6���\\\'�{ǛP����j��\\0��6���\\\'�{ǛP����j�iP�C��.�,��=�ͨ~G�K�_�.��3RKc���,c�\\0�x�\\\'���j��wW�ٖM���<w�دK����%zRSRm=�.q=xpR�mC�?�A�\\\"��#�<ڇ�Ԟ�mC�?�A�\\\"��#�<ڇ�Ԟ�mC�?�A{�M\\\\}�݋V��yt����h(��,qk�W���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������','image/jpeg'),(2,'����\\0JFIF\\0\\0`\\0`\\0\\0���Exif\\0\\0MM\\0*\\0\\0\\0\\0�i\\0\\0\\0\\0\\0\\02�\\0\\0\\0\\0\\0\\0&\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0���\\0\\0\\0\\000\\0\\0��\\0\\0\\0\\000\\0\\0�\\0\\0\\0\\0\\0t\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\02014:05:17 15:09:08\\02014:05:17 15:09:08\\0\\0\\0��\\0*\\0��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\n}http://ns.adobe.com/xap/1.0/\\0<?xpacket begin=\\\'﻿\\\' id=\\\'W5M0MpCehiHzreSzNTczkc9d\\\'?>\\r\\n<x:xmpmeta xmlns:x=\\\"adobe:ns:meta/\\\"><rdf:RDF xmlns:rdf=\\\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\\\"><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:xmp=\\\"http://ns.adobe.com/xap/1.0/\\\"><xmp:CreateDate>2014-05-17T15:09:08</xmp:CreateDate></rdf:Description><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:MicrosoftPhoto=\\\"http://ns.microsoft.com/photo/1.0/\\\"><MicrosoftPhoto:DateAcquired>2014-05-20T09:09:40</MicrosoftPhoto:DateAcquired></rdf:Description></rdf:RDF></x:xmpmeta>\\r\\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                            <?xpacket end=\\\'w\\\'?>��\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0��\\0\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0��3� b b b b b b b b b b b b b b h\\0\\0\\0b b iqc$D$D$D$D$�!�1�@�@�@�@�@�@�@�@�@�@�@�@��\\0\\0\\0\\0\\0h\\0\\0�@��\\0\\0\\0\\0\\0\\0\\0\\0�C0C0C0C0C0C0C0C0C0C0C0C0L\\0\\0���?J�|��X\\\'`\\0&\\\"!�`\\0\\0&\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0( ��]NW�_C��;�C�=n��\\\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\\"�w�ZVd��I��=�w��:�&���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0N��7��k�|�*�t�\\n��(gF������g��?�u���!4\\0\\0\\0\\0\\0@�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\05�����Mj�ʫ\\\\$$�&�ιu�6DfI:��~��AM���\\0\\0\\00L\\0\\0\\0\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�q�X&��;V��U�&�E�G\\ZS��o�{,����;�b�/��{_C�{f� \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\\"K��o�7��<�.����Ӣ��K��L#%�+�{���2i��3��wj��Y�r\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0L��/\\\'��??7�ǰ���g7��L�9�!U��*U���J:����P�O4�a���m=v�OT`�b`\\0\\0\\0\\0\\0 `(\\0\\0���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	�W����{�Mp��:S���)�pD�BN���D�%�Y1b��[������ԧ�y�$�e��\\0\\0<��V��*�S=�\\0\\0\\0\\0\\0\\0-`H\\0&�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\n3Ez\\\"���x�x�m�Tm�s.�����/N�źyP��9PN��gN�}��l��Zud�Y�>w�N�cEƃ���R��/$�P�2=K����ܡ�b��ԕwV[%�\\0\\Z�\\0AN��K��ac�HB\\r0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`\\\\^+M8��DW~<K���\\r��*��`���dR\\ne�s�Z�=�wo��=����6�*�Yցk�Xp��~�-!��\\Z�2\\\\�L[@�s\\Zv\\0Z�P�-0җ5��8֗��㙨�.**�2!\\\"-�\\0\\0\\0����s�&n\\\\�D���N#�-[#!��B&ֲİrF�\\\"�i�J+���O���\\\'p@�LZ�>T�5��������h\\0\\0E��J^�K�u%���#(�h\\\\�A]#\\\"�$���J1j�W*Z�,��c��eT�_�ʗ\\\'+VX�3��d,�U+ґ&�#��\\r�)$��?��?i(�\\\\�(\\0\\0# �\\0	���[�RԘ�\\0\\0P�1�/Y�������\\\\�K=\\\'@î��$��H`���g�e��(�J\\\\��Ե�]S�l�����������Q�Ss�;T�$��	JД�bd� &�Me��n=��w|�\\\'r\\0\\0�(L�@��2��w�\\0\\0�0��_���ЕkS1a��(�qz�mv�;��`�y�d��h��z�L�u%�]r�y���8����ήu�&N��5�+�h�W!�R��B$&114�\\n,�������>�������\\0 Hk\\ZRL`�\\0\\0 L*�v�����+^��\\\"�O7��ǋ���{�ञ�W��Ƹ��xu���Ն]��!�S�e�BG-���E��G+�n�5E{3�\\\\�e�蛁df���)\\\'I�R�  �1�	D�͢��|���+�\\\\������\\0!�fjcVl�\\0\\0�Q9a�[�Vo+�|���F��W\\nçnKV��bc�ؑ���3ʯZ��G�s[��LB�]�)�ٔ�Ϣ\\\'�$e�Q�,ݸ�g�bl����jj1���r*VƪS�(�dI \\0dd���-:~�����r�a�<��z߭K�ҁ�r �A�4�`t�\\0\\0W8��Σf{�C�y3�s���L���L�&u�%E�Y��\\Z��u+��[b�]}�h�\\\'�N[\\\"�N�Fze�r�%(��,S5[	��\\n,*��l�� I�(H��ō��������=������e�!_I��{Y�\\ra��\\\\�e�He(Y\\\\���7T�����:�����jtq�Ǧ�8�H)ĊiA֕�(�M��ޯ3�-\\n�.YG,g�k�:Ԡ��هs,�-��+�TL�e��4*]��mnQcpUb�,�5��}_�����J\\\\���F(�}_��WѲ�r��\\0�ROP�\\0(�p�����9�.������z9�ͩ���s�I�D���ݶs*��V�c�t3���p�~n�\\\\G&�Y��Fh��鉹S������	(�Tz��(��\\Z�oFx��dԤܰ��Y��iыY�6c�Y�銳ʽe�k;=������)6��\\0`4�\\0�\\0\\0�Bpńlk%ו���j����|\\Z�6��Z��q$@I۟t�9�ly�+q�U:�qs{x��s�|�����\\n뚧��q�`����d\\n�՟,о��%s��T���f˷6�^ܺ5��8��o�\\n��TY��M3F�/κ�\\\'7���K3�\\Znc\\n\\0��-P���q�6�sZ댇����>mY�ب�i��5\\0����y띛����=�Vz^����S�۟�sNq&���M;�5��$\\\"�U�p����D�)�XBh܈��j��آ�]��,�=UT�q�l�����z�Uԯ�_=~�W>���-��@�����k�w�w�=���T��-e�M&�eV\\\\�%Y-v-r���.�8��1�{p/F�U\\\\*�j��H��I��x���]�% �d+�H�R�UV꾮�D���PvES��Nyzs�A^�3$�4m��;�|�~.�+�Y��Ӎ->�q���PG�z~fu�0{n{�g���{.��,�	�3y�[��;�|4ê�t���=g��#���_>���{�.B�^Z&�g�fԀmc��n\\\':�V	�.���pF���5U�L�����di�j��2荼�ܾ��X��\\0��R*,�{O#������ۋ�����vx�\\0A�\\\'H��\\0,�!7��u�q��ϳUξ�;��9���K2WV1�8Y�U�+�S�~������i�U@�Qa�ġ�8	��(���l�ЕA�(8\\\"��!R\\0�5B֔Z�\\\"6�c*�����drH���hOG�>x��n�nZ2�˱��_3�ſ������o����w��A-q�nw\\\"�5v�}��6C�O&�W=C6vP����l�q���*��H�D�����D�[m�䒪�	Č\\\\iBPF�KJ��26۞�̨͚q��B�\\Zb������>�k����(�͟L�|μ�����5L�C��w��ӏc(%���Ž<޲^R��_A��g�;�:4pJ��U��r�n��s�\\\"9ۜ&D4B�F�\\\"DP�%�/t̼�ÉQu��HL�+l�:�^|w��r�E�z����lD�f-�P�i)+0��+x���MՒ�5�}ϥ�ݮ~�P��-{_>�W(��eez�,�����1K����ܤ�h�:т\\\"$8�6*K͘v���AIąYe��r�$�hJ%��8��(ĕdB\\r�RJ)t�J�WW��ߐ�b���*ȇ�T�2U��sr�;�:[\\Z�[�����o�y�^�n>�����7^�\\0.Rם(���\\\'S2�$�DQ� �ۋg��H�$� V9D- D�dM�&�g�t�DY\\nDT�B@�N����+�\\r�t�I�R��lk�n/?�\\\"\\\';V%)]�b{��u��a�o-�����������S�O)Ĝd� 8�	%�q S��sn�{�wC3��S�W)�H�FD�(�D\\Z;h�ji�V[�ɡQ%��E�������u[EU\\\\�rBRұ�A��!�[	/7�*N\\r\\\"�J���s��=jo���y���k�*�}|ҊQqQ*�e�#�J2�!Db��J��}^�6r������J�Bp@J�$� h�P�Vgr��éD�o\\Z��(�y��k˭u�S��z����q����@&���=�{Vy}��n�:r�j�}��?V��r��|�\\\\|�o;��8���8��+fU�*d[0b�R�+%!\\r\\0��(�λ�z�=���rE���1\\ZQsIcNJJ���s�^s�2Iu���h��n�����%�\\\\X �D&��N>��_�nJ�N��z캼�ן��>����zo	��ūT��!FFS�_������|��{#�R�z�pt&\\\"qcAKnQϮ5��˥X�Q�N[����x�Y�3D� S��y�a6��y�Q�$��\\r�Օ.�Ձt�BbԈ@�CISj��_7и��L�d�ۇ�y��UO_#��:�>��)ӻdH�jX�+-=�v��::�����2��z�h7�����[���y��i�;1�*���;q,��O5����D�M1�H���n2��q�y�����O�@4����M^ǭqQ\\0�N0ĠAJQ��+x�UЍ��Zq[���ﯫ����7%�}5Jڅ\\0D�oR�~�a��Ъ��e���|�=m�#�c�;�uN\\\\��3��W��ůEs!]�w��.��j�(2�2K\\Z�U,�RN%(���YΘ֌�ռ}1& (�Z\\0.�Sm�MZ��J\\\\a��)(Ja�s���>v�x��ƾ��p{�����ֳ��U�D����9O��׍�E6q�7�-�~7C-%��y�>C5ߛN�9t9X��ݒ�QI��k<�:�@\\\\��H���%K��\\\'\\r��\\0\\0���ݞ�e��%��48\\\"�K՝2��Q�k9�.�X��6u��w<�nu�u���뉁D�B���W�G���1�-�����5���%�YU�l�z0��f����H�9D�� ˔�!�m\\0��d�0��\\0C�J���bi���$�e�,�h�m��7�<}���Y�n2��?@�]�XJ=�(�+b\\n��#b#�u��tqj�$��kUiIi�K��FQ��[5	Wfmg0y�L�5C\\0\\Z�BC\\\"`\\04E���5���IC@8����lI�Oɫ7+�Z%�te���ī)�|�\\\\�Av���U���J ��@l�~t��T�ꚙ#(�_QY5;i�n=95�L\\\"I@�\\r6!�*�&�6�L\\0\\0Q��	�E\\Z@��,�J\\\'p��J\\\\��^|U���۞���Z�e�\\n�VRpr��GK7�w�՝y^�v���7-\\Z�W��.\\Z7�J��&����rn��\\\"f��Ȍ\\0�\\Zj�@�i�1�FX��`�%V(�T�%I��I9+�C��\\\"���������o/��|ۛ켏i�3uZ�5\\r�;<z;2e筋�ڲ�tC4�T��M�����x�\\\"�%(�M1�Y�(���\\\\7��\\0)EX0���eُ�G�`<�}O;D�͞�Q�שG�:��N.�U�P�	\\ZI#���\\\'){N�{��s�y�A�(�\\\'����c���7[F�}2q�\\Z�g*��\\Z�٫6�/�j2Hqz�n�ꌣ�nQ	J���1Mj&���\\0\\0 i�9K��7�_ō|U��g��&!N�Y*��3L�՟Ey����[�p�� \\0����Տ�����Vr1\\\'����^�:&�������!dչeG����2�j� ��vÄZN�lL�ޞN��.�� M!(�\\02#0�\\0�q�o�C����,�wgͣw<H�(��*�E��/�<����/+����5�R*#@���\\0-\\0\\0\\0\\0\\0 !01\\\"2@A#3P`B���\\0\\0\\0�\\0����T�N�1�����\\r�\\0�\\0�&:e��$���|C���42�Q��	.�<�0��\\0�\\0�+6`#��	�Eְ\\Z+�C.p�͑�9נ(94��xkSSr#(�ɥ$�j�9����_%��~A�+�ez��{Y�rk������^CԲ��Ƕ�x��3���[�\\0\\n�R��S��Nu�G X�;\\Zm��\\0��]�#)�9�qq�*�[d�p ��GP���)��5�)N+�Oh����ty��7��RL�ɯ�����\\\"/Y>�)��s�E�\\Z������a�\\\"��\\\'�ǔ������w���D�ҏ1CHcs���E,և6��]3�K��C\\\'��5J���Ldz�X����#i�EjX��Z��?\\n9D8���e`Yyc�\\\'��dH��րܨF�����}�;Ft�rp��4�i\\\"-�\\r�/�c�j�\\n���zcd�}NE��9���<��Z���� �_���\\0��$�#)�uvΧ�{亥>���ǒ��G#���.8��\\0t�O>�ٹ���;���-��L\\Z�/�]G%B������������ƖK�����{�zm+���c�Ҩ�1�W��\\\"����[��͵���- ҄Er�0C��4�/j��i\\\\6�ajt��\\\"~�c�Z��7�j�q��\\\\V.#�x\\\\Vv�. @�\\0��gO��:R���1��\\Z��G!q�\\\\wY��o+q[��P��2iNcJte�ӱ��@�\\r�����ѽ����1��ƌ�\\Z��h�[�%_�9y\\0)M��lV�#A� �1+q*��]�<��\\nsh��աu1��\\r���\\Z���I	�<�i�yBE�+�yRp�;�߳r\\\'���9�+��4�/JT�R�ZR��\\0$g��W=,>�C�n��Z��U�V�_��9i0&�4K:q%W(��J�*T�JT�T��k�$����o`��(*[Q�+r[��nV�Z��^�wMv���yƵܥ�aM�F��[C���s�����Kd\\0�R!��u[���խ�rܷ��rܷ+E�K�g�|�/\\ZҥH}M�`�9��;7�/��L���q:Z֑bګ���j��jP��8�:G���l��9�S{2�����&��C��RڋQ踾�8����-d{QGZ��3�n>�C�7�z�ϔdU�������ù��ی	�,[Մ\\n�h�YE8��\\n�/Li�-��P�+zK��\\\\�ׅ��R.�#��Wٓ�>p?�͒�\\0rv9c���8t���i�R(� ��4Y�;3ɱ��p{Sv��AaЃڔ�B���\\ZR3�%�;�>�䝂gZw \\ZH�_Di��a�/`p8B݈��J�2����7&䴣��]����\\Z����D�.%�Q�ˍ6v;�o\\n��?�+d<�pD����ѹ�G�p�o)�!�i�濬Z\\n̄S@�O\\r��r���ka]WT-uX��+6�\\Z��)�z�ǹ�<��6E`��{��>K-N��y+Cܾ@������M)���-VV֜��8�cv�����,C��DQ��;ӛn��p$_�8F��2Wv�+�⮅О\\nb���{2.4w���S��p���m��T�mY9=~��\\0��k*�?Ʌ�r������&f�)��X��\\\\V�#PpW�)�<�\\\\�Q��>�� D���$x$�����O%j{�bxԩ��2�:���:�+E4��S���w���kq[��9q��\\\"@�-�f</�r~N�^P��=�Zx��j�<��w]����y�J.[�rܯ���ί~՛����c:����jb�������R�Kjڈ[Uj��OѪ�ܧ� \\n�P��j�(�J�*�s^�^��G�Y�A�G���N�ʘ��7^�����ڶ�����z^�>��[�5�\\\"CB�D��5��9zk�ȐvV�#���!Eڟ*�C�1�W�����]|����5���/ܾUZ	��IE�rܭZ�kW��/���ɡ,��D�km���o}�������\\\\6�\\0a_�������l�&���H�\\nO:1�yJ:��+@��A��g��T��&�U����d�|����,��{�\\0��<B����W��< 湥�����a\\rpMu4Ȥ)�7Ï�a(�9N�R!;�!Rb4� \\\"�Z�\\n���߶<�➝���[{�KSn�{��!����L=J�\\0�e��9�;N:tEQ��,	�)`��I�1jH�z))~�7�t��(�ZR��N���g��i�>�)�OߧN\\\"w�17%� ��*лUQ=Q���\\Z�/�f��SAr/��o�(�)�+��F��+@(�v��T�V�GGU��;�ݩ�^�G�y�������-1�<v�)�.M����p@uE���-�u�x��Xr^�u)��9⊭#r�s�H�\\\\�QjF:�=�J��<��	��^����\\r)i���?7i|���\\\\����t׈yxY\\\"�OE\\r\\n�j3ל�o���I�K���zt{�t`��ק����)�C��3;�S�Q���D���*\\n�&��\\\'c\\\'3j�\\\"�7l,2����d�>�f��*Ii9�Ȟ��R؃e�Ԣ�@Z����\\Z�D�{�Τ.�fnnE�vr�ئ��� V,Ŏ��F�xgE8�\\0�7���S�a>�2Ɗ��)�\\\\xaYb{��D���Ey	_��[�v�˅��SJ�p�)��\\r-�G�������c\\\'�B ��X���r�����fR�\\\"c�V�r6�6F0s��ߐ	�T��_I�\\\"W�9�)GR�i5��/Eւg���W%k�p��\\0��F�Ν��p�#T����E�!\\0$NG$��Ƀ\\\"�Y�ds0�#6p���Ѕ#AlA�RL\\Z�ɴ��s��9��yJ��\\\\�\\ZuuizR:��Đ�\\\'p������ñ+z:Ӂ���g��(�\\\\G-�#7#�h��5��Qƛ<e; \\\\�!�s�D�V���{\\\'Q��|��c�!�S%Nu��QI��8(8wx��D��ܛ��x,.+�@N��ff���᥅,�cr���x1do�V�Z�v����d��R�i�Pv��i���N$��q\\n����w��q���\\\'�����MSS��8���%����s^��{��#v�X�zZ�9(�=�W�5��y�P(*U�J�w��!����Ò�=?���jR�ɠ3�Nq2���W��P��*����Z�jիW�U\\\';j&�e�u�r�p��N\\\\7\\\"�5�=y\\\\@R<)\\0(�4�Q��l�)�:@�AM�i�%nGR�$]�y�5�	ҕ.\\Z�º���UБݽԋ�zs�^W�0�]\\\\�O�I�h�Qy[��P�]9j~IN�oE֊�C�`v���]�������Н\\njy�z�U�6��K�8�����ߤ�m�J��5P	҆�LP��]�V���gf���C�krܯKV�trwUZ��7R®�+r��\\06�Y��H��Ŵ��EZ��{@�A�իWٵjիD�ye�ڷ�\\\"��j�\\\'�\\n�|~�]\\0�3��>���\\n=;a�W���viR�k@h{4�R��U���7��7�E��j���Ak_=���-_u���\\\"<�V?;W��h������+[ﴫ�7���ի�իV�����QGR��\\Z�b���T���JW��(�z���ڭZ�zڵ�1�Ch�=ү�GB�90ǹH}��#�w[G��V��k�L�K\\r}��U��N\\r|8�Jɽ9�O\\rD�\\rh	�B�|���9l��Zd\\Z���7�U��<�=nO�w@�i\\\'�+1�8fq[��8��⊽xcn�1�:R\\r��h��h�3>9��(���7�޷t>{�*U��tZ+jn�k\\\\Q?E�Zs�>E)�����g����V�����h(nw���������Ȕ�+W��\\\\�R������\\Zz���\\\'y�~�H�q����a���@�-�Wh��;�9B���%O(}BJF@�\\\"{�Ґ\\n��~�J��yW�#ˍ[�zZ�=o���8����I�Jt�9��澾C~���j�\\n/0|W�>��w\\\\���U���Ť�I�����NrܜU�������\\0<��?D����P��o�P&�t����|p�!M}�{ԭ��@aŰ�f�c1��o-n��w[AQ�_x��Xz�\\r���aG��70��\\\"�;�l�8�u�#�t�NC���\\\\�)r�9Q\\n�+m��K��E{�\\\"�1N���9�{���{CSܤѵqn\\\'Ξ��^��.��r�!}JwPPP�1XP�F^�Js�D7IэyGOҐ�[���܋����r�</j���6�֞��Y��Wx\\\'B�:����\\0� �i4��$)�Z`��)LS��Z�۵en[��+�����f��Q.�/L����w�8��y\\\"}�tLO@ADU*R��!���d�;A�7������Y-�4R��\\ZW0�-���%v碏9\\Z4�5��O( ���S�~x���^���پR����p{P�<r���f\\\')��w�C�r��94qD�u!9�rv�)�Z�4��\\\'���[C�r��ᗻ񞣅��j���Ó�{g@�}���M��4�r^�J��R��iRta~��!s-qq�9�\\r�!��[)�Drt\\ZP���\\0��\\n\\Z��dH�ΫZA֭Z�J��;�b�oF\\\\�C���T��v�1����76	ˆ��z;�h6{������\\ZV©Z�o����5=���ȿ*E�/_��6D3�_�*���=L� #RU�R���Y\\nf!e\\\"�K�sS�=�x�C�Gxs������s|3��<���{�1\\\"j��nD�\\n!���	�\\0V����������q�b�n�t�Hq̆(X�d�^�Z.E�r\\Z��\\\'���Y\\\\4�~;�˂��r���k��X�Ѩ�V����>9\\\'��E�rܷ\\\"�i��K�Ӿ�Pc�WbzcZ�13�Ip[����ة��-�(���D�e�����ɮ���x��>։8��r.V�Z�h&r�J}ܶ�_�N��x�M�|�?u~��W��C���l�X��͏�t8�W�\\0��|>�	��~�\\r7_S�?F�\\\\aƤ�9���55Z�dN�{��Z\\\\�O�\\0\\\"�i�+ي��c���7���5�㙹0�����x��>��:��n)i��\\0��{\\rM��*pG�կKô�٥%�.ǟQ�˖�-�@�@�宣�d�]����N�M��m>��\\\\���B��juj�j|����W��Y2��J\\\'[�:��i�D6x��������\\0%\\0\\0\\0\\0\\0\\0\\0\\00 @P!12`A��\\0?�\\0m\\rx��V_���k�/�l�#s\\\\_Q\\\"1$�� �/���qY�#/S���#�����OU�C�-1���>�Db6�����zVՅ�I�#c^��ahz�_E\\\"��2�ǊH\\Z�S�S����8c�\\Z��pЗE�E%H|)=�Z%�|i�(V�b�%�:Z�\\\"��S�|h�#څ�L���QB*C\\\\\\\'��*��)G�=M?D\\n�(��E�ćΞ�h�2\\nS-�����ґr�E�êG��#z(�|E6��_��ze�\\\\�r�M:d�/�=G��\\0J*�K�d�I��p�I;)g������S�U\\\\!�p!B�H�|��S(e����$���B���:���m�$^�+��4��H䐖\\\'���/��=�Rh���ht��:H�c��cڙ�+�WGʗ�{D22�I$�I#}��rYc�$��x���N��b4���z�K�0Ah}�i |_~�f{�,BX\\\\���\\0��\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0 0@P!Ap`��\\0?�\\0���o�2��g��,�Ye�3���˗^��,������e�Y{?\\ZP�c��lf:���[8Z�OG�[8Z�OʴP��E��c��ԣ�1���!��h�^E�h�Z>v_D��n˕�哅͋k�,Z�.*o��R�p�M��q}��[P�fB���ѭ>O��~��hj�rZ,,_�T�rђ�ErB(��3%E��ȗJ1\\\\�\\Z�QE	rP�V���QE	QSZ�(B�FC��C&%\\n�&,��<�����pB1�ETc�3���G�fL��F��]������S>��B��(���bWT!�c�xË��(����6�x����)F;�5�J�!�1͌{�	i��l�>����~�1s���lEM���Y}����EW��c�o����{��\\0\\\'\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1 0@P`\\\"2Aap���\\0\\0\\0?�\\0���Y�\\\'$���&��6Y2�؂�TeR�A��by��N�f�R�#7B|���\\0%�1�.��\\0B*x%݄92ܣ%>�������k�\\\\9~D����B�+\\\\��A;�+9�YE�yYzd��Ĝ�&^(��4Ĝf�?ц�2�L�m�ɽ�,��Ȳ�/�qSq������~�U\\\"P��$�W�fQ��9:(��%8��?!��nZw�O#��e竎2�n|�W���\\r����|#b�K蛗Y�r����{�\\\'����2�Y���vYy^�xDɰ���>�Ye��П� ���e���,e%	�W�;N�,�5�?J���,���\\0@�X��	渝��\\Zߐ���G�q:O�=�p�����2�\\\'K$nGw�:��o�@���eᨢ� �(��Q�Q(?	�UU��?�?��>�T�W��~��?	S*@��)/*(l�P�-vl\\\'\\r42�Q�#\\\'\\\\\\\'��d�>�����YI�\\r��h\\\'K��,������{<)��̌e����_��\\0�g~��ztN��w�i�!t\\\'�O6�aG/ʨ�����T#�^l���:�nZs|���\\0��g>-TUۑ�\\r�7)����=ݩǂ�ʹ:���+(�r�һ��������>E^�n��|����WԢ����~N�,��/7܌9O��ɗg�I�!<J@�F3��������$�Y�E�A3t�#\\\'Tȃ�ʵ�f�y�U,Y2e[j�!FTޱ���H�>42b�ta[m��;��,HFn7�m�S��Qz���V�M���\\0(\\0\\0\\0\\0\\0\\0\\0!1 AQa0q@`�P��p����\\0\\0\\0?!��|)JR�����<�jn!`N�\\0U��V4	Cd\\Z���&�>\\0*�)��ь[P]��L.��#V\\r�BS��/n`�6ǹ���/��7�/��M��w��{�Z�\\\\\\ryB���Z:b}���c�j�JQ�N8��/H�8����Q-�\\\\v�l[\\r�҉��n\\rP�T��P��s�/�$���a�l[�)G*�Lゴc�?\\\\����*���Cy����DREF�ɬ~�.�����kK��B!��G��1e�C�����%B��RE�$�a�4����<.��(\\\'�QG֛A!��;�+�\\0y��\\nB|%��*��z�̒7�y��e��b	�����.A�[���=�1;�\\0y�&υ�at--E��s7�a�#���&��\\\"I/D�m����=�,}��H���Y3t:�(�0��D��+� �t�poП�g1����*��m��0��Ⱥ:m��7�\\0w���\\Z����%R+|����1$>ѳ����7�K�R��1�`�N�bw���k2j�K]\\\'��n�H�?�l���a�hN�dBF�����e5jZ\\\"W�(�m�xs��d�|�=Q�X�%O�U�����G�G��_�	F���Az�٥�_<Cϛ4�)��^@@���?�z���6��-�:SbJ��\\\'�>����}3a�U�[k������ڏpA	�P�WЪ���\\Z�P�!9P۳��q�������8%R��lR�\\Z\\Zg�P�h���A�R�{@%���\\n��ekBX�y��O���2��P�T��B1�h϶Y�M�P���\\n�#M>����Q�p%�ƤA�\\\'�z�\\rQ�bHG���\\0%�c�L�%5��+�I�,7�����$�G(1G��%�<�o?�1�Xԟ�Z�%\\\'�0��r�)�\\r!�M\\rA+��\\Z�d�}\\n��WᏟ��4!�����9 ���7�F���Ы47F7tk���\\Ztbx�%��U��r�d��\\\"ʰ��b�qX� ju�`Ec�;[C%�D\\r*���O��Q	�D%��0����V�\\0��#�u)ti�i�shmK��	dJC���dc�b�?b��ȧN�M���$2��B��]���)���mІk=h�<S�_>?&�x(ҡ�h�v[¢���EVxb��j��/���~��V>㶍�����Ztkie	�\\Z4spg�C�7�bK����P�s%�T�\\\"����������A����Ķ?�p���94G�)��\\\'�?���O~�Э��ۧ՚p�D�%�c ��䑡2XU6\\\"\\r~]��4�?��>�%C4��(�9�C�>#qB8%�T���O�}x���lф*4HLc��:���b�B���IAC\\\\,C׃�)����\\0�>��tb�Zz�pt\\n��hM��;�\\0��z��bb�o�s!;���;Ӆ�!�������1�DF���<��!����X��\\r�x�]���za�%[.XN����b��G�\\r/�~�|�i�&1�L��B�L|~\\Zҗ`Ԧa	5GJ����P��1���c�P�<�e�p��#��e��\\Z����h!��t�\\\"�N2ǣl)E�C�>��\\0�\\\\o�8��\\0���лPއ1��%�9bP�=ৣ��.a(��4O��<\\\\�PM��\\Z�pO��&�lrp<4LCA:9%QVQ��I�;ؙ�O��7�_�j|��\\\'�\\r�(lkP�xU���)�[U��4,u���F�ȹ�Qx�\\r�r�ƍ-Q�F\\\\~�9��7_g��Ո�G6�1�V6�G��P�p��|��◼l�ʪ=�hC���5*[�5)F:(��[��e.*i�VT��0���2���Luh�����\\0\\n�${�cQ��&Jh�~�\\\"�a$�NH<\\Z��w��7��V�)�cM��1pg�)�e�K�pLmxTō���\\\'�_��(]���� ɍlEf\\ra���ذbc������cQF\\r��4g8l�(�ѡ�B�X���8KYa�\\Z����v�n�CFF�]���Ԑ�k��o\\r�����	6GA����λ�R؁c6\\Z&�1��I�x��|z!<Q�5��r�H1����:�dϧ�F�\\\\f�<��8R�)����M\\n>D�z�i����	�ib� ���5hb�5��l��(�������$RĞưo���+������m�B\\rYKZ+�+�6�.�H������9\\n��Tlvn�0��4/b(�ǋc�A0p<��M9i�=cO�,��m���؃d^�c�3�=����D�+&�ב���Q=����?C��	N�U��Hb\\\\/hFp �!I�B`�\\0b��th���Й����bI��\\\",V���&l1/g�+aIF��kF������7�ZXq�@�\\\"��(��Ư)�n�,�c���R,��]�%dbA:6w-��tah�A%��[F�S�[�\\\"6u;��тe.�-c�:�Q�8�*��\\\\xnǼ����<6O\\\'���z`a����Ų����@���+	ȝ�bN1�66����J8�\\0H�=��	Гv��tXc:6F��|�L~6ǰ��LK�q�6�?�nF���BMQ�7�i�.ʍ6��p�-P8<v-�����t{��oi�C��h�DGMW�tjK�X��1�br,kcPc,6���AQ=�S\\\"1��d&.�m�_�X���B8͹��%�Bj��}�c��D6�N5�_d�ì=pK��b��؈_f�6E1>�\\n\\\"z$\\n0�<��cll)X�&�ΈeBx�Ñtz|u�-\\\\��f��n��Gk:6��\\n�>����*�~΂ޏ�	��i1)�$֑�7�\\r�.�*l��e���������2\\r4Q\\\'�BB8�Y�uĐ�Ș�s\\n�G@�Bڲ!s�1J����\\\"M�=�\\\"�M��O�&�CHH�\\\",/�?�U�\\0��T� ���$*��HkQ��OŔ�/���cp��px�B�60��m�4jQf8\\Z!�B�BJ�:&�\\\'�	)lN�?��Q�ϰ�VU�Aϑ�Q��+�[��\\Z6��\\Z\\ZhBo�(�;��n�&�\\Z�ҍ���bፍ��c��-a�x=�,qI$��LT��b>��~	(jٳ&ZT4�lZ(��GD��i�c�����N���f&[F�]�>M��\\rF�4��*�C��Jv_4��Ҥd�K؁j�!�6�ɊIFlEw��P%�y�-���#a�т�5bhO��P�����S����(�D�9�#q�\\0lYģ>������)J7�L�Q��v=������\\\\.��sC#y�/�\\\\G�l5^��+(؜�7�M�%!o؊���*�}�	���#� �cc�pbۛ��x�xce�e�<2�c�� ��u�B��c��S�~��|i�t��I:<�>T{�v�ݐ�DsQ�m�5X�h\\\\!�ǔ�M��M	�0�<���]`����B���N�1嬌���Ԃ�z̭kGbd�Y_bm3�g�>P�a���Q�m��\\\'�Cc�X�.D�eeÌ�.�\\r<Y%BaZa�˘Aİ5_B��C�7�MB���5���S*�zg��|��,7��!G����J6\\\'��.^1J_��΅�q[\\n����,@x?�T&��Y���~��1�x\\\'��\\\'�X�њ1����G{z+�\\Z���x��:�p��R���?\\nQ�:i��QL67����5����3s��b,-�b}\\r�/m\\n�$�iC��1�����ʣ�b��a��_��������Ѽ&�2Ć�cf%�²��hČ}��G1�ltgXd��}�\\rY��S[p�`�1�����\\\'����ś�ˋ�!ǂ~\\rQ-\\Z-���=33f�&<�H�T9�6)�Y��跴Q�&R/��Eݍ���.���B���X�LT\\\\��R��)Yplb�������c���45�:��v=�F�l_�N��$���i�0RI�Ѵ&�J _����C\\Zdg�12�,�r�5��p�(�l6��21�[7�|	7��o�o	�_��C|�X0�U�Oeh�l5����Y��]����x=�L�0��x2�z�9\\\"f��Z}���K�C��4KaR4K\\Zʍp j\\Z ��xA��FU�6Z!�l�!v{�T���C��a��z7���١�Ӭ2�x�w׋̋�&;n�y�2�����1)�47�!mB>Y��H��䌙�)6D:���L+�r����!0�(�T8I��� ϰ�g�\\rSkB��V��&��>�a?>�^x1����\\r�n����\\Z��?*&iJ;!�b,�%�iN�C�yyl2L,��3�̾H���P�hD��B�qyL�[}�掃���G�Q�3��}.D���x�_|\\Zg1�hJ\\\"���m����V)H9���(8wy�Bx ���f���cQ�/�w��+���ǂi��\\n2\\ns=��w�)N<E���a���$dLj2�s+f�N�w�bS�4���.x\\\"��D�h?�=�Q���\\n�T\\Z��e�C)�\\\'<1I�u�b�7�	����=at{bRR���}�bb��చyѣB�Cc�,�4>�k�\\\'�V?�\\n��!z$�,~���j�j�7�n;a�&5�\\Z �S<G�N�rR�6|�͐�-q0�+�	ec����\\\'���\\0�e�Ļ�*�%c&�{D��%��(l�}ax��F�5���I��P��p���fC��cP��6B0�ߊp�J������0���K�bf&�bڢt�$%T��>)>6��p2��\\\\4EDQ�8�Ə�4���\\n�6	(�O@��؆���%�Be�).+�P���6t^?�X(q�����k�</C�ƿ��\\\"v���d8\\Z	��HfZ�casL��	�L�:��l��b�\\\"�������k��O���R�n����Wt�w�M����z0e�2tgV!�{Ў���1�[5)T��Ѻh�R��/���(~-����1��hD%l�3CHfA&�49��H��D�߁=�U84 )�ѢZH�6�!�9�������\\0klx����R-&(�Kc��A�3�/���\\\"\\\\f�ÔP�b?�:l50�����m4h�[CC�O��ɰ���\\n5��C@�{�~h��y���c{:1�<���5�l�\\\"ps_bO�\\n���7�-66�X����\\n��;1� �q���;&��9�;���7��b�8\\\'VUGN#v	���%�S��,��B��\\ZѲ�����1���u�BtX>��x�׃/���t�.��l�CA����]�x�-j~�\\n�!cu�	��E��hBcÍ�b��<d�ϯ��]��xxO���<Q�~r	�� �D�H_tm��4�L<Lz��Y�C���2l��O�R�#|�#�F���<#����Ƽ`�BW�olE��E`��.KBc�-ĢJ=K��&㺅 ���W�V%�Ț��D5�t!��=��]a�t����.���M��x���\\0�\\0��I��|�c���Bz8��	�B�Кэ�\\Z2�Z��7��F�[�Jb�Z�b������x\\\"�G��LzdG�����O�[�7����\\n�C�I8\\\"��?�.���B`o�б�R��I�D���%dy��a�����h�8tz�gW�=��H2\\r��4%�����=��B�5�4x#�A��C�y��(�\\Z�\\nˉ�1����|�\\Z�bh��փ^��o�~���h@�8k}w\\r�2�~H���D?���1��9�E��-\\0�6�>�\\\\x��h��\\\\0��D�_�Qa�$8��\\0��Dh�Cf����M�\\Z#%?a%��t|��\\0�x]�yXd�4!ПC���!G�t�h�\\rp���\\r�!�=�_���~kP/<!��?B}�$�B\\\'��~��L�(�\\n���Z�}��_�eQ���lH͞�Qj��t6,�G5����D�[7x_7��f_&��d9{RЃ��u�6R�3�6��H}����LAcd�\\Z�U�k�x�6���-\\\"z�؏��J-\\Z!w���4)����$�8q�Q�{\\\"G�y��؆�t�%�@����_��\\0\\0\\0\\0\\01�0�0�0�0�0�0�������<��Lo����<��<��<��<��<��(\\00���� �$��<��<��<��<��<��<�\\0����8�8� �0�0�0�0�0�0�3\\r�P�0�N0�\\\'��,��,��,��,��,��$�qٞ2����%�*�0�0�0�0�0�t��Cm0�nΰ�\\r�)�0�0�0�0�0�\\n��Co�Ug�x��\\r<�5��0�0�0�0�0È����e	Ж\\Z�0�$��0�0�0�0�0�=���g�@\\0� �0�0�0�0�0�0ǉ�$��(� ���\\ro�4\\0�<�� �0�0�0�\\\"�y?O.�0���$\\0�$��x�K�:�0�0��\\0�dQ~��GΒ[�M �#@/�?����0�0�\\r/[�n3\\\'�k\\nn�Pg������P[A4�Az�g����_..�a�%�w,�����2g�f�La<��(p�q��0Î�zd�W#���a�ݒ�\\0^�\\\\~��\\Z�g �0�� �`�?�ٌ\\\"ٌ=���z���_yf�8���\\0\\Z}=�CXI�����F�s� �]j�&s_UWQ�.	a��H �Vɠw�(th�˖U�-��6 6�R���r���C����ia�&hp��g���G7���Ы�Z:�?S���#1����=�g8I�O��l�J����	��\\0�t�}S%7�NM#=�:ɲD��@�F��6u7�\\0D�-J<�hYD����}�W�Jt�nEFc�� �خ�0��v.���!R�c�$�=�*v8/�_� �\\0�E�\\0��@\\r�<�17+wϧwdA��%��Ł�!��è2z8�8w����I�\\0�����;��M�����6.ύ���a$�$n�b�?�ˁ�!�����&�a�� ���*t*�~�#G��\\0-����߇�������\\0�l.�n]b�]��/8X����-U�@r��ѣ�cb��k\\\'pyS��CO�_���M�f*҄mң�d��\\\"�\\\\��š�4��75���Y�M��\\ZL�\\nŴ�\\Z�@���U���C�}x�1`d�\\Z���瘋�o݃��w�U^ߚ���N9`d9�4:�Mv�U�R}���ȵ�L3���Qq+��x䗻!�H����1~�!�/&����Fr�v@�Ewj�M����s\\\\�ǟ�B8�[;��4���IsGYh�G|nS����M�q���Se�p*g�����`��D]Iҳ�^���j\\n��)	��o��dĔ(wk&�%ʓ+0��axd\\r`�AN&foMo\\\'B� L*A&�\\\\�ݢi��k��ln��z��\\nj�\\0��\\0�5��+���\\n�H]0|��\\n�d\\0�:lIE���}|����@р5\\n��TQ�1x)�ׄ��ꈺIw���u)f�[��|C��p�\\0<�B)o�&�m�Uw��iV<�+O��OLǛ���hoEm��ZD��Y�[t�_˘��_O�Mf�9Bx��\\\\���;c+ck�|��\\n<���*(�J=�_`�����\\0\\0\\0\\0\\0\\0\\0\\0 !10PA@`��\\0?�\\0�\\\"9%��\\0\\\"B	��h� �ֈB	~s�+�)K��\\0��C�o���|��C��s˩	���C�B�D(���1�\\Z\\Z�$O:!�R�z.�bcD�?�z-H�N\\\'J1�0HA`�\\Zo�qo�еf�Ih4�JeHZ�L�ސ����4N�)yB�MdOzB����hl�/	,\\\\Lh_I�+�c �A��%�/��Ab/_�O�$$M�/HA!��Bc�]bl^��G�i��>Ĉ>|#�c��_O��5�p���#�A�7��1���g��c��|��M,�.C�����b�sF,�e}�f��	e.6�>Q��./)�=�\\0�R���.����{��������PX�z���,=������&5��)	xA�\\\"p�ce)GňF��1�>���>�H����c����\\n ���������\\0�e�)qP�C��QYJZ2�lle)Q0���V�s�0��_D���J&&!�\\0��x�49�2�X,�G=пߢZ1���xjB���R��)JR��46Q�R1DI�w�1n/�z\\\\Y�!�\\0�(���>R	Q�1����kD&q����!z?\\nR�K��Q��oZ�\\\"C�!6�\\r�W�h�zx-�ِL1F=m.>G�H�IY�5��J���}�<#ۤ\\Z�^e����������w���X�},%�{[��Q?K��l�-K\\r\\\\ؽ �r�h��4$�o������$ѭA����(����$,�(�Z$��x�	�J1�Ui\\r��\\\\^�A�\\\'��(�O� ���{3�<l^�8xQ��No�B��tzǼ�<b����\\Z�?\\\'�֢�L��0��R����b&>�+)�+/W��.�D�{LPF�A��JS�K�e.Q=o�!d�<6\\\\R��d!?�cd��C����+�\\\\=���\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !10@AP`Q��\\0?�\\0JR�\\0%&!(�/�%�N�����\\\\`�\\0����\\0��!��QF�*��^4��Q����L&R�Q1��(��9���U�B	#�DN9��������|D�JR�D�^�/5���nQ2�F�����|!Q1m�ϣА�\\\'��\\\"a��]|���[h�%�\\\'�BEX��K�C���b�S�HLh|Z�)~��\\Z;�\\n/� ���x/�cZ�F4^��J\\\"p�R�yK���pn�t��x1�1��/4�MD �홇������ľ1�(<�A�W�<�5����X�7Q����(�n�Kǘ�<�ՈyJ	�Ԣ���؃T!�nǆ��zdɩ艤�	_g�&ŋ���b���S�{j(�L� ��1�t�\\\'GG��\\\\�=[>�E�^c�v5����% ���⅋f5��Q�T��JD-�_ɋ\\\" ��<l�ce���ҡ��\\\\d!	�Ũ������X�1G��!A��$B��!z~�̖R��(�l_B(2���\\\\(�.ˉD1���t��%��`��*�x�PBbo�A,.1���tgcБKű��\\\'\\n���5IA��yML�A��J=7Bd��<!�A�Nf� �$l}\\n.���NH$,O��!�aг\\\"�<x��p�%�\\nY���H�ࡹbƠ�x����A�\\Z���1��&��>�����$DA0�\\\\VR��lj�Л�^\\r�b;�A�!x?D����ceJv\\Z�=g�<b\\Z�V0��^!�+��(������xF�T dz�.\\r}��M�<N��(����THk���c 0�\\n��؇�!51�/��Qc�J2�vbb59R��\\\'�������,ũ5�v*�%ͱ�TN\\\\�e��ʏ�,���b�H�xS��\\0)\\0\\0\\0\\0\\0!1AQa q��0P�@�������\\0\\0\\0?�\\0�m��m��m��m��m��m��m��m��m��m��m��m��m���m���m�� e���766Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye��,�����0��Ye�Ye��챶�|m��m��m��m��m��m��m��m��m��m��m��m���\\\"m���o��Ϳ���o�.�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Y�o��i��0�\\0��Ye��6����Շnv���=��6Wdt�|�~g�����P��Bg�|������q\\r��\\0�?��,��,��,��,��,��,��,��,��,��,��Ye�Y�b�턟��W��:�}�����K,��,��,��e�Yg���cߝ�k��7%�L�{rg��٘�tm�\\0>����������se��m����!�Ḗ?>��0����%߸@K�ߣ,|��?��\\0�\\r.L�v���+}e͎fN�+{���2ܷ��)��N��z��ԡ���\\0TϿ�m�����>	�������c-�v�\\\'�>���뛕�����=�[�s�6�ѻw��O�����%�)�,�H��Vhe��.r#$�]�s9���8�z�:$���B%4�#�V�\\0����n��C��3�w�܍��\\r�7n��p��֓��g��\\rm�l(P�6x�=Y��\\0}�L�u9%6>�ݥ������Y��lv�	���o��1�>����F\\\\$D�9N9cN�w�r��&�z8���Fx�I�9ٜ#��X۹f���/h/�8�~\\\'Cp���Ή�<��G�$q�g�!��Z#a!��1x�������	����e���\\\'u�g1��\\r}=�u��!�z��Y.�2�r�b�K9��c`�\\r������ݖ�Y5�Y�ۙ��t+��H�-:b������nA/�4���=È>�m����w/��\\r&Z���}±���@av琷K:���\\r�E���s����yzm\\0ͲOGyjT��(�Ēق[��˞��8�]��ik�f�)��M��;j_7p�e�N�P��,����ɸ��}���z�`^4��y�l��BԎ\\n�r�!1���[4�\\\\F��7�q�i�q���_0�r��1�)�՜�o��Bqq.e����G\\\'v�#葽/rW�q.8~��x��D�/��urn���?6�jլM�{�l{��� qDx�<]1�m���P���%���I`�^a�{��\\\'/�.x���}ٰ�8��X���.���0������\\0�.����Hv�BE��M�C	8\\\"r�}wMi��=�\\0�8��|�0q������\\0\\\'L�r�0�f��+�$3��m��P���ר�+5���{�m��=���|K^�{�.�R�1�3�Kp���O���$@��VU�����!\\\"8��\\r�XM�(���o���\\0,���O�_�]�˒����њ�l㶞ex`�X�V�5ǹ-xLNIۃ�<��F�Jk��{Iv��w�X[�\\0��܋e%e���]0ˉ���Oܦ?�3�z��� ���W�nD�lg�+��9��ym�\\r�ۍ�ɱ�a����4��Y����P�s!`����L��[�?V��C�˅lm����77<��f`�����)�4B;�9�-?H�s�1\\\'e����K��v��\\\'�����ߨ�\\0�HRW*�|���C�_]Ϟ^�\\0�b	���n�H�s(�\\r���Řw��\\0���N-`��\\rر����nXc�->�|��8:�z˗�S�Õ�c��\\\'��Y�\\0�#:��~���S�ן�-��H��Ȁ����ȁz���f4���b_}�Y���\\\\\\\\\\\\�?�\\r�pz��Xhup�%Ic�ns���]�ظ�\\\'��Y<y��[��z���?F����O�rf�G����,��Rq3�m���:�f�,��q����c�v9����g�-���G��%��ow�}ۑ�9�oM6K��8h=B��2Fθ\\\'���fR�����������߁����l�&�-�P�1?��e���\\\'>=�\\0�����:�d���h�+��pd���\\Z��e��d/�������\\0q�̏����>\\0��$��H�q����s%�1;���B�Ʒ|J2xp�#�\\r�$> �2�\\\'��>���\\\\�A�x��m��6y����|	ߛc�O�?���\\0{l:[��\\0s�m=��	���#�Hg����,Q=Av��-��a�$\\\\�4Y�¿1|\\\'R��?7\\\'�$���HfF	v1�L@X�2oc���`��2��o�}ާ��C�M��r����\\\'��2�\\Z,������c�Az��gV����..�%�,זc&8>�~{%/�|�@����3�g\\r��l���q �럘�c�����|{.PA��#w�Qn��,��m����oళq�\\\"���FO�c�6>%͗�H��N~,�o���yM�,�7�b�����0G�6����`��������J�\\\\`}\\\'Փ�[�rw�0��Mm�\\\'{}��l��|pa���b_��=��|�vm���{�m���F�z��Zc�=�%�D�$�;��������Pg�2N`�\\\\@��dR��e���l�Ȋp���A�?�q<�)`��O�?M��PoF����.�e�`9��<�<s.�f��z�����<vY�b�bsm�\\\"�e�ϗ��{�O�\\\'��9]W��4;���E��k23V(��ɿ�\\0�t���f��s�]���-��q��<�6X6�Ǚ�l���`�1%�|@��(�Ò�C��H�2�kdV\\\\��G���8������e{���`�nS���[\\\'����(��C��m���Y��u��=��Wsy#�2:��v�>�I�/��F���\\0��i�s>9�O�u����\\0�����I��̿���.���zg/�\\r�6C�pxS�s�XX����>��>���c0}G�5��Թn�3(<�|X|��|��n����1l;m�Ĵ<��|]�<���>C�|�C���U��x��G�)�����~���\\0łnX^�?)��p?v�\\0���?w�\\0lݳ�{�1y�u��d#�����r���r��-�C�ct�lr�s�\\Z��\\\\��17��!��]%�ĕm�z]�X�\\0|�������#C�\\\'_�O�I�|>6|����躾a�?��\\r>$8�h޲�V�c���?S�ݡ�\\\\���r?�v\\r��D�̋܏|@݂�a�m\\rX�-_9�{$�}!�[�O����v>�\\0~>��K��}�C8�F�K%��{�Ĝ�;t&����x@�Ȼ+C���c�%�y�奃� P��c�Ť;>,Cm��@n�n��7~�Y��yb\\r�M	�\\0�#������G?v�\\0d�M�q������W�ĥ�oV�q�E}O�2U�g94��PA���m�� �Zx���@�vA\\\"�� ��e�l����s�0�ug��/��\\\\Ǵi��=F�Z�\\\'<�ȱ�Ѱ�Њ��=�Χ�&7�ߞ��Sft=�8���O��\\0w���T�\\0d@�0���?����ߍ�/��8�iv����?�����$|��\\\\#�X���i���q�a����ur�;��]X�nw���;r�_��m��k����6���S��\\r��Ξ��.��6�Yq�<�z݁�i��ϙ�X�y�:��jޭHnï�7I����%9\\\'�:$l���p�zw?�\\\\�l�ݒ�5���Ր=Z?��]Dx�v��m�թ���d���b}��\\r1���}������m�\\Z;�x�<hvik\\0$���K�~�N�?|v<���<K#�]&=n:�N8�VQ��K[7�.��8</�$��V�E�);�����k1iԘZ1;s�����igr�PC�9�rQq�i�b�gWP}��[�i�gw\\r�#:��~���|Y9t�w�P�)���K��FT�P-�݃>���|������{br]�s6�z�H�N�!��b��c�[��wg�������RYӈM23`������9sVHܣ����5��-���8�K	j��A�ݘ�x��6,{L�3��I�2�˞F�.{�Rvo�-�7��<̛�jͅ0!{����@7�o��{�\\0�R�n�a��o�6��yd��WXͽZ1��gG�]�Łf���%q�aj�;[��\\0Í��f�K]�񄺑ip��?��R�`Lw\\\\�1�����n�����@��	�i���/�-ͱӉ���8�\\\'3�`]�~$6���2��\\r�\\\'�#��v�-�jfg��d{��2C=�X}����Z�n.��s��@�=��1�D�w���/�(�\\Z\\\'Զ^1����� �V�J,��H�2��/�x�Y͞F��B�y%8�#ϸ����<NSn��m�����z\\r9�v��8/�(ɫ���7��<\\\\�׫#�;�E�;/�1� F�1�j�� ݓ�ai��_����`3m���e�h.�c\\\\�5w]�5����0��O��9�V���ߒRr�\\\"N�!8�F�v攈sŜ�����5�Z��!��D�\\\'!�\\0��A�r�y�a�;Ĝ�\\\\<�ĸKI�.v��E��	Ո#�o��g��s<\\r�w��g�\\\"��\\r��Nz���j���3�^;I��]�����Xsչ���7�\\\\B)�Ő�|�t仢�./�\\\\_�C�:>�\\\"�weǗO�����ȣGM��p���|ݯe@\\r�Rߩ\\0,%m�c��ȹR�����)����q����w�Ṓ�`��C���H��X�L�%����_��דm����D*s?n�>`O[8�?[��:�L˖D��q^O�\\0[L^�vc����	��s��\\\\S�6�&^��s\\\"俅9u�Ø������$��	�6q�Gels��Ǘ��麲8����r�k��7�[�%��vG���	��M]�8�@�r\\\'�����w��r+!�����|{��[,���i��c��%��.Æ�n��]v}�s�q��< ��<5�Ɏ<�̑vܱ�r��,I;��oǓ��w&ʼ�Yh��q��k�y�C�4yHv�!�|����~�c���\\\\��g�kZ�����\\\'yc����6pQ\\\'e]G���%�=����+y��q#݆0L�!�V�\\\\��\\\\㥠�G��-�	c8���!��\\r��?s��g�b�}@��nS��^>I)����O@m��Kڻ�\\r� ���z�2rT�lN�0��6&\\n��K�[_d�}ڐ��VC�����:.��.ZEܳ˞�~�����$�0�G=Op�!��@�;7�gfbIl�Î�ܝ{�z��|8/�i䈛��}�>	n�[�\\n�q5�6�i3_�Z����B\\\"�\\Z��$�o�����ׂ�݄�A� u[�\\0�2�c���4��m����F�\\0������ݽ�I�{A0��	��s�&���ȶ,��\\r_����ry�t^�I��E9̄�-�uԭ@M���$t��nqd�s��,���+�0���/3)Ov���Ʋ�sa��l�B���7Ƿh���:s��(A\\rr�΢�s���������巉t�������$��N%Ķǆ�����b��l�k�Qi��nm���wC�f�dz�B����]Z\\r	o]ϻ|Q��\\0Fv��C�P<8ə@�fd���wW�0�����G+S\\\"Yx��s���qT6�+�\\\\>P�Ĭ��L6�\\02ʜ�0�#��Q�V���2u����`,���,�N�R:�q��f��&���r�\\rp9���L7�\\\'+r��7���	vۺ�q�.��pռ\\0A��ۡG�Q1�nK�:ǆ4�a�ù!�c���p^�˲;�q�;k.F�8^����vu\\\\��\\nu.Ru�䶧�g�\\\'�n��e�x��}\\\\��c�.���q\\0�d���+	|Y��شM-�q!���C��Lu���5x��\\\\G8l�R������r\\\\0��Ǵ�@����<7�a���2D7��@�΂�njz<�uM�Bi-����N5�1�	�.lۂ�l74����+�{�yJ���|��o�۫����N�\\\\M�z2�ѓ�V��BX�Jx?,��.>���qw�Y������=%���X\\Z؎��)׍�\\0`��f6Tn2�zO4r@�;,�/d��.�������<�dF�\\0s��\\r�M���t�h�~�ǗT��\\Zi=�fS����\\\'��cav����.x+3%�\\n��sº:�ø�8#O>3c&K{�ξn|sH��r�G�B�l^}[ ��ǃ�c�;��~���mi ����h{K��P{��H����}�r=��;w�6��u1�7;����{���x;~���q�57�﹜3�����1̲yJ�\\\'����#^�0݄{��7//�����	<.�\\n�WT}b��\\0�`��O����v<�����r�?�rq	�\\\\)r������T���}I��SYWsyά��\\0�o��Ca^���3��p�q���zx��;%�\\\"u��������k��u@��\\\'���p�as��i.\\\"�\\\\��{x!	 �<_�Y��Ԥ�\\\\��?��KV��Y6BΜ��ƌ&@o�}��Uuu)��ۗ���r:>�I���\\0s��9�ɓԣ�������\\r��r�v�-.҇��9㇎���s:.^3�p\\0=\\\'����{�d�\\\'���m��-:�������O���ޮ\\0X�vE�s)�D`{oi������0�9z��$���s�,̑\\\\�����K�ۮ���۰<-�^���O>�fi]�o���[ͬ#�e߉��7/\\\\�pg�����gl=Ǝ�V��Q{��Z��n�A�ݵ�$�q�f7;,��V��\\\"��7D���\\n�r)L�;�1��/�_�)��]#������cy��*����Ǚ�b��Y9�i��\\\"K+��#��`��f��\\r�����Id�J�-��r���\\Z���<����n@\\\\�øq��7-�_r3��xcy�uoq�`����������~��8�~=�L���/�<F�\\0rR�p�������3�x#+�r�/��^���I�=����Y��\\\\�L��4#�0��N�r�2Ӌ�n�\\\\���bˮ/u�<���$p�g-v�uwr�\\r����d=��כO��_�̸����o���]ncY#�Ŷz�P�N\\\"6v�\\\\�n^�c��ƕl�F�\\\\�w�	Ŝ�	]��qF��.�Մ�<��b]������ݓ9`��ݒ�6��/j(�?X�S�f�:K��t� b?VF�<�����\\n���6\\\\���oD����qw�q-\\\\�=J0l��%�<X��7JolW�����r�c(.G�x��Ƕ˭\\\\C��\\\'>[f�O.�fg�	�Q%�Nl:�<��p\\\\��fE��ͱ�ٞ�4�6��ٝ=��� �^\\\'ӛ�[w�%��|q���Px��<�M�|L��{�ًl�aԏ]6�>�q�	7���ѓG}]!̚�oW��w=�f��d�V�ަ���v��g߹ٙl��x�z�\\\'�m��=�=������S�ahnAgH�#���\\\'#y���]b�itVgP�����lb{|���\\0��\\0�W�>E�m�A���P�|Z3��d�aV.�6�fe\\\'�e����>�	z��k]_u:���1�K�)A�� ��A��,����[:l�c܈�L�pEZ����Ԩl�佈���:�uk����-�Q�#ȹ��ų@��͢\\\'@ciY��z�԰m2�e�0hڳ��\\\\�L�S����_� �il���g/�����\\n˘2qcw�9=�!��������L-����z�!����	��4���9�w���[o��^�d <\\r��z�}���gÃ���6fD��B�H���q�Q2B\\0~,U혰4��\\Z�7){����5�ޭm�� ��8��fC����.�#F�3YH\\Z�?�x���V�r!\\0fxP8K�2��wͱŕ���0߅�W0����	��x�m��Ƥ4>��/.�/	p|I o1��\\\"M�G�h^���L��Z����z��	�c[_+VE����`�w��[~e\\\"R�\\0�\\\"�Qpg2��j��P°��<e�a�˯`�7���<��Є�Cx�e턷�<;.&dww]�i��U��G�$����],��X�c\\nO^|�ฮ^���,���V��ş\\\"�ֻ���ȉOp��l��xM��ҶE���*9�_v��9��^pvˈ}X�KaiK�hl�����b\\\'�Fdpw�[�;��^X$�1��`��gs��:��.��[�+.P�F\\\'����d8 �˴;��r:��m���(~\\r̟\\\"�۷]ܥ�?��g;�Ǽ���������)�:EՀݴ9��-rܖ��d���׍���d?�h>��S����9$)M�Y8xk�m>$�7��\\0���a2a�۩t�N���>	�p��ˌ�u�\\r�-��	��[�\\0Ù^Ρ��x{��\\\'i���m��M�fr��Y��!���O�w�����|��B-�|��\\\\�_��\\\'�,�q6\\\'\\\"q��/��%u��˕7�v�]��R��m�2P��ۇ=ˑ�rc�͒~���~1�p��^片/����<d���x��<6�O��Y��C�]\\\'͓����\\\'|���s>��S����gW�5�~��K�Ky�kI�@(�.���]7a��fksϩ�Z9$ls!�Ԃ|����8�P\\r�.�[����G��͑���w��.盉s2C���oY���ZپH�p�!�\\\'��7����`k�&~>,����G�.eo���^e�IB{,:-E�G��(�?v֡��+~20}��c�2�}@��\\0�uYv�,A��$�f�$�<�G_Q���am�H�5��m�/�¯�J!��\\Z#�P�89�ۙš��~�Y0߈����_�b�����������m���\\r�l���e��#�0��ܐ�g�5�:�K,���>�P#V@vݰ�p�rݘp���˟	��>R�@��rF~�g;��8�#lkf���	v����9�\\r8�%�p�+y2�����Yţ��Qy��Q<��2eJ���ć�^O��1.%Cn	�\\\'V6�X�.Lջ���[s���@�ֻ�,�k2�8�/q�uv��=�>Vz#������3�g�ć�����G	 ��p���Ew�`yoc��or�`�����D�W���\\ZkD�xY��R�T�y�������:�܇��^2�0���i˗3�Vw��\\0��{��m�N8>.!v\\r�oԼ����6{|���t��^����}��$<)/��OD�i�L���YvM���]�y�Mn%��$���0k\\\'c=��. ������h�(跬;�;��[�>K����7=��r��P�v\\\\�H	�z�>�]NȌ:��>��x��UM-	�{��L�)��=Ȧ��Rc�D1��l�I�D9��6���|���ē�̗�w�gn�\\r	6��~�.p�(��2rٔ��?��p�݅�81�(��z��Ց�̓ź��r��q9���.`���\\r�Hq���Ft���L�=��]��r&d���h���\\r�N��46��1K�H�Y��,���.��m�3��g�TI��Ip�[��I����/f]xe}H�N{��等�?s%݀MO�KL�;~����R�N��<��\\\"����pF]��Q5�V[,��!�ȐmR|k2�bsr����f�r�jlͨ0D�����z�wf�\\\"������Sς0�|�B�uOrg��\\r�l�#zZ��(K��Zxq%���e�6\\Zo�3��fa����\\0$G�FԺ|�7/R�G#8o�w����\\\\��5����3\\Z�C�xx�-��l{g�:�w#\\\'ڽ�m�N��|�dw,�ȋ�Zxo�Qٞp�g��Z�g�{b��1��r��Iym5�A~ag,nq�ӄ��ސ�a8T�W5�Y�r�ͅ�~!�����Gm�z6%#����=�W���v�x����<pY%�e�/WI qg��<<��\\\'g��j9�<4i�g�MD����o���~�V:<�ܺFQ��%g_�p��i��%����_q�`ۨ�\\r��������w=HTl���-�n[��r��?�#�Ex�y�Y�	rQ��/)\\\'����Q�R=x?ܖ.�>yq3�3u�)�agV�����\\00TY�DFLK��?�6����ӟ0�8ۥ����ũg�8�����VX�Q��u���r��m�q�x����\\0� �|xr�\\\\����5a�\\\'�,~g��%�wc�6�C�p����G��n�|x��8��>EӾ��s<>����o�]h�1����\\0Aڬk%�?V������A%��@\\\"�x��܂$����,�]X��y���=�\\0p��,�9l��\\\\<��uů���mԵ.�U��mG�9�-��ݗ\\\'�h�Wh7�+-�<��!��[>m$��pOWn��qnZ����~Ky;�{K�w3Yq���os|�1w�����=;zɻ2�����%vX�`\\\'��Ui�S��\\\\�	�HN�1w���K�v:��%����DX�?ߌ 2���;@v�����QT�\\n\\\\��wa�y�;x���d��tۣYp#��G�]�S�69a�>�2>&%�Ħ��(��b�ce1<����\\\\�W\\0S~�������\\\"{���-���vً��.$p[YςK���&�Vñz�e�Z�xk�\\r���@Os�C����� ���[�gJ�X��2c	�O�?�O�{�c�!����Ä����þ.>c���O�|kq~���<��cr;����{��<.\\0�\\\\�\\\"���=�b]����fJs�D&�<�&�Os�Nq���k�-$��~�9o�!!#�@ 8J��|�DoR���l���{�d篙��G\\\'��ÊnY��f@ź�,=?��?�ߧ�rv�|��#��n�AgG,�-;!74�c���?��h��w%��� 哺�����ͳ����=� ��D�sw�.`���a{�\\0.iC�dt�	�w��0��q�:��̳����W�e��ͳ��Ea)uaaq���0�vn��:������`�[$菗�/͟F���{[��8Ԁj1�dL���r�q��\\0�;��a���Y~%��r]�{����&7}���:�6I4�W�u��������1sv�\\0����N��4^�%��aO�J�+�dmœ��8��5�����r��%4��<�\\\\Iк�[{ĳ�R�P�͸�<��ݺ|���)����dL|Ǳ�f0��Ï$�d=^��6Iu�	5��\\r�����..��EfA/��W6��b\\rbq�Ç���9���u�v�d��e�,�Z��H]�!�~���e���x%�}�v�;z\\\":�ɥ�̷���ȪJ�c�`��.�}@.������f�>n_ٗ؛�P���t-O9p�L�WφO��=�v)�X���q��Im��3;nt<������Hc>��]�l8\\\\f������,�Ւg�^>��{�6��͖���fA�L�z��6��pܓ��:�L�S%��ˆ<𬿲��M�����\\r����rm�I㧇����','image/jpeg'),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,NULL,NULL),(26,NULL,NULL),(27,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\06Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0g\\0T_jk48PYzts5Jvwaa54P\\0��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0\\0�\\0�\\0\\\"\\0��\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�t�.oi���7H���}������g\\\'L��y��I�6�S(K�\\\'�>f�e�E��z|����Oq�GDҏ��Ch��c`��U�@w#h\\0#�i(�L�}�PV��4P����Q���]��kZ�k^\\n\\n�QxiY0\\\\�`����^���&�I|�NZ���J�6��8��L�s�>W^N���\\\"X0\\\"|+T�;5�0��Qψ�}v��}��8@�·��;�Y�%��5�%%}G�8��Ӊ�q��S��׉��t���JL1V����gG̻��z�͕k��9!����ͥ��dI��<�C�N�f��2gQR\\\\�\\\'��j�ߝ����i\\r�^I�u�ݞ5��9X�4��}�_W����w���T h��� �\\Z��b�=�:�=p��kʕ<\\Z7�#�+s1�{�bke�\\\'!�\\n骃q^�J��n�o;0��(�zy(.�(���zr��B����7*�Mt�����f2�<ٖ>��l,�ɒc=5��z�ݻ��l��7��*�P��X�%�G,�l��챖��^���e���[�/7��4.�E��`��}^mR�Ϟ�5��Ҧ՝��$��l��\\r�e~�KP�2�!Kj+S^��Z\\\\R��ifj�b;��@�\\Z�ay�RpӲD��\\ZhՕ��8\\0�G���|�z\\n��h�Qas\\r�2nUj��dzx�р��d4��v�:-)sW8���196+K�\\\\y�\\Z���S��K\\\\��5֥rҲ\\\'ğ�(E������>�s���V� &��Z�v	���l5hƛ���a�t;[��u��U���8~Ȭ�3�����o�A��Ad9|`p��6���d��5�A~+H�=u*,7+3/j���y���~�^��=Mv���g��uf�y4%���7q��b>�N��\\0\\Z�熠��s�:?��\\0,\\0\\0\\0\\0\\0\\0\\0! 1A\\\"#25$346��\\0\\0\\0�_�xb��-1\\Zܔ�	��?��.�$�Sk�!�%�Y��(�UU�/�Ȫ��\\rU1�d=��~�1ǚ܏5��H����?Um�2+L�V�Cb:�U������}d�Tr�ʹY�o�\\0���]�7+N��f�RP�:7JEL�aE��s.c�F]>�~%x��q�ui^}T���_�؜�*�����p�N������sT�����UU]C=W2uO�XyQN�J0�ɬt�r*=����C�N[dk�geS~G��:n�їӮ���l�1�\\\'Q�n��0qm��\\\\E�M7�FL���+����Z��M���k�3\\\'\\\"�1j��Ǧ�q�O/���������?R��t�נ`4�jj�Q P\\\'��8B��� M$t�XoR���g���\\\'�����/��_65���D:�U���~w��u�w2�\\0�(����{�?��`!�`�+�r��j���c�&��w$ⳉ�c6P�Ss�0\\rC�\\\'����B������gP����+̱o�N������9J��j �@�=¾�-J�����#�[R���ťq(�n}�[�G����@O\\0Ӌ	��L���M�hA�#(�6%VE`c�ƭDL��i�AX�;��oy_Ӷ��a�$&���㻞�	��X�h멽OFq��r�hXoD7F��6 e��	Q��Go�xka�ss}���eE��FᥧYQ�q-�y��F1�\\\\Ƞ��1>����+0\\\"ӭ�Ӎs��+-�8\\Z����K7\\n�8�BX˿��0��,TVqؿ����g�\\\'���k����p�S�+���\\\'�,�e�����`Һ8vK�$�̬U����h�3�?\\0ː4�����V�Pĉ���[��h�ڙ����]�y*�$n�j1��YuX���j/��4K=n3{�T��_F�J�lƺr��a7��~5\\n�4�η!��` �S�\\01�j���Z��o��v�8\\Z���F�b0��ܖ��Ƶ���Ͼ��*�AVԠ{�����5��۸��d\\ZXeg�xʈ���z\\\'�˛q6O\\\"\\\'2e3Qc}�j!�Ӝ�ⴴʥX��\\Z�m�sj\\n���!��x��\\\'��X�Y�<�\\Zr���h���Lf5������1!R�nr�{cY�7��)� mĀ4�������F0�j+jP����g)�������RE��^d5�O�l�0@Ъ��Ojk����j���잠x�w��g\\\"c|���=�5�Q<��)�u�sp?ɾBH��k�����pc�������NѱμFx����u\\\"�:�8��3qL��� �O\\\"Fqc-���~�\\0�޻8����f�]v���~�\\0,�����0@!}Ҕd\\\\ucf��}C���V�eU�CuAZ�k��U�^��94�{�RU�Ӱ����(�c�_Rcc�U���AƮ�.,�����>~SZ���;�P�Y)���wO�K-���e8֥w?Q];�=�]���N���������?T��-�*��^��ȭ0���\\nQ���j�a�IѺ�8��-�~��m�g~��S��8��s�G1��OL����b����6�O�y)�u�����2q�j�Sa��N��cc�<�q#fꯪ#�՝���٭vu���Y%�����c��si�\\\"��3[�ek;����m�~K��9j3o�V���T��GP#ճ�,?/��\\0\\\"\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1A\\\"2��\\0?�:#�:�uC����֋h����ْW�uGT.]s�y�1�!>ΈED���p*((�!�%*�h��b����6)�ʭT���V8y?%d�БD�Nɯ�QX\\\\C��t�N;P�%\\\"2�KY�Eo���9��)�����8������%�gj!�D�~��	vC��b�a�K\\Z\\Z9tƓ%�uh�����xcZ+E��!o:#�FV9P��̄Ƭ�UG&�Eb\\\'[(��tFV}��)\\\"��/��=�}���zMl�E�tyQ��*�k��qLZ(I��%*;	�\\\'R����\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !01@��\\0?٦l͙�blٖ/ccf[1e��������x�ԡ\\\"�W�F��_[���s�\\\\1\\rp���	��6.r�͗C���6m���p�\\0D�cSr�\\\"�\\\\kd\\\'����_�\\\\���k鯾��t���>��\\09\\0\\0\\0\\0\\0\\0\\0!1 \\\"2A0Qa�#B�@Rqr����3Pbs�����\\0\\0\\0?��f�/�TT�Ե��\\\'u�3E�7�הʎ��`x�2��p�/���*e����TC���ɘ1���>��ܶ���h�k�T-լ7Y���c��-u�{\\\")\\r���\\\"�Lk��oZl�+a���ja�x�j��x���\\\"�4��b��6�4V�d3�uT�4�5���@=�t�0S!����J�1���47L���ƻ�M����/)Y*A��*�-\\\"���~а�)��;�Yti��~��a7�� \\0��a�J�j0����a�=B���A�\\0��`���4DѕZ�k6����t��ƫ��ӂ\\r7r*�j�+j_2ulf�a�ɭ�iU\\r�c2�ԫ�`�Hf��O�e<��a�����j��ي2\\0��\\0%�lο���٦��O�pXfԬ)\\\\�������!V�Gͥ��U���X���e����tYU����M�:�0��9\\r0>�T*Px�$B���s1�>�aM\\\'�A2�K�ay��U~Q�:��vk�eAP��Bo�U�����\\n��9�ڡ�\\\'�k:�ߣ@Mi�\\\'���\\r4�_��L�R��]��U���#��Q���j:��>��7r�t��{Kd\\\'�19�D�vO�T~\\\'�\\0Ƌ.�R�P���[}%Q��Vx}�b�T�0���|�tZ�=�H�]\\r�]\\r�Z7�X!���v4��h%FP���P�m�\\n�o����o����>��o�۫G��IZ.R�8��FWV���l�Â�Y�@���(����D�e��fV	+��,�`+ps�����d`���R�\\\\�Q�;�e�U�\\n�Wu�`ʠ�U�=|+��qX�^|G�;(�Rզ�/ř�N����]�.��\\\"�\\nǀ�:�l�WN�8\\\'d+l��	�X�U�,�ua�\\\\)P�.C��n\\r$.S%���ĮWJ�����1��R�6����l�$Ϗ��MuX}C�+���x!O�}�u7K�/y�|�r�W�uo{�9[ٽ�1a��eb��5�g81�e|������\\\'fca�fi����\\\\v�\\0�D�\\n��@�:�?�F�_�/ �\\\\�!\\0b���\\r�R�l��5Z�2������\\Zx��-V��f�.��g���r�B���Mӕ�UÜ۶�E�\\0E��w��f�!l�o[SI�Dܵo;ր\\\\��-6��;����7u��f�k�՞YE��T~�\\Z�}/�+�y>~�}_6��\\rAq��ײ���e2�R�e���e̲T��f��zf�*7�E��^f��O��qm}�\\Z��~�*NwkAq*����X�������R�\\0o��\\0�D�J�!ٜ���h��@��ꪊt��ΰ�)�ѯ��1�Am��U��ӷ\\rq�����nfT�D�G/�B|�7�Ӗ�E��A����L�*�>��?EU����9�녍���Rc��)3Vx�0��S�a�g��3���پ�Ҿ*��|�_���W�<�luh�[R�פ������&����Uia�j�e@�wS\\nu,>��3%|�T���Ox��t@4I	�pY�y�P�/�\\Z��\\0כ2���L��NI�yg�W�(���6�ܹ��[)ō�����~{m�_U�,����\\0(\\0\\0\\0\\0\\0\\0\\0!1AQaq� �����0�����\\0\\0\\0?!B\\\"T�^E�i4x8p�c�oRuI�2��T܊�R9\\\"�4\\0�$��=l��A�)g7���DޘsБ�<�3 6	FN;X؍?Y��9�P\\\\pB��h�\\0����F-#^�n�ޅ5Vf�4���:�����D\\rBMTD���9�b�:|8h7*����o�bq�?��y~���\\n���uo�dW\\\"3ZU?��P�.��D��-���)����o�)��s������H�_�V�r�)���I;;�\\\"I2����шd>t�R%��=�\\0��e�p� T� �m0����j�M��^\\\'J����F\\\"B�!ZKM\\\"��:\\nϝ��+]�2j�r�B�����b�YIj:��K�2��Z\\ZHOT���k�KtE8n�0��V���w��	Z�ʕ�\\nTt����e��P�j�+��ym�¥���%�ݏ�K�s&�1n�=R��Q��(�P�tkpl��g?�&L�dy�K#B%6\\\\<`�n�B[���LnY%x%����A�\\Z29d�����D�?@iMr�w^��5��\\0��!ɒ���<<]��DU�˥t!0d �c�`�O�U+!q��uZ?,E*X/�ƥ��.�S��ؾFjcLǐ\\\\\\Zz��8ً�{\\Zz}��O�2��F�5ز�fZp#bҩ�c�QYcv�	�\\Z(�\\r�C��C�P�Y<���E\\\\�Me���()?@c��\\\"���{%���xs�Z��Ɲ*�:\\Z���쏂a27��5���&��dVj�4b�%��6]�\\\"�-���3j��^m@cx)�\\\'ɀ��@y�[$A�O�F<e��2�/�t�A�0/Ci;hh�tIa�c#Y{\\r��K*���YH�5�cT����g�ʼRs��2IGh����+�>ߊ�?�E%�B��}�5������T��7�Q1t=%�, �\\Z+A���A��7���\\r��I�,�=(�\\0E�.��!�Y�BN.[2�!g&EO�Q���e�%�ɡ���=:�5��࡯\\r\\\"t�k�J^�_D���Z[1\\n�����(�nB6��g�EHc�!AE\\r3&I#���.FT�@�!��b�J�r�SqvF�b�U�9��|ۄ�AY�ɗBE��3�R��>g%���Ak\\\'w�i�ߑ�ʏ����v�]��ӱ� U�p!چ�]$ق�&?�`}Qᘅ�LU�2M�Ȅۜ�C�lz�P˔�dz\\Z�Ȋ�%�Gp5|e��ߐH�6��VE`���*�+�[�w;O\\ZȽ��%�$)	dg��$2�U�@7��f��F���\\\'piP�6</�Z��ip.���>\\\"CrX�ʹ8i ��݋kd�H�=_m��e\\0���-��ùP�|\\r���t*Lh���=�C�P���\\\\\\\";��dX��d��<@�6а�		|��\\0+q�x����!n�Nrǜ?�C���7�t)�T�\\r���X��n!�\\\'H��O?����8�f�%��em�d��a����%M�p -��T�n�1[%{���K�!�6���\\0,SJ�Ȗx��ԈZ~Ob������Eȼ0����J�W�s��O({�<d��VY�Mc!�&�$h�|$)3���l��Щ�\\r�PNH�?c���hL����XԃI.F&D0E��n��\\r�l4�\\Z�0�*����\\Z�(a��v\\\'���\\n��1ho%���\\0�|q�.<XN1�	�\\\"�Fj���L��ÈC8b�p�Q�{�\\0��=���F�_r��\\0BWWm�R���W\\\'a�c��3��q�����r���s_�T�ֶev���Һ�Z��?B�LV?c�i8_�SW�C\\\\���r|ְ�4�I�hUĒŜ�iM&�0�m{M!.�|�dx;QY��.L�[�3�Q��\\0���oa,�:گM-�����>ZN<rRT�v�$j)����|���E�2��盔���\\0b�좲���?������3���Y@�ù6_\\\'Y{�^�\\nR�^��\\n��p@��]�t����EZ��1��6=�P�/��۽�\\\'���H�;���`g?�P�%,n���_e�Rܸ��r�+����$:��C�\\\'�;��ُ i��?F�̑��r���#b����9����8ֶ�0s�d\\\\���>��/���\\0\\0\\0\\0\\0sV�:Z��ơ+A�̛��VO���q��A�����?.#q�F�R�������a1ȯ-�Wt�{��S�O�ւ6*Q�M\\n�a���\\Z�N�\\0<_��`\\n�¶�!G�}��{N+�PT!�$�q�{/�/���B���E6�,����\\0�������ɜ��:���}�e�^h�y���#Q���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQa��\\0?�_��nr���BP9+��B��[@ly�:���#�X=,o�Q2Ɯ��`�[�z��}��l�N,�Z�dMR\\\'	#��0e�ܭ�&z�>����8L����6$��|��	�X�a݋$������PF�fd�l����1ɖc��u[	����A =\\\"LYv�tL@]�X��i��>O�O��\\Z9k���ɓ���ع�*Ȅ����˭dgu^��H:�y7��>|\\r-�\\0��԰a-�$j%8Y���7��C�j۶���B�A���6}3��xd���,��`3\\0��e��X���L��6���Ye쾑�nbɱ��鐧>��c�9l��#�@<���%���f��6\\Z�d�+o�� \\\'`gŢ]l���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQ a��\\0?����_g���7��!�n�l ʹ@e�ʈ����������#�ٲO�\\\'��g�ќ�-��4l�;bW%�(���*ĸ��B���)n&d����>Z�=˱��Q����q���0m��v(��S�۲��ȧ~\\\\{�v��tH��1v_P2G��3��=@�`��df.���(�^�+�Ի�^��wn�7�oLn{�|��WmX?`�y��d�s��8�6qk7l�oxR��}����&?�O�{��M�H�������me���#m&����{����������\\0wÙ�ܶ\\r�	���\\0%\\0\\0\\0\\0\\0!1AQaq���ѱ ����\\0\\0\\0?{���q>0ZM$��x)����y�P@�Ws��-�(U�=d�>�ʆ����a;.�t����P56�\\\'x�V!�p���c�,v\\rۿ��DP���sx+a��7((t4�f�`���;/l�:1�Yl��\\r�ю�U���.�3�K(<c�!\\\"�]�)�c���T��-��!�`D�)Y@�bDp*\\n��\\nEI��;��!H�u�`d�Ӻ�t�B�Aɋ�����vK����l%����m�O��d�\\n;=���(ړ���/��sa���q0�!�7�&�E��	��X3��B�@���R5%O;)����8�\\0ƀ@|aۄ���6(ET\\\"�����RLd%<�V�:��\\nmA�1�)���$��Ò��nx\\n w#α�u\\n�C���2:����0`�\\\'E��$P�������<����j�P_�����&�w���B;���TG��<[m@l�����g�U� H��[��V�h�������j�j����1�t��Š������J�C�i�Y@J\\ZН=�	��^�8N��k�2JBM?8��E��jɛp�E�i��g �	Cr-�)�fP��8<���D#�hz�*Ԡ�5�*��YX�\\nh�X-�N�E��>�2L�.��Q�f*5]�α9zVe��١��UHQ��;�ߓP񪅂�����z�%��w��W-m�TEvx�\\\\���S`���F����Y,p��Gc\\\\��3��\\Zyl8����+�r!yXO����(��p�����ڏ�^\\r0%���ֱ%�\\n\\r��Eҍ0�1mB��!�5�\\0�6��_#�ɒ\\0	��1*�\\0�\\\\�5}���h�A�(���qD8��\\02S�)��8a/����0E��:H�5�)�O��\\01A�%��\\0I���Y�I����L6z�B[���A7�u���	q�7�8���e�*��04y��0y\\0�J���� \\r�LV���t��b�.\\0���y!�!�+�+�#���ɂHJ����r8��+:u���#���q��_�A��Y�}#h�B�]��J65�LnM@9^24\\0�w�~��Bu�`Cz�)H�[fݴ���j�x!0mH����������Y�:@��p�.1��\\\\�\\ZFl��H��rNrn�2кwL���|���~p؎�%#c6��>�Oxsw��%�V�޸͂��C�A���V�6�\\\'z.iۉթ,�\\0w�n������˴;�4�\\\"�>qdWOLc\\r�)ܻ��l��Qp�L%�u��-C��+�=��9���I\\r��:��z0V�*��(M&nA���4���V��!�8��Ĝ`B{��\\\"GgE2��r���@�C\\Z	]K�.��P�;ƣ�OXg��-�5��\\0��4�DI�z�T��F�#�L^�̾\\\'��t���qq\\\'�`}d��q�E���\\nVr� ��Ƞ7��nw.�����q���֑��ٔ\\09�G:�81�M��]��nD/5�7%|au�cr�\\0�0\\rEn���l���\\0i\\\'� Q��d��ʡ˃t�ʸ]���2�W����i�\\\\R���L@}�&�&�=�� 	{���\\nfҬM`�7�Ra&0��T4c�w_k��4�8�����ݛ�}�V����<���G!�$qq1o�A�b��B\\0��2�!;q��&#\\re��e@�L��ɢ��To�\\nm&�.F��\\Zod�ߌМ���ZB\\r�(!^}�W˶P������\\n��:-7�<C�����h�*\\0|媃n\\\\e=K�H.�Cy�0%g�\\n���нb�&�\\r�c�Ɔc����]�� ԧR!��Nwr�	�y.�p��p�x�S��	��NHn(6�W�<H!Pg�p�u�##��&��v���eČ��l\\r�,�&�\\0��\\0�0�6ji��xC�qH��	�W�d/.s#���jRd(A\\\"l��0yiـY�ځ���hS��MQ�+�`�X+儼��@���#��n�\\0�8�	z�\\\"2gz��]�ʐc8�%]�0�M��9���b\\r���5�3\\\"�k�3��8��0ӆ\\\"n�4����b��`�=d�\\rj��(񽗜��9�:��Ʈ��lT~�(���\\0,�y���p�5*zw�����Q��D�/���hq��}�@i�8K�7re_S,�;�@4z�S.X�?Ts���2�oT�t�pL�ц2$�<|�TXӜ&�U���99	���v���Zq�\\n7������\\0۽�)Y� ��D��)_,�`b�g���\\00�M���I�\\\"M�<q\\\':�N&�0���1,�y�I���w�����\\0�_��X(��3��4f���i���0�US-(E{0WϷ\\\"k�\\r��u\\0�1�,u�@x���\\\'OX�A�0%���X���K�2��x�O9��{q!�)�u��/����\\04���\\Z�n�Ǹ �L\\\"\\\"m��\\\'�PB�܅\\0!q5qD���6�0�4����\\r��b������L��!�o X=b�*�t�����w�R�t��aʄ���a�?=�XR$��i�iz�D5�-00R��|bȗ�������F�ї�	m��]z����zÁ~�!�징¤L�Suq��w��.����\\n���J:_��<}b*0��O����C<1V��[\\\"˖����[C�l\\r���-n����y����8�\\0��B���.㲋��\\0\\n��R߱i��Eo���T�0S\\\'�k�\\0y�$����,bf�k%���r.\\01\\n���*�t6�s���.��.�S-�X!Ɏvq��WW\\r�����(\\\'!�YR\\Z+0F�����`���ܢ{�g���d�cR��qy;>�n�q\\Z�,�#�G��M���L�]q�*�_Y|�~T�G��Mc�W!�w���e8bM܋�����	�q��.$�Wj���\\0>����\\r��	9.�>sd��ZA}�ԉن)j�j><��^���0�����a��3s�����<�_���D�e}gu{	lʭ&; G�Z\\0�+qN.�rm��Y:[��]ze�2�o\\\"~(���3|Zͼ����D�^O�~���Uo_�������4� }��r��_Y��:�)E��iU�%�!c���tٓ��V�w���xqCüSu��=�	`n���d��l@q�����w=v�ΰH��$̃W��P0rL5;����ʳ�8��n�\\Z�9\\\">�{d@�8�J�z&q�2dğ����W��syi�($�<f�-z��\\\"��DI����b��OF\\0��ƁW+Up�4<��)`�8n\\\'��M���ı]�y�E��;���&�f�\\0�����pG�*�zg\\Zb�0��y��8�&����&���M�RF��YHF�tR�U�\\0roF�^���0�&F!I�N2Њ\\n:5�@Œ@\\\"�,A���i����%n�\\0�����N�AÜu�whz\\\\Dm\\n\\nr �Dp�x#Wz|��pgˉZхi���! !�!l)�\\Z���N��ΰ2����b���#��@U@����i]Nri���Fs��\\0�/΂�?Y�,����q���!�j���ḿf����˘�AА\\\\Z;\\0������l�*WLgX���pi/ ��Q{K���-����a��#e�����R���f�Yj�a<�=��K��>9R�\\\\E����\\\"\\0+AO�\\\\	B��mך�b�a�&N�(P�����\\\'x�zz�i�-��%U���ki�*�Z�o%o�*��4㆟YX�XzY�V�	��ۍ)SS�	�R��s;��LU4X0�b��k���1�}c]���>C4��x,*���oTS�,�?�*���77.�@;`	��1�P�H���x�\\0h&�M�3^�.#PX�T�Y1�<�����\\r��l�lvq�70#����N�l\\\'b��,���$�\\Z��l�\\0�{	\\\\ $�x�mt,�|c��-V��\\\'�0����bY�[1��������,��\\n�/�#�鎌�|c)[ٞ�fd��gx����ۜ���*���.-n:�T{cD��ȺujJb.�b�>u�\\\"�y�\\\\	����G��s��','image/jpeg'),(28,NULL,NULL),(29,NULL,NULL),(30,NULL,NULL),(31,NULL,NULL),(32,NULL,NULL),(33,NULL,NULL),(34,NULL,NULL),(35,NULL,NULL),(36,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0�g\\0ON5FLBrI_mhxitw5eI3b(\\0bFBMD01000ac0030000a4070000290d0000ca0e0000910f0000a0170000811f0000d62000006e2200007a230000642f0000��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0\\\'8\\0\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0Ęu��]�j����뽰W��I�0t2�}����z�\\0\\0\\0\\0\\0\\0\\0t-��~��7�y�o�\\Z��:l�eF�����&�ë���-�$ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0)�Rx{>R�73��<��){+��o��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\r{i����hj�W8wh���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\09ދ��OqODc���p����@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���Z׸#a�M�s1/��@3\\0\\0\\0\\0��=}_7.6��\\Z=�n���5��4�=b�Sx�U�������e�_�pfaϝ�޷B��@�?��}z�ȉ7�Vo&�\\0��8�[�Mv䴍���n���W_q����$WYW��z#HS��8��f���n*�����)/2&��\\n�d�\\0�Ь�Ր\\Z1�B<���8vq��K�:7<���\\0FԤ�Qg\\\'��g��-_kSl�4\\0\\0\\0Q�GRG�s�-h����AG�Ԟcmɛ��������obK�icr[�_�DM<le�ѫ�{]4���P\\0\\0\\0\\0���*qʿ��y�dN 9{/)0��s\\\\):�����Z\\r�@��:���j�4�z/=/f9 \\0\\0\\0H6���s��`\\0�.�n�� ά�P�\\0 Ÿ^9�7�;[$YW��\\0\\0\\0\\0\\r���/D-�\\0���k)�G=��,�F�o�n���z�=�)~��7�^ԇ��Z��Ӡ\\0\\0\\0Ȉ��ھ�ܖ\\\"y�\\0O��^~�v�ztklM�ŝ�8�g�n����a�~�lZ\\\'�1�\\\\���,P\\r+{~;��\\0N@\\0^W�����>F{k�]:���p�K��ה}6��GH$DDi�6M7�g��s9rr�N);5�X�I���/�\\0\\0\\0)�m`F�R��g���\\\'��v|Lk<W�byA6�ܜϓ:���c ggB��e׷8���ڋr\\0\\0\\0�[O�9�}����v�|i1�|uʯ������˧p\\0�G)cs�}�\\0\\0\\0\\0\\0\\0\\0�I�j9��t(�! \\0\\0\\0\\0\\0\\0\\0��\\0+\\0\\0\\0\\0\\0\\0\\0 0@!1#$234P\\\"��\\0\\0\\0�o����5�Ҿ��&q��W��Y�1�e��jV���#���=uÞ��A�S��1Kf\\n\\Z�^�j�5n�v�j��d���q�z\\\'�[��ꜥ�����%��ft�g�g��ω�����ۅWP^�\\\'aM�0\\n��:P��_ݱ�U~2�ڸ�kd�l�M�avU��PM�>��bPc�Z}�1`}�,Z�1�PC�C:S����V.Z�Z��U�b�����+!�UxLo\\Z���!�?q�OKW�\\0��ƣ�fyl��<�|o���3R���e9�*��i��+b��o��z�xr�������ju�%j���J����Y\\\'�]���l�+[E�����Z��<\\n:�����T����Q�mP9U�Օ4��?�����=][������=��\\rN\\\"b`�����&�)cl��`��`qVV����ڧ6���#ħ�AV��h���p-�jY:�\\\'^nJ�Nv(�˒w���}HJEQ��EV���י��!��?�ff�Jrgh���P�y�ow����Ș(w����Q	!���߆����\\Z�*�g9�y?����#?��/����2g~v�^*�㩢��*�MzӐ�w0%��T�cx�8F���*�����\\r���YG�KT8���xXd�R��0��M�R\\r΃��;���3�!E�X�:�ODF5F�yd��ȸ��w�V���/�,T�}Dp�;DN���c����`�E�HWW��0\\Z�BլM:��kC4��\\0��~�kQ�\\0�V����W�E�AK���$��TkǓз��}�&�B�n���\\\'�ѿ��q��}?Ə�X�ب��ʹ:��AS���/��t}�x[F �1_��%�t�Sy��h_�x��u��L2�W��*\\\'�W��Px,��j��D�a�cm;ĄLn��^8�D��Y�0���l�^�$?(��D��[�we�PB�V/���Y�����Ӈ��������p��X�\\\\��U1@&x=���y�3�Yl�\\n_�\\0�r����v�������R�����C���Ǜ9��9f�y<6��>�H(�\\0��+�{�fD��\\\'�2m���ZդX����B���n��i���cf�+�@�\\r(y�zn�9ܶ�mV�N�Vs���&�q���lѶ�\\\'��lY�ޒ�5�0��p\\\\��i�����ǯ����C��t�A�OV�;i�Q�FvёQ1� �ӪJx�ũ�퓵��K�R�uP�B�q\\0�oz���[#Bq�ɓ�G�<Q���gl��;����3�Z�VW����\\r�.��;�ӫ��vV��(��.���z�����X:]hW�W�)i)�⣣N	���5�>�(�*n��>DP]6\\ZSR�:���U�_�b&!*��T91�V�`�)�Ɉ����\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1AQ02@\\\"Pa��\\0?�� m�寨h����cSe��)U�t0����e*p\\0$v�_�]�8���N�SI�t�3�����0q�h}/[��-������p����M�����F�����;��t<�ԣht�hi�8��i�ܘNNmEp��B����9k�Gc6Q6m�z=,����7��\\\\]+`\\0z\\rE^�\\r���|��\\\\��l���Q��槸ҫ�[+9f�\\r��\\\"U��ap31wb�{�`0:����I��q��>:Ħ���o�(�f�<���Oq�öN��9�L��K�|ܰG�j�/ԵH���\\Z�3��i�nN �\\0��Q�5R�jm�N!99꣧}S���Se���Z��3)�i9��ej�N�����`��e2�o����\\0$\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 01@!\\\"2PQ��\\0?�J�*z$(�zQ�5#�5eJ�9�lЛ�%J�X�1\\\"����E��8�5��,�?+[�Z��8���2����=���^7/�dr���E�²���Ǭ\\\"�	S�����xaw(�#��j-�H@~��\\0@\\0	\\0\\0\\0\\0\\0\\0!\\\"1A 2Qa#0BRbq�3@r���$P4CScs���������\\0\\0\\0?�>���Y�娫P�.�������IK�+�HW2̬���ŕ��)O�拴���Lt�Y�(1-eC�vE��]�HGG�f{�x�`���Ӥ�w�N���8EZ[2���/w&��d��1��a�=��;$q�m�ee���T��W#��즺�;�bM�H�(�Im�HL㤦��������?�.��|�E5Ϛذ���?1GZ9�V<��LEٹG�=�6��~�J��\\\"m+^�⩸�o_G����?׿�_xEGﵒ�)&`�k��U��I�M�����9D��GQ�@P�����P�6[?�)�������6���b�3�:;C�\\rjwڷ��;$C�c�3���:��\\n�l����4��{Tw8/�\\ZS�V�o����9ů��\\Zy~�e\\rض����G�^#�L\\\\yYu9�Y�8�ݦS�]}Pu����U��LM���b�i�mZ�����F��f�{莉`�즊���j�HmQQ�[|�G�Lt�T�pE�ˬ����&*҆���mAI:?\\rE5�6�X��vԼ�N��\\0�Ĩ̗<F�ɏ��RZ-x�0f6uqY��1�p�t⣢Fe]ь]��x����UpWt�z�)�FF\\nk���F1t[�l��-㋊Ҥ~�)w�Y�֔�GIy��@�ǴCC�\\\'%%�|�hQ������I1hK���*6t�#�qQ�\\\\t�P�P[s�#�Z��G�8,b6��w�a\\r�%���m:f�ye�,�R��IZ��n0Bx�8��CK��=g�\\Z��0���N�{�d�ڥH�bz��\\\"P�p����B�q��kd�<�C(�k���?=��F�!v|��Z��*�)8��􉢈�QU�-��\\Z�\\Z��#D�k��iA���E�IQ�\\r1ߓet�v�G$Å$\\Z�	m�M�ؑ��<qQ�\\0�\\n����Ntw7|\\\'E�Fc?�L)�B��jFG��4Lĭtbx�JD��K)7�UOL� �J�$����YGEGu,[Cw�Ud��:t*�HZ�����<�\\n�J^N��&:�1B��2Q����@m�$���R�h����N���o�\\0qq�ω�L����+QP�5o\\\'V���^zB��h<+���u�P����%�6�����ͯ��.q�p�,�v긐�\\Z�f�%\\\"��%f���e�Ub%6	���By�H��Q>C����0Rl1h�K�\\\"��_�?�5��X�χ�+�;H�3��e�vL�9\\Zk+(�V^go�l+�N���h��$����g�;KJ�\\0gt�J���LZ\\\"��\\0q)8|���H��泩M$o6m��\\\"xC|�;UT!�14�t��CHa������+Ui��\\r�PJ&ˊo�Qy�9�D�/ˈL�ZU���?)��8}%	hUh3+H�\\\'<���Nn�׬��������>��4s�*�R�\\\\IUazR�W��X��HWow�@pZ�]lw���s=hi��}� e���jF]E���+�}�Sk�a�X�BL�ѪlɮҸ�pn\\\"�6����6�\\\"�(*Q���Go�|�+iY���l}���V�i`�ĕuQf�\\\\O�:���HV��숬�\\0\\\"V���@�脣�������W�)�6P���b�y���T\\rGS��i�����b}\\Z��}�{/���m<�~���a\\r2�B�\\n���lRz�t�8ߚa��4���\\\'<���i�V���򎂎�s��Դ�	�\\\'V����[}�(\\0����JgϫpL��7%�:��TZ�������N\\0g�}��\\0�p�H X�\\\'h��!8s�T��\\Z�Ń}\\\\\\\"�(�.�����\\0v�a���\\0�`d�X\\Z��[/ q(���hմ�c�k^5��\\\'�b��束à��1WR�yA�ќ�)�m��ǯ���y�?L�IS������+X�!c���k��^WX���j��p�D���%����3���Q��*���4�ꝍC�q=�JJ&�����b����G-�G��MKw�b�ڦ\\ZsU&Z�jǭ��#�O���GF�S�6��d0묥)mŕ�X��EG��<ga��|3p�\\\"�1�Y��F�\\r�/v[g	@F�/%9�R���I�������b�@\\0d=���\\0*\\0\\0\\0\\0\\0\\0\\01!AQa q��0���@���P���\\0\\0\\0?!�9��xQ�\\\"�\\0Ү���=�x+��R����W.��Ìg���ߪw�?�O��\\0P�g�/V�J-*�`�7�[��M,���c]QB]<(��o���t�(��˵(�R7=\\094��\\\'jm�ؤ�\\\'�T\\\\q�\\0x��ˋ���#�+P�iË}A���PSo�X��]��gK�u`�kSE/�1/���jI\\rL/�mVPg����c�R)}��+����N��� *�}���d�ЭV*!A����U}V矚D`H�2��a��\\08v���~y��\\rJ�[4s�\\0��ؐK�����cה�$Hi��]�ן�|�Vt���6]!���\\0F����h�/��\\0�b�=�k����5(-���A��^���{K�@{f4�>ٕCJ\\\\�<>����d�+�-©q��Z��z����֥��7��%{��X��{��}c�\\0*E��*L_�\\0�V+iC�?��bVW�ׯ��\\rپ�/���\\0�u�UA82�D:7��ҖkP�~�\\\"��H\\n�a=e�\\r(77���2#�ʺ�9uQ��؏\\n2�3K���u�Q��I\\0�#�I�ס������˫��TIXM6����E����\\0\\0\\\'�8�_�&6Z*�N��)�Ǌ�7u�(mS2����\\Z�����W��:j��hݿ�)�d%��*�Ӎc�2>�V�}\\\\6��ň*��Ĕ��~\\0A��$��w^�SQ�q�F\\\\LD�\\\'i~��z��f�Y�\\\\��KR)`��r%�ߞ)$5q=�dҬ����	�:O�����{��q&+��Ǫ �h\\Z� cI�T�*Ă^��%~BKjz*UDX0N8P�\\\'1�b�^��f����=�D���V�\\Z��.�MoRԀ�Ѕ�����`��dƥ[�|�my��ȠU��B-ɷ��ΠE#)B�,��]�Y�V*��*M��p4�^P*�sjiH (\\0\\0���	�����\\0.�|��փ\\0��FA�6��P��6���b�ũ��\\nm*gN��pfY��^�g\\0XiBO�Z�ۈz�R�%�1DI\\\"I�>@�Ԝd3-c�X�������ll_�S3�2%���L�`���9^��i��;$8�U��\\\\0�d\\\\P�5;��n{z�l�1�a��VJ\\0r��1��SV\\\\m�ϡ���+N]��S����g�u�z�����nA�{��4;���p��X4^fڝ����vcm���a/�ֻ���Dp7�c�_0uv�Ř��8k��!�G/�~)s�Ƿ4\\\"M\\nK�.��Ӑ7A����4I��?���tu΄l��4�lG���;TZ��?�gw	\\Z��]��ڣ��u�L�۴Д�G�a�	HJ�3�Ք5�Y�!��h�	�.�0�U�=��j\\\"L‼�T��BkC���OY�6[�����WD~X��=�\\r�=:�b��u*:Ҫc�+Q�ix2H�F�p�/�J��%wz*5+ɛ��/�l֭\\n/�����Cm�mg��.��I���56��4d��X��e��(��/��p�\\r&_�E�iN�Q9a�Zo��r\\ZI��{��A��ɣ\\n�s�Q����(����pJP�n�b������H�gZm-�V >��P,Gjљ���cw�Э�^a��,y�Уi�J�Տ$�a��\\0^����gj��@��s�i)Ob��l�]�n@{�Pm�U ]�kS�=b;4�:�}��˘o�\\rZp5���qO�	�[��+ݤ}w������)�f�U�c*��,_M�\\\"�mQ�\\n(I\\\'��	f�h�6����%����c��&h(qZԾ�A�1g�N�Q&f�˖O�Vn9��rz�Z�*�o�TTf�9{]t��>~�![�,8Sv��.R�h���u���IBR3t�50-ձY����P�kY�:.��C������o��iF��@�ȥ\\\'��H��^Q���z>�5i�dJ��Q�vJ�;�pDH����Ǔ��x%�O=1��4�S�\\\\5�>(D�����r)<��#�@�d�1�m��h�`�x5j�Ů��.5�8�2f�I�M���Ɛ�B�>�q;��R͂��\\0��\\0\\0\\0\\0\\0��<��<�o��\\r���<��<��<��\\0�\\0�<��<��<��<���$|��<��<��<��\\0|��<��<��<��,(\\0��<��<��<��<	��<��9$�o�=�\\0D�4���\\0\\0i\\0��i�5* \\0\\0k���\\0\\0%�0\\0\\0\\09�<�0	�Y��\\0\\0\\0\\0�<��ZN#\\0\\0\\0\\0\\0��<S̼���\\0\\0\\0\\0\\0\\0K�<���ˉ:\\0\\0\\0\\0\\0��<�\\\"��\\0\\0��?�<�i;DA\\0��A��<�ʼAۀ���R��<�ϔ�ʄq�<�����<��<��\\\'s�<��<��<��\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0!1A Q0@a��������P��\\0?��B�=��p��\\0t�^@,&�5\\0Z�sx�I@<���~�\\r��\\\"?�nyP/�<�����j��nrC�h��7�#����*\\r���ؾ��%��\\\\t�L3�z��R�A4ݖ�B�� \\\'��\\\\%>��m�f��wgH�<�sE��n�<C���m\\\\T)�2wz�����sg������5�� Pxa�\\\\C��ϟ�z+T��l�8j�v��p=�\\r\\r/Qb�/�ho��?\\n*5[J	�)X7��j�lq��w�`�\\n^a&��r	����=��jYM.le��\\ZZzt�1+������ڋ��*�Ǭ\\0(���|�7��?8���hX���u��r��V�/P6��mha�a�n���Pn�~����\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1@Q0Aaq�����\\0?�Ж�/x#ׁd�����>�\\Z�����ׄ)�{�{�k��&~���[o&���R�[��\\\"\\\\�FL�����Fm�\\\'���fF�-��LD�X}rU�UƪqW�����?�߸�SL�ʷ>�W�V�:#��u�}�n\\n�{e�T_�C��ߚ%۝c�`�V�`Y�\\nr��8���\\n����\\0�̷ڃ�ΐk!q�����|���^��\\\"�f{��6�id���~��\\0*\\0\\0\\0\\0\\0\\0\\0!1AQaq��� 0���@���P��\\0\\0\\0?��q\\\"d�%{U���&�4@̔s3ʳ��OЫ�h]��,�V[ԴL`t�QKF�h��,���Q��S�(o[��އ�H�\\\'����2�s�s���nm\\r�$g�-����簚DEVU�ݶ�+��*O2�Q����LNwxzQ��;&G��r�L�c\\ZѭT�i��iݿ���qe�B:?�4!#Qʯ���s��z��T8BDp��Zv���=b*�E���z4rD����f���!�K+�T�(rr�(�9��;��_�A�B=��\\0q�\\\\yj(��o��mCM�57\\ZI�����3D���T\\Z\\\'�A\\0D�u�[�O.�2[�mp��O*���Ļ�Ϲ$��[�5�G�RV]9��?��۱�=��Vk��\\Z�E(�$�>�v:NC멆�J�HI��0Ql����!���[<b� 0����5\\Zp$����1��\\0\\0(K?�d��|�;�&�t���=\\Z\\n@\\0p�tD�\\0������Ku7�6��Y�>��:�:��r��=*$Bvk^��;�p��=�C��\\0���\\\\��^�n3����\\0�+.%�׀��Wk��9@ui���K�\\\'����e��XL�f�\\\"w�<&��ब9��ZLa��a�K��r+RǺT�OK���=}�%pC�~~lSUFk��ixS,�sL���Q��w��3a�oX�8PȒ4K\\rw𦠙�^kw\\Z�Ce\\r�(&*�uJ�q��.�=�s]�\\0���P�1\\r�_�L ��48�jq��{�T��g���)$�ź�vx���__��g����J�K��/\\\'���9��p=��*Ou6���[���� qju\\\"]�7|U��\\\\w���\\\\��/��H��\\\"d��\\\"�{�p��(dly���鯑\\n�Z�\\Z\\nا�Z�u�z./���(�*h����Δw�Ճ��2)�����\\\\�Y��IʨF]\\\'����7��q����h\\0��+8�VV��B9?Չw�|ux���?�T�%ƒ�E���-�������\\\\_���6�������]�z�u+әB)Ⱦ����ۛ�<~��2�vV$���4]\\nJW-\\ni��HTv���\\\"$z����47�����W�zۏ�W}�9�\\0\\0=��yfJ�z\\\'L�X�\\n̙Āc��	1	�.���S�נ����?�HDO}a�&H)�q�@�\\0�t�Blb� �K�z�\\0��R,3���h&1u��9�E�����FJ)�LY���t�D4P6�6����ǂ�t�����;VjQG%Ƈ�g���۽F#�e��\\0���.�uX�&�\\0!�̴pI=�,;#]X����H�?,P DdJ�m�$S�ý3r+���9D$J��G����p��j��������} <S\\Z��Ưuk��<ξ�,%F\\0�pN��䐮eg�Y,�j��}�.<�p(��%,��X�� 4�y\\\'����Gч�F-6�FP�?�C1o4I�\\0ͺ\\0�?�=�\\rQ	-�/����\\0��8�~@�����T�f%%�����l8}oH\\\\��Es�����ZD�=�F�$K�	�Є@UҀ�&3�jQ��.y�i͙.�B���(e�ڿz��&㏘�[.��\\0h>!̀\\Z@G�}�u4��j����}���B$�i�F�����T*�\\0p��=Z��ǚj�J��������ğ��-�=\\0�\\\"Y(4J�e���ش��#����W.oq��ɵ8��S��g��+{X��p?.�ڄ����E㖱�њ.����ޛ<�]�q�S�F�� �t�\\rl?3YY��=G ��6�bg��H��f���h@\\r����h�~����G���]�Ͱ^#�j D:@��YF���ݣ{�~K�\\Z���`:!�i� \\0 ��$G�4�KbB��.S�$�$��:2��c0���B`�{� DB�6%t�6���7�GS��������HQ�oCB��s��@!9�|�����L�b�����ljP$� �t��I�C���oq�Z@\\\"I�����C�p���\\rA� ��\\\"���m�$������F�#Aί�8��J���i�-l;�$�i��\\Z�)�M(AzQy⮍�u�?�h.����ih�Qޓ-׽�>��L�\\\'�X���-���w�5���yi�!\\\\F!�x��:Q �~����5ʿcN�)�:�D��9JI��б��_4�H\\\'��;�ڑ\\0�\\0T���-��3�y��� �^�O���/Di�|�qW����W��$h�����~�|vD�\\0��\\\"�T�H���vR9A��J��@TM8s���H.@RԸN�m��N��|�;{���C���2��C��g\\n#6E����Q���l����>\\\'��?�? ^J�)|��2u�\\\'|�asM1m���V\\0�7���d]�ѲCu�9�4ؽD�pPq��� �����{Tm�</Je\\\\��#�AI\\Zϡn1-E|M]^���XW�~��:R��K�=}Y�������̛7Қ��	o��W��S´���x��}���F(�x�0��PH�_�P�x�M��BH�wT\\ni!�%��G���{�\\Z{Q�;�>\\nb^e7C��͏��\\0]�L�J.����P��Q-���a��q�e{u��\\\"w�S�a�\\\'�D0K�HJY�Q���XWJ7v<������:|r\\0/HR�U�v�j����>iM��Mf�\\0�(�+k��F\\Z����$��2%�B���TD�Y��R\\\'�o���o��[�@$w�%���nVnT�=V\\nQ���oO��/��`1�&���Rc�\\ZVԟLmo�8�ݣcc�3�x�rj$x}�7t*�����hɣ\\0�3Bm�.(�GAg��XS^���/CYX��j�QFB�Z:�%���1���±;�m%<��c�Z7��4�J���C�T�����s!$�\\\\\\\\�F���V:MK��]�K����T\\\\��m��C�y�ӗ���H��SR�D�`�@��wwx��t�$��{5�18��\\\"j�N�4�Oc^3���Ҫ����K��hϹ���?�2�3\\Z�3D�|�:_�Q,C�z�*�G�����J�V\\r>3	�{�7��t7��1�O ��T�:�Bi��!�8�ƆCA\\0��?��','image/jpeg'),(37,NULL,NULL),(38,NULL,'image/jpeg'),(39,'����ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0hg\\09vpQdYWzwmrmaziCoQjd(\\0JFBMD0f00078e0300007b07000016120000c91300008b1500002c1e00009f2a0000ba2b0000��\\0C\\0\\n\\n	\\n\\r\\r\\\"\\Z)$+*($\\\'\\\'-2@7-0=0\\\'\\\'8L9=CEHIH+6OUNFT@GHE��\\0C\\r\\r!!E.\\\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE��\\0\\0�\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0�˾����ѩ�/&vC�Faj��v�Jzk@��\\ZP�KKfY7�FT��3+�\\Z�!�a��Z6g��2M�P\\n>MK}����T�����]nr�A� ЭS�Z���\\n�f&�v���[|��\\\\����tѠV�(�R��*z�&�q�X�)2Q�$I\\0�\\\'�{��H��d|�������c�D��ΰ���J%G\\rK���V�t=H�:<\\0��R���@zT؋CL|�KQ}��bn�kU��3:,�>�bv��/H�� �\\\"DP�E���c�>DE��f44�V.!�zdV�dP:��Y�z�t,��PWm9qVm������YQ��O��覫P�y�}�k��BE]��ȜQ�����:�VrayK �%O�a�t:I���5ǃ��y��|�=� ��s�G��y̔&0����L���Z��^n\\rF}	pk�a��R�㿏-r���+ȕ��k2+*K���\\r�a^�ty��M\\\"�qq�o]�u��y뢝ɫNY)	�LR4y��0gV��h�2��T�Ph�YK��Ɣd�+*�J���ԺQ8�y4��Y�3��謨)y�}���(����SX�Tfd��v�`�L��+�\\0�<���F�ʵ�{����қ�)KD&�K@��$�Zۺ�ҤZ*m0���{6�Q�m�2�c��P��e�,2�M���D\\\\�h2�g��4H���&(K)�h`������MM�=�v=�[Y��Ԅ�TA��i�W[�f��%t�e\\\\�z)����3)�l](�NQWP-��HeB��Ub�KM��Ӱ��6]3T�Y�nu9���ѻ~�#�y�l�v������\\0.\\0\\0\\0\\0\\0\\0\\0\\0!1\\\" #2A$345B%CE��\\0\\0�L���4)\\Zk5�43v���U���N�GӾ��uD� `�pY�u����1ɋ�t��+�nƤm����b~��FV�8�G�\\0��[��kSFZ�Y����W�y!R�S�ø��q}�9��-,4�\\\">�nQ�^���U��^j�!�\\\'��������</�{0x��Y�����[�]���qu��-g~���__�]q�-?Y�����g�kp���\\0*����\\01m4� ����8�/��\\\"Y�������FO��7�)�%Uø���}��w:�\\r����ǩ�M�Q<����Kn������QvQ��kn�����U��o#�$�Ǻ����C�Wŵ�gtS\\\',�U��r�/ѥ9�(�<�T�l��=�]����?�7���~\\\'�üt׶��Ūt�Ta^Jt���+,f��NC�\\\"�\\\"K��׻x&�f�G#�i��SNJ7:��FX��F�k�;�l��Z-S���Y���`\\\"o���v�b\\\\�=j�2��x/���k	�V6����M�`�+O}9i�Y]d�l�Y�W㐖��\\Z���fYXk��\\n=�^�g���o�|s0˼���_�W}�t]Ө%ɤ��D>�㨺�,MƊ�\\\\�y�늊��J�qxk��A����&jf�ʎͻ|�<>?y�vx9jVV���_b�,�&�N��y�����p�a����`��I컉���U��\\Z�=1�T=~K[h�_�y]n��a�u\\nڨ���Јezi�Hl���\\n70�\\n���=�ck����L<��3S�}�n�i:n���Eӑ]f:sz���w	\\Z�y\\\\&���o�4��ʻ���TDMA:�CB@4� D�x����Ug+���s�}8ǟ��y�6��Ձ[״�k5�k2j�tn�z;D�=e}<�,�;�)��r��#�&t*r�*�>��\\\'��7C����M^ŬN�Z����B%K��2_��+��г\\r���oCl�2�p�{\\Z��ɫ�%_�|s>{[Ɲ�N�;|�7oh	{UTnt�tc�`��=E�fޱx�Jsk��n\\\'Vau:�5\\\\�v���1�|��%ϥ|�tt\\Z\\\"��ȯ\\r7\\rH�6��*凕gVj�c��\\\\�-,��O���U�w��^!>��b ^�bm��?`�f��_�SƢڧĻt�3&�\\Z�߁2jR�\\0g����?��θ�+�Y�7T���X��Pt�]��T��\\\'Z�תu�j���=E1�v���#����8�Yj�����\\0p��7w3�v]0^����ݪ���U��Ъt)��/Ư�׍_C�֏_��cW����kG�6�L�%�R+Ϸ�^>���Fw��cf\\\"K��aչhӸ񦜿�m�8Y���E��XW��f��ѽNbi���7{�z�g\\\'�X�Wmj�C��?�Z5���)���,1�g䫸���Ϙ�|�^���zb[~M��V{o�fٝC�|Hz�����nL��U���|�|f�S�2F�\\\\�aY�M�#�\\\\gU�S��^�W�Z,x�-�\\rj����C������*���=e�������tW��-%���|_�r��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\00 1!@��\\0?����4�M���E\\\"P3��Ԉ�s���U)x��v�����i\\\'�v��B���<ʰ���\\0L�X�K���o�K>��F�0�0�F:��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 0!12@��\\0?��(�����6f9�Ѯ%b_�P��f�1^9F2��m���P�r����d~��q����E���<�}�L՚�_�㐻L�E�ll,�E��\\04\\0\\0\\0\\0\\0\\0\\0!1 \\\"AQa02�3Rqr�#Bb���C����\\0\\0?^��\\\'�hc\\r�\\Ze��]\\n��e	4�oX�HY��)��ܴ\\\'�-���@������~�L��g.�O�)���թ�������\\0re(�\\\"eZ4�U��T��{�S,l��]���[.V\\\\��u@s��\\Zy�2�\\\"Ҫ��L{D�Ш���eҮ����4�EJ����ȜzߣU_��Q�8�R�z�\\ZM�*�z\\0��^�T�rp%>>IUK�ON�-��)T���w�^���\\0k�}Ҡ>`��ި��U��1��S�!�r�H4��6�<�M�I�R��UX�����?�W�M���T_�aM�#��U~���\\Z[9���l3\\nv����9�-UG�M��Of��<���ϔL��gG5I�/A�U:�e��큾����T��6dSYiaR�&��\\\"V��Q2�͜ZA�|�\\Z5i��e:v��kvv���̞��ԋ�y��a0>d񱛝:�I�m��d�v��3gz���O,P� 7�\\0a=7xs*]��P�\\\'rq�\\rW5�qb7!5�\\\'��J�Jəj��cp���{�Y�T�wA¡�d�שD�.G|a�1��榔w%K���\\\\��5n��c\\n%B!fP�l��)8L)�7�{��u���iAzq�����Ӓ�[��<������u;�*N5VrY�\\Z��������۝F��]�;�af��u�~7-��.�����Z����(Sj�+g8P�\\0|[�F����̹f�0���ȅ�\\0��8z��V��c��Q��*�Ϧ�.%�����.���a�?���:��y\\\'z��d�������Y+\\\\H첨�u�]�s�\\\\l�h6��t�O��\\r	S����6���IQwÉ��L.��H+��`�G0p:	Y��Z�t\\n>O|m��7��Ʉ�G��-=�їP��{���j�h��ն~S,͜��	��0����\\\'e\\\'�7����_�I-�e��|F{���u��+=��g�Σ}��o����W\\\\#�-5�tCz�(D�J,\\ZϢc]��Ãs�U���2�i�o��m2Ɗdk�=���FS3b.~B\\Z�d�d�w���ٷ�l�d��=�\\0�Uր	���c�w���9�h9�\\n�4\\0Ny*t��ڙI���a<\\nl��c��>2�XYך�gz��z7\\r���eEP�z����?�m齮�e�ڭ�&7�*�~P�j�TgV� έ+�v�C}NxcҠ^���U	���i�Z�!p����p���F���(���Dڎ��mx��\\Z��\\\'��v�ޜ�G� rT\\\\ֿ�g�V%��Ӈ�ٵ�6���A�mK����\\r�h^YS�	��d��P����A���i�ڙ\\r�y%�?�!=�Е�Ҹ���h\\nw���݇	Yn1։�?��\\0\\\'\\0\\0\\0\\0\\0\\0!1AQaq�������� ���\\0\\0?!���r�����N��?;�2�M�ws,�xQc6ʸ(_��S�?�E)9�W>m��-�*S��FX�n�_<ږ�	\\nF�{ʰ���\\0������@��-�s��o`V+��Dz!r�ox�h�?�P��YU���T4��g���xA>�_�͸��*z��&3�SݱǦ�_�P�Ri-e�\\0��߇�JoC�A֫~�GW������ӕ�jt�ݨE\\n3�l��`�B��R����\\0u?��C��הk����}�o�<e�.������R�듊��x���TVͯ��έH�g�*��z�#�\\0����?���x�ز[�)�\\\\�(��7��h+z�o�s��e�����i��a���P_��̍x��g&^�n����^��*��t�/�=.�����3�۟y�|�I��7�Gy���ksƻ%�z͜_�g�<�0?�K�Ϲ��>m�r��Wu��&���K�\\nfvl�c�����Ox�2�OyA^Y�@�MNfaw�R��rx�]��\\\\!�Ȓ����Ղnp�K׺��U��,W:�k&����\\Zρ+y��Q\\n���ؼj!W�P�cĴ���{M�85-��vrK�x1�z�Bx�t�tf��3��Vh%�6�Kx �|\\\\�k�y�� ���E\\Zn���Al��JcC3AݗOm\\Zo��\\n�����`K9��Sg�~}��w��0s�4��R�f.ޥJ��d�p�	��a�k$p��c���0*.��f�޹�9m���pV�y��J��A�٨6�.�t`+�bu�Z��A�3�?����Z�Ȃk\\\\��0n��o�hG+٩j�l�*�\\nL1�6�VB��pV�}1a��Q�s��ʋ\\\\��c��\\r�Ln^%˖���\\\"�	�e���#K��PB�bE���uߒ��Q��C(D��e.HUE4�ε1��\\\'	_��]���G���15���]Gq��;�q���A�coE��S��˔%�Tf�Jr���`���ZBZJ}�W�k��,\\\\\\n�ѡ\\r_S�����h�W+�W�)����HA���(�j�FN&g��yX�C�?ʧ�-��]����fa�����>:VeWJ�?���=��N\\\"A��/MW+%�����y�����S,m4�i��V�_��\\Z�Ey&l�03���.�5���3N	�Kxu�p�L�$��t�w��$�tjT[k>1@�0A��`���n\\0,p�=��N�\\0�ϯCa�Y��2���F�qu�9�%2�Qi`���	^湔��?0�u��;�^��nkσ�#ݚ�z��\\\']��\\0Nl�MM}�ϧD%\\\\̏�+�x���U,kT�+<�.��8ʟ3^)�_1NL`�f����������(o3���|��+�o�<�gg��r�O&:P\\\"lI�X(�o����ُq)Gd��)q��\\n�Qd���.%�P&�L�����,J��ي�9����$c�>k�%���OR#^Ǹ\\n{5ee���6~���4%�p�f�����j\\n�ŋ�%4�X�l��A����vO��_J�c�x����)_;��>�g<=��]h�53?��}��]4D+�1!W�atQ^���H�lR[�xa��3��m�C�����,���Y����B�|��;�����o�\\n��JB�GiL�1��1	+�ڏ<ʊ]����q�k�o�3��0گ�4<!�\\09�yɂx�a�\\03�xꟌ���?���](^�YNJ�T��2�1l�p��/��K�X�R\\n�E��{�iV�)_�r�V)&���qJ�@��Ψb/�8����\\\"�u3��t����J�y�h��T��4�ޢUu�yG2sS�R�?B&�FZqu��>�R|cC6lZ�P�F�9%QG�|�aX����I�=N5��S����g��\\0�&&?y��\\0�����ؗE��3���>)��}���>Y�\\03���ܰ�����;�|��n��g��W�M;��_�&�a���)U��y��^~�D���_^���j�ZO��\\\\��T�D�˝��:O��7=/ao�h�k����οU����v��gg~�ǉ]|�ƪb�	��_$gdw���WE���Wb)P$36z?P�l��̦�_P��z3��\\0\\0\\0\\0\\0\\0\\\\p�Ro�jn	:���=�C��=7���VJ\\r�������ls2�fO������ ���>�\\\'cZ?�@�\\Z�HpG�ƛ�IH�?���??��urݩgb̓~}�WN7����\\\"���ˏnY\\\"*9zK㧃�g��o��\\\\gGZ��[5���&������\\0\\0\\0\\0\\0\\0\\0\\0!1AQaq��\\0?L����\\0�v�ԩ�R��ۺvS�8�X��������\\\"{������\\0 w�?m�߿��@>�H�v���+��7�n,����RLcR�2~/m��V����?R@09!� ��ɗ��}��0\\0�ߌ$)���\\ZC/���:]��g�#�{���%7��KU��� �H��0!��6��mY�lGY�l�M����Xq�|�#a�`J�lHQ����t��j�n��=�~�����7�Jk�F�we����.�3{�m���.ÀJ>O��rM��F0RL��Y͸l���\\0\\0\\0\\0\\0\\0\\0\\0!1AQ a��\\0?;���l6ś6�!�܏-!----!6�~(Znm����(�܈�{-�n[dl���XD�|�Sy��g���8{)�K��Jki\\\"��\\0����&N�#w�D��yx��2l�yK��_$O\\\'���X[�d?�5՗[6E\\\\��9��߁�a�b\\ZH��T{(�;�p\\\\��N�����1d�����)��H=�0�K~�Ă\\Z�>�2��S6�l����3u��9����Br��B��|w%����w\\0�I�ͺޓ���\\\"X�`�Gc�5Nٯg/_S�9:�~���셭�l�a\\Z�6�gǆ�ܵ;�����\\0$\\0\\0\\0\\0\\0\\0\\0!1AQaq���������\\0\\0?��E��R�� X�� ��Bl|�4��q�	\\n �8�g(m�@��pW�3p\\n�D�LG\\r���QeA���f�)v�2��U[\\\'�-c�Ll�Kr� �\\0�u�\\n:�Z��5��*���iI���zB��%oB�����H0����[;?���n�Z4=D)�̪��r��a]�{�m�H_i\\n��\\0�uY��K���9pqv?apH�)Ն��I(i�m��*//��������=�����s&vb3͹�^�`t�9�y�k�k+��0�o�c--����ײJ����{����ɶ����\\\"]l���s��\\0s�=�K��]�H�)�A��<_�c\\\'0|\\Z ��x�<�\\0H�8qd��8y�|��<]�$���\\n�O���ÇY��X���p0�\\0|G�����|�4���E�\\0ƹ7~���Y�W����(�1��\\0t����\\\\�?���.��=e\\0�ʼ-�Pm\\0Z�P��Z��B\\0�ֲ�4*[u�=B�����2��s:�d���m�\\\';I<e[��\\r(x\\\"�7��&j�Rl���h� ��K�����s�96J�!�`�|\\\"��32f�2͸ĺ��K���\\n�%�f�D��м�x�~G*ܭ2�g~#�:W��(X4���)[v�cB��f�.L�$��^Oq!���C��9�bP-�l�P:\\rh-ʆ��6ݕ���� ���A�b5�ڜi�0���J�\\\"[�UkQ�-�����X\\0��69kGO?�2e1dU�^I�Gi�5�p˖ڒ�f6�w��AÔ����CZ�l\\Z0���E�u��j��>P�:/D� K�z:��\\ZOɁK+2�4=1��:H\\ZvX}��\\0n5MZB�A�*\\0m�*�&%J-�q�.���B�r�G�D a\\rTU��\\\\A�&��+p�}��B�i\\\"�7��xX̎2\\0��+�ŠU��J*����˨2D�Ӳ��T�0�CtGw.��d;���cl��˦t�U\\rY�ĉ ���\\0ISMq���mE7\\n�XY3�QQ����w}ҰP�,�8�`�2\\\\�e�(c�qJ��\\\"�(�CrC)-	�Pʁ��s,e�g��絭@t@U��w9̤�o��P�����K�9+��%�\\0Uܯ��B�\\\'(G\\n]?�*U�&��Ǭ���!��E�Cg���t������믯q�Z@��A\\0�\\\"�.�{sIU/���SaRj��HP�K��P����<)%�H7c�j\\0�K!�R\\0tE�cת���eA�\\\"�d��&�A�q-�j�*�a}�%�dt�AG$6`�W�4�K�fY~�S+�9v,��=�����X�@*��<�4�	�X@}0��D��bNХ��l*$j����{875��Y^�B��o0f�|��R[�P4���b+��\\0�\\\"��A�2cn���z���(�I/�$����\\n�0AJ(j�;�B���-�J�p1Vض(�B��T:�H4K�X8���|�c�m�GP[�6R�����MAu����T��GVlu5��n\\r0�^T�(�Y��B�����,�H�u\\0(�H�$*��[-u�2����.4\\n���Fb�Xޜ�\\0��=����YҼ߳�P7��C\\\\p�9!��4�H	by��W�1��u�y���\\Zt�ٚ�\\\"�\\\'�\\n���˂�j\\Z�Ű�JZfH�/�1�h��/r�0��X���4\\r�q�Q���_�`��8� F��Hl��nE�,�!8�(��*�u^����L\\\'\\r�FІ���QҜ��\\n�f)�G�KK���x���U�:3���\\\"�6�_�D��-��(yFȴ)�����5q�z��em�r�s�\\Z��06f\\\"��pG[K�u2���h&!��qDE��R��W3SH��\\n\\nn������{�37R�Q�����q�Ʈ��bP����1#\\n\\0)�)4i�~B���\\\\�/�nL�B�n�Xz70��,�a)�yx���/���d�ĭ�K-�YCQ[d�!�d�7C�RxN%V!��0�-��&�`��3��Э\\0fI��t<C&�ыԴ�����A�F߀ׂ�����\\0m�UZ\\0�5�D \\\"R<�,	>�\\\'������>o���<BpA\\r�Q�X��4Kh�r�.�e�r�*�_1���B����~�B\\0�ڗ��U6�#-���5�\\\"�\\nG���!��Pm�N����\\0%(DC@�h��kV\\0�\\0�Lh_~ b��\\\"@���bV���C�i&5pAPof)���L%�M��2̈WȂ*�g,�MpE7O5@TD�Bg��#�\\\\���<�W�����\\0D!`(��PE\\\"�6�.7E�\\\"�ڷ�fo�����m�9�����1���0���r�`���1J��.w��:GL]�dZ�V��/��>\\rO����5���1H�[�T�{�\\0��=�=�DG���fO����-iuPEc,%r�Q@�b	h6��(\\r0�ݽ@t��c�\\n���\\nǂ��q�����\\\\4��S	��r.d]�崛Tj�@ڲ��#�mg�u��i5?E5��x�g����e�qH�r�Ҋ5c�d��i{�Z�P��7��k��`$\\0�g	\\nW��{�E=�3�Q�O%F�����(]AKv�J��6�\\nX�r����;>cG�V�$W@�X��7\\ZT���[�}<�z�\\0�}1)E��I�!���W\\Z���J��盷�\\0�	(^�5ʱc3��PQL�o(�m�5��\\\\��^U5�̧p����~�ט�J��v����Un�J�՛�i]Je7m$��NP�op�h|@qj�?-a�ũR�0���1�XE��y5�>�}�|��.+;��n����~[��P�[̽����aBŗF`7D!vB��=�^��p��A�h	�H�be�GT,��J�\\\\�ـK�Q������}%�z\\0	GNY�@Z��s8Q�ѱ���;�K1���np>�TZk�໫�hK�C$�Ae<s�F:rKT6�YuP|�ȍڸ)�+ˀ��j�&�ަF(�W\\0_�/1t��B���/y��\\0�9㼴�� ΢���j������/~�\\0�z�K����Nx;�<�,�x�����!�z�[��q�\\Zwgu6���`�6a�&_i\\\\E� �h7N��C𗑈y&��/��t����]Qo0<P�&�ąj�.P�W(���	{�H�3�ˈ�0�<��8�0�煔�;|�3�S���\\Z�u��[G7?�>��tX�\\\'/$o�����H�G{\\0�d��N&b�uJ���(�����Q�}��þ��|�(oci�\\0�˨&(��Nh5��h�4���ޔ<���=o��M�vl��h�ۜ.;N��%��^���Ԡs4X~�&�޾����f!R�7���<�I��d������V^abL��%�(|�t�������[\\n\\0���ϑs�g>}8��X	Q}�xf�u$<&X��/��m����D�C�wpZ ����{���','image/jpeg');
/*!40000 ALTER TABLE `imagen_publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informatica`
--

DROP TABLE IF EXISTS `informatica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informatica` (
  `informatica_id` int(11) NOT NULL AUTO_INCREMENT,
  `curriculum_id` int(11) NOT NULL,
  `software` varchar(45) NOT NULL,
  `nivel` enum('basico','usuario','experto') NOT NULL,
  PRIMARY KEY (`informatica_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informatica`
--

LOCK TABLES `informatica` WRITE;
/*!40000 ALTER TABLE `informatica` DISABLE KEYS */;
/*!40000 ALTER TABLE `informatica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listar_becas`
--

DROP TABLE IF EXISTS `listar_becas`;
/*!50001 DROP VIEW IF EXISTS `listar_becas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_becas` AS SELECT 
 1 AS `usuario_id`,
 1 AS `publicacion_id`,
 1 AS `descripcion`,
 1 AS `fecha_alta`,
 1 AS `fecha_publicacion`,
 1 AS `visible`,
 1 AS `beca_id`,
 1 AS `programa_academico`,
 1 AS `url`,
 1 AS `imagen_publicacion_id`,
 1 AS `imagen`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_cursos`
--

DROP TABLE IF EXISTS `listar_cursos`;
/*!50001 DROP VIEW IF EXISTS `listar_cursos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_cursos` AS SELECT 
 1 AS `publicacion_id`,
 1 AS `usuario_id`,
 1 AS `descripcion`,
 1 AS `fecha_alta`,
 1 AS `fecha_publicacion`,
 1 AS `visible`,
 1 AS `curso_id`,
 1 AS `costo`,
 1 AS `duracion`,
 1 AS `libre`,
 1 AS `imagen_publicacion_id`,
 1 AS `imagen`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_drafts`
--

DROP TABLE IF EXISTS `listar_drafts`;
/*!50001 DROP VIEW IF EXISTS `listar_drafts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_drafts` AS SELECT 
 1 AS `mensaje_id`,
 1 AS `usuario_id`,
 1 AS `asunto`,
 1 AS `mensaje`,
 1 AS `curr_adjuntado`,
 1 AS `fecha_creacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_egresados`
--

DROP TABLE IF EXISTS `listar_egresados`;
/*!50001 DROP VIEW IF EXISTS `listar_egresados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_egresados` AS SELECT 
 1 AS `imagen`,
 1 AS `correo`,
 1 AS `clave`,
 1 AS `ultima_sesion`,
 1 AS `activo`,
 1 AS `carnet`,
 1 AS `cedula`,
 1 AS `titulado`,
 1 AS `trabaja`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `sexo`,
 1 AS `fecha_nacimiento`,
 1 AS `nombre_carrera`,
 1 AS `telefono`,
 1 AS `celular`,
 1 AS `direccion`,
 1 AS `departamento`,
 1 AS `municipio`,
 1 AS `persona_id`,
 1 AS `contacto_id`,
 1 AS `usuario_id`,
 1 AS `egresado_id`,
 1 AS `municipio_id`,
 1 AS `carrera_id`,
 1 AS `carrera`,
 1 AS `departamento_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_empresas`
--

DROP TABLE IF EXISTS `listar_empresas`;
/*!50001 DROP VIEW IF EXISTS `listar_empresas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_empresas` AS SELECT 
 1 AS `nombre_empresa`,
 1 AS `ruc`,
 1 AS `sociedad`,
 1 AS `mision`,
 1 AS `ocupacion`,
 1 AS `vision`,
 1 AS `sitio_web`,
 1 AS `imagen`,
 1 AS `correo`,
 1 AS `clave`,
 1 AS `autenticada`,
 1 AS `telefono`,
 1 AS `celular`,
 1 AS `direccion`,
 1 AS `municipio`,
 1 AS `departamento`,
 1 AS `activo`,
 1 AS `ultima_sesion`,
 1 AS `empresa_id`,
 1 AS `contacto_id`,
 1 AS `usuario_id`,
 1 AS `sociedad_id`,
 1 AS `departamento_id`,
 1 AS `municipio_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_fichas`
--

DROP TABLE IF EXISTS `listar_fichas`;
/*!50001 DROP VIEW IF EXISTS `listar_fichas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_fichas` AS SELECT 
 1 AS `publicacion_id`,
 1 AS `descripcion`,
 1 AS `fecha_alta`,
 1 AS `fecha_publicacion`,
 1 AS `visible`,
 1 AS `imagen_publicacion_id`,
 1 AS `imagen`,
 1 AS `tipo`,
 1 AS `usuario_id`,
 1 AS `ficha_id`,
 1 AS `cargo`,
 1 AS `ubicacion`,
 1 AS `cantidad`,
 1 AS `jefe`,
 1 AS `a_cargo`,
 1 AS `finalidad`,
 1 AS `funciones`,
 1 AS `requisitos`,
 1 AS `experiencia`,
 1 AS `competencia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_inbox`
--

DROP TABLE IF EXISTS `listar_inbox`;
/*!50001 DROP VIEW IF EXISTS `listar_inbox`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_inbox` AS SELECT 
 1 AS `usuario_id`,
 1 AS `mensaje_id`,
 1 AS `asunto`,
 1 AS `mensaje`,
 1 AS `fecha_envio`,
 1 AS `curr_adjuntado`,
 1 AS `remitente`,
 1 AS `remitente_id`,
 1 AS `visto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_publicadores`
--

DROP TABLE IF EXISTS `listar_publicadores`;
/*!50001 DROP VIEW IF EXISTS `listar_publicadores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_publicadores` AS SELECT 
 1 AS `publicador_id`,
 1 AS `persona_id`,
 1 AS `usuario_id`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `sexo`,
 1 AS `fecha_nacimiento`,
 1 AS `correo`,
 1 AS `clave`,
 1 AS `imagen`,
 1 AS `ultima_sesion`,
 1 AS `activo`,
 1 AS `cargo_id`,
 1 AS `cargo`,
 1 AS `area`,
 1 AS `area_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listar_sent`
--

DROP TABLE IF EXISTS `listar_sent`;
/*!50001 DROP VIEW IF EXISTS `listar_sent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_sent` AS SELECT 
 1 AS `usuario_id`,
 1 AS `mensaje_id`,
 1 AS `asunto`,
 1 AS `mensaje`,
 1 AS `fecha_envio`,
 1 AS `curr_adjuntado`,
 1 AS `destinatario`,
 1 AS `destinatario_id`,
 1 AS `visto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `mensaje_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `asunto` varchar(60) NOT NULL,
  `mensaje` tinytext NOT NULL,
  `fecha_envio` date DEFAULT NULL,
  `cadena` tinyint(1) NOT NULL DEFAULT '0',
  `curr_adjuntado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mensaje_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (95,17,'asdasdsa','dsadadsadsadsadsadsa','2015-09-02',0,1),(96,17,'borrado adsdasdasdsad','asdadsadasdaa','2015-09-02',0,1),(97,17,'1234','asdasdsdsads','2015-09-02',0,1),(98,16,'saddsasadsadsads','sadsadsasadsadsa\nasdasdasdsadasdsa','2015-09-02',0,0),(99,16,'uno','asdsadsddasds','2015-09-02',0,0),(100,16,'tres','asddadasdd','2015-09-02',0,0),(101,16,'dos','dasdsadasdad','2015-09-02',0,0),(102,16,'cuatro','asdadadadsa\n','2015-09-02',0,0),(103,16,'dos','sasadsadasdsadadadsa','2015-09-02',0,0),(104,17,'uno','asdasdsadsadsada','2015-09-03',0,0),(105,17,'dos qwe','asdasdadsa','2015-09-03',0,0),(106,17,'tres','sadasdasds','2015-09-03',0,0),(107,16,'asdasd','asdsadsadsadsad\nsadasdasdsad\nadsdadasdsad','2015-09-03',0,0),(108,16,'slato de linea','asdsadadsadasd<br />\nsdsdsdsadasdsa<br />\n123<br />\nsadsadsadasds','2015-09-03',0,0),(109,16,'pruebaaaaaaaaaaaaaaaaaaa','sdaasdasdasdasdasd<br />\nasdasdsadsadsad<br />\nasdasdsadsasdasdsad','2015-09-03',0,0),(110,16,'Prueba 1111111111111111111','sdasdadasdadad<br />\nadadadadadadadadadas<br />\ndadadadsadadada<br />\nadsdsadasdsad','2015-09-03',0,0),(111,16,'oc','asdasdsdsadadadsadasada<br />\nsadasdsasad<br />\nasdasdasdsadsadsadsadsadsa','2015-09-03',0,0),(112,17,'asdasd','asdasdadasdaddas','2015-09-04',0,0),(113,17,'asdasdasd','asdasdads',NULL,0,0),(114,17,'asdasdasd','asdasdads',NULL,0,0),(116,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(117,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(118,17,'asdas','dasdsdasdasdsadsadsa','2015-09-05',0,0),(119,17,'asdsadadsd','asdasdsadasdsadsad','2015-09-05',0,0),(120,17,'asdasdasd','sadaasdsadsadsdassda','2015-09-05',0,0),(121,16,'mensjae 1','asdasdsada<br />\nsaddsadsda','2015-09-05',0,0),(122,16,'mensaje 2','sadadssad<br />\nasdsadsadasd<br />\n12313123112312123123','2015-09-05',0,0),(123,16,'pruebaaaaa','asdasdadsads','2015-09-05',0,0),(124,16,'mensaje 4','asdasdsad<br />\nasdadasadas','2015-09-05',0,0),(125,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(126,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(127,17,'dadadsasasadsa','dsadsadsasaddasdas<br />\nasdasdsadd','2015-09-05',0,1),(132,17,'borr con curr adjuntado','asdadsd',NULL,0,0),(133,17,'Borrador con curriculum adjuntado','asdadsasdasadas',NULL,0,1),(147,16,'pruebba de borrador para rene 12312312312312','adssadsadad<br />\nad<br />\nad<br />\nsa<br />\na<br />\nsad<br />\nsa','2015-09-06',0,0),(148,16,'sdasdasdsa','daddsadadadadasdsads','2015-09-06',0,0),(149,17,'qweqweqweqw','eqweqweqweeqqwee','2015-09-10',0,1),(151,17,'Un mensaje cualquiera','Este es un mensaje de varias lineas<br />\nasdasdasd<br />\nad<br />\nad<br />\nad<br />\nad<br />\nd<br />\n','2015-09-13',0,1);
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje_borrador`
--

DROP TABLE IF EXISTS `mensaje_borrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje_borrador` (
  `mensaje_borrador_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `mensaje_id` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  PRIMARY KEY (`mensaje_borrador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_borrador`
--

LOCK TABLES `mensaje_borrador` WRITE;
/*!40000 ALTER TABLE `mensaje_borrador` DISABLE KEYS */;
INSERT INTO `mensaje_borrador` VALUES (1,17,68,'2015-08-31'),(2,17,69,'2015-08-31'),(3,17,70,'2015-09-01'),(4,17,71,'2015-09-01'),(5,17,72,'2015-09-01'),(6,17,115,'2015-09-04'),(7,17,128,'2015-09-06'),(8,17,129,'2015-09-06'),(9,17,130,'2015-09-06'),(10,17,131,'2015-09-06'),(11,17,132,'2015-09-06'),(12,17,133,'2015-09-06'),(13,16,134,'2015-09-06'),(14,16,135,'2015-09-06'),(15,16,136,'2015-09-06'),(16,16,137,'2015-09-06'),(17,16,138,'2015-09-06'),(18,16,139,'2015-09-06'),(19,16,140,'2015-09-06'),(20,16,141,'2015-09-06'),(21,16,142,'2015-09-06'),(22,16,143,'2015-09-06'),(23,16,144,'2015-09-06'),(24,16,145,'2015-09-06'),(25,16,146,'2015-09-06'),(26,17,150,'2015-09-13');
/*!40000 ALTER TABLE `mensaje_borrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje_eliminado`
--

DROP TABLE IF EXISTS `mensaje_eliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje_eliminado` (
  `mensaje_eliminado_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `mensaje_id` int(11) NOT NULL,
  `eliminado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mensaje_eliminado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_eliminado`
--

LOCK TABLES `mensaje_eliminado` WRITE;
/*!40000 ALTER TABLE `mensaje_eliminado` DISABLE KEYS */;
INSERT INTO `mensaje_eliminado` VALUES (60,17,95,1),(61,19,95,0),(62,17,96,1),(63,16,96,0),(64,17,97,0),(65,19,97,0),(66,16,98,1),(67,17,98,1),(68,16,99,1),(69,17,99,1),(70,16,100,1),(71,17,100,1),(72,16,101,1),(73,17,101,1),(74,16,102,1),(75,17,102,1),(76,16,103,1),(77,17,103,1),(78,17,104,1),(79,20,104,0),(80,17,105,1),(81,22,105,0),(82,17,106,1),(83,20,106,0),(84,16,107,1),(85,17,107,1),(86,16,108,1),(87,19,108,0),(88,16,109,1),(89,17,109,1),(90,16,110,1),(91,16,110,1),(92,16,111,1),(93,16,111,1),(94,17,112,1),(95,17,112,1),(96,17,116,1),(97,17,116,1),(98,17,117,1),(99,17,117,1),(100,17,118,0),(101,19,118,0),(102,17,119,1),(103,20,119,0),(104,17,120,1),(105,22,120,0),(106,16,121,1),(107,17,121,0),(108,16,122,1),(109,17,122,0),(110,16,123,1),(111,17,123,0),(112,16,124,1),(113,17,124,1),(114,17,125,1),(115,16,125,1),(116,17,126,1),(117,16,126,1),(118,17,127,1),(119,16,127,0),(120,16,147,1),(121,19,147,0),(122,16,148,1),(123,17,148,0),(124,17,149,0),(125,20,149,0),(126,17,151,0),(127,16,151,0);
/*!40000 ALTER TABLE `mensaje_eliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `municipio_id` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(60) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  PRIMARY KEY (`municipio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Ocotal',1),(2,'Mozonte',1),(3,'Dipilto',1),(4,'Jalapa',1),(5,'San Fernando',1),(6,'Estelí',2),(7,'Condega',2),(8,'La Trinidad',2),(10,'Sebaco',3),(11,'Somoto',4),(12,'ASDF GHIJL ASDASDADADS',1);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `persona_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`persona_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (10,'Miguel Angel','Castillo Cornejo','M','1992-03-09'),(11,'Jose Manuel','Poveda','M','2015-04-08'),(12,'Rene Mauricio','Cruz Hernandez','M','1969-12-31'),(13,'Idalia del Socorro','Mairena','M','2015-12-08'),(15,'Alfredo Heberto','Martinez Acuña','M','1969-12-31'),(16,'Jose Manuel','Poveda','M','2015-06-08');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `publicacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `imagen_publicacion_id` int(11) NOT NULL,
  `descripcion` tinytext NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_alta` date NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`publicacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (1,23,1,'Plaza de ing de software disponible','2015-09-08','2015-09-10',1),(3,23,3,'asdasdasdasdadasdasdsadsadsadsadsad','2015-09-08','2015-09-24',1),(4,23,4,'asdasdasdasdadasdasdsadsadsadsadsad','2015-09-08','2015-09-24',1),(5,23,5,'sdad','2015-09-08','2015-09-10',1),(7,23,7,'asdasdsadsadsad','2015-09-08','2015-09-10',1),(13,23,13,'asdsaddsdsdsadsadsd','2015-09-09','2015-09-16',1),(14,23,14,'asdsaddsdsdsadsadsd','2015-09-09','2015-09-16',1),(23,23,23,'La empresa Nombre SA, solicita empleado para el area de adminitracion, por favor enviar corriculum vitae a la siguiente direccion<br />\r\ndireccion@gmail.com','2015-09-22','2015-09-16',1),(24,16,24,'Subirse a las rutas asdasldjasdk','2015-09-14','2015-09-16',1),(29,23,29,'Texto en<br />\r\nvarias','2015-09-17','2015-09-18',1),(30,23,30,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum modi quia deserunt harum, autem recusandae, doloribus esse, soluta eius magnam inventore id illo tempore natus eum nobis, culpa qui ducimus.','2015-09-21','2015-09-18',1),(31,23,31,'asdasdsadsadsadad','2015-09-17','2015-09-23',1),(32,23,32,'lfjslfjdslfkdsfjdsfldsjf','2015-09-18','2015-09-03',1),(33,23,33,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quae est odit atque voluptate, quasi, in rem voluptates minima nesciunt iure quas ipsum autem, explicabo sunt. Laudantium quisquam quae voluptate.','2015-09-21','2015-09-03',1),(34,23,34,'Se impartira el curso de redes cisco 11111111111111sssssssssssssssssssssssssrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','2015-09-18','2015-09-03',1),(35,23,36,'Estimados alumnos unen esta regalando becas alimenticias.....','2015-09-21','2015-09-25',1),(36,23,37,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum modi quia deserunt harum, autem recusandae, doloribus esse, soluta eius magnam inventore id illo tempore natus eum nobis, culpa qui ducimus.','2015-09-21','2015-09-24',1),(37,23,38,'Prueba de publciacion de beca','2015-09-22','2015-09-18',0),(38,23,39,'adsadsadsasadsadsadsa','2015-09-22','2015-09-10',0);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion_carrera`
--

DROP TABLE IF EXISTS `publicacion_carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion_carrera` (
  `publicacion_carrera_id` int(11) NOT NULL AUTO_INCREMENT,
  `publicacion_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `filtro` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`publicacion_carrera_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_carrera`
--

LOCK TABLES `publicacion_carrera` WRITE;
/*!40000 ALTER TABLE `publicacion_carrera` DISABLE KEYS */;
INSERT INTO `publicacion_carrera` VALUES (1,14,4,NULL),(2,15,1,NULL),(3,15,3,NULL),(4,16,1,1),(5,16,2,1),(6,16,3,1),(7,16,4,1),(8,17,1,0),(9,17,2,1),(10,17,3,0),(11,17,4,1),(12,18,1,0),(13,18,2,1),(14,18,3,0),(15,18,4,1),(16,2,1,1),(17,2,2,0),(18,2,3,1),(19,2,4,0),(20,6,1,0),(21,6,2,1),(22,6,3,0),(23,6,4,1),(24,8,1,1),(25,8,2,0),(26,8,3,1),(27,8,4,0),(28,9,1,0),(29,9,2,1),(30,9,3,0),(31,9,4,1),(32,10,1,1),(33,10,2,0),(34,10,3,1),(35,10,4,0),(36,11,1,1),(37,11,2,0),(38,11,3,1),(39,11,4,0),(40,12,1,1),(41,12,2,0),(42,12,3,1),(43,12,4,0),(44,16,1,0),(45,16,2,0),(46,16,3,0),(47,16,4,0),(48,17,1,0),(49,17,2,1),(50,17,3,0),(51,17,4,1),(52,18,1,0),(53,18,2,1),(54,18,3,0),(55,18,4,1),(56,19,1,1),(57,19,2,0),(58,19,3,1),(59,19,4,0),(60,20,1,1),(61,20,2,0),(62,20,3,1),(63,20,4,0),(64,21,1,0),(65,21,2,1),(66,21,3,0),(67,21,4,0),(68,22,1,0),(69,22,2,1),(70,22,3,1),(71,22,4,0),(72,23,1,1),(73,23,2,0),(74,23,3,1),(75,23,4,0),(76,24,1,1),(77,24,2,0),(78,24,3,1),(79,24,4,0),(80,25,1,0),(81,25,2,1),(82,25,3,1),(83,25,4,0),(84,26,1,0),(85,26,2,1),(86,26,3,1),(87,26,4,0),(88,27,1,1),(89,27,2,0),(90,27,3,1),(91,27,4,1),(92,28,1,0),(93,28,2,1),(94,28,3,1),(95,28,4,0),(96,29,1,1),(97,29,2,0),(98,29,3,0),(99,29,4,0),(100,30,1,1),(101,30,2,0),(102,30,3,1),(103,30,4,0),(104,31,1,0),(105,31,2,1),(106,31,3,0),(107,31,4,1),(108,32,1,0),(109,32,2,1),(110,32,3,1),(111,32,4,0),(112,33,1,1),(113,33,2,1),(114,33,3,0),(115,33,4,0),(116,34,1,0),(117,34,2,0),(118,34,3,1),(119,34,4,1),(120,35,1,1),(121,35,2,1),(122,35,3,1),(123,35,4,1),(124,35,1,1),(125,35,2,1),(126,35,3,1),(127,35,4,1),(128,36,1,1),(129,36,2,0),(130,36,3,1),(131,36,4,0),(132,37,1,0),(133,37,2,1),(134,37,3,1),(135,37,4,0),(136,38,1,1),(137,38,2,1),(138,38,3,0),(139,38,4,0);
/*!40000 ALTER TABLE `publicacion_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicador`
--

DROP TABLE IF EXISTS `publicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicador` (
  `publicador_id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`publicador_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicador`
--

LOCK TABLES `publicador` WRITE;
/*!40000 ALTER TABLE `publicador` DISABLE KEYS */;
INSERT INTO `publicador` VALUES (1,11,3,18),(2,16,18,23);
/*!40000 ALTER TABLE `publicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociedad`
--

DROP TABLE IF EXISTS `sociedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sociedad` (
  `sociedad_id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad` varchar(40) NOT NULL,
  PRIMARY KEY (`sociedad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociedad`
--

LOCK TABLES `sociedad` WRITE;
/*!40000 ALTER TABLE `sociedad` DISABLE KEYS */;
INSERT INTO `sociedad` VALUES (1,'Sociedad Anonima'),(2,'Sociedad Civil'),(3,'Sociedad Colectiva'),(4,'Sociedad en Comandita'),(5,'Uniones de empresas'),(6,'adasdadasdad'),(7,'ñññññññññññ'),(8,'sfsfsfsdsdf'),(9,'pppppppppoooooo');
/*!40000 ALTER TABLE `sociedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titulo`
--

DROP TABLE IF EXISTS `titulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titulo` (
  `titulo_id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`titulo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titulo`
--

LOCK TABLES `titulo` WRITE;
/*!40000 ALTER TABLE `titulo` DISABLE KEYS */;
INSERT INTO `titulo` VALUES (1,'Ingniero civil'),(2,'Ingniero Agroindustrial'),(3,'Ingeniero Agronomo');
/*!40000 ALTER TABLE `titulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `ultima_sesion` datetime DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (16,'uni_norte@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-09-21 23:51:44',0,'perfil_16.png'),(17,'mikedosce1992@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-09-22 10:11:34',1,'perfil_17.jpg'),(18,'jm_mpvedar@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-08-05 13:12:13',1,'profile_image_18.png'),(19,'rene_mauricio@gmail.com','iTKvJj9mjPzHlSNM8HaFPOGre8fPZvfRUStlXgRxPlM=','2015-09-06 18:32:56',0,'perfil_19.png'),(20,'idalia@gmail.com','JnyzyASnZLzDi9MsmqxpL61k4XuiDbCvpcxdEVrdtwg=',NULL,0,'male.jpeg'),(21,'idalia@gmail.com','ygFzcasYfpUp5I2PzNq5WnMeP0kEFLPH1h+bAOLVqfQ=',NULL,0,'female.jpeg'),(22,'alfredo@gmail.com','xIr9M0GP1cpl4sFjMyO/geQCKneNRDFjJvUfFXgQ/3Q=',NULL,0,'male.jpeg'),(23,'jm_poveda@gmail.com','fFJRohBIq2R8JCLh3sMO+Urc09+eHKP/kfQrzo0UHFI=','2015-09-22 10:18:38',1,'perfil_23.jpg'),(24,'aalfs@gmail.com','chjP5pzd7/Vmps9k32XpUvtvuzJgCO664TjkwEuNwS4=','2015-09-04 14:33:26',1,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'scse'
--

--
-- Dumping routines for database 'scse'
--
/*!50003 DROP FUNCTION IF EXISTS `detectar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `detectar_usuario`(idusuario int) RETURNS double
BEGIN
	
    if(exists(select * from egresado where egresado.usuario_id = idusuario)) then
		
        #REGRESA EL NOMBRE DE EL EGRESADO
        return (select (nombre, " ", apellido),imagen as nombre from registro_egresados where usuario_id = idusuario);
        
	elseif(exists(select * from empresa where empresa.usuario_ud = usuario_id)) then
		
        #REGRESA EL NOMBRE DE LA EMPRESA
		return (select nombre_empresa as nombre,imagen from registro_empresas where usuario_id = idusuario);
	
    elseif(exists(select * from registro_publicadores where publicador.usuario_ud = usuario_id)) then
		
         #REGRESA EL NOMBRE DE EL PUBLICADOR
		return  (select (nombre, " ", apellido) as nombre,imagen from registro_publicadores where usuario_id = idusuario);
	
    elseif(exists(select * from admin where admin.usuario_ud = usuario_id)) then
		
         #REGRESA EL NOMBRE DE EL ADMINISTRADOR
        return "";
    else
		return null;
    end if;
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_sesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_sesion`(pusuario_id int)
BEGIN
	update usuario set ultima_sesion = now() where usuario.usuario_id=pusuario_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_ficha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_ficha`(p_ficha_id int)
BEGIN
DECLARE id int;

	set id = (select publicacion_id from publicacion,ficha where ficha.publicacion_id=publicacion.publiacion_id);
	
    delete from ficha where ficha_id = p_ficha_id;
    delete from publicacion where publicacion_id = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_mensaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_mensaje`(p_remitente int,p_destinatario int,p_asunto varchar(60),p_mensaje tinytext,p_borrador bit)
BEGIN
	insert into mensaje(remitente,destinatario,asunto,mensaje,borrador,visto,fecha_envio)
    values
    (p_remitente,p_destinatario,p_asunto,p_mensaje,p_borrador,FALSE,curdate());
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `listar_becas`
--

/*!50001 DROP VIEW IF EXISTS `listar_becas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_becas` AS select `publicacion`.`usuario_id` AS `usuario_id`,`publicacion`.`publicacion_id` AS `publicacion_id`,`publicacion`.`descripcion` AS `descripcion`,`publicacion`.`fecha_alta` AS `fecha_alta`,`publicacion`.`fecha_publicacion` AS `fecha_publicacion`,`publicacion`.`visible` AS `visible`,`beca`.`beca_id` AS `beca_id`,`beca`.`programa_academico` AS `programa_academico`,`beca`.`url` AS `url`,`imagen_publicacion`.`imagen_publicacion_id` AS `imagen_publicacion_id`,`imagen_publicacion`.`imagen` AS `imagen`,`imagen_publicacion`.`tipo` AS `tipo` from ((`publicacion` join `imagen_publicacion`) join `beca`) where ((`publicacion`.`publicacion_id` = `beca`.`publicacion_id`) and (`imagen_publicacion`.`imagen_publicacion_id` = `publicacion`.`imagen_publicacion_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_cursos`
--

/*!50001 DROP VIEW IF EXISTS `listar_cursos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_cursos` AS select `publicacion`.`publicacion_id` AS `publicacion_id`,`publicacion`.`usuario_id` AS `usuario_id`,`publicacion`.`descripcion` AS `descripcion`,`publicacion`.`fecha_alta` AS `fecha_alta`,`publicacion`.`fecha_publicacion` AS `fecha_publicacion`,`publicacion`.`visible` AS `visible`,`curso`.`curso_id` AS `curso_id`,`curso`.`costo` AS `costo`,`curso`.`duracion` AS `duracion`,`curso`.`libre` AS `libre`,`publicacion`.`imagen_publicacion_id` AS `imagen_publicacion_id`,`imagen_publicacion`.`imagen` AS `imagen`,`imagen_publicacion`.`tipo` AS `tipo` from ((`publicacion` join `curso`) join `imagen_publicacion`) where ((`publicacion`.`publicacion_id` = `curso`.`publicacion_id`) and (`imagen_publicacion`.`imagen_publicacion_id` = `publicacion`.`imagen_publicacion_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_drafts`
--

/*!50001 DROP VIEW IF EXISTS `listar_drafts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_drafts` AS select `mensaje`.`mensaje_id` AS `mensaje_id`,`mensaje`.`usuario_id` AS `usuario_id`,`mensaje`.`asunto` AS `asunto`,`mensaje`.`mensaje` AS `mensaje`,`mensaje`.`curr_adjuntado` AS `curr_adjuntado`,date_format(`mensaje_borrador`.`fecha_creacion`,'%d/%m/%Y') AS `fecha_creacion` from (`mensaje` join `mensaje_borrador`) where (`mensaje`.`mensaje_id` = `mensaje_borrador`.`mensaje_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_egresados`
--

/*!50001 DROP VIEW IF EXISTS `listar_egresados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_egresados` AS select `usuario`.`imagen` AS `imagen`,`usuario`.`correo` AS `correo`,`usuario`.`clave` AS `clave`,`usuario`.`ultima_sesion` AS `ultima_sesion`,`usuario`.`activo` AS `activo`,`egresado`.`carnet` AS `carnet`,`egresado`.`cedula` AS `cedula`,`egresado`.`titulado` AS `titulado`,`egresado`.`trabaja` AS `trabaja`,`persona`.`nombre` AS `nombre`,`persona`.`apellido` AS `apellido`,`persona`.`sexo` AS `sexo`,`persona`.`fecha_nacimiento` AS `fecha_nacimiento`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`contacto`.`telefono` AS `telefono`,`contacto`.`celular` AS `celular`,`contacto`.`direccion` AS `direccion`,`departamento`.`departamento` AS `departamento`,`municipio`.`municipio` AS `municipio`,`persona`.`persona_id` AS `persona_id`,`contacto`.`contacto_id` AS `contacto_id`,`usuario`.`usuario_id` AS `usuario_id`,`egresado`.`egresado_id` AS `egresado_id`,`municipio`.`municipio_id` AS `municipio_id`,`carrera`.`carrera_id` AS `carrera_id`,`carrera`.`nombre_carrera` AS `carrera`,`departamento`.`departamento_id` AS `departamento_id` from ((((((`egresado` join `usuario`) join `persona`) join `contacto`) join `municipio`) join `departamento`) join `carrera`) where ((`egresado`.`usuario_id` = `usuario`.`usuario_id`) and (`egresado`.`persona_id` = `persona`.`persona_id`) and (`egresado`.`contacto_id` = `contacto`.`contacto_id`) and (`departamento`.`departamento_id` = `municipio`.`departamento_id`) and (`municipio`.`municipio_id` = `contacto`.`municipio_id`) and (`carrera`.`carrera_id` = `egresado`.`carrera_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_empresas`
--

/*!50001 DROP VIEW IF EXISTS `listar_empresas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_empresas` AS select `empresa`.`nombre_empresa` AS `nombre_empresa`,`empresa`.`ruc` AS `ruc`,`sociedad`.`sociedad` AS `sociedad`,`empresa`.`mision` AS `mision`,`empresa`.`ocupacion` AS `ocupacion`,`empresa`.`vision` AS `vision`,`empresa`.`sitio_web` AS `sitio_web`,`usuario`.`imagen` AS `imagen`,`usuario`.`correo` AS `correo`,`usuario`.`clave` AS `clave`,`empresa`.`autenticada` AS `autenticada`,`contacto`.`telefono` AS `telefono`,`contacto`.`celular` AS `celular`,`contacto`.`direccion` AS `direccion`,`municipio`.`municipio` AS `municipio`,`departamento`.`departamento` AS `departamento`,`usuario`.`activo` AS `activo`,`usuario`.`ultima_sesion` AS `ultima_sesion`,`empresa`.`empresa_id` AS `empresa_id`,`contacto`.`contacto_id` AS `contacto_id`,`usuario`.`usuario_id` AS `usuario_id`,`sociedad`.`sociedad_id` AS `sociedad_id`,`departamento`.`departamento_id` AS `departamento_id`,`municipio`.`municipio_id` AS `municipio_id` from ((((`departamento` join `municipio`) join `contacto`) join `usuario`) join (`empresa` left join `sociedad` on((`sociedad`.`sociedad_id` = `empresa`.`sociedad_id`)))) where ((`empresa`.`contacto_id` = `contacto`.`contacto_id`) and (`contacto`.`municipio_id` = `municipio`.`municipio_id`) and (`departamento`.`departamento_id` = `municipio`.`departamento_id`) and (`usuario`.`usuario_id` = `empresa`.`usuario_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_fichas`
--

/*!50001 DROP VIEW IF EXISTS `listar_fichas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_fichas` AS select `publicacion`.`publicacion_id` AS `publicacion_id`,`publicacion`.`descripcion` AS `descripcion`,`publicacion`.`fecha_alta` AS `fecha_alta`,`publicacion`.`fecha_publicacion` AS `fecha_publicacion`,`publicacion`.`visible` AS `visible`,`imagen_publicacion`.`imagen_publicacion_id` AS `imagen_publicacion_id`,`imagen_publicacion`.`imagen` AS `imagen`,`imagen_publicacion`.`tipo` AS `tipo`,`usuario`.`usuario_id` AS `usuario_id`,`ficha`.`ficha_id` AS `ficha_id`,`ficha`.`cargo` AS `cargo`,`ficha`.`ubicacion` AS `ubicacion`,`ficha`.`cantidad` AS `cantidad`,`ficha`.`jefe` AS `jefe`,`ficha`.`a_cargo` AS `a_cargo`,`ficha`.`finalidad` AS `finalidad`,`ficha`.`funciones` AS `funciones`,`ficha`.`requisitos` AS `requisitos`,`ficha`.`experiencia` AS `experiencia`,`ficha`.`competencia` AS `competencia` from (((`usuario` join `publicacion`) join `ficha`) join `imagen_publicacion`) where ((`usuario`.`usuario_id` = `publicacion`.`usuario_id`) and (`ficha`.`publicacion_id` = `publicacion`.`publicacion_id`) and (`publicacion`.`imagen_publicacion_id` = `imagen_publicacion`.`imagen_publicacion_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_inbox`
--

/*!50001 DROP VIEW IF EXISTS `listar_inbox`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_inbox` AS select `destino_mensaje`.`usuario_id` AS `usuario_id`,`mensaje`.`mensaje_id` AS `mensaje_id`,`mensaje`.`asunto` AS `asunto`,`mensaje`.`mensaje` AS `mensaje`,date_format(`mensaje`.`fecha_envio`,'%d/%m/%Y') AS `fecha_envio`,`mensaje`.`curr_adjuntado` AS `curr_adjuntado`,`rem`.`correo` AS `remitente`,`rem`.`usuario_id` AS `remitente_id`,`destino_mensaje`.`visto` AS `visto` from (((`mensaje` join `usuario` `rem` on((`rem`.`usuario_id` = `mensaje`.`usuario_id`))) join `destino_mensaje`) join `mensaje_eliminado`) where ((`mensaje`.`cadena` = 0) and (`mensaje`.`mensaje_id` = `destino_mensaje`.`mensaje_id`) and (`mensaje_eliminado`.`mensaje_id` = `mensaje`.`mensaje_id`) and (`mensaje_eliminado`.`usuario_id` = `destino_mensaje`.`usuario_id`) and (`mensaje_eliminado`.`eliminado` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_publicadores`
--

/*!50001 DROP VIEW IF EXISTS `listar_publicadores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_publicadores` AS select `publicador`.`publicador_id` AS `publicador_id`,`persona`.`persona_id` AS `persona_id`,`usuario`.`usuario_id` AS `usuario_id`,`persona`.`nombre` AS `nombre`,`persona`.`apellido` AS `apellido`,`persona`.`sexo` AS `sexo`,date_format(`persona`.`fecha_nacimiento`,'%d/%m/%Y') AS `fecha_nacimiento`,`usuario`.`correo` AS `correo`,`usuario`.`clave` AS `clave`,`usuario`.`imagen` AS `imagen`,`usuario`.`ultima_sesion` AS `ultima_sesion`,`usuario`.`activo` AS `activo`,`cargo`.`cargo_id` AS `cargo_id`,`cargo`.`cargo` AS `cargo`,`area`.`area` AS `area`,`area`.`area_id` AS `area_id` from ((((`publicador` join `persona`) join `area`) join `cargo`) join `usuario`) where ((`publicador`.`persona_id` = `persona`.`persona_id`) and (`publicador`.`usuario_id` = `usuario`.`usuario_id`) and (`cargo`.`area_id` = `area`.`area_id`) and (`publicador`.`cargo_id` = `cargo`.`cargo_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listar_sent`
--

/*!50001 DROP VIEW IF EXISTS `listar_sent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_sent` AS select `mensaje`.`usuario_id` AS `usuario_id`,`mensaje`.`mensaje_id` AS `mensaje_id`,`mensaje`.`asunto` AS `asunto`,`mensaje`.`mensaje` AS `mensaje`,date_format(`mensaje`.`fecha_envio`,'%d/%m/%Y') AS `fecha_envio`,`mensaje`.`curr_adjuntado` AS `curr_adjuntado`,`dest`.`correo` AS `destinatario`,`dest`.`usuario_id` AS `destinatario_id`,`destino_mensaje`.`visto` AS `visto` from ((`mensaje` join (`destino_mensaje` join `usuario` `dest` on((`dest`.`usuario_id` = `destino_mensaje`.`usuario_id`)))) join `mensaje_eliminado`) where ((`mensaje`.`mensaje_id` = `destino_mensaje`.`mensaje_id`) and (`mensaje`.`cadena` = 0) and (`mensaje`.`mensaje_id` = `mensaje_eliminado`.`mensaje_id`) and (`mensaje_eliminado`.`usuario_id` = `mensaje`.`usuario_id`) and (`mensaje_eliminado`.`eliminado` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-22 10:30:35
