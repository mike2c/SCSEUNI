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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,43,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beca`
--

LOCK TABLES `beca` WRITE;
/*!40000 ALTER TABLE `beca` DISABLE KEYS */;
INSERT INTO `beca` VALUES (1,15,'Beca de cursos en asaber que','https://www.youtube.com/watch?v=TEDWfjDc_fE'),(9,29,'Ejemplo de beca','https://norte.uni.edu.ni/becas'),(10,30,'Prueba de beca internacional','https://www.facebook.com/?q='),(11,31,'Beca en asdadsads 12',''),(12,35,'Beca alimenticias y de transporte','https://norte.uni.edu.ni/becas'),(13,36,'Una publicación larga 123456','https://www.youtube.com/watch?v=vOlF5YRV8Ow'),(14,39,'Prueba de beca con imagen','https://www.youtube.com/watch?v=vOlF5YRV8Ow');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (16,'22222222','2222-2222','dsadsadsad',6),(17,'2732-2264','8494-4968','Antiguos molinos 2000 75 vrs al Oeste',6),(18,'0000-0000','0000-0000','',6),(19,'','','',1),(20,'','','',1),(21,'0000-0000','8905-9755','adasdasa',7),(22,'2713-7777','','Km 100 carretera panamericana',10),(23,'','','',6),(24,'','','saddsaa213adasd',1),(25,'','','sdasdsadsa',1),(26,'1231-2312','1231-2213','asdasdadsd',1),(27,'','','',1),(28,'2222-2222','3333-3333','dsaddadsdsa',1),(29,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL),(34,'2222-2222','8494-4967','asdasdsadsadsadsd',1),(35,'','','',1);
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
  `nombre_curso` varchar(80) NOT NULL,
  `costo` float NOT NULL,
  `duracion` int(11) NOT NULL,
  `libre` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (5,40,'Curso de photoshop',20,8,1),(6,41,'Curso de topografia',100.012,8,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino_mensaje`
--

LOCK TABLES `destino_mensaje` WRITE;
/*!40000 ALTER TABLE `destino_mensaje` DISABLE KEYS */;
INSERT INTO `destino_mensaje` VALUES (21,95,19,0),(22,96,16,0),(23,97,19,0),(24,98,17,0),(25,99,17,0),(26,100,17,0),(27,101,17,0),(28,102,17,0),(29,103,17,0),(30,104,20,0),(31,105,22,0),(32,106,20,0),(33,107,17,0),(34,108,19,0),(35,109,17,0),(36,110,16,0),(37,111,16,0),(38,112,17,0),(39,116,17,0),(40,117,17,0),(41,118,19,0),(42,119,20,0),(43,120,22,0),(44,121,17,0),(45,122,17,0),(46,123,17,0),(47,124,17,0),(48,125,16,0),(49,126,16,0),(50,127,16,0),(51,147,19,0),(52,148,17,0),(53,149,20,0),(54,151,16,0),(55,152,17,0),(56,153,23,0),(57,154,20,0);
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
  `fecha_egresado` int(11) DEFAULT NULL,
  `contacto_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`egresado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egresado`
--

LOCK TABLES `egresado` WRITE;
/*!40000 ALTER TABLE `egresado` DISABLE KEYS */;
INSERT INTO `egresado` VALUES (19,'8009-30761','161-090392-0001Q',1,1,2015,17,2,10,17),(20,'2009-30756','161-090392-0001Q',1,0,NULL,18,2,12,19),(21,'2009-30768','161-090392-0001Q',0,0,NULL,19,2,13,20),(22,'2009-30765','161-090392-0001Q',0,0,NULL,20,2,14,21),(23,'0000-00000','161-090392-0001Q',0,0,NULL,21,3,15,22),(24,'1234-12341','',0,0,NULL,23,1,17,25),(25,'1111-11111','222-222222-2222a',0,0,NULL,25,1,19,27),(26,'1111-11111','122-222222-2222e',0,0,NULL,26,1,20,28),(27,'5555-55555','111-111111-1111g',0,0,NULL,27,4,25,33),(28,'1231-31223','161-090392-0001u',0,0,1231,34,1,29,44),(29,'2222-22222','222-222222-2222g',0,0,1231,35,1,30,45);
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
INSERT INTO `empresa` VALUES (5,'Universidad Nacional de Ingenieria','0000445589-642j',9,'asdada1\r\nasd\r\na\r\ndas\r\n','sdasdad\r\nasd\r\nas\r\nasd123123','adadad2','http://www.norte.uni.edu.ni/',16,16,0),(6,'Aalfs','1665550000-8777',1,'jhjkljlkjk)))))))))))))))&&&&&&&&&&&&',')))))(((((%%%%%           ','Investigar ocupacion','www.actualizarsitioweb.com',22,24,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_publicacion`
--

LOCK TABLES `imagen_publicacion` WRITE;
/*!40000 ALTER TABLE `imagen_publicacion` DISABLE KEYS */;
INSERT INTO `imagen_publicacion` VALUES (1,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�\\0\\n\\r(\\Z1#%(:3=<9387@H\\\\N@DWE78PmQW_bghg>Mqypdx\\\\egc/\\Z\\Z/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc��\\0h�\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0N\\0\\r\\0\\0!1AQ�\\\"6Taqt����2���#BR�Us�$357CSbr������d��4��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0?\\0��Z(4Ҿ�\\n�g�ls0=��v@=~*\\n�+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������x8�y���\\0�<^<��҂�������4?;���qx���\\0J\\nz+���ǜ����S����h~w�()�/sC��O�9��������W�;��r�F��a{�^�:�UW@DDD@DDD@DDD@DDD@DDD@[^��j����X�����V�gob	TD@DDD@DDDAu��Z�P���I�K\\Zyd��v\\rI\\r�8#ÝP���1��0�g�z�Vqwkc��f�ځ�\\r��#\\\'ܼ:gN:�2t��������?�M�V�j�2�\\r������`�yc�X���v띶Z)�-��ʯ����}J�W���c�2���\\n�&������&Kwc~2XA~��b�[%��mlnks��r\\n/K�ص�@`�y�6�v�����r�J�d�:8���;�p��P��m��km���/�\\\\�0�\\0F�����^�\\0�d�^#�E@j_#Z[�1�N1�Y�����g�����PM3X������\\\\�L�]��y^�M����\\n��*��~9g<t����zM���oG�>�{�{Rt�a,}>����q�? ��/�\\0���Wn���G��mzp�\\\'�-+�s�@��o�(�Q���䇰/\\ro����\\0���(-�r�\\0\\r��ꖳ�tnČ.�ϧ*&�\\\\2���lT��|���o�ߌzRGWء�������ǲ2~�\\0zr�m��^���|e�X�cO�SU���چ�]���^Z׺m���S;��i}��\\0�A�jZʦ���S�(z#!�t��F�/,\\Zʮ��\\r��5T8�/\\rޤ(���4��tQIHֹ�\\0�⪱��N��g[�l���!� �vJm&��K4�\\n�$��ؑ�\\r�X�_O��Ѿ{}�i� I��z0��6k9YIZYK0s\\Zdu�\\\'��B��]W�(�`{d��䁇\\07�pw����MI��Z�兄���<r�q�{�d:��=7}ç�}/ �yo^0���}0�H�Qԉ�[���� ��ɪ��#�e���~\\0�\\0����Yh���g�\\r;-fӚXJ2߫�j����� 0��a�1��O�z(j�Ӱ��������+�h�\\\"�Y<�M-)lߺ1�;qa����DA�<���;�(��Q�����رDD@DDD@DDD@DDD@DDD@DD��&����Ŋ-�K�5n�v� �DDD@DDD@DDDAX�i\\\']o\\r�G^�iֆ�8#�r� ь���˭�k����^07u�R ���Q7P�w��N�g�ώy~k�Q�h/��5�|D���	#�XE���	$��sP�$n�v\\\\^�i#kCvY�s��Y�V-\\Z&�eE��=ã�k0�z���)n��EP�#�ZY���� �)�a���j�5��r�vq��Lݬ�,M�E\\\'{�ݝ��T� ��P�KCML�;�6�8��c*],�5So}�A���n8�N�xX���H�\\\\��EM�z�c`ݴ��\\r��#PQ�Nj�y\\r���?5�.��E�uʜ����>���Ο��E�\\0�	!i���Yc�D%��H�2�ݣ����\\0T�Wd�3��9^��:������O�㿢�\\0�l:N��L|�9�d����٩��[�S�x�x���z����\\0<w�_�\\\'۝?����\\0D�iZ\\\'٠�G$���F����\\\'ޣ�ѵu��\\Z��L�� ��q�{Դ\\Z��<BFܠh<�vO������lq�i��\\0$�z�!������1D�օ޸##��Ej�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QwTj���l4O]\\\'݋�GYA3]]Ko�3�L�c�x�F��\\0|�Gi�KS�7H��P����k��vV�\\Z��-��9�ڭm����������������pַ�AD�F��\\0@��y�l:�����p����e�5��|���>����ܧ�cm�p?0+�K��.��;/��{��e����\\\\��ÛL�}�+�h�@sv#��v��c��H\\0|Uǣ�y�/�]�\\\'Gr�_�;�A\\\\�!jv�Y\\\'k�%N�É����.-h�Z���2�ڥ�޹�\\0�+C1á�����f����K[Q<��o2HH\\\'�x>�S������K�ixCIm��pi�-Ͽh��,u��,��#��f��.�+�Y\\0$\\0��y���j�� g�0J��襴���\\n\\nBF�����.b�h,�{�Ý�:�Ǘ#�Y\\\\T=�3j�B�\\0���7q����A�.���#�h�K�p��=@��y��)�%4��]��X殣h8��K�H��Z7�ˆ�\\0B��X�`|n�(�ƍ����Sm{�l�q��W�j�j��=<��\\\'���;���Sܨ����>7�o�z�N�ϥo���^�M+���;�<�� Бp�A�<���;�(��Q�����رDD@DDD@DDD@DDD@DDD@DD��&����Ŋ-�K�5n�v� �DDD@DDD@DDD@DDDAÎ\\ZO�Pt%.W:��f%���C?��j��V�<�Cg{Kbh;ˏ1�⣻�P���g�h:���=\\\\Aj^\\nڊ�P�J �#�^�_�F8p���^gG4�VH��i�9��\\07<��:a������S<�����G!iu4yo�����:��;��\\0���vA��Ul6�N3�`���4Ԕ��؞.�ŭ�\\\'�������(���<���\\\'�W��4�$od�s�,sNA;CR(�u�H��w������^��P،a�d��h8�����CpѼ����$�+�R�Z��U�����I���pQWJ�e�5sw�,kF�p	����4w��7fF���p�Q�ڌot�ٟK.	�ۃϥ���ˢ����k�\\0hH����\\0A��z���S�H��vH���MD�.lQ6���	�t��v�\\\'��g�����ۤ4�q��\\Z���9����۪)Ĵ�se���$g��T���mI�l-l�`�����Һ:vJG��r���t`��\\Z��zzC�F����Z�Čl��7��`�� ��w1u���_�+��״��m��z�z:��o�>#����+B�x�al�H�#p�^ÐPGj�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QC�{�,v��q��$M�����aQu�Q�l��a{���w�<��>k�/����i�����;\\0W*g�&�=���a�\\07�K�ygcԼ[\\\"ZqlL��e)x$F��ָ7��(�����ptP�p�\\Z�JI����� �J˻��2jH�̡�>�?�������L�*#���x�Cȏ�x�՚��,�|������S�T��Eb�\\r�tN��4�}3� ���Ǣ�g��s��*\\n��s�GLm�F�C@�/�؝t�e|t.���d͏;�^����Yb�d��1���8�<wu��6����CMOEP�HCK�<RN8u.{�QS���I��]-o���R�ON��ѽ��L�t���OGO����i.,?x�x#�;U�tVQ��S�\\n��$n!�6����ս��f�w4m��w?��%v����GQ�L6|v���	VKf��[�|���_��/���\\nx2�hZ��6����;�DfS�G��O���qQI-K�H#s�=N�V=Y�$�Hە��;�X#xῑQ�Z��/z�\\Z)��\\0�cpO��.<Z^�zn�eq�4qg�������\\0p�r6�=D��*�lk�\\\\j2vO����7t[[c&*d��KCs�ʋ}�W_��[�u%>p1����>�J�� 0Op�����$x��-\\\\u����bB|F�!�[�$�^�e�5���Z�exnc.�}|O�Ф��\\r���\\Z#,p�k���`��릫k��\\n��K�̤8�F�F��޵h�Vi\\Z����{\\\\�#��<��/~��Vi��\\\\�E#�u&s�x{�����mQT�и�����inv^Hx���A����IWOO#d���-sN�0��o�����]��xv/0�s�*������������������������/�ջ��رE��&����������A�.do�D@DDD@DDG֣:��	�_����\\n��\\n�*��=�Q�筤�\\0���5�ZP�E�W��H���U�4}�kO|8�쌑�U�3_5U��lL��_��ǀ�ߌ�����Ե\\r]\\r5��$���/tgn!���m��\\rgIhk#4�G��F���?����Kv����)�#�ۆ��`�P��UE|��R�e���kq����`�����edO�oh�҂O�[=S+%��5M#\\r�R��j}�\\\'\\Z��f�[N\\\\�w/Z�e}MXs�)��v̳���H�I��۽m֮��2Q��Nn��\\0p�\\0��\\\"��^��8���	�wdGՕ�RӲ��*x������*���GUF�\\\\�TӍ��4���~�o��23ԃ�~��š=�-F\\\\�/I^\\rMv�P=�Z�fzP�OV���k*㚪�.��\\r�Xs�q܂B���m���j0�y���J���a�t�ڍ���;`�r\\\'�*��������D]^׵��9�<y����Jy!���=�`{#�������54顎\\\\p�hv>*\\\"�W�h2��D�w�w�\\0ʅ��N� ��KP�ݭÎ8\\r�-���[�w�8���mܡo\\Z��lq�\\\'w���#�zʨ:�Pj;еU�>��˝�hkq���W;.���v_���@�\\0i.�z�\\0��z~��TV�Na���[�]Þ��qV-/�-��७��jc`k�)�]�y�u��*[c���Q1ؐ�n2~<>)g�v��%�����m�X�F�w�@A�����i�;og�f��7����t����.s�\\\'��NT�Oo���^��B���	8�IϨqWiCEʊ��\\\":h�+�p��nO������:8�x�{@|>1��ܩjըf�����)�%����x;�V�;�B��\\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -�K�5n�v�,Qmz_ɫw����\\\" /\\r�c�-gI+�gB콼[�{�V��j��ûDw9�i���s�r�3k�p7+b�h$������\\\"\\\"\\\" \\\"\\\"\\\" /���1�xk�<��D�����m5�y��ˣ��o-=�Y�c����3�\\\'E����W��Lf��J��ǯ�*X�-_���f�w]*i-�߸i2HCq��N�\\0>��\\\\�ֺ��e۫��B\\\\�܂��8�7K�F�i-gOX�����q�Y{�T�hß�H:�� ��k�]LX�.���x8	�aN��-�[\\n�w�Z� ��qTY�i��ПN)��xC�(go\\0����)��綉\\ZނJ������A�\\\"�V:�j�m5pv_�`�G����q�����w�v�,�L�����וw�b�SRZig�Q8i.$dd��Z#�uo5��T��w��2�z�QZ)`t�\\\\ -���}�E���$;�$����n�V�Z�i�}&���bc�4�{\\\\�|n~��4]��0r����˪��V���`T�x���7�x�l�j���{���gm�q��\\0�F�kLc ��e���3���iG~�����F#��bFi���r%s�U3��-Q8y�~���mV\\n\\\'��a��0r�������^�u���i�F6��;�\\n\\\"�������O�K�y��}���A!K�������� �665�$c\\0��w��smК*-�S��o%��u/.���[=oG;(�K�F��*[W�䫨�MY���@�� \\0?�wւ���f�y/�ZXԮ\\\'s�!�r���d16(��5�nxlV�l�ȩ\\\"�@����<T���s���&���0|=��y�<:��}�R��ֻ)�����K9.��ԥ���Ԇ+eBj��,81���]�OK��}��[����c<��҃��#l��\\\'�����t�x�B˖ת<���;�(�����������������������/�ջ��رE��&�������׽on�d��?�j�0���p�U>E�*��<���8���YQ:��f���4\\\\O3�U��t�i�R��<_F�f�ԗz�3��Ko@�3.�h8vw���h$���������V�g����8�\\\\׍��o9�Ms\\\\�ZA�A�����\\n���V�\\\\L�v��X^8��Z�e����-<�A���lw\\\"�;F��[b�|�}l,ā���#�Yc���ڋ��M@k�	�F3��+NAH֞Ui�\\0�G�ڧ�s&��k\\Z\\\\z>\\0g�P:�ʭ?���\\0Uʦ�SK�#:��r�9�-$z��u�f��[���4�2eۋ��\\\'ѽv>��a�ZG<��:���:���5�\\n��|����^0�.��!�����v[�h�^�4�Ue��**�e����9iaG<�=�LW_ �Z7��ݲ��G����{�b��\\Z�r%��p��{����\\0���7�]�=_ct}�#ٓ�?��E��i�d���Z��#\\\'�AX��r��|�NuTC�dd\\r��s+����\\0���\\0�����t%��WW%L�O;C\\rR�\\\"�n�O�U�G����k>1�AB���~�&6��<\\r�s��;��銫T�1W>0j���g;##�[Z\\Z0�\\0�*���\\Z�G~��6z,��nݟ~���\\Z�M+$�)o)H\\\'Ԭ,���e�k�\\0aV������5�\\Z��X8���d�>�Q|��ʇQ�\\\"u5 w�(88� �Ǩ��}T�t�l����elc8wg�䭚SL2�}U��(��w�g��W~���v8��	��v�#���\\ny|M+ �����08�A}\\Z	\\\'\\0q%g��P˨*�Y^�]�3���y��J0ߵme�Xɂ#���G�=��Z��Z!��c���c{�F�;�R(\\\"�G�Wgwb�ת<���;�(����������������������Z��M[����+e��y����=}������w~�:6��Zָ�\\0�(\\\'��QD�x� ��;d�R�\\0\\0�tVU�CJ���q0d����t�ꩤ4PLhc;\\\"6p�˾\\nsR����SI/Җ�?�g��\\\\�ࠤ���6�67\\0\\0�����MGi:3M]\\0�yc���,�~��g,�7H��їc�;�_\\Z��m+�b�Q5��;�|ƐN��Q�t5Q�QCU!�0=�も�n�3R�ޚ���H7\\Z�>#�W\\Z:�j�Dԓ�h�6������E[N�[ȑ�z���4�~�{�v\\Z�t1��F<����\\Z(�5zm��ʠ��ؑ����@DD��g���O\\\\��(k�\\\\I�2w��V��5�ak�APZ��n�[A��3vI���5���,l��i�D�ׁ��A��c���&�/d�.@�c��Ң�I_�E�E�RG�w�ۗ+��] ����� �k\\r\\\"봦����Mf�7I��_��Oi��Cr�Sϑ,�2��ޑ����1�����G��XN6�0Z⚢��K����5�x<�h3���-\\r�����G�vK�z�R�x��j����[g\\\'���9��+�F��T���n���|Vl��QUzkL�nQ>74m���;�&��[�t�dU4�Ldi`c�����r��7���.��^ȃ+A;�%�KM��+���t~�/qV�x����������;|�z�&W��k@��r��Z��n�Q�[R�Iv#nK��xu�t~�t�ْ��\\Z�݌upS��688[��9s��.���8�K��wl���_u6�&���������������JK=��>��yc[��\\\\�ӏ�\\Z\\\'��8�_ݷ���AU�w;dnl�J��\\0E�y*�M\\0e�#�vz(x3�����R��.5���Ȥ���8�x�$��4Td��}Ӹ�z��Z*��[%ұ���f���$���;��WYQЙ�e��on��o����w��	r���<�Cm�����L��[�?PܼT\\ZZ�*�����a����o\\0����_���e6�����E��q��ʺXlv:V�\\Z���G���z��j��C�QS�!̎.���@DDZ�ɫ����b�k�M\\\\}�݋@DDD@DDD@DDD@DDD@DDD@V�);�:��L�6\\n���k��T֣����-�Ĳ�*v�Rg�#�r�g�z�N=���\\Z`F��7s���%�R˕�x22�	��^QT�;��&ql잜�����i�v���_N惏�v���sF��c^��d�ֆ�5�\\07\\09/�H�ǵ�;� �����������w�GXP:�SRZm�:)㒩��&4�a�g�@hg\\Z-Is��0���N@��}J��Z\\n�QKG=Ƭ�5i��-�\\\'�*ڀ�����20UJDmz��m�g�-.������\\Z�n�7ֶ)�v��\\0	\\\'�>=���q���1[�i�U%1I���3�:�V	T�cI=��M��ۖm0�>�ܮv��.T1US�9�7;�pz�<w))�\\\"�F!y�&�O>�^��\\\'�S�7|D_O9�,\\\'޾G޽rF�XY#Z��`�� �m��Ms��N��z�8���N��fF��_N��ZCE v7\\\\q�.?e��\\0=O�̟R~˧�z���>�~�-xc���!��Һ�۬p��p�n\\Z2L$4�Â�m��	.�d�q�t�;���+�;eo���p\\\"1��5��Ma-���@\\\'�:N{��<��:���sf��K���&����d���Y\\\\�a{�#`�I�\\n6]Kf��ڸ�L_xg�փ���T�t���\\n���Ι������X!��]�[~��a۽>��~���cKa�t�8�9���|Q�ە�aW��_�Dӓ��� ��ՠ8Pij\\0�;s�����������+h��!5l��\\r���ej��U\\r�.����d\\r��Tt;{j�]���-+���3��?����L�l�u4[r���op�˩L�=)y��Zi�*�Q��;��N \\\"\\\"\\\" ��M\\\\}�݋[^��j����X�\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"����V��رE��&��������c�\\\\�}a}\\\"�����TP��v���7��U��[e��*x�m-V��s��VB��\\\'��B����j{�1���@\\0�\\\\�>o��W��\\0*�)^���U��\\0��۴��X��UHß�cd�µ\\\"\\Z�ֆ�\\0\\0���U�F���X�}���V=�[� P����#��z3SV��V�I�h#-�����jV�( �ce��X8 �Ḯ;�Q��s��SW#��v�.c$�~4eN��h��ih�&�<����Ԭ��U�ycvY��?�#�zi�7{$=��KD-/h�oT��;y�UF��3�����������{-=�UG�Z9�j\\nm\\\'t\\nQ!��G5��h��0�Yb{\\Z��P�hg�!{�m�5����)���QQc,`ߝߪ�\\0�6?�8>+��Xة�k�&N1.!q�2��\\r��������[#m�%�6�p����$/�Em�MR��\\0\\\'C���Yr�W�v��@��q���+�5-#6)�ⅹ��7��&h���d�.�-��\\Z��?%�v�v�kMLԽ����.`/${��D�L:n��~ú�7���u��ӭtp���G2G�e��7�����s�����f{������ .`��� ������N��p�c\\\' ���s�+����U-[��-��\\ZƘUiz�쳤�?�����:�����>c#�pw�X�Ej�&�>��Ŋ-�Ty5q�wv,Qmz_ɫw���b�k��M[����%QR{��lߞ֫���澳YY�L�1�x����\\0� �\\\"\\\"\\\" \\\"\\\"\\\" �PlO��\\n\\\'�[Q%�n6�;C��T��t.��/�\\\"X���A����&�5W}SI`�4�4<�q;������Zˍ���=͙���U�Q��*��[D��a�3�6w���A\\\\��.��W�=�B�Zב���=�I�����v$hss�Va���b\\r���mx%���cz�,w*\\n�t�A�\\Z#\\\'�n7`�h�������������J��h�.(;�\\r���J�u�������G�k��1$�yu�������\\n+_I��ǘ�6����6�Hg����3%kHt��{�;9� �i�D\\Zz��>��-%���7�5�K!cO�\\n�@DD���O\\\\��@��E�>��Ұ9��{ˈN�\\nf�O�v��r힒7=[�{��ϓO�7�-�b�p�Jr\\\" \\\"\\\"�Q�����رE��&�>��Ŋ \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -�K�5n�v�,Qmz_ɫw����\\\" �Q�\\Z������m<a���4�|J�*=�3S�\\Z�4�qu8pf�[�^(��������wj\\\\�rnl�#=G���b �h����Xk<Y`qt`����^U^[_CUO�nı�t����Ob�Zn0�m�U��Z��<�T�G<n�V5�p�k�AT���������K��h����3ɤp\\n�(#T�$�m򃤄�:F��F�!O��$�2�Sq���G�J�9�x��:���UZmՅ����R�q���\\0n�u\\\'�]�.����8ˣ|�;���9e�ˤ��_L��x�ײ�H�4��PT��7���v;c�w�G7h���7�b�7���P��8�������k����5--���R�#�&��q���ܪ\\Z1�]�m�V���<�<y{��j*�R�+�`ͅ��R��w��,{�\\\"Y�\\\\�$�F�wZ�۝5�����ås3�����1�ul��(Zd��D��Ҽ�+N��\\\'\\\\n&�l�\\\\rX�����lmk�\\\\\\0��������.xl�ԩ}�]/zW�g����$c\\\'�\\0\\r�t���p�R�w1�����\\0�R�m�r1�\\0��V��j����X���G�Wgwb�ץ���{;{(��/�ջ��؂UF�J�Wy��ٌ��3���+�EL��*&dL$��ܲ�6���p�2�����anx�pq�oA�\\\"�GU�k��\\\"�(㹮\\ri��\\\\�����3ރvۇ0���dw���d{X:�p�5�U4�9��o��*��|��e�yX\\\\�vd�K�K����J\\\'������%~��?�)���XX��\\Z��?#9���t���y�����vG�,1������\\\'������\\\\	���L\\0H^�P��yl��RM53�`������٭ڧM���V:��7b�wY�A�\\\"��z���H�#�n�\\\"\\\'x=c�)�U4��SIO3v�������2i,ڊ��;�i%���#~�X��W�I���@���\\n�����.�QAvE�S�\\rE=8t��#�X���)e�T���I[�*\\\\vIw���� ���r�����������p}K�:���7/�Z�}-��MQ-���cw�/;�YP��f�:�[���#.s����>��f�V꫋.�v�д�����ڃ�JY�����B]�cp�8�}C������hk\\0k@���@DD[�즶��)��8�*�s6b�;�q�9ߎ#Hk{�h4���/5�n9�٢�&��4�T3bO�\\\'��B	�D@DDZ�ɫ����b�k�M\\\\}�݋@DDD@DDD@DDD@DDD@DDD@[^��j����X�����V�gob	UOԺ���ʹX��ֹ�/x��O���,��Q6���\\\'�U8�`8����� ��е��O}�H眓����\\0�{�Q�u��e�F����+�װ9���G5�OIOLd0B�̮�ykq�z��DA�����*E9��1nЏ>1x^k�ކ�I[P�������\\n����Љ/���MQ�\\\\�p/��=��y�m$�N���{��_��Z�ޫ+�Du5�ڥ�R7,x���~\\n����i�+�zYIh��\\0��AmU^��L����R��V�/69ia L{8�H;�#|�r�8�1=�k^?���Ym��-n���U7ݨxt�d�g;�8V[F�e���mڞsQJz,ǃ�:�TLT7mMq��[���Ѹ�vI>����\\Z�\\0u.U-ku���_-�嗴l�<z��:��$M{��:3��AeE^�o`���7~��j+\\\'4�z��HN�n~�At����#-D��6�s�\\0T�Ƶ�Z���К��#�\\r��k�����:}CZ�3;�c�}܇%u����ϒ�N�Q+�c�%Ĝq�PAI�[�������t��A���>�`cZ�1��h��U=g����������a��Wn@DDDAK�+?d����|�Mh@=�[��pǣob�j�\\Z�gf�{�\\\"8v#�w�^r����+Ty5q�wv,Qmz�ɫ����b���������������������k��M[����[^��j����A*�\\Z��;����M�&�4�\\\\���\\0X��k�x��G\\r�\\Z+-��x���\\\\,���x�:�v�1�F��j���!��窨���\\0��gvnMl�R�p��%�cdk@�[��?B�슋.��Fͺ}A+�\\\\����_fǬ� ����\\0��(.�㧇��>`�1�{��.���#�h�#㴻\\\"�o@#h����c�-����z驭v�c�����p,�GY����0���NOBv��.�譺��@��,5$m�8��*�O3em!qo\\0���ABʪ�W=��L�f�-��ˋ20��VKN���P���{�4�\\\"�^�vŹ����T�І��3��\\0�9��*��TЁ�*�h�kY`���\\0����=�<]��1���H߿�U���\\0����h��j:\\\" �u5;�\\\\�#s�X	+��lm\\rcCZ8\\00� ��6Jݙ׷��!F}���l����YD���e�|��Eo��ae4P4����zU~����W�=H�\\0d�^���mm=;����F��q R�W�/��p��i_�α��\\\'�}\\r��+p��X(�P\\r��:��]���k])i�3������\\0\\0\\r�.QQk����Ա9�6�����p�*�n�+{��͆�Ұ��F0;U�V��j����X���G�Wgwb�ץ���{;{(�\\Z��AC$0Q�8X��;$�����>�UYkcx�s�\\0�8}J\\\'�=�ͨ~G�J*�+�3��Q;J��tm#~Aߒz�h�ޝ�\\ZZ�� !�P9+�FT:�K�9�\\r�t{��q�*v��W�MG4�9�X��8�uZ5���o���\\nWGpdc��s����/��x�j��\\0RxG�y���\\0���/��x�j��\\0RxG�y���\\0�֨�����\\0�,b���w\\Zj�[SS}Ή�9ߒT��{ǛP����\\\\e���c�L�\\\"�,Ǎ������G�y���\\0�<#�<ڇ�ԃ@������\\0�*#���x��M�뫝ƆZI��lr�e�6������J�Ei))h�M$��y$�?ă\\\\E��G�y���\\0�<#�<ڇ�ԃPE��G�y���\\0�<#�<ڇ�ԃP\\\\\\Z	<�<#�<ڇ�ԼwMov�Ѻ����0���ՒJ\\rn���lԖ{|�r��I����Z��\\ZF*(�����W�v�ߌ��J�Y5ee����tԄ9�N|�qs��R^�mC�?�A���r��\\0��6���\\\'�{ǛP����j��\\0��6���\\\'�{ǛP����j��\\0��6���\\\'�{ǛP����j�iP�C��.�,��=�ͨ~G�K�_�.��3RKc���,c�\\0�x�\\\'���j��wW�ٖM���<w�دK����%zRSRm=�.q=xpR�mC�?�A�\\\"��#�<ڇ�Ԟ�mC�?�A�\\\"��#�<ڇ�Ԟ�mC�?�A{�M\\\\}�݋V��yt����h(��,qk�W���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������','image/jpeg'),(2,'����\\0JFIF\\0\\0`\\0`\\0\\0���Exif\\0\\0MM\\0*\\0\\0\\0\\0�i\\0\\0\\0\\0\\0\\02�\\0\\0\\0\\0\\0\\0&\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0���\\0\\0\\0\\000\\0\\0��\\0\\0\\0\\000\\0\\0�\\0\\0\\0\\0\\0t\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\02014:05:17 15:09:08\\02014:05:17 15:09:08\\0\\0\\0��\\0*\\0��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\n}http://ns.adobe.com/xap/1.0/\\0<?xpacket begin=\\\'﻿\\\' id=\\\'W5M0MpCehiHzreSzNTczkc9d\\\'?>\\r\\n<x:xmpmeta xmlns:x=\\\"adobe:ns:meta/\\\"><rdf:RDF xmlns:rdf=\\\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\\\"><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:xmp=\\\"http://ns.adobe.com/xap/1.0/\\\"><xmp:CreateDate>2014-05-17T15:09:08</xmp:CreateDate></rdf:Description><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:MicrosoftPhoto=\\\"http://ns.microsoft.com/photo/1.0/\\\"><MicrosoftPhoto:DateAcquired>2014-05-20T09:09:40</MicrosoftPhoto:DateAcquired></rdf:Description></rdf:RDF></x:xmpmeta>\\r\\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                            <?xpacket end=\\\'w\\\'?>��\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0��\\0\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0��3� b b b b b b b b b b b b b b h\\0\\0\\0b b iqc$D$D$D$D$�!�1�@�@�@�@�@�@�@�@�@�@�@�@��\\0\\0\\0\\0\\0h\\0\\0�@��\\0\\0\\0\\0\\0\\0\\0\\0�C0C0C0C0C0C0C0C0C0C0C0C0L\\0\\0���?J�|��X\\\'`\\0&\\\"!�`\\0\\0&\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0( ��]NW�_C��;�C�=n��\\\\0\\0\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\\"�w�ZVd��I��=�w��:�&���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0N��7��k�|�*�t�\\n��(gF������g��?�u���!4\\0\\0\\0\\0\\0@�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\05�����Mj�ʫ\\\\$$�&�ιu�6DfI:��~��AM���\\0\\0\\00L\\0\\0\\0\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�q�X&��;V��U�&�E�G\\ZS��o�{,����;�b�/��{_C�{f� \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\\"K��o�7��<�.����Ӣ��K��L#%�+�{���2i��3��wj��Y�r\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0L��/\\\'��??7�ǰ���g7��L�9�!U��*U���J:����P�O4�a���m=v�OT`�b`\\0\\0\\0\\0\\0 `(\\0\\0���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	�W����{�Mp��:S���)�pD�BN���D�%�Y1b��[������ԧ�y�$�e��\\0\\0<��V��*�S=�\\0\\0\\0\\0\\0\\0-`H\\0&�\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0�\\n3Ez\\\"���x�x�m�Tm�s.�����/N�źyP��9PN��gN�}��l��Zud�Y�>w�N�cEƃ���R��/$�P�2=K����ܡ�b��ԕwV[%�\\0\\Z�\\0AN��K��ac�HB\\r0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`\\\\^+M8��DW~<K���\\r��*��`���dR\\ne�s�Z�=�wo��=����6�*�Yցk�Xp��~�-!��\\Z�2\\\\�L[@�s\\Zv\\0Z�P�-0җ5��8֗��㙨�.**�2!\\\"-�\\0\\0\\0����s�&n\\\\�D���N#�-[#!��B&ֲİrF�\\\"�i�J+���O���\\\'p@�LZ�>T�5��������h\\0\\0E��J^�K�u%���#(�h\\\\�A]#\\\"�$���J1j�W*Z�,��c��eT�_�ʗ\\\'+VX�3��d,�U+ґ&�#��\\r�)$��?��?i(�\\\\�(\\0\\0# �\\0	���[�RԘ�\\0\\0P�1�/Y�������\\\\�K=\\\'@î��$��H`���g�e��(�J\\\\��Ե�]S�l�����������Q�Ss�;T�$��	JД�bd� &�Me��n=��w|�\\\'r\\0\\0�(L�@��2��w�\\0\\0�0��_���ЕkS1a��(�qz�mv�;��`�y�d��h��z�L�u%�]r�y���8����ήu�&N��5�+�h�W!�R��B$&114�\\n,�������>�������\\0 Hk\\ZRL`�\\0\\0 L*�v�����+^��\\\"�O7��ǋ���{�ञ�W��Ƹ��xu���Ն]��!�S�e�BG-���E��G+�n�5E{3�\\\\�e�蛁df���)\\\'I�R�  �1�	D�͢��|���+�\\\\������\\0!�fjcVl�\\0\\0�Q9a�[�Vo+�|���F��W\\nçnKV��bc�ؑ���3ʯZ��G�s[��LB�]�)�ٔ�Ϣ\\\'�$e�Q�,ݸ�g�bl����jj1���r*VƪS�(�dI \\0dd���-:~�����r�a�<��z߭K�ҁ�r �A�4�`t�\\0\\0W8��Σf{�C�y3�s���L���L�&u�%E�Y��\\Z��u+��[b�]}�h�\\\'�N[\\\"�N�Fze�r�%(��,S5[	��\\n,*��l�� I�(H��ō��������=������e�!_I��{Y�\\ra��\\\\�e�He(Y\\\\���7T�����:�����jtq�Ǧ�8�H)ĊiA֕�(�M��ޯ3�-\\n�.YG,g�k�:Ԡ��هs,�-��+�TL�e��4*]��mnQcpUb�,�5��}_�����J\\\\���F(�}_��WѲ�r��\\0�ROP�\\0(�p�����9�.������z9�ͩ���s�I�D���ݶs*��V�c�t3���p�~n�\\\\G&�Y��Fh��鉹S������	(�Tz��(��\\Z�oFx��dԤܰ��Y��iыY�6c�Y�銳ʽe�k;=������)6��\\0`4�\\0�\\0\\0�Bpńlk%ו���j����|\\Z�6��Z��q$@I۟t�9�ly�+q�U:�qs{x��s�|�����\\n뚧��q�`����d\\n�՟,о��%s��T���f˷6�^ܺ5��8��o�\\n��TY��M3F�/κ�\\\'7���K3�\\Znc\\n\\0��-P���q�6�sZ댇����>mY�ب�i��5\\0����y띛����=�Vz^����S�۟�sNq&���M;�5��$\\\"�U�p����D�)�XBh܈��j��آ�]��,�=UT�q�l�����z�Uԯ�_=~�W>���-��@�����k�w�w�=���T��-e�M&�eV\\\\�%Y-v-r���.�8��1�{p/F�U\\\\*�j��H��I��x���]�% �d+�H�R�UV꾮�D���PvES��Nyzs�A^�3$�4m��;�|�~.�+�Y��Ӎ->�q���PG�z~fu�0{n{�g���{.��,�	�3y�[��;�|4ê�t���=g��#���_>���{�.B�^Z&�g�fԀmc��n\\\':�V	�.���pF���5U�L�����di�j��2荼�ܾ��X��\\0��R*,�{O#������ۋ�����vx�\\0A�\\\'H��\\0,�!7��u�q��ϳUξ�;��9���K2WV1�8Y�U�+�S�~������i�U@�Qa�ġ�8	��(���l�ЕA�(8\\\"��!R\\0�5B֔Z�\\\"6�c*�����drH���hOG�>x��n�nZ2�˱��_3�ſ������o����w��A-q�nw\\\"�5v�}��6C�O&�W=C6vP����l�q���*��H�D�����D�[m�䒪�	Č\\\\iBPF�KJ��26۞�̨͚q��B�\\Zb������>�k����(�͟L�|μ�����5L�C��w��ӏc(%���Ž<޲^R��_A��g�;�:4pJ��U��r�n��s�\\\"9ۜ&D4B�F�\\\"DP�%�/t̼�ÉQu��HL�+l�:�^|w��r�E�z����lD�f-�P�i)+0��+x���MՒ�5�}ϥ�ݮ~�P��-{_>�W(��eez�,�����1K����ܤ�h�:т\\\"$8�6*K͘v���AIąYe��r�$�hJ%��8��(ĕdB\\r�RJ)t�J�WW��ߐ�b���*ȇ�T�2U��sr�;�:[\\Z�[�����o�y�^�n>�����7^�\\0.Rם(���\\\'S2�$�DQ� �ۋg��H�$� V9D- D�dM�&�g�t�DY\\nDT�B@�N����+�\\r�t�I�R��lk�n/?�\\\"\\\';V%)]�b{��u��a�o-�����������S�O)Ĝd� 8�	%�q S��sn�{�wC3��S�W)�H�FD�(�D\\Z;h�ji�V[�ɡQ%��E�������u[EU\\\\�rBRұ�A��!�[	/7�*N\\r\\\"�J���s��=jo���y���k�*�}|ҊQqQ*�e�#�J2�!Db��J��}^�6r������J�Bp@J�$� h�P�Vgr��éD�o\\Z��(�y��k˭u�S��z����q����@&���=�{Vy}��n�:r�j�}��?V��r��|�\\\\|�o;��8���8��+fU�*d[0b�R�+%!\\r\\0��(�λ�z�=���rE���1\\ZQsIcNJJ���s�^s�2Iu���h��n�����%�\\\\X �D&��N>��_�nJ�N��z캼�ן��>����zo	��ūT��!FFS�_������|��{#�R�z�pt&\\\"qcAKnQϮ5��˥X�Q�N[����x�Y�3D� S��y�a6��y�Q�$��\\r�Օ.�Ձt�BbԈ@�CISj��_7и��L�d�ۇ�y��UO_#��:�>��)ӻdH�jX�+-=�v��::�����2��z�h7�����[���y��i�;1�*���;q,��O5����D�M1�H���n2��q�y�����O�@4����M^ǭqQ\\0�N0ĠAJQ��+x�UЍ��Zq[���ﯫ����7%�}5Jڅ\\0D�oR�~�a��Ъ��e���|�=m�#�c�;�uN\\\\��3��W��ůEs!]�w��.��j�(2�2K\\Z�U,�RN%(���YΘ֌�ռ}1& (�Z\\0.�Sm�MZ��J\\\\a��)(Ja�s���>v�x��ƾ��p{�����ֳ��U�D����9O��׍�E6q�7�-�~7C-%��y�>C5ߛN�9t9X��ݒ�QI��k<�:�@\\\\��H���%K��\\\'\\r��\\0\\0���ݞ�e��%��48\\\"�K՝2��Q�k9�.�X��6u��w<�nu�u���뉁D�B���W�G���1�-�����5���%�YU�l�z0��f����H�9D�� ˔�!�m\\0��d�0��\\0C�J���bi���$�e�,�h�m��7�<}���Y�n2��?@�]�XJ=�(�+b\\n��#b#�u��tqj�$��kUiIi�K��FQ��[5	Wfmg0y�L�5C\\0\\Z�BC\\\"`\\04E���5���IC@8����lI�Oɫ7+�Z%�te���ī)�|�\\\\�Av���U���J ��@l�~t��T�ꚙ#(�_QY5;i�n=95�L\\\"I@�\\r6!�*�&�6�L\\0\\0Q��	�E\\Z@��,�J\\\'p��J\\\\��^|U���۞���Z�e�\\n�VRpr��GK7�w�՝y^�v���7-\\Z�W��.\\Z7�J��&����rn��\\\"f��Ȍ\\0�\\Zj�@�i�1�FX��`�%V(�T�%I��I9+�C��\\\"���������o/��|ۛ켏i�3uZ�5\\r�;<z;2e筋�ڲ�tC4�T��M�����x�\\\"�%(�M1�Y�(���\\\\7��\\0)EX0���eُ�G�`<�}O;D�͞�Q�שG�:��N.�U�P�	\\ZI#���\\\'){N�{��s�y�A�(�\\\'����c���7[F�}2q�\\Z�g*��\\Z�٫6�/�j2Hqz�n�ꌣ�nQ	J���1Mj&���\\0\\0 i�9K��7�_ō|U��g��&!N�Y*��3L�՟Ey����[�p�� \\0����Տ�����Vr1\\\'����^�:&�������!dչeG����2�j� ��vÄZN�lL�ޞN��.�� M!(�\\02#0�\\0�q�o�C����,�wgͣw<H�(��*�E��/�<����/+����5�R*#@���\\0-\\0\\0\\0\\0\\0 !01\\\"2@A#3P`B���\\0\\0\\0�\\0����T�N�1�����\\r�\\0�\\0�&:e��$���|C���42�Q��	.�<�0��\\0�\\0�+6`#��	�Eְ\\Z+�C.p�͑�9נ(94��xkSSr#(�ɥ$�j�9����_%��~A�+�ez��{Y�rk������^CԲ��Ƕ�x��3���[�\\0\\n�R��S��Nu�G X�;\\Zm��\\0��]�#)�9�qq�*�[d�p ��GP���)��5�)N+�Oh����ty��7��RL�ɯ�����\\\"/Y>�)��s�E�\\Z������a�\\\"��\\\'�ǔ������w���D�ҏ1CHcs���E,և6��]3�K��C\\\'��5J���Ldz�X����#i�EjX��Z��?\\n9D8���e`Yyc�\\\'��dH��րܨF�����}�;Ft�rp��4�i\\\"-�\\r�/�c�j�\\n���zcd�}NE��9���<��Z���� �_���\\0��$�#)�uvΧ�{亥>���ǒ��G#���.8��\\0t�O>�ٹ���;���-��L\\Z�/�]G%B������������ƖK�����{�zm+���c�Ҩ�1�W��\\\"����[��͵���- ҄Er�0C��4�/j��i\\\\6�ajt��\\\"~�c�Z��7�j�q��\\\\V.#�x\\\\Vv�. @�\\0��gO��:R���1��\\Z��G!q�\\\\wY��o+q[��P��2iNcJte�ӱ��@�\\r�����ѽ����1��ƌ�\\Z��h�[�%_�9y\\0)M��lV�#A� �1+q*��]�<��\\nsh��աu1��\\r���\\Z���I	�<�i�yBE�+�yRp�;�߳r\\\'���9�+��4�/JT�R�ZR��\\0$g��W=,>�C�n��Z��U�V�_��9i0&�4K:q%W(��J�*T�JT�T��k�$����o`��(*[Q�+r[��nV�Z��^�wMv���yƵܥ�aM�F��[C���s�����Kd\\0�R!��u[���խ�rܷ��rܷ+E�K�g�|�/\\ZҥH}M�`�9��;7�/��L���q:Z֑bګ���j��jP��8�:G���l��9�S{2�����&��C��RڋQ踾�8����-d{QGZ��3�n>�C�7�z�ϔdU�������ù��ی	�,[Մ\\n�h�YE8��\\n�/Li�-��P�+zK��\\\\�ׅ��R.�#��Wٓ�>p?�͒�\\0rv9c���8t���i�R(� ��4Y�;3ɱ��p{Sv��AaЃڔ�B���\\ZR3�%�;�>�䝂gZw \\ZH�_Di��a�/`p8B݈��J�2����7&䴣��]����\\Z����D�.%�Q�ˍ6v;�o\\n��?�+d<�pD����ѹ�G�p�o)�!�i�濬Z\\n̄S@�O\\r��r���ka]WT-uX��+6�\\Z��)�z�ǹ�<��6E`��{��>K-N��y+Cܾ@������M)���-VV֜��8�cv�����,C��DQ��;ӛn��p$_�8F��2Wv�+�⮅О\\nb���{2.4w���S��p���m��T�mY9=~��\\0��k*�?Ʌ�r������&f�)��X��\\\\V�#PpW�)�<�\\\\�Q��>�� D���$x$�����O%j{�bxԩ��2�:���:�+E4��S���w���kq[��9q��\\\"@�-�f</�r~N�^P��=�Zx��j�<��w]����y�J.[�rܯ���ί~՛����c:����jb�������R�Kjڈ[Uj��OѪ�ܧ� \\n�P��j�(�J�*�s^�^��G�Y�A�G���N�ʘ��7^�����ڶ�����z^�>��[�5�\\\"CB�D��5��9zk�ȐvV�#���!Eڟ*�C�1�W�����]|����5���/ܾUZ	��IE�rܭZ�kW��/���ɡ,��D�km���o}�������\\\\6�\\0a_�������l�&���H�\\nO:1�yJ:��+@��A��g��T��&�U����d�|����,��{�\\0��<B����W��< 湥�����a\\rpMu4Ȥ)�7Ï�a(�9N�R!;�!Rb4� \\\"�Z�\\n���߶<�➝���[{�KSn�{��!����L=J�\\0�e��9�;N:tEQ��,	�)`��I�1jH�z))~�7�t��(�ZR��N���g��i�>�)�OߧN\\\"w�17%� ��*лUQ=Q���\\Z�/�f��SAr/��o�(�)�+��F��+@(�v��T�V�GGU��;�ݩ�^�G�y�������-1�<v�)�.M����p@uE���-�u�x��Xr^�u)��9⊭#r�s�H�\\\\�QjF:�=�J��<��	��^����\\r)i���?7i|���\\\\����t׈yxY\\\"�OE\\r\\n�j3ל�o���I�K���zt{�t`��ק����)�C��3;�S�Q���D���*\\n�&��\\\'c\\\'3j�\\\"�7l,2����d�>�f��*Ii9�Ȟ��R؃e�Ԣ�@Z����\\Z�D�{�Τ.�fnnE�vr�ئ��� V,Ŏ��F�xgE8�\\0�7���S�a>�2Ɗ��)�\\\\xaYb{��D���Ey	_��[�v�˅��SJ�p�)��\\r-�G�������c\\\'�B ��X���r�����fR�\\\"c�V�r6�6F0s��ߐ	�T��_I�\\\"W�9�)GR�i5��/Eւg���W%k�p��\\0��F�Ν��p�#T����E�!\\0$NG$��Ƀ\\\"�Y�ds0�#6p���Ѕ#AlA�RL\\Z�ɴ��s��9��yJ��\\\\�\\ZuuizR:��Đ�\\\'p������ñ+z:Ӂ���g��(�\\\\G-�#7#�h��5��Qƛ<e; \\\\�!�s�D�V���{\\\'Q��|��c�!�S%Nu��QI��8(8wx��D��ܛ��x,.+�@N��ff���᥅,�cr���x1do�V�Z�v����d��R�i�Pv��i���N$��q\\n����w��q���\\\'�����MSS��8���%����s^��{��#v�X�zZ�9(�=�W�5��y�P(*U�J�w��!����Ò�=?���jR�ɠ3�Nq2���W��P��*����Z�jիW�U\\\';j&�e�u�r�p��N\\\\7\\\"�5�=y\\\\@R<)\\0(�4�Q��l�)�:@�AM�i�%nGR�$]�y�5�	ҕ.\\Z�º���UБݽԋ�zs�^W�0�]\\\\�O�I�h�Qy[��P�]9j~IN�oE֊�C�`v���]�������Н\\njy�z�U�6��K�8�����ߤ�m�J��5P	҆�LP��]�V���gf���C�krܯKV�trwUZ��7R®�+r��\\06�Y��H��Ŵ��EZ��{@�A�իWٵjիD�ye�ڷ�\\\"��j�\\\'�\\n�|~�]\\0�3��>���\\n=;a�W���viR�k@h{4�R��U���7��7�E��j���Ak_=���-_u���\\\"<�V?;W��h������+[ﴫ�7���ի�իV�����QGR��\\Z�b���T���JW��(�z���ڭZ�zڵ�1�Ch�=ү�GB�90ǹH}��#�w[G��V��k�L�K\\r}��U��N\\r|8�Jɽ9�O\\rD�\\rh	�B�|���9l��Zd\\Z���7�U��<�=nO�w@�i\\\'�+1�8fq[��8��⊽xcn�1�:R\\r��h��h�3>9��(���7�޷t>{�*U��tZ+jn�k\\\\Q?E�Zs�>E)�����g����V�����h(nw���������Ȕ�+W��\\\\�R������\\Zz���\\\'y�~�H�q����a���@�-�Wh��;�9B���%O(}BJF@�\\\"{�Ґ\\n��~�J��yW�#ˍ[�zZ�=o���8����I�Jt�9��澾C~���j�\\n/0|W�>��w\\\\���U���Ť�I�����NrܜU�������\\0<��?D����P��o�P&�t����|p�!M}�{ԭ��@aŰ�f�c1��o-n��w[AQ�_x��Xz�\\r���aG��70��\\\"�;�l�8�u�#�t�NC���\\\\�)r�9Q\\n�+m��K��E{�\\\"�1N���9�{���{CSܤѵqn\\\'Ξ��^��.��r�!}JwPPP�1XP�F^�Js�D7IэyGOҐ�[���܋����r�</j���6�֞��Y��Wx\\\'B�:����\\0� �i4��$)�Z`��)LS��Z�۵en[��+�����f��Q.�/L����w�8��y\\\"}�tLO@ADU*R��!���d�;A�7������Y-�4R��\\ZW0�-���%v碏9\\Z4�5��O( ���S�~x���^���پR����p{P�<r���f\\\')��w�C�r��94qD�u!9�rv�)�Z�4��\\\'���[C�r��ᗻ񞣅��j���Ó�{g@�}���M��4�r^�J��R��iRta~��!s-qq�9�\\r�!��[)�Drt\\ZP���\\0��\\n\\Z��dH�ΫZA֭Z�J��;�b�oF\\\\�C���T��v�1����76	ˆ��z;�h6{������\\ZV©Z�o����5=���ȿ*E�/_��6D3�_�*���=L� #RU�R���Y\\nf!e\\\"�K�sS�=�x�C�Gxs������s|3��<���{�1\\\"j��nD�\\n!���	�\\0V����������q�b�n�t�Hq̆(X�d�^�Z.E�r\\Z��\\\'���Y\\\\4�~;�˂��r���k��X�Ѩ�V����>9\\\'��E�rܷ\\\"�i��K�Ӿ�Pc�WbzcZ�13�Ip[����ة��-�(���D�e�����ɮ���x��>։8��r.V�Z�h&r�J}ܶ�_�N��x�M�|�?u~��W��C���l�X��͏�t8�W�\\0��|>�	��~�\\r7_S�?F�\\\\aƤ�9���55Z�dN�{��Z\\\\�O�\\0\\\"�i�+ي��c���7���5�㙹0�����x��>��:��n)i��\\0��{\\rM��*pG�կKô�٥%�.ǟQ�˖�-�@�@�宣�d�]����N�M��m>��\\\\���B��juj�j|����W��Y2��J\\\'[�:��i�D6x��������\\0%\\0\\0\\0\\0\\0\\0\\0\\00 @P!12`A��\\0?�\\0m\\rx��V_���k�/�l�#s\\\\_Q\\\"1$�� �/���qY�#/S���#�����OU�C�-1���>�Db6�����zVՅ�I�#c^��ahz�_E\\\"��2�ǊH\\Z�S�S����8c�\\Z��pЗE�E%H|)=�Z%�|i�(V�b�%�:Z�\\\"��S�|h�#څ�L���QB*C\\\\\\\'��*��)G�=M?D\\n�(��E�ćΞ�h�2\\nS-�����ґr�E�êG��#z(�|E6��_��ze�\\\\�r�M:d�/�=G��\\0J*�K�d�I��p�I;)g������S�U\\\\!�p!B�H�|��S(e����$���B���:���m�$^�+��4��H䐖\\\'���/��=�Rh���ht��:H�c��cڙ�+�WGʗ�{D22�I$�I#}��rYc�$��x���N��b4���z�K�0Ah}�i |_~�f{�,BX\\\\���\\0��\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0 0@P!Ap`��\\0?�\\0���o�2��g��,�Ye�3���˗^��,������e�Y{?\\ZP�c��lf:���[8Z�OG�[8Z�OʴP��E��c��ԣ�1���!��h�^E�h�Z>v_D��n˕�哅͋k�,Z�.*o��R�p�M��q}��[P�fB���ѭ>O��~��hj�rZ,,_�T�rђ�ErB(��3%E��ȗJ1\\\\�\\Z�QE	rP�V���QE	QSZ�(B�FC��C&%\\n�&,��<�����pB1�ETc�3���G�fL��F��]������S>��B��(���bWT!�c�xË��(����6�x����)F;�5�J�!�1͌{�	i��l�>����~�1s���lEM���Y}����EW��c�o����{��\\0\\\'\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1 0@P`\\\"2Aap���\\0\\0\\0?�\\0���Y�\\\'$���&��6Y2�؂�TeR�A��by��N�f�R�#7B|���\\0%�1�.��\\0B*x%݄92ܣ%>�������k�\\\\9~D����B�+\\\\��A;�+9�YE�yYzd��Ĝ�&^(��4Ĝf�?ц�2�L�m�ɽ�,��Ȳ�/�qSq������~�U\\\"P��$�W�fQ��9:(��%8��?!��nZw�O#��e竎2�n|�W���\\r����|#b�K蛗Y�r����{�\\\'����2�Y���vYy^�xDɰ���>�Ye��П� ���e���,e%	�W�;N�,�5�?J���,���\\0@�X��	渝��\\Zߐ���G�q:O�=�p�����2�\\\'K$nGw�:��o�@���eᨢ� �(��Q�Q(?	�UU��?�?��>�T�W��~��?	S*@��)/*(l�P�-vl\\\'\\r42�Q�#\\\'\\\\\\\'��d�>�����YI�\\r��h\\\'K��,������{<)��̌e����_��\\0�g~��ztN��w�i�!t\\\'�O6�aG/ʨ�����T#�^l���:�nZs|���\\0��g>-TUۑ�\\r�7)����=ݩǂ�ʹ:���+(�r�һ��������>E^�n��|����WԢ����~N�,��/7܌9O��ɗg�I�!<J@�F3��������$�Y�E�A3t�#\\\'Tȃ�ʵ�f�y�U,Y2e[j�!FTޱ���H�>42b�ta[m��;��,HFn7�m�S��Qz���V�M���\\0(\\0\\0\\0\\0\\0\\0\\0!1 AQa0q@`�P��p����\\0\\0\\0?!��|)JR�����<�jn!`N�\\0U��V4	Cd\\Z���&�>\\0*�)��ь[P]��L.��#V\\r�BS��/n`�6ǹ���/��7�/��M��w��{�Z�\\\\\\ryB���Z:b}���c�j�JQ�N8��/H�8����Q-�\\\\v�l[\\r�҉��n\\rP�T��P��s�/�$���a�l[�)G*�Lゴc�?\\\\����*���Cy����DREF�ɬ~�.�����kK��B!��G��1e�C�����%B��RE�$�a�4����<.��(\\\'�QG֛A!��;�+�\\0y��\\nB|%��*��z�̒7�y��e��b	�����.A�[���=�1;�\\0y�&υ�at--E��s7�a�#���&��\\\"I/D�m����=�,}��H���Y3t:�(�0��D��+� �t�poП�g1����*��m��0��Ⱥ:m��7�\\0w���\\Z����%R+|����1$>ѳ����7�K�R��1�`�N�bw���k2j�K]\\\'��n�H�?�l���a�hN�dBF�����e5jZ\\\"W�(�m�xs��d�|�=Q�X�%O�U�����G�G��_�	F���Az�٥�_<Cϛ4�)��^@@���?�z���6��-�:SbJ��\\\'�>����}3a�U�[k������ڏpA	�P�WЪ���\\Z�P�!9P۳��q�������8%R��lR�\\Z\\Zg�P�h���A�R�{@%���\\n��ekBX�y��O���2��P�T��B1�h϶Y�M�P���\\n�#M>����Q�p%�ƤA�\\\'�z�\\rQ�bHG���\\0%�c�L�%5��+�I�,7�����$�G(1G��%�<�o?�1�Xԟ�Z�%\\\'�0��r�)�\\r!�M\\rA+��\\Z�d�}\\n��WᏟ��4!�����9 ���7�F���Ы47F7tk���\\Ztbx�%��U��r�d��\\\"ʰ��b�qX� ju�`Ec�;[C%�D\\r*���O��Q	�D%��0����V�\\0��#�u)ti�i�shmK��	dJC���dc�b�?b��ȧN�M���$2��B��]���)���mІk=h�<S�_>?&�x(ҡ�h�v[¢���EVxb��j��/���~��V>㶍�����Ztkie	�\\Z4spg�C�7�bK����P�s%�T�\\\"����������A����Ķ?�p���94G�)��\\\'�?���O~�Э��ۧ՚p�D�%�c ��䑡2XU6\\\"\\r~]��4�?��>�%C4��(�9�C�>#qB8%�T���O�}x���lф*4HLc��:���b�B���IAC\\\\,C׃�)����\\0�>��tb�Zz�pt\\n��hM��;�\\0��z��bb�o�s!;���;Ӆ�!�������1�DF���<��!����X��\\r�x�]���za�%[.XN����b��G�\\r/�~�|�i�&1�L��B�L|~\\Zҗ`Ԧa	5GJ����P��1���c�P�<�e�p��#��e��\\Z����h!��t�\\\"�N2ǣl)E�C�>��\\0�\\\\o�8��\\0���лPއ1��%�9bP�=ৣ��.a(��4O��<\\\\�PM��\\Z�pO��&�lrp<4LCA:9%QVQ��I�;ؙ�O��7�_�j|��\\\'�\\r�(lkP�xU���)�[U��4,u���F�ȹ�Qx�\\r�r�ƍ-Q�F\\\\~�9��7_g��Ո�G6�1�V6�G��P�p��|��◼l�ʪ=�hC���5*[�5)F:(��[��e.*i�VT��0���2���Luh�����\\0\\n�${�cQ��&Jh�~�\\\"�a$�NH<\\Z��w��7��V�)�cM��1pg�)�e�K�pLmxTō���\\\'�_��(]���� ɍlEf\\ra���ذbc������cQF\\r��4g8l�(�ѡ�B�X���8KYa�\\Z����v�n�CFF�]���Ԑ�k��o\\r�����	6GA����λ�R؁c6\\Z&�1��I�x��|z!<Q�5��r�H1����:�dϧ�F�\\\\f�<��8R�)����M\\n>D�z�i����	�ib� ���5hb�5��l��(�������$RĞưo���+������m�B\\rYKZ+�+�6�.�H������9\\n��Tlvn�0��4/b(�ǋc�A0p<��M9i�=cO�,��m���؃d^�c�3�=����D�+&�ב���Q=����?C��	N�U��Hb\\\\/hFp �!I�B`�\\0b��th���Й����bI��\\\",V���&l1/g�+aIF��kF������7�ZXq�@�\\\"��(��Ư)�n�,�c���R,��]�%dbA:6w-��tah�A%��[F�S�[�\\\"6u;��тe.�-c�:�Q�8�*��\\\\xnǼ����<6O\\\'���z`a����Ų����@���+	ȝ�bN1�66����J8�\\0H�=��	Гv��tXc:6F��|�L~6ǰ��LK�q�6�?�nF���BMQ�7�i�.ʍ6��p�-P8<v-�����t{��oi�C��h�DGMW�tjK�X��1�br,kcPc,6���AQ=�S\\\"1��d&.�m�_�X���B8͹��%�Bj��}�c��D6�N5�_d�ì=pK��b��؈_f�6E1>�\\n\\\"z$\\n0�<��cll)X�&�ΈeBx�Ñtz|u�-\\\\��f��n��Gk:6��\\n�>����*�~΂ޏ�	��i1)�$֑�7�\\r�.�*l��e���������2\\r4Q\\\'�BB8�Y�uĐ�Ș�s\\n�G@�Bڲ!s�1J����\\\"M�=�\\\"�M��O�&�CHH�\\\",/�?�U�\\0��T� ���$*��HkQ��OŔ�/���cp��px�B�60��m�4jQf8\\Z!�B�BJ�:&�\\\'�	)lN�?��Q�ϰ�VU�Aϑ�Q��+�[��\\Z6��\\Z\\ZhBo�(�;��n�&�\\Z�ҍ���bፍ��c��-a�x=�,qI$��LT��b>��~	(jٳ&ZT4�lZ(��GD��i�c�����N���f&[F�]�>M��\\rF�4��*�C��Jv_4��Ҥd�K؁j�!�6�ɊIFlEw��P%�y�-���#a�т�5bhO��P�����S����(�D�9�#q�\\0lYģ>������)J7�L�Q��v=������\\\\.��sC#y�/�\\\\G�l5^��+(؜�7�M�%!o؊���*�}�	���#� �cc�pbۛ��x�xce�e�<2�c�� ��u�B��c��S�~��|i�t��I:<�>T{�v�ݐ�DsQ�m�5X�h\\\\!�ǔ�M��M	�0�<���]`����B���N�1嬌���Ԃ�z̭kGbd�Y_bm3�g�>P�a���Q�m��\\\'�Cc�X�.D�eeÌ�.�\\r<Y%BaZa�˘Aİ5_B��C�7�MB���5���S*�zg��|��,7��!G����J6\\\'��.^1J_��΅�q[\\n����,@x?�T&��Y���~��1�x\\\'��\\\'�X�њ1����G{z+�\\Z���x��:�p��R���?\\nQ�:i��QL67����5����3s��b,-�b}\\r�/m\\n�$�iC��1�����ʣ�b��a��_��������Ѽ&�2Ć�cf%�²��hČ}��G1�ltgXd��}�\\rY��S[p�`�1�����\\\'����ś�ˋ�!ǂ~\\rQ-\\Z-���=33f�&<�H�T9�6)�Y��跴Q�&R/��Eݍ���.���B���X�LT\\\\��R��)Yplb�������c���45�:��v=�F�l_�N��$���i�0RI�Ѵ&�J _����C\\Zdg�12�,�r�5��p�(�l6��21�[7�|	7��o�o	�_��C|�X0�U�Oeh�l5����Y��]����x=�L�0��x2�z�9\\\"f��Z}���K�C��4KaR4K\\Zʍp j\\Z ��xA��FU�6Z!�l�!v{�T���C��a��z7���١�Ӭ2�x�w׋̋�&;n�y�2�����1)�47�!mB>Y��H��䌙�)6D:���L+�r����!0�(�T8I��� ϰ�g�\\rSkB��V��&��>�a?>�^x1����\\r�n����\\Z��?*&iJ;!�b,�%�iN�C�yyl2L,��3�̾H���P�hD��B�qyL�[}�掃���G�Q�3��}.D���x�_|\\Zg1�hJ\\\"���m����V)H9���(8wy�Bx ���f���cQ�/�w��+���ǂi��\\n2\\ns=��w�)N<E���a���$dLj2�s+f�N�w�bS�4���.x\\\"��D�h?�=�Q���\\n�T\\Z��e�C)�\\\'<1I�u�b�7�	����=at{bRR���}�bb��చyѣB�Cc�,�4>�k�\\\'�V?�\\n��!z$�,~���j�j�7�n;a�&5�\\Z �S<G�N�rR�6|�͐�-q0�+�	ec����\\\'���\\0�e�Ļ�*�%c&�{D��%��(l�}ax��F�5���I��P��p���fC��cP��6B0�ߊp�J������0���K�bf&�bڢt�$%T��>)>6��p2��\\\\4EDQ�8�Ə�4���\\n�6	(�O@��؆���%�Be�).+�P���6t^?�X(q�����k�</C�ƿ��\\\"v���d8\\Z	��HfZ�casL��	�L�:��l��b�\\\"�������k��O���R�n����Wt�w�M����z0e�2tgV!�{Ў���1�[5)T��Ѻh�R��/���(~-����1��hD%l�3CHfA&�49��H��D�߁=�U84 )�ѢZH�6�!�9�������\\0klx����R-&(�Kc��A�3�/���\\\"\\\\f�ÔP�b?�:l50�����m4h�[CC�O��ɰ���\\n5��C@�{�~h��y���c{:1�<���5�l�\\\"ps_bO�\\n���7�-66�X����\\n��;1� �q���;&��9�;���7��b�8\\\'VUGN#v	���%�S��,��B��\\ZѲ�����1���u�BtX>��x�׃/���t�.��l�CA����]�x�-j~�\\n�!cu�	��E��hBcÍ�b��<d�ϯ��]��xxO���<Q�~r	�� �D�H_tm��4�L<Lz��Y�C���2l��O�R�#|�#�F���<#����Ƽ`�BW�olE��E`��.KBc�-ĢJ=K��&㺅 ���W�V%�Ț��D5�t!��=��]a�t����.���M��x���\\0�\\0��I��|�c���Bz8��	�B�Кэ�\\Z2�Z��7��F�[�Jb�Z�b������x\\\"�G��LzdG�����O�[�7����\\n�C�I8\\\"��?�.���B`o�б�R��I�D���%dy��a�����h�8tz�gW�=��H2\\r��4%�����=��B�5�4x#�A��C�y��(�\\Z�\\nˉ�1����|�\\Z�bh��փ^��o�~���h@�8k}w\\r�2�~H���D?���1��9�E��-\\0�6�>�\\\\x��h��\\\\0��D�_�Qa�$8��\\0��Dh�Cf����M�\\Z#%?a%��t|��\\0�x]�yXd�4!ПC���!G�t�h�\\rp���\\r�!�=�_���~kP/<!��?B}�$�B\\\'��~��L�(�\\n���Z�}��_�eQ���lH͞�Qj��t6,�G5����D�[7x_7��f_&��d9{RЃ��u�6R�3�6��H}����LAcd�\\Z�U�k�x�6���-\\\"z�؏��J-\\Z!w���4)����$�8q�Q�{\\\"G�y��؆�t�%�@����_��\\0\\0\\0\\0\\01�0�0�0�0�0�0�������<��Lo����<��<��<��<��<��(\\00���� �$��<��<��<��<��<��<�\\0����8�8� �0�0�0�0�0�0�3\\r�P�0�N0�\\\'��,��,��,��,��,��$�qٞ2����%�*�0�0�0�0�0�t��Cm0�nΰ�\\r�)�0�0�0�0�0�\\n��Co�Ug�x��\\r<�5��0�0�0�0�0È����e	Ж\\Z�0�$��0�0�0�0�0�=���g�@\\0� �0�0�0�0�0�0ǉ�$��(� ���\\ro�4\\0�<�� �0�0�0�\\\"�y?O.�0���$\\0�$��x�K�:�0�0��\\0�dQ~��GΒ[�M �#@/�?����0�0�\\r/[�n3\\\'�k\\nn�Pg������P[A4�Az�g����_..�a�%�w,�����2g�f�La<��(p�q��0Î�zd�W#���a�ݒ�\\0^�\\\\~��\\Z�g �0�� �`�?�ٌ\\\"ٌ=���z���_yf�8���\\0\\Z}=�CXI�����F�s� �]j�&s_UWQ�.	a��H �Vɠw�(th�˖U�-��6 6�R���r���C����ia�&hp��g���G7���Ы�Z:�?S���#1����=�g8I�O��l�J����	��\\0�t�}S%7�NM#=�:ɲD��@�F��6u7�\\0D�-J<�hYD����}�W�Jt�nEFc�� �خ�0��v.���!R�c�$�=�*v8/�_� �\\0�E�\\0��@\\r�<�17+wϧwdA��%��Ł�!��è2z8�8w����I�\\0�����;��M�����6.ύ���a$�$n�b�?�ˁ�!�����&�a�� ���*t*�~�#G��\\0-����߇�������\\0�l.�n]b�]��/8X����-U�@r��ѣ�cb��k\\\'pyS��CO�_���M�f*҄mң�d��\\\"�\\\\��š�4��75���Y�M��\\ZL�\\nŴ�\\Z�@���U���C�}x�1`d�\\Z���瘋�o݃��w�U^ߚ���N9`d9�4:�Mv�U�R}���ȵ�L3���Qq+��x䗻!�H����1~�!�/&����Fr�v@�Ewj�M����s\\\\�ǟ�B8�[;��4���IsGYh�G|nS����M�q���Se�p*g�����`��D]Iҳ�^���j\\n��)	��o��dĔ(wk&�%ʓ+0��axd\\r`�AN&foMo\\\'B� L*A&�\\\\�ݢi��k��ln��z��\\nj�\\0��\\0�5��+���\\n�H]0|��\\n�d\\0�:lIE���}|����@р5\\n��TQ�1x)�ׄ��ꈺIw���u)f�[��|C��p�\\0<�B)o�&�m�Uw��iV<�+O��OLǛ���hoEm��ZD��Y�[t�_˘��_O�Mf�9Bx��\\\\���;c+ck�|��\\n<���*(�J=�_`�����\\0\\0\\0\\0\\0\\0\\0\\0 !10PA@`��\\0?�\\0�\\\"9%��\\0\\\"B	��h� �ֈB	~s�+�)K��\\0��C�o���|��C��s˩	���C�B�D(���1�\\Z\\Z�$O:!�R�z.�bcD�?�z-H�N\\\'J1�0HA`�\\Zo�qo�еf�Ih4�JeHZ�L�ސ����4N�)yB�MdOzB����hl�/	,\\\\Lh_I�+�c �A��%�/��Ab/_�O�$$M�/HA!��Bc�]bl^��G�i��>Ĉ>|#�c��_O��5�p���#�A�7��1���g��c��|��M,�.C�����b�sF,�e}�f��	e.6�>Q��./)�=�\\0�R���.����{��������PX�z���,=������&5��)	xA�\\\"p�ce)GňF��1�>���>�H����c����\\n ���������\\0�e�)qP�C��QYJZ2�lle)Q0���V�s�0��_D���J&&!�\\0��x�49�2�X,�G=пߢZ1���xjB���R��)JR��46Q�R1DI�w�1n/�z\\\\Y�!�\\0�(���>R	Q�1����kD&q����!z?\\nR�K��Q��oZ�\\\"C�!6�\\r�W�h�zx-�ِL1F=m.>G�H�IY�5��J���}�<#ۤ\\Z�^e����������w���X�},%�{[��Q?K��l�-K\\r\\\\ؽ �r�h��4$�o������$ѭA����(����$,�(�Z$��x�	�J1�Ui\\r��\\\\^�A�\\\'��(�O� ���{3�<l^�8xQ��No�B��tzǼ�<b����\\Z�?\\\'�֢�L��0��R����b&>�+)�+/W��.�D�{LPF�A��JS�K�e.Q=o�!d�<6\\\\R��d!?�cd��C����+�\\\\=���\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !10@AP`Q��\\0?�\\0JR�\\0%&!(�/�%�N�����\\\\`�\\0����\\0��!��QF�*��^4��Q����L&R�Q1��(��9���U�B	#�DN9��������|D�JR�D�^�/5���nQ2�F�����|!Q1m�ϣА�\\\'��\\\"a��]|���[h�%�\\\'�BEX��K�C���b�S�HLh|Z�)~��\\Z;�\\n/� ���x/�cZ�F4^��J\\\"p�R�yK���pn�t��x1�1��/4�MD �홇������ľ1�(<�A�W�<�5����X�7Q����(�n�Kǘ�<�ՈyJ	�Ԣ���؃T!�nǆ��zdɩ艤�	_g�&ŋ���b���S�{j(�L� ��1�t�\\\'GG��\\\\�=[>�E�^c�v5����% ���⅋f5��Q�T��JD-�_ɋ\\\" ��<l�ce���ҡ��\\\\d!	�Ũ������X�1G��!A��$B��!z~�̖R��(�l_B(2���\\\\(�.ˉD1���t��%��`��*�x�PBbo�A,.1���tgcБKű��\\\'\\n���5IA��yML�A��J=7Bd��<!�A�Nf� �$l}\\n.���NH$,O��!�aг\\\"�<x��p�%�\\nY���H�ࡹbƠ�x����A�\\Z���1��&��>�����$DA0�\\\\VR��lj�Л�^\\r�b;�A�!x?D����ceJv\\Z�=g�<b\\Z�V0��^!�+��(������xF�T dz�.\\r}��M�<N��(����THk���c 0�\\n��؇�!51�/��Qc�J2�vbb59R��\\\'�������,ũ5�v*�%ͱ�TN\\\\�e��ʏ�,���b�H�xS��\\0)\\0\\0\\0\\0\\0!1AQa q��0P�@�������\\0\\0\\0?�\\0�m��m��m��m��m��m��m��m��m��m��m��m��m���m���m�� e���766Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye��,�����0��Ye�Ye��챶�|m��m��m��m��m��m��m��m��m��m��m��m���\\\"m���o��Ϳ���o�.�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Ye�Y�o��i��0�\\0��Ye��6����Շnv���=��6Wdt�|�~g�����P��Bg�|������q\\r��\\0�?��,��,��,��,��,��,��,��,��,��,��Ye�Y�b�턟��W��:�}�����K,��,��,��e�Yg���cߝ�k��7%�L�{rg��٘�tm�\\0>����������se��m����!�Ḗ?>��0����%߸@K�ߣ,|��?��\\0�\\r.L�v���+}e͎fN�+{���2ܷ��)��N��z��ԡ���\\0TϿ�m�����>	�������c-�v�\\\'�>���뛕�����=�[�s�6�ѻw��O�����%�)�,�H��Vhe��.r#$�]�s9���8�z�:$���B%4�#�V�\\0����n��C��3�w�܍��\\r�7n��p��֓��g��\\rm�l(P�6x�=Y��\\0}�L�u9%6>�ݥ������Y��lv�	���o��1�>����F\\\\$D�9N9cN�w�r��&�z8���Fx�I�9ٜ#��X۹f���/h/�8�~\\\'Cp���Ή�<��G�$q�g�!��Z#a!��1x�������	����e���\\\'u�g1��\\r}=�u��!�z��Y.�2�r�b�K9��c`�\\r������ݖ�Y5�Y�ۙ��t+��H�-:b������nA/�4���=È>�m����w/��\\r&Z���}±���@av琷K:���\\r�E���s����yzm\\0ͲOGyjT��(�Ēق[��˞��8�]��ik�f�)��M��;j_7p�e�N�P��,����ɸ��}���z�`^4��y�l��BԎ\\n�r�!1���[4�\\\\F��7�q�i�q���_0�r��1�)�՜�o��Bqq.e����G\\\'v�#葽/rW�q.8~��x��D�/��urn���?6�jլM�{�l{��� qDx�<]1�m���P���%���I`�^a�{��\\\'/�.x���}ٰ�8��X���.���0������\\0�.����Hv�BE��M�C	8\\\"r�}wMi��=�\\0�8��|�0q������\\0\\\'L�r�0�f��+�$3��m��P���ר�+5���{�m��=���|K^�{�.�R�1�3�Kp���O���$@��VU�����!\\\"8��\\r�XM�(���o���\\0,���O�_�]�˒����њ�l㶞ex`�X�V�5ǹ-xLNIۃ�<��F�Jk��{Iv��w�X[�\\0��܋e%e���]0ˉ���Oܦ?�3�z��� ���W�nD�lg�+��9��ym�\\r�ۍ�ɱ�a����4��Y����P�s!`����L��[�?V��C�˅lm����77<��f`�����)�4B;�9�-?H�s�1\\\'e����K��v��\\\'�����ߨ�\\0�HRW*�|���C�_]Ϟ^�\\0�b	���n�H�s(�\\r���Řw��\\0���N-`��\\rر����nXc�->�|��8:�z˗�S�Õ�c��\\\'��Y�\\0�#:��~���S�ן�-��H��Ȁ����ȁz���f4���b_}�Y���\\\\\\\\\\\\�?�\\r�pz��Xhup�%Ic�ns���]�ظ�\\\'��Y<y��[��z���?F����O�rf�G����,��Rq3�m���:�f�,��q����c�v9����g�-���G��%��ow�}ۑ�9�oM6K��8h=B��2Fθ\\\'���fR�����������߁����l�&�-�P�1?��e���\\\'>=�\\0�����:�d���h�+��pd���\\Z��e��d/�������\\0q�̏����>\\0��$��H�q����s%�1;���B�Ʒ|J2xp�#�\\r�$> �2�\\\'��>���\\\\�A�x��m��6y����|	ߛc�O�?���\\0{l:[��\\0s�m=��	���#�Hg����,Q=Av��-��a�$\\\\�4Y�¿1|\\\'R��?7\\\'�$���HfF	v1�L@X�2oc���`��2��o�}ާ��C�M��r����\\\'��2�\\Z,������c�Az��gV����..�%�,זc&8>�~{%/�|�@����3�g\\r��l���q �럘�c�����|{.PA��#w�Qn��,��m����oళq�\\\"���FO�c�6>%͗�H��N~,�o���yM�,�7�b�����0G�6����`��������J�\\\\`}\\\'Փ�[�rw�0��Mm�\\\'{}��l��|pa���b_��=��|�vm���{�m���F�z��Zc�=�%�D�$�;��������Pg�2N`�\\\\@��dR��e���l�Ȋp���A�?�q<�)`��O�?M��PoF����.�e�`9��<�<s.�f��z�����<vY�b�bsm�\\\"�e�ϗ��{�O�\\\'��9]W��4;���E��k23V(��ɿ�\\0�t���f��s�]���-��q��<�6X6�Ǚ�l���`�1%�|@��(�Ò�C��H�2�kdV\\\\��G���8������e{���`�nS���[\\\'����(��C��m���Y��u��=��Wsy#�2:��v�>�I�/��F���\\0��i�s>9�O�u����\\0�����I��̿���.���zg/�\\r�6C�pxS�s�XX����>��>���c0}G�5��Թn�3(<�|X|��|��n����1l;m�Ĵ<��|]�<���>C�|�C���U��x��G�)�����~���\\0łnX^�?)��p?v�\\0���?w�\\0lݳ�{�1y�u��d#�����r���r��-�C�ct�lr�s�\\Z��\\\\��17��!��]%�ĕm�z]�X�\\0|�������#C�\\\'_�O�I�|>6|����躾a�?��\\r>$8�h޲�V�c���?S�ݡ�\\\\���r?�v\\r��D�̋܏|@݂�a�m\\rX�-_9�{$�}!�[�O����v>�\\0~>��K��}�C8�F�K%��{�Ĝ�;t&����x@�Ȼ+C���c�%�y�奃� P��c�Ť;>,Cm��@n�n��7~�Y��yb\\r�M	�\\0�#������G?v�\\0d�M�q������W�ĥ�oV�q�E}O�2U�g94��PA���m�� �Zx���@�vA\\\"�� ��e�l����s�0�ug��/��\\\\Ǵi��=F�Z�\\\'<�ȱ�Ѱ�Њ��=�Χ�&7�ߞ��Sft=�8���O��\\0w���T�\\0d@�0���?����ߍ�/��8�iv����?�����$|��\\\\#�X���i���q�a����ur�;��]X�nw���;r�_��m��k����6���S��\\r��Ξ��.��6�Yq�<�z݁�i��ϙ�X�y�:��jޭHnï�7I����%9\\\'�:$l���p�zw?�\\\\�l�ݒ�5���Ր=Z?��]Dx�v��m�թ���d���b}��\\r1���}������m�\\Z;�x�<hvik\\0$���K�~�N�?|v<���<K#�]&=n:�N8�VQ��K[7�.��8</�$��V�E�);�����k1iԘZ1;s�����igr�PC�9�rQq�i�b�gWP}��[�i�gw\\r�#:��~���|Y9t�w�P�)���K��FT�P-�݃>���|������{br]�s6�z�H�N�!��b��c�[��wg�������RYӈM23`������9sVHܣ����5��-���8�K	j��A�ݘ�x��6,{L�3��I�2�˞F�.{�Rvo�-�7��<̛�jͅ0!{����@7�o��{�\\0�R�n�a��o�6��yd��WXͽZ1��gG�]�Łf���%q�aj�;[��\\0Í��f�K]�񄺑ip��?��R�`Lw\\\\�1�����n�����@��	�i���/�-ͱӉ���8�\\\'3�`]�~$6���2��\\r�\\\'�#��v�-�jfg��d{��2C=�X}����Z�n.��s��@�=��1�D�w���/�(�\\Z\\\'Զ^1����� �V�J,��H�2��/�x�Y͞F��B�y%8�#ϸ����<NSn��m�����z\\r9�v��8/�(ɫ���7��<\\\\�׫#�;�E�;/�1� F�1�j�� ݓ�ai��_����`3m���e�h.�c\\\\�5w]�5����0��O��9�V���ߒRr�\\\"N�!8�F�v攈sŜ�����5�Z��!��D�\\\'!�\\0��A�r�y�a�;Ĝ�\\\\<�ĸKI�.v��E��	Ո#�o��g��s<\\r�w��g�\\\"��\\r��Nz���j���3�^;I��]�����Xsչ���7�\\\\B)�Ő�|�t仢�./�\\\\_�C�:>�\\\"�weǗO�����ȣGM��p���|ݯe@\\r�Rߩ\\0,%m�c��ȹR�����)����q����w�Ṓ�`��C���H��X�L�%����_��דm����D*s?n�>`O[8�?[��:�L˖D��q^O�\\0[L^�vc����	��s��\\\\S�6�&^��s\\\"俅9u�Ø������$��	�6q�Gels��Ǘ��麲8����r�k��7�[�%��vG���	��M]�8�@�r\\\'�����w��r+!�����|{��[,���i��c��%��.Æ�n��]v}�s�q��< ��<5�Ɏ<�̑vܱ�r��,I;��oǓ��w&ʼ�Yh��q��k�y�C�4yHv�!�|����~�c���\\\\��g�kZ�����\\\'yc����6pQ\\\'e]G���%�=����+y��q#݆0L�!�V�\\\\��\\\\㥠�G��-�	c8���!��\\r��?s��g�b�}@��nS��^>I)����O@m��Kڻ�\\r� ���z�2rT�lN�0��6&\\n��K�[_d�}ڐ��VC�����:.��.ZEܳ˞�~�����$�0�G=Op�!��@�;7�gfbIl�Î�ܝ{�z��|8/�i䈛��}�>	n�[�\\n�q5�6�i3_�Z����B\\\"�\\Z��$�o�����ׂ�݄�A� u[�\\0�2�c���4��m����F�\\0������ݽ�I�{A0��	��s�&���ȶ,��\\r_����ry�t^�I��E9̄�-�uԭ@M���$t��nqd�s��,���+�0���/3)Ov���Ʋ�sa��l�B���7Ƿh���:s��(A\\rr�΢�s���������巉t�������$��N%Ķǆ�����b��l�k�Qi��nm���wC�f�dz�B����]Z\\r	o]ϻ|Q��\\0Fv��C�P<8ə@�fd���wW�0�����G+S\\\"Yx��s���qT6�+�\\\\>P�Ĭ��L6�\\02ʜ�0�#��Q�V���2u����`,���,�N�R:�q��f��&���r�\\rp9���L7�\\\'+r��7���	vۺ�q�.��pռ\\0A��ۡG�Q1�nK�:ǆ4�a�ù!�c���p^�˲;�q�;k.F�8^����vu\\\\��\\nu.Ru�䶧�g�\\\'�n��e�x��}\\\\��c�.���q\\0�d���+	|Y��شM-�q!���C��Lu���5x��\\\\G8l�R������r\\\\0��Ǵ�@����<7�a���2D7��@�΂�njz<�uM�Bi-����N5�1�	�.lۂ�l74����+�{�yJ���|��o�۫����N�\\\\M�z2�ѓ�V��BX�Jx?,��.>���qw�Y������=%���X\\Z؎��)׍�\\0`��f6Tn2�zO4r@�;,�/d��.�������<�dF�\\0s��\\r�M���t�h�~�ǗT��\\Zi=�fS����\\\'��cav����.x+3%�\\n��sº:�ø�8#O>3c&K{�ξn|sH��r�G�B�l^}[ ��ǃ�c�;��~���mi ����h{K��P{��H����}�r=��;w�6��u1�7;����{���x;~���q�57�﹜3�����1̲yJ�\\\'����#^�0݄{��7//�����	<.�\\n�WT}b��\\0�`��O����v<�����r�?�rq	�\\\\)r������T���}I��SYWsyά��\\0�o��Ca^���3��p�q���zx��;%�\\\"u��������k��u@��\\\'���p�as��i.\\\"�\\\\��{x!	 �<_�Y��Ԥ�\\\\��?��KV��Y6BΜ��ƌ&@o�}��Uuu)��ۗ���r:>�I���\\0s��9�ɓԣ�������\\r��r�v�-.҇��9㇎���s:.^3�p\\0=\\\'����{�d�\\\'���m��-:�������O���ޮ\\0X�vE�s)�D`{oi������0�9z��$���s�,̑\\\\�����K�ۮ���۰<-�^���O>�fi]�o���[ͬ#�e߉��7/\\\\�pg�����gl=Ǝ�V��Q{��Z��n�A�ݵ�$�q�f7;,��V��\\\"��7D���\\n�r)L�;�1��/�_�)��]#������cy��*����Ǚ�b��Y9�i��\\\"K+��#��`��f��\\r�����Id�J�-��r���\\Z���<����n@\\\\�øq��7-�_r3��xcy�uoq�`����������~��8�~=�L���/�<F�\\0rR�p�������3�x#+�r�/��^���I�=����Y��\\\\�L��4#�0��N�r�2Ӌ�n�\\\\���bˮ/u�<���$p�g-v�uwr�\\r����d=��כO��_�̸����o���]ncY#�Ŷz�P�N\\\"6v�\\\\�n^�c��ƕl�F�\\\\�w�	Ŝ�	]��qF��.�Մ�<��b]������ݓ9`��ݒ�6��/j(�?X�S�f�:K��t� b?VF�<�����\\n���6\\\\���oD����qw�q-\\\\�=J0l��%�<X��7JolW�����r�c(.G�x��Ƕ˭\\\\C��\\\'>[f�O.�fg�	�Q%�Nl:�<��p\\\\��fE��ͱ�ٞ�4�6��ٝ=��� �^\\\'ӛ�[w�%��|q���Px��<�M�|L��{�ًl�aԏ]6�>�q�	7���ѓG}]!̚�oW��w=�f��d�V�ަ���v��g߹ٙl��x�z�\\\'�m��=�=������S�ahnAgH�#���\\\'#y���]b�itVgP�����lb{|���\\0��\\0�W�>E�m�A���P�|Z3��d�aV.�6�fe\\\'�e����>�	z��k]_u:���1�K�)A�� ��A��,����[:l�c܈�L�pEZ����Ԩl�佈���:�uk����-�Q�#ȹ��ų@��͢\\\'@ciY��z�԰m2�e�0hڳ��\\\\�L�S����_� �il���g/�����\\n˘2qcw�9=�!��������L-����z�!����	��4���9�w���[o��^�d <\\r��z�}���gÃ���6fD��B�H���q�Q2B\\0~,U혰4��\\Z�7){����5�ޭm�� ��8��fC����.�#F�3YH\\Z�?�x���V�r!\\0fxP8K�2��wͱŕ���0߅�W0����	��x�m��Ƥ4>��/.�/	p|I o1��\\\"M�G�h^���L��Z����z��	�c[_+VE����`�w��[~e\\\"R�\\0�\\\"�Qpg2��j��P°��<e�a�˯`�7���<��Є�Cx�e턷�<;.&dww]�i��U��G�$����],��X�c\\nO^|�ฮ^���,���V��ş\\\"�ֻ���ȉOp��l��xM��ҶE���*9�_v��9��^pvˈ}X�KaiK�hl�����b\\\'�Fdpw�[�;��^X$�1��`��gs��:��.��[�+.P�F\\\'����d8 �˴;��r:��m���(~\\r̟\\\"�۷]ܥ�?��g;�Ǽ���������)�:EՀݴ9��-rܖ��d���׍���d?�h>��S����9$)M�Y8xk�m>$�7��\\0���a2a�۩t�N���>	�p��ˌ�u�\\r�-��	��[�\\0Ù^Ρ��x{��\\\'i���m��M�fr��Y��!���O�w�����|��B-�|��\\\\�_��\\\'�,�q6\\\'\\\"q��/��%u��˕7�v�]��R��m�2P��ۇ=ˑ�rc�͒~���~1�p��^片/����<d���x��<6�O��Y��C�]\\\'͓����\\\'|���s>��S����gW�5�~��K�Ky�kI�@(�.���]7a��fksϩ�Z9$ls!�Ԃ|����8�P\\r�.�[����G��͑���w��.盉s2C���oY���ZپH�p�!�\\\'��7����`k�&~>,����G�.eo���^e�IB{,:-E�G��(�?v֡��+~20}��c�2�}@��\\0�uYv�,A��$�f�$�<�G_Q���am�H�5��m�/�¯�J!��\\Z#�P�89�ۙš��~�Y0߈����_�b�����������m���\\r�l���e��#�0��ܐ�g�5�:�K,���>�P#V@vݰ�p�rݘp���˟	��>R�@��rF~�g;��8�#lkf���	v����9�\\r8�%�p�+y2�����Yţ��Qy��Q<��2eJ���ć�^O��1.%Cn	�\\\'V6�X�.Lջ���[s���@�ֻ�,�k2�8�/q�uv��=�>Vz#������3�g�ć�����G	 ��p���Ew�`yoc��or�`�����D�W���\\ZkD�xY��R�T�y�������:�܇��^2�0���i˗3�Vw��\\0��{��m�N8>.!v\\r�oԼ����6{|���t��^����}��$<)/��OD�i�L���YvM���]�y�Mn%��$���0k\\\'c=��. ������h�(跬;�;��[�>K����7=��r��P�v\\\\�H	�z�>�]NȌ:��>��x��UM-	�{��L�)��=Ȧ��Rc�D1��l�I�D9��6���|���ē�̗�w�gn�\\r	6��~�.p�(��2rٔ��?��p�݅�81�(��z��Ց�̓ź��r��q9���.`���\\r�Hq���Ft���L�=��]��r&d���h���\\r�N��46��1K�H�Y��,���.��m�3��g�TI��Ip�[��I����/f]xe}H�N{��等�?s%݀MO�KL�;~����R�N��<��\\\"����pF]��Q5�V[,��!�ȐmR|k2�bsr����f�r�jlͨ0D�����z�wf�\\\"������Sς0�|�B�uOrg��\\r�l�#zZ��(K��Zxq%���e�6\\Zo�3��fa����\\0$G�FԺ|�7/R�G#8o�w����\\\\��5����3\\Z�C�xx�-��l{g�:�w#\\\'ڽ�m�N��|�dw,�ȋ�Zxo�Qٞp�g��Z�g�{b��1��r��Iym5�A~ag,nq�ӄ��ސ�a8T�W5�Y�r�ͅ�~!�����Gm�z6%#����=�W���v�x����<pY%�e�/WI qg��<<��\\\'g��j9�<4i�g�MD����o���~�V:<�ܺFQ��%g_�p��i��%����_q�`ۨ�\\r��������w=HTl���-�n[��r��?�#�Ex�y�Y�	rQ��/)\\\'����Q�R=x?ܖ.�>yq3�3u�)�agV�����\\00TY�DFLK��?�6����ӟ0�8ۥ����ũg�8�����VX�Q��u���r��m�q�x����\\0� �|xr�\\\\����5a�\\\'�,~g��%�wc�6�C�p����G��n�|x��8��>EӾ��s<>����o�]h�1����\\0Aڬk%�?V������A%��@\\\"�x��܂$����,�]X��y���=�\\0p��,�9l��\\\\<��uů���mԵ.�U��mG�9�-��ݗ\\\'�h�Wh7�+-�<��!��[>m$��pOWn��qnZ����~Ky;�{K�w3Yq���os|�1w�����=;zɻ2�����%vX�`\\\'��Ui�S��\\\\�	�HN�1w���K�v:��%����DX�?ߌ 2���;@v�����QT�\\n\\\\��wa�y�;x���d��tۣYp#��G�]�S�69a�>�2>&%�Ħ��(��b�ce1<����\\\\�W\\0S~�������\\\"{���-���vً��.$p[YςK���&�Vñz�e�Z�xk�\\r���@Os�C����� ���[�gJ�X��2c	�O�?�O�{�c�!����Ä����þ.>c���O�|kq~���<��cr;����{��<.\\0�\\\\�\\\"���=�b]����fJs�D&�<�&�Os�Nq���k�-$��~�9o�!!#�@ 8J��|�DoR���l���{�d篙��G\\\'��ÊnY��f@ź�,=?��?�ߧ�rv�|��#��n�AgG,�-;!74�c���?��h��w%��� 哺�����ͳ����=� ��D�sw�.`���a{�\\0.iC�dt�	�w��0��q�:��̳����W�e��ͳ��Ea)uaaq���0�vn��:������`�[$菗�/͟F���{[��8Ԁj1�dL���r�q��\\0�;��a���Y~%��r]�{����&7}���:�6I4�W�u��������1sv�\\0����N��4^�%��aO�J�+�dmœ��8��5�����r��%4��<�\\\\Iк�[{ĳ�R�P�͸�<��ݺ|���)����dL|Ǳ�f0��Ï$�d=^��6Iu�	5��\\r�����..��EfA/��W6��b\\rbq�Ç���9���u�v�d��e�,�Z��H]�!�~���e���x%�}�v�;z\\\":�ɥ�̷���ȪJ�c�`��.�}@.������f�>n_ٗ؛�P���t-O9p�L�WφO��=�v)�X���q��Im��3;nt<������Hc>��]�l8\\\\f������,�Ւg�^>��{�6��͖���fA�L�z��6��pܓ��:�L�S%��ˆ<𬿲��M�����\\r����rm�I㧇����','image/jpeg'),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,NULL,NULL),(26,NULL,NULL),(27,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\06Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0g\\0T_jk48PYzts5Jvwaa54P\\0��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0\\0�\\0�\\0\\\"\\0��\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�t�.oi���7H���}������g\\\'L��y��I�6�S(K�\\\'�>f�e�E��z|����Oq�GDҏ��Ch��c`��U�@w#h\\0#�i(�L�}�PV��4P����Q���]��kZ�k^\\n\\n�QxiY0\\\\�`����^���&�I|�NZ���J�6��8��L�s�>W^N���\\\"X0\\\"|+T�;5�0��Qψ�}v��}��8@�·��;�Y�%��5�%%}G�8��Ӊ�q��S��׉��t���JL1V����gG̻��z�͕k��9!����ͥ��dI��<�C�N�f��2gQR\\\\�\\\'��j�ߝ����i\\r�^I�u�ݞ5��9X�4��}�_W����w���T h��� �\\Z��b�=�:�=p��kʕ<\\Z7�#�+s1�{�bke�\\\'!�\\n骃q^�J��n�o;0��(�zy(.�(���zr��B����7*�Mt�����f2�<ٖ>��l,�ɒc=5��z�ݻ��l��7��*�P��X�%�G,�l��챖��^���e���[�/7��4.�E��`��}^mR�Ϟ�5��Ҧ՝��$��l��\\r�e~�KP�2�!Kj+S^��Z\\\\R��ifj�b;��@�\\Z�ay�RpӲD��\\ZhՕ��8\\0�G���|�z\\n��h�Qas\\r�2nUj��dzx�р��d4��v�:-)sW8���196+K�\\\\y�\\Z���S��K\\\\��5֥rҲ\\\'ğ�(E������>�s���V� &��Z�v	���l5hƛ���a�t;[��u��U���8~Ȭ�3�����o�A��Ad9|`p��6���d��5�A~+H�=u*,7+3/j���y���~�^��=Mv���g��uf�y4%���7q��b>�N��\\0\\Z�熠��s�:?��\\0,\\0\\0\\0\\0\\0\\0\\0! 1A\\\"#25$346��\\0\\0\\0�_�xb��-1\\Zܔ�	��?��.�$�Sk�!�%�Y��(�UU�/�Ȫ��\\rU1�d=��~�1ǚ܏5��H����?Um�2+L�V�Cb:�U������}d�Tr�ʹY�o�\\0���]�7+N��f�RP�:7JEL�aE��s.c�F]>�~%x��q�ui^}T���_�؜�*�����p�N������sT�����UU]C=W2uO�XyQN�J0�ɬt�r*=����C�N[dk�geS~G��:n�їӮ���l�1�\\\'Q�n��0qm��\\\\E�M7�FL���+����Z��M���k�3\\\'\\\"�1j��Ǧ�q�O/���������?R��t�נ`4�jj�Q P\\\'��8B��� M$t�XoR���g���\\\'�����/��_65���D:�U���~w��u�w2�\\0�(����{�?��`!�`�+�r��j���c�&��w$ⳉ�c6P�Ss�0\\rC�\\\'����B������gP����+̱o�N������9J��j �@�=¾�-J�����#�[R���ťq(�n}�[�G����@O\\0Ӌ	��L���M�hA�#(�6%VE`c�ƭDL��i�AX�;��oy_Ӷ��a�$&���㻞�	��X�h멽OFq��r�hXoD7F��6 e��	Q��Go�xka�ss}���eE��FᥧYQ�q-�y��F1�\\\\Ƞ��1>����+0\\\"ӭ�Ӎs��+-�8\\Z����K7\\n�8�BX˿��0��,TVqؿ����g�\\\'���k����p�S�+���\\\'�,�e�����`Һ8vK�$�̬U����h�3�?\\0ː4�����V�Pĉ���[��h�ڙ����]�y*�$n�j1��YuX���j/��4K=n3{�T��_F�J�lƺr��a7��~5\\n�4�η!��` �S�\\01�j���Z��o��v�8\\Z���F�b0��ܖ��Ƶ���Ͼ��*�AVԠ{�����5��۸��d\\ZXeg�xʈ���z\\\'�˛q6O\\\"\\\'2e3Qc}�j!�Ӝ�ⴴʥX��\\Z�m�sj\\n���!��x��\\\'��X�Y�<�\\Zr���h���Lf5������1!R�nr�{cY�7��)� mĀ4�������F0�j+jP����g)�������RE��^d5�O�l�0@Ъ��Ojk����j���잠x�w��g\\\"c|���=�5�Q<��)�u�sp?ɾBH��k�����pc�������NѱμFx����u\\\"�:�8��3qL��� �O\\\"Fqc-���~�\\0�޻8����f�]v���~�\\0,�����0@!}Ҕd\\\\ucf��}C���V�eU�CuAZ�k��U�^��94�{�RU�Ӱ����(�c�_Rcc�U���AƮ�.,�����>~SZ���;�P�Y)���wO�K-���e8֥w?Q];�=�]���N���������?T��-�*��^��ȭ0���\\nQ���j�a�IѺ�8��-�~��m�g~��S��8��s�G1��OL����b����6�O�y)�u�����2q�j�Sa��N��cc�<�q#fꯪ#�՝���٭vu���Y%�����c��si�\\\"��3[�ek;����m�~K��9j3o�V���T��GP#ճ�,?/��\\0\\\"\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1A\\\"2��\\0?�:#�:�uC����֋h����ْW�uGT.]s�y�1�!>ΈED���p*((�!�%*�h��b����6)�ʭT���V8y?%d�БD�Nɯ�QX\\\\C��t�N;P�%\\\"2�KY�Eo���9��)�����8������%�gj!�D�~��	vC��b�a�K\\Z\\Z9tƓ%�uh�����xcZ+E��!o:#�FV9P��̄Ƭ�UG&�Eb\\\'[(��tFV}��)\\\"��/��=�}���zMl�E�tyQ��*�k��qLZ(I��%*;	�\\\'R����\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !01@��\\0?٦l͙�blٖ/ccf[1e��������x�ԡ\\\"�W�F��_[���s�\\\\1\\rp���	��6.r�͗C���6m���p�\\0D�cSr�\\\"�\\\\kd\\\'����_�\\\\���k鯾��t���>��\\09\\0\\0\\0\\0\\0\\0\\0!1 \\\"2A0Qa�#B�@Rqr����3Pbs�����\\0\\0\\0?��f�/�TT�Ե��\\\'u�3E�7�הʎ��`x�2��p�/���*e����TC���ɘ1���>��ܶ���h�k�T-լ7Y���c��-u�{\\\")\\r���\\\"�Lk��oZl�+a���ja�x�j��x���\\\"�4��b��6�4V�d3�uT�4�5���@=�t�0S!����J�1���47L���ƻ�M����/)Y*A��*�-\\\"���~а�)��;�Yti��~��a7�� \\0��a�J�j0����a�=B���A�\\0��`���4DѕZ�k6����t��ƫ��ӂ\\r7r*�j�+j_2ulf�a�ɭ�iU\\r�c2�ԫ�`�Hf��O�e<��a�����j��ي2\\0��\\0%�lο���٦��O�pXfԬ)\\\\�������!V�Gͥ��U���X���e����tYU����M�:�0��9\\r0>�T*Px�$B���s1�>�aM\\\'�A2�K�ay��U~Q�:��vk�eAP��Bo�U�����\\n��9�ڡ�\\\'�k:�ߣ@Mi�\\\'���\\r4�_��L�R��]��U���#��Q���j:��>��7r�t��{Kd\\\'�19�D�vO�T~\\\'�\\0Ƌ.�R�P���[}%Q��Vx}�b�T�0���|�tZ�=�H�]\\r�]\\r�Z7�X!���v4��h%FP���P�m�\\n�o����o����>��o�۫G��IZ.R�8��FWV���l�Â�Y�@���(����D�e��fV	+��,�`+ps�����d`���R�\\\\�Q�;�e�U�\\n�Wu�`ʠ�U�=|+��qX�^|G�;(�Rզ�/ř�N����]�.��\\\"�\\nǀ�:�l�WN�8\\\'d+l��	�X�U�,�ua�\\\\)P�.C��n\\r$.S%���ĮWJ�����1��R�6����l�$Ϗ��MuX}C�+���x!O�}�u7K�/y�|�r�W�uo{�9[ٽ�1a��eb��5�g81�e|������\\\'fca�fi����\\\\v�\\0�D�\\n��@�:�?�F�_�/ �\\\\�!\\0b���\\r�R�l��5Z�2������\\Zx��-V��f�.��g���r�B���Mӕ�UÜ۶�E�\\0E��w��f�!l�o[SI�Dܵo;ր\\\\��-6��;����7u��f�k�՞YE��T~�\\Z�}/�+�y>~�}_6��\\rAq��ײ���e2�R�e���e̲T��f��zf�*7�E��^f��O��qm}�\\Z��~�*NwkAq*����X�������R�\\0o��\\0�D�J�!ٜ���h��@��ꪊt��ΰ�)�ѯ��1�Am��U��ӷ\\rq�����nfT�D�G/�B|�7�Ӗ�E��A����L�*�>��?EU����9�녍���Rc��)3Vx�0��S�a�g��3���پ�Ҿ*��|�_���W�<�luh�[R�פ������&����Uia�j�e@�wS\\nu,>��3%|�T���Ox��t@4I	�pY�y�P�/�\\Z��\\0כ2���L��NI�yg�W�(���6�ܹ��[)ō�����~{m�_U�,����\\0(\\0\\0\\0\\0\\0\\0\\0!1AQaq� �����0�����\\0\\0\\0?!B\\\"T�^E�i4x8p�c�oRuI�2��T܊�R9\\\"�4\\0�$��=l��A�)g7���DޘsБ�<�3 6	FN;X؍?Y��9�P\\\\pB��h�\\0����F-#^�n�ޅ5Vf�4���:�����D\\rBMTD���9�b�:|8h7*����o�bq�?��y~���\\n���uo�dW\\\"3ZU?��P�.��D��-���)����o�)��s������H�_�V�r�)���I;;�\\\"I2����шd>t�R%��=�\\0��e�p� T� �m0����j�M��^\\\'J����F\\\"B�!ZKM\\\"��:\\nϝ��+]�2j�r�B�����b�YIj:��K�2��Z\\ZHOT���k�KtE8n�0��V���w��	Z�ʕ�\\nTt����e��P�j�+��ym�¥���%�ݏ�K�s&�1n�=R��Q��(�P�tkpl��g?�&L�dy�K#B%6\\\\<`�n�B[���LnY%x%����A�\\Z29d�����D�?@iMr�w^��5��\\0��!ɒ���<<]��DU�˥t!0d �c�`�O�U+!q��uZ?,E*X/�ƥ��.�S��ؾFjcLǐ\\\\\\Zz��8ً�{\\Zz}��O�2��F�5ز�fZp#bҩ�c�QYcv�	�\\Z(�\\r�C��C�P�Y<���E\\\\�Me���()?@c��\\\"���{%���xs�Z��Ɲ*�:\\Z���쏂a27��5���&��dVj�4b�%��6]�\\\"�-���3j��^m@cx)�\\\'ɀ��@y�[$A�O�F<e��2�/�t�A�0/Ci;hh�tIa�c#Y{\\r��K*���YH�5�cT����g�ʼRs��2IGh����+�>ߊ�?�E%�B��}�5������T��7�Q1t=%�, �\\Z+A���A��7���\\r��I�,�=(�\\0E�.��!�Y�BN.[2�!g&EO�Q���e�%�ɡ���=:�5��࡯\\r\\\"t�k�J^�_D���Z[1\\n�����(�nB6��g�EHc�!AE\\r3&I#���.FT�@�!��b�J�r�SqvF�b�U�9��|ۄ�AY�ɗBE��3�R��>g%���Ak\\\'w�i�ߑ�ʏ����v�]��ӱ� U�p!چ�]$ق�&?�`}Qᘅ�LU�2M�Ȅۜ�C�lz�P˔�dz\\Z�Ȋ�%�Gp5|e��ߐH�6��VE`���*�+�[�w;O\\ZȽ��%�$)	dg��$2�U�@7��f��F���\\\'piP�6</�Z��ip.���>\\\"CrX�ʹ8i ��݋kd�H�=_m��e\\0���-��ùP�|\\r���t*Lh���=�C�P���\\\\\\\";��dX��d��<@�6а�		|��\\0+q�x����!n�Nrǜ?�C���7�t)�T�\\r���X��n!�\\\'H��O?����8�f�%��em�d��a����%M�p -��T�n�1[%{���K�!�6���\\0,SJ�Ȗx��ԈZ~Ob������Eȼ0����J�W�s��O({�<d��VY�Mc!�&�$h�|$)3���l��Щ�\\r�PNH�?c���hL����XԃI.F&D0E��n��\\r�l4�\\Z�0�*����\\Z�(a��v\\\'���\\n��1ho%���\\0�|q�.<XN1�	�\\\"�Fj���L��ÈC8b�p�Q�{�\\0��=���F�_r��\\0BWWm�R���W\\\'a�c��3��q�����r���s_�T�ֶev���Һ�Z��?B�LV?c�i8_�SW�C\\\\���r|ְ�4�I�hUĒŜ�iM&�0�m{M!.�|�dx;QY��.L�[�3�Q��\\0���oa,�:گM-�����>ZN<rRT�v�$j)����|���E�2��盔���\\0b�좲���?������3���Y@�ù6_\\\'Y{�^�\\nR�^��\\n��p@��]�t����EZ��1��6=�P�/��۽�\\\'���H�;���`g?�P�%,n���_e�Rܸ��r�+����$:��C�\\\'�;��ُ i��?F�̑��r���#b����9����8ֶ�0s�d\\\\���>��/���\\0\\0\\0\\0\\0sV�:Z��ơ+A�̛��VO���q��A�����?.#q�F�R�������a1ȯ-�Wt�{��S�O�ւ6*Q�M\\n�a���\\Z�N�\\0<_��`\\n�¶�!G�}��{N+�PT!�$�q�{/�/���B���E6�,����\\0�������ɜ��:���}�e�^h�y���#Q���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQa��\\0?�_��nr���BP9+��B��[@ly�:���#�X=,o�Q2Ɯ��`�[�z��}��l�N,�Z�dMR\\\'	#��0e�ܭ�&z�>����8L����6$��|��	�X�a݋$������PF�fd�l����1ɖc��u[	����A =\\\"LYv�tL@]�X��i��>O�O��\\Z9k���ɓ���ع�*Ȅ����˭dgu^��H:�y7��>|\\r-�\\0��԰a-�$j%8Y���7��C�j۶���B�A���6}3��xd���,��`3\\0��e��X���L��6���Ye쾑�nbɱ��鐧>��c�9l��#�@<���%���f��6\\Z�d�+o�� \\\'`gŢ]l���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQ a��\\0?����_g���7��!�n�l ʹ@e�ʈ����������#�ٲO�\\\'��g�ќ�-��4l�;bW%�(���*ĸ��B���)n&d����>Z�=˱��Q����q���0m��v(��S�۲��ȧ~\\\\{�v��tH��1v_P2G��3��=@�`��df.���(�^�+�Ի�^��wn�7�oLn{�|��WmX?`�y��d�s��8�6qk7l�oxR��}����&?�O�{��M�H�������me���#m&����{����������\\0wÙ�ܶ\\r�	���\\0%\\0\\0\\0\\0\\0!1AQaq���ѱ ����\\0\\0\\0?{���q>0ZM$��x)����y�P@�Ws��-�(U�=d�>�ʆ����a;.�t����P56�\\\'x�V!�p���c�,v\\rۿ��DP���sx+a��7((t4�f�`���;/l�:1�Yl��\\r�ю�U���.�3�K(<c�!\\\"�]�)�c���T��-��!�`D�)Y@�bDp*\\n��\\nEI��;��!H�u�`d�Ӻ�t�B�Aɋ�����vK����l%����m�O��d�\\n;=���(ړ���/��sa���q0�!�7�&�E��	��X3��B�@���R5%O;)����8�\\0ƀ@|aۄ���6(ET\\\"�����RLd%<�V�:��\\nmA�1�)���$��Ò��nx\\n w#α�u\\n�C���2:����0`�\\\'E��$P�������<����j�P_�����&�w���B;���TG��<[m@l�����g�U� H��[��V�h�������j�j����1�t��Š������J�C�i�Y@J\\ZН=�	��^�8N��k�2JBM?8��E��jɛp�E�i��g �	Cr-�)�fP��8<���D#�hz�*Ԡ�5�*��YX�\\nh�X-�N�E��>�2L�.��Q�f*5]�α9zVe��١��UHQ��;�ߓP񪅂�����z�%��w��W-m�TEvx�\\\\���S`���F����Y,p��Gc\\\\��3��\\Zyl8����+�r!yXO����(��p�����ڏ�^\\r0%���ֱ%�\\n\\r��Eҍ0�1mB��!�5�\\0�6��_#�ɒ\\0	��1*�\\0�\\\\�5}���h�A�(���qD8��\\02S�)��8a/����0E��:H�5�)�O��\\01A�%��\\0I���Y�I����L6z�B[���A7�u���	q�7�8���e�*��04y��0y\\0�J���� \\r�LV���t��b�.\\0���y!�!�+�+�#���ɂHJ����r8��+:u���#���q��_�A��Y�}#h�B�]��J65�LnM@9^24\\0�w�~��Bu�`Cz�)H�[fݴ���j�x!0mH����������Y�:@��p�.1��\\\\�\\ZFl��H��rNrn�2кwL���|���~p؎�%#c6��>�Oxsw��%�V�޸͂��C�A���V�6�\\\'z.iۉթ,�\\0w�n������˴;�4�\\\"�>qdWOLc\\r�)ܻ��l��Qp�L%�u��-C��+�=��9���I\\r��:��z0V�*��(M&nA���4���V��!�8��Ĝ`B{��\\\"GgE2��r���@�C\\Z	]K�.��P�;ƣ�OXg��-�5��\\0��4�DI�z�T��F�#�L^�̾\\\'��t���qq\\\'�`}d��q�E���\\nVr� ��Ƞ7��nw.�����q���֑��ٔ\\09�G:�81�M��]��nD/5�7%|au�cr�\\0�0\\rEn���l���\\0i\\\'� Q��d��ʡ˃t�ʸ]���2�W����i�\\\\R���L@}�&�&�=�� 	{���\\nfҬM`�7�Ra&0��T4c�w_k��4�8�����ݛ�}�V����<���G!�$qq1o�A�b��B\\0��2�!;q��&#\\re��e@�L��ɢ��To�\\nm&�.F��\\Zod�ߌМ���ZB\\r�(!^}�W˶P������\\n��:-7�<C�����h�*\\0|媃n\\\\e=K�H.�Cy�0%g�\\n���нb�&�\\r�c�Ɔc����]�� ԧR!��Nwr�	�y.�p��p�x�S��	��NHn(6�W�<H!Pg�p�u�##��&��v���eČ��l\\r�,�&�\\0��\\0�0�6ji��xC�qH��	�W�d/.s#���jRd(A\\\"l��0yiـY�ځ���hS��MQ�+�`�X+儼��@���#��n�\\0�8�	z�\\\"2gz��]�ʐc8�%]�0�M��9���b\\r���5�3\\\"�k�3��8��0ӆ\\\"n�4����b��`�=d�\\rj��(񽗜��9�:��Ʈ��lT~�(���\\0,�y���p�5*zw�����Q��D�/���hq��}�@i�8K�7re_S,�;�@4z�S.X�?Ts���2�oT�t�pL�ц2$�<|�TXӜ&�U���99	���v���Zq�\\n7������\\0۽�)Y� ��D��)_,�`b�g���\\00�M���I�\\\"M�<q\\\':�N&�0���1,�y�I���w�����\\0�_��X(��3��4f���i���0�US-(E{0WϷ\\\"k�\\r��u\\0�1�,u�@x���\\\'OX�A�0%���X���K�2��x�O9��{q!�)�u��/����\\04���\\Z�n�Ǹ �L\\\"\\\"m��\\\'�PB�܅\\0!q5qD���6�0�4����\\r��b������L��!�o X=b�*�t�����w�R�t��aʄ���a�?=�XR$��i�iz�D5�-00R��|bȗ�������F�ї�	m��]z����zÁ~�!�징¤L�Suq��w��.����\\n���J:_��<}b*0��O����C<1V��[\\\"˖����[C�l\\r���-n����y����8�\\0��B���.㲋��\\0\\n��R߱i��Eo���T�0S\\\'�k�\\0y�$����,bf�k%���r.\\01\\n���*�t6�s���.��.�S-�X!Ɏvq��WW\\r�����(\\\'!�YR\\Z+0F�����`���ܢ{�g���d�cR��qy;>�n�q\\Z�,�#�G��M���L�]q�*�_Y|�~T�G��Mc�W!�w���e8bM܋�����	�q��.$�Wj���\\0>����\\r��	9.�>sd��ZA}�ԉن)j�j><��^���0�����a��3s�����<�_���D�e}gu{	lʭ&; G�Z\\0�+qN.�rm��Y:[��]ze�2�o\\\"~(���3|Zͼ����D�^O�~���Uo_�������4� }��r��_Y��:�)E��iU�%�!c���tٓ��V�w���xqCüSu��=�	`n���d��l@q�����w=v�ΰH��$̃W��P0rL5;����ʳ�8��n�\\Z�9\\\">�{d@�8�J�z&q�2dğ����W��syi�($�<f�-z��\\\"��DI����b��OF\\0��ƁW+Up�4<��)`�8n\\\'��M���ı]�y�E��;���&�f�\\0�����pG�*�zg\\Zb�0��y��8�&����&���M�RF��YHF�tR�U�\\0roF�^���0�&F!I�N2Њ\\n:5�@Œ@\\\"�,A���i����%n�\\0�����N�AÜu�whz\\\\Dm\\n\\nr �Dp�x#Wz|��pgˉZхi���! !�!l)�\\Z���N��ΰ2����b���#��@U@����i]Nri���Fs��\\0�/΂�?Y�,����q���!�j���ḿf����˘�AА\\\\Z;\\0������l�*WLgX���pi/ ��Q{K���-����a��#e�����R���f�Yj�a<�=��K��>9R�\\\\E����\\\"\\0+AO�\\\\	B��mך�b�a�&N�(P�����\\\'x�zz�i�-��%U���ki�*�Z�o%o�*��4㆟YX�XzY�V�	��ۍ)SS�	�R��s;��LU4X0�b��k���1�}c]���>C4��x,*���oTS�,�?�*���77.�@;`	��1�P�H���x�\\0h&�M�3^�.#PX�T�Y1�<�����\\r��l�lvq�70#����N�l\\\'b��,���$�\\Z��l�\\0�{	\\\\ $�x�mt,�|c��-V��\\\'�0����bY�[1��������,��\\n�/�#�鎌�|c)[ٞ�fd��gx����ۜ���*���.-n:�T{cD��ȺujJb.�b�>u�\\\"�y�\\\\	����G��s��','image/jpeg'),(28,NULL,NULL),(29,NULL,NULL),(30,NULL,NULL),(31,NULL,NULL),(32,NULL,NULL),(33,NULL,NULL),(34,NULL,NULL),(35,NULL,NULL),(36,'����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0�g\\0ON5FLBrI_mhxitw5eI3b(\\0bFBMD01000ac0030000a4070000290d0000ca0e0000910f0000a0170000811f0000d62000006e2200007a230000642f0000��ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9��\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999��\\0\\\'8\\0\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�\\0\\0\\0\\0\\0\\0Ęu��]�j����뽰W��I�0t2�}����z�\\0\\0\\0\\0\\0\\0\\0t-��~��7�y�o�\\Z��:l�eF�����&�ë���-�$ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0)�Rx{>R�73��<��){+��o��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\r{i����hj�W8wh���\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\09ދ��OqODc���p����@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0���Z׸#a�M�s1/��@3\\0\\0\\0\\0��=}_7.6��\\Z=�n���5��4�=b�Sx�U�������e�_�pfaϝ�޷B��@�?��}z�ȉ7�Vo&�\\0��8�[�Mv䴍���n���W_q����$WYW��z#HS��8��f���n*�����)/2&��\\n�d�\\0�Ь�Ր\\Z1�B<���8vq��K�:7<���\\0FԤ�Qg\\\'��g��-_kSl�4\\0\\0\\0Q�GRG�s�-h����AG�Ԟcmɛ��������obK�icr[�_�DM<le�ѫ�{]4���P\\0\\0\\0\\0���*qʿ��y�dN 9{/)0��s\\\\):�����Z\\r�@��:���j�4�z/=/f9 \\0\\0\\0H6���s��`\\0�.�n�� ά�P�\\0 Ÿ^9�7�;[$YW��\\0\\0\\0\\0\\r���/D-�\\0���k)�G=��,�F�o�n���z�=�)~��7�^ԇ��Z��Ӡ\\0\\0\\0Ȉ��ھ�ܖ\\\"y�\\0O��^~�v�ztklM�ŝ�8�g�n����a�~�lZ\\\'�1�\\\\���,P\\r+{~;��\\0N@\\0^W�����>F{k�]:���p�K��ה}6��GH$DDi�6M7�g��s9rr�N);5�X�I���/�\\0\\0\\0)�m`F�R��g���\\\'��v|Lk<W�byA6�ܜϓ:���c ggB��e׷8���ڋr\\0\\0\\0�[O�9�}����v�|i1�|uʯ������˧p\\0�G)cs�}�\\0\\0\\0\\0\\0\\0\\0�I�j9��t(�! \\0\\0\\0\\0\\0\\0\\0��\\0+\\0\\0\\0\\0\\0\\0\\0 0@!1#$234P\\\"��\\0\\0\\0�o����5�Ҿ��&q��W��Y�1�e��jV���#���=uÞ��A�S��1Kf\\n\\Z�^�j�5n�v�j��d���q�z\\\'�[��ꜥ�����%��ft�g�g��ω�����ۅWP^�\\\'aM�0\\n��:P��_ݱ�U~2�ڸ�kd�l�M�avU��PM�>��bPc�Z}�1`}�,Z�1�PC�C:S����V.Z�Z��U�b�����+!�UxLo\\Z���!�?q�OKW�\\0��ƣ�fyl��<�|o���3R���e9�*��i��+b��o��z�xr�������ju�%j���J����Y\\\'�]���l�+[E�����Z��<\\n:�����T����Q�mP9U�Օ4��?�����=][������=��\\rN\\\"b`�����&�)cl��`��`qVV����ڧ6���#ħ�AV��h���p-�jY:�\\\'^nJ�Nv(�˒w���}HJEQ��EV���י��!��?�ff�Jrgh���P�y�ow����Ș(w����Q	!���߆����\\Z�*�g9�y?����#?��/����2g~v�^*�㩢��*�MzӐ�w0%��T�cx�8F���*�����\\r���YG�KT8���xXd�R��0��M�R\\r΃��;���3�!E�X�:�ODF5F�yd��ȸ��w�V���/�,T�}Dp�;DN���c����`�E�HWW��0\\Z�BլM:��kC4��\\0��~�kQ�\\0�V����W�E�AK���$��TkǓз��}�&�B�n���\\\'�ѿ��q��}?Ə�X�ب��ʹ:��AS���/��t}�x[F �1_��%�t�Sy��h_�x��u��L2�W��*\\\'�W��Px,��j��D�a�cm;ĄLn��^8�D��Y�0���l�^�$?(��D��[�we�PB�V/���Y�����Ӈ��������p��X�\\\\��U1@&x=���y�3�Yl�\\n_�\\0�r����v�������R�����C���Ǜ9��9f�y<6��>�H(�\\0��+�{�fD��\\\'�2m���ZդX����B���n��i���cf�+�@�\\r(y�zn�9ܶ�mV�N�Vs���&�q���lѶ�\\\'��lY�ޒ�5�0��p\\\\��i�����ǯ����C��t�A�OV�;i�Q�FvёQ1� �ӪJx�ũ�퓵��K�R�uP�B�q\\0�oz���[#Bq�ɓ�G�<Q���gl��;����3�Z�VW����\\r�.��;�ӫ��vV��(��.���z�����X:]hW�W�)i)�⣣N	���5�>�(�*n��>DP]6\\ZSR�:���U�_�b&!*��T91�V�`�)�Ɉ����\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1AQ02@\\\"Pa��\\0?�� m�寨h����cSe��)U�t0����e*p\\0$v�_�]�8���N�SI�t�3�����0q�h}/[��-������p����M�����F�����;��t<�ԣht�hi�8��i�ܘNNmEp��B����9k�Gc6Q6m�z=,����7��\\\\]+`\\0z\\rE^�\\r���|��\\\\��l���Q��槸ҫ�[+9f�\\r��\\\"U��ap31wb�{�`0:����I��q��>:Ħ���o�(�f�<���Oq�öN��9�L��K�|ܰG�j�/ԵH���\\Z�3��i�nN �\\0��Q�5R�jm�N!99꣧}S���Se���Z��3)�i9��ej�N�����`��e2�o����\\0$\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 01@!\\\"2PQ��\\0?�J�*z$(�zQ�5#�5eJ�9�lЛ�%J�X�1\\\"����E��8�5��,�?+[�Z��8���2����=���^7/�dr���E�²���Ǭ\\\"�	S�����xaw(�#��j-�H@~��\\0@\\0	\\0\\0\\0\\0\\0\\0!\\\"1A 2Qa#0BRbq�3@r���$P4CScs���������\\0\\0\\0?�>���Y�娫P�.�������IK�+�HW2̬���ŕ��)O�拴���Lt�Y�(1-eC�vE��]�HGG�f{�x�`���Ӥ�w�N���8EZ[2���/w&��d��1��a�=��;$q�m�ee���T��W#��즺�;�bM�H�(�Im�HL㤦��������?�.��|�E5Ϛذ���?1GZ9�V<��LEٹG�=�6��~�J��\\\"m+^�⩸�o_G����?׿�_xEGﵒ�)&`�k��U��I�M�����9D��GQ�@P�����P�6[?�)�������6���b�3�:;C�\\rjwڷ��;$C�c�3���:��\\n�l����4��{Tw8/�\\ZS�V�o����9ů��\\Zy~�e\\rض����G�^#�L\\\\yYu9�Y�8�ݦS�]}Pu����U��LM���b�i�mZ�����F��f�{莉`�즊���j�HmQQ�[|�G�Lt�T�pE�ˬ����&*҆���mAI:?\\rE5�6�X��vԼ�N��\\0�Ĩ̗<F�ɏ��RZ-x�0f6uqY��1�p�t⣢Fe]ь]��x����UpWt�z�)�FF\\nk���F1t[�l��-㋊Ҥ~�)w�Y�֔�GIy��@�ǴCC�\\\'%%�|�hQ������I1hK���*6t�#�qQ�\\\\t�P�P[s�#�Z��G�8,b6��w�a\\r�%���m:f�ye�,�R��IZ��n0Bx�8��CK��=g�\\Z��0���N�{�d�ڥH�bz��\\\"P�p����B�q��kd�<�C(�k���?=��F�!v|��Z��*�)8��􉢈�QU�-��\\Z�\\Z��#D�k��iA���E�IQ�\\r1ߓet�v�G$Å$\\Z�	m�M�ؑ��<qQ�\\0�\\n����Ntw7|\\\'E�Fc?�L)�B��jFG��4Lĭtbx�JD��K)7�UOL� �J�$����YGEGu,[Cw�Ud��:t*�HZ�����<�\\n�J^N��&:�1B��2Q����@m�$���R�h����N���o�\\0qq�ω�L����+QP�5o\\\'V���^zB��h<+���u�P����%�6�����ͯ��.q�p�,�v긐�\\Z�f�%\\\"��%f���e�Ub%6	���By�H��Q>C����0Rl1h�K�\\\"��_�?�5��X�χ�+�;H�3��e�vL�9\\Zk+(�V^go�l+�N���h��$����g�;KJ�\\0gt�J���LZ\\\"��\\0q)8|���H��泩M$o6m��\\\"xC|�;UT!�14�t��CHa������+Ui��\\r�PJ&ˊo�Qy�9�D�/ˈL�ZU���?)��8}%	hUh3+H�\\\'<���Nn�׬��������>��4s�*�R�\\\\IUazR�W��X��HWow�@pZ�]lw���s=hi��}� e���jF]E���+�}�Sk�a�X�BL�ѪlɮҸ�pn\\\"�6����6�\\\"�(*Q���Go�|�+iY���l}���V�i`�ĕuQf�\\\\O�:���HV��숬�\\0\\\"V���@�脣�������W�)�6P���b�y���T\\rGS��i�����b}\\Z��}�{/���m<�~���a\\r2�B�\\n���lRz�t�8ߚa��4���\\\'<���i�V���򎂎�s��Դ�	�\\\'V����[}�(\\0����JgϫpL��7%�:��TZ�������N\\0g�}��\\0�p�H X�\\\'h��!8s�T��\\Z�Ń}\\\\\\\"�(�.�����\\0v�a���\\0�`d�X\\Z��[/ q(���hմ�c�k^5��\\\'�b��束à��1WR�yA�ќ�)�m��ǯ���y�?L�IS������+X�!c���k��^WX���j��p�D���%����3���Q��*���4�ꝍC�q=�JJ&�����b����G-�G��MKw�b�ڦ\\ZsU&Z�jǭ��#�O���GF�S�6��d0묥)mŕ�X��EG��<ga��|3p�\\\"�1�Y��F�\\r�/v[g	@F�/%9�R���I�������b�@\\0d=���\\0*\\0\\0\\0\\0\\0\\0\\01!AQa q��0���@���P���\\0\\0\\0?!�9��xQ�\\\"�\\0Ү���=�x+��R����W.��Ìg���ߪw�?�O��\\0P�g�/V�J-*�`�7�[��M,���c]QB]<(��o���t�(��˵(�R7=\\094��\\\'jm�ؤ�\\\'�T\\\\q�\\0x��ˋ���#�+P�iË}A���PSo�X��]��gK�u`�kSE/�1/���jI\\rL/�mVPg����c�R)}��+����N��� *�}���d�ЭV*!A����U}V矚D`H�2��a��\\08v���~y��\\rJ�[4s�\\0��ؐK�����cה�$Hi��]�ן�|�Vt���6]!���\\0F����h�/��\\0�b�=�k����5(-���A��^���{K�@{f4�>ٕCJ\\\\�<>����d�+�-©q��Z��z����֥��7��%{��X��{��}c�\\0*E��*L_�\\0�V+iC�?��bVW�ׯ��\\rپ�/���\\0�u�UA82�D:7��ҖkP�~�\\\"��H\\n�a=e�\\r(77���2#�ʺ�9uQ��؏\\n2�3K���u�Q��I\\0�#�I�ס������˫��TIXM6����E����\\0\\0\\\'�8�_�&6Z*�N��)�Ǌ�7u�(mS2����\\Z�����W��:j��hݿ�)�d%��*�Ӎc�2>�V�}\\\\6��ň*��Ĕ��~\\0A��$��w^�SQ�q�F\\\\LD�\\\'i~��z��f�Y�\\\\��KR)`��r%�ߞ)$5q=�dҬ����	�:O�����{��q&+��Ǫ �h\\Z� cI�T�*Ă^��%~BKjz*UDX0N8P�\\\'1�b�^��f����=�D���V�\\Z��.�MoRԀ�Ѕ�����`��dƥ[�|�my��ȠU��B-ɷ��ΠE#)B�,��]�Y�V*��*M��p4�^P*�sjiH (\\0\\0���	�����\\0.�|��փ\\0��FA�6��P��6���b�ũ��\\nm*gN��pfY��^�g\\0XiBO�Z�ۈz�R�%�1DI\\\"I�>@�Ԝd3-c�X�������ll_�S3�2%���L�`���9^��i��;$8�U��\\\\0�d\\\\P�5;��n{z�l�1�a��VJ\\0r��1��SV\\\\m�ϡ���+N]��S����g�u�z�����nA�{��4;���p��X4^fڝ����vcm���a/�ֻ���Dp7�c�_0uv�Ř��8k��!�G/�~)s�Ƿ4\\\"M\\nK�.��Ӑ7A����4I��?���tu΄l��4�lG���;TZ��?�gw	\\Z��]��ڣ��u�L�۴Д�G�a�	HJ�3�Ք5�Y�!��h�	�.�0�U�=��j\\\"L‼�T��BkC���OY�6[�����WD~X��=�\\r�=:�b��u*:Ҫc�+Q�ix2H�F�p�/�J��%wz*5+ɛ��/�l֭\\n/�����Cm�mg��.��I���56��4d��X��e��(��/��p�\\r&_�E�iN�Q9a�Zo��r\\ZI��{��A��ɣ\\n�s�Q����(����pJP�n�b������H�gZm-�V >��P,Gjљ���cw�Э�^a��,y�Уi�J�Տ$�a��\\0^����gj��@��s�i)Ob��l�]�n@{�Pm�U ]�kS�=b;4�:�}��˘o�\\rZp5���qO�	�[��+ݤ}w������)�f�U�c*��,_M�\\\"�mQ�\\n(I\\\'��	f�h�6����%����c��&h(qZԾ�A�1g�N�Q&f�˖O�Vn9��rz�Z�*�o�TTf�9{]t��>~�![�,8Sv��.R�h���u���IBR3t�50-ձY����P�kY�:.��C������o��iF��@�ȥ\\\'��H��^Q���z>�5i�dJ��Q�vJ�;�pDH����Ǔ��x%�O=1��4�S�\\\\5�>(D�����r)<��#�@�d�1�m��h�`�x5j�Ů��.5�8�2f�I�M���Ɛ�B�>�q;��R͂��\\0��\\0\\0\\0\\0\\0��<��<�o��\\r���<��<��<��\\0�\\0�<��<��<��<���$|��<��<��<��\\0|��<��<��<��,(\\0��<��<��<��<	��<��9$�o�=�\\0D�4���\\0\\0i\\0��i�5* \\0\\0k���\\0\\0%�0\\0\\0\\09�<�0	�Y��\\0\\0\\0\\0�<��ZN#\\0\\0\\0\\0\\0��<S̼���\\0\\0\\0\\0\\0\\0K�<���ˉ:\\0\\0\\0\\0\\0��<�\\\"��\\0\\0��?�<�i;DA\\0��A��<�ʼAۀ���R��<�ϔ�ʄq�<�����<��<��\\\'s�<��<��<��\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0!1A Q0@a��������P��\\0?��B�=��p��\\0t�^@,&�5\\0Z�sx�I@<���~�\\r��\\\"?�nyP/�<�����j��nrC�h��7�#����*\\r���ؾ��%��\\\\t�L3�z��R�A4ݖ�B�� \\\'��\\\\%>��m�f��wgH�<�sE��n�<C���m\\\\T)�2wz�����sg������5�� Pxa�\\\\C��ϟ�z+T��l�8j�v��p=�\\r\\r/Qb�/�ho��?\\n*5[J	�)X7��j�lq��w�`�\\n^a&��r	����=��jYM.le��\\ZZzt�1+������ڋ��*�Ǭ\\0(���|�7��?8���hX���u��r��V�/P6��mha�a�n���Pn�~����\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1@Q0Aaq�����\\0?�Ж�/x#ׁd�����>�\\Z�����ׄ)�{�{�k��&~���[o&���R�[��\\\"\\\\�FL�����Fm�\\\'���fF�-��LD�X}rU�UƪqW�����?�߸�SL�ʷ>�W�V�:#��u�}�n\\n�{e�T_�C��ߚ%۝c�`�V�`Y�\\nr��8���\\n����\\0�̷ڃ�ΐk!q�����|���^��\\\"�f{��6�id���~��\\0*\\0\\0\\0\\0\\0\\0\\0!1AQaq��� 0���@���P��\\0\\0\\0?��q\\\"d�%{U���&�4@̔s3ʳ��OЫ�h]��,�V[ԴL`t�QKF�h��,���Q��S�(o[��އ�H�\\\'����2�s�s���nm\\r�$g�-����簚DEVU�ݶ�+��*O2�Q����LNwxzQ��;&G��r�L�c\\ZѭT�i��iݿ���qe�B:?�4!#Qʯ���s��z��T8BDp��Zv���=b*�E���z4rD����f���!�K+�T�(rr�(�9��;��_�A�B=��\\0q�\\\\yj(��o��mCM�57\\ZI�����3D���T\\Z\\\'�A\\0D�u�[�O.�2[�mp��O*���Ļ�Ϲ$��[�5�G�RV]9��?��۱�=��Vk��\\Z�E(�$�>�v:NC멆�J�HI��0Ql����!���[<b� 0����5\\Zp$����1��\\0\\0(K?�d��|�;�&�t���=\\Z\\n@\\0p�tD�\\0������Ku7�6��Y�>��:�:��r��=*$Bvk^��;�p��=�C��\\0���\\\\��^�n3����\\0�+.%�׀��Wk��9@ui���K�\\\'����e��XL�f�\\\"w�<&��ब9��ZLa��a�K��r+RǺT�OK���=}�%pC�~~lSUFk��ixS,�sL���Q��w��3a�oX�8PȒ4K\\rw𦠙�^kw\\Z�Ce\\r�(&*�uJ�q��.�=�s]�\\0���P�1\\r�_�L ��48�jq��{�T��g���)$�ź�vx���__��g����J�K��/\\\'���9��p=��*Ou6���[���� qju\\\"]�7|U��\\\\w���\\\\��/��H��\\\"d��\\\"�{�p��(dly���鯑\\n�Z�\\Z\\nا�Z�u�z./���(�*h����Δw�Ճ��2)�����\\\\�Y��IʨF]\\\'����7��q����h\\0��+8�VV��B9?Չw�|ux���?�T�%ƒ�E���-�������\\\\_���6�������]�z�u+әB)Ⱦ����ۛ�<~��2�vV$���4]\\nJW-\\ni��HTv���\\\"$z����47�����W�zۏ�W}�9�\\0\\0=��yfJ�z\\\'L�X�\\n̙Āc��	1	�.���S�נ����?�HDO}a�&H)�q�@�\\0�t�Blb� �K�z�\\0��R,3���h&1u��9�E�����FJ)�LY���t�D4P6�6����ǂ�t�����;VjQG%Ƈ�g���۽F#�e��\\0���.�uX�&�\\0!�̴pI=�,;#]X����H�?,P DdJ�m�$S�ý3r+���9D$J��G����p��j��������} <S\\Z��Ưuk��<ξ�,%F\\0�pN��䐮eg�Y,�j��}�.<�p(��%,��X�� 4�y\\\'����Gч�F-6�FP�?�C1o4I�\\0ͺ\\0�?�=�\\rQ	-�/����\\0��8�~@�����T�f%%�����l8}oH\\\\��Es�����ZD�=�F�$K�	�Є@UҀ�&3�jQ��.y�i͙.�B���(e�ڿz��&㏘�[.��\\0h>!̀\\Z@G�}�u4��j����}���B$�i�F�����T*�\\0p��=Z��ǚj�J��������ğ��-�=\\0�\\\"Y(4J�e���ش��#����W.oq��ɵ8��S��g��+{X��p?.�ڄ����E㖱�њ.����ޛ<�]�q�S�F�� �t�\\rl?3YY��=G ��6�bg��H��f���h@\\r����h�~����G���]�Ͱ^#�j D:@��YF���ݣ{�~K�\\Z���`:!�i� \\0 ��$G�4�KbB��.S�$�$��:2��c0���B`�{� DB�6%t�6���7�GS��������HQ�oCB��s��@!9�|�����L�b�����ljP$� �t��I�C���oq�Z@\\\"I�����C�p���\\rA� ��\\\"���m�$������F�#Aί�8��J���i�-l;�$�i��\\Z�)�M(AzQy⮍�u�?�h.����ih�Qޓ-׽�>��L�\\\'�X���-���w�5���yi�!\\\\F!�x��:Q �~����5ʿcN�)�:�D��9JI��б��_4�H\\\'��;�ڑ\\0�\\0T���-��3�y��� �^�O���/Di�|�qW����W��$h�����~�|vD�\\0��\\\"�T�H���vR9A��J��@TM8s���H.@RԸN�m��N��|�;{���C���2��C��g\\n#6E����Q���l����>\\\'��?�? ^J�)|��2u�\\\'|�asM1m���V\\0�7���d]�ѲCu�9�4ؽD�pPq��� �����{Tm�</Je\\\\��#�AI\\Zϡn1-E|M]^���XW�~��:R��K�=}Y�������̛7Қ��	o��W��S´���x��}���F(�x�0��PH�_�P�x�M��BH�wT\\ni!�%��G���{�\\Z{Q�;�>\\nb^e7C��͏��\\0]�L�J.����P��Q-���a��q�e{u��\\\"w�S�a�\\\'�D0K�HJY�Q���XWJ7v<������:|r\\0/HR�U�v�j����>iM��Mf�\\0�(�+k��F\\Z����$��2%�B���TD�Y��R\\\'�o���o��[�@$w�%���nVnT�=V\\nQ���oO��/��`1�&���Rc�\\ZVԟLmo�8�ݣcc�3�x�rj$x}�7t*�����hɣ\\0�3Bm�.(�GAg��XS^���/CYX��j�QFB�Z:�%���1���±;�m%<��c�Z7��4�J���C�T�����s!$�\\\\\\\\�F���V:MK��]�K����T\\\\��m��C�y�ӗ���H��SR�D�`�@��wwx��t�$��{5�18��\\\"j�N�4�Oc^3���Ҫ����K��hϹ���?�2�3\\Z�3D�|�:_�Q,C�z�*�G�����J�V\\r>3	�{�7��t7��1�O ��T�:�Bi��!�8�ƆCA\\0��?��','image/jpeg'),(37,NULL,NULL),(38,NULL,'image/jpeg'),(39,'����ICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ �\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0�\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0�\\0\\0\\0gXYZ\\0\\0�\\0\\0\\0bXYZ\\0\\0�\\0\\0\\0rTRC\\0\\0�\\0\\0\\0@gTRC\\0\\0�\\0\\0\\0@bTRC\\0\\0�\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0�-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0�XYZ \\0\\0\\0\\0\\0\\0o�\\0\\08�\\0\\0�XYZ \\0\\0\\0\\0\\0\\0b�\\0\\0��\\0\\0�XYZ \\0\\0\\0\\0\\0\\0$�\\0\\0�\\0\\0��curv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\\0JFIF\\0\\0\\0\\0\\0\\0��\\0�Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0hg\\09vpQdYWzwmrmaziCoQjd(\\0JFBMD0f00078e0300007b07000016120000c91300008b1500002c1e00009f2a0000ba2b0000��\\0C\\0\\n\\n	\\n\\r\\r\\\"\\Z)$+*($\\\'\\\'-2@7-0=0\\\'\\\'8L9=CEHIH+6OUNFT@GHE��\\0C\\r\\r!!E.\\\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE��\\0\\0�\\\"\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0��\\0\\0\\0\\0�˾����ѩ�/&vC�Faj��v�Jzk@��\\ZP�KKfY7�FT��3+�\\Z�!�a��Z6g��2M�P\\n>MK}����T�����]nr�A� ЭS�Z���\\n�f&�v���[|��\\\\����tѠV�(�R��*z�&�q�X�)2Q�$I\\0�\\\'�{��H��d|�������c�D��ΰ���J%G\\rK���V�t=H�:<\\0��R���@zT؋CL|�KQ}��bn�kU��3:,�>�bv��/H�� �\\\"DP�E���c�>DE��f44�V.!�zdV�dP:��Y�z�t,��PWm9qVm������YQ��O��覫P�y�}�k��BE]��ȜQ�����:�VrayK �%O�a�t:I���5ǃ��y��|�=� ��s�G��y̔&0����L���Z��^n\\rF}	pk�a��R�㿏-r���+ȕ��k2+*K���\\r�a^�ty��M\\\"�qq�o]�u��y뢝ɫNY)	�LR4y��0gV��h�2��T�Ph�YK��Ɣd�+*�J���ԺQ8�y4��Y�3��謨)y�}���(����SX�Tfd��v�`�L��+�\\0�<���F�ʵ�{����қ�)KD&�K@��$�Zۺ�ҤZ*m0���{6�Q�m�2�c��P��e�,2�M���D\\\\�h2�g��4H���&(K)�h`������MM�=�v=�[Y��Ԅ�TA��i�W[�f��%t�e\\\\�z)����3)�l](�NQWP-��HeB��Ub�KM��Ӱ��6]3T�Y�nu9���ѻ~�#�y�l�v������\\0.\\0\\0\\0\\0\\0\\0\\0\\0!1\\\" #2A$345B%CE��\\0\\0�L���4)\\Zk5�43v���U���N�GӾ��uD� `�pY�u����1ɋ�t��+�nƤm����b~��FV�8�G�\\0��[��kSFZ�Y����W�y!R�S�ø��q}�9��-,4�\\\">�nQ�^���U��^j�!�\\\'��������</�{0x��Y�����[�]���qu��-g~���__�]q�-?Y�����g�kp���\\0*����\\01m4� ����8�/��\\\"Y�������FO��7�)�%Uø���}��w:�\\r����ǩ�M�Q<����Kn������QvQ��kn�����U��o#�$�Ǻ����C�Wŵ�gtS\\\',�U��r�/ѥ9�(�<�T�l��=�]����?�7���~\\\'�üt׶��Ūt�Ta^Jt���+,f��NC�\\\"�\\\"K��׻x&�f�G#�i��SNJ7:��FX��F�k�;�l��Z-S���Y���`\\\"o���v�b\\\\�=j�2��x/���k	�V6����M�`�+O}9i�Y]d�l�Y�W㐖��\\Z���fYXk��\\n=�^�g���o�|s0˼���_�W}�t]Ө%ɤ��D>�㨺�,MƊ�\\\\�y�늊��J�qxk��A����&jf�ʎͻ|�<>?y�vx9jVV���_b�,�&�N��y�����p�a����`��I컉���U��\\Z�=1�T=~K[h�_�y]n��a�u\\nڨ���Јezi�Hl���\\n70�\\n���=�ck����L<��3S�}�n�i:n���Eӑ]f:sz���w	\\Z�y\\\\&���o�4��ʻ���TDMA:�CB@4� D�x����Ug+���s�}8ǟ��y�6��Ձ[״�k5�k2j�tn�z;D�=e}<�,�;�)��r��#�&t*r�*�>��\\\'��7C����M^ŬN�Z����B%K��2_��+��г\\r���oCl�2�p�{\\Z��ɫ�%_�|s>{[Ɲ�N�;|�7oh	{UTnt�tc�`��=E�fޱx�Jsk��n\\\'Vau:�5\\\\�v���1�|��%ϥ|�tt\\Z\\\"��ȯ\\r7\\rH�6��*凕gVj�c��\\\\�-,��O���U�w��^!>��b ^�bm��?`�f��_�SƢڧĻt�3&�\\Z�߁2jR�\\0g����?��θ�+�Y�7T���X��Pt�]��T��\\\'Z�תu�j���=E1�v���#����8�Yj�����\\0p��7w3�v]0^����ݪ���U��Ъt)��/Ư�׍_C�֏_��cW����kG�6�L�%�R+Ϸ�^>���Fw��cf\\\"K��aչhӸ񦜿�m�8Y���E��XW��f��ѽNbi���7{�z�g\\\'�X�Wmj�C��?�Z5���)���,1�g䫸���Ϙ�|�^���zb[~M��V{o�fٝC�|Hz�����nL��U���|�|f�S�2F�\\\\�aY�M�#�\\\\gU�S��^�W�Z,x�-�\\rj����C������*���=e�������tW��-%���|_�r��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\00 1!@��\\0?����4�M���E\\\"P3��Ԉ�s���U)x��v�����i\\\'�v��B���<ʰ���\\0L�X�K���o�K>��F�0�0�F:��\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 0!12@��\\0?��(�����6f9�Ѯ%b_�P��f�1^9F2��m���P�r����d~��q����E���<�}�L՚�_�㐻L�E�ll,�E��\\04\\0\\0\\0\\0\\0\\0\\0!1 \\\"AQa02�3Rqr�#Bb���C����\\0\\0?^��\\\'�hc\\r�\\Ze��]\\n��e	4�oX�HY��)��ܴ\\\'�-���@������~�L��g.�O�)���թ�������\\0re(�\\\"eZ4�U��T��{�S,l��]���[.V\\\\��u@s��\\Zy�2�\\\"Ҫ��L{D�Ш���eҮ����4�EJ����ȜzߣU_��Q�8�R�z�\\ZM�*�z\\0��^�T�rp%>>IUK�ON�-��)T���w�^���\\0k�}Ҡ>`��ި��U��1��S�!�r�H4��6�<�M�I�R��UX�����?�W�M���T_�aM�#��U~���\\Z[9���l3\\nv����9�-UG�M��Of��<���ϔL��gG5I�/A�U:�e��큾����T��6dSYiaR�&��\\\"V��Q2�͜ZA�|�\\Z5i��e:v��kvv���̞��ԋ�y��a0>d񱛝:�I�m��d�v��3gz���O,P� 7�\\0a=7xs*]��P�\\\'rq�\\rW5�qb7!5�\\\'��J�Jəj��cp���{�Y�T�wA¡�d�שD�.G|a�1��榔w%K���\\\\��5n��c\\n%B!fP�l��)8L)�7�{��u���iAzq�����Ӓ�[��<������u;�*N5VrY�\\Z��������۝F��]�;�af��u�~7-��.�����Z����(Sj�+g8P�\\0|[�F����̹f�0���ȅ�\\0��8z��V��c��Q��*�Ϧ�.%�����.���a�?���:��y\\\'z��d�������Y+\\\\H첨�u�]�s�\\\\l�h6��t�O��\\r	S����6���IQwÉ��L.��H+��`�G0p:	Y��Z�t\\n>O|m��7��Ʉ�G��-=�їP��{���j�h��ն~S,͜��	��0����\\\'e\\\'�7����_�I-�e��|F{���u��+=��g�Σ}��o����W\\\\#�-5�tCz�(D�J,\\ZϢc]��Ãs�U���2�i�o��m2Ɗdk�=���FS3b.~B\\Z�d�d�w���ٷ�l�d��=�\\0�Uր	���c�w���9�h9�\\n�4\\0Ny*t��ڙI���a<\\nl��c��>2�XYך�gz��z7\\r���eEP�z����?�m齮�e�ڭ�&7�*�~P�j�TgV� έ+�v�C}NxcҠ^���U	���i�Z�!p����p���F���(���Dڎ��mx��\\Z��\\\'��v�ޜ�G� rT\\\\ֿ�g�V%��Ӈ�ٵ�6���A�mK����\\r�h^YS�	��d��P����A���i�ڙ\\r�y%�?�!=�Е�Ҹ���h\\nw���݇	Yn1։�?��\\0\\\'\\0\\0\\0\\0\\0\\0!1AQaq�������� ���\\0\\0?!���r�����N��?;�2�M�ws,�xQc6ʸ(_��S�?�E)9�W>m��-�*S��FX�n�_<ږ�	\\nF�{ʰ���\\0������@��-�s��o`V+��Dz!r�ox�h�?�P��YU���T4��g���xA>�_�͸��*z��&3�SݱǦ�_�P�Ri-e�\\0��߇�JoC�A֫~�GW������ӕ�jt�ݨE\\n3�l��`�B��R����\\0u?��C��הk����}�o�<e�.������R�듊��x���TVͯ��έH�g�*��z�#�\\0����?���x�ز[�)�\\\\�(��7��h+z�o�s��e�����i��a���P_��̍x��g&^�n����^��*��t�/�=.�����3�۟y�|�I��7�Gy���ksƻ%�z͜_�g�<�0?�K�Ϲ��>m�r��Wu��&���K�\\nfvl�c�����Ox�2�OyA^Y�@�MNfaw�R��rx�]��\\\\!�Ȓ����Ղnp�K׺��U��,W:�k&����\\Zρ+y��Q\\n���ؼj!W�P�cĴ���{M�85-��vrK�x1�z�Bx�t�tf��3��Vh%�6�Kx �|\\\\�k�y�� ���E\\Zn���Al��JcC3AݗOm\\Zo��\\n�����`K9��Sg�~}��w��0s�4��R�f.ޥJ��d�p�	��a�k$p��c���0*.��f�޹�9m���pV�y��J��A�٨6�.�t`+�bu�Z��A�3�?����Z�Ȃk\\\\��0n��o�hG+٩j�l�*�\\nL1�6�VB��pV�}1a��Q�s��ʋ\\\\��c��\\r�Ln^%˖���\\\"�	�e���#K��PB�bE���uߒ��Q��C(D��e.HUE4�ε1��\\\'	_��]���G���15���]Gq��;�q���A�coE��S��˔%�Tf�Jr���`���ZBZJ}�W�k��,\\\\\\n�ѡ\\r_S�����h�W+�W�)����HA���(�j�FN&g��yX�C�?ʧ�-��]����fa�����>:VeWJ�?���=��N\\\"A��/MW+%�����y�����S,m4�i��V�_��\\Z�Ey&l�03���.�5���3N	�Kxu�p�L�$��t�w��$�tjT[k>1@�0A��`���n\\0,p�=��N�\\0�ϯCa�Y��2���F�qu�9�%2�Qi`���	^湔��?0�u��;�^��nkσ�#ݚ�z��\\\']��\\0Nl�MM}�ϧD%\\\\̏�+�x���U,kT�+<�.��8ʟ3^)�_1NL`�f����������(o3���|��+�o�<�gg��r�O&:P\\\"lI�X(�o����ُq)Gd��)q��\\n�Qd���.%�P&�L�����,J��ي�9����$c�>k�%���OR#^Ǹ\\n{5ee���6~���4%�p�f�����j\\n�ŋ�%4�X�l��A����vO��_J�c�x����)_;��>�g<=��]h�53?��}��]4D+�1!W�atQ^���H�lR[�xa��3��m�C�����,���Y����B�|��;�����o�\\n��JB�GiL�1��1	+�ڏ<ʊ]����q�k�o�3��0گ�4<!�\\09�yɂx�a�\\03�xꟌ���?���](^�YNJ�T��2�1l�p��/��K�X�R\\n�E��{�iV�)_�r�V)&���qJ�@��Ψb/�8����\\\"�u3��t����J�y�h��T��4�ޢUu�yG2sS�R�?B&�FZqu��>�R|cC6lZ�P�F�9%QG�|�aX����I�=N5��S����g��\\0�&&?y��\\0�����ؗE��3���>)��}���>Y�\\03���ܰ�����;�|��n��g��W�M;��_�&�a���)U��y��^~�D���_^���j�ZO��\\\\��T�D�˝��:O��7=/ao�h�k����οU����v��gg~�ǉ]|�ƪb�	��_$gdw���WE���Wb)P$36z?P�l��̦�_P��z3��\\0\\0\\0\\0\\0\\0\\\\p�Ro�jn	:���=�C��=7���VJ\\r�������ls2�fO������ ���>�\\\'cZ?�@�\\Z�HpG�ƛ�IH�?���??��urݩgb̓~}�WN7����\\\"���ˏnY\\\"*9zK㧃�g��o��\\\\gGZ��[5���&������\\0\\0\\0\\0\\0\\0\\0\\0!1AQaq��\\0?L����\\0�v�ԩ�R��ۺvS�8�X��������\\\"{������\\0 w�?m�߿��@>�H�v���+��7�n,����RLcR�2~/m��V����?R@09!� ��ɗ��}��0\\0�ߌ$)���\\ZC/���:]��g�#�{���%7��KU��� �H��0!��6��mY�lGY�l�M����Xq�|�#a�`J�lHQ����t��j�n��=�~�����7�Jk�F�we����.�3{�m���.ÀJ>O��rM��F0RL��Y͸l���\\0\\0\\0\\0\\0\\0\\0\\0!1AQ a��\\0?;���l6ś6�!�܏-!----!6�~(Znm����(�܈�{-�n[dl���XD�|�Sy��g���8{)�K��Jki\\\"��\\0����&N�#w�D��yx��2l�yK��_$O\\\'���X[�d?�5՗[6E\\\\��9��߁�a�b\\ZH��T{(�;�p\\\\��N�����1d�����)��H=�0�K~�Ă\\Z�>�2��S6�l����3u��9����Br��B��|w%����w\\0�I�ͺޓ���\\\"X�`�Gc�5Nٯg/_S�9:�~���셭�l�a\\Z�6�gǆ�ܵ;�����\\0$\\0\\0\\0\\0\\0\\0\\0!1AQaq���������\\0\\0?��E��R�� X�� ��Bl|�4��q�	\\n �8�g(m�@��pW�3p\\n�D�LG\\r���QeA���f�)v�2��U[\\\'�-c�Ll�Kr� �\\0�u�\\n:�Z��5��*���iI���zB��%oB�����H0����[;?���n�Z4=D)�̪��r��a]�{�m�H_i\\n��\\0�uY��K���9pqv?apH�)Ն��I(i�m��*//��������=�����s&vb3͹�^�`t�9�y�k�k+��0�o�c--����ײJ����{����ɶ����\\\"]l���s��\\0s�=�K��]�H�)�A��<_�c\\\'0|\\Z ��x�<�\\0H�8qd��8y�|��<]�$���\\n�O���ÇY��X���p0�\\0|G�����|�4���E�\\0ƹ7~���Y�W����(�1��\\0t����\\\\�?���.��=e\\0�ʼ-�Pm\\0Z�P��Z��B\\0�ֲ�4*[u�=B�����2��s:�d���m�\\\';I<e[��\\r(x\\\"�7��&j�Rl���h� ��K�����s�96J�!�`�|\\\"��32f�2͸ĺ��K���\\n�%�f�D��м�x�~G*ܭ2�g~#�:W��(X4���)[v�cB��f�.L�$��^Oq!���C��9�bP-�l�P:\\rh-ʆ��6ݕ���� ���A�b5�ڜi�0���J�\\\"[�UkQ�-�����X\\0��69kGO?�2e1dU�^I�Gi�5�p˖ڒ�f6�w��AÔ����CZ�l\\Z0���E�u��j��>P�:/D� K�z:��\\ZOɁK+2�4=1��:H\\ZvX}��\\0n5MZB�A�*\\0m�*�&%J-�q�.���B�r�G�D a\\rTU��\\\\A�&��+p�}��B�i\\\"�7��xX̎2\\0��+�ŠU��J*����˨2D�Ӳ��T�0�CtGw.��d;���cl��˦t�U\\rY�ĉ ���\\0ISMq���mE7\\n�XY3�QQ����w}ҰP�,�8�`�2\\\\�e�(c�qJ��\\\"�(�CrC)-	�Pʁ��s,e�g��絭@t@U��w9̤�o��P�����K�9+��%�\\0Uܯ��B�\\\'(G\\n]?�*U�&��Ǭ���!��E�Cg���t������믯q�Z@��A\\0�\\\"�.�{sIU/���SaRj��HP�K��P����<)%�H7c�j\\0�K!�R\\0tE�cת���eA�\\\"�d��&�A�q-�j�*�a}�%�dt�AG$6`�W�4�K�fY~�S+�9v,��=�����X�@*��<�4�	�X@}0��D��bNХ��l*$j����{875��Y^�B��o0f�|��R[�P4���b+��\\0�\\\"��A�2cn���z���(�I/�$����\\n�0AJ(j�;�B���-�J�p1Vض(�B��T:�H4K�X8���|�c�m�GP[�6R�����MAu����T��GVlu5��n\\r0�^T�(�Y��B�����,�H�u\\0(�H�$*��[-u�2����.4\\n���Fb�Xޜ�\\0��=����YҼ߳�P7��C\\\\p�9!��4�H	by��W�1��u�y���\\Zt�ٚ�\\\"�\\\'�\\n���˂�j\\Z�Ű�JZfH�/�1�h��/r�0��X���4\\r�q�Q���_�`��8� F��Hl��nE�,�!8�(��*�u^����L\\\'\\r�FІ���QҜ��\\n�f)�G�KK���x���U�:3���\\\"�6�_�D��-��(yFȴ)�����5q�z��em�r�s�\\Z��06f\\\"��pG[K�u2���h&!��qDE��R��W3SH��\\n\\nn������{�37R�Q�����q�Ʈ��bP����1#\\n\\0)�)4i�~B���\\\\�/�nL�B�n�Xz70��,�a)�yx���/���d�ĭ�K-�YCQ[d�!�d�7C�RxN%V!��0�-��&�`��3��Э\\0fI��t<C&�ыԴ�����A�F߀ׂ�����\\0m�UZ\\0�5�D \\\"R<�,	>�\\\'������>o���<BpA\\r�Q�X��4Kh�r�.�e�r�*�_1���B����~�B\\0�ڗ��U6�#-���5�\\\"�\\nG���!��Pm�N����\\0%(DC@�h��kV\\0�\\0�Lh_~ b��\\\"@���bV���C�i&5pAPof)���L%�M��2̈WȂ*�g,�MpE7O5@TD�Bg��#�\\\\���<�W�����\\0D!`(��PE\\\"�6�.7E�\\\"�ڷ�fo�����m�9�����1���0���r�`���1J��.w��:GL]�dZ�V��/��>\\rO����5���1H�[�T�{�\\0��=�=�DG���fO����-iuPEc,%r�Q@�b	h6��(\\r0�ݽ@t��c�\\n���\\nǂ��q�����\\\\4��S	��r.d]�崛Tj�@ڲ��#�mg�u��i5?E5��x�g����e�qH�r�Ҋ5c�d��i{�Z�P��7��k��`$\\0�g	\\nW��{�E=�3�Q�O%F�����(]AKv�J��6�\\nX�r����;>cG�V�$W@�X��7\\ZT���[�}<�z�\\0�}1)E��I�!���W\\Z���J��盷�\\0�	(^�5ʱc3��PQL�o(�m�5��\\\\��^U5�̧p����~�ט�J��v����Un�J�՛�i]Je7m$��NP�op�h|@qj�?-a�ũR�0���1�XE��y5�>�}�|��.+;��n����~[��P�[̽����aBŗF`7D!vB��=�^��p��A�h	�H�be�GT,��J�\\\\�ـK�Q������}%�z\\0	GNY�@Z��s8Q�ѱ���;�K1���np>�TZk�໫�hK�C$�Ae<s�F:rKT6�YuP|�ȍڸ)�+ˀ��j�&�ަF(�W\\0_�/1t��B���/y��\\0�9㼴�� ΢���j������/~�\\0�z�K����Nx;�<�,�x�����!�z�[��q�\\Zwgu6���`�6a�&_i\\\\E� �h7N��C𗑈y&��/��t����]Qo0<P�&�ąj�.P�W(���	{�H�3�ˈ�0�<��8�0�煔�;|�3�S���\\Z�u��[G7?�>��tX�\\\'/$o�����H�G{\\0�d��N&b�uJ���(�����Q�}��þ��|�(oci�\\0�˨&(��Nh5��h�4���ޔ<���=o��M�vl��h�ۜ.;N��%��^���Ԡs4X~�&�޾����f!R�7���<�I��d������V^abL��%�(|�t�������[\\n\\0���ϑs�g>}8��X	Q}�xf�u$<&X��/��m����D�C�wpZ ����{���','image/jpeg'),(40,'����\0JFIF\0\0\0\0\0\0��\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\0aSCRlfFNVfvWLFXnxx59(\0bFBMD01000abf0300004912000055210000e1220000892400003a2b0000873e0000294200001d450000314800002f6c0000��ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\Z\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(��\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((��\0��\0\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HA{X�CS�m����8�j���\\�lx���_{�>~}\n�Ώ���s�v>d}:��Ϥ��s�>z{�������{P���u�s�p�GVU��Ȭ�U�W\\Y��r>r2o���eV6�Υ�̩kEE�FbmK�\nŨR��ҍUu5�+Bu��zW25\'7&}���r�R�Y�ū�AhX�lY�}�}\n�r�WE��7Q&��McJ�̚��1X�-I,���\"�\\�K�kDL��N�k��o)[��ѭyc��͛�;s��o�t��^t����䶅��)��i��e�nb�h�2�T-Z	����&�&�3��Z�B	���B�Mg2�+x�M52�M\"vg�Ǜjs�+ԉR�ΒL-t�M�ҭ7t>��Zls��\\�ZQ��^�Z3���5��+������/��y2 �+d�>w��y�Ǘ��>�Q4�\"bu�-�f��r�Zdşb%şfir�B3�́�U�R��Xվ�hSƲ��,���Aնp�y�����>��O&o��\Z�����G��tjz�x�t���:�88�\r�f�ޞ5$�+[֗GU3�Rk\"5��ǟZ2şb9qu=zu���K>�u.զ�͜����W�N�^���W�FMu��Vm��b������i�{�n�*^��5��_g��}:�u7�!1���^�&�X�hM�s�NY3l�aϷ\"�$���\Zn^�:Ʋ�-z�j2�^��G�\\��q��>gN\\=.Gg���o.Ϣ��3�;溈���L�isnW[46m�m��5�_��˪{s�J�CR�M�bshA�.����҇���SX��r\\\\��E�o=����e��ju�՛������/j�S����m��t%��eWc�v�>w^n���m�o��u�֬G���,R��e	ra+r�*u#7(�]z�.����4���Qɛ�177�r�[�+3m�+�rv8���7��C*[VM�d�\\R�\\&�W=�v�ח������C�(�)��e	rUY��0�4gҭl9���if^j��B��D׃���~Ϥ�ح%�uh�����\\o_K����S��J����v�ն�X��錮˿�jɷ����VgF��dk�gϧ4�\"L��ͪ�S��P�l��h(�Q~l�����Mf�u��lF�=s�qw�*��	R�د]=8\\��w�ϒ��2��3�x��;�{}yz8���\"ѩE����J�ϧ9�6��H��j˦��ˡ4�\riץ�`\"a|\'#�����L�C�{Zi��]]=�już��N����[��{N�r5�F��b�O��u�zo5��y�մ�ʫm,�oQJz�͟^S&=���ȍ�s�-K�\rK��SRB ���xϣ�ߏk�-�L�,])z[�t�����n���TV*�sZV���z6)��z�\\�g�����W�v����ߊ�E)OR%NM�˧9�.��h�GGN}z�з��[C/K�bDF�H�WҾoǴ�=,u��-���r;8�\Z3Zk�ܬ��+e�E�橵���	��L��z�\"�=�����0Z:`�┷Q2�N{�^jɗ^L�ѵ���>���K�5m�\"K�k|�罷��z�o�r���z���;ެ��2��Kй݇���o#U̙�Фs�=n�_+n���tel�-�Df٘͟Jy6d�91�SBttÜ���V�e�i	�s���~��]4������Жpﭪ���Q�YUԶm\\��T�Df�ms���W��D��H�R�Y�K���6��L�3��D�t�\Z^�.����wΙ%��0k�}��8�s��_WI�w>ϵkDQ�K�獵a��E8��D���=;r���ax��)���-lM.�L�VL���f���ꢱt��f��z��d�j\Z:�X�+6��r�>{���{>O^٬cz�ծ���SB.��1�nJtC�C��:5z�u����k6�D9\"�uIj3V�\':^v�W�N]&��r��fkڗ\rf���u�IE�p>�y׃��z~O^�1y�_��O���Gg��{h�Z�Ҫ�CdW���n�_!_I���\"�]⵵u��]*�&��R���g~y�fv|��F}�\'D�׿ү���i�2\\3�5w�g�xwi\\���<�x�>G;���C���<u�9��O���}�/[�u�:�ⷋpr}5.<M=��8�j�����Rܡ(~l�(�1U����E\":��j5��5��fg�f��z��%f���X^�\\��֭��ib�~{���r�i��S�q�ۏ�9��Y�L��6��&�fk�4-�/퓬xvx�p�57)ͧ4���ɕs7>t��7��\'�����~�:�c��`�2�si�\n��ng�Y��É�o��z;������i���ϻ�:�vز$,��HV��N�HE|w�N���ty�0��3ٛ.����͝,�G��~o��ٿ;L�f�4���T՟D�D�5��U���/̹*���=�-���70�x�Z7	%\0��&	\0é\r��1-\"k����J�\Z��C�o9�?I��+ZM}#��5�Q9uMjnV�i�_(Ѝ-D�҄�j�D���\0>μG�ŷ�����Η�s�חt�2�^v�MSY�$\0�(V�UoE�XEs7�X��n���U��$VffX�Ŀ@��7��=n�f�l�w��iчl�X�i�Le��~����j�>��r7�z]vd���t�3zg�������!��PQ�^mRb\n��i��.��ʮyٯ�)�����wc������GA���@�o��v3H���y��Z~�YSh�֕��gK��;��ru3p���ӆ��.{;3?���.�͠�\0���M�P�&ԋ��Om�O��ӓj�� _�u�]^ܷlɡu73Vk�p�vx�\\��o����p��~=��sYV��M��2�\n�3��9�v������E�~Yb蘿ER����f&X�c�nb}�k��U��[���U��t8�ܻ��;W��{c��������:�?m��j��R�̭u���֪�~�i��.��}T�q|�7���Y��}=~bVʘ�-B�Z)K�cvK)��Ǳ���	Lgۃྕ�^ZEf3��txw�����<�\"�{�g�n[t�q�i��ݑBj�ܲ��sTWM�ﭲ����S\\�tKrz3�z��߂,��8���V�K���vz�滾f��1]�y�����g.-f����G�!.R�k�q\\��Νe�6���u�\r�����C�̫�gG�\\����)����r�T������&�Yp��iLU(�G�O��̮̭Ep۞W��yr����`P\0\0��jfW����F�g�U��?G�tµ�5�Z\"[֔����$V���k+�ŏ�|����5]NY�yks�R��b��/Έ�g����j�@I$�}�\n��/�\Z�`�|<O�_�D~��ς������oϡ�\Z����k�@}Ο���E}�~\'���0�B�8Wײ|��G����y�h��<d6�3nP[\0\0\0\0\0\0\0$��H	 $�\0\0`$��H	 &\0&\0\0\0&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?��\0.\0\0\0\0\0! 1\"02A#3B4@C���\0\0\0�\0��P�����E\\j�ڬ��5������zO���jE���j���Z�ӟK�>�N=.��Z���j���jO���zO���*=��Mg�X���#�0�!��d!!!ln��_}�cg��1�D���B�#BFm�!!!.��1��1��H{>�B����				�\0��c\Z\Z08�D����P������1��lc�$I\rnǺ�$$G�B0t�0c��\Z\Z�f�\"H��{�\"�$$$-�`����G\'�3٘�>�ƌ\Z\Z\Z$������\"$$DDL�����B�&��$J	���(��^b�{H��%�Y���{�	!��c%�BBDP��	G���h$S	HT�Y�=_:��<j8s�C�ĞzH�uBe�U���!�CD��\"��!B3��z�X��2Z�N|#���>��]*�b����p�P����ʍ.�GS�2W�\n�o�2\'��H��1�!B�]�H�RFΊ���Ҩ�F�ܮ��+ey;[%̪�^۾svKە:��\\%n+�f�(M7(�v�y$444=�h��d��-:�ϸ�9a��V��,�i�*��+�ߪj1�9�YTM��^#?r���P��S���n�HcC-���	�od�#u����}$��t��q��=k͏�Mf�^ΜO��l�g�I����hmJJ2�j^�7�=��c$Kd!z�Ung|����WK���c����f�6��=Jy�|�1D�Uyi����Y�B�r�nǳ�H��DD/e�[�>���_��C�y�\n�{zo��0�>�uo�q�����:9Q%S�LU����:�EF�����L���1��\"C��[!�z���y���S�.t�7���Q����J3�}s�����J��P�\Z�����ӼNN)�Z�j�}�c$1�c���D{<\Z���O�_���������S��?�+�2����A|hK�P�%�q��g���\0ש��ɥ�=̐�c%�D��!y���\\ɑ��^Ξ���\r����$H��K�R��+W6�S}\n�FO0f�_4��c݌{!d#������ȼ��^\'�\0��?��:G\'�9p�����Ó?��3O,[Ǳ�c�l��B�`�������O��6�����_*$!�NGNK*�]����̹-�6��7���~�d�2C�\"$$$cf4Z���(��c\'���C����u�.�ܜz�]��ԉBp:�NQ��V|�3K�R�c��2C�\"]��o_(x+�=�YMq�4���:�M5��e��g*tBE���wIm�}]Q����c��c�d�h�\"!w��\Z������/.^#7]~�%&����x��m\n�ɑ2l�p��՗ip?4����!�;X�1�$2\"\"!l�}����!�?h�G�\ZZzc%Ď�Z�u}Kr�R,�jl��f�c;�\'&*���E���\'��i�^�c$=��\">��Z=7���&E��W�K�yZ��-�W)�u�\0epB�H.5�b*}*z�:�Mz�]U�C�\0w���DD!��+�������%$�.h��1�f6�|�I������~ֻ�<zS��c��Ȉ�!w��s���ƴK�^H,(�cYN����25�f~�̤�p6&٭˳���QƟ��d�2C�w$jt�D�+H�xB �O��;~��%Y�·���*+����c$2DH�B�n��^�T�	a���t��y�t�#&L�[#�2~�Mr�}3N����C\"D�D����Wi�����~ad���»�`��$��0H��5r��=.�µ�2C��DE܄O��JS\'�m:ˏ��$b]��^�U�K�=Ω.$�]_���{q��?�}�F�X��7��Dȼ-�Id���i��5�ce1�챌�\"[\"\"\".�ݬ�[M�p�\Z/�\"#��ď�:��I��*���;��c$1��=��=n��E	8�\"/\r>_�I%���\n�F��؞��4Ǫx�f1���DH��_c_����Vꞗh�\\�,�Ġ�T${2C���-�1m��:E��c�lcȑ�?k�M%�����	�bi?�M���+:��������R�sǴ����b��t.Ĳ�xո���N��p�L�*�\'H��mG�*��~�ɧ�ۇؖ�cǲ���B�J��+�*57b\Z���7U-=բ�������|\\g]���y1�J:M6�UDa�c�2[![!�N�ɟB�N�5)֙%���G��Z�u5F��m.\r�J�W�W��#4�p9�Oӽ65-�Fe�J���c�1��BUS��[���`�D�<�H�&�b~T85��b��2���+薇_��+��GéHuM/�B����J���ݖia2�,�5�c�1��\"I��+�I���\"h��W����E`�裨SR�z���qdc���Ӂ��](HH�DQ�����)���D�{��$1���\" ��z3ْ$����\r<��y8d���`�i��G[������&��V6[�S�q�k��~��E2�[1�$1�d��OͰ��(��j*�#��O|dKۓ�PɌ8�[�k�ˠ�.����Nf��T;�!��qSZ�3���\"D�2[DG��\"�jqtOk���+y,��k\r\r.�^��B&�]5h*��=\rg��}>����a.�r�}�ek��ԉ�!�����=ɼ�Wi�Nu��������`�#��\0��+����m�I���c�.\'���+#���c$Hc-��J�M�P����e�e\\>�ٞ}j�w�4���±�ic���g�Yő������c\"CM�U9%�efI. ��\0��Y�\'\';t��*��j��y_���O�l�d�$Sd:4�$��$D`�\0�w��v�t�e�d^=;�f�Ԍ��W­�\0d��WW�L�rd�H��KF*Pz{2����p//����d+�#>�_W�uK�gX�b���/�˕_l�\03�i��$��=K���U><m~�>�]���2�c���fD���?a��vy���[����!�d�9A�0B\\!�g���#��:�v�mR���8wa��FhR4�6���������C�Զ61�B$$�F]i�/o���!��ڿj���+*d2D��̞��o��7�=6�S�\"&v��(�z�D�1�j�H&G�?�^7��bK�xqfMv�4����h�W/�,�%4���ˮ�w���K�gf�P���H����d�Lɨ�\r/���t����}�\'c�{d�x�m*�2NFxV�Bf��{k�x|\r��D�V�>ޡ�z�K�8�dɬ�o����ԫ�v�V�Y�;d��)�2�Qǲ�]N�_��#KU��AB\"�,����)��!������`�̉�RXLO�O�Y�U�^��gy�)�ogڶ�]/I4�̙)�-?}�$��R�O�?�F�3��էc޻4Ȳ:�˙[FZ�Jv�>�$L���ug!�M�]C��W���+�O��I�ɓ;2�\\�]\"�dll�uWgxL��L��[z�o��&yB\"̙2&/9=�@�O��R�r#��(��W���{�c��f�F�\"R\'#_���##ߌT�̝�o��2-�d[��D��RDd��i�khvp��)��\0��L�Ko�S�R%&H��P糫������&vș�FF��GR��FR��4}�ir\'�F1��U.�ŲL��9\Z�����?fND��24Z�>����U��ڥ=��W�z�c\r��|�򙑙2I�>5� G��L�$ɲ_k;&dɓ���+g龉�h���B2d�vL���ɓ#,L�e#&�Ȝ�H���ܙ[�zt�44U��$dLL{���\r�:��GQ�^r69\r��?���*��9�9����Z�Ze�ӟYFj���������tb�-����KD#�?�����Z!���~��?���t��\ZS�\r)������Ik����ҏ_��L=v��W�p���Z�����N��1�o�\0����\0\"\0\0\0\0\0\0\0\0 0!1@pA��\0?�\0�cc�����������ś����r�\0��\0��\0-2��\0�\ZآVj��^�\n\"�a�j��	X�r��6Y|�G���j�����J�c�_�!,�E�\"X}�Ǆ,���?DG�\"�Ւ���p�0�����6%c�D���y_xB��&?��ƫ蟥����Eq\"O�b\"���Kֲ��xd�|�+��SD8\rc���o9���N�e�_�]x��Y��9Y]ߜ\'Bv\"k3ˊJ����,6I�IW�Ʊ)}�]�!��o�ɏ����١��oW�P�h}>k�(\\���F&�,���\0��bEx���(�6^o|���e�Ye�l�Ѹ�Fl_���b��\"�e����hԢ�(��(�SSQ�������\0\"\0\0\0\0\0\0\0\0\0 0!1@pQ��\0?�=E\'�EQEQG���QEl����]�5ޱe�5���$1ʉN�\'�3�B������ɞKb�X�D%�����*��|h���J��J(����Xd��z92����Q[�,x��9Eu?2�D{�2��C�Vd�ǵa�k�Ң��}�ć�ͤ)|}k2ğE���E�^7x�z���Y��]w�\rݐVEi]vJTJY�Xج��X�k�J�%�QО�ҳ8YU��BŜ��\0�H��S/�x�NJ�hxz�b#������>�s]�i�2��)�\0�yD}~N�m�X��>��:\'+釱t�69\r���!j�cՔ5�8�Y��ϨQ��^̢���ś鳑e�^,����r9�E�\0 ��\06\0\0\0\0\0\0\0\0\0! 1\"023@AQa�4q�PR�#Bb���$���\0\0\0?�Ӹ(�F�6���M�M�&����������������������ba(�F��\0��#e��P�N�n�!3���a���,\"9x&�hъ]���jhÚ���3Q�\"�]O�u4T��7��3�o��4bN\\�ke�ؤ�CVJd��6gLΒ�d�7țx�1�y�O(\'����F39�u�8jc�\Z���Ǜd1\"�D�xt\Z}��\0QbKk�Ƥ�<D�؏�4P���ej�f��.Fi��d��\"���������\Z��\"\\���E��%�3�6gDM�X/��u;������Y�2}H������\n���il�c\n�O+��w�sVk���1$G�|��g�)����Tgq��$�	s%&g*D�|���69�j\'�n� �P�Gv1.e9EID�1�D�}��<I2�^m����\n�f�Atd�+*M\r	�b8r�D�{1`��C�b=����_`d��E2(�1���\Z�Fo!�i�!8�`���x����K�C=���Ї�ɻ]�W!D��P��|�!q�!K���ȓ��v���X��!�VV�lf&$��L�+a�b���V�o{(�$쓣\'	U5lћ\'ka�b�R�n�R�h�2L�����$�Y���R+����8FE����Grw&񶐶f�Ey6�5re,Ĩȟau��+��U�D2��f6�G���B$��6�m��B�\\R��쥐�vu�9Y+	7�!���WA�ߊ�{Z��\\�ј��Ni��O�������\\l�x2K��st�@V.�>�{�������p��&��9�[\"K��7U�Y����l��&r�흊�nh�ݟ��|����\\�Q��+jI;9\ZEl���:�K��2d��F(�R#��E\n�d��8�\Z�y�\'w���rB\\v�M\'!��1���mU���m1?��h��D8c�8���57��g�\rx����ugs����\\���b��K!��;��d��)�ҎΌ�}[+3�VM\\���\"X325(�e&J:1�n�+	�t&�z2��YL:�I[��[�%�32�O���\'̘����M���pT��$�6f+������QiB��5	jj�Ԯ\Z�\"d�4Mb8\"�S\\\nY����Sw�a竓&�u��d�R����R����C��~\"f٥f5�x[\Z��Q��V4.��d�p���}u�]pć���)Y��ar%�U\ZXCK��p��e��8U��32�~Q�{������	KP�9H������Z�$��\'d�;\\���,7(K�fzًQ�	BQ\\��F6���^��\"N�,��3�S��Z�:Y�.Dp��Н������I\Z4c31�wf3�[+��W��H��)vW���X�����ƾuT�N�M\Z�Ȟ��_\"8{��݁tVT͂��[,��1L��-%�����bq�I�>;���y̏3�+�����K��MDۑ,�M\'�I9#y��.���I��!��6��\nb�)�¾b/�N7�nY9/&o҈�\0��\"u~�J��Ûm��\0�j��\r�\nA��=C�(\'�ф�\Z�^&.J8a]ٽ�(����������%��9/\'��~Ǫ��Ǫ��Ǫ��Ǫ��Ǫ�~Ǫ��ǫ��Ǫ��Ǫ�~ǩ�y=FK��r^OS��z����d���%��9/\'��y=FOɿ��7�?$R�A��F�y�i�\0i���\0*\0\0\0\0\0!1AQaq �����0����P��\0\0\0?!�\0���t8�P��X(7��\0R��\0����!���Qbq|���g�\0� �<�\0��p�\0�ɿ����}�G@ᱡ���.\n%�*	w�	D	x����P��xe�cD`�/*١A���x��=I�BB\Za��#�K�Pr,C�F�5dX4%B�\'����xq��,|ȸ.6\n���?�Q�а�x�5��\r#.K*�<�[�!a`�X�B�i�A�BxD����`N��C8,.\Z�	\nH�M��Ւ^İ\"��0�L�2M��\'_d\n�QQ\"��B\rQfA!�\r�!@�٤�RĤ�=�ȩ��;�r�H�-��l��Zk��D��_(�*6�X�[��\0(� �W�bD�JQ��BP[�����/�h�}7D|�(!�nFѴ-�4nE����eеV��j�������6�(�f�h/�P	Vi`O��l?اb�\"�\0b���!l7C[L)�[1�#Dr��C��O�x.KhBA6��&mZjWh^�v}��p�<i�.dn�{�x�X�XЂ	�Ƅ9\n-|t$&�ibٴs[b+BI���\0�����*It�\0b��Gl�=rO�Z��LﰤQZ� ԟ��p�z\\��B�K����f?;\"�<�LV��)�,�EY�9(!��a�+9M�ȍ9\Z8m�Kn\'��\Z�;b�������#J�|�f���]���\rE��;v�x4kd-qDW��>E��:��=�^\rPЂ	��X�1`��P���@��)Iۄ@fd����]J-��\0Y$����vI\"�6�FG�z����o���fL۱�IQ�:��,���S:�h�v9�\r�D�7�.+��p)P���t*�	��7xx>�[�!Y��N�h�����-�腩&�?���R�\\���Ea]����~v_��B\'F��o�Amۿ���p�\0��K�\\4y:�-	QTA�1#+��MD۾89��&��B���\"e[8�M&n�J_0�؉��$Ka��bTx�1p�Q��+��i}��d!{8���4UA��8>�?q�u2�e���u��J]\nb�R<$��,Z���Ռ��9��zP!K��Z	0�K:�hT�b�R9:�����\\\Z\r�n���B���\0�^v#��2�yᑑ3�;�#��A,�4\Z2��1��Y͹*S�{%>DJ���!�g�	��$�������ek��kp^iH�7t\0�!��R�Ċ��O(�oS����\n	�\0K m���8��߽-�����B�D���\'ѼOh��E�GOCc�Z+�b�3C���Ђ����r����$�D����&\r{/G=�i/�*�7O\"�z��{hS��G�\0D���-�\r�I8z\re�hF���\r��w���)\Z�A\'�O�W�N�>���D��W�Y�_�S�vA�*婚c��T��$n��Bԗߒ����[T�������m���=�a�󎸱a��<�\'B��=���kO�\"�c�\r�Cu���̶s{�p\'I��`\\���țUCݎ�&�x�[�!n�19�T�_�${�j�0[�����k�qxl\'�dP��&��5���\rz��#5~�i�k��\'���V�Q��#!�%M	���S^K��ZM��1P���C>�o`���@��	B	xzefļA?����!����{4�b$��[c8��4��\0��q��Ա�>���9fI%=A.D�������-�h\"����%X��{�$#LK\ra�����~����5lI\n�I�\Z�.	�{(�H�(	�IK�QgP�\")�	^FQ#p,�3�=y\'h�a�жr�LX��\n-\rb˒F]�)��!�!q�}!ylA��}�T&�<��$�L�;\\\r[B���& ��lz%�!�[ж���헡��A/b�Y��|�&X�����y��5��Իa٠����*�!>�Мk��:�Q��|�(G&��b�h�Z8����\"��xnB�Mlhd&-�.�x�:���J�?�n/��eh�$��t4l�!$�\"D;�v=|�ЁIɘ�`߱i�OA����k�A̠�\0X�$����OD�{��I�������l���\"{a�\n$�p���\rlB�7���<�Q�iP�E���]\"[i$&���$�h�*K�9�d�Fb� k��X���p�^�#\r	bd�9f{�e�(A���7�9�-��(�!��bf#��?�f+cTQ�5,��۳��5���:N�X�1S|��ћ[�%��S��r��~��2�lQ�E��\Z� &	\r¢$1��Q�b�\'�l�)�+��Gb�jʣlP�.ń�E�B�T	x�<��ߣ�zpE%d��a�ˉ�dQ�4�Fݍ+G�e�p��`N�Ȣd. ��I��M�Z9Â���;\Z����f��7�eO#B;fDJD����&hK��,���cH�9LRc�R�!���>�K�1kJT���QC�s��<���!	G��5ȱ���}f0J��!D�hl����r�	S\'�����6\n��I�IR�DƑ7��=�\rǳW�F��	��BVGG\"�=�O2�\'Л\"Q%Ȕ*&=GCs�R	�BR�ʐ�iō�����b\Z�+x��\'<���q7�O�t5���$h8q,[© $1��Ѝ�)-�LD��m҄.Ȳ��ކI�2Ǥ\\a$FS��1��D�B���E�]&��2�2��.K�/����餯qa�O�ZWT?1\nDa�F�5���ls�9�&H����BB�LnM@�M�-��?1��}��\Z�E	S�ᝣ�Vf��&`�{QG�=� c������8��.!3��b>\r�K�4K�XXNp��J���)CЮ�:�\Z=I�-�l�8�=H��6��o���Z�`I�E�ѫu�0%8~���[�Ga:��(T蒸�hy´)}!Jﷆ7���bǎ�gq�777��0��,��TI�M��Ob{�9�(�\"}���xqs�:\r+�AO��t?Ci�F�wD��>!U������c��C�����9�|��	�m�Ʊ~��9���{W�~NEŰ�I%�(��<e����D��.�&i��icW���B}o�UU�D����%b�y��<:��\Z|m�®\r?@5t�\r(��N�HђR�Q�b;-pmO�a� iq�-�J�J��wj�xp�|������K(���c�K5���ױ�c���c�z����<;\Z�]	Zd$���	�Y���\\x�����3��w���A�G�Ps�͉���*��Y?�P�cp��=\n�V�Վ�A�j4����%*ꉐ�vi����Mk\Z��f�.�E��p4�����W$,�&Ǧ[����Sf�Q�$��������H��σ�>��xy{�2�9�*z18�p�^��G�ǩ�>�I�5���J0��5�0yd	b�O�Ȕ5�yT��v߬�e�؎K�*;�K�P֙G��\"6�lu\'� ���!�6-�9\r|�P.ۑ#PG�jN�69�5o��C?b)FHy�Y{6�N�Kܷ=X0���c��h;B]!ʝu�}��DH���L��d�T�O(g�ZH�#���� B+/B�͟ǅy�,����:�$�B�*IYt�О��G%!�OL݋�O���Av��@�b�F��*�E[�ݺ%�Ş��ቾP��[{&r!��W��6�8�\'�u��gD��\n�8�/b����\r�S�4-~����T�g�dU����%>V�16�)��C0�EL��LF�1���?$Q��9�C�#>bÚ�m�\Z��4R��3$3�A�\'Cص�[��4�=���:���6�)�q��t�JX�V�,���a����!�HV�(,�R���N	�K�>E6P�bоk �X{�*t*�O��P8Í��͹-��qG�\Z�Ep7X}�i�41:9�	t��l� N�E�W\"�ďB�sC�KB�c��r7C�{����CCk���<�ݞ0@�<������Ę\nq|1�~��>i����(��Q�B�d�i�?����CY��&oc�)F�0�T\rZc��T���v���wzCP�,7���\\�e5��Dc6�j�*��(p��9�k#vT�\"91�@ޝ��s�@(�0�e�\0(���ɴض�g�X�8J8l�I�ä���\'�t CJd�47[\Z׋�6���V�z: �o�]��9�Ƙ� �#�bTbON�$�lf�}�H��������d�dN���Ch@)9�%&8��A��S���A��Cd:�P�������T���Scd����f�~��HbO�8Y��yDd�FG�2)m�\r棴FK�l�hCz�e��%�bBh܋���ʛ\\�*��o�xk~�Eb\Z��TB��4c�^6l&\"��iE�%�s�A�	�-X\n�I6hI\"�@�^�cAǑ�;�!��b$�u7��$s�M=o�)e�����!!t�Sk�,\rD�nm��3~ɱx\r(p�I�:�� ��;B��cd؉\ZV�H���g�lq�W0�d��p/�k���m�B&$���iM�){&��`�Y\n]��`��Dć��(և�.�Ssr��P�O8�YH��97D�<Y��\Z �0����f�I#��ai�X0���dD)\Z$��1!J�@�6�YLJ�{C[�����67#*0�J�H1:4%+bUPR6{;ШO�hT�M����}��bBnKl��$b;D�����Ma\"t/�M���a���� v��n1�rA����D��[�ub�_d��0��KG�oPu���[s�(�m\n�({�\'��d��`��0��6��ƃpc�e�L�/��L+�7؜˨Fڦ�%z5��\0���!�	�����\'�LtEB�da,�͐� �A79���2H�\"*Ib���)?��&��n�E�~q��\Z�����\Z\n�\n<�\"&~�e$u��6�5���\0�3�LMR��]�%���F4T_\rB2��kI�yɹq���-`�^hn�m���{\"������Q=��y��\0���\0����\0\0\0\0\0��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��C�#�;-ês\r,� ��J��U(�뮆.G���<Գ�ϵ�tߤh\Z�΃N*�}>�,n\n�c\n��?a������\0z����(7�)�m�Sb�+tGz�d�	���J��!ȃ��yAM��Ȋ/��R��g�Y�����׽.O4\rCz_����u��q��ze��+Ӭ����c^f���؇� ������5������M�ι)A�u��.��%I��K�A\0�A��,c�\n�!��=����m$p@����w$�N���)	_ĆM %� �����n��zV�?�u󒎜������:�y$��>�\0��v&��wf9��L���t4oo����.�Na�9��y.l�-5fi�&4F-�j4i7���P��\" ��䃏<Y��2N��jbT��������A����A�F����K~zD�J\\��\n�m:D�L�l*2��`\Zܞ��E8&bTL}��}s\0t����o<7�h`lv�O8R����J\\$fm�����\0�`W��3����Cv���\\��1��Ajۓ~y#}̑�KN�O�h�Em%.������@m���f:��\0�7�T({���\0��	��]���O��\0\0��։�w��	׫�ѳD+� �O.�˲\n�&{s�/<��<0�3�,0�r�<s�<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<��<����\0 \0\0\0\0\0\0\0\0!1 AQaqp0��\0?�\0���d��X��,X�bś�,A��)e��� �϶^�o��9>L��<�pޡ���!�8V^0������?�?C�d����%��Bı��<J=Ol�H�$Dp�wc���×���Z3�KNy>�`{[d�8��-!�r��87����lx�m�4�;�p��m�>A��\0����$��0ۤ������]�G���`/��yc���X� �w>r#����F����f[wz����8>w7���6�>Y:i����A��ϐ��3\\|-�\\��-��`�l���M���m������pde�Vz�,�y�^U�v�q�8I�\r�kt����Ϗl �w��\\oa��$7e�xg�� �:��v^r�!���n�[o|~|%����X1�_��l�C��Z�f�_�Ac2>�������m���x\Z���w�l�	[<���c�\'��cbw	�I��bZ8a�dy\'���|\0m���S�dYq���Yl�wvl�3W+��<�p{m�Ǒ�\Zg�p��l���vw��bc�BȎ��x-��Ac��G6x�#�m�f,��I\"^�l�e~͐r�85�\0u�	�՜���6A���\r��~G���˩�b �2����m�����R��?ŜvN�Bӓg Bp]O\r�yl�x弃#�t�X��%�N?,��y�M|�����2I�ju��ޮ�[0}m��1��lX�~�1��A�\0��\0\0\0\0\0\0\0\0!1 AQqap��\0?�\0��E��,l���͗��YeK�HJb�����։���Q�ߡ�,~|��\\��E�%fǏ�J����1�^�-2u���\'P�@��*�����Ju�Xŧ�X`�$-c�b/�O.RY0�2���8�?�&5��Hı�[�j��sp����Lh\r=;�9��U���(�³��&J\"��&�1�,z ���&��� ƺ3^m��bB�X��J�(���J�}y(C��*!<<	�j��#��h�8�?������n�=b�ԅGR�9���J�b̯x?a�]E�x�5��������A��Oe���#�)P�\0tV�c:\"�|\\~e_G���5�K�\Z����A�����-�9�H����Hę�1�c,Ai�gK��?�_�g�^�����&,�\'�\"sLt\'�!!4��x�<?��i{�Zv�m�:�<bav]�(�\nŌ~�M���Ex1��_���H?2\r��ˬt/�)��z��Bq���h��JNj^��AG��:������X���VQp���/* �Nb�eְ��:S��\'ވ^/2�dJ\\x�n*Y@��yW&Rb��W�c�0�����j��Bτ!���pk��|Ѵ�o���C��!\"�M�:?�!�\"1�<L�C�-����4F&e���l%��A�	tb��j�6��DD�A{�(���:CPlb�)r	/����|/���d7,l��\0���\0)\0\0\0\0\0!1AQaq����� ����0���\0\0\0?�\0�??_*$�R�Je$�_��W�T�R�J�*T�R�k�1\n�\n(��@���i��\0�\0A��\0�(����\Z�DU�Fr�rӵ#���\0\0D���,�<������?򳼾��??�(3�\0i����BW!��Kp[p�f�r]N��[{��������8�C�@�gR��&�v���˧0�s�YVǑ\r˲�����,�.��)���w�+ʇ�q5\\���ݽK�g�n�<�b�TJ��&W��eL^�dAB����|����c\\�+P�J��ٖ��@�1�*�.��L�H䁫\"���D\\aɘ�x�����4���[� /��R��r�&q08��+��\n����$9��R�P�8�C�bYX��qW\rN2�4~b#<�r��ߩ��ȅ�-�p*u����|���&kP$�ÈS��EX�aw4��1��a���r��/��K1��Ļ��E�Ts�%�K~RD%��\n�O�\\���ҮV�1(J.������M{�qu�Tn�ܵ���8�T�pɈ�_\n&��w�r��*���\"�	G��,��ķ5&��)�Y�T�\\��R��r�h7q�% ��*��[3��F�5����@2��\0�6G�8���|����f`�~��$����WMK�c�Q�Ly���-X�J9YB��|�7�_\01sԴ�YTDdT$32�3�^�x��J����\r�wX��A�E��_��=\09L3��/U\0jt��Sl���=�L�k|�KCTf�G:�B�W�K5+��Q�%�nS�C�dԣ�Q�d���\\䙣p��aSd�C�2�u0��e�_*:\rf*��3�:�Q�2�6G��h�#<ځn�р�,{o͜ˣڋ����q�Ab��c֮��\"���8�\0��ׁ7��5�k�1�X�M�y*-���١gs�(����$�a�3�U�k^^\' �pN�3=��a⥝ϩ�\\Q%��S$A|�\n��%���!��$�Ϯ!�D���+G�h��>\rt���<b6��FC)�ȵ��LNQ�D0�\0i;�hw�U��d��iP��\"9���Sxfc���`�0��%��`\0��XTޢ9��Q}K�ȱ��!�f(-��/q͊��3<4�e���2������J^~0�\Zʘ�\\TV�Wq������h�%-|D�r(�����ޥ_&�=@��^�P�uߩ�0\r��^8�_k�%�UU�\'�b��o�8�n	\rUV����i�� J;&,z��\rۡB��\\�D\n)�爀e���;�G(x�U@^#�|C0(�h�2�r�-K5S�q�ى~ҊE���GЩh�a��P���h��\\˶B1��eT<�����wq-Fe�2��y���_�����qVR��c��-��O��&=,�pX6*��!i@ѥ��+c0����(N?ıZ�W��,uX���y����i(��Ȫ��+7|�퉴��fZn�\Z#��p1U��:d�B9��X`����̢����\r�L2A�=�h�iY�\0<m����l��\"\nK�r�GL�I�\0r����Ht���7���h\n�5��]e9}�Z��C�����図Ns�v�5ǎe2⦟�����}�)�;�l��n�}��\nJ\0���R���|����$����� �Su�PfT�{���ĳ��핤�Z�,&�W+���m���]��g\n���&�\'0�d����dB�\r��\0[��~���̡�@�(�,a�^�\'����Ei�P�z W�#���8R��ub���dU��m}uF4�i���_������h=j��ܥ<�>�>:L`k�52˙H�e�Ԡ͈-��\n�na^>:�M�B&K��3:��(��[[MxED��5u��U�]@OB4��bڄC{�;ҒrE]Kr��®#ʳ�@�����V&۔`��/��	jlw.�p�Ќӆ;�iF�泡�VD��\0�B�ȕR���0U��oY������(�y��k_1��\\��yw)sjd��A�.����\r��L�s4�-�f��V��B��!�菶1�(V��k���\r�x���W�bUs�1V\0��tWn��\0��������t���B���k�ܶ?f޽��+��A7|^��ˇ���C��J��rn���mb���)Շr�1I�2�����8 ��\0.�L����q��$�\"0��tFIm~�L�`\'�����q�n�\'�\n�����\r�t���Fv��e2���|�5���\"%́�a�7�� 7j��ߨ1�bߘS�+����+u�� ?�ACO�O���*=�;&Dd���M�Ib�؛�n,���\\D]s-o\\ΏR�����h2�!�����\0�2��\0Qy]ĥ��\n��Q�D��x�d�Y��Qk�-�)���e�s�[\\�\0��a��=�Yp\rA݁�p�s�<\"kX	D9�$�k�Px����Z<-���������=�q}	Q�ܞ�k�����;�Yw�\Z���4m}��!��\0�lF.�pl.;_w����@�fF<T)CPm%0�0V��j&\0�0ԮJ��	��G}� n]�X�!�9���@��H�F��\097�;��l�-).����$��u]o��N*}ʎ�����)��;�\0[<�փ�b�^;�QJ�k�\nB��^���%�!���/2���D����U��na�E�����G8���y@�c\r�o.,Jۏ�����ԋ�p.A��mOP��K�7	��rkrˤG�x� N�\r�1z�VDR�B��d���12�*︆(�U8k+��RX�X�� AK/Ǚ�����#m�\0\Z��ƶj�^��湨,H@XG���%s�ˈ��,l��Vi���]�|�\\*4AN3kr���%1g1R]ԣJn0���&ļ_Ի+}Ck�B�\'����Uk�Ա�c���lϩJ������R0���K^�Ň<�[y��ţ��ʷqM]�\r}Ls�x\05��,[Ŝ�L0s/q���E�m:�;\r��\0ǣ� \r�%��L��Ǚq%���pw#&��Q�����m\r+���M԰��x����jm��G�f&�DA�ض2;U���f/V�V��N���7��3M�$�Rِ��YUX�p�����)\Z\'�%�����\\QIn��O�FM���Iz�c���VYs�A� Y書�[��Z]@	��*h?��\n��љ��L�iRX�H*��\\�&`�?P,�X����\\8�]3)���J��^&ۈ\"��6���/�,(���\0h\"���	\0�a����¶Vbq�8EݜF���Ue<�SA��LD�����jm�e�-��\\yR�\Ze�UP��9�D���5ƥ�]»�Rڹ��/�L3y���3������*Yx�%�n��/J�Y���> ֈ#^`DUP0\r�Ρ\rR(�l��H֩���\")��b��!(f�&��n\"�r9��z�\nUW����t�.ik�Fj�h.���-��A��V)���p�m�ε�29����ɩ�q�\"��30a�4A�ELEk3��⡰��u4~z�q�=�EZ�\"��U��)Xj�(v�(�%T���B��8�4�ژ9lP�\Z��(���Q@�T)��M6��J�H�ָB^VU@��ب�7��\\; �G8�䫨��l���%\0�k�F�>~R�j�L}G0J�R�!|N_,�3�[���h����,�Q��t�a�M��eN\"<H\0c�K6�H�#���\n-��\n�C�(,��u������L�%#CP\rf��Gp\0��/Q-aX�)cSU�g�i���p��i|lә�E�B,\n�e��r�AJ�����tO䩬��	b�ٹ�\"1\Z��Yr�Y4�g�U�\0���\"�����s.Mc*�R�e���[�����{���Yn��.������w%���]�a۳�R��\n�^�[��^ZL9T;��� ��aҳ�-*�7U:��13�\ngLB���_8T�c)\r�@n�b�E��hSq����P����������8p?���q�\'	u(=[6�?�6�.�#vPc�F����f���;�\Z�Է�UԳ��:Ei?F��Q&#q^	E�6��%�Z�rʭ�,�\nb fh�6����ȗD�)�P\\3�~WIV��P/�fR��M����%PW2�ܷ��)�0+�$ �B�KDߘj-�*�\')T�f~�A�˗2��(`8��I��+� ���`�n\0�;��e����.���䃥b�9*!]�SD\Z7�w��)�}�w�X����}AV�����^qs�� ����(�D)kPĵ�ɨӏP�0���A�1N�KrQ|�.�\'��Y�ie$.Q�᪣�iZ0�k���~%y�F�s����^�S\n���27�q���`ۙBF&������&\0%\r&�%���%�\Z�B�q,�����;Z?&8F�����)P,{�œ��p?\"S�Y;%W�o�k��u�w���\r�\r8�F�o���kHj�P8��~\"��9�B��a��4=�P38�����\"Z��&��WP)����\\�р\0�ܬ(�6�\n p���+y.$W��Av\nk���n\'���,̲�dʨ�F�K�H�ֽ1.pRK)�,�Ͳ^#Pۻ���d,6%J�5\rG��o(��^�2�\r���@Zdx��5v�&M̠i�B�Ikc�8 ���\Zq0p��G-x��GL<�TK�PM�KaZ�@�0�g?�v�l0oP̱y���wUv��7U�C�Q�=Bw���O�`�J��\\f#���j-�q&�I{b�p�B���؁t\\4���W	i��R�Q+�\0˵?P����K���iU����/2����\"\0�Eq1u�z�W1�d��R�\r�\r%%�b��X���ד�Z�\"��<�ե�R��{JD�%�\"�\n3�Ǵ�=&���SaTM>���1!K�Z�s\nJ�\"\ng\"��bʢ���R�3ӯ�X�{N	aΈ��r�k^b����.�Φ/g�p�:Ehl�yB�R��0%��q*�\"c�R�\rT7U(�(�p�&�Us�E���`�F)�mr�>F�!��[�1gP5(�qY�𫂣,+�`[-AD&\\m/���	�u4<�*E���l;�U�+qQu/Z��0����pI����c3I��P���/�X���\\�r��Z��p�T�%�������������G��BgR�&�u̢尌J�\Z�ih�_�n�B�˨8X�Q�˪�!Pͷ}�Lb�X�aq�K���<���}+4�^Kk_�*U�Mb\"�s	��,��3O,�r��$j��`�R�̵3s0Z�7�Т%7��T�MK�q_�a$m� -���jlL��l�MD!�&��<�.�c���ika���8PMQ����{�d	�3��7 M�{A��.�UQ�2��-�Pga���S2w*�p^8��{. ����_�3B,�]�G�G��o�F�[���7:>&��!�~�@|iJ�;������C- 7ڪ��b+k��E�f]?�.�Y�LKx!��J��:�%ljT�@�zi?�\"=�������Z\'�Pn���{�.V}ƿz��0�`��c�	�����l����ef ���j;���1w��Gq��E�����J&%��ʪ�гIMs�ˠ߅q�3n��r\n���@��mK4\r��#Zq쀷pј4�!ejb��1pZ�|Ĵ��3S�S�C��\0	7�4�q)Ak�MB���>�\r�Q���N0�TZk1\n�����Hh�K���@��6�Q����\\ѕ�ŝ�i�7�L8�.a.H��3�oG%H�.{b�n!�J��L�ȰwL0�v!�D*/	�}�!\Z�c5��!�0\'^�\'��#���ap�~�0%Ȏ��\\���7s�Ȱ����`��,/B��%\r��X�Z�\Z�µ� [Ժ*!/Sh�(nR�3*9���!@)e���B`,̲����&��������`G�\n�o����ۼ�O�����aj؁�@����;%��D�J��1\rɮ �\"��K�)n��0I�揂_0W���r�G�L����* j�fVC�1cަ�������.R�&u�*��ʡP�5��\n�rʊV�U�|�Ux�,���}K���i���!D��O$��\\���u?p\ZZŴ�\"{\n����g��R��a�VJ8�\0eJ�^	Cd�(N2�B���� �\"�%�������_P�aH5���e���O3-�-��&�Q3OX�� �Y�GI|\\u��BZq/%��\rq�\r�\Z�\rU�Kz�Ƭ�DZ��r���ȀSφ����ᕊX�D)n4L\rv͔b\\a���0��\\�(���^Ӆ�~o���ޏ0I)}��.>-��./Y��5R��; �M٨(��G<wS9�9D�sO�$\0V\\;3\nn`��{!r��)×�Kf��Ts\rr�O��0\0�,�b�.UC\nѼT~��zϹǕ����oy-��^a���1F}+�jX+}����9db�N�����&>lEJ��&!��jԿP�p�����˨�Ι�ʥ��/�řK��D�2�b�9˃��K\0e8f+564J��l�CC�R�,��a�x�@���4\\��;�ذ\'��-T8s(:�b �L�O�*�a�����ܮ�\"�2��d\Z7�\r�1��;�o�Ҟ��A��u�4NI�l�SV2��(�����D��`��`�A�W`0���3�2����o��.b<A��)��1��G��	�.��6�p�����؆�N\n�@.Ϩ�\0���N�e�G?5,�LBZf�6�C0k\0�D�*;��1�L�q���{F�*�3�\n�2��3��bǏr�Z���IaP5W ���@��2�e�Yq)Sv?D��D�X��/�R\r�a@J�t��N\Z�2eOr��O�s8��U�a��bc��H��f�@E���H-��f��T<ǽJnQ�H��B���K���G0��d��K�3\'G���;*_0�+�T\Z�\n�Q��*Ō*>�F@�����[e	�j73~f�{�����^���B�d�+�S�����p��k�<��uJp���\n��m3w�-u�Ym2�6����4�2(61T>��������K�����G़2/Q�0pR�R��z�v�������r���$֞W�l��bb9��T�Fo!��b/�8Ͳ��2�mz�3+%�i�cs��_uԠm��B��.�\\�0� F����<Dr���*���Ѫ�y��d�gܾ������0�ř�0�İ3s�v,j�s��eh�0� ,�+�F���J�3%���1+3���,ī70�ޡ�\Z�%;.XY�r��o3�01����s�!�.sU�l�\ZD�iXm5�z:f);��c+�$u��vJ��lSV� GS\0���lQy�X-pA�̹ZpKE2���J�aZ�n��!��3�q�3�Qj���e�4��p詑���M��1����t2�?(�5_�\\Y��U�u+�9]��o�W��.e��T0���r���w��VmV�\"�������Tp[�V��Eh�\n_��V�f�����K�iR�O�\0	���\\�O�Ay2�\\��*�>K���0��+P�rMr�V��2#r�ph��e�Wx%��фB�1P!�$M���VB`헂P�(��%Lы�i,��?QN��b��dy����+���&����lKő@]8��:i�\n�TY\\�\r�m���υ�~DP�V��u=��(�K<T�t�Y�[��\"��2��\r�Q~�;��qte��)�?7c,����V]D�]k�_sK-���ey�Gr�9O�a�S��,��=ˁo+�Yl[��A��!����)*��\0\n�P���!d[���d�`�mZ��Vl�e~k~.�.+q; �L4��t�1\\Lk;u,	A~Ƀ>C<�;��\r��\\�4pj��C5��E�l�\'�V�l����b�����@^����A����qp.�b��*�n�ah�w;�E�;���BZ��*�%\"rC�\n[9�oW8Q����x��\r�d�����R����M�\n�%q2v�6i�vX��\0�aU�aZ��>�\n�\'c�L��	s���j�\rH*´�-\r��DaѬ9��2���0��7�n\0K�,��g�T�\Z#{w�k.��5r�呭�#���8����fu��m�!sb�x&F+�-X��u�Fs�x���P�.F��o-�0�<����1��N��7W�9���3I��V�`���+���7����[2��G���\Z�^h��iP�V��\0~��E�nbE�bg�2�1\r�(��p72v��ߙEk�w*	�R�-.k�2-N%��L �&�X*\nb��\r�x�Kw�3�%J�*������L��#rʻ�!���\0Wv��[�L�z��T�t�$[,��2�naH�L��^�w(�̊ψ�b��������ZKc������\\e�r��\Z��O��\0�z2����-<�E�\n-��������C��Խ�W�\r���q*��]m�k0N�M]�LɁ���t�>���q��\Z���B���0\\�),D�\r/�-�b�IR��H����\"-`T�AQ�F:�U!�U�3K��\Z�q��MY�Iԩ�z�&�J��D��w+;�)�I2�fʇ����s4��!�QC�ט�|�]�Tۨ�F��̮:�.�f�p��,�*��q����o����`�����`�LVh�`���uņ��Ěj�u\n�ٌ�c42bqD\\bpG��8��~\n%�E��\\�T��WUs���{�����S��ݦc>f�.�8�/�**a?0UMCB��\\�`<Eh��q�������	.�2C�(0\n\r���+U��	b�?��w���&�K9��)����X���B�bx����fM�8I3[��&v�nڍq5�%�~��_�����K��)��?����to�L�d	�\ZF� `�L5pD�,\r[��a���π@��>f�Z����W�-\\R�2W�71ڈ]�g0)LZ��c���\n%T\n�|J��-H��Ei3P�ٞ	b��A�L�F��ԥ�^#\rU\\��ٗ��QrI�O	W�Ҕ�>��9�^� ��j3��;�7-)���E+EM�3�\r�\'b�BJL9�[�����!b��U	�/�-���mĲ!�\"xq��������S�K��y�eJ�K���� j�ȁ�YX���l}�,?�����9k�?�x9��O�N\'O��Tǁ���Oŕj�I�X����=q_ן�H�_�c�L/�b\n�#�\r�IR�`@,��W��a����|�Us1w\Zy�t��\0���S�?�?�r����K��~����[?�m��K�.\\��\0\Z?��','image/jpeg'),(41,'����\0JFIF\0\0\0\0\0\0��\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\0UsUEPvtj_f4WYftTXBTo(\0bFBMD01000ac0030000461200001f220000ec230000eb24000021280000903a00004a3e0000d6410000394500005b850000��ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\Z\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9��\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0��\0\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�g���f�s���^^�V��4@�=�;pӰ�%l��I�k�\r����bwrwJ�s5\'9TS�K�t�uƍ�fR=���5�p�\n2ٶɝm7�Ф�m��*�f/w����=<��y�ܲ�E\')�����}tr�/\ng��yS��\\��l�L�2i�,F��Б�4�u����͝��_7vs�3�ksH����+B�Y�i��q�.gI��u��`���`l`����3L�9߫��z<~���p����A�c�q�C�\\��Vk�י�b��Ex�����=Y�����4�He�<����۞ļ������{ev�\Zu�5��\"���\"�͚���R]���l��24�79N�+�D�Z�����t��9%R�]��Er9��H!&aY��[c֜���r�_\0�v�~�g�=B�4�\\�4�����A�;<ߡD~~���!(˩rb��;��Rk��K��Hp���\ZV�Jr\'���|�ǗVNjkǪt�k>=&{���<��t�n�wr�v=Di#�e�=	Η�J@\\[G\\��\'Go��g��4���6��G�󼺏\r��W�y�tO�w��R�)%Mp��,��z_�/��S5�6��[K��;�,o*A��A�4q۞��\\�\ZR���n���O�v~e�������_����\\����5���^�=���\\s�N���˓�[�+w��6[�c��ܰ6��́L0���2��zwN{��x^�p/��NLvv����i痱�׌#�����\\���:�:�<���t����=����S�l��u΍���Ҩ�������P�2�\r�\\H6�;\0�C�M��\"�=q���~�ur�ͣ`���u��}3�W�|>r>��u�|�Ƹ��{ä^tW�os����0���}��O%5yn����5���^�����y�����S&0g���%��\r�s�BL��ϥ^�?|�d�B�S��ؼ]1E��}_��3���<�o����l��I\'si*�|��y�eKg@�w��r��\\�w���;��^͹k����~z>�����������׳�mQ\\�ݹ<��v�R�	s�Z\Z�\0d�>�y{�·��W�~v�NL��b�Te��=r�us�c~[Օ*���HkN�ʕ)W��M�;3��G��n��)�Z-�k+[�9xS�;7g���s��%ϧo�;�m��Pq/}��p틼�=��7����m��]ۀ��o[nb|�[y�\r\\v�Q����w��|��B��X�9:�{�<���^Z�]�ӛI�c�>�/ʯ�����Q�}�ny]uΘtO:�;Y��<��|�y[�X@J�Z��Rz+I�\ZI����a��ɭq%��hgE�h��}�>�Ix&��][�1~�\n��ܕκk�i]��]���go,Ԟ#;���:�����1EbsNR��J��%�YJ��T��v�)��\\룛��#��OW�Κq�T�c��,�\n�\0�Dy�t��w[ζowG�KN���%-���\n�M^�m�w��dl�ӝ���׷\nrvB��3��Ta�m���\\�e��%審������:VVg���,���)���O +�m�N�q�:�m�Y��S�����Y��E�ѷ\'_=���\\(_�����<<\'P������d`��<ι��������Ԋ��z�ǿ��\"�%����Nd靳e�u׃/�� �^]@v헛�����Lk��h;e������L1\Z3)M�[���1˙1F�<��2��siߑ��-��{��;.�ԛ�k:f�ue�OJ��7��^~����\'��ݗ�oGg\\<�����O*������K?2�{sb��d eb�6��U����[u�N�*�.���=Q��Y�8#�-s�R�tg�ؙU�S)1j��������X�4^�R�X��a���32V���p��cm�ԑ�΋nkMT�;���rE�L�:�Y�6P���\"�\n��vG�����h�������֩mb���8��m�*�2�j�F���z��4퍈��r�i�0Oϣ����y�p��<N_��:(�u�K ݦ9��*��%�j-r��K0��S�\"�����]��v��J�y��<��f�b�6�24�i2�\\:3���jf��X<ob\'�n�6�2I�%���54��\"�\Z�!\"	�;jc��\'�ƾ �L�Q+��띜����P�u�!��V�J1��!���ξ��\'��`�#�\'Cdc��6%3�g�\'����3��M6�3�*��	��R�\0\"�őI�ɶ�m���h��5�������ݳ\0T� ]��% \n\ZF:�&R��M�`Et��T�U�7���G��<)�+9��aj��8c00	����14��jN�S������p��\\�6���*A095&�Όl���kX2��k~{M�팺,�ұ�I�l�[�  � �l�l��lek4���|���ϙ�)i��bid@qV��e1+NWC+j,��]������m�v�L;��l��vA,���Q�R1A��fT$\n̍m6i=__��|k�\02tp�vF �J��Ae��`2��\nDh����k��g�����p]#͓���]lB�AJ�����hk69B:�Ӫ�_����}��vCX\"��}��l��!�(�C7EZb@H��5g�ź��_i����-3�C,`��(��Q���E#3��m���ʵ�W�~wЏl��FS\0G*�r�Τ��p�F(gG���C�����/D����n^�M���2�\r���ѶՁЙ� �&��t)q�/�����z��b�3��॔��3�\\@��;�)@R�2�ZM=[����k@�W�V�Dk�b!q�l`B���+JPq>��tH����\09��- �\Z�.������e�$�Vن�mE�B4��{-;�P>ub�h�CL�͒�Q�F�\0���lm��aλі^���OlK�5\rRx��lP�*i�:O/FL�QJ��J�B~^k�ø9�v\"R�Мԕ �b����m�v�*L�T����^���9��\n22�	r���B�Е�38I�ΐ0��X�l����c<WN��<S����.�&�A�l���Ol�荲κ��SH�3)ȕ4�)����*�IՔ3MV�\'S�c�y���z�+�+j�K�zS^��Y\r���6��`�����KV��hg��\n�d�L��O�W2P4\r �����Y5t<��(hLƿ7V�2��6����Ȱ�-�\r/�?.	\r�FQN6��rzQ��Ily�-�%�<�tХ&J�j6\\Q��422T�\0��-&�h��1�X)?8t�Y�Ytd�l����m|�em\rch�&�j�Di\Z/#z��[~���b�-��w:���ε�8�Pp	�MM�����j|?�ͩʮ�cB�;����^�G���1�\"��C��)��l�RSX2vts��!l��S���d����Na�u��}mZ4����Rs9F��yX��45���<�R8!�=�g���z��8�:�7�Q����=�:�-.���֓i>���Y�k�̝��k����\n�*��eGː�δ�P�^��6Y�Y����6�S*^x��dk�Vz�����;�����)��L���!��|���8h�(����K�)���J3N��識m���kED��и��E�M��^I�=J��Y}\n��\ZߝVI�\n�k��1�+۞�~�W����tp^a�p�l������4J�G���\'2�R��D��-b�����5FFřgΧU\Z[���9��-N�#gcF�j&[Ӛ�uq�E\0P����\0)\0\0\0\0\0\0 !1\"0A2#@3B��\0\0\0��/yX��nѡE�(���\'��^���B��=�T�!�H�\n\'I!D�-&�D�\\P�F��\"8�i	���ײ1\"V���*����E��F�\n�Dt��67QB3Mm��	�}���G#���r�^�^d 3h���O�S97R��BbG�W�u�LR����\0��P~aR�B\Z�\rF��iH�N5��d�8�Z�� *��B�Ժ�!/�J���4���!I��=�#��LN2z�	����r9Q��F3z!��f�4��c�B���<Hq�LC}D�@�?Q8!�8�t�\'\'���Ѿ�9\nHiE�i\Z膵�#c�.��6F\n�J.��LR����r��#b}v&n�8�Yň�p��Eh�!\Zc�H�W��q8��1��X�<�2{����M\Z-�b�)�I\n�x�q}�F$#^�#;B��FЏ4�+��Qt��4qb�8�l�,�؅3����pL���\"#j���!\n�#���9�G#g#��\0�h�ꑺѣIc����lR9\nb�,��9!�4���͜�]q�]C����������}��)�g�)��r9��\0^͊lR ����9.���NC���g�#���H-�8�6\'rƇ{6rb��f�\0B�#	��)tW�4�#�r����|H!|h�8���fO���ч��Dkb6#[%�Y��B�ڟ�L����9\r�NO��B1Q躵R�Om�\ZbN���B�}���R���\r�q<�Æ0K�l�L������G!�d\"ؠi\r#C�\0���6||.o�<�o#8�1E�ya8�ȴўT��\"���R6G�}&NlR�8��l��ȟ�Z+]��>>\'�P��\"RQY2��0�F<P!D�:��Y��Դԗ�Mbf<d�@d���t�>����G!q�?��K7�\'�ŋ�B�YŚ�HÉ��Ơ�Y�0NR�(c��g&�\"d!�2�C��d���bcb��+T��CT�l�ڞ�\Z͂9������ϠX���AVǈ���4-�j]2eP_�Y�Ad����)#��x�hR�d�\'�6;C��g֎P���R6N*K7�?��p�F1�/q9y�G(��H�8!A����2��B2�-�\ny6obB��\\�>2��/\r�[��\'HB���-��y���qh��D�!���Ǘ �>h�9D�D�t��ʚ1C��Lٴc��J~%>B{E!�	�D�N�1R\ZqT�\",ǡ�q�Bbg���r����|e�S��͘dw�H��Q���QЅY����J{\\x�Z�\0<R�5�N1��d���剪B��#�O{b؛��KY��|O��x�_�9G�|���8����h��țB��y���(�\n�b�xD�*�\0P�/t���\0�?f��Br�&Bb�	!�B8��ci��%��gօF\"�3BN��ɗ��2鷱t��x�T�(�nT���FU��D�K�Hy�EJ�l��F�.B���Zd���#G��DM\Z2�sx���N\"]���O1� �%�Eq��ݡZ1�\0���Q�ܔ�6ڋإ�\r#!I	�~kBb�MR=�4!�̹�C}�-QY2�Z����cCT�T�r7�\nDg�?>\"�#�lߟ$H�c��!uLٺɚS#\\\"���P2dQNM�T�z��4B<�����?�]��,B\"�)\ng�y�)%���)���!�1lI�E�x��5����<���u��Z���L��?��F�Eo����򭉉���/�\'�~ٽ9�b����ƅhrSx%�O&NgMD�G*V�.��8��:�9�.���!R�13�1VФ9!��$r��DP��F�b!�EO&��!vH]b�~L�n2��t��;\Z�thT�C\'��o���&�#�9F(sqáD^�#CZ �i��ܜWU�=vF&O�|�Rժâ~ڨ��[�R�kDa&C�3.#C�lJ�QM���/ҭߘ{��I:c%��!�	l�q8�N\"��ƙ��=\n�!�H�ZPb����������\0�U�cL�i��P�q8���c����hq����\0__\Z\"�F)\Z6.��\n��,��/^�\Z�3�ѣD�Eh��q�+����.��K��+G��-$#G�@hhБ\ZQ#�U�)����!�1��؆�^�z�=WD\"�Ė����8�C�hБ\"�*h��x�����)7qv�+T�\0حwL~��1Ēمi3CZ4jН!!Gdb&&!\n�Uh]W_�&@T�*�@�F�\"#���B�Z\"qм����\Z�!^�tU�B���+T����l�[0��q#cFHx��cG��\r��ӌEHT��R�J���q�UO�G�.����+�~/��@H�K�㶠��b���Q4+DUhBB�.��ǔ)��\'�t�G�^���;qء�BV��HHѡZ���.�.�]��J�#�Q�%<b���ZB��Z��F�k�F����UH���K��*T�\Z�#B+T�!�Mj��x��tW�o��V�RhЅK��R���Z�J�X����\'�\nh]�!R�����N>1�Ѕ�ub�|yq�Ǘ���{B�.ʑ;2Ä��u�HV�hT���~6O�zD!V��Z�[�y�����.��u�Gŗ���f�Z�!�V�uе�D$\'�\"�1v_�v^DE�R�	)d+T�������K��[ﺥK��H���?����}�]��.(I8����\n�!R�!z^�˄�}y��tT�+BF��hJ�6\"1!jW�]P���Dм��ه�d�B�J�vąhG22 �JB�̉�	��ѣ]������xe���vT�R�v��A���Hr\'���ѡuB5h����|l�f.���.��lB�_�=\nf!�\"��hЩZ��Џ�χ.Dz��R.ȍ!W!Rf$��Oo�	��Rh�hЈ�\0��)�.R��H]U�K�UX��PHʟ��T�Z��^�b~_�&���B�h]=��z���Ey�F��܌~��]T!����>9#/��&oU���TG�	��!��D�5��Ej��F#B��_\'<BRfll[��Og���$z%��]�+T�ˬ/R����:B�J�G$r�^�I�n�*B��J����*V�~c�FFD�������*�����>bb��DB��D?�!\n�1|y���HZ�I؄+b�lHР/b!hB�\\4itT�uUcó5R興T��	ڤ\'Q��[��!Z�\"h���]X�0��.ʑ��t��/�J�Щ!!JԈ.F�X�+T�fz��4�	�M1R\"&!S�Ou���ʓ!\"/}Y��!z��FN�����!B#��!��#�z7�������R#!1\rx���)3�(��.��؈�V�!Z�!��r ;B5�$D�	�rz�Iz�ehF�1�ٲ(ZFȽ�R<R���1�4kd��\ZB�!Ddu����\0�R�j��hލ��f�I�F�\"+N�nٱ{�ې��J��5/G#��3]���:[�7�y!��f�#b7�:l���ٱ���g�нtU(B\"�F���\0�u]1*�$b���\"��#��$Y��)�Bf��{�l��j�#H��8�1��9��������	4FL[�Gb�D��$/{\"ͣ��2\"99��Of�l�����+�G\\|B;p[#���!��|��\"bZU�@Yb����\'I�����������ȋ�hHb�������!//�����h���h�9�8�ô*DZ\"D�6J.�Q�\ndE^��A����Nb�\"\"���?���\Z��1?\'���u�^��96�F=Z�	�l�t*�5�Qd!�1�vxڍlBH��ri$G̐������\0�cDI���S#-Ȣ=�yc�>�!��;���8�.Z#=�\"l��6n��Q�1_�U*u�uX%�s1�\':d��i/�LV�\"�1���!�^�ȇH��c9�\"��\'�C��b�~�AL[=&�>����T�x�����h�!��r�G��\0��\"F?o���qHR\"/\"�F��C�L�/��oB�|ii�f��s��Z3�~��>��ˣ\Z#��ĝ7���Hoʗ�ь���ЄDB~66)?��\0(\0\0\0\0\0\0\0\0\0 !01@A\"Q`2Pp��\0?n�2-�&GIE��H�)�/X���b1���J��33!.�c^��˒��?��#Hı�E�|z1L�,\\���2-~4f�>Η\r=!i�X����\r5e���6�F�����J��GG��d5��1�\\ZY���o#q3��mF6�ar1Ĕ�Je�\r?��=Su���hJ�T����f�����j3&n3}�������4��(�������?Ldd\\�6�ٓ2��D��ė�.ezduS��zB1>	Lz��������s\"��&��.�\"�uO��b̷��XS�K�_��$aN��Q���Y�$̌��W�~^J&&>ʏ�?E{\\�/�ƨ��/x�^7���UH�(�Kr�b��22�����%���I�U���}u�?�W���\0x^��/�V?wN7d���_������Ȋ�O�(�|���\0\"\0\0\0\0\0\0\0\0\0\0\0 0@!1`Pp��\0?���-�$���%���]]�h�\"v|g��i��h�J�1 �� āh ���6�����C3\"�fˍB�_����\'�&$v�ҚLFSB��Y2�x�M���VK>O�&f*�T�\\�T�$t�!����].+U�BҞx��*m��EUy�#&d��|O�}���^�t]�_�z�/�\'��[/�E�xi�]���e���\0.\0\0\0\0\0\0\0\0!01@A PaQq\"��`bp��2B��\0\0\0?�����\n|>m��~���5y�A�PQ�t\\\nDfbV�&/�(��\"ތ��\Z�Q�T%&B�)q�M�c�}M}��\Z[�&5�WDDP,�\r&���7)�SQ1�����_I��c�\ZL��� �IŇc���AQQ��~��r[��grX�T~L#?q��#T0l�[�ܤɅA��Z2�3�\0�$�^�U�ܻ55AH�l��$�idjn�4�N�P�����2ZJ���D|d�f�Su��.�iУ��qdG�7,�1����qk\0�{�ځ�w�}93?;�0��hFXn�A��3��rE$ Y++K�rm��*��Ǔ�a<\n_��oK4r�FB���!%�\0�� �uد�X4_�Bf��0\"�Vܧ`�}�p��3+�����)p���6��:;�=\\@F��j[+A\n���W��R�Y��I�	�ղHKteR�n�p]�.G�O�\0e��#�V�_�p)v���ͦF��.�����n��@��x]i�\Z�΍D�#+���Vb	����tl�k�:�����c���Ռ�i	�\0�`|	�� �������PMd�5Q� �?쯠�	rM~R�#,��6@k:�i<�ά�gr]2��-�?��60�K�>A���Ԫ	��9���l���_j|Rs9z���;��@�\'j>52=�S�{uJjX-�n�� �CVy�0�\r���&o#�Q\"�`��*�ͦ�a��!f�M��.Pf�=�n#��ԾBY�l�WA�qmY�`�ɹ|ت=d�I݄�DP\"!�u�0�a��5|��uaL!;�rZF���\0(\0\0\0\0\0\0\0!1 AQaq���0�����@��\0\0\0?!j��~ͤl�0�TB�P��O��~�X�\r`J�#0�l���ɦ*1�;0j\r�.&	�\"k�T4���[4���F4²5�~D��Llc�%���lK��A� ��9�������L��cNTN@�p������aم�C�D�$s�Bۃ�&�N�$�2e�RuHy���²�V,7��\\�2�qJ0��B_0�M\\ƥ�?\n�=��x.�Y!.A/a�cBP�^���e�0���<�6�P��G��\r�a	�BA1�j�xx$�a�f%1�-ē����l�%��$�ذH!�O����v`�FyF��X�gs�xyXB)�)u\\Pk\'��g~�ԑ0�ajP�A!d��O�H����`k�Hd�[���c]<\'�!a)��A��pab�0�Ȝ>�C\'q`X� �wO�G1LpZL%�t�;$āh�l\"� ��]%IcD5b�YG��Bӏ!��\n>�����9+���`�Ph`�%&fQ0�!���(7�q�P�1!�\"�l��0��`��<W��	�q�l�/�8�kȐ�.D�%�Cl���-ȝ |�\r����\"�f~X��A&�	p4$t��,U$J�\Z,2O��B%��ce�~HBПJV�R��.Q�,��nT���|,��V^�\"�8 �\n�(�$/EblJ4�J%D��h�Y	L�=�\r�h��,�\\/�lP����9�ޏ�����c�<�O��,R>\0���8G*�&7�4�56!���$���F�uq�R�R�H@�\"����&vÈ(n �4����=T�\r��	L���Н��Q2�HЫ#��&�ܖ�M���� �Ac��\\��a\Z�.R��p��&\Zed�!�6r&��a��,?�.P�OZ�Gh9	ث���0�<Ԡ��Td*䇖`V��	�b�	Q)���ÄD ���ZF%Q{<�4}%���p��Ɓ�Qt�����]�<Xh.��f�9М�\n���\"�HHK\"���z B\r��>#�c� v(6���c��\0壓�s\r��A�{��F��;�D56�����ؕ*Cn����C�G@J8Ӆ�Ƃ�)t-�������s��9�M�H�74�>䵮�dZ6�M������q�h���X���5�TIA��|�0ho�=ܔJ �ǄEdA\"e��Jz����!�t@%6x���(tЋQ��K�Ȳ��a��U	!+bFQ��!��\"H���s���=�*�lƫ��b��0��Z�^;�z*����t/��ؑ����\ZBN0h6&�]�O�(�Xh;�`�n�$~F0;|�d\Z�*%�\'dZ��q��\0rS������ӱ��!8\n�tϘ\ZT�$�q�F\Z� ���\n	5F�C��t&(�����Q�H�����$]؈�\n�DL!RG(�	�����\0#��DG��m;f�0�\0�T�?�=ez�����B͍�Lgq/R\\[�n��G��Z\Z	��xX\Z!�c,(�i��F$�8`\"���-bD�a��j~F�_C9t.��H]�Ґ]�m�\r�F�٧[^��r)�܂\Zh_8%�A�rflw\n��g�x�\r>�\"�p�H�]\ZoF�}i|	���.�#�%.0��(���A�1d.\Z+��q=��EY.�7�`�hs�灈�%&�w/���:����B�b��	�h��-�w|[���ZE�2��\\%Nf�h��Ų~������F<h.^|������ȇ���B\Z\"A�RL4�\r0Ղ�hC�}��A* k��f`V�R�I����ZH�~@����*){0��ɓ��@�89�4M�SD\"�q���[�!`����M�)��7����p��_ ��zǱ���6Kx<sF�ؐ<��\'��,6	�A86Z ����y\nLH�Er1�(��\'�g�g���~��_nfa�JPB	cgp��,Զ)�L|����E�DYH	�9rd�KD	�yz<��te���(7�N2�+�XQ�8r�����t,���<��x\Z���AۑW`�b&�9%�a�F#^�t4X���4i���*�N-��b �����k�?�`x^��>D������\r�(��zKE+]C�ѩ�-FXǁ�ǔ�I#�	D\Z�T��(9��G0����J�\Z�j�B%5>�l�� 9�JD�,+���§���� ��B�m�&XBH��a�\'�>���Z\n�3A��,�E|(�(���B	R�b8RB!��,�Ҹ]-:\r��7�?d\r���P$\Z�v����Đ8�Xp\"�Q\'�C\r��A��b����u٥�|0��9��v�p9�z�#Q(�c,�\'��	S��&�\r\n�a���M�`�҆��/��,a��<��Ӧ$y$X6�h�!�4\r����R��	�B�xYQ�Q0f��+���j��\0�	`���P�Ը\Z�CNn�	�P�$!�����L$���}!drx����=V��ՑgqD$!�6�k����K�� �		�0�B`�� �O�F�a	�Ga�/�mB��7\ZH(�8X$�s�� �DB	�As�6��\"��&[1N�\Z���Xc�<��y�\0��h��i�HSB`A�ĄHA0�\'�H�>L��<��?xl9��{E$A����&3$�����\0�J$$HBLs�b�l��!O�B�F]����KC�\n=���i�\Z����?�	��,~���B	�I�s�pL��XY]r���h��D!��L8�	�\\�a�\r�L��Q7F5D\Z��.�9Xhl-F�hۉ����46;�O�Jw)�6T�u	��\\���xh{GZ��&�0|V/�E��8�x̽��4Bd��D��\"�Q.\rp����G��\"`}�0�P�b�F�v98a!��oٴ2\rd�?�� �E���wÝ�/�c��7I����<T�n��aVZy����7,BS+�ƴ#@Й�3m�c\'���`��\\7��B������N��.U/c�.�/R	�4���-��0�0��>\r���pQ��L��p+��NJ�-�ܸ$�\0�B�4�O�ck研_\"��^G�Ag�����a�cA>CXN0���$,��xtB���,�)���,[;�q�}��Θ;�64�YP�K0X�t�i��z>-���&!�6K!s�Xy0�|��W��!� а�/�`L��&D��!���s�T0�H�}����Hb�Y�0ت�h�6Pk�j��!��YYD\'��#q<awW,OL�Н,�$Ď�}!�b�X�������z���L&E����w=${�N\0�C���y��(�,(�[�/���J8�^Ċ%�!�f�ЃL�t9t���dQ�)�����l&4(� ��ca��I������|�T�c��at.�?�����b���������S���1��&�|r6_���S�G���\r{���P�\'J�]���O�C�X6ͷ����HGxLc�i�7`H�,ObA�!�C���u}�\0\"}��ع�,i�Lj����� ~B�����aȴcd�	�&Z �O�h\"dN����Ű~}6;#��� ��\rVa���^i���m4?\"�!W�Ժ���E�s�\\����t�D��:/g.0a��an7�(_7ד���P\"��q�����]Y,q�(wg��aaK�C�L����Q;���ԣL��$ȲX�l���-��YJ.BABB�Bcwأ�.M�\Z7�W �@L S�\\\"GP�����t�I�G HK8j���l�>T�j�4<���6 �u��H�;r= ��\0�~rg��&<!`���K�$a��Mpp��Ʈ�����R��PHI���nKd6�?�?�Ϻ�F��,K�E��|���F�t��W�]�F)��a���o8,<�fńN�G������X�J0��Cѿ�cC�c\\o��\n\'\"���a�X��J�4F�Kɶ���\r��ނ$K5���C�[�#\ZX�4�\'��,�z4�x9���לr6#��Q��s�L.\Z�����`rP�T]$�W���v\n|!XHZ��F�<��S�p���X3#c /�{\r �=��9!�r����E{4y$]��*�b�������Kw5b��+��V��F!<R�	P�\Z�Bc]%�c�,T.�E��������Ő0�1�1��\ZiFJh̗�%rl�J3a��TVp�A�\\8mkd�@�V��>�\'�nĆ�M�&�nF�.	N�a�Zw���.S�|pV�$A픸���N�q��d	���9}�0�*\Z�!/�3$�)�\ZXwz>���J�aa`�c<)|�l��j���D�1)S|��-�<<�-H �E�,f��(|\nI��bw?A���|7�\r1D���Ȱ�&B�米�G�����6Q?NH1��`�Nc��6��rz�Г4�d��pJm��X�S��\Z�X%,�cv�����0\rlH��O�p;<aC%�$��~�&�X����9\r�\\8�g���\0I^�W�����\01֛-zR�4W��+��6;CN�Q� S�G�m�$�+\Z�l�ȗ�\Zi��<�\\�J9\r~���n\\k���#w�CeTZ����1b�@��;à�/x��+��j;(�h@���,%}&4�¸҃����ixc~�!���7b����BOٲ�/C��kvNG��?�u ���J<%��	�C�m��}F��J��������k�5d�4g��\0\0\0\0\0K�NsmA��\Z,�F��\r�r��V�g��m2�}R��\0_�G��i\0���i@}W�s���М!���~F�s�^qF�o�1�G�\'����g�M�;|zh��\0�W{�yq�t�~G�}h=\r�	��f��?t�Hl��3���u��D���V$��H*������M�Y���ʸ��Ϧ�v�^���\0�\Z��ߧ\0L&������0��;�}���!��ı����7�Ŵ�,>2��j�\"�#�\'���������)����<s&{:t��\0��\'��!� ��pB<y���ّ�8)�ѝk���9#d�[���w�wcVr��.NhB�����f4�jYM������R#`,��U��Ͷ����E��+d@z0�!��������kp����&#�6n�����#�s��$B�O٨ڠ�m�Ү�q49�1��HSG�*G������i��ϒ*�\0���:����������r��-2;ĐR�ۈ�+ú����\nj*�ؼ�x�B�Dh0ʥ�*�b�DY���I}k�#��g��f�����0��ߨAs��-�9e\nx���\n��zf���Dr�s���]E���Rm����hl@�T�Zi�M�pN,Z����*Ȁ\Z�f\'�1��\0y͡8�g���\"��3t��H�wA��[@���-}꺲�M)颚F��\\�c,�\'�{�{��C�\0�5s7�Z�ڵ@M|�_�;������5�=s]��?��@���x�#�s������셢��y������0Q�t+~�h+\"�O��a��~�ziB�e�c�u��c���\rK8$��U~��~0T������M�{C;�Ys2�1�\Z�\'�Aq3p�1VQU\n]�\r��\r�{��q|�\n|r�\Z���b|/�F˅I��!��A�\Z�JMC*�Aut`���\0\0\0\0\0\0\0\0!1 A0Qa@��\0?�u;��B]J5��İ�v�C[;�t�����6�������z���w\'�lg٠�~N\r�\0�ؑ���p�D���~���<&V��Ի�k��з`mKor��ו�Tc4A�o��i�u���Lr�\rk(G�����>_�8z6U�b|��˲����Չ�k4���|u(0��eWiv�AxX��dx�K@=0>�� 6�5�Y!S�G�ԙ4ͶHWxj ��K]��������\0�	����/�7v�2ču��2s.��H�	���6�\0�����$6�Ŷ�,c\Z�0�����<��7�$�	�׆@�X�p��e��ӆ��d���;\rrA�h%��%��;�KW�o���D��\'��bM-��_��#�B9�Bl{l���s��]���Bgb}��smJe�pi2�,�%�ݿosVx8Ob&w�#,�D�{��\\�K�~���1���G�c�ȅ���yu��q���rm-8�������)�|�ڵ���B=�l}���c!�i,�`��añ:��� �d*l#\'vY�k����p���!YvCl8�x�l��;�K{�}�2ض���o\'?��&s�<��aom��q�ϷRi���=�\0�~S8x��˾N����~O�������߿�G��>O/�1������鏣�#���o�q����#�O#�y��q��=�σ�8?��Y�A�q��\'���c��k�ߖX����pO�������������Y=�ayl;�B>������I�,���#���Ls��G�s�:��x�,�篌���Q���8r��\0� �rĲ�C�>�K�>=������.��?~���e2^����t���N3�m��$�> ���w<g��\0\0\0\0\0\0\0\0\0\0 !1A0Q��\0?_P{�H�rW8=���}u�Y~[1?#v69 �ŋ2z�V�b/����ߑ0$�K������s�{�a|��O�rr,�X�!��-�ov�6���{���\r�[��b%]��r�l,-�x^���z����)��\\��/G�L����C~Z�aA�,q�Ţva��Y>�1��\0��?`&�PXpRz�ae���/ ���\rdL/�6Z���jk>��\r�be�s<q��6UoV2��	?�����<2H��?��C��ŤGު��m����4�#PG�\r�2���b�Ȳ��?/��c �{�<M�������\n0�,���lz���\'2��#�cM^�i�R��%�޳�N��{�����[����g2Ig3mI�A���m�[���Yce�0vɬ�<s�#�=[x[m��e�Yz$xo��OQ��1�>���mpa~���<X@�&�[o|l����x�p؃��������\'����:�^�9��l��9��%�g���������F���I|=^��\Z��dG���s\\�<>x|�3�n��~w׆=2d�c�o�>y���Q}t�`�������~I�y�^��G�o}�G���y�����K;�ݴ�&m��o,��Yb|��oǿ<}�úK��\'����%<����ʹ�{��<7��,}���DX������=��o}�/�6N��}�s󞷄x�����������3��s8|�a\'6O\0������x+.�ϫ:�� �Y8��l������c}[��Ξ\r�}l3ӧ�̓,�#����Ď>��$�2�e���^��D�d���m���$��E�?��\0\'\0\0\0\0\0\0!1AQaq��������� ��\0\0\0?���np[�%�L���V��:�-Sf�scerK�G�P�q�}G�}D���N��梸*\nGB��_q\0QO1���#VRrVny�u�Af+n+%@���\n�Ab�{���bS%�Z�Ej��ڈ��c�c{�{���E]/l @|���/�ّ�\Z8@��N7̤��oP���yQY��`�l��u�\Z�J[���?���67��(5�h���.�w\0<�u;�|KZU�p�/�V�3[������ܱkn��)s��w�G.˅�m����F��3$�jXN�V�����u���\"m����@���*��m�.+=ġ�|����!�u[Ը�o1-v\\<�#Qh�s���-�A[���ܡ�l�`���h1r�֣�e�zW,)�r��^S���x���:�^�\\_��ZG��fjg=L빵T�ȠW�*ӂ1\\B���W�u�����7����뛘ť:���|�����ߨ_���9X\"��F-s�o���\r�����S�\r��¸�\\{�\n3(DB��T3㹍EqP	�Y`��8i�,�L��(�sE/��&ϔ�C\0�E���7N`�⹌$���W���@��k��lj�D\0z�q,��C��D�L)گ��F@�̣k��h�/�{�*�>�ݷ2�tǔ0Ų*Sƥ�̾����]�Vp>����r��1V��w��\0(n-�MԬT����T;�k��)�(������[�9w;R�S3	\\,^�p��$�e+�r�c�.+��\"-��l��|\\��V9f\r�<˛�ˤz�c���m��U�R�~����)--\0h �sͼA����Z�=nk����{�e����⥕�e*`{�e�\Z~U=JJ�R�c#��iT�E�s ɵ8jn�Ķ�YF`��N3������\0j��2[]K*ü���M���B\"W�gT9�!�c9�S0-7Dq_�YS,!��J�W����a̡ő���.Tؾ�Gg�o9�C.�2���aQ�᝺f%��2�ː�\0=��>�\\�\'�\0�6}�R�߹�L=�˸��h��1�]ya�|�`����JV�q^�q\Z��t\\C\n�K�\0�F�W���I�K�D|��j��D���y*+f>f0��Z�.�����\n�뇈��y���QYS^�\0�\0�Fn�luF��-Þ��e���5����\r_�E~��q(�G��*��#9�7��p�̱�,�Ȫ�Cy�w�!@׈>3��\0�_0��m�)n�y�hoXb�b��CJ|˓;��\Z�G���$of-M[x���y�~�=����6#��(S�4|I�^%y1�H�L�Dڟ���E��T> �̜���0��e·��y��sV����^52j�U��3�C|A�������)/E�M�i���S�}L��ؕy�+*!�|M���tr�D��N��j�f�?؛wpR��,��y�Qw�e��S�µ��YW��m^�@m��+![�B���Tm�����иG\Zx��{e���+k��s����Z#��i��|x�Y�X�r���X�_Q����q2Z�|�`��T��\r1��ÁJy���:��W�+lˋ*����n��ᏈY�e��:���2��8_$6�7��lU��šx!���k1r,,���Y������C�ԧ�A��6jv{ ���\"k��֣u���@U��ʈKK�T��\0\"\n�: ��GR��\r��E�������\\�5�|E[�K�^<<CZ���\nF`�wPqu��2�q�i����?\r �#a�e__3S&T��\0x�DΡ\\�9+�[��(ex����7(Ly�ycCuz��5�|J�U�p�2�SD2:b\n�WC�\"�k?�@���Z~�Z��B����@*��[G �̨�|�]�-n��R�O�Z�y���D+���`����c�f�:q���+Svc�i�C�2L0%�-\\��[W�_3��ví@B�Gn�ܠB�*�^Ix^�M7�<=Dڹ��W��˺q���K-u��e���{�2�l�� խ��)��B�x c˙���N$�I���G�u���[�����+p�\n�8��<��K��`jy���*��r���7��X��,EhE�M���-`�S$rQ�2���\"�;���.c�u�~dG|6�h>f?�ܤSkTwy1-n�Qo,Go�wy�4�|s�P�XM��D�tt���%�$l�ʘA%s�$�=�:g�-���v��h��\n��+E�6ܨ�\Z/�y>�y�J�k����-��\\\Z�È��7���c���q����LԾ���W�%CM�2£��uLf4W�<���{��!bj��OLM�\r���W�]\'r�LKв��/2>\"?ꖶ�n,�p���]�x�73At�֮R�ıp��B\r�ښ邨������\0H9c�\0a�8�Ff[�,�\Zc&��ڬ�?]Gk���2�%~�ݷ�Pf��p�T�Ƈ<�o!}f(�U�]��2��TDZ]U0�B,�\n۲�&�鷫���-U-00<.T�a���V��Ѹ3@z\"��E�1�~�A�]{�֟5[y�R�Va6qpۼb�TId�]�\"<��h�c����g�]�-���_��s;��Y�,�+���\'?����5�52N��	��1gb���~�ܼ�%�\0+��f^�{G������7M躕q��*@PG�^X@u���o�2���{�m�x�\\���ģwCY�6s̩�Wa�B*^�/�/Kq�k�F��ܢ�J�7����lF�S��V�LZ��6�,`U��������bѵ�*nd�IW�>���=/��̩OꢎZ��*f&�P��z79�Q����r�\r�^U�R�i��ʱxp_�!�|�<�k�S�f����4�K�4�P���G��5�`SA�4(���67���xU�F�e2�9kQEW�+������>��[�TN�F_�,ўo�^��\0 >��7���p/_�[nCy�\r���Wr�s�b9�2�ă���0��;7	�Cr���ϯ�b3@v�D�SR�]�!�����liB:�`�ǳd�\r�H\'5�Jv��G����D�^;��	�y�bjdN\rF\Z��*�b���U»���ׅuӔO�#�%��yU2�X�RB2WeK��/sb�6���	fJ;�3�i�ɝ���f��CPZ=���>Z�-�f���-�b���M��Ka�b��0�EMGlr�;� �NeeJ5�7c�0�-�xK����t%���lGe�+��S%��8���r\\B�<��\r���/�[��Dd�W?����u�ʯ�5<J��Y�\\���C���CKW(��N7/I6%�\0PSq��DT�]���@�W5x�8�~�V�V��\'��[~�=�2�\0\\L_�Bѿ5gN�ˈ.�|�@ku�Ufs���ԭt6�B�\0C�Ǉ�\"�\Zur��/%�0�b�\n��\Z6\n[e�,��Ǹ���A(�e\\K�q��)\rH&/9�4\'�u���<����7F*�h;z��o�(ݶJ��%���!�2󈂂0Y�⒘�K�j+�7(���7R�m�T����z&�J���u�_�Ly����6��+Ѓ���O�Z@q�V�p�R���4�����S�w��H梭4�w.���Lp%�Q	-�V��K�T��7��A�`�e�,{# �k6RA�\"��/�e$sq�l����C�|M��t��Jj�R-S�\\�R����E�<�����U����B_�b4�K@���W���ˌ�m��\n���,���j�\\05w\Z/���@ڷ�����\0��tm�+L��IF/qĲ5e��{�)��J��z?P\r�eo<$Z�\nVV6\Z{�0���5T/+� ՜��h�k`�zV�\\Y0T�%��,��S��u��WlC:�\\>��(�c,pZ͘�A�̩UD�M��X����Z�\0�=�B��xլ 	w6��dE�V����Y���-k���\na���%Y��Tx�@��4\ZƃB؉��t����ś�Qf/�x�t�~e;���9\"�Q�᪚WX�~��1 �z������4�W�oG��_�;��2�QY�j�\";�R륪��$X��x%>�8��uu~Qos~=����,�۪�Ե�\"Yr_d���3@�Y7Ny��	ed�7�s\Z�x�8o>*��J%�WpyIgK��u��9��v1��^7�X�\0P��\0B�A�-��Sk��Xx@y�~`����wo=�\Z`�䕐[���+��y.j�����E�V�\rW�\0��m�ux�/�ur��pb�@�1�--i�4.<CA�\r�l3Tn�u-Z���ˈ�X�[Vc�Rl ���\0��T^a����[+�v�q���6뗩�º�k��A.yu��\Z!�O�7�*��2��aw���pB@q�\\cp#P�\0�Zs\Z�\0��<?Q���%/0�6�4���Q��`V�%�����֚4��B@���C4��WY]��{n�fȲ��� *����8@<�/l8���f�1(;7|�Ĳ�vL��(1����̚�߸X���#�����fpu������j�@䆶���EPQ��Z�J�7lF����6��cvm��e�`r2�Z�����\rU��c ����P�z���W-�$/	�	xfK0\"�5V�sn:���Q�/Z%vG�	�2�v�n)`��۩�6m4����G�/X�fn�o��E�u5�v��H]7-Ƈ�w(šԮ��+���D�g��\0�ԩU-�\\�w����z�����]\rCE`��,�nj�=/�:5r�cf\'���`&�R���LX�Ҁ�(n;�-�`��k�/��sqM�]f�ߺ���Ĳ�A�?���K\Z�׉D�ԥv���7��M)\Z 6�+P�F�Od�ѩq��T�ʥpJ� �}�ȵ��,Xj��ǍL����]rwo=��nP���\"(��.V�lF­�g/������M\r$�����WMs�K��\ng+�R�W4_��6vq,�v�	�����ӵ%RS�P�\0�\Z�K�0���\0f�]QH7R�o���\0�ʅ\\�Z}�J��Z������}΄{%�^%U�~��}�[V���\\�\n�-�ǈw�	��\rHm��[@�R�M��g��Zh�9j^�\r�GlB�R�SGd�q\0V�!�lRt�,4W���Pf��`W1��Y�n�68�y/�*�	��.�PY�V`����f��\0sY�[q�Q�Kaٻ8b�9�*��\0Rݲ�s���UE��p�c	��+7�Q��ī#�Ǡ݆�r�o����(�~eQ��\r1�p\nP�y�� 9:/p�O�+@y$F��L���\rõ�> `z���qs\\\Z�x�1�*3h��5����O0��2ao�pј�(\"��)�\0�kue�T<8截����\0�T>Ba~�P�<��G�=0��e�b�N8�h�#�Ƴ��c6�������WS�8�4\r�TYc}�-\\�T;�얥a6Gî����1�n��](��k �	GX��x0�Ş�$(�L��U�\"P���n��\0�Zj�P�OR�m���M͉U���U��v�����P݄S�ٚ.�o+�{n$)Wkns�����/֦��2�\n7����w�(�!�ک�Ķ:T����[gx�\n���Z\Z��Ȏn�1�/3m�F;��v�g�sg_9`�@)\r�.�1�uh��e��3�Խ�j�2Gi�K�J��*�)\Zh�x�.�W\Z�0�V��fs~e\r뇸W���)��`t��˶1E�ś�	�}�qG� ���\0ܨ�G\0̸��0�h+�E�^�)��\\L�}n��� �c��4.����p�WD��:}�XvT�H�K��\"���]����Yi�%����\\9x�\08�0\"�0Ch�M��]��?ET~c��/���jtCQ�u3��������$�O%��H�Di�{�`.�\Z��P�k%����> �D�f��\Z��T7ll�,���t%�\n��#Z\n�MA7aꡚ�s(�R��Jd?��D���J����ʕ��G���J�����G\Z�ߊ�zl�\\�L���U�u�^&^̐��;\n4��\"X<��PQo����K���QV��:c��V�\0s7��2��N\"�B8��	�W�9�}@4�3hr��\0���r�cs��Ȩ5/�1M�<ӹlUO,ق$���L��\0\0��T�5�%(o��WVJ�\0��(��\"<��F��v�Q�kv�D\\T���%������s�nRx��U˵�����1��(�w��3�&Ȭœ}D��R����r�>Pw6|A���fu���Z�c7U/�7���m��l��P<�3X�\'��+�Z���\Z9fo5m�p/�Q:�l��I�B����l�[`MuQ=��۟��X��H�ݹ�!���P�D���o9�Q�_�����\0fu,N�#j��P�^no7���}A�V�W�K�le���0�j���).�ِnP�@�.S���cqD��\0��َkuqҋ����`�r�fi��Ye$��K��T��L�/3���ʷ���h��J�ܼQ��\\!)�R�n�	p1oD\Zj�2z�WE��*c�er� �g����Ւ�%�#�1�:��v����c]�m���KRW�ּE����W�]͋������JN/����c�+��9C�e�6K%Y8�\'�9�t�\r���J�i����)�\\�-�F�9����1Z�8��\n]\Z�U�T��_�3�����[!�4�	4���)Ig\'r�H�B�芛��ވG�=k1��B\n�TP��\0�=1-�n�m��\\��ŀ\0<K��X�E��Y��w��4ف�&~a��Uƽ�b;�\Z���f�ή���{�_~\"6�uSE���2�S�5���b�����g��7.U�%�-d\\0�6Fh:\'\'v֥Y/1Zz���XRq�M�F�M=E��A�ts3�[w-Z���\0�y�]b���$Q��`�ze5=0m_�a�}�m-�n\Z*q�*�p��Mf:Pu�^�)kL0��ܡ��ii4˺]�!�ˮ��j���t�]ޥ���޻�W.���@pf_��\r����$Z�j��X�WK-5_S��κ����|�X��W�J�D-<����;B�]����b�+��S\'�\0���~x�0���n�F��0D p\'����.%\n��aTcĽv?�����.f˲��eYQX���9S�!Aje jP����]�3�~a��.6���0�i}���S,s�����ǩ��5zq3/(YD�S\Z�Wp?����Ļ�Uܠ�5o�4�C~9��%9��nJ��7�JJ��QmH�Ij�RN�0�r_���\Z4����3�����;�L�\n��p^u�<���\ZULJ����������s�\\]�ԹJܮ����+@[ijQ�,:�J&�`Z�P-�<bbíj�L���5�����5�K��ܲ���g*w^�3i�9��Y�\\�U�7�ɺ�ԠaV��7z����͵�\rQ�\"-6sW>������r���.tl��?q�}7U���H+Ye��kQ�;�a8�q����;Z�=�R�\"]�X�U�����;�r��-y�$�1�(��k��\n�`�+��R���\Z\rf)�KU�ù{�[xԱ�sp�Ûw�\\�AA��ʲޗp�PU*��X���)�\n�.H<�WdY.��KP����<�qh��AT*�\"�i����kq[�~�*��^�������P��p����\r�V�@�U��i*Q�Ю4�6a �P�j\"�R�^��h��j�EL�G*��g���1y��R�e4�M︩Q�˅P\08\n�B>ɫ\\�ļC����e�s���6��-�qwn��W�R����#�*|ZAD�a9�pln�%y����7~x�_��-�1��U�c�]�f�w3i����K��.��u�B��m�����qӨz�#��n;���p�4�;�񺂡�m\Z�x,��V��$�7EjU�3�бk�|����X�7Y��(P�.�h�8a�G����ԬZ�ʑC�w�����p�b_�p!N9�\"�TA�ĤN؇�\r�vkn�\0�v���y�A@rJ=��s��-���\05��(_�=�̪Ww�\n�S�\\)㚆����W_�dk� ���jl��%����M�|乐�O��0:�rÇ#,�cj]���ԿM@#F�A�U�B�P�7U�%��(��������G���\0Կ��`�(7��	�����d]}��+}5\n�au0f%W	�yi�5S�@j�e���SV�j�*��˭�T�k��NcH�\\@SX�L�暲avՒצ���C��t3W�\'(���#�W�o�f\'\'�r�\\���`.��%+�x!�����R�*�\r˛B��c:�q�h��h�\0�+�K���9�@�}�d|㎥-j�u��V�̠�c��Cr1���2�.P�Q�\n�v�ɪw����L޸�*\r��Q��$S���c�NM�0�g�Ġ��y�AW���&�^ֈ��in9*%u4�!�;�5��`W��\0����l�~e��r��D��t�AV�1�]��G4��3 h��7�\nt�e��X�U3���fF��o	��0�P��sq;}ſR���۰.d��9���%��p��C8�|��}T�MV�r��q��ԡ���k��{���a.� ,���q�e�o����\\�ԭQ�Ѕ�	�\r2�<DhZ���Qv�L	~n�����D�螃�5��X,�$��x!�a�0�.�Iġ��c�*��7�ŹB�Lo��|Tȣf���ט�X�������r���1�g��7g�Y�G��\0q��\r�&\\��{AbAW�#���r�l� p�c�a�\\�m�S\r��i�=��MUF�u�j�����S���b�	�Fo*�k���PU��W�r��ڿ12�J��2��\\\r�ʍ��~���=�\'ܻ4���L�\0�@6C�����Ld��b��3e͟3������7�\"R��bW��s�w:�\\�ת�F��n^�a(j�.!w2�wSu�X]�]����aۧq��USQD�<,�A�T�7�]��jr����M+�\0���b���M�C�9q-n�H��K�/�+�J���y��4�Z�Ya�Q�ۉ��GW���v)b]\"a稃.^�nx*> g����1왳2d��6I�4Ӯf\\���X�<��C,�o10?h���S6W�B�V-&-�\n�;�\n�nm�0����.xx��/�\"R�UЈ���1-я��a���Y��+�O��4ԻD����}uV�W����W��p�w��N*=Į*��#�� �w�V�*S�$�M``�eh6r�AMu\0��R��1���)l�.)�;:I�y ��\r��1�x3S+.j��`��ugV1m{���Nv��|w.��%u]G�ٳ�&F�⋋aZ�H�	AJ�*ت`^������g�M����5gU+�7�-�g�aW��Ü� ���3[��E)at!W�/P���-�����`.�tQ�ř��2]8�hL]b.P�Y8F *����76�<�V�.��r��6��?[,�o�\".���i�m�/��Z�3\"�w�6�!���4L����m#@�ǈ}�Jf��]�&)�2y��9��5[��®!���}k�g�݁��\\m2Vb��Z�PZ0�l�&-��r�w�`�*�\'��-�H���s�\nYיW{�g4��p(Y���8�g�	.�	]�..�dp2�/���ud��u��<�J%\"�Q.����s�\0pa�1O=���b^�ŁD���_0a9��l7�����-�OGu7��q�(W<���lw�k�R�W��:�^_������!͌|�\0�^�R�o�ػ�]��c���+Ӱ�^!��R��J]o�\'�	W���J���^��m�y�y\r̲a\ZqQ���%���k�6�1���������\Zy�m���XV1��-�%�4C��Gp1Q5����^m�?��z�ƻ���%���>���m��\ZмL��b.�(�!^j=�q\0i�d�Ays���4�7�*�Ćc+{5�?Jq2Øy��p|�fu]�e��*����R���@��\'s��o���c\0�t��g=��9{�j���K9���\"\r̃�sq}�9��5�������5�%�����&<ņ�+45�����`�)p�x��+\r�]D��q�ьƷ]�E\Z��.I�(�\"̰m���i��Ui�y*j��D- �MŽ-*� ͽ[\0[�X�TG�r��r���\r�\r�e\\��`����k�.�L��~��^�u���\\�׍ܴ���@���L�0��4�\\�4T�\"P���:vJ���`,h|�zb���{��^`�9\Z�,�Y�\'����w�&51��\'r�+*��1�Z5�U,{��k�P���G+.�P�s+>�fh�/��c�\rp.��*Y��\"L��r��\n�N�k,p@^>*�\0̪�&S;��oԥ�ѵ��m�0R��M��>��!��`�Ӿ�X�*��ɳ�(S��/J6GK��XY_����3�y����~�4p�-A��*���5��1�S2ߙ����m�l��plc=Lt噀��%�6��d����c�<\\+J�Tn]�N��r�ue\\��h��+�,�5�*c(�Sc�%��+J5O3\"�X!�U@��4��U� �(�]xS�J����52%�D��9V�)n�nc\r�Yr��a��.���dљSXX�mPz#�1.�U3�QC�)i��K��d�W������G�aWl�:5�\r��̪��1q�:0�Yߎ�!s�w�\'1��ʊ�e��vY9}TTA�)����u�8��%�F��@@7)S��(�AP���;U��h���eGg&�x7��Q�K��C7��W���7��eJ�z�b:��\0�Uw.�w-�WKJ������o�p�4Xc;�s$�\0���/�d�R�c[�8���8\0�@VR\r���M������b�����mN�S�l��.`^ʻ�n��:e���09��a�a���x�^���h5���F\Z⾠(���.��G��\'CT�Ll�5�29��X^�\0�KR\n�\r�\0����kR��)L��U�ۋ�f(�Jn̲����w�>\"X�)O9�4�-Ԥ[k��w�m�x�3���\"#�w�2��]TC&-�\\О��yf\"�#��\ZLF��~��p�,b�����x����pN�/�\nS����m���<��֯�\\]Y}A�/����<8�<���8���]�í�џ��V�q@m�%,(�y�L��x��j�əE�S0S�\0��L�A�ȏ1�rKr�p�v����nf�;���5�ZV�ܶH�=1N���\0�Z�/l��r8�s8�=J�U=��jz�T;m]J�Y�kD��\0�z#s�KVڔA���R�\\����-���m����KScx̢R�#D�9�9}F䈪�3�h�2�hw|����1�*\\\Z\\��߉w_sZ68�/2��~f0<�x��q���4��V��b�1`�!Ŏ�u����\n���anXF��fn\n���zDZ/1�j��ԯҥb��;�L��H�)\0����_D���S_w0o��T����Z���x�b��/j�ݙ��l�N���k�\r<z��Wd��	�n��wWQP]�\r�$A$eL��b�L<1����\0�R��TǾ�R��O8c�9�0w]J\r�B�.��YK�pR\0�v��-��#�*�j�9^\"�Knˋ�\nF`�`CcV���A�p�����!l\ZwF9�C��(E��Il�e�*��\0�W�˓�\0\rDdҥ��2�M��n�]j�1{�OP�GP=O���k\r[g�5�*@�d稩�P��<\Z�x��`pgN8�\r��X�&��2�q�i�S�5\'$&Ac^�Σ:�mܩ��\\T�\\F�ɲ	m�I\rq�-Q��WU}��a/��EWd�����\'��⢜Z�c�+��/\ry��J*�kR�6f\"g��T;k��t�`x�0E�R�WL�Fn%�f:%���d�W�E�W���T�1y�q���c�j\Z+7ܦx�(�\\���Pӌ���u�3�W�Ú�3&�i��\\L�ˉ���YNb���ڌYb�3�Y�\\m���k��V���	ae0�*�� #X�1��������,�=K4��7�s	��3+�wQ[ġ����auo0�Uݒ���t��a*�6���;���\nvF��s\n��a��\0I���1��#�!߂�j��F��\'{#I}\\̸h��3�F\\@6��d�9�p�9��.y_��5�þ8e.�Q��v��,��k�V�<M���9�k��\"7��;.:���!w�.Z�S<�\nK�6F��T\0�yg�S-�;�XZ� �%_d�M�ܬ��B�z}�\r�ۉal �(�H4\'1�]��*�o��6U�r�6����BJT��k��%\n<��]&q���ť,�JR���5��U�U\Zb�L����4-�ۨ���|MŹ��$�WN�n%NѶ�\r���\rվ��\079��S\n�#��݄��|:���Kv2����l�!\r�\r���V�P�3,-�`�6\Z&ب�ӝTE�5S�0m�8�how2�;/�_	՞�t���+)���D�������Yj����M�*	h�50o�����k�s���\rVs�CC`�;�{[�dGܩ|qԻ�w@�%�ǹ�_n\Z4���@4�����x�����Z�v�ɫ�sd3|��\0�}�$��R�f)l,��-v��=+�Po\'E�#�����f�������]f�QB��Z��Pw���\rj�l\Z.&.\0�s`�jP�m\r�X��l�r? i��w�����e]j%�\Z���A{emTxN%��p�a\nS�G!zNe�#utE�5�\nrdc��\\=͜�{��o)��`�6fp���*n�{���ka�����R�I�,�f)^+8�]W�#�!����ŕ�ph|h�	w6q������4�un���	��W�p+�s0����4-��b��J�A\'l� \0�c��0�*r|DG\n�u2yv�OY�v��>!F�,\\[�\Z4\r,�\r;���n�g���rş2��Z�tb�+D����n��<��w�m7�(x����1\r�E��qn�����e��tC{J�0��*e6�At#Y,�q���^o�*U���ϸ��f��3+k@�/0��&���<�\0�`����-�u�K�����z�@+�G�UDP�;�#�����+�r�ۏ�\\�v]}J���\n�۶(Kx�\"�5���tU;wP��Qu[%��|0��4\n�2WV��k]�V�p�(�J�1w���$0˦���eSQr���Q[n&m�e���p8�7�5lgpV��bQ�����DF�V��z\nі;����[���.)�&��Q�Z���AF�u(]�1ש�x�?���&���߉VJ�>��k�pWCĥ��^b����<�b2]`�k��&�x���P� \n�7y�-6]AWi&V4^������U`� )�g��v*�{���M�������e�\"�H��P�EN����b�/#.b�����\r��9�Ҝ�����p}K\"��0����4;<�A�jZ��㈥�0�q܄���B���4��خ��8�D��(�c���=NL�QU��g�y9��}@f�.f��Ѣ*s\\�Po�C��@��\'<��ҫ�%h�6�J��*!A�6Yj��`�50\0����Ȃ��JG��qŵ�ð�!�5Y\'2�d�n��.�@_6/,ܯ;����\n3���\\<1��;`S.bǏ&���y������V���lZQiJ����e˵}�7�ܫv�ֲs,h��v��6w��*������?$M\r��Xێa��&�=\04��=b\\V�F�����%2Ϊ-��<W�`�\n�m,�]GV�Z�@M�\n�]�5��3!���l�\0�BJ֭�9\r��cm��\n�UP*�@ַ\Z�`&�����\n���Pj��\n5�ܺ�����|1�W�E��]!!x�P(��6B��[D���[�3	G�K����1�&�Φ�z����՟����K��\\�Y�~*\0ݦ�Թ+-��@��F�K�+u<�C�\\K��5\ZSC*�NY�_0�g0��\"ҤT�jN)/1�2<�5w5na�/���5^���i�B�$�UE�~�����7E�Ϲ`cO2�U5���ϩ�2YP\n�1\r�L�Ҳ:�ޡ�T��[��\n���-�����v��r��E�aZ����sY�����8~�O���R�L!��\\4�������i�7� Z��	h��B��EnR�n0�l,;����+�T	T�w;�$~�-�=�Sh�g�\Z��˂�ҷN��z�J���W,4�d�l���V5��UV�f%�_��-[��P�4İrs(X���ĳ�]3��Z��¢��OT��@�{�&iq[	�����q5���Qé��E㎥�|:��/le��nQ:��j]G5˺���Kof�P.�\0��KooD�A�0U�b^,�-���!:�o��ݑn��*Z�P_�$y�\ny����n��u��9u-�~s�̬-6�/2���!���m�\0�u�2���P\\;%Z\\>[{�KV�^#g�R�쬔�i[�㢎p�\n�jX	��9a\Z�&�ʕZ����e��֮8��C�Rϊ&KP2�0�V��B����E�66��5kM\\b�VU�\0�yInr����Qk�믉e����[����sErB�]v���CI��*Ჴ�]M\0_F���$5��(����-�5}��汛�pR�T��>c�԰\\������k����X���<�����#v�X�DSY<�qW<��J���Κ:����&���]aG���KɲW��;��K	)g����7�L��B�����^���C�sC��m��)�!�>���Y�5Iv�ML\0���0�v�XŦ6N{�eʔ\Z��^��e��b`���V=b*�+��W�^P}���B\n�q\Z3�R�\n\n��&����ذ\0��zy�h�Lo%��[��;��%g�@7���\n�l�΁3N\"Ш�-�k+̾��\0�)��_lV_r�;jo\\F��)n�.\0�2��͌f��4�����,���+n�[(��r�Mc���H�\n�G���J�,�G,��/\nj\n6mJ����@R/1-3�#.����.���\0�y�\\�s�$�ޥb�q��M�\0�5�84�,�5�zEE�/Q֮w�j�լDYz�]\n�P��e�_w���[��;���e�@�2g#�+]ܱi\"�8�;���,wt>�6���l��eE��⸁�yf��S~�)�4ѵ��5�-.��\0�K��8`���4g/�f\r4Pz����2�����W������jB�-X�VlJT	�r�ɸÅ���&	�c�\n��\'35S^\".�z� ����X��\0u]�y��6�ۂ�t΢�Զ0ȸm�t�8V)\Z�`�l�0*����K6���K\0��X�����  �:�Ubu�k;^e ��p+�/�XfZ1�V�b�L��k�Vݠ\0GHc��T歔�Y�D�W|���3uP{2q]%g��N��V�e��Sxw�7䨁C�.��@2�a\r��p\0hP�	�����e��Բ\Z]�@[	K6\0����Q�`f\"�e�oGL�9�ŞÙL�\ZƠ��� �V�\\GLb�k�n\"�z��C���\rC��+�1���M�B	 ��%���A���v�J���L^��V�$�&�Wn	`���Q���d�آ��*\0���v�2�4�Q[��4��Ls������^��/s0��45��p+vS��Ur�w�\r�P��R�t=ː[�w�x��[�����QEq�\Z���f_p��E�V�w�U���Knʎ#���c��F�>G�*gq���������k���&��)P!$b��k$�(���e5�-�Ԑ<N0Z��ߘB��\"�W2���\\�wP\0�W�5�X�3l\rQ.�>�M;bP|Ө#e�ŵ�7p�Vo�Y�/��Rg��U�^�Ϩ�N�++�l\n%@\Za�5Y�B\n�\0�H�q,���*��F\"��9�j0h�.pMƊ����R�*��ĥm@(y�P0\ZW�0�T�U��-gK:<E5&E��4k��<���n#�(�x������0����@4jf���0J\n+S���\r��j�Q�v�Y�`-u{F��wee���_����Qi%�*���\\+}�1����6�V���\\)A�jB��Ԥ�^c�\Z2�񻌠晞��a��4��5\'��R\"��E�!F�F�a+OY�+`��iF都��7�t`%�B�W����S��%b�\0Q�*ux�B���N�)\Z��HFT�G3 ?z�w6�\\�+%͞�\\J�nڇ&^#ؘ�y��`���4y��H� ^#���Pxpݏ��T��2�j���mV��^��_���S(t��V�\nN��(�R���E��(h�5qd�!��53~j�y`+Z\Z��� ��q��\r���0�ŧP]���J�(�E�pQ��	����LB�\"w������c�\0U�Q�\rP������\0�i�+1�6r�孆�R�^�\n��9%l����ɢ�P��R��{��g��$��Br�,1�W\"C�l���e���;�L�e�o�l�/sY7��؛p�AB��\n-�����UQuU:��1�.�u\Z�x�Y�}T�AΡ��(�r��B�\n�C*��A�\r���T�VTG�}��<0���(�`�a\"-����sn���','image/jpeg'),(42,'����\0JFIF\0\0\0\0\0\0��\06Photoshop 3.0\08BIM\0\0\0\0\0g\0q7jd3TqEp74GXJ5EizJh\0��ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\Z\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9��\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0Q�\0\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0\Z\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�r��j��@+@+\Z�ىU]����t�ٲ��\0K\0\0\0\0\0CDd�`%�d&�3Ad������j�m����@������iP�b�����P*@Q�*�(�(����	oTZB��D\Z[���tCl8��%�\0\0\0\066L؊QN��~�-J�Sd������iR��4c�f�٦Tݥz������Y�p�P�0@J��&c�>�����k؂i��-$_7��P\0\0�z��Q�� Pn�,-J���V�6Q�)]�ܑ���\0k�(�%Y\\��RQ���\n\\訢��(��Q����Ӳ�{�^�	[���\r�\0�����+�ll��JEi�Wu��bZ�ݭ:�cEt�#�\0\0\0\0\0�/TQ��3�k\"h}.�&�%TPQ@�*�Sw��mZ��[�Nf���\rH�ƒ��D��JU-hÞR�\"�t��ڿ�*7!�ܺ�\Z���5\0)DD@\0\n��USo	p/�@�8�H*	Uƽ$r(a3V^���U�&m����O�{\Z�����Xa�b�\\���}f�zۦ��%�:k��1 ��]�/�(P\0�\0\n 5\0Ek5��ȋ��i\0p� \0p(�E\nꊬ�Q6�3\rd�y��]�#���ȣ��99{�{.k�n�|���f��tp�Q�Z��\r4W��\0��\0\0\n\0\0��\0Ky�����bO��ɣ���@�\0��A�5{P7��q�t�}MG�\r�翓�1��\\��ruf�e촙B\Zrw��v�����\0\0P\0\0J\"�\0DAdi��:��m��x�����up(�( \n���P�{g���� �-]̽N��NK=2ts>Z����	��`\\YN�!N�K����E=E@\0\0&\0\0\0*\0�u��S�ǂ��u6�H9��ڬ�e�\\�1Vn�24��͖%��h��Xc1��^�`�8�%y��gg��#�Т9f�*���5�w�����UO��ݪ��7��t�~9s;\'NIDQ���R��Ar�Q��\Z�1U��ZV��A�c��&�v��b�fB�-�Q�������G!v����nt4�����`�5�������\\�-�9�_��v:&.�F�/2�����F��XMA[����v[���>.躗�GSDQiN�E���Ӥ�%P��ۛ�n�U�\Z#�c%kQ����q��Jm��k�����D�*9=�@�G�K�{�6�m�%�ï�uH��V�UL�ܖI�dk����Dt�m)��g72��p\0*\0s��\"���1t��0ѵB��u��.t��S\0C\Z�Բը��W*Tu��ٚ�M:L��՞:Y/�?E�_;�{8��B���y\r%}��;�s����TE���U�`��\0\00�j	�o״�a��Y9���:ݚ�we�c�Z�c��\Z�9�N�M3�S���<�߶R������X/����_V��>ilc�يk7[3N)(h�����孮���M�cۗ\\)c6V�r��\0�ԏ�\0`0.��Ϩ�ە�{�k�Nk,D��-���;��nh�bH�5j�2�����zz�g�ϼs&�ݳ������j��Jɗ\\�\\5��T1\\�h�O����q�r��ț@z����	D��3ʱ;z<�ttm�}�6�����s��ȅ�W3:\'*z�F�K7VF�p�\rE��]Uz�����6�)4pƪ�2�j��z�9��_���竳a�K.N���Eh�\0((���L*%�̉fW��yM���ݜ�{$�FJ��l�Ա���^�H��� �eB�V1��}xӶ���Z͹���k���呹��\Z�>n�VVsv1E��]<r���}jI��W�����Y�Џ9�I���,��~~۳��2�%���e��71�F�T�Q�.#\Zp��:L+�顉3��52�I�J����9�Z�����j��w���7�_2h�_3�:Z��trئ&l�̾��9J����ѯD�%��Z�R)FF�η9����9���޵��iQ�+�v�at�`���뙯��T��<u���vE��4	�����+�����h��ۅ�m�\'C��ۚ�8��_%���X\\�\0�s�\\�A��Q�����Z�7�yi7c=I�4�>W���*ςK=�Ǟ;�1rڹS�}D|�}0�kb\n���\'IX��Pt��I8��c)M���z�\0K�8�Uf��p��-��-�@kv�������S����Yy�KK���z~3���oB�;�yo]O�EKx���-�Ǫ�z�x�8��6ޯ��u<Oj��C��Ck�:����n��W� ���\0\0E\0R�I8���i��(u���clt��=��7��\r�� ���5uy[�w�g�R��8oñ&��A�t<�a�͈&\0��/���g�.�\04\\n�מ��~��Z|5\0Up\0\0\0*\0\0۬�^?eQ-F�x���^#&]��|��~{�f��8lֲ��/�5P�ڎ�5-�Ϻ4T��Q[P�{3�j��c�\'��_;�� \n���UH\0\0\0\0\"�Η���D�J�W��kY���{�TY��\0.\0\0\0\0\0\0 !\"0123#4@5A$P��\0\0\02�\n=�Y8�v��[,X�P^�WK�)�)�(`��a���	�~O���2?<+�]�7�Ao���uO��\0b�������}�(QÍ7�[����v�|�6������_�\'���_�\r�+�yA�#���h������]���?��<��&H��C�A�N1����9{X�}E��־��,�ʭ�%>����~29Sg�r��^iW��.�yU�2�?3�i>�0�w����\n��>�:�9��\r;Wͮ��mC���=�w��2>�7Q��y��9\n_��c���l{b�*c���B����ΟOv�\0a�,6�dLq></Z�(�Jm���)�q������z,��G�^w�Gگ�t�th�\Z�\061����o�4�,�ı\\e|���[y�g)���u��,�a�Vr��t\'r�6�8��W�i��D�o���Juj�[������\\����������R��+ݢ�\Z��T.���a�X�GU�����<�ΞC�o+�m�nG�9�9��	���1�v��;�\0h�B��;�;�w������9j�rx��Î��`��N��;Pl�6pJ���)c�X\r����6\"�qw�k�&*���Z\06ЀfW��+��j��������CN�5��\"+����99d��r��a�T(�[��>��5փ\Z�\n��ՠA� �Ʊ�ex���<�����\"Q�:Zm^C����JS��9Xw{���U�|�N��6Қ�.�ꋑ��E\"��L�����ƌ8��@0/f*��r�����+ T�Y��w̦�T4�:�\\��%��?��卥U=Ɯt�9��}�����\0j�.���Y�f.Ӧ��E^��;���3r;͋O��کFi�E�Y�{���Xk�&��cڮ�;d\\+WsciB񩼅ڮ��t�9LZy�3�Yn>*�,�k\\fl��U����c�>G��G﷪��˭�\"�Zmm*��ow�&�M^n�/����w����8L�ܰӍ����i����q�j���_K�`ֽ��\\�gu�Ӧ��b}�˱�\0/�Ϋ>�\';L�2��_k���]_;��r�-e���8³�)8ͥ��Rۯ���\"7�F��7�ghL-:G�\"�i�g�A\\����Ӆ�F�}�2Qg���c*��Do,n��nZ\"��n�ɪ�x�6�m6�M��+n*�:gI��&�u����ߎD\Zddo��7������U�ʷ!�{��6�*�+�O���uݳ�N���� ����m6�hGc<�������n-S�~&M���yw�*�۫A[����ۂ��Z���fQ\\[]�7l�\\���j�p\r�\Z^�܊�=݄��F-����E��O��l��4�n&�}�w*����f��z����\'���\" Q2:�t�r��8�6����_��4�~T������Y۽>&e�̐��x���p�9wO��(�ò�<a2�J:T����o�n�\0g:e�+V\rv�T�my�Gf��\n�Y�z���ー?3��+zo�Z�͐S|��Y��Y�%�v��œ��-X,Қ֤��*�[vX�A�1�X�.ڷ�l�o��:�2P�:>Gnް�c��+}��ŽT�o��}\0te���X�J,����V��ֹ�)�<F42���5��y����y�WxF�ʼ��n���4�\n4���t�jl{U��?���{6v�PfFP�1gm�yE�<&40,�B��}ґ�z�]���!��e?v�So�\0j�h</Н�v\\V�v�t�E�H�_�rS�ߨٓm�\"o;Qk�aX �Vm�E/4+f�iwފ\\���x�]�h��\"�f�V6�zO���4j��l��.���\0_c2�	��]��ZͦЈt{L�8׎�=���Nƽm���ߏ�����ծ�hf)���l=�p����@��z|���h �]C\'�CG>�5²��ʆ�ǝ����@����q���A��Վ��v���*���\rO�tʤ<C_����{Yx�+uR���g�i�mݷ�����W��ĺ��ܳ�a�����y����\'��\n-����R/���;�μ��ú�6Y|J�_nڔS;k��|;�����3y��T���g	�F Kl�|��~`�2�Y�C�3E�r4�ż��]��y�����}^�I� İ4�\'�\Z9Bt����J���\Zw{�f�$Ϩ0��CA��F�ר�u��7����o7������[i-�hX��F1-3y������9�Q1�g�ܵ��s�ӧ~}��&�eB~�#g�*�nv�\r���o��9M��\Z9�x��|[�0�VwS��]Onc���`e3/�ƨY,�� �S��m1,�͵��Ɯ`\Z�9��s3y�t�9�Fo�%���k�U\\�ş[d��2DtG��Bf�\Z���q��O�Ń�-�B\r�;�̫Q�����,ʳ	k��:f;:�K ��k,j�t|z�\'�ؓ��I�ҩu#��s�����M���ÀvnP���l��-�Ȱ�l|J7�h��K��\"��!�ʼ���ţ=.�䢽�뱺U����Ҫ5������V\"U���W��W���[3qSYb5s�zd��F>?PK��)G�뱺U5ϧ����tĬY�zV(\\jNE�t�j����=9+�Ui��M�c��m���*�����v?>m�D�y.=I��ݮ�������ǣ���ӎ���\0���>7�13��K:��t�\0��(�z�96�]�I��ƫ�q���SL_���Q��6}���S�fg�}� ���y�7��S����t?őJ�Rt�t;�)�/�6nk���S:g�,���\0���=.��`Y�oR���������c�Ļ���U�r_\"c�����ic���,����{`o\0���\r,�`��#y����7��6�a��Ln��%ٗ�*k���7�?Vʉ{�{�L�Zmz,�j�gQɲ��6.������2���r�웧#*��\"�u+��2T�_��L�Ʃ׬�-�9�${B(��*��+�X\Zr���y1��A;��e\Z����E��\'�X��\rz?��\0j�~�|�ƿ��\0(\0\0\0\0\0\0\0\0\0 !012Q\"@AB��\0?E3R�̄x��_{��%�e�ۉ��_�쌋э����D-�i/T-�Bۖ��;�-X��ԂoRW�]�\"(�Nzlc���Њgt\"��7b\'[���r%b5lrV\Z9��|؝n�l?�����%c�o;�E�^v�Q\Z7�XD�w�K��\Z�-�=�L�J�Z�.\'lS����M�\038��q�\Z�u\Z�	�\\�bH���lQi��f9ܑ�Ċ5⼁�2M���\n�]�º��9y�.\\Ji��#�A���p�\0i#1^��հ��w��H��F%���F�j��\"p7Q���QK��&*F��BRvяrɖ�\"v\\c��������C���c�/G�pf��aa\Z2S����8�,�0�Jǧl�\'������Q�lj�L\Z���\Z��+�u.:LO�y�r���|Ĉ�!a��lit�Ժ���ı�vJ)q��I��z%bRJ��7%4�do*ju_>K��L�T��`�\0ML8y��\Z�L��}���M�*ju&��5䰬�����5����Gl]�~�G���@Ok��\0#\0\0\0\0\0\0\0 !01A\"2��\0?q�cGQ�������G��\0��+_���}�l��֎%uZ��\0�7��~#�c�N�ʑ\'o��0v��D�Ε�8�v��a�G���	rZ���\'�kً�.��8�2R�\0�܎ZK��\0F����q�-=B>�G�,�%o�	o7�F6(�%�oP��cf(��<Ky~�����D��G�>�E�Q�E�D����?~!��,��Kמ��7�L�c܈�~=Ѝ�B�~���C�!d�G�\"�FF41�ZǬ���F��%D�da��������=F:�G���f�t\'}���7��F,��~���)�)���;���|�v���\0)��U��,��f\\���$>�hR�ժ��K!ȳ�	�N:��O%#�����G��!FL��Z9#��wՖrg�Jv�=#!ZHQC�<#���rՍѓ%��f%�HZc%�Z����2r1�*�}�x1��(�����+�\\�<|��Ju�!��\0]ޣ��L?:��\05\0\0\0\0\0!1Q \"0@Aaq2�BR�3r��#Pb�S���\0\0\0?X��oZZ�Е�B��(h���Sz��R2������;��N�y����������;y�|V#`�N�;��	��?7�b�����(ޥCG\Z[Q��݈)yg�2�FÖ�÷/H�ah��c������.s.k���Udߔ�gB�?>��%8���Q��s�T5�Y5���_K�����ޣ(z�X�i��]�����A�B��f�m�}�A�\'^RNM�Ԩ�lw*m3�p�Э\n��;���׃�ds]�)?J\rו��|�*���buNϹ�n�O���|� �؛GA�ڥ)	��n����Z��fW{�T�}N�k;�Y�uޣs�x������9ڞQ֗�?�g�o=��\0V���6nXFez\'�m���#;�s�Q��Tk���\'��B��O�S����Z�JS5M���E�r�f�Jߴ�;,�Z:������{(��s{�I��\'���/�]ٷzlϪ��ۉM��2�}Ezm�*/��;��hI*��&�\0�v�w���W�jo�(4]?KV�+���`,-�*�ʿ��uR��[�r�\Z�/S��wu��~����Q��˝@j������U�Eȝx�n�xEگL|���F��n�����c}��X�/�Sv+\\�Z�5��F�^#���h�s�����7>�0�6ԩu\\�ȹ�ѕ��NA�@��,=t�7�w�[����(_*��-\\s*3qX��z����{�����J���XFMC��pt9��`�U؆�\'�Z��j��I��e1�a�x���7a�]��g��k�n:{�\n�\n�_�ڤ������H�D]��#d���l����.����UT�Ux2��%�7�kś�_����u����jS�\n:��fUw���.����Բ��u$1�*FvN��9\'��.9��=[x�n6e::U�\"�pQhՉ�F��B����]~{�L��;Z�Y��y<=8�Խ����)�:����*EZ�ٜ�ٺ;)�w�P֎	e�˪6�3xgA�Gv@�Owe:߃�A�-S���y��K29���h骆5��+�];xgx�){�V�\\��v�Ȭ:�cnwa=)��cN�R�@��r�eӍ�5S��|���l�j1�l�i]��tj�v��̞F��;2���kK�L\'?��T�����<\ZUF,�@x䩚�6M���lMҁ�9�Q-��	P�/��ځ��=��Z9���\n�QE�M�;m����\nJ��@$u[�fGY�KTw�!Џ]\"�V,�e#�.*M\Z2���G^E��^�\Z� �tR��p{39�L��@�r�S�laq�*�,]:r�s�p$�������R(TZ��n�]U?;9,���%vك��~;t��Qdߕ����y�\\v�R�Pk!�V̪Y��j�o�4	�ŧ�c=��89�Ǜ�T��g��*ITaThܧ;��2U;v�J�b�PY���ʖ݋���]�Y«��;���,�W�{�{Jφ��ZVA_�,�ܡY�r��	���wN-m��܇����R�OU�п@/��[��i�-�6�{I�4��\0�Ӯ�f�%PB�T�B��Z���b�/�km,�Q}���E^����;�X0X��9��|�Y�n���@���5*>J����ez�˨Fu�p�0������u�����u6��\0���-u���gf�Bj���i*����5�D�F�Ǧb�|v�-<�h遢\r�l�Qh����I��H�C��7��)����Κt7�V���6؏�azv�\0䆶4�y6�u*���j�h��\r��Z48\"Ɠ#ڷ���T�R�ظ��szw�%��\0�Z�\0�\Z�S]��V����V���i�7Lv��MާN����\"�Z�\0��i�no��?iV�t[`�/F�،^U���7L:�w���w�4D\n�C�:���ޏ��b�ͱv�^��yV����Q�j6�YVm�,��D=�	�!C��wQ�oe��lb�E����}���d�Sm1F��;��}(��}��?�Z@�-9�yXD1�����Ls9,��A�0�[6���F \"	e{q�f�*>�rUY(�����\0(\0\0\0\0\0\0\0!1 AQa0q��@��������\0\0\0?!hW\"�760�tBe�vB ��lmG���hW#v��g�[ύ�r���;��5_zD��2�)�$0Zr�!��4-�dt5��gǍ���2b�<�i)d�(���8V{��e�2���P�p�����;�D\'��=�I׊$�k��%r7a�����&RԴI�e��=E�L�0B͖2�\n�ն|\r	0�.���GF��%��rJ&��ho�BD�#Q���N���B��<ʥ��T^�$���&$��\0.!��sE�\n�P��{d:�Z��m�Ɇ�$�{b\0�:z����I��K=X�>����NL�� �r\"ۀ�p��w�>HHECckG[!����_#߂�e�E<�Z%#r$�B!\r�k{���ҎbX\nW�D�BV-�L_��,`�f�	*p�7-Y�p\0�	��ax	E��B֩�I�\"VC^\nۙ���k��zia\rF���F�{?�������@3��5ܒe��	��~�Kt�Y��*�$���)i�O��\n�l��$��l����r\0��r^�Ӹ��S�������l9ǐ�	��3�K[x1Q��`3ȜP[q{*ch��z:�/f�v��BH�����d$z|�9�c\Z`iӁ�\Z�J��\"e�0V%Y�YI]�װ����!�Ʈ�N�Ck�`����-�n�´5��L�M	�F;g�X��\\E	D�S�\'�^\r��!pT��h�U�����e�(FI�hzQ+*�x030@���*%�1�9�&��bI�@�@Sj�21.Qv��6� �F´X,�Ar��T��h��T��\\_���@\"�Y��\0��\"{��F�8/�)/��$�2��х{��o=��Cu��\rhY�.�a��]\06vD���\n$�\r�}�k$�ٍsK5�>������\0�*Rb�\"Hޝ�6;�s��!Q�K��D��$\r�\\�$%n1-$�h���C\r�	�����33�ڄ�R�^�#�9n7�� &F:���es��x��\'��0�ĊN1i�_��G .�-��~3tKp\n��HA��8;�Mz���	!��h�0�$\0.5b�V��`���^t 2`��.�*	���f��fDJ��c`$u`�#^)0�kJTV��oA	3��Uk\\c���	n�6�~v�J~K6Ck�(�\0Uˑ�	���b���\Z\"�=l��bXh,:ܥ�I(Fu��\r$Ym\r��4�2tM\Z��}�\n?T�����\n�����\n�\r}�F�H��G���!�Ť!�]1�P\Z�:&��4j}��CQX#���)\'�E���7b�-XІBz�z��\r�,�pX�=͛\r�C��/tΚ;�D�$��h��J�\rR4A6��#:q�7�L\rC>x`ls�;Ɓ#�d���s$��	��౮���Dh�|�E: sv��BVJ��g��(��>�R��B9�Q*G�\Zv��E�X(�p�A��q��0�DK	|���-�8�$ހ�\'^����`�!-F1�2�Ѷb���gB\Z2�\"�qM@�&䋐Y#��Mг�6�V`Um+�O�@�6������I�!(��r�{���|v@a�K�SDP�I��Y�5��MsBċ�GaM1�%�e���7o�BOҨ��S	�o�8�HJ??��PeA�!��㐒���q0��Պ�(\'�\n���$1�KҎ�Ñ\'!� ��Q]���4\0	9*��(��\rY��;Ď���2mF��)(�Jhx�4-!2��jP�ī1���\\fP��b���,�a�W\"��6�(Xk�@�#D�iXm́\n$�Ѱ+��!(��A�H�ed�@ppr7���a)Y��QJ3��`T�s�`^X���\"s%Q]\Z�5���0��2�+�E4�r��:tS*�\n-rK̖�$l�8>�����J��H�t�	�)�I��f��E��D�a�a��!(9���\r���$$.��Y��Y4�O���&��.nQ-l���I&�T�PE\Z����5��DAFIB�$0c���\0=�>.J�k����(�L�ea\\���B�	��$�H����#�*�!�F�@1�S��H�����2jF�Q-%9^l�V).�6��3(Ķ!\n�\ZJI$�mΐ\n�Rģ6�CBdE f٠ʇr�c��\0�t̐��������64��L���\'SK&N���2\n�1�HU$l=�\rV-ȶU�u���/�\r���E�F%������C)�2$&*��\'^ђR��d!�ؘI٘Ά���D�%�6��\\r���gh���h�ٖWΓ��3.-���T\"�D�=�I:$cf5sd���F�z[��B&����v cH�7\0�HPJ�9�1�)j���O�L��B��T#��Osf�ڔ�>F����Չ��)wh-v:5ǰ�h=��ᅚ~,?����FH�PK\"��\"9����Sr���_����\0?�Ɩ#p��YC�,ZO�ㄘ��f� |�N�Kyzd�J�J�ܙ����*A��k8Ͻp�)��\n/c/b\'�a;�\\�I`�[����?�	G�	f\r�v�h��I���H�ۆ�W��y` ��,6�0���=��\"ٛ�ԾC�pj�n?*���D/c\Z�[�Y%��$$�U�CD�����j�C�������Ic!d�?�����rS��ag�ɪ��WA>���C�Ė����B����t����a)��<�\\r`�)q���\n(��dl1H�4�HȰw���\ZN�~�M��#p�vF�;�B,g!E�c�/���0ŉA6KJ���	X3d��v,�$&l�e�^s:~������z�e-���9�%K��B��%�B�QAB��E�a3eʬF����X��0B��IE��7K��$3\\Q��#�hΫ���[(m� �rNSGh��y�Y���A���	T:v�)\"�r,=c�\'����D��tp����7!�+��$C��I�e��e�ȏr)���I��UV:=\n���3�����\0\0\0\0\03�0��\0KJ���mT~��<MK�À\0\03F�X\'4�`�w���S�$�ڑ�pC-��^�]�vl7�\0�;��	��n��PFf��>�s���y����P�,�\0����|?؎�|3�[�2�����\\쮥߿d�\0���w���	s�k �-\Z��ߍ�A �B2�����)������f,}��&[>��\0����\n�PN[A\"�Z=\02\0Q��{nՏ`�1䟋<�,O�c==Q~��\n+AL�k�����\Z���\0@|��\Z>�:�`{�\0<j6_����\0�\0��$5���8�2�Tm�0Ї�h���8�G��	ؒ�˓OhF��ȷ-�(���x3ơ��NZ��GI�����s.�\\+FCD9�J��[aЯ���	P0PP��ʘ��i�<������Z�+F�G��p�>�9z�|s�	� j�H�[���(`�W,C�\0��x`�τ��kH����*�l0���\\h�<]p�����A��P*�5��\0�*��\0\0\0\0\0\0\0\0\0!1 AQ0q��\0?��O�O��/��Ӭ�{3�WD|�sS��`�>�!�q^����;����~��q� �᷆�l�	a�i��M,�X�ŭ�[�;-��l0��ge~֦A�X�������|g\'�W_�ɍ��.�A�䳰@@F�0pOƴ�V��9�������!��[ 2�\08�3�wa�&Zؠ�Y�<�6z�%��Aa�I\"~J��v\0�Z`��sK88`��`�\rbr�e�ʥ�V�c�\'y3���ȋ1����F݉�d3�@��;��p؜D�ü2��o���mL�I0q���q��Y�y�LM/� �$����WX�%�Q(�f��,�@8�&���茎r�,ᄠ�+�9e�ZE��a��c�ڕc\Z� ƝN��|o$���;+%��3361�p�]�-�̱e��Zcvrt�|��#�\"vH#��$ó��G�u�ij�]�x5a;�\Ziy�C��w�=J�f�#0��I��X����$�Ke[�uk3��I�\'�6g�ߓ�6�Ym��bR[r�em���/Y\0ܐ]O^�ƌ�F`� x&GS=d�}@����ыf�<im���	�;���j����u�vl�6ɢvI!�{���U��U���&3��<r_�ʝYI�0���{�e�c�\\v(�H1c��m��ZIz^3�ln�\\����\0�;c���N	���r=��:��c��o�G���ٱ��\0��E�oA��-vv3�\0��I����������.��=����>�r|��o��!����\0\0\0\0\0\0\0\0\0!1A Qa0��\0?ː�A|����S��2�����Ϸ�1�te��9(���q�\Zq�G�V��_!�\\ٖC�Dd�{�&ސ��e�7��[̬��AjC�}�4���������MB��|�gs�@/va{\"��	Oǋ;�+��vx�{�g�m�0�z�t�\0���d�q�e�\'R葀�*y)�._,�&��u(���g~����� �\"��ƙ�n��A݄ˤA�^����l��31���\0�0��򨏧�=�ã�)jg:����p��G�0�l�$���m�0���-c�NxKo�H���\"��%ьf�!�G�T�p;�v;����G���R���	Wv��7�k���˖�)6�ǜ}��\\�kl0�����F\0������eצI�l`,��-�k&<wo����z�lk(�0�c�.�ft�<{�ؑ@2$x ����y4l��)�a)vI��QN\r�0��#� ]�f��@�`�=�<���{#�����Ρ�\"����2�g���M1�^m�\rl4,{-=���؁��&�z�4�%��@��^N{.�v��:���_bVl�i�c6�I,YOD��3��6���O��d$�X�/�쐐L�+�S��:�}��#�I\Z��l���	{���I��>l�6� z��m�b=�s\'6�ɛd��Sk���e���Hm��2ik\r�S��h��`������� ����w@�!�O�=��y�{��!��u�����9�%;$�p����fIN�/�s�ʁ����_#8JK�x�bg������\0)\0\0\0\0\0!1AQa q�0�������@���\0\0\0?�����$�\"6�����0���^>����s\\ãs�<��\nhL��f����{�d�X|O��#3F�x�:i9����\0�D	���U�$c��vBk��+Tԣ�7�O�a�5!�Q��9�ր}����i�G���%��(\n%J��@���bj9z=��|��X\0���0ר\0(GH�U؂8I�s��{��]�*l	���ٗ��k�zh�ϸ]vǂ�\0~CBeX{,�ŹWj\"�\n`�\'7�2�#k�Č\0��y_�u�ЉH�T�f��2!Ұ�g��vCW�<\Z�Y�KP��;N�/�a��QQ{�A�����D�l��)Gy�������I��I��AeMڔG�#�����a����I�ԭ���-Ԩ�,2��5�1JS4�\0��\"K�a�RZ��Ե��n\0����L�a&�<�N2�?.���\'�F0�C�¿%���na,�2��O&4}����f쭙C*�}����}�F#��h+�[��GK��n:8r`�rnXK���b)���p<e���V�X���$��w�-�S�8�h���!�Ԣm!��-\\��ea+�1�c�8�w�<$\'D����\Z�%zz�\nF�.����0_�ܨV�h���Y�bBj��OW�ke7_�Y�OJf֒���\"���35�d[`Ǩǉi���R��2�m�e����,\\�ٜ����B@Q�%�e�Q�ҙLmfB֞�a�U��lb�1���z1�W���Q��5��A�o�+��,�J�r+�RW��h�X��_����> �x�w\Z&S\Zqp�_��#�z�R��k�G&�o�	7����\0�����P|5���A�?�&���`�B�*Z�/�)�»N�X2�L2����%ha���������c�U��W�\n��k�8�r��j\rG��!�\0\0E�c�/=��^�\0R�\Z����2^���`�=�x���w�`��Sb�6��䶃b��ױ5p�QU\Z���iB�=E�`���,���M��7-���˱�j���,�L�\0�/Q�IT�e��-���k��(\n��(\Z�\0�Y=����T�l�,�nSv����Q�U�a/+c�a\"���\"�Oe1���~W�����A/�ce/G��	%�\0����ȵ�%�.�P�M/¥��0�Q�9n��2���\Z\"��m�\"\"�ׂuR�l��R4�DUr���Z��.�`]xˑ�����ذ�xw(h�\r����.�7.\\���sp��O��&Q�m%����T C#������[bEn0�#=���пC\0�\0;3��Rӵa�lu�\0qo�0(�������-}��]\r�c��	W�X\"�9��@���\\\Z��S\r�S}WCdb�\r-ܻ�T��G^���S(�����l��8\"�j�\Z�5A�~��N�BUu�:���x[!�c�m?�7�Wײ\0O���Z�	 U���#�1���,��W�hu���/\n\r^<@����h\rj�%��s�	��W����._�p(}�g��Q(TŦ��P]GR�uܱw%u�f+�Wr�7�ȱ/8�^���r$���(�W�gabO�b�^0u}�Y��1�\r��\\H4C,`Q���[�CG�=\n�\n�)D+���?\0��.J�*\ZB=GL6������-�#�	���\Z��b��#�sr��� XB��ܰ��|�#R�;WG�����Up`D����3cl&�\0�W�-K���P��\r��2/��;��؋�����|�諗��p�.�~���(���0H!G^A\0h���B���^�<�%����E���\'K���u*\n ������N�������-(��5�\0\0�3\r=����7/)D�w._5����h�\0v��v���*�3r��S��8�S�\"�4�p%�J\0W�x��}��\0\0j\\��m�F3~�`���P����ڨ�^�Vނ�W��\Z�q�>>(�\r��4���2@��:Ւ�&�5#_�\0`*�\"T�K\n=LJ4`�7���ҷ�������|�\\�n\\�X�f4�S ���v��z�_��,Y������?�\n�����*���_P�W7=���I1���eL�Q%r�b�	Q�c>$��%�bH��\"`�w(^2��d�&Y^,Z�Q�:�2_����Mc:n?�\'*�?�F�C���G�^���i�ԷG����M����+�9�\n&��D E� \n��P���G\0��i�x�suڥb+M�kԣw�5JK�� �<@r���S�.Ո����4�j�{��0\n��P�����/���q�^u�j%��̐~\07���w�x;WPeGT�: �H\n!�����QO�:\0�^]|xa`O$\nh�%���!wj�}K�~��PFl�X\n���ǓΆ�?Y��y��M%���\'	��:����w��\0mc��_O�ܰ��\Z��\'Kٖ��+�����g�I�n���V�cR�r�,C`C�(b\"\"!���z���\r��77�4��F�O�\"���|q%��a������Gb[�\n�n���#��v ��˔����>��K���P����Qc�p%�v�\0��(}��!�A��l����\\\'�#Y���0Λ��U%�.���8>�N��������P����^��J�J*�<$�$��棐�]j#�E�m��3U2�E�Mw�I�=/�or�Z|)��]�hD~@��_�A�Ť#gPH��QC�^�7h6Z\r�+RP�n˩qDW\04�B^��G��w^���\0\0\0W$JK��\rUGP%�B��`Qk�e)�9$H���\"X%h톪���n�#�1���\\R�!�t4Beh_7<1 \\V��b��=�1X��	�K!1K��c(Y��r�ٲh�æ[�Wۀi��J�����n>�p��:�T�Y>Y�{��\"*$c�T��rk��c�(�T��xn\'u��(���]��O�(�6�����ʘ�%�W�h��&�P�a��E�\ra�F�z﯄t\0�Dt�i:���1�ea\0��z�*�6ے-��\n?%X2�Z�#\\�ר�]��ɦRʇc�������MEN��+e���[cX��bب����;���k�!CD�ӛ�yQ���a��\"�i?`�����.\rB� ��ph!xeA�����k�	�3[�A��\r\0�j��}!17\r�wQ�<�TJ�Z���=J�P��qT\n�8�E����\Z�J=5+Qa�F\"=Dc�Ǭ\'�8u!%Fl�\Z�Wxq�X�>�\"�\Za9\Z���5Q�z�!�Q�76\0�~�k8<�)z��\0�-n��_B�o��1�e�\\+�����*I�%�)��@8C����KC�.	�ܤFF-%�m�DD\\�*{�T�� DJ�w�c�Yl��Ƣx��7�\\5%�C�%)h�2�O.���:��]\n��!꾦����ͪU\0|Fv�F�)C��0�\"$�v�`S;Q*T3dƎ=E60�1��w�x�Q.D�n0���wE5��V6r4L�\nh������Aª8X]0�-.{�fk�Q���g���8 ��	+$�����Ue|��ݖD�T2� ����d�1����S1P�iw*P(��b� ��P��V1(�_�Q`��c%C����+e[&u:���Ek�ܢ�0Ԁ�QiZ\n�*$C�\Zȕ*�K�@\rY�E���\0�	H#��dן�ŗK �/���N��@D�/�\"�E�Y0�LB�lJLu(������!P�(!��W.>���n�Y�Z-�һ7l�%5�$�.�S?.�\\*�T�P� �%x�\n���/�R{�Ul����x<��§�Gk�%c~��e�\Z!wTA0\0\'����%ƺ��ƕ\nBI$`Çh�a���Z\0 H8\r�Ib0��GPZ��[���8A/Hjʌ3@1\"X���\Z�1`��%�vZ�a�W�P�)�>ޥ�Q\\e��A���P��O\"�p����A�%�qĪ�W�\'��\r��IF$ �=��>%�>èy�ƜԩU��v�.U�V��$~�Ԍ��\n!�k����v\Z��K�D�iw��S\Z3�/��aEq�=�M�|�Yx3���$/�yKI~\n�_��P\0x!�x͑� ���J�cqc0X�R텎�~!�zIJ�R�a����p�\"B��6���FtB�\0�Iuk���Bw/X�,D�|��\0���8ǲPZ�z��R�p+��\0�\rK�%!p��3.5%����*w9Bw�Xu�EH���J���}@����%�h�T�P\"	�0�`�D���x\"�	+�Ѣ8q,�Ҡ���q�7���Q\0h4L7R^������ŀ�H�����|e�b�r��x^�B�T@�p�%Xf[��m�(`������#��n��5�\'��KQ\\%i�AFWW�����	�f]���1ieV��+-����\\K�\r�=KQ�r�\\\"��E`�1d�UD�\"��(Ż�K0��^l�Yjc%�*��Ʋ��,�tT\n%�!58*\n�ޭ<Ĉ��/I�9\\Lwʭ�\04yQJ��X�}0�T��zj3��&}��iR��(ݷ�u�`:>�)L{�����\Z�ë���<�e��-��b��{f���e�>��PX^	LHk�-�#@�̑�����,X0�J�1b�J���똟�c��UW*=���;Fl$����j ��XI��?p.\"�M	 X8V0	�\0���\0� �@�j�zF�t}~�hG�:Q��h��m��>�7�R�O$_f[������v�0��!vTs}��Q(�p��\naDF�z ��4~÷?q�D��ct���)p����8�R�����K޹��6�waH���B*�+Y)~��QH�RŢB�|TX��\"�h,���R�6�B�1j\n���;������yUh\'��q]�`��C9�e\0�H����d�!+4�]W�(�K!��n�jW7.\\L��i�VzGJ�!v.H#�x�5�&�T[�O���>3*F��\Z�ST��OB���\0�S�kv���D�AEVR\r�\'x!�Y?�w�1���\0c�<J�Hrzӯ�#�F���?�%�{��\n�\Z��Y��f��V\0�j0c!1��Ta�?�<D�]��G��9�2��\nO�~�\Z>�o���X�dBx�BR�ىbK�Q�\\e,�D���5���F���lM�)F^P���hk;��v�?��c��\\�G�2�T�<��&L��p���)<q��^$��(˴k3_\\���5P�#���X���n�jVj�\0��	W��R\n.�2/2��+�V.�=�\0��+�}��O��r�z>6��p�B5��Z������[�F�î-D/Ų#P�\"i*����(���/�Z?��;s�PE�C>Xٹ��N�A�F*�$)LїB�Z�F��#7W_����?ȓ� ?�.����h��2���A��B6�}J���3P��GXVt ���V�`��k�B���XPhX�k�Ei��|Jrb��!ZT�.\\IQ\"e��)���a.]�u�B\n��.W�HUu�	{[a\0�n�.W�R�䴰�)���ٱ�5~m�����9<u�=p����Ϣ�×��','image/jpeg');
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
-- Temporary view structure for view `listar_admins`
--

DROP TABLE IF EXISTS `listar_admins`;
/*!50001 DROP VIEW IF EXISTS `listar_admins`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_admins` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `sexo`,
 1 AS `fecha_nacimiento`,
 1 AS `correo`,
 1 AS `ultima_sesion`,
 1 AS `activo`,
 1 AS `clave`,
 1 AS `imagen`,
 1 AS `usuario_id`,
 1 AS `persona_id`*/;
SET character_set_client = @saved_cs_client;

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
 1 AS `nombre_curso`,
 1 AS `costo`,
 1 AS `duracion`,
 1 AS `libre`,
 1 AS `imagen_publicacion_id`,
 1 AS `imagen`,
 1 AS `tipo`,
 1 AS `carrera_id`*/;
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
 1 AS `fecha_egresado`,
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (95,17,'asdasdsa','dsadadsadsadsadsadsa','2015-09-02',0,1),(96,17,'borrado adsdasdasdsad','asdadsadasdaa','2015-09-02',0,1),(97,17,'1234','asdasdsdsads','2015-09-02',0,1),(98,16,'saddsasadsadsads','sadsadsasadsadsa\nasdasdasdsadasdsa','2015-09-02',0,0),(99,16,'uno','asdsadsddasds','2015-09-02',0,0),(100,16,'tres','asddadasdd','2015-09-02',0,0),(101,16,'dos','dasdsadasdad','2015-09-02',0,0),(102,16,'cuatro','asdadadadsa\n','2015-09-02',0,0),(103,16,'dos','sasadsadasdsadadadsa','2015-09-02',0,0),(104,17,'uno','asdasdsadsadsada','2015-09-03',0,0),(105,17,'dos qwe','asdasdadsa','2015-09-03',0,0),(106,17,'tres','sadasdasds','2015-09-03',0,0),(107,16,'asdasd','asdsadsadsadsad\nsadasdasdsad\nadsdadasdsad','2015-09-03',0,0),(108,16,'slato de linea','asdsadadsadasd<br />\nsdsdsdsadasdsa<br />\n123<br />\nsadsadsadasds','2015-09-03',0,0),(109,16,'pruebaaaaaaaaaaaaaaaaaaa','sdaasdasdasdasdasd<br />\nasdasdsadsadsad<br />\nasdasdsadsasdasdsad','2015-09-03',0,0),(110,16,'Prueba 1111111111111111111','sdasdadasdadad<br />\nadadadadadadadadadas<br />\ndadadadsadadada<br />\nadsdsadasdsad','2015-09-03',0,0),(111,16,'oc','asdasdsdsadadadsadasada<br />\nsadasdsasad<br />\nasdasdasdsadsadsadsadsadsa','2015-09-03',0,0),(112,17,'asdasd','asdasdadasdaddas','2015-09-04',0,0),(113,17,'asdasdasd','asdasdads',NULL,0,0),(114,17,'asdasdasd','asdasdads',NULL,0,0),(116,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(117,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(118,17,'asdas','dasdsdasdasdsadsadsa','2015-09-05',0,0),(119,17,'asdsadadsd','asdasdsadasdsadsad','2015-09-05',0,0),(120,17,'asdasdasd','sadaasdsadsadsdassda','2015-09-05',0,0),(121,16,'mensjae 1','asdasdsada<br />\nsaddsadsda','2015-09-05',0,0),(122,16,'mensaje 2','sadadssad<br />\nasdsadsadasd<br />\n12313123112312123123','2015-09-05',0,0),(123,16,'pruebaaaaa','asdasdadsads','2015-09-05',0,0),(124,16,'mensaje 4','asdasdsad<br />\nasdadasadas','2015-09-05',0,0),(125,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(126,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(127,17,'dadadsasasadsa','dsadsadsasaddasdas<br />\nasdasdsadd','2015-09-05',0,1),(132,17,'borr con curr adjuntado','asdadsd',NULL,0,0),(133,17,'Borrador con curriculum adjuntado','asdadsasdasadas',NULL,0,1),(147,16,'pruebba de borrador para rene 12312312312312','adssadsadad<br />\nad<br />\nad<br />\nsa<br />\na<br />\nsad<br />\nsa','2015-09-06',0,0),(148,16,'sdasdasdsa','daddsadadadadasdsads','2015-09-06',0,0),(149,17,'qweqweqweqw','eqweqweqweeqqwee','2015-09-10',0,1),(151,17,'Un mensaje cualquiera','Este es un mensaje de varias lineas<br />\nasdasdasd<br />\nad<br />\nad<br />\nad<br />\nad<br />\nd<br />\n','2015-09-13',0,1),(152,23,'prueba de mensaje de la uni','Prueba de mensaje de<br />\nvarias<br />\nlineas','2015-10-03',0,0),(153,17,'Mensaje para jose manuel poveda','asdasdsadsdsadsadsa<br />\nadssadsadsad asd sadadsdsdsd<br />\nsadadsadsd','2015-10-05',0,1),(154,23,'12312312312312','sdadasadsadsadsads','2015-10-05',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_borrador`
--

LOCK TABLES `mensaje_borrador` WRITE;
/*!40000 ALTER TABLE `mensaje_borrador` DISABLE KEYS */;
INSERT INTO `mensaje_borrador` VALUES (1,17,68,'2015-08-31'),(2,17,69,'2015-08-31'),(3,17,70,'2015-09-01'),(4,17,71,'2015-09-01'),(5,17,72,'2015-09-01'),(6,17,115,'2015-09-04'),(7,17,128,'2015-09-06'),(8,17,129,'2015-09-06'),(9,17,130,'2015-09-06'),(10,17,131,'2015-09-06'),(11,17,132,'2015-09-06'),(12,17,133,'2015-09-06'),(13,16,134,'2015-09-06'),(14,16,135,'2015-09-06'),(15,16,136,'2015-09-06'),(16,16,137,'2015-09-06'),(17,16,138,'2015-09-06'),(18,16,139,'2015-09-06'),(19,16,140,'2015-09-06'),(20,16,141,'2015-09-06'),(21,16,142,'2015-09-06'),(22,16,143,'2015-09-06'),(23,16,144,'2015-09-06'),(24,16,145,'2015-09-06'),(25,16,146,'2015-09-06'),(26,17,150,'2015-09-13'),(27,23,155,'2015-10-05'),(28,23,156,'2015-10-05'),(29,23,157,'2015-10-05');
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_eliminado`
--

LOCK TABLES `mensaje_eliminado` WRITE;
/*!40000 ALTER TABLE `mensaje_eliminado` DISABLE KEYS */;
INSERT INTO `mensaje_eliminado` VALUES (60,17,95,1),(61,19,95,0),(62,17,96,1),(63,16,96,0),(64,17,97,0),(65,19,97,0),(66,16,98,1),(67,17,98,1),(68,16,99,1),(69,17,99,1),(70,16,100,1),(71,17,100,1),(72,16,101,1),(73,17,101,1),(74,16,102,1),(75,17,102,1),(76,16,103,1),(77,17,103,1),(78,17,104,1),(79,20,104,0),(80,17,105,1),(81,22,105,0),(82,17,106,1),(83,20,106,0),(84,16,107,1),(85,17,107,1),(86,16,108,1),(87,19,108,0),(88,16,109,1),(89,17,109,1),(90,16,110,1),(91,16,110,1),(92,16,111,1),(93,16,111,1),(94,17,112,1),(95,17,112,1),(96,17,116,1),(97,17,116,1),(98,17,117,1),(99,17,117,1),(100,17,118,0),(101,19,118,0),(102,17,119,1),(103,20,119,0),(104,17,120,1),(105,22,120,0),(106,16,121,1),(107,17,121,0),(108,16,122,1),(109,17,122,0),(110,16,123,1),(111,17,123,0),(112,16,124,1),(113,17,124,1),(114,17,125,1),(115,16,125,1),(116,17,126,1),(117,16,126,1),(118,17,127,1),(119,16,127,0),(120,16,147,1),(121,19,147,0),(122,16,148,1),(123,17,148,1),(124,17,149,0),(125,20,149,0),(126,17,151,0),(127,16,151,0),(128,23,152,1),(129,17,152,0),(130,17,153,0),(131,23,153,1),(132,23,154,1),(133,20,154,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (10,'Miguel Angel','Castillo Cornejo','M','2015-10-08'),(11,'Jose Manuel','Poveda','M','2015-04-08'),(12,'Rene Mauricio','Cruz Hernandez','M','1969-12-31'),(13,'Idalia del Socorro','Mairena','M','2015-12-08'),(15,'Alfredo Heberto','Martinez Acuña','M','1969-12-31'),(16,'Jose Manuel','Poveda sad','M','2015-08-06'),(17,'Engels Uriel','Alegria','M','1969-12-31'),(18,'Miguel Angel','Castillo Cornejo','M','1969-12-31'),(19,'Pedro Joaquin','Castillo Cornejo','M','1969-12-31'),(20,'Pedro Joaquin','Castillo Cornejo','M','1969-12-31'),(21,'dasdsadsadsa','aaaaaaaa','M','1969-12-31'),(22,'dasdsadsadsa','aaaaaaaa','M','1969-12-31'),(23,'sadadsaddsaadasdsadsad','sadadsdsadsadsadsadsadas','M','1969-12-31'),(24,'sadadsaddsaadasdsadsad','sadadsdsadsadsadsadsadas','M','1969-12-31'),(25,'kkkkkkkkkk kkkkkkkkk','rrrrrrrrrr rrrrrrrrrr','M','1969-12-31'),(26,'dasdsadsadsadadasdadsdasdadad','adasdasdsadsaa','M','2015-09-30'),(27,'asdasdsadsadsadsadsaads','asdadsasadsadsdsad','M','2015-09-30'),(28,'admin','prueba','M',NULL),(29,'asdasda ads ada','adsadsad','M','2015-10-04'),(30,'leticia maria','davila','M','2015-10-04');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacidad`
--

DROP TABLE IF EXISTS `privacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacidad` (
  `privacidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `foto_perfil` enum('publica','empresas','privada') NOT NULL DEFAULT 'empresas',
  `info_contacto` enum('publica','empresas','privada') NOT NULL DEFAULT 'empresas',
  `info_ubicacion` enum('publica','empresas','privada') NOT NULL DEFAULT 'empresas',
  `info_curriculum` enum('publica','empresas','privada') NOT NULL DEFAULT 'empresas',
  `info_adicional` enum('publica','empresas','privada') NOT NULL DEFAULT 'empresas',
  PRIMARY KEY (`privacidad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacidad`
--

LOCK TABLES `privacidad` WRITE;
/*!40000 ALTER TABLE `privacidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacidad` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (1,23,1,'Plaza de ing de software disponible','2015-09-08','2015-09-10',1),(3,23,3,'asdasdasdasdadasdasdsadsadsadsadsad','2015-09-08','2015-09-24',1),(4,23,4,'asdasdasdasdadasdasdsadsadsadsadsad','2015-09-08','2015-09-24',1),(5,23,5,'sdad','2015-09-08','2015-09-10',1),(7,23,7,'asdasdsadsadsad','2015-09-08','2015-09-10',1),(13,23,13,'asdsaddsdsdsadsadsd','2015-09-09','2015-09-16',1),(14,23,14,'asdsaddsdsdsadsadsd','2015-09-09','2015-09-16',1),(23,23,23,'La empresa Nombre SA, solicita empleado para el area de adminitracion, por favor enviar corriculum vitae a la siguiente direccion<br />\r\ndireccion@gmail.com','2015-10-03','2015-09-16',1),(24,16,24,'Subirse a las rutas asdasldjasdk','2015-09-14','2015-09-16',1),(29,23,29,'Texto en<br />\r\nvarias','2015-10-03','2015-09-18',1),(30,23,30,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum modi quia deserunt harum, autem recusandae, doloribus esse, soluta eius magnam inventore id illo tempore natus eum nobis, culpa qui ducimus.','2015-09-21','2015-09-18',1),(31,23,31,'asdasdsadsadsadad','2015-09-17','2015-09-23',1),(32,23,32,'lfjslfjdslfkdsfjdsfldsjf','2015-09-18','2015-09-03',1),(33,23,33,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quae est odit atque voluptate, quasi, in rem voluptates minima nesciunt iure quas ipsum autem, explicabo sunt. Laudantium quisquam quae voluptate.','2015-09-21','2015-09-03',1),(34,23,34,'Se impartira el curso de redes cisco 11111111111111sssssssssssssssssssssssssrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','2015-09-18','2015-09-03',1),(35,23,36,'Estimados alumnos unen esta regalando becas alimenticias.....','2015-09-21','2015-09-25',1),(36,23,37,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum modi quia deserunt harum, autem recusandae, doloribus esse, soluta eius magnam inventore id illo tempore natus eum nobis, culpa qui ducimus.','2015-09-21','2015-09-24',1),(37,23,38,'Prueba de publciacion de beca','2015-09-22','2015-09-18',0),(38,23,39,'adsadsadsasadsadsadsa','2015-09-22','2015-09-10',0),(39,23,40,'Prueba 1234434564565','2015-09-23','2015-09-25',1),(40,23,41,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic animi ullam vitae officiis, ut temporibus aspernatur nulla illum. Dolores cumque laudantium explicabo nesciunt eligendi iusto facilis quisquam delectus, ipsum ullam!','2015-10-03','2015-09-18',1),(41,23,42,'Izi tutotrial','2015-09-23','2015-09-26',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_carrera`
--

LOCK TABLES `publicacion_carrera` WRITE;
/*!40000 ALTER TABLE `publicacion_carrera` DISABLE KEYS */;
INSERT INTO `publicacion_carrera` VALUES (1,14,4,NULL),(2,15,1,NULL),(3,15,3,NULL),(4,16,1,1),(5,16,2,1),(6,16,3,1),(7,16,4,1),(8,17,1,0),(9,17,2,1),(10,17,3,0),(11,17,4,1),(12,18,1,0),(13,18,2,1),(14,18,3,0),(15,18,4,1),(16,2,1,1),(17,2,2,0),(18,2,3,1),(19,2,4,0),(20,6,1,0),(21,6,2,1),(22,6,3,0),(23,6,4,1),(24,8,1,1),(25,8,2,0),(26,8,3,1),(27,8,4,0),(28,9,1,0),(29,9,2,1),(30,9,3,0),(31,9,4,1),(32,10,1,1),(33,10,2,0),(34,10,3,1),(35,10,4,0),(36,11,1,1),(37,11,2,0),(38,11,3,1),(39,11,4,0),(40,12,1,1),(41,12,2,0),(42,12,3,1),(43,12,4,0),(44,16,1,0),(45,16,2,0),(46,16,3,0),(47,16,4,0),(48,17,1,0),(49,17,2,1),(50,17,3,0),(51,17,4,1),(52,18,1,0),(53,18,2,1),(54,18,3,0),(55,18,4,1),(56,19,1,1),(57,19,2,0),(58,19,3,1),(59,19,4,0),(60,20,1,1),(61,20,2,0),(62,20,3,1),(63,20,4,0),(64,21,1,0),(65,21,2,1),(66,21,3,0),(67,21,4,0),(68,22,1,0),(69,22,2,1),(70,22,3,1),(71,22,4,0),(72,23,1,1),(73,23,2,0),(74,23,3,1),(75,23,4,0),(76,24,1,1),(77,24,2,0),(78,24,3,1),(79,24,4,0),(80,25,1,0),(81,25,2,1),(82,25,3,1),(83,25,4,0),(84,26,1,0),(85,26,2,1),(86,26,3,1),(87,26,4,0),(88,27,1,1),(89,27,2,0),(90,27,3,1),(91,27,4,1),(92,28,1,0),(93,28,2,1),(94,28,3,1),(95,28,4,0),(96,29,1,1),(97,29,2,0),(98,29,3,0),(99,29,4,0),(100,30,1,1),(101,30,2,0),(102,30,3,1),(103,30,4,0),(104,31,1,0),(105,31,2,1),(106,31,3,0),(107,31,4,1),(108,32,1,0),(109,32,2,1),(110,32,3,1),(111,32,4,0),(112,33,1,1),(113,33,2,1),(114,33,3,0),(115,33,4,0),(116,34,1,0),(117,34,2,0),(118,34,3,1),(119,34,4,1),(120,35,1,1),(121,35,2,1),(122,35,3,1),(123,35,4,1),(124,35,1,1),(125,35,2,1),(126,35,3,1),(127,35,4,1),(128,36,1,1),(129,36,2,0),(130,36,3,1),(131,36,4,0),(132,37,1,0),(133,37,2,1),(134,37,3,1),(135,37,4,0),(136,38,1,1),(137,38,2,1),(138,38,3,0),(139,38,4,0),(140,39,1,0),(141,39,2,1),(142,39,3,1),(143,39,4,0),(144,40,1,1),(145,40,2,0),(146,40,3,1),(147,40,4,0),(148,41,1,1),(149,41,2,0),(150,41,3,0),(151,41,4,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicador`
--

LOCK TABLES `publicador` WRITE;
/*!40000 ALTER TABLE `publicador` DISABLE KEYS */;
INSERT INTO `publicador` VALUES (1,11,3,18),(2,16,16,23),(3,21,9,29),(4,22,9,30),(5,23,1,31),(6,24,1,32),(7,26,1,40),(8,27,1,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociedad`
--

LOCK TABLES `sociedad` WRITE;
/*!40000 ALTER TABLE `sociedad` DISABLE KEYS */;
INSERT INTO `sociedad` VALUES (1,'Sociedad Anonima'),(2,'Sociedad Civil'),(3,'Sociedad Colectiva'),(4,'Sociedad en Comandita'),(5,'Uniones de empresas'),(6,'adasdadasdad'),(7,'ñññññññññññ'),(8,'sfsfsfsdsdf'),(9,'pppppppppoooooo'),(10,'2'),(11,'3');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (16,'uni_norte@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-09-28 19:29:10',1,'perfil_16.png'),(17,'mikedosce1992@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-10-01 20:50:33',1,'perfil_17.jpg'),(18,'jm_mpvedar@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-08-05 13:12:13',1,'profile_image_18.png'),(19,'rene_mauricio@gmail.com','iTKvJj9mjPzHlSNM8HaFPOGre8fPZvfRUStlXgRxPlM=','2015-09-06 18:32:56',1,'perfil_19.png'),(20,'idalia@gmail.com','JnyzyASnZLzDi9MsmqxpL61k4XuiDbCvpcxdEVrdtwg=',NULL,1,'male.jpg'),(21,'idalia@gmail.com','ygFzcasYfpUp5I2PzNq5WnMeP0kEFLPH1h+bAOLVqfQ=',NULL,1,'female.jpeg'),(22,'alfredo@gmail.com','xIr9M0GP1cpl4sFjMyO/geQCKneNRDFjJvUfFXgQ/3Q=',NULL,1,'male.jpg'),(23,'jm_poveda@gmail.com','fFJRohBIq2R8JCLh3sMO+Urc09+eHKP/kfQrzo0UHFI=','2015-09-30 17:29:36',1,'perfil_23.jpg'),(24,'aalfs@gmail.com','chjP5pzd7/Vmps9k32XpUvtvuzJgCO664TjkwEuNwS4=','2015-09-04 14:33:26',1,NULL),(25,'engels@gmail.com','24Lh4JDgYg5aB67qJGW3qZBJxF1xuLCQVMb7K0WS5Es=',NULL,1,'male.jpg'),(26,'pedro@gmail.com','h4DO6d76gF8CYptEGRoKOAYIJX5Cp4gOCsfzvgADktM=',NULL,1,'male.jpg'),(27,'pedro@gmail.com','scSxyWh5hlTXTapeb4Xns8hV9ZGQL4glQjQCFrYLcVc=',NULL,1,'male.jpg'),(28,'pedro@gmail.com','hjstlGSg9L6V1+fh9wqzV3k+fJ6jGC+0yeOA6GC0/HQ=',NULL,1,'male.jpg'),(29,'mikedosce1992@gmail.com','xXcekpmg7PqF9lKpD3HXixSaa3VajROPeakI6hlHG4E=',NULL,1,'male.jpeg'),(30,'mikedosce1992@gmail.com','xXcekpmg7PqF9lKpD3HXixSaa3VajROPeakI6hlHG4E=',NULL,1,'male.jpeg'),(31,'adsasdasdasdsa','UA6gnMxRCP9tHB2PwaOvbYEVKDzbb5hXhVhY38PVkew=',NULL,1,'male.jpeg'),(32,'adsasdasdasdsa','UA6gnMxRCP9tHB2PwaOvbYEVKDzbb5hXhVhY38PVkew=',NULL,1,'male.jpeg'),(33,'rrrrrrrrrrr@yahoo,es','NFSJ5binCOjykJLZttLN2QkSICEhqo1C27LMAHMOmes=',NULL,1,'male.jpg'),(34,'prueba@gmail.com','vuGJMQTy6GXwC6L7HvQOurmATad9IwH9dOlYDpxbGQs=',NULL,1,'male.jpg'),(35,NULL,'3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=',NULL,1,NULL),(36,NULL,'3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=',NULL,1,NULL),(37,NULL,'3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=',NULL,1,NULL),(38,NULL,'3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=',NULL,1,NULL),(39,NULL,'3/M1lheRMJsAIpFCnnte2Aut1JdVC8P2Q0OGD6KAOc8=',NULL,1,NULL),(40,'dasddsadasds@gmail.com','J6n6AkTgp4m7Ijoq7cTUFGQtYZ8C2YNi++KN/8QWHtk=',NULL,1,'male.jpeg'),(41,'dasddsadasds@gmail.com','J6n6AkTgp4m7Ijoq7cTUFGQtYZ8C2YNi++KN/8QWHtk=',NULL,1,'male.jpeg'),(42,'prueba_admin@gmail.com','J6n6AkTgp4m7Ijoq7cTUFGQtYZ8C2YNi++KN/8QWHtk=',NULL,1,NULL),(43,'prueba_admin@gmail.com','J6n6AkTgp4m7Ijoq7cTUFGQtYZ8C2YNi++KN/8QWHtk=',NULL,1,NULL),(44,'dasddsasds@gmail.com','tjU9AjWSgICJmonQDw7qSTv9R136rLExOfrbTd8RArw=',NULL,1,'male.jpg'),(45,'lety@gmail.com','/IZw8LE3GUIHQOyM+9jZUvavyCKzCfhkwr6xfBzOsBI=',NULL,1,'male.jpg');
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
-- Final view structure for view `listar_admins`
--

/*!50001 DROP VIEW IF EXISTS `listar_admins`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_admins` AS select `persona`.`nombre` AS `nombre`,`persona`.`apellido` AS `apellido`,`persona`.`sexo` AS `sexo`,`persona`.`fecha_nacimiento` AS `fecha_nacimiento`,`usuario`.`correo` AS `correo`,`usuario`.`ultima_sesion` AS `ultima_sesion`,`usuario`.`activo` AS `activo`,`usuario`.`clave` AS `clave`,`usuario`.`imagen` AS `imagen`,`usuario`.`usuario_id` AS `usuario_id`,`persona`.`persona_id` AS `persona_id` from ((`usuario` join `persona`) join `admin`) where ((`usuario`.`usuario_id` = `admin`.`usuario_id`) and (`persona`.`persona_id` = `admin`.`persona_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
/*!50001 VIEW `listar_cursos` AS select distinct `publicacion`.`publicacion_id` AS `publicacion_id`,`publicacion`.`usuario_id` AS `usuario_id`,`publicacion`.`descripcion` AS `descripcion`,`publicacion`.`fecha_alta` AS `fecha_alta`,`publicacion`.`fecha_publicacion` AS `fecha_publicacion`,`publicacion`.`visible` AS `visible`,`curso`.`curso_id` AS `curso_id`,`curso`.`nombre_curso` AS `nombre_curso`,`curso`.`costo` AS `costo`,`curso`.`duracion` AS `duracion`,`curso`.`libre` AS `libre`,`publicacion`.`imagen_publicacion_id` AS `imagen_publicacion_id`,`imagen_publicacion`.`imagen` AS `imagen`,`imagen_publicacion`.`tipo` AS `tipo`,`publicacion_carrera`.`carrera_id` AS `carrera_id` from (((`publicacion` join `curso`) join `imagen_publicacion`) join `publicacion_carrera`) where ((`publicacion`.`publicacion_id` = `curso`.`publicacion_id`) and (`imagen_publicacion`.`imagen_publicacion_id` = `publicacion`.`imagen_publicacion_id`) and (`publicacion`.`publicacion_id` = `publicacion_carrera`.`publicacion_id`)) order by `curso`.`curso_id` */;
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
/*!50001 VIEW `listar_egresados` AS select `usuario`.`imagen` AS `imagen`,`usuario`.`correo` AS `correo`,`usuario`.`clave` AS `clave`,`usuario`.`ultima_sesion` AS `ultima_sesion`,`usuario`.`activo` AS `activo`,`egresado`.`carnet` AS `carnet`,`egresado`.`cedula` AS `cedula`,`egresado`.`titulado` AS `titulado`,`egresado`.`trabaja` AS `trabaja`,`egresado`.`fecha_egresado` AS `fecha_egresado`,`persona`.`nombre` AS `nombre`,`persona`.`apellido` AS `apellido`,`persona`.`sexo` AS `sexo`,`persona`.`fecha_nacimiento` AS `fecha_nacimiento`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`contacto`.`telefono` AS `telefono`,`contacto`.`celular` AS `celular`,`contacto`.`direccion` AS `direccion`,`departamento`.`departamento` AS `departamento`,`municipio`.`municipio` AS `municipio`,`persona`.`persona_id` AS `persona_id`,`contacto`.`contacto_id` AS `contacto_id`,`usuario`.`usuario_id` AS `usuario_id`,`egresado`.`egresado_id` AS `egresado_id`,`municipio`.`municipio_id` AS `municipio_id`,`carrera`.`carrera_id` AS `carrera_id`,`carrera`.`nombre_carrera` AS `carrera`,`departamento`.`departamento_id` AS `departamento_id` from ((((((`egresado` join `usuario`) join `persona`) join `contacto`) join `municipio`) join `departamento`) join `carrera`) where ((`egresado`.`usuario_id` = `usuario`.`usuario_id`) and (`egresado`.`persona_id` = `persona`.`persona_id`) and (`egresado`.`contacto_id` = `contacto`.`contacto_id`) and (`departamento`.`departamento_id` = `municipio`.`departamento_id`) and (`municipio`.`municipio_id` = `contacto`.`municipio_id`) and (`carrera`.`carrera_id` = `egresado`.`carrera_id`)) */;
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

-- Dump completed on 2015-10-05 14:06:07
