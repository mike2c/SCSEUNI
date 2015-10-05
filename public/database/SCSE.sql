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
INSERT INTO `area` VALUES (1,'Coordinacion'),(2,'Posgrado'),(3,'Recursos Humanos'),(4,'DirecciÃ³n'),(5,'Sub direccion'),(6,'Informatica'),(7,'adssadsadsadsa'),(8,'asdsadsadsads'),(9,'prueba');
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
INSERT INTO `beca` VALUES (1,15,'Beca de cursos en asaber que','https://www.youtube.com/watch?v=TEDWfjDc_fE'),(9,29,'Ejemplo de beca','https://norte.uni.edu.ni/becas'),(10,30,'Prueba de beca internacional','https://www.facebook.com/?q='),(11,31,'Beca en asdadsads 12',''),(12,35,'Beca alimenticias y de transporte','https://norte.uni.edu.ni/becas'),(13,36,'Una publicaciÃ³n larga 123456','https://www.youtube.com/watch?v=vOlF5YRV8Ow'),(14,39,'Prueba de beca con imagen','https://www.youtube.com/watch?v=vOlF5YRV8Ow');
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
INSERT INTO `departamento` VALUES (1,'Nueva Segovia'),(2,'EstelÃ­'),(3,'Matagalpa'),(4,'Madriz'),(5,'Region del Atlantico RAAS');
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
INSERT INTO `ficha` VALUES (9,21,'ads','dasdasda',3,'asdadaad','asdadada','asdasadasda','dadsadadd','asdadasd','asdadadas','dsadad'),(10,22,'adadadasdaasdasdsa','asdasdasd',1,'asdasdadasd','asdasdasdadsa','dsdadsadsddsd','dadadadadasdasdsad','asdadsadadsadsad','asdasdaddasdsadsada','dsadadasdasda'),(11,23,'Administrador','Administrador',1,'Gerente','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.','2 aÃ±os','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos sequi, laboriosam, minima fuga voluptate illo quas et nemo tempore! Alias cumque repudiandae quasi sit nisi repellendus, impedit optio rem inventore.'),(12,24,'Vendedor de elotes','La cotran',1,'a saberasdasd','asdada\r\nda\r\nsda\r\nasd\r\n','sdadada<br />\r\nasd<br />\r\nad<br />\r\nas<br />\r\na<br />\r\nda<br />\r\n','asdada<br />\r\nda<br />\r\ndad<br />\r\nad<br />\r\na<br />\r\n<br />\r\n','asdasdasdadaaaadada<br />\r\nadad<br />\r\ndaad<br />\r\na','2 aÃ±os','asdad<br />\r\nad<br />\r\nad<br />\r\na<br />\r\nsd<br />\r\nd<br />\r\n');
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
INSERT INTO `imagen_publicacion` VALUES (1,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿÛ\\0„\\0\\n\\r(\\Z1#%(:3=<9387@H\\\\N@DWE78PmQW_bghg>Mqypdx\\\\egc/\\Z\\Z/cB8BccccccccccccccccccccccccccccccccccccccccccccccccccÿÀ\\0hà\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0N\\0\\r\\0\\0!1AQ±\\\"6Taqt‘’Ò2¡ÁÑ#BR“Us²$357CSbr‚”áğÂñdƒ£4ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0?\\0ÏÑZ(4Ò¾†\\n¸g£ls0=¡Ïv@=~*\\nº+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢´Wè;¥õrÏFèáa{ƒ^ì:¼UW@DDD@DDD@DDD@DDD@DDD@[^—òjİìíìX¢Úô¿“Vïgob	TD@DDD@DDDAu¼ÓZ‹P‘­I°K\\Zydòâ¼v\\rI\\rÚ8#ÃPèö¥1°ì0õg­z¯Vqwkcš¢fÀÚ‡\\rî#\\\'Ü¼:gN:Ï2tòÆòÏßÀ´Ç?­M÷VÉj½2Û\\r¼ÔÈö´·`’ycæ“X»ö¼vë¶Z)¥-ñ¶¸ğÊ¯êæÎı}JÚWµ“‘cœ2ÉÂë¸\\nË&®¤¬¾ëİ&Kwc~2XA~½İb³[%­˜mlnks§r\\n/KêØµÓ@`ïy˜6ƒvö¶‚†î‡rŠJÊd’:8¶„³;àp¹óP°İmöíkm±ßä/Ã\\\\Ö0°\\0FÇÀ ÕÕ^ÿ\\0«d´^#·E@j_#Z[‰1’N1ÁYÁÈÊÎõgúÁ·úÄPM3X¾šµ”÷›\\\\ÔLÈ]´ßy^íM¨…†\\n–À*ÏÙ~9g<t‡ìózM—¥oG>œ{•{Rtßa,}>ÖŞ×ñqÆ? ¹İ/ÿ\\0³ôäWn÷ÛéGµŒmzpº\\\'Õ-+ï½s¶@è¶øoÇ(½Qş®©ä‡°/\\roú«§ÿ\\0™¿ã(-šrÿ\\0\\röŞê–³¡tnÄŒ.ÎÏ§*&ƒ\\\\2ºşËlTŸ»|…›oˆßŒzRGWØ¡…¿º»ÒÇ²2~ñ\\0zrÛm·‹^¿¢£|e›XşcOâƒSU°¸Ú†İ]‰ñÄ^Z×ºmÎüÁS;§¡i}£ÿ\\0‰Aï¶jZÊ¦ŠŠÛSé(z#!©t™ÆFì/,\\ZÊ®àù\\r¦É5T8Û/\\rŞ¤(©áªÑ4ôõtQIHÖ¹ÿ\\0Êâª±ÙõN™Šg[¥lÔÃÆ!˜ úvJm&£‚K4×\\nÈ$¤îØ‘’\\rûX‡_O«îÑ¾{}‚ié IÒœz0¼ô6k9YIZYK0s\\ZduÎ\\\'ÅüBŒï]W¥(Ş`{d¢Œä‡\\07’pw€‚ÜíMI‰·Z˜å…„–ˆœ<ràqŒ{”d:ºå=7}Ã§ç}/ “yo^0º±ë}0ÖHæQÔ‰ö[ü®ş ¨·Éªô¥#Ëe¢Œã~\\0Ü\\0ëİ÷ˆYhŠâègè¤\\r;-fÓšXJ2ß«©jêæ€˜™ö 0¸–a¾1êŞOÁz(j¦Ó°Í²Ğô‡èˆÎã‚ê+ÃhÒ\\\"ßY<ğM-)lßº1¿;qa»œ¤´DAª<š¸û;»(¶½QäÕÇÙİØ±DD@DDD@DDD@DDD@DDD@DDµé&­ŞÎŞÅŠ-¯Kù5növö •DDD@DDD@DDDAX¾i\\\']o\\r¹G^êiÖ†ì³8#r¾ ÑŒ’àÊË­ÂkƒãÆË^07u«R §ÓQ7PÏw©”NùgŠÏy~kçQéh/Œ€5í¦|D¶Æ	#©XE¦¢†	$éñ¬sPí$n÷v\\\\^êi#kCvYœsœåY‘V-\\Z&­eEÚå=Ã£Ák0ßzš»Ú)nöóEPÒ#ÜZY¸´¥ ˆ)ßa¤–©j¯5ÑÄrØvqÅLİ¬Ü,MµE\\\'{Äİ’ÖTÂ òÑPÇKCMLí™;Ş6°8·¨c*],Ù5So}ôA¢Øên8åNºxXâ×ËHä\\\\êåEM’z¸c`İ´ç„¥\\r©¬#PQÅNj›y\\rÚÎâ?5õ.§²E¤uÊœ†Œá®Ú>àíÎŸóÇEÿ\\0¢	!iŒØ¦YcèD%íÜHÆ2 İ£ë¦Šÿ\\0TÚWdÜ3»«9^¯·:Ïış‰öçOùã¿¢ÿ\\0Ñl:N†íL|¢9ùd‚ä¼èúÙ©ûÖ[ıSéxËx¬åz¾Üéÿ\\0<wô_ú\\\'Û?çş‹ÿ\\0D³iZ\\\'Ù ¶G$ĞÇúF½ñ¶·ï\\\'Ş£æÑµu‘²\\ZëõLôí ˜Ëqœ{Ô´\\Z¦É<BFÜ h<vOÀ®è¯ö‰¤lqÜiœ÷\\0$Ğzè©! £Š–»1DĞÖ…Ş¸##‚åEj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QwTj˜¬l4O]\\\'İ‹ùGYA3]]Ko§3ÖLÈcÜxúF³º\\0|’Gi·KS²7HìãPÂóĞék­úvVê\\Z—¶-¬ˆ9ã«Ú­m´¶‘´¶‘çÈ—ãÑéô”ƒpÖ·¸ADÚFìÿ\\0@÷‚y¯l:†ª¡Æíp¬…Á£eÑ5Òí|»‚¼>ŒÂàæÜ§ˆcmÍp?0+Kˆè.¡î;/{°è´eÜ÷×Õ\\\\ç‘ØÃ›Là}ù+°hË@sv#ºÌv‡ˆcÙÖH\\0|UÇ£¹yÅ/ô]õ\\\'Gróš_è;êA\\\\û!jvæY\\\'k%NïÃ‰ü³ìÜ.-h´Z¡‹ˆ2†Ú¥ûŞ¹ÿ\\0ç+C1Ã¡ˆúö²ºf¢¥§€K[Q<­Œo2HH\\\'Ôx>ËSù¥¯şĞıK‡ixCIm©äpi¦-Ï¿hãà½,u±ã,£¨#ÑÓf‰¯.Š+„Y\\0$\\0ûy¦İöj´ä gğ0JŞ è¥´éºÆæ\\n\\nBFâÓ¨ƒ¼.bªh,ï{ÈÃº:¦Ç—#ŸY\\\\T=’3jçBÿ\\0õÓ 7qÈñ‡şïA×.‰°Ë#h¶KpÙĞ=@å­ĞyéË)›%4¼]ñ©Xæ®£h8ı¡KÊHÏïZ7ñË†ÿ\\0B’ŠXæ`|nˆ(÷Æ¬šéµSm{ˆlœqéòWêjˆjéÙ=<’\\\'ŒµÍ;Šê¸ĞSÜ¨¤¥ªŒ>7ŒoäzÕNÖÏ¥o±Ü^ÓM+¶£“;<¨õ Ğ‘p¹Aª<š¸û;»(¶½QäÕÇÙİØ±DD@DDD@DDD@DDD@DDD@DDµé&­ŞÎŞÅŠ-¯Kù5növö •DDD@DDD@DDD@DDDAÃ\\ZO¡Pt%.W:û½f%’á»Cî“¿?’³j‹ÄV‹<òCg{Kbh;Ë1êâ£»P¾–Âg“h:©åø=\\\\Aj^\\nÚŠ“PÊJ Á#š^é_¼F8pÎó•ï^gG4ÓVHö³i€9ÎÀ\\07<ıè:aµÂ×ôµÕS<Ûñêí’İG!iu4yoÖà‚‰:ÖÀ;ûÿ\\0æïÑvA«ìUl6áN3™`ø”õ4Ô”õíØ.‘Å­–\\\'Ç¿š’…†(˜Â÷<´´î\\\'ÒW†ã4Á$od¬sã,sNA;CR(ÃušHé›šwˆ˜ìğÏî^åÓPØŒaódœh8£¤ŠŠœCpÑ¼“¼¸ó$ó+½RîZåÒU÷¥†ÖIşópQWJ½e®5sw¤,kFËp	ÉÇ½è4w±’7fFµÍêpÈQ³ÚŒotöÙŸK.	èÛƒÏ¥§òÂË¢Õ÷Øäkÿ\\0hHı“—\\0Aõ©zè—¦ûSÄHÎËvHğ‚ÏMDµ.lQ6‚êÂ	¥t¹vã\\\'†îg†ñ•î¤¨Ší³Û¤4Õq’É\\Zæîœ9ú×ÅÂÛª)Ä´ÏseùÃ$g¯ÔT¨£§mI©l-lÄ`¼ëëâƒêÒº:vJGŒĞrõª×t`¬²\\Z¸ÚzzC¶Fı¯¹Z—ÄŒl±º7€æ¸`ƒÌ ‰Òw1u°ÓÌ_µ+ÑË×´ÊÎm•Ñz–z:Àño©>#ùÇò+B‚xªalĞHÙ#pË^ÃPGj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QCê{Ó,v—Ôq™ş$Mİ÷ºıÊaQuÛQ¨l”óa{°æçwŞ<¶>k˜/º¡îiÃÙß²;\\0W*gÜ&ˆ=¬§¥aÿ\\07ØKƒygcÔ¼[\\\"ZqlL½íe)x$FÂàÖ¸7ñø(›¶ ‚ËptPËpº\\Z÷JIâáéáÀ ²JË»Úö2jHÌ¡>¿?šƒÕö½ŞßLÈ*#â¥Œx‚CÈÑxåÕšİ,Ú|±ââ×îSšTĞßEb¨\\rÚtNü4º}3¨ …±şÇ¢“gø¤s¿*\\n¦×s–GLm²FÄC@Ç/‚Øt¢e|t.©¾dÍ;È^Ä­÷Yb¯dÛ1´øğ8<wu«İ6¾¤«¸CMOEPæHCKÎ<RN8u.{¢QSêÌï†½ I©]-o¤¤³RÍONÈäšÑ½ÇĞLªtªª¶OGO¶ø¨¤i.,?xçx#Ğ;UıtVQÓ×Sº\\n¨›$n!Á6’ı¦´Õ½­·f¦w4m·Æw?Ë%v©Ôô³GQÑL6|vÖ	VKf´[¤|§éœ_´Ó/±è\\nx2—hZöÕ6™ÕÖñ;†DfS´G«ÕO¤µ–qQI-K‹H#s†=NğV=Y¦$¸HÛ•±Æ;ŒX#xá¿‘QÔZâ®İ/zê\\Z)öÿ\\0´cpO»Ÿ.<Z^Õzn¤eq¡4qg÷À–¸¿ÿ\\0p­r6å=D¿³*Œlkƒ\\\\j2vO†–õµ7t[[c&*d““KCsïÊ‹}ËW_ßÒ[àu%>p1†ç–òî>äJ›µ 0Op¥Š¥­Ş$xúñ•-\\\\uµèïÔbB|FÅ!ñ[Ô$º^×e¡5º–¢Z©exnc.Ü}|O¯Ğ¤ª´\\rª\\Z#,pÚkö‹‡` âë¦«kèó\\n–ÆK†Ì¤8ŸFÖFş­Şµh¹Vi\\Z–² º{\\\\Î#ÒÇ<÷Ì/~¹Viûñ°\\\\äE#¿u&s‚x{§‚°ŞmQTÍĞ¸†¼˜åinv^Hxôø¸A÷¨Š«IWOO#d‰ôÎ-sNâ0±•o§­©²Ñ]´íxv/0¢sê* €ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¶½/äÕ»ÙÛØ±Eµé&­ŞÎŞÄ¨ˆ€ˆ¸AÊ.do”D@DDD@DDGÖ£:¦Ä	Æ_Çş ¯\\n¥İ\\nÖ*­¾=ÓQœç­¤ÿ\\0ôƒßÒ5–ZPüEíW·†HõµªU´4}ökO|8ÒìŒ‘ëUÍ3_5U«¦lL¬Š_óñÇ€øßŒƒ¸ƒŒûÔµ\\r]\\r5ıï$¡´ì/tgn!Œã‚mú¢\\rgIhk#4óG´âFüàı?Šˆ­ĞKvš®’â)›#‹Û†¦È`…P¡»UE|‚ñRùe›‘Ãkqâ¸Ë`¥­§«¡edO³ohÒ‚Oèº[=S+%õ5M#\\r¬R“½j}–\\\'\\Z™šfÆ[N\\\\ïw/Zûe}MXs¨)‹vÌ³’ÀïHÉI½èÛ½mÖ®©ó2QÑô‚NnÇİ\\0pÿ\\0éÓ\\\"¿ë^…Õ8¦µ™	ËwdGÕ• RÓ²’–*x³ÑÄÀÆç¨*®„¿GUFË\\\\ûTÓ–°4¦~µoÈÎ23Ôƒ•~»şÅ¡=ë-F\\\\³/I^\\rMv¼P=‘Zí®¨fzPƒOV‚ª½k*ãšª†.Î\\rÃXsËqÜ‚B‹ºÕm‚²–j0îyÈ÷õJ±ÑÜaªtÍÚ®‰å»;`œr\\\'«*‘İºš«½­ñD]^×µÎÃ9Ÿ<yÊğÚJy!‰Õñ=Í`{#âƒÑÒÇşñŸó54é¡\\\\pÛhv>*\\\"ãW§h2ÊÃDÂwìwú\\0Ê…«îƒNÒ ´ÑKPá€İ­Ã8\\rè-Ÿ³è[ãw¥8ÆüômÜ¡o\\ZÒ×lqŠ\\\'wÜàà²#¸zÊ¨:«Pj;ĞµUÔ>¤ËÉhkqÕÄîW;.µÚv_Ñ÷Å@ÿ\\0i.üz‡\\0‚z~¢ÔTVÍNa·Á™[¼]ÃıçqV-/¬-óÛà¥­¨èjc`k)Ã]yà¾uõú*[cíôòQ1Øán2~<>)gÑvŠ‹%ª™ÒÊæmºXŞFÖwñ@Aãî‹ÑĞİiÇ;og¥fĞâ7û•¥ÏtŒ³½ç.sÁ\\\'¬ôNT­Oo‰÷‹^·BöÇò	8ñIÏ¨qWiCEÊŠ™®\\\":hİ+·pÀÙnO¨»à‚İ:8Ûx¥{@|>1ëÁÜ©jÕ¨fû¨ëê)š%‚š™Ùx;¼Vœ;âBª \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -¯Kù5növö,Qmz_É«w³·±ª\\\" /\\rïcö-gI+¡gBì½¼[¹{”V§òjãıÃ»Dw9i´ó„ÏsÄr–3k“p7+b®h$éæøŠ± \\\"\\\"\\\" \\\"\\\"\\\" /—±²1Ìxk†<ÂúDı²éÍm5§y¦ªË£ßÀo-=¡Yõcİ›¯–3³\\\'E³´üÁWµ”Lf°±JÖáï‘¡Ç¯í*Xù-_ıßæfªw]*i-áß¸i2HCq³ÖNş\\0>•ï³\\\\®ÖºšÁeÛ«¡‚B\\\\ÒÜ‚Üî8â7K§Fİi-gOXøË†ı’qÉY{šTÄhÃŸ¼H:±¼ ‘¶kÛ]LX®.£™¿x8	ôaNÓŞ-µ[\\nêw™ZÑ É÷qTYéiïıĞŸN)˜ÚxC›(go\\0äîç“ø)ªç¶‰\\ZŞ‚JˆòµŸŠA¥\\\"¸V:áj¬m5pv_‡`Gú¯ºÍq¢½ÓÜïwŠv¶,€L»ßÇÅå×•wÓb‹SRZig–Q8i.$ddœşZ#îuo5ÒÖTÊÀw´2‚z«QZ)`t²\\\\ -˜ğâ}ÁEÔëÛ$;™$³œ†nÏVõZ¸iÛ}&¶·ÛbcÍ4Í{\\\\ì’|n~à¯é«4]º´0rÜö §Ëª¦¸VºªÑ`TôxéœÂ÷7¡x­l¾jù¦‚{©‰‘gm‡qßÿ\\0ÆFîkLc ¥‹eÚ3†€ĞiG~§°êû…F#bFiÎáÏr%sûU3Ãê-Q8yÃ~Š›èmV\\n\\\'ÎØa¥†0ràİş®²¨—^èuÕ²İi˜F6ã;ô\\n\\\"Š†ı©°×ÔOÖKæyèÚ}û¹òA!K©©¬¥¼Õ¶ ×665¹$c\\0í¬ÔwÛøsmĞš*-ûSÀo%ü·u/.—ÓÑ[=oG;(ÚKšFçñ*[WÜä«¨MY£ñÜ@“£ \\0?—wÖ‚½£ìfõy/¨ZXÔ®\\\'sÏ!Örµ˜¢d16(˜Æ5 nxlV˜lÖÈ©\\\"Ş@ËİÍÎ<TŠ›¤sš–Ì&¥¤†0|= ¿yŞ<:½ê§}¿R÷¼Ö»)–²¶¬ìK9.åÙÔ¥µ¥ùÔ†+eBjùˆ,81òæê]ÚOK²Ï}Õâ[„›Üã¿c<‡§ÒƒÌÛ#lšº\\\'±¢¥ôîtÎxáŸBË–×ª<š¸û;»(€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¶½/äÕ»ÙÛØ±Eµé&­ŞÎŞÄ¨ª×½on d°Ò?¾jš0ĞÑâ‡pŞU>E«*ËÍ<•â8ÇàƒYQ:©ífš¸¸4\\\\O3ÁUà¨×tÜiÛRËÃ<_Fâf Ô—z«3í÷Ko@é3.Éh8vwú ·h$éæøŠ±ª’ÔVg¤¢ï˜á8Ã\\\\×œœo9à­Ms\\\\ĞZA˜Aôˆˆˆ€ˆˆ\\n«¯¯V«\\\\L¤vÃêX^8´ÉZ”eşÓâÙ-<ÍA¤Æşlw\\\"‚;Fßàº[b§|î}l,Äû‹½#­YcÜîÔÚ‹³«M@ké	ÎF3®+NAHÖUiÿ\\0ïGøÚ§µs&—¯k\\Z\\\\z>\\0g˜P:ÓÊ­?ıèÿ\\0UÊ¦ÔSKó³#:ˆÂr×9§-$zŠ–uºfšË[£µ4Ï2eÛ‹ÀÀ\\\'Ñ½v>ÍÚa—ZG<Éú:ˆÉÎ:èä‚5—\\nØæ|ÑÕÎÙ^0ç‰.õ•!«¾Á—v[Ãh‰^˜4…Ue¡—**˜eˆ°¹í9iaG<¯=“LW_ ’Z7Áˆİ²à÷GàƒÄë½{®bâê‡\\Z°r%ÀÏpáÁ{şØßÿ\\0´Ÿò7ô]½=_ct}ø#Ù“î¹È?š±EÜâi¢dŒ¹ÂZö‡#\\\'óAXšùrã|µNuTC“dd\\rşŒs+ÙöÆÿ\\0ı¢ÿ\\0‘¿¢°Üt%²ÇWW%L³O;C\\rRº\\\"Ín“OÓUÉG“È÷·k>1ëAB‚–õ~¨&6ÔÕ<\\rîs·ë;‚ï¸éŠ«Tô1W>0jäØÄg;##õ[Z\\Z0Ğ\\0ô*¾½µ\\ZÛG~Ä÷6z,ÈÜnİŸ~ä´º\\ZÉM+$è)o)H\\\'Ô¬,‘·ekÇ\\0aV¬š¦—ìÄ5·\\Z–‰X8¹Îdî>õQ|½êÊ‡QÚ\\\"u5 w(88Ï ƒÇ¨§ï}Tétõl«©Ëelc8wgŸä­šSL2Ï}U–á(ËŞwìgıW~œÒôv8šü	ªğv¦#¯ê\\ny|M+ …òÈàÖ08A}\\Z	\\\'\\0q%gú‡PË¨*â²Y^í‰]³3ñÇøy çJ0ßµmeêXÉ‚#û­®G–=ÛıZ±Z!²Ûc£„íc{ŞF÷;™R(\\\"µG“WgwbÅ×ª<š¸û;»(€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¯Z…ÇM[¬–­¹+e…yŒıÍÜ=}Š¯ıËé¡w~Ô:6™˜ZÖ¸ñ\\0ç(\\\'´î”¡¶QDêŠxæ¬ ½à;dõR±\\0\\0åtVUÁCJúš™q0d¸¬¾ùtºê©¤4PLhc;\\\"6pëË¾\\nsRÓİõñ–¦SI/Ò–î?ñgßÁ\\\\è¨à ¤š6²67\\0\\0‚¦¬ÖMGi:3M]\\0Ùyc÷»ş,è~”Ôg,·7HÁ“Ñ—cğ;‰_\\Z†–m+¨b½Q5İë;¿|ÆNòßQâ¯t5Q×QCU!“0=¹ã‚‚›n×3RÏŞš‚‘ğH7\\ZÒ>#ôW\\Z:ÚjøDÔ“²hÏ6®»®ŠçE[NÉ[È‘¼zŠ¤İ4Õ~š{îv\\Z—t1´ºF<Œù„\\Z(5zmöÔÊ ĞÉØ‘£“‚–@DDÂåg“¹ÚO\\\\œâ(k²\\\\IÜ2wüàV‚×5íak†APZÎÔn¶[AšŞ3vIÇºô5ÔÜì,l™éiDã×»ğA¬¥cõ…Š&»/d.@¼c°«Ò¢´I_İEÛE RG»w³Û—+¤óˆ] •û·ù «k\\r\\\"ë´¦¾…ÁµMfÂ7Iõ_£¾Oi¶ÉCr°SÏ‘,‚2ÂıŞ‘Œ­µõ1Óô”±¶G´‚XN6‡0Zâš¢ãK¶À²×5Ãx<Áh3¨é-\\r¨§®™í‚GƒvK¶zÎRÁx£±jª˜¢ª[g\\\'÷›ğ9ƒù+åFŸ´TÅÑËn§ÙÎ|VlŸˆQUzkL·nQ>74m‘ê;Â&¾¸[ªtédU4óLdi`cƒˆëáÃr’Ó7ªéê.’ª^Èƒ+A;¿%öKMù¿+ş•Ôt~Ÿ/qV€xû¸Ãëø šÔ×;|ºz¶&WÓÉk@”Ÿr‡ÒZšÛnÓQÃ[RÆIv#nKˆÎxu£t~ŸtÍÙ’³ï‚\\ZèİŒupSÍÒ688[£È9sæ‚.«ºª8óKóÈwlìì¨×_u6¡&–‚´‘½€¹îç“Èú•ÂJK=¿É>ÉÈyc[ƒè\\\\„Óò\\Z\\\'½¸8’_İ·ÇğAU´w;dnl—J\\0Eáy*ÏM\\0e²#˜vz(x3÷ŸëÏRæ‹.5¯•øÈ¤¤Ú½8Şx$ÚÁ4Td¦˜}Ó¸¸zùŸZ*Ë[%Ò±ĞíãfšÇ$ƒÀã;—×WYQĞ™êeı›onâ÷o”ïëÆwõ•	rÔö»<²Cm‰ÕÕîñLÅÛ[÷?PÜ¼T\\ZZó¨*¯µ²Ç¼aòğo\\0ƒª®ó_¨åÉe6 µò½ûEíëqêíÊºXlv:VÇ\\Zé±ãÌGŒãúz¦Ûj¢µCÑQS²!Ì.õ•í@DDZ£É«³»±b‹kÕM\\\\}İ‹@DDD@DDD@DDD@DDD@DDD@VÍ);¬:‚Lç6\\nø¼ãk‡ã¹TÖ£‚ı¤-Ä²¢*vôRg#šrågÛz¿N=Àµ×\\Z`Fó—ú7s¡Ğ%‚RË•x22Ğ	É÷^QT©; Ú&qlìœä¶Üçà§i¯vº¦Ã_Næƒó€v öËsFèåc^Ç¸dôÖ†´5 \\07\\09/–HÉÇµÍ;Á ¯¬°ƒ•òö‡±ÌwÎGXP:SRZmÒ:)ã’©À¶&4‡aİgĞ@hg\\Z-IsµÃ0–•»N@üğ}JüªZ\\nÕQKG=Æ¬‘5iÚØ-Á\\\'¿*Ú€ˆˆˆƒ‚20UJDmzŞçmg¡-.Àå¼¹Êú¨\\Zƒnè7Ö¶)ñ´v¸ÿ\\0	\\\'â>=Ïõ¡qşäö1[«iU%1IÃØğ3‚:ÇV	T½cI=šùM¨¨Û–m0Ï>ˆÜ®vÚø.T1US¼9’7;pzŠ<w))Ë\\\"ºF!yÜ&÷O>¾^¢»\\\'¶SÍ7|D_O9ã,\\\'Ş¾GŞ½rFÉXY#Zö¸`µÃ ¯mŒŒMsÖNö´z€8ŠåÈNĞÜfFõî_Nı¦ZCE v7\\\\qø.?eÓÿ\\0=OıÌŸR~Ë§şzŸû™>¤~Ö-xcèšâÉ!Ç¯ÒºŞÛ¬p—Ép£n\\Z2L$4ÅÃ‚ïmŞ	.¦d®qÉt¾;½Ù+î;eo¸p\\\"1‚5õÕMa-¹ÒÊ@\\\'Ó:N{¾é<—:›¼îsf‚àK†ó&³ÅáãdûóÍY\\\\è a{‹#`ŞIÀ\\n6]Kf‹¥Ú¸ÀL_xgáÖƒ¦’ÛTÖt¢’\\n—´‘Î™ã—èô¯ªúX!¤º]ê[~÷ïaÛ½>ìªõ~¼šªcKa£tò8á²9¤õÅ|QèÛ•ŞaW¨«_¿DÓ“êêø ø«Õ 8Pij\\0ç;sŸÑıíØÈ´ªıê’ô+há½Ï!5låÙ\\rÉÁôej–ëU\\r®.Š™‘d\\rçÖTt;{j¬]ôĞã-+ƒ›²3¸î?¯¹•—LÛl¹u4[rŸö’opİË©L¨=)y§ºZiØ*•QÆÍ;œáN \\\"\\\"\\\" ŠÕM\\\\}İ‹[^¨òjãìîìX¢\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"Úô¿“VïîØ±Eµé&­ŞÎŞÄ«åÌc\\\\Ğ}a}\\\"êë²àßTP¼»vÎ»Ò7¬÷Uéê[eú*x¤m-VŞàsƒVBÔÕ\\\'ºúBÇıùíj{1 İê@\\0ù\\\\ø>oöÅWÃÿ\\0*êˆ)^›ı±Uğÿ\\0ÊõÛ´ªXæÒUHÃŸŞcdúÂµ\\\"\\ZĞÖ†´\\0\\0À’åUµFªš×XË}¾”ÔV=»[Á PãÀ¯­#©ßz3SV±‘VÄIØh#-÷õ­©î°jVÜ( Ÿce‰»X8 ğá¸®;ŸQ¶ásšéSW#êávö.c$ü~4eNî•h¦©ihè&<«Š†ÕÔ¬«ÓU¬ycvY¶×?€#şzi„7{$=òÆKD-/há¼oTú;yÓUF®Á3ç§âøóŒççëâ¤ôâš{-=çˆUG´Z9«j\\nm\\\'t\\nQ!†éG5­ã»h­Ü0ÍYb{\\ZïÚP·hgÈ!{ëm”5ãü®–)íQQc,`ßßªÿ\\0µ6?í8>+¦§XØ©Úk›&N1.!qö2Áæ\\rùİú¯¸´…Š[#mì%¼6‰pø‚£º$/”Em·MRòâ\\0\\\'C¬’ºYrÖW‰v¨é…@œ°qÚßø+µ5-#6)©â…¹ÎĞ7®ô&h»ÅÇdŞ.î-ÁË\\Zâò?%ÛvĞvÚkMLÔ½ğúˆã.`/${•áDê‰L:n½í~ÃºÎ7 ŠîuŞïÓ­tpµ²²G2GàeÛò7úŠµªÏsè—…íÎf{Şìõç’³ .`Œ…Ê  ê›¬‹õšNƒ£péc\\\' äãàs¼+•¢±×U-[Úé£-²¼\\ZÆ˜Uizæì³¤Ü?”ç‚óè:¾úÓáÒ>c#ùpw†XÑEj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QR{ ¤lßÖ«²¢êæ¾³YYèL›1îxİÀíÿ\\0„ ½\\\"\\\"\\\" \\\"\\\"\\\" áPlOè\\n\\\'È[Q%¹n6‰;C´…Tèt.‹½/í\\\"XÜİÇAø »ª&®5W}SI`ô4Ò4<àq;Îş¾•ÆÙZËº®=Í™ØêUıQ§«*î÷[D»Ña¾3°6wğİéA\\\\İ.ˆÔWô=õBâZ×‘½™ì=«I§™•ñÍv$hssÔVa©âÔb\\røô”mx%ÑîøczĞ,w*\\nût†A°\\Z#\\\'Æn7`„hˆ€ˆˆ‹¢²²†ÓÕJØãhÉ.(;‰\\r¸€òJÏu¦­£­¤–ÙG¨k1$yu¯ªúû†³¸\\n+_I±‡Ç˜‚6½¢Ô6ÊHg¥Óöš3%kHt³ã{;9õ ¿i¨D\\Zz‚>Œô-%¸Æò7©5ñK!cOĞ\\nû@DDºîO\\\\Ç¸@âå¹E÷>ŒÒ°9­Ï{ËˆNÑ\\nfñOßvŠºrí’7=[•{¹´Ï“O¾7»-ŠbÖpÚJr\\\" \\\"\\\"­QäÕÇÙİØ±Eµê&®>ÎîÅŠ \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -¯Kù5növö,Qmz_É«w³·±ª\\\" áQë\\ZúÎéôñ½øm<aÍİÈ4œ|J¼*=’3Sİ\\Zç4¯qu8pfş[†^(ˆˆ€ˆˆˆ€¼wj\\\\í•rnl¬#=G‘ø¯b £h„”ÓÕXk<Y`qt`ú÷Í^U^[_CUO¡nÄ±¼t¥£‰äOb·Zn0İmÑUÀàZñ¼á<ÂT±G<nV5ìpÁk†AT»¦ˆš£¿´ıK¡Ÿh‚àĞ3É¤p\\nîˆ(#Tê$mòƒ¤„’:F·ÜFå!OİÑ$›2ÇSq÷œÀGàJ¶9xÃÚ:ˆÊòUZmÕ…¦¦†RŞqƒ„ÿ\\0nìu\\\'ô]ú.¹õı’8Ë£|Ó;ùñÂ•û9eşË¤ş_LÓöxŞ×²ÙH×4äÜPTäÖ7««Œv;cƒwâG7hş€ú7®bÒ7›Ìì—P×ˆ8‰ÉêäíŒkĞÑÔÒ5--ŞæRÂ#Š&—´qÀãëÜª\\Z1“]õmúV½±¶<»<y{‚µj*‡RØ+§`Í…Ø‡R‰îw¡Ó,{ˆ\\\"Yñ\\\\¿$…FÖwZŠÛ5Ö÷‰¶Ã¥s3¸òº¸•1«ul”‚(Zd¬¨DÑËÒ¼š+N¾‚\\\'\\\\n&¾l\\\\rXÓù”˜Álmk\\\\\\0õ•öˆƒª§ë.xlãÔ©}Ì]/zW´g½„ƒ£$c\\\'ÿ\\0\\r•tª¥˜pËR¦w1Ÿü’¾“\\0ôR‡mr1ÿ\\0ÅáV¨òjãìîìX¢ÚõG“WgwbÅ×¥üš·{;{(¶½/äÕ»ÙÛØ‚UFºJİWy®ØÙŒ’Ò3œ¯ü+EL±™*&dL$½ØÜ²Û6¢šËp¹2ŠÖ÷ÃÉanx‚pqÌoA¬\\\"¢GU®kšù\\\"‚(ã¹®\\ri¬ï\\\\ıÕÕÛ3ŞƒvÛ‡0¼îôdwÈÈÆd{X:Üp¼5ÛU4¦9îñ¼oÁ*Àî|ù¶eâyX\\\\ÜvdşKİKÜşË×J\\\'¨Ï‘øÇÃ%~ÒÙ?µ)¨§XX©œ\\Zêö?#9ŒÁtı‡°y›¿ªïÕvG£,1íâ„¦ìøÏ\\\'¬Å…êÛ\\\\	¦­‚L\\0H^åP­îyl˜—RM53·`´Ññßø¨Ù­Ú§M±“ÓV:¶7b»wYòA¡\\\"„ÓzšûHÒ#©né\\\"\\\'x=c¬)´U4ñÕSIO3v£‘¥®‚¨Ú2i,ÚŠ¶Á;Ái%Ñäñ#~ïXßîWåI×öÆ@Èï”óº\\n¸œÖîş.¯QAvEŸSë\\rE=8t†È#ŒXíş•)e×T•ÓÇI[©*\\\\vIwÜÚêô ¶¢ár€ˆˆˆ‚­İ·½´ñ…®p}KÃ:¸œú7/ªZÊ}-£©MQ-“¢ËcwŞ/;ñYPİÒf:ë[œÖÈ#.s£Ï–î>µóf´Vê«‹.×vìĞ´şêàÈÕÚƒ·JY¦½ÖıäºB]˜cpÀ8à}C’¾¯–µ¬hk\\0k@À’ú@DD[”ì¦¶ÔÍ)Ã‰8ô*Çs6bÅ;‹qµ9ß#Hk{ƒh4äáÌ/5¡n9õÙ¢é&¢Ó4±T3bOÛ\\\'¨’B	ÔD@DDZ£É«³»±b‹kÕM\\\\}İ‹@DDD@DDD@DDD@DDD@DDD@[^—òjİìíìX¢Úô¿“Vïgob	UOÔº¢¡•Í´XÛÒÖ¹Û/xØôO§’¸,ÎáQ6œ×ï¨\\\'÷U8¸`8ïßèëô ¥Ğµ•äO}¹Hçœ“Ñôß\\0¾{œQÃuÑàeğ¸FÇ¬ŸĞ+ã×°9¤‘G5×OIOLd0BÈÌ®Úykq´zÊäDAÂå¬ÔÀ*E9•1nĞ>1x^kŞ†ÕI[PÈú›œ¸ú‚\\n–´ÓñĞ‰/ÖùİMQš\\\\Ğp/¨©=©Ûy§m$âNü…™{Èñ_éÏZªŞ«+õDu5ÏÚ¥µR7,xòõ’~\\nËÜâÑiã+zYIhÙÆ\\0ôóAmU^èŞLŸï™ù«R†ÕV™/69ia L{8H;è#|Úrš8¤1=ôk^?„–ñYm¾ß-n¢ÍU7İ¨xt€däg;ı8V[Fµe¢ömÚsQJz,Çƒ:òTLT7mMq©½[¢™Ñ¸ğvI>ƒÌõ”\\Z \\0u.U-kuµ¹±_-å—´l<z”Ì:êÅ$M{ê:3‘ğAeE^ûo`óÓı7~Šá®j+\\\'4šzóHN®n~õAt¨©‚–#-D¬Š6ñsÎ\\0TûÆµ’ZğÓĞš™É#¤\\rÚôkÍ’¼Şê:}CZæ3;¢c²}Ü‡%uı¢¬Ï’ßNÁQ+¶cÛ%ÄœqÏPAI°[ªµ¢òâò×t“ºAÀğ>¾`cZÆ1¡­hÀ€U=g©¡¦¨¬¬­’«aç³ÇWn@DDDAKî›+?dÒÁ¿¤|ÛMh@=¡[¨ÁpÇ£ob¦jæ\\Z½gf£{Ü\\\"8v#´wş^rˆˆˆ‚+Ty5qöwv,Qmz£É«³»±bˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆkÒşM[½½‹[^—òjİìíìA*¨\\Z¾;†¶¶ÒM÷&ˆ4ü\\\\¯ê“ÿ\\0X¶ùkxš—G\\r™\\Z+-Ìàx´ÑÅ\\\\,ú†İxˆ:šv‰1ãFíÎjû¿Ü!µÙçª¨‡¦Œ\\0ÓógvnMl¼RÃp¶É%¦cdk@Ë[ü?B‚ìŠ‹.Š¼FÍº}A+ä\\\\ÑñÉì_fÇ¬ˆ ŞãÁÿ\\0ˆı(.Ëã§‡ıë>`©1è{«¢. ™®#ÆhÚ#ã´»\\\"îo@#h–¶¡ÒcÆ-Àú°‚zé©­v¹cŠ¢¥¥ïp,ñ¶GYêªá«ì´0‡šÆNOBv‰ı.é¥è­ºšÙ@×Ë,5$míœ8ä®ú*ÅO3em!qo\\0÷—ABÊªW=ÊİLéf“-…Ë‹20şïVKNåPû¤{İ4‡\\\"î^œvÅ¹¿³û¦TÃĞ†¶¢3°€\\0À9Çı*ö‚TĞ¤*éhâkY`µÜ\\0ø¸Ğõ=ó¥©<]1ñãƒÅHß¿ĞUşÎÿ\\0ğ•ÜóÉh¿¼j:\\\" éu5;Ü\\\\ø#sX	+±Œlm\\rcCZ8\\00Ò ø’6Jİ™×·©Ã!F}™²“l¦ÏüŠYDı™²eÓ|‹ÛEo£ ae4P4œÆázU~ı«­ÖWº=Hÿ\\0dÎ^³ÉÅmm=;§«™‘FßâqÂ RÅW®/¢®pÖÛi_€Î±Õé\\\'×}\\r’ã«+p½ºX(òP\\rÙ°:±Í]­¶úk])i±3œş”\\0\\0\\rÀ.QQkÚúŞéÔ±9à6ÍİÈp¯*né+{¦ÕÍ††Ò°´úF0;UåV¨òjãìîìX¢ÚõG“WgwbÅ×¥üš·{;{(­\\ZòéAC$0Qº8XÒæ;$¿°¨ºĞ>“UYkcxÚsƒ\\0Ç8}J\\\'Â=ãÍ¨~GıJ*óª+¯3ÒÍQ;Jâætm#~Aß’zhúŞõ\\ZZ±¬ !ÏP9+ëFT:§KÑ9À\\r–t{ºšqù*v»ºWĞMG4‚9˜XâÖ8¯uZ5¥ÆÑoŠ\\nWGpdc‰ŞsÉÁº‹/ğxój‘ÿ\\0RxG¼yµÈÿ\\0© ‹/ğxój‘ÿ\\0RxG¼yµÈÿ\\0©Ö¨òæÅîÿ\\0»,bç©ëîw\\Zjé[SS}Î‰¤9ß’T¿„{Ç›Püú\\\\e°ÌıcäLÁ\\\"Ù,Çœù©õ—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒ@¿ «ıÿ\\0á*#¹ç’ÑxşÕM¸ë«Æ†ZI ¤lr·eÆ6¼Òø´ëJûEi))hÄM$øÍy$?Äƒ\\\\E—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒPE—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒP\\\\\\Z	<Ì<#Ş<Ú‡äÔ¼wMov¹Ñº•âıÎ0µÀ‘Õ’J\\rn¹©­lÔ–{|ÆrâÆI÷±éÇZÓ\\ZF*(ûòèÆÔWÈvßŒúŸJ¤Y5eeŠ•ÔôtÔ„9ÛN|qs§R^ïmCò?êA§Ãr²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj®iP¾CÁ.ø,ÏÂ=ãÍ¨~GıKÏ_¯.•ô3RKc™…,c\\0õxÈ\\\'»Äjª®wWµÙ–M†¸»<w‘Ø¯K²êúë%zRSRm=.q=xpRïmCò?êA¨\\\"Ëü#Ş<Ú‡äÔïmCò?êA¨\\\"Ëü#Ş<Ú‡äÔïmCò?êA{ÕM\\\\}İ‹VŠıyt¯¡’h(ÛÌ,qkWŒªèˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆƒÿÙ','image/jpeg'),(2,'ÿØÿà\\0JFIF\\0\\0`\\0`\\0\\0ÿá²Exif\\0\\0MM\\0*\\0\\0\\0\\0‡i\\0\\0\\0\\0\\0\\02ê\\0\\0\\0\\0\\0\\0&\\0\\0\\0\\0ê\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0€\\0\\0\\0\\0\\0\\0”’‘\\0\\0\\0\\000\\0\\0’’\\0\\0\\0\\000\\0\\0ê\\0\\0\\0\\0\\0t\\0\\0\\0\\0ê\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\02014:05:17 15:09:08\\02014:05:17 15:09:08\\0\\0\\0ÿş\\0*\\0ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿá\\n}http://ns.adobe.com/xap/1.0/\\0<?xpacket begin=\\\'ï»¿\\\' id=\\\'W5M0MpCehiHzreSzNTczkc9d\\\'?>\\r\\n<x:xmpmeta xmlns:x=\\\"adobe:ns:meta/\\\"><rdf:RDF xmlns:rdf=\\\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\\\"><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:xmp=\\\"http://ns.adobe.com/xap/1.0/\\\"><xmp:CreateDate>2014-05-17T15:09:08</xmp:CreateDate></rdf:Description><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:MicrosoftPhoto=\\\"http://ns.microsoft.com/photo/1.0/\\\"><MicrosoftPhoto:DateAcquired>2014-05-20T09:09:40</MicrosoftPhoto:DateAcquired></rdf:Description></rdf:RDF></x:xmpmeta>\\r\\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                            <?xpacket end=\\\'w\\\'?>ÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0Ğ¿\\0\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0öÂ3– b b b b b b b b b b b b b b h\\0\\0\\0b b iqc$D$D$D$D$˜! 1Œ@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@ÄÔ\\0\\0\\0\\0\\0h\\0\\0Ä@ÄÀ\\0\\0\\0\\0\\0\\0\\0\\0ÄC0C0C0C0C0C0C0C0C0C0C0C0L\\0\\0¹ºŸ?Jé|İÖX\\\'`\\0&\\\"!‚`\\0\\0&\\0\\0\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0( üË]NW¼_CÑó;ïCæ=n¤Ä\\\\0\\0\\0\\0\\0\\0\\0À\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0âù\\\"ñwóZVdœ½Ióî=‡wƒ­:‹&»–À\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0N…»7Ÿókì|¿*²tÊ\\nÜË(gFŒ¬ÓÖóógèı?”u¢î!4\\0\\0\\0\\0\\0@Ó\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\05³ÎàMjãÊ«\\\\$$ˆ&‰Î¹uê6DfI:ßç~¶½AMÈÄĞ\\0\\0\\00L\\0\\0\\0\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ó”qºX&¼÷;VØÂUí&E„G\\ZS„‚o£{,ıÔùß;Úb/ Ì{_Có{f÷ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0Ú\\\"KÊúoŸ7‚¹<³.ŞúòñÓ¢¹‡KL#%ë+Ï{æÑ®2ió–Ç3‡¾wjíçYÓr\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0Lëç/\\\'Ìú??7–Ç°õø½g7¡ÊL÷9¹!UÎ§*UèèâJ:´óÂÅP·O4aÛùïm=vşOT`™b`\\0\\0\\0\\0\\0 `(\\0\\0‰€\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	ÔWƒ©àñ{öMpº:SÉÑÈ)ªpDÅBN†”³Dâ%¡Y1bš©[·ÕüÃÔ§®y´$Àe‰€\\0\\0<ˆV…Œ*ÙS=É\\0\\0\\0\\0\\0\\0-`H\\0&˜\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0†\\n3Ez\\\"ÑÂïx‰xùm¥Tm±s.®Èóöú/N¼ÅºyP¬9PN±ÈgN¾}¤òlº¹Zud¯Yé>wíN´cEÆƒ›ŒïR“Ù/$öPó2=Käõ¹é‰Ü¡©b¤¹Ô•wV[%Û\\0\\ZŒ\\0AN’çŠK¬ÏacˆHB\\r0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`\\\\^+M8ŞúDW~<KÕËÏ\\rÆË*•©`¦ªµdR\\ne°s‘Z¶=¸woƒÒ=­ĞÀ6Í*÷YÖk£Xp»œ~Ï-!šÂ\\Z‚2\\\\÷L[@ôs\\Zv\\0ZP™-0Ò—5ÎÁ8Ö—™±ã™¨¤.**Ò2!\\\"-˜\\0\\0\\0óŸÃÍsº&n\\\\¹DŒ‚äN#”-[#!¬ò±B&Ö²Ä°rFÁ\\\"­iŸJ+Üõ¼O¯¸Ò\\\'p@ÊLZá>TÁ5€šç¸ÒÁğ†h\\0\\0EÍŞJ^÷KÄu%õÑ#(Èh\\\\àA]#\\\"Ù$®ŠÆJ1j¬W*ZÙ,ğ­ÓcÆÓeT²_»Ê—\\\'+VX…3†Àd,”U+Ò‘&£# Á\\rˆ)$‰û?Ù×?i(Ë\\\\À(\\0\\0# É\\0	¬„Î[ƒRÔ˜ò\\0\\0Pš1ù/Yãñ£¹Áô’èß\\\\ÑK=\\\'@Ã®¤Æ$ÁÆH`ÈÂÔg«eóÖ(ÇJ\\\\®ÖÔµ]SÍl¶¨¸‡¿Á³‹šúÆQÒSsˆ;T±$¦‡	JĞ”…bd &ŒMe¢‹n=ÎŞw|ä\\\'r\\0\\0€(LÅ@¹ê2Œé´wÃ\\0\\0¡0Åå½_£¥Ğ•kS1aëã(ëqzµmvÔ;±¦`‡y´dšãh¢™z½LÚu%“]ry³¢Ü8«Øó‹Î®uƒ&NÈİ5¢+h„W!ªRŠ B$&114Æ\\n,º›µŸ­ò>¦òÔâõ€ˆ\\0 Hk\\ZRL`ı\\0\\0 L*ævç²úºòò›+^ª¿\\\"O7ÖÏÇ‹î„…{çà¤÷W‡õÆ¸ÖÒxuãšååÕ†]½ï!§SÖeÉBG-°–¿EÊéG+Înæ5E{3Ù\\\\Óeµè›df©…°)\\\'I«R’  ¤1¥	D¯Í¢ç¥ê|Ÿ®×+¥\\\\õ–Á¹«Ô\\0!¬fjcVl€\\0\\0Q9aº[ÁVo+ê|‚íèFƒ¿W\\nÃ§nKVú¥bcÍØ‘À¯Ó3Ê¯Z“ÇG×s[ó±ßLBÜ]«)®Ù”èÏ¢\\\'§$eáQ§,İ¸ï‚g‘bl¾«¦£jj1šŠár*VÆªS(ªdI \\0dd¦†Š-:~»Êúİñr—aŠ<­zß­K›Ò§r ÈAŠ4ô`t€\\0\\0W8ËÈÎ£f{şCÖy3Ğsú¼ÍLôëÉLĞ&u¢%EYºá\\Z¬çu+æÆ[b«]}ŞhË\\\'³N[\\\"®N¾Fzer%(ÚÄ,S5[	‚¢\\n,*€éŒl®» IÔ(H±ÉÅ©¾»şŸÎú=ñ´¯Êßäe…!_Iìñ{Yƒ\\raš“\\\\ë”e°He(Y\\\\°ƒ7T©‘›Ìú:—‡×ájtqìÇ¦§8ÈH)ÄŠiAÖ•×(©M´ÆŞ¯3«-\\né.YG,gçkÇ:Ô æíÙ‡s,°-²ç+ŒTLeµÕ4*]°•mnQcpUb‚,·5©ê}_ˆö»ä¼íJ\\\\ùíÎF(Ö}_·ùWÑ²ér†²\\0ÅROP \\0(®p–¸Ìç¼‹9ü.×»ş»ÁÖz9¯Í©¥ÖÖs¨IÅD‘²®İ¶s*¶™V¸cÑt3ê–üºp®~nî\\\\G&ÜYëÙFhèàé‰¹S¦úŒ°Ñ	(£Tz«Ö(²½\\ZÍoFx”¡dÔ¤Ü°‚§Y¹çšiÑ‹Yì6câYéŠ³Ê½e¤k;=·‡ô¾üÁ)6‘’\\0`4ô\\0Ø\\0\\0µBpÅ„lk%×•ƒ‰ëj³™Çõ|\\Z§6¬¶Z¤Ğq$@IÛŸt»9İlyß+q“U:®qs{x£Îsú|µ¶ìõË\\nëš§£‹q `…‘ª¡d\\n¨ÕŸ,Ğ¾Í½%s••T¦¦›fË·6±^Üº5šú8ôÇo‡\\n”¦TY¢óM3Fš/ÎºÒ\\\'7¿ÓøK3è\\Znc\\n\\0Ğ€-P²œ¨q»6²sZëŒ‡çıÓ>mY’Ø¨ÓiŠ‰5\\0Ÿ¦à÷yë›¥Êç×=±Vz^¿™ôä¹SãÛŸ¼sNq&³ÂÈM;³5èÊ$\\\"×UÎp²¼¡•Dæª)ÔXBhÜˆª­j¹æØ¢×]ÛÇ,¿=UTáqËlÕ×äúzìUÔ¯Ÿ_=~ìW>¡§®-§¨@”¸ë‚kÓw¾w¾=ä³èŒå”Tø¾-e…M&£eV\\\\¬%Y-v-rõñÙ.š8£1Â{p/F¼U\\\\*Şj®»Hª»IªãxÁÄÜ]¤% ãd+HRUVê¾®”Dœ âPvES¦òNyzsÍA^á3$‰4mö¾;è|÷~.‡+ŸYèÍÓ->q§¬€PGÌz~fuæ0{n{ùgÓæÜ{.ïô,Ó	É3yŸ[š¼;ö|4Ãªºt¹Õé=g¤®#Ìõ_>ú´ã{ò.B×^Z&ôg¨fÔ€mcˆ‘n\\\':ìV	¢.Š€«pF¢ÈÕ5U­Läàš¬Ëdijâû2è¼ÍÜ¾˜ÌX·’\\0ƒ”R*,ê{O#ŞçîôœÈÛ‹™äÈïëvxÿ\\0A¿\\\'H„ï¨\\0,ú!7Æçu°qôåÏ³UÎ¾–;÷Ä9ö¥ñ½†K2WV1‘8Y­Uä+ÛSó~¤¾Ÿ›‚ûiÍU@¹Qa©Ä¡À8	¨–(…¶ÑlÔĞ•AÖ(8\\\"­¡!R\\0ë5BÖ”ZÙ\\\"6Ëc*»»—®drH«”hOGµ>x²‚n°nZ2ÍË±ßñ¾—_3¢Å¿„¤—‹Çôo—ªƒËw£ÑA-q„nw\\\"¦5v¼}ÎÖ6C¯O&³W=C6vP—¼²Ïl…qÊÈ×*••H×D°©“ˆ„Dˆ[m–ä’ªå	ÄŒ\\\\iBPF¡KJéç™26ÛñÌ¨ÍšqÖ–B‰\\Zb‘í‚ÇÔç>‹kš·ÖÖ(éÍŸL»|Î¼¾§¿Œ5L·CŸÌwéò±Óc(%ìô¼Å½<Ş²^R_AÇägß;²:4pJˆ†UÂÈr£nİõsì\\\"9Ûœ&D4B»Fá\\\"DP¢%‘/tÌ¼­Ã‰QuÑ­HL¥+lª:¬^|wÆŞréEœz¤¤»ølDÍf-¤P”i)+0ö»+xö”ŞMÕ’Ø5ò†}Ï¥Îİ®~¾P–ş-{_>ÙW(¾„eezã,ø³ôğè1K§ÈÖÜ¤©h£:Ñ‚\\\"$86*KÍ˜vòìÇAIÄ…Ye‹rŠ$”hJ%ÓÏ8½Ö(Ä•dB\\r‰RJ)tò³J¢WW”´ß¦b©…Š*È‡¤T2Uåêªsrû;ã…:[\\ZÑ[÷óúËë¥oãy®^în>­’”÷×7^ÿ\\0.R×(¹šÙ\\\'S2‚$œDQ² ‘Û‹g³ŸH€$Õ V9D- D”dMÁ&‰g‘t†DY\\nDTÑB@²Nå­ß®»+¹\\rÉtÊI¹R“Õlk‹n/?è\\\"\\\';V%)]“b{°ôuåõaüo-ÌèäÏÑ×É×Äíå®SO)Äœdƒ 8É	%‚q S€í©sn–{ùwC3¨¡S‹W)¤HŠFDÉ(¢D\\Z;h¶jiÓV[É¡Q%´¥E°„­–š÷Õu[EU\\\\£rBRÒ±­A¦€![	/7è*N\\r\\\"ÉJ˜ës½¼=joÇÓæyšíák´*ª}|ÒŠQqQ*óe’#‚J2!Db†€Jî¥ã}^Œ6rëÉÃØå”ÆJåBp@JÉ$† hPïVgrÁĞÃ©D o\\Z®Í(÷yüïªkË­uëS®Ìz‘©À‚q±©À@&ˆ©Ê=´{Vy}œØnÃ:ròjÅ}³¿?Vç£ØrßÈ|î\\\\|÷o;®¤8ë¶•8¬Û+fU©*d[0b”R‰+%!\\r\\0‰§(êÎ»˜z¾=§™×rE‰Ù²1\\ZQsIcNJJğîÉs^s2Iu¹Õîhçínœ–æÑÖ%®\\\\X ŒD&ˆ’N>±_¡nJ±N± zìº¼í×Ÿ±³>üƒÉzo	¼äÅ«T¦’!FFS¡_¢å×Ìæô|œŞ{#¾R‹z‘pt&\\\"qcAKnQÏ®5ĞÉË¥X´Q‹N[ñõå¬ÏxÓYª3D™ SŒËyÒa6š®y®Që…$÷€\\r¬Õ•.ê ÕtÓBbÔˆ@ÁCISjêê–_7Ğ¸­ßL”dÓÛ‡£yúUO_#ä:¼>¼ó)Ó»dH‚jXÎ+-=®vÎá::œ÷ÈÁè2ïÚzòh7–˜á¾÷†[¦ş¬yœ»i†;1«*„ŠÜ;q,¬­O5øÔÄóDÈM1ÉH“‹–n2•ÂqÖy°º®œÓO¦@4™’¶‰M^Ç­qQ\\0 N0Ä AJQ‰ëµ+x²UĞéÀZq[§·Àï¯«ÁÑòÏ7%¹}5JÚ…\\0D†oRî~îa§±Ğª˜–eëôî|”=mÇ#Ñc«;–uN\\\\Şß3ÒíW§ÏÅ¯Es!]™wŒÍ.œÚjÇ(2û2K\\ZÔU,êRN%(¨°ƒYÎ˜ÖŒÔÕ¼}1& (”Z\\0.™SmÒMZ†€J\\\\a˜)(Jaïs÷çË>vÌxúã¡Æ¾ ïp{øéê¼¼ùÖ³™UÚD‚–å”9O£Ì×ËE6qíš7×-ı~7C-%…¹y½>C5ß›Nİ9t9X¸³İ’ÍQIæØk<°:ó@\\\\¬H°ƒ‹%K¶Å\\\'\\r€Á\\0\\0ÓàÉİëeš…%ˆÜ48\\\"ëKÕ2âàQ©k9÷.»X¬·6u¯Äw<çnuÆuöŒë‰D²B„â­ëW›G³¦Ú1»-Êğíîó·5·™«%•YU›l†z0¶•f¡ª™ºHÖ9D¡× Ë”˜!¥m\\0¡d•0À\\0CĞJìöÛbi¤‡Ï$Úe‘,Šhúm”®7‘<}êÃé±Yn2æğ?@ğ]¦XJ=²(Ç+b\\nÄ#b#‚u¼ëtqjã§$³§kUiIi³K³ßFQ¶©[5	Wfmg0y L±5C\\0\\Z†BC\\\"`\\04EŒêø5´®IC@8°ªÚÆlIŸOÉ«7+æºZ%¬teÌîÄ«)é|×\\\\òAv‘†U¶¥¢J š•@lÇ~tä§ÏT«êš™#(–_QY5;i‘n=95”L\\\"I@Á\\r6! *€&ˆ6€L\\0\\0Q––	ÍE\\Z@†Ó,€J\\\'pæœçJ\\\\—§^|U³— Û½›œZ¶eí\\nçVRpr±®GK7‘w§Õy^‡v¼ùé¯7-\\Z WØ.\\Z7âJ„µ&¢‘Î¬rnÅÓ\\\"f°˜ÈŒ\\0À\\Zj‡@¤i¡1¬FX€Ú`€%V(¹T£%IŠ‚I9+œC ç\\\"¤ˆ©¯ØùŸ¡o/±‚|Û›ì¼i3uZ™5\\rš;<z;2eç­‹¥Ú²ÁtC4ãT’…M±¬üş§x®\\\"Ö%(²M1ÙYË(ô‰²Ü\\\\7€†\\0)EX0³ÏeÙ™GÙ`<Ü}O;D×Í—Qã×©G˜:üªN.ÒUÎP 	\\ZI#°·Ù\\\'){NÇ{²×sÜyïA›(µ\\\'ÃûŸÚc’·7[FÎ}2qé\\Zãg*’Û\\ZÒÙ«6É/‰j2HqzÜnÜêŒ£¾nQ	J°šˆ1Mj&Œ¤Ğ\\0\\0 i«9KÛÇ7×_Å|Uè£Égö¾&!N´Y*Âë3LèÕŸEyÜşçÊ[‚p•­ \\0€‰‡·Õ©‡ƒİóVr1\\\'«íú¼^Ï:&£‘âı÷‘éœ!dÕ¹eG°¬Š²2Ój¶ ¢í¸vÃ„ZNÊlL¼ŞN¸Á.¼€ M!(È\\02#0ˆ\\0‚qì¯o×C—‹“—,±wgÍ£w<H¡(ªŠ*£E™¬/³<º¹·/+·ñöĞ5¢R*#@àÿÄ\\0-\\0\\0\\0\\0\\0 !01\\\"2@A#3P`B€ÿÚ\\0\\0\\0ÿ\\0ôöå»şTšN‘1ö®€—Ü\\rÿ\\0É\\0²&:e¾é$ Çî|C§ü42òQœ¹	.£<½0†é\\0ÿ\\0+6`#¬Ú	EÖ°\\Z+şC.pÖÍ‘¹9× (94õÄxkSSr#(âÉ¥$ìj—9•““½_%¦¹~A®+“ezÆÎ{YÌrkÚïø‡º–^CÔ²¸­Ç¶ãxù†3’Ù[ÿ\\0\\n÷RÈÊSäîNuóG Xò–;\\Zmíÿ\\0ƒš]ƒ#)Å9îqqæ*¹[dìp èÓGPàÏø)¥¥5‘)N+ôOh‡Éøty˜Æ7ş”RL­É¯±şü¤\\\"/Y>Ñ)ëås«E\\ZÀÆ¾©ÇÔañ\\\"™†\\\'ÚÇ”µØÎı÷wêDÙÒ1CHcsšƒE,Ö‡6ìÕ]3›Kñ„÷C\\\'ûÅ5JàÖåLdzÔXéøÌÛ#iĞEjX“›Zşı?\\n9D8ñÂŠÜÔe`Yyc‰\\\'¨dHì†ôÖ€Ü¨Fèú·ıÒ}Î;Ftîrp¢¡4üi\\\"-È\\rÙ/öc¿jŞ\\n”‚¿zcd¾}NEùó9§§å<ÅZ¥¼“… ©_¹˜ÿ\\0÷²$µ#)²uvÎ§í{äº¥>àò­Ç’ĞìG#˜¢É.8¯ÿ\\0tšO>ØÙ¹ÙŞÑ;”ø»-…ñµL\\Z¹/¸]G%BıÀ”ßöœ¶…´–ÂåŒÆ–KøÎø³Ú{ï±zm+†å±Ëc–Ò¨ò1ÛW§å\\\"à™şá[ˆ±Íµê“Ï- Ò„Er†0C©±4´/jöªi\\\\6”ajt°\\\"~×cäZ‰İ7Äjâ±q¸¬\\\\V.#‹x\\\\Vv·. @ÿ\\0’ã´gO½î:Rá™á1Œû\\Z¸ÍG!qÈ\\\\wY•Åo+q[ÊŞP”®2iNcJte¦Ó±¤±@£\\r£Œ¤ÉÑ½¨‡ª‘1¯³ÆŒñ\\Zõç±hõ[ç%_ø9y\\0)M»ÊlV›#A€ ®1+q*–Õ]Ÿ<¦È\\nsháÉÕ¡u1´®\\r‹‚Ä\\Z ˆ¬I	ì<öiËyBE¸+ûyRp™;Ëß³r\\\'Ôùú9î+ª¤4­/JT©R¥ZR«ÿ\\0$gÙåW=,>ÁCÏn–ÔZ… U«V­_Õõ9i0&´4K:q%W(ĞëJ•*T«JTˆT¢“k±$ŞÁÙÄo`¡Ş(*[Q«+r[–å¹nV­Z¾Ù^ wMv‰äêyÆµÜ¥µaM±Fëˆ[Cœ¡Ùs©°ÒÜÀKd\\0óR!éÕu[•«ÒÕ­ËrÜ·­ërÜ·+EºKî–gû|—/\\ZÒ¥H}Mù`¼9£°;7³/‰şLóœ¡q:ZÖ‘bÚ«ŸªµjôµjPÑ8Ù:GÕÁ“lê9ë°S{2øŸæÁÖ&¦ŠCÁîRÚ‹Qè¸¾î8½ÊùÜ-d{QGZúÁ3åŒn>ùC³7‰zÈÏ”dUÖä›ÜƒÕòÃ¹¸ÛŒ	Ì,[Õ„\\nµhšYE8£¨\\n•/Li…-·¾Pì+zK·ğ\\\\˜×…ñR.ª#×ô‰WÙ“â>p?ùÍ’Ÿ\\0rv9c‚µä8tËòíiåR(ı ‚Ã4Yã¾;3É±­Èp{SvĞ„AaĞƒÚ”ûB²„Œ\\ZR3£%§;¬>æä‚gZw \\ZH…_Di‰òaû/`p8BİˆäöJÄ2¤Œ³Ô7&ä´£–À]—‘¡Ÿ\\Züø×æD¿.%ùQ¯Ë6v;–o\\núÅ?Ç+d<ØpD›ÔÃÑ¹ÎGªpäo)ú!ˆiíæ¿¬Z\\nÌ„S@ŞO\\r÷Àrà¸ka]WT-uXÏÙ+6ñ\\Z·¸)´z´Ç¹Š<›‘6E`–{¶·>K-NÓöy+CÜ¾@‚Çù³ãÈM)¦¯¯-VVÖœ“š8Œcvº•øâÌ,CˆâDQÀ;Ó›nôÔp$_‡8F‹2Wv®+Àâ®…Ğ\\nbÚ‚÷{2.4w’‚S©ìpš±¾møêTÓmY9=~‹ü\\0ä×k*Ì?É…ır¸ïü·±÷&f¿)‹òX¸ì\\\\V¡#PpW­)©<‚\\\\ÑQüÌ>Ö² Dõ•ı$x$””ÔİO%j{¡bxÔ©äÚ2²:Èòä:ı+E4¢¦S‹—Ûwò“Ôëkq[Êâ9q¿\\\"@¿-èf</Ír~Nà^P”¨=ÒZx£újı<¬™w]ËÂ×ìy‡J.[ĞrÜ¯²§¶Î¯~Õ›íÅc:ş‰×÷jbŸıñôŠ½ïö©R¥KjÚˆ[UjîOÑªÓÜ§ò \\n“PÔéjÑ(éJ•*Ğs^^çGšY¹AªG—ë‰ôN§Ê˜ôó7^ñã÷ØÚ¶£©óÊéz^>éÏ[é¹5È\\\"CB‰DöÇ5­È9zkıÈvVÑ#·“®!EÚŸ*ûCê1ÖWøıÆä]|ó“Õ5ˆ„ğ·/Ü¾UZ	œÅIEËrÜ­Z¾kW¨Ó/‰úÎÉ¡,›ÉDékm²°îo}Ú•¢şÃ\\\\6ÿ\\0a_±­«Öù’¸lö&³£­HŠ\\nO:1„yJ:¹¼+@ºA©ägœÖTû‘&òœUê×û°dß|éúòç,ŸŸ{ÿ\\0­<B¿õ¥«WÈß< æ¹¥„èş¯Ãa\\rpMu4È¤)å7Ã»a(‚9N…R!;Â!Rb4Š \\\"­Z´\\nˆû±ß¶<¹âÈÕé[{çKSn¶{›‘!˜î—¤L=Jÿ\\0×e’–9õ;N:tEQâÂ,	Ñ)`¤ñIÊ1jH“z))~â7Êt­Š(éZR­NòË¬g„éi²>É)ÅOß§N\\\"wå17% ƒİ*Ğ»UQ=Q†×Æ\\Z÷/ßf÷§SAr/ê×oë(…)é+“ÔFŒ…+@(üvŠ­T©V£GGU¾;İ©Ò^G”y‰Ôíå Ë-1¼<vÊ)¡.Mê“âìp@uEÊù˜-Ôu§xê˜êXr^u)…9âŠ­#r¾sÉH…\\\\ô‹QjF:Ì=›JğŠ<Ñ®	®­^îáĞ\\r)iı¸ô?7i|ö±Ø\\\\÷­Òt×ˆyxY\\\"ëOE\\r\\nµj3×œòo–—ì…IKĞĞózt{ät`¬ˆ×§»¨ìİ)²Cóé3;¬S¶Q¤‰DŸÚè¨*\\n•&Æ×\\\'c\\\'3j†\\\"÷7l,2Èèı‚dš>f”Ú*Ii9ÅÈ„òRØƒeÉÔ¢‰@ZÛÊşˆ\\Z¦D¢{’Î¤.ŠfnnE²vrçØ¦˜¸— V,ÅÜF§xgE8ö\\0â7ƒ¨–S¼a>2ÆŠ‘´)Ë\\\\xaYb{ÖáDõå›Ey	_¶š[Ğv£Ë…ª¤SJ¾p½)¾É\\r-ÊGĞÇ’²£Ş÷c\\\'ÀB ¦šXö§ùrÈş¸²ÌfRÛ\\\"cÁV¯r6¢6F0sŠøß	î²œT‡Ü_IÒ\\\"Wë²9Ï)GRši5Êô/EÖ‚gŒƒÕW%kÜp›¶\\0§FäÎ©îpé#T‘­¦ğEû!\\0$NG$À÷Éƒ\\\"üYÂds0Å#6pâÜÑĞ…#AlA¬RL\\Z¤É´çÚs¯º9­ÈyJ¤İ\\\\‚\\ZuuizR:ÅòÄí\\\'p‘Šé‚ÓÁÃ±+z:Ó½«…g ¡(Ø\\\\G-ö#7#‚h€¶5ÚåQÆ›<e; \\\\Ù!ÊsÉD«VŠ±Î{\\\'QÈÔ|‰ìc‹!ÛS%Nu©»QI´Ã8(8wx«D¨£Ü›’x,.+Ë@Nö¨ffòàšá¥…,Ícr³óÆx1do‰V­Zµv›¥óßdö©R­i÷PvµÍi¼…ÆN$q\\n°Øåw‰Âq¥»®\\\'û“šèMSS‚ü8íğí%ˆæÈÔs^¦È{Öí#v×XµzZ½9(ä=«WÌ5•İy¯P(*UÈJÅw·›!¶¦°‚Ã’€=?º´ëjRÉÉ 3¹Nq2’®ÑW¥«P»¡*ÕòƒÓëZµjÕ«W£U\\\';j&ÏeÌuìrá¹pœ¸N\\\\7\\\"Ò5Â=y\\\\@R<)\\0(µ4íQäÒlí)®:@™AM“iï%nGR$]€y5ö	Ò•.\\Zá¢Âº®ºšUĞ‘İ½Ô‹zsú^W¹0Ï]\\\\úOÈI‘hÈQy[ÊêƒPè]9j~IN‘oEÖŠ¾CÉ`vÒù]¥¢†€«äØĞ\\njyèzªUÙ6òÒKú8•»¦˜§ß¤²mÎJ»Ô5P	Ò†§LP§]îV—Ùgfû‚‡CÍkrÜ¯KV·trwUZ¯±7RÂ®É+rò¸ÿ\\06øY®äHğÑÅ´îºîEZ¾Û{@öAÒÕ«WÙµjÕ«D¢yeåªÚ·´\\\"ö¯jÚ\\\'ª\\n“|~³]\\0ë3¶§>ô½½\\n=;a›W­«ÔviR­k@h{4«RŸÌU  ù7Çë7äE—íj•öˆAk_=°›õ-_u¼‡»\\\"<V?Í¾WÏÉh¦Îş§ª½+[ï´«ú7¥­ÊÕ«ÒÕ«V¯‘Š‘î”QGR‚¤\\Z©büšTçÜÁJW§Ù(ézˆıªÚ­ZµzÚµÕ1½ChŠ=Ò¯¡GBš90Ç¹H}Ÿ#€w[GôVÑk”LŞK\\r}„U¯ÔN\\r|8JÉ½9O\\rDÛ\\rh	çB|¢¨ 9lâÇZd\\ZÖï7ÎUëã¼<áŠ=nOùw@Ği\\\'+1Ğ8fq[œë8ãØâŠ½xcnÖ1…:R\\rªôh³h­3>9¤î§–ô(«úù7ÛŞ·t>{€*U¬¾tZ+jnçk\\\\Q?E…Zsé>E)½Ãöšg¬”ïV¯šÑÖùh(nwÁêù‡–¹¥æµÈ”ç+Wôä\\\\‰R÷«ÓÔæõ\\ZzŒ–ç\\\'y…~šHÅqÌĞ÷aƒˆ@Š-†Whş€;¸9B—Ó%O(}BJF@\\\"{‰Ò\\nî‹â¦~ÆJíÏyWÔ#Ë[ÜzZ=o´Æî8ÍØÙ­IåJt¶9¤ùæ¾¾C~‹–åjõ\\n/0|W©>˜âw\\\\ğüœU­›ÁÅ¤è‹I¡çğ±œúNrÜœU§º¯¾äÿ\\0<û?Dô•…ÓP±ÛoŒP&†t»Şã¦î|pŠ!M}§{Ô­£ @aÅ°üf©c1”Æo-nÈäw[AQä_x§öXzı\\r»‰ÇaG¨â©70‡¡\\\"Â;¤lœ8äu§#ÌtÆNC£ä\\\\·)rá9Q\\n–+mÄÓK”E{±\\\"¥1NòÕş9š{–ä{CSÜ¤Ñµqn\\\'Î›ó^ªû.ÑÈrİ!}JwPPPÑ1XPŒF^ôJsºD7IÑyGOÒö[•óÚÜ‹»úÇrà</j¨ÔÑ6¶Ö›óYÎşWx\\\'B‚:”ƒäÿ\\0— ˜i4ô½$)åZ`²È)LSŠ½Z¤Ûµen[–â·+ïı®ªÅfŸäQ.Ğ/Lù¸ĞÊwó8£Ìy\\\"}§tLO@ADU*R„ı!èıÃd¥;Aá7Ìíé÷‚ğY-·4R¤È\\ZW0£-‰ÏË%vç¢9\\Z4í5¸†O( å‹¡Sá¤~x´œî‡‘ª^­ûà£Ù¾Rş·í‘Ãp{Pæ<rĞøf\\\')ƒ€wËC¥r‰Ö94qDèu!9¿rvŒ)ÁZ´4¤Õ\\\'¾Ş[C”rŸğá—»ñ£…ñ½éjÂÌÛÃ“ä{g@â}£­«Mğâ­4§r^JÀ…R‡—iRta~×Ã!s-qq¤9¹\\rÛ!äç[)®Drt\\ZP¥ëş\\0Ôö\\n\\Z‰©dHÒÎ«ZAÖ­Z´JÌù;ÏbùoF\\\\ÃCÈ§¿Tö‡vô1‚Ÿ76	Ë†àˆz;–h6{Á„¡‘ˆ„\\ZVÂ©Z½oœùíª5=“¯äÈ¿*Eù/_–ğ¿6D3¤_Ÿ*üéç=Lã #RUòR­äÜY\\nf!e\\\"ÕK¢sS‚=—xíCôGxsÆİëñÊüs|3µâµ< ¡Ä{Ó1\\\"j°­nD\\n!àŸØ	ÿ\\0V¿ÁÆœÜ¹Ÿü÷„q¥bÈnÒt®HqÌ†(XÀd¤^­Z.EËr\\ZŸçœ\\\'ŸªÜY\\\\4~;—Ë‚åÃrØåµËk¾ÀXùÑ¨¯VŠ‘äÎ>9\\\'£¤EërÜ·\\\"åiœ¥KçÓ¾Pc¾WbzcZ13ÚIp[‚°½«Ø©‰¼-¦(¬ãÄD¸e¢ˆäÚÓÉ®¾šÏx×Õ>Ö‰8ğ£ír.V­Zµh&r¹J}Ü¶­_ÑN¦™xìˆM|¥?u~•«W¥«CË¤ÆlÂXîÍÂt8üWÿ\\0ó¶|>İ	 Ã~™\\r7_Sø?FÄ\\\\aÆ¤ãµ9Éèó55Z½dNò{ÁËZ\\\\ïOÀ\\0\\\"Ïi—+ÙŠÀ²c„ï7¥òÚ5äã™¹0ÜÏùúx÷¬ï”…>Ÿı:ú‹n)i¦\\0äâœ{\\rMñÉ*pGëÕ¯KÃ´òÙ¥%™.ÇŸQöË–ù-«@«@¡å®£í˜dã˜]ÛÍşßNò½MÔâm>\\\\ÁüíBäã­jujıj|ğŸªWÄŞY2’œJ\\\'[æ:ëiD6x¦†şÀÓÿÄ\\0%\\0\\0\\0\\0\\0\\0\\0\\00 @P!12`AÿÚ\\0?ÿ\\0m\\rxÇâV_ûØñkÆ/¼læ#s\\\\_Q\\\"1$“˜ /‹×ÍqY‚#/Sß…ˆ#’ÒĞö­OUCâµ-1±ø¶>âDb6½±½½ğzVÕ…¦Iá#c^•µahz_E\\\"°´2æÇŠH\\ZèS–S…¶ËÍ8cã\\Z“‚pĞ—EñE%H|)=£Z%Ô|i³(Všb±%ë:ZÍ\\\"ûôSÕ|h¥#Ú…¹L—íÆQB*C\\\\\\\'‚ê¾*éòŸ)GÚ=M?D\\n™(°ÙE˜Ä‡Î”h¥2\\nS-£ùééí”Ò‘râEËÃªGÉô#z(¶|E6…ô_üôzeô\\\\®räM:d/=Gáÿ\\0J*ŠK×dI‰ó’p†I;)g¼‘³Ô×ôSúU\\\\!½p!BñHõ|•ÕS(eÚş‹—$¤©íBÃæò™:•¶Êm´$^ü+ı4¢ªHä–\\\'’ÃÚ/Šâ=è»Rh¯÷•htãÚ:HÃcÄócÚ™ò´+ÅWGÊ—–{D22øI$’I#}¢‘rYcã$“Ğx‰’N‡×b4É‡×zãKğ0Ah}ô„i |_~f{‹,BX\\\\ªîÿ\\0ÿÄ\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0 0@P!Ap`ÿÚ\\0?ÿ\\0¶Œåoü2ùÙgÑô,½YeÍ3ù‹ÖË—^š‹,²÷¢¡¸Ùe–Y{?\\ZPÆcã²æ¼lf:¾µâ[8Z¾OGá[8Z¾OÊ´PãøE¢–c­ûÔ£Ã1ÕÊö!Š±hô^Eµh¶Z>v_DâånË•£å“…Í‹k®,Z¾.*o‹ÑR¶p¡M‰ğq}–¬[PµfBàüºÑ­>Oƒä¨~å£í‹hj‘rZ,,_¦TÙrÑ’ãErB(­Ô3%EñËÈ—J1\\\\Ú\\ZğQE	rP—V‡ÆÄQE	QSZÜ(BéFCàáC&%\\n×&,‹Û<…‘ı˜pB1éETc£3„ÄËGÙfL¢ŒFŠÈ]¨¢„„µÎS>†á¹B–Š(¢‘bWT!–c¶xÃ‹Ûª(®èúŒ6ÈxŒ­ñô)F;´5­Jä»!Â1ÍŒ{â½	iˆ´lú>¢÷À~»1s“¡½lEM–Y}±Œ²ÈEW¯ÊcÈo‚êøÙ{ÿÄ\\0\\\'\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1 0@P`\\\"2AapÿÚ\\0\\0\\0?ÿ\\0‰¾YÈ\\\'$Éü“&§ó6Y2ËØ‚ËTeRÄA—¹by©ğ°NõfşRŠ#7B|¨Ûÿ\\0%É1ˆ.Éÿ\\0B*x%İ„92ÂŸÜ£%>«Àª¨¹Êƒkû\\\\9~Dâ–úşB®+\\\\ğãA;÷+9ÉYE×yYzd±¼Äœß&^(×4Äœfğ?Ñ†ã2øL§mÒÉ½ë,²ÏÈ²Ë/µqSq÷ìıŸ³ö~ÉU\\\"Pû¦$íW¼fQğŒ9:(¢†%8±Ğ?!—¿nZwğO#ãÍeç«2Ên|óWšıƒ\\r¶ü´±|#bÎKè›—YÏrø­•ª{§\\\'Œç÷À2YäùŞvYy^äxDÉ°“®Ë>ÊYe—¥ĞŸÃ ë••…eŒü‹,e%	ëW‹;N‹,½5•?Jé²Ë,½†ÿ\\0@²Xëå™	æ¸«ç\\Zß¼ÉúGØq:O©=›pàşäí¼å2æ\\\'K$nGw™:—İo×@š›³eá¨¢í Ê(ÙÎQ×Q(?	óUU‘‹?î‡?ÓÁ>•TÚWÉò~Éô?	S*@«‡)/*(l“Pƒ-vl\\\'\\r42”Qõ#\\\'\\\\\\\'Ûüdá>©İß´ÑYIù\\røh\\\'Kş‹,¼ìúäß{<)¡ÏÌŒeøÖ×–_”\\0úg~ËíztN”İwñiå!t\\\'˜O6¾aG/Ê¨¼èãı„T# ^lç˜æ:ènZs|Ä¼ÿ\\0Ìg>-TUÛ‘ü\\rí7)ûÙâÁ=İ©Ç‚ŠÍ´:ö³Âš+(ïr…Ò»¸Ã÷¯çÇÅ>E^êné°è¡|ŠääùWÔ¢øùÍÁ~NË,²Ë/7ÜŒ9Oˆ´É—gêIö!<J@îF3ù®²¡“©ş$¡YÑEÉA3tÕ#\\\'TÈƒãÊµÊføyî½U,Y2e[j¸!FTŞ±î–ÄõHˆ>42b…ta[m±Î;õß,HFn7ìmÖSùÆQzÇâüVÅM¿ÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0!1 AQa0q@`P‘¡p±ÑÿÚ\\0\\0\\0?!ş™|)JR”¥şš¿<şjn!`Nÿ\\0UĞöV4	Cd\\Zş¢ø&Û>\\0*º)¢ÔÑŒ[P]æ›L.ØÑ#V\\røBSúƒ/n`Æ6Ç¹»´Œ/‚Š7ğ/éÅM£µwÛÜ{ËZÄ\\\\\\ryBú×úZ:b}¨¬¡cŒjÑJQºN8¯±/H—8‹Âş‹Q-Ø\\\\vÜl[\\rÜÒ‰”¸n\\rP“T™P‰Îsú/°$”µa½l[Æ)G*ÃLã‚´cĞ?\\\\ş„Åö*ĞæØCy„ĞÂğDREFÏÉ¬~ .«±µıÁkKğB!•G†¶1eƒC¹‚àÂ%B¿ REÜ$Õaº4ÑÜûÅ<.‰ª(\\\'¤QGÖ›A!ğÓ;ä+ÿ\\0yáõ\\nB|%èô*Ü£zÆÌ’7Ây×äe¢øb	 ÒĞä©.A‹[ïˆª=Š1;ÿ\\0y´&Ï…at--EÒûs7Ñaë#Á¥ú&ˆ»\\\"I/D½m ëŒ=ˆ,}ÓöHïûÚY3t:Ë(µ0€ŸDİê+ı Ût°poĞŸ¯g1ÁöıÈ*ÆÇm¾Ÿ0ÃÈº:m–‘7ÿ\\0wĞÖí\\Z†½Š%R+|ø½°£1$>Ñ³¬‡£ì7ÑKöR²á1ç`ÙNˆbwşÜÜk2j‡K]\\\'ÇØnÕHéº?¹l¥ÅğaëhN«dBFßö’²‹e5jZ\\\"Wù(ÎmÃxsÅd“|ì=QôXĞ%O¡UÁ»§³ƒG—G«ñ_ú	FÓçAzÄÙ¥ó_<CÏ›4´)²°^@@¡¨?„zÖáÆ6Æ-¦:SbJ–é\\\'Õ>‰õª}3aüUø[kÑúà§ü‡ÂÚpA	ÑP½WĞªÙàÛ\\Z×P®!9PÛ³öŸq£¬›è¡öáİ8%RàälRÓ\\Z\\Zg³PÛhôØ÷A•Rè{@%•õ¨\\n¸òekBX‘yÄÜOùï‚Ô2™Pğ”T„B1µhÏ¶Y—MøP³ÀŸ\\n†#M>£ ˆ¯Q»p%ÀÆ¤A¿\\\'ˆzü\\rQËbHG±¢ÿ\\0%ŒcùLº%5ë†ı+ŒI¡,7„ñ‰¡à$çG(1GòÍ%±< o?’1XÔŸ²Zº%\\\'ä‚0¿Är¼)™\\r!í¢M\\rA+ää\\ZÁd }\\n‰WáŸ¼™4!¥Â·Ì9 ¨¨«7ÃF‰Ğ«47F7tkÑşå‹\\ZtbxÂ%é®ÌUòÙrÜd…\\\"Ê°³b§qXÓ ju‘`Ec–;[C%ğD\\r*ğÌOÖQ	ˆD%±å0ú²äöVÿ\\0Šø#îu)tiÆiÁshmKò„	dJC§ìıdc£b„?bá±ÒÈ§NËM°ÑÁ$2áùB£ğ]¤ØÉ)ü¡ÜmĞ†k=hà<S¥_>?&Œx(Ò¡õhá¿v[Â¢‹•EVxb¥ÒjËü/ÆñÈ~ÇòV>ã¶±ÔÚ€âZtkie	ø\\Z4spg²Cã7ëbK¤Æó†ÂPßs%¶T„\\\"Ó¾Êâø–£€şAÀÖğªÇÄ¶?Úp¿¼ê94Gº)À‡\\\'¡?¿øÄO~öĞ­ÔÛ§ÕšpõDÈ%±c ûÄä‘¡2XU6\\\"\\r~]¬û4§?ÊÊ>ş%C4«ª(Ó9ÒCÙ>#qB8%®T„´´O¢}x¡›‡lÑ„*4HLcº…: Íè…bÆB³¼¬IAC\\\\,C×ƒš)·‚à¶ÿ\\0>‹ğtbàZz‹pt\\n¥’hMÁÚ;ÿ\\0ıî‰zÊûbbÊo´s!;áÔù;Ó…Á!§±¢¢±•¼1ÚDF´˜è½<®¡!á¿ñæXØÒ\\rÁx´]üñÄza¦%[.XNÒé­ÔÏb–¾G÷\\r/É~ã|Âi»&1‘LôÃBËL|~\\ZÒ—`Ô¦a	5GJ‰±P¸1†„ñcîPÊ<½eàp„ó°#Ìò¿eğõ\\ZŒ¯Ìh! ó‚tÒ\\\"ä‡N2Ç£l)EòCã>Çÿ\\0‚\\\\oü8–ÿ\\0Áï”Ğ»PŞ‡1·±%Ñ9bPú=à§£³Œ.a(ÄÑ4O—¼<\\\\‰PM„¦\\ZĞpOğ¯Â&ílrp<4LCA:9%QVQ°“I;Ø™íOğ„7Ô_´j|á\\\'Á\\rÃ(lkPÈxU¢‰ô)Ü[U‰±4,u†‰ƒF È¹ôQx¡\\rˆr–Æ-QŒF\\\\~ø9áô7_g­äÕˆÛG6Å1¸V6‚G°şP¾p•ì|Áöâ—¼l¦Êª=‚hCú²è5*[ô5)F:(ËÒ[ ³e.*i…VTÅá0…À¥2¥è”ÚLuh“ôÆöÿ\\0\\nü${‡cQ·ú&Jh~Ä\\\"„a$áNH<\\Z¡¦wô7ÁéVÆ)¢cM°ø1pgâ)Œe›KápLmxTÅÍ¡\\\'à_ŠŞ(]ãúÓğ ÉlEf\\ra’âôØ°bcÁ§–®ĞcQF\\r†ø4g8l…(ÎÑ¡ªB›X¾§8KYa£\\ZÛğó—øvç³nCFFô]ĞÉÁÔƒkÁ”o\\ràÓÂé	6GA°Ÿ¢¤Î»£RØc6\\Z&Ä1ó±IŸxÛç|z!<Qà¤5„Ør„H1³œ‚:ºdÏ§ğ•F˜\\\\fÂ<ıƒ8RÚ)³Œ›ÃM\\n>D°zÉi—‰â	±ibĞ –ğö5hb¸5±lá›(Ÿˆ˜ …¨…$RÄÆ°o¢áÍ+‡ùàÚƒˆm¿B\\rYKZ++‡6ó.ò†H¬Á‰÷„µ9\\n‰›TlvnÔ0Ù˜4/b(´Ç‹càA0p<ø¬M9iö=cO½,×ğm›¼³Øƒd^‹cç3»=¼›ØÙDö+&à×‘É›±Q=í¡½¦?C³	NŠU‘µHb\\\\/hFp º!I›B`ÿ\\0bï§ÀthÁáÏĞ™°×à¸ŞbIš­\\\",V¿šÑ&l1/g¨+aIFˆ¦kFŒ»ˆ„ËÅ7›ZXq@«\\\"Á(ÔØÆ¯)¸nğ,Åc°ƒ¢R,À]Â%dbA:6w-€¨tah£A%§ù[F”SÀ[µ\\\"6u;ÃÑ‚e.ö-c·:çQå8œ*òë‚\\\\xnÇ¼±±†<6O\\\'…¸z`a¯“ÙÅ²”ü¾³@¶áÄ+	È»bN1î66Š†×ÉJ8ÿ\\0Hò=¥	Ğ“v¸¹tXc:6F©®|ŞL~6Ç°˜„LKÇqÀ6˜?ÇnF± BMQÄ7áiÖ.Ê6Ëöpô-P8<v-Š¦è™Çİt{šÜoiÖC°ˆhÕDGMW‘tjKìX„Ä1«br,kcPc,6‡ÑÁAQ=àS\\\"1õ’d&.Ämƒ_êX²çáB8Í¹àÒ%ïBjéè}›cÁÄD6šN5Ò_dûÃ¬=pKãºbÒïØˆ_f6E1>Å\\n\\\"z$\\n0Ñ<Â”ëcll)XŞ&„ÎˆeBx¦Ã‘tz|uÄ-\\\\ èfn—àGk:6´Ë\\n¦>¦üòâ¥*È~Î‚Şß	õ„i1)ã$Ö‘¤7é\\rÄ.‰*l¿‚e‰—ÈğÇØØŞÅ2\\r4Q\\\'ìBB8›YÎuÄŞÈ˜ƒs\\nÖG@ŒBÚ²!sğ1J……âŒ\\\"MÄ=‹\\\"£M¨áOê&ƒCHH­\\\",/è¼?üUÿ\\0ğTå šƒÍ$*´æHkQ‚”OÅ”¥/‰cpØÙpxƒB60ŠÑm†4jQf8\\Z!ìBÊBJ›:&ú\\\'Ñ	)lNş?°‹QïÏ°ĞVUöAÏ‘ßQãÚ+à[ĞÚ\\Z6ƒÎ\\Z\\ZhBoè(ô;ÇÑnğ&û\\ZæÒŒ¸˜báŒècÃó-aÒx=Ø,qI$¨ÖLTƒ«b>ìæ~	(jÙ³&ZT4‘lZ(‡ëGDıŠiªcêÌıŒúN¡«Ùf&[F´]´>M”æ\\rF¦4Ö£*‹CàÙJv_4®ØÒ¤dŒKØjô!ˆ6’ÉŠIFlEw«…P%ìy¦-°ßù#aŠÑ‚Ä5bhO ×P¿¨¦§ÄS« Ë(¿DÙ9Œ#qÿ\\0lYÄ£>¼Á†ğ£ØØ)J7àL¹QàÙv=±Âä÷†\\\\.‡¡sC#y£/ƒ\\\\Gğl5^…ú+(ØœÑ7åMÆ%!oØŠ˜·ò*ú}†	ú¦Í#Å ïcc™pbÛ›¢Âx¢xceÊeÊ<2ŒcÁã¡ £èuÂBÃñcğàSö~ÏŞ|iôt–×I:<¥>T{ív°İDsQÃmŒ5XÌh\\\\!ÆÇ”ñM’”M	¡0ö<±ŒĞ]`­ŠáB±¹…Nø1å¬Œ‚ŠÔ‚¶zÌ­kGbd¤Y_bm3ĞgÌ>PÃaï¢†‹ªQÏm”¾\\\'ğCc”X£.Dğ£eeÃŒ.‡\\r<Y%BaZaÆË˜AÄ°5_B­ÚCà7¼MBâÂ‹œ5£èöS*šzgÏè|âÚ,7Ãæ!G–ŒõáJ6\\\'‚Å.^1J_¼úÎ…‘q[\\n¥²´,@x?…T&…°Yº÷~Š®1ãx\\\'Øî\\\'™X·Ñš1³½–ÛG{z+Ş\\Z„Œ£x¸»:ópÆRëÊğ?\\nQ:iá–ÄQL67¿‰²¤5‹áÄÅ3sÜÏb,-’b}\\rº/m\\nº$°iC¢•1ëÅô¸ëÊ£Âb¢“a±¼_±ş‰Œ¥ÌÈÄÑ¼&†2Ä†Ëcf%šÂ²öhÄŒ}ŸıG1ôltgXdıŠ}Ÿ\\rY†ÑS[p‰`Î1º·†ğÒ\\\'µ—àÅ›†Ë‹š!Ç‚~\\rQ-\\Z-Â•š=33fË&<±H‚T9Ú6)„Y½—è·´QÒ&R/ÈãEİ†Ñ.ğÄÓBÓÂÃXôLT\\\\¼ÌR”¥)Yplb¯„Åâğ„cÓáÖ45æ®:Áôv=FÑl_³N©Ê$›…¸iˆ0RIšÑ´&öJ _¡–¡›C\\Zdg¬12ë,ùrô5÷ãpü(Şl6ƒ‡21¿[7…|	7¡¬o™o	“_…ôC|—X0UOehôl5ê‘ÃéÒYÀ´]’­÷ôx=›L·0Ğñx2´z™9\\\"fğÏZ}‰çÑK–CåÅ4KaR4K\\ZÊp j\\Z ÆÂxA„ÄFUÕ6Z!èlÙ!v{¢TÚÇìCñìa‘¶z7›†êÙ¡öÓ¬2èx°w×‹Ì‹­&;nğŸ¨yö2—ÃØÊ1)‚47¢!mB>Y‚•H‘‡äŒ™¥)6D:†¡ğL+èrÚÈéĞ!0–(¥T8I†ÆÊ Ï°‚g¢\\rSkBØÖVÎÌ&Åğ>›a?>Œ^x1 „Á¾\\rÔn­‘º–\\ZÌº?*&iJ;!Òb,Ä%ËiNáCÙyyl2L,ÄÎ3ÌÌ¾HòÍüP‚hDÄÂBÂqyL¨[}‚æƒ¡íáGQ÷3ÁĞ}.D³ÃÙxç_|\\Zg1¼hJ\\\"…ÃÅmŒ´àŞV)H9´‰(8wyßBx ¼‡ßfœ´ÍcQ÷/ÅwÂâ”+ØùÇÇ‚i·±\\n2\\ns=¬ãwà)N<E¥‚µa¡­Ô$dLj2á¨s+f¬NÑw§bSï4ÄïŒò.x\\\"‹ğDÈh?ü=ùQˆú¼\\nã£T\\Z¨ÍeÃC)Ñ\\\'<1I±uƒbç7Î	Á³¦Û=at{bRR¯§ì}£bb¯Áà°šyÑ£B˜Ccü,¢4>–kÔ\\\'ªV?Ò\\nîÇ!z$¡,~…ØôjÑjòºŠ7ƒn;a•&5â\\Z ’S<GÒNìrR•6|âÍû-q0ä+ü	ecèİù®\\\'±àÿ\\0ÃeÄ»¢*Á%c&Æ{DÅ„%‹Û(lØ}ax¦®Fƒ5­ãìI ¾Pû˜p¸ÈÂfCèøcPÒ·6B0ßŠpùJ¼”ñ¼×0ÆÑKäbf&¨bÚ¢t¶$%T‚©>)>6Æñp2‚ï\\\\4EDQà8ÛÆÔ4¶‚Ù\\næ6	(ğ™O@½ÙØ†Âßá %³BeÅ).+üPè‡‰š6t^?”X(qŒßßşk</CàÆ¿³Ü\\\"vˆ½’d8\\Z	Á›HfZ£casLØì	ÅLü:†Äl£b–\\\"¢°¢ØÛñk†ŒOÁå¸ğ¹ŠRà¾nâ¾”Wtã¬wÙMñ‚Ëíòz0e§2tgV!Ó{Ğ™¾×1’[5)T…†ÑºhÀR¿ã/À˜Û(~-Ğé²1ŞÍhD%lÜ3CHfA&û49÷ÎHÅóD¨ß=“U84 )é†Ñ¢ZHØ6è!ô9ìõÖğ‰ÿ\\0klxƒÎĞøR-&(åKcŞÙA¶3Ô/†ÂÎ\\\"\\\\fÀÃ”PŸb?’:l50ˆÌôØÚm4hÁ[CC¿OÜ×É°¶ÆÃ\\n5¡„C@ú{ñ~háy¶†Âc{:1ö<«„Ô5¨l‚\\\"ps_bO‘\\nÎÒÙ7•-66ŞXòîĞÑ\\n”£;1ğ Üq”õ…;&§Œ9ü;â±Øø7’Ğbø8\\\'VUGN#v	—£ô%úS§ú,ÛÇBĞŞ\\ZÑ²…„‡¢ª1‹å¸øuBtX>Ÿx³×ƒ/âè¥Átô.‰ìl¸CA•ˆÑé]íxø-j~¹\\nÎ!Â—cuâ	¬¡EµĞhBcÃèb‹<dÂÏ¯áè]üÂxxOÑìö<Q¿~r	úô ØDê´H_tmÆÈ4ˆL<LzèÅYÂC›ÃÈ2l™¦OöRâ–#|’#ñF°÷–<#ŒƒÌüÆ¼`˜BW¹olEÄĞE`¹”.KBcèµ-Ä¢J=K¿‘&ãº… ×Á W³V%ŞÈš¥ğD5ót!åø=¹]aètºüÇø.ğÆşM¡ÓxØÍÿ\\0ÿ\\0 £IŸ¨|ôcÊÁóBz8¦Ù	¬B»ĞšÑª\\Z2ìZˆ7åèFÇ[ğJbƒZğbè÷—¿¼½x\\\"şG‰ˆLzdG°Ÿ¡ÊOÑ[¬7†Ä›ø\\nïˆC©I8\\\"î?±.Ÿ™äƒB`oÇĞ±ÖRø¥IãDü’®%dy¡¦aö±´úÄhÀ8tzç“gWš=Œ§H2\\rı‚4%Ôº£î=ŒBº5ğ4x#©ACÑy¬ú(õ\\Zş\\nË‰ã1¶½”†|Á\\Z“bh¥ÖÖƒ^¤oô~„øô„h@Ã8k}w\\r‰2ğ~H÷™òD?±øĞ1«‡9İE„ô-\\0×6¤>ï\\\\x™¶hÇÌ\\\\0§éDÊ_üQaß$8‘\\0„…DhñCf¶¶èÉM£\\Z#%?a%èÍt|¼Âÿ\\0±x]óyXdî4!ĞŸCÂëÏ!Gñ‹t„hŠ\\rp˜¥É\\rŠ!â=ç_…ø´~kP/<!ú?B}¦$äB\\\'â©~ĞL¥(›\\n†àèZ°}›ó_eQ¢©lHÍ·Qj¾‰t6,ğ§G5‡†ÀÙDÊ[7x_7ø‚f_&¡½d9{RĞƒ¾Ğu¬6R3Ú6›ÀH}–³ÆÈLAcdû\\Z¨U¶kÑx¾6’…´-\\\"zÀØüJ-\\Z!wá×ñ4)ø°„à¥$¸8qQˆ{\\\"GÀy˜“Ø†¨tÉ%ò@›Çäü_ÿÚ\\0\\0\\0\\0\\01Ë0Ã0Ã0Ã0Ã0Ã0ÃöÃóËğÇ<óÏLo¾¼óÏ<óÏ<óÏ<óÏ<óÏ<óÏ(\\00Âì¶úæ¢ ‚$óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<ã\\0Ã‚“Ï8Ã8Ã Ã0Ã0Ã0Ã0Ã0Ã0Â3\\rïPƒ0ÃN0Ã\\\'²Ë,²Ë,²Ë,²Ë,²Ë,²ë$¶qÙ2û¬²Ê%²*ƒ0Ã0Ã0Ã0Ã0ÃtŠCm0—nÎ°Ã\\rÃ)0Ã0Ã0Ã0Ã0Ã\\nŞÜCoÇUgÔx²Ã\\r<Ã5¾¨0Ã0Ã0Ã0Ã0Ãˆ‰øÑàe	Ğ–\\Zƒ0Ã$²ˆ0Ã0Ã0Ã0Ã0Ï=×ğñ§gœ@\\0Ã ‚0Ã0Ã0Ã0Ã0Ã0Ç‰Ş$¸(š ÖÀË\\roª4\\0Ã<òÃ Ã0Ã0Ã0×\\\"×y?O.÷0”Óî½$\\0Ã$ĞxÃKèŒ:ë0Ã0ãÿ\\0…dQ~÷GÎ’[ÅM ™#@/ƒ?—”úÃ0Ã0Ã\\r/[ín3\\\'´k\\nnéPgêÁÓÄéÒP[A4Azg„ş¡…_..Ìaß%äw,ûÃÁóˆç„2g·f©La<ø(p½q¹Ì0Ã•zd€W#§øaİ’ÿ\\0^¥\\\\~óÓ\\Zóg ´0ü– ê`?ë¬ÙŒ\\\"ÙŒ=úÆÉzşÃÄ_yfá„8¼ñÿ\\0\\Z}=€CXIÊéı„³FÃsÁ ß]j®&s_UWQ.	aÈÉH óVÉ wÜ(th“Ë–U—-÷6 6R¥ğñr§šÓC¦ºãiaæ&hp½gÖ‚¢G7øèÜĞ«œZ:¾?SÃ÷ï¬#1ÖÈòÜ=©g8I O†ÅlJˆ’£ù	®\\0ƒt†}S%7ÏNM#=§:É²DØı@âˆF¢¤6u7¡\\0Dù-J<hYDÕËå‘}İWñJtÙnEFc¯ëˆ ĞØ®Ò0–Ïv.µÁ±!Rİc’$=’*v8/ª_¸ ÿ\\0€E \\0¯@\\rŸ<ª17+wÏ§wdA†´%­¾Åë¤!ËäÃ¨2z8ù8wËûú‡Iÿ\\0˜ë½ü™˜;î±ÏM…ôÔø6.Ïçıõa$Ú$n«bß?êË¡!¿½Šşë&åaö± ÓËê­*t*Š~¨#G´ÿ\\0-ÖÇÛß‡¥ÓİâËå ÿ\\0Õl.²n]b…]—´/8XŸšÄÅ-U…@r¢öÑ£åcb½îk\\\'pyS”ºCOŞ_ÀĞªMÒf*Ò„mÒ£İdï\\\"™\\\\ÂÔÅ¡ï4™æ75º£ŞYŞM›•\\ZL¤\\nÅ´æ\\Zş@»æÒUæêàC®}xå1`d¿\\Z€¼€ç˜‹ÏoİƒåŒwÒU^ßšóõN9`d9û4:àMvÅUï¸R}³ÀæÈµà­L3à•öQq+Œáxä—»!æH‹‚Õ1~Ï!¿/&Šï¤ïFÂˆræv@óEwjÀM€•½²s\\\\ºÇŸëB8Ì[;«À4µËíIsGYhñ‹G|nS†×åØM¼qƒÆSep*gºÌà‰É`ŒD]IÒ³‡^Ÿ•»j\\n‘²)	îïoßìdÄ”(wk&Ø%Ê“+0“÷axd\\r`AN&foMo\\\'BÔ L*A&ƒ\\\\Şİ¢iõÀkÆâln®z’€\\njÿ\\0ûÿ\\0‡5äï+Œäò\\n°H]0|²æ¸\\nd\\0Ï:lIE¾î}|Ïñû«@Ñ€5\\n˜åTQè1x)ü×„ğÁêˆºIwş´Ÿu)fŞ[´û|C÷øpÿ\\0<øB)oğ&§mşUwåöiV<¾+O®ïOLÇ›³±çhoEm¨İZDÛÎYŞ[t¸_Ë˜û–_O–Mf‡9BxÙí\\\\©»ü;c+ckì|¥ê\\n<óë¶ë*(«J=ß_`·ÃÔÿÄ\\0\\0\\0\\0\\0\\0\\0\\0 !10PA@`ÿÚ\\0?ÿ\\0Ú\\\"9%£ÿ\\0\\\"B	“øh„ ¼ÖˆB	~sø+•)KÃÿ\\0¿èCâ”o–¿†|ÂƒCíşsË©	›†»CúBÉD(•ßÉ1Î\\Z\\Zæ$O:!¥Ršz.bcDÄ?ƒz-H›N\\\'J10HA`Ä\\Zo‹qoÃĞµfİIh4µJeHZÈL“Ş‡ø®§4Ní)yBÔMdOzBèÅæ„hl¢/	,\\\\Lh_IÒ+à¾c „AâÈ%ù/¡ñAb/_“O’$$M¥/HA!¢âBcÊ]bl^âÑGàiŸ›>Äˆ>|#àcà³è_O’ø5pÜÂ¥#¬Aø7†±1ğg¼ÑcÊú|„ØM,ƒ.CàçÓè„ábâsF,üe}Áf¡ï	e.6—>QêÄ./)î=ÿ\\0ÜR—ó²Ô.…¢‹î¡{ø•‚£üÅè‚PX»zØŞÄ,=¼—Ñâ±ø&5¯†)	xA¡\\\"pºce)GÅˆFƒÔ1ü>€±ã>»HøÑöºcÔÆø±\\n ŞèÈ¢½èÆĞÿ\\0ğe÷)qPšCùøQYJZ2”lle)Q0™±VÇsø0¤ˆ_D¾ÙJ&&!ÿ\\0”£xÄ49Ê2X,¨G=Ğ¿ß¢Z1ˆõğxjBÃåÊR”¥)JR46Q¾R1DIáw‚1n/ğz\\\\Yæ!ÿ\\0¥(¡½>R	Qø1½’•¬kD&qöÔË!z?\\nR—K†ğQ…”oZå\\\"CÙ!6†\\rW°hzx-ƒÙL1F=m.>GŸH¯IYö5¹¨JŒ¥á}Å<#Û¤\\Zğ^e”€ü±ÀÔıàƒw‹àËXñ},%Ä{[ÑòQ?KÔÄl¾-K\\r\\\\Ø½ œrÒh³¡4$âo‰‰‰şø$Ñ­A«¼§…(”òèˆô$,Ç(›Z$œÛxñ	õJ1¶Ui\\rôã\\\\^ÒAã\\\'Êğ(úOº •àÔ{3ü<l^Š8xQ±¶NoóBáñtzÇ¼±<b”¥ÖÒ\\Zõ?\\\'ÃÖ¢´L£í0„R”¥ºüb&>Â+)Å+/WÓå.©Dø{LPFƒA ÙJS×K÷e.Q=oÑ!dÈ<6\\\\Rô²d!?øcdÂÒCÂÇÁş+ó\\\\=‡ÿÄ\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !10@AP`QÿÚ\\0?ÿ\\0JRÿ\\0%&!(„/ä´%şNğ„ã„ì\\\\`ÿ\\0ˆÇÍÿ\\0‹ğ©!­™QFÈ*Ùñ^4‰ŠQ‡‘è¬L&R—Q1£®(¥å9±²âUâB	#¹DN9ÆÇìóÅü€¼|DåJR‹Dì^Ä/5²”¼nQ2—Fê§¬£|!Q1mƒÏ£Ğ¾\\\'Á¡\\\"a¡¬]|Òêâ[hö%×\\\'ŞBEXšÙKòC¸¶ÏbóSæ¼HLh|Zë)~Ä\\Z;×\\n/Œ ±Œ¢x/‚cZÇF4^±J\\\"p™RŒyKğ„à£pnˆt€ñx1ã1”£/4ˆMD Ğí™‡‰—‹Á†ëÄ¾1ã(<ÄAâW“<Æ5•‹ÌÂX¸7Q·ù¼Å(ĞnŒKÇ˜·<„ÕˆyJ	ãÔ¢‰¯ĞØƒT!°nÇ†«ÒzdÉ©è‰¤ı	_g¡&Å‹±àbÄÄÊSÁ{j(şL£ ‚Á1¾t¢\\\'GG´¸\\\\ğ=[>ÏEÊ^cğ°„v5‰Ê„% —Å‚â…‹f5†QˆT JD-‹_É‹\\\" –<l˜ce£ˆ¥Ò¡¤ñ†\\\\d!	¤Å¨¼Âú˜«ÉXù1Gˆ„!AŸ$B˜Ş!z~Ì–R•¥(Ùl_B(2„Ñ\\\\(ñ.Ë‰D1—ŠÆtúÉ%›`ÃÜ*ÏxóPBbo›A,.1–‚ÈtgcĞ‘KÅ±»¬\\\'\\nâöÆ5IA±yMLAº‹J=7Bdâø<!ØAÈNf‘ „$l}\\n.ø ÂNH$,OƒÆ!çaĞ³\\\"†<x„„pö%İ\\nY”‡£H¨à¡¹bÆ œx¾„èÄA’\\ZËÖ1ˆ&ï±>†İĞÂÊ$DA0\\\\VR”lj‰Ğ›ë^\\r”b;ìAˆ!x?Dºàñ›ceJv\\Zƒ=gô<b\\Z§V0‡ì^!ü+‹(˜Æù¨¤¼xFÊT dzÆ.\\r}®MÁ<Nâ(ËËşƒTHk±†èc 0Ã\\n†ÏØ‡ò!51‰/Éâ†QcóJ2¦vbb59R—‰\\\'«…ÅØĞÅî,Å©5âv*‚%Í±¾TN\\\\ıeˆ’Êƒ,ş‹óbüH§xSÿÄ\\0)\\0\\0\\0\\0\\0!1AQa q‘0P¡@Á±ÑáğÿÚ\\0\\0\\0?ÿ\\0Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm³øÛm¿Ëm·ü e—766Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–‹,²ÏØØÙ0³ÎYe–Ye“ãì±¶Û|m¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûş\\\"m·ÆÛo¿Í¿íÏñoş.şYe–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–YøoÛi‹›0ÿ\\0–YeŸ‹6¿‘şëÕ‡nvğ´îç=ÃÖ6Wdt—|æ~gû„ÙäáPÆğBg™|²˜¯¤ƒ¯q\\rúÿ\\0È?²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,³ÎYe–YábÙí„Ÿ£êºW›œ:}Àº€¾K,²Ë,²Ë,²Ïe–Ygû ¹cß·k­¹7%L‡{rgƒşÙ˜štmÿ\\0>¥Œœö¯å¯Ãse¬øm°‹ù½!Éá¸–?>åá0˜¡ıÙ%ß¸@Kğß£,|åŸä?Àÿ\\0¬\\r.LÛváû+}eÍfNó+{µ„¹2Ü·ù)³÷NŸ»zöØÔ¡¼Áÿ\\0TÏ¿©mêßòàÖ>	™¾šşíÄëc-§vĞ\\\'»>ìÃäë›•ÈÃóÀ=Ç[÷sû6ÕÑ»w×ùOö‹¬%¸)ê,†HùâVhe’‹.r#$ü]áµs9ø½á8œzº:$êëğB%4í#Vÿ\\0”´îàn„•C“×3™wÄÜ“‘\\r7näÏp¾¶Ö“–¨gêõ\\rmël(Pƒ6xİ=Yàÿ\\0}LÁu9%6>›İ¥ç–áçİÁüYñÉlvÚ	ñ‘çÆoÎ1å>„…‰ÌF\\\\$DÑ9N9cN÷wïrÓô&»z8‡«FxËI±9Ùœ#‘ğXÛ¹fÀõÜ/h/«8Ó~\\\'Cp€ôÀÎ‰¯<ÂØ÷G$qÉgÊ!ñïZ#a!§»1xãÆãâ¿¨ª	îîÌæe°Œ¤\\\'u‡g1¤í\\r}=’u¢à!€z³èY.î2ár±bßK9é¿ıc`˜\\r¸îğš¼Ï£İ–³Y5ÌY¸Û™ı¯t+ïHÔ-:bö–çŞíænA/´4·—ß=Ãˆ>ÍmñÕËĞw/Üà\\r&ZÂíŞ}Â±©¢õ@avç·K:š€½\\r™E­¾¤s—èıÉyzm\\0Í²OGyjTï(ãÄ’Ù‚[¿ÅËÖú8ù]‰Ÿikûf÷)®¿Mü›;j_7pâeØN²PšÂ,ãÔÄĞÉ¸ğí}¬Óäz¸`^4»ÇyÖl½ò½BÔ\\nÏr´!1ÙÍã[4\\\\FŞä7£q»iÜqá°ü³_0»rºµ1¶)ËÕœÎo¾ÒBqq.e¿şÔG\\\'v#è‘½/rWÆq.8~¨Âx£”DÁ/¥šurn£¨é?6½jÕ¬Mƒ{ºl{š™Û qDx†<]1øm¶ÛşP²Ğí•%ŸÒôI`’^a†{´\\\'/É.xºäœø}Ù°×8·şXÜÅş.¤ş¤0°õœÄèÿ\\0©.ùŸ›ıHvæºBEÉMå—C	8\\\"ró}wMi±õ=ÿ\\0ƒ8ÛË|ï0qáò‘ñëÿ\\0\\\'LÎrû0ÉfáÚ+È$3åÌmóğPæÍê×¨®+5«”Ò{†mğœğ=€Û|K^¬{£.éRÎ1÷3ÁKp”Ş·OêÃ×$@ÈöVUŸˆê³ĞÚ!\\\"8¶Û\\r›XMÓ(í»øoãŞÿ\\0,·ÎşO_ø]øË’ÒÔ†ÙÑšõlã¶ex`÷XVÓ5Ç¹-xLNIÛƒŸ<¶çFüJk¼Ê{Iv ¸w´X[Â\\0ûµÜ‹e%eÏÎî]0Ë‰­ªOÜ¦?¶3†zÄî¿Ë ÀşíœWãnDŸlgæ§+”Ø9æÄymç\\rØÛÉ±ÎaËÁø­4…öYäü¿ñP§s!`¹ÉìL¸ç[?VßâCäË…lm¢¶À®77<Ç®f`ö¹÷’)Ì4B;9ç-?HÊsÓ1\\\'e¡ä»°óK©¨v¡ş\\\'ÔæúšÎß¨‡\\0ıHRW*·|ÛáòCÜ_]Ï^ÿ\\0Àb	“éÑn†Hâs(Î\\rˆæ£Å˜wÃÿ\\0Œ¸¶N-` ì¹\\rØ±ØÎ“ànXcò->Ë|ßÑ8:´zË—¿SÓÃ•‹cëË\\\'ÄÊYÿ\\0¦#:Òæ~ …‘S¸×Ÿã-ûƒHëñÈ€ß¯ÍñÈzÂøf4á÷àb_}÷Yù€Ü\\\\\\\\\\\\‹?§\\r¾pz²àXhupş%Ic÷nsÍÃÔ] Ø¸\\\'íY<yú¿[ô°zƒâ‹?FóŒóû“O·rf˜GÅëñË,³êRq3Ãm³¼à:üfË,µ‚q’®æ£cƒv9¥¯‹g¸-˜ûGÚ%·¸owê´}Û‘¯9÷oM6K·Ô8h=BÉÉ2FÎ¸\\\'ÂÇçfRæıÚù“½‘¸óßöÉåÜlø&-¬P¤1?ÃÍeßàÙ\\\'>=ÿ\\0Á“„§½:Ød§«ßh÷+êçpd¼†\\ZàŸeã¿d/˜İÖÂÃÆÿ\\0qÓÌ–ı¤á>\\0±ó$îÕH‘qŒ®öàs%–1;æĞËBÆ·|J2xp“#Á\\rˆ$> Ä2’\\\'¬æ>£š\\\\ËAëxó¶Ûm·ò6yñÙùú|	ß›c¬Oó?Üñ\\0{l:[’õ\\0sğm=é­Ş	úô#øHgµ¯…ú,Q=AvÌ-šùaî$\\\\°4Y’Â¿1|\\\'R–Ç?7\\\'ê$á‡™‡HfF	v1ÔL@X˜2oc¨æÌ`º±2¢oø}Ş§Ãå»CüMÕ÷rƒ¨î\\\'Â«2Ñ\\Z,×ÍøØã³c‡Az½ÆgV«°€Ş..¿%ˆ,×–c&8>ç~{%/É|@Ş—ÅŞ3ˆg\\rèl»æõq „ëŸ˜ácìÒõãÀ|{.PAñ#w»Qnç¿À,²Ùmğş£øoà°³q×\\\"“‹–FO¾c®6>%Í—¯H˜ÉN~,¿o³‹ÜyM¸,·7†bµµ»İÃ0GÇ6âıÇ`ş’ÏîİÇöJè\\\\`}\\\'Õ“ù[±rwÇ0±ÅMmÍ\\\'{}¸“lâÒ|paÓÎÃb_¶=©èº|Ævm­¯ø{Ëmü€ò°Fñz¸¼Zc¼=’%Dà$ì;……£ÑÃ…ËÀPgƒ2N`\\\\@û·dRáúeìæİlæÈŠp“ı‚Aà?»q<ñ)`Á«OÜ?MıÎPoFŒ­©.øeÉ`9×<º<s.ã‹f½Ãz”ğİøÒ<vY‘bõbsmê\\\"úe·Ï—‰ë{÷OË\\\'ÂÂ9]W¿ø4;¹ŒÈEùˆk23V(º¸É¿ÿ\\0átœ‰›fØõsº]à“›-¿”qíø<Ã6X6ôÇ™ïl¡ëÜ`á™1%Æ|@»÷(£Ã’¢CÉıH‡2kdV\\\\¦æG±…Â8†½ÈÉÍée{¸ù`¶nS¡ô[\\\'œ¢Ñó(ƒÖC¶Ûm¶ŸšYÑuÏ=¡ƒWsy#×2:óv¤>ÛI§/Ü‹FÆÍÿ\\0»¶i‹s>9»Oî…u¿»îÿ\\0û·Ñ’úI€èÌ¿ôíÄ.£ Àzg/´\\rÙ6C‹pxSês—XX‡–ü‡>çíµ>¬—Ğc0}G‹5ƒÁÔ¹n÷3(<Ú|X|–|ÛénÜÜóÎ1l;m™Ä´<Ü|]<Ÿ‚á>Cñ|áC£ùUÎğ¸xûÂGÃ)Ñö¹óÆ~¾£ÿ\\0Å‚nX^ë?)ğp?vÈ\\0û‘¾?wÿ\\0lİ³ù{ó1y…uæíd#ıÚı™‹r¯õ©r‰Ë-¸C’ctØlr÷sÎ\\ZÃ\\\\üø17Ãá!‘]%Ä•m¶z]ïXÿ\\0|ãƒÒİÌñîî#CŸ\\\'_‡OğIñ|>6|‹»†Šèº¾aœ?©Ú\\r>$8êhŞ²ÊV—cêéÀ?SŸİ¡ô\\\\˜õÉr?Ãv\\rÔäD€Ì‹Ü|@İ‚ó¶aÄm\\rX¸-_9Ÿ{$÷}!º[ÎO–òø†v>ÿ\\0~>‹ªK²ï}C8üFğ’K%„ö{¸Äœ¾;t&İ«ôÎx@ğÈ»+C—¸’cË%–yçå¥ƒ“ PîcÓÅ¤;>,Cm‡°@nôn†˜7~ Yø¶yb\\rM	ÿ\\0Ù#Óû”ñ—îäG?vÿ\\0díMœqú“ú®Š¿W®Ä¥¦oV˜qËE}O£2UŞg94û‡PAÆçm†ô ÁZxÓÈä@ÂvA\\\"Ëğ êìelÛ–sÀ0†ug„ˆ/á¹\\\\Ç´iÀÄ=Fó±Zî¿\\\'<È±Ñ°ÓĞŠğ›=²Î§£&7¦ß¬‡Sft=Ú8œOÀÿ\\0wÉîêTÿ\\0d@0ıÁç?îåïæß/ÙÇ8çivæÁ§á—?îÎÑîş$|ºÏ\\\\#XÆìğ»iÅÈ÷qñaÖé´°ur´;œØ]X¬nwîÙÂ;r_µ„m†ék°ù–¶6ÍÈ„S‹œ\\r¹„Î¤°.éù6øYqã<¼zİñi‚ÒÏ™÷X´yÉ:¾âjŞ­HnÃ¯·7IòÆ–õ%9\\\'ã”:$låç´ãp‡zw?æ\\\\‚l»İ’æ5«ÔûÕ=Z?òä]Dx³v m™Õ©…ƒ·déõb}­›\\r1Ø—‚}ÁÀ–—¸mŒ\\Z;æxƒ<hvik\\0$şÒKÖ~¶NÖ?|v<ïà±Ë<K#‹]&=n:·N8±VQÔîK[7Ù.Ü8</«$–ßVó¸E¨);¸²Àşíµk1iÔ˜Z1;sÒÕàóáigrˆPCÀ9árQqñi»bÛgWP}²ã½[‹iògw\\r#:·Ã~íû–|Y9tœw·Pó)‡ÜáKµãFTë±P-Æİƒ>ìñê|Ççîô“{br]és6ñz™HìN !œõbÎcŞ[¬æwgà“ÖÚú…òRYÓˆM23`‹¥˜¹û9sVHÜ£­‡§©5ñì-Ÿ‚Ò8ã€K	j½­AÉİ˜xğ6,{L¼3œ¶IÓ2âËF¬.{RvoÔ-´7«©<Ì›ÍjÍ…0!{€¹» @7±oâõ{ÿ\\0éRé»n›a»êoÌ6¨¿ydëßWXÍ½Z1ÙûgG»]æÅf†ƒ“%qæajÌ;[¿©\\0Ã±æfüK]áñ„º‘ipåÌ?…‡Râ`Lw\\\\ö1ù½·» nêÙñ¸†@¿¯	Æi»¬»/†-Í±Ó‰øíğ8º\\\'3‹`]Ø~$6ÙåÅ2®ï¨\\rş\\\'‹#ó÷vğ-–jfgÜÛd{ØÎ2C=œX}¼¡àŒZÉn.™às¼ø@à=ÊÃ1êDÅwƒ¬/ß(¸\\Z\\\'Ô¶^1…ÇüÌË VßJ,¹ŒHĞ2àí‡/‹xòYÍFåè”BÇy%8Œ#Ï¸ÄÜÜĞ<NSnâëmÂë”Âà˜z\\r9ƒv‹ó8/Ì(É«¾­ñ²7Òí<\\\\­×«#ò;¸Eš;/Ä1¯ FÆ1Éj²Ì İ“¥aiŞÏ_©âÛ`3mÏ‘eğµh.¾c\\\\Û5w]â5Á‚íÒ0¹¢OËÒ9‰VÀÖØß’Rr‹\\\"Nî°¡Ì!8¾FÆvæ”ˆsÅœş³¾ ê5ÆZØÆ!¯ÄDÈ\\\'!ÿ\\0ÑæAör‘y´a÷;Äœº\\\\<üÄ¸KI¶.vÆÇEø€	Õˆ#úoñg¹é·s<\\rËwÀãgñ\\\"ÎË\\räüNzïÌj³›3Ç^;I¥¼]»œ½§²XsÕ¹«›Ç7ò\\\\B)ÉÅˆ|®tä»¢æ./æ\\\\_«C“:>ã\\\"õweÇ—O¶‰´³ÒÈ£GMÏÔpğÆö|İ¯e@\\râRß©\\0,%mcœ—È¹R‡©ƒ•Ú)´µŞÇqÓÁåüwÃá¹’Ğ`·ÊC¤ø¿H…²XüLÊ%ÃÒìù_ËÂ×“m¼‰ƒ”D*s?nÄ>`O[8Ü?[‰€:àLË–D¬q^O„\\0[L^¤vcÂãÀ­	êïsğà\\\\Sà6‹&^­ıs\\\"ä¿…9uÃ˜§ŸŸŒ³˜$ô³	˜6q±GelsÖßÇ—ñØéº²8ØæìÌr‹kˆÀ7‰[“%íƒvGÉâ¹	íàM]õ8ê@r\\\'ÅÃ¹¾¦w÷ñr+!“·îä›|{»®[,Êøiâåc­¶%…É.Ã†ánâì]v}äsÄq„ı< ˆó<5êÉ<‹Ì‘vÜ±õrÑş,I;òìˆoÇ“òøw&Ê¼‡Yh¶qéÛkÏyŸC¨4yHv»!Æ|ÏÁ»ê~™cÔûò\\\\¬ägîkZû„ò¡ëÑ\\\'yc“ƒŸ»6pQ\\\'e]G¨Æã·%¡=¸²¼Ÿ+y˜ğq#İ†0Lƒ!œVí‹\\\\Èî\\\\ã¥ ´G‡Ä-ğ	c8Û!·„\\rêß?sÖÀg»bç}@†´nS¯—^>I)üµº˜O@m”¹KÚ»†\\rï üÌåz2rT¦lNï0öˆ6&\\n›òŸK‘[_d¬}Úƒ±VC°£Ø¼È:.ŸÅ.ZEÜ³Ë¤~âáÚöş$¸0í€G=Op‘!ÕÖ@™;7‹gfbIlŠÃÜ{œz‡¨|8/™iäˆ›’µ}Ş>	n§[ƒ\\n´q5Ê6Ïi3_»ZšÊÌâB\\\"™\\Zøƒ$®oÉêÁ×‚Òİ„ãA± u[Ü\\0ç2ØcŸëÁ4´¹m¤ş Fİ\\0ä›¤ñÂÏıİ½äƒIá{A0şã	¯Òs‹&¥œæÈ¶,ö\\r_¸ÓæryŒt^òIĞıE9Ì„í-uÔ­@M¹“‡$tÈÃnqdsÔ,´Ç+˜0ÂÉá/3)OvÉñëÆ²Ùsaáéló¯BØÉß7Ç·hÀ›Ü:sò±ó¿(A\\rr†Î¢ÚsÍî“ƒ×Ô‹Şå·‰t†õ»õ¹Œç²$çÄN%Ä¶Ç†âãâÛÚb·lÉk×QiÃnm¾¬˜wCúf†dzüBˆüä—]Z\\r	o]Ï»|Qø’\\0Fv´ÀCŸP<8É™@øfdú’¬wWâ0ûñ—°ÉûG+S\\\"Yx³–sÃçÀqT6Û+º\\\\>P¥Ä¬ğL6Å\\02Êœ·0Ø#ãQÄVï¹2u§·–Ë`,–ñü,´NßR:€qãæfäú&¥áñré\\rp9…‹ŠL7É\\\'+rÛÙ7¼…Î	vÛº¡qñ.©ñpÕ¼\\0A²òÛ¡G°Q1ïnKŞ:Ç†4çaıÃ¹!÷cò´ğäp^¼Ë²;îqÄ;k.FÂ8^¥†ÜÛvu\\\\í’ş\\nu.Ruáä¶§ÉgÈ\\\'€nıÏeÅxÒÑ}\\\\ÍcÄ.Ï×ñq\\0³d¯‹Œ+	|YÎüØ´M-¡q!ÇÚìCüşLu¶Ş÷5x¾¾\\\\G8l¿Rö‚Èú¹r\\\\0‡åÇ´ı@öØêÀ<7óa­¦2D7¹Ë@üÎ‚ï“njz<ÙuMúBi-º°ù¸N5ğ1	ã.lÛ‚øl74áãÀç+™{’yJÙêÙ|¼ÀoîÛ«‘ âNì\\\\Mêz2«Ñ“îVÜİBX¸Jx?,É¸.>„ÅçqwÎY¦¹¹±¡Â=%–ÃåX\\ZØ“Œ)×¾\\0`µµf6Tn2€zO4r@â;,Õ/dà×. ÕÜñŒû»î‘<şdFÿ\\0s¦ï\\röMÎtğ»h”~­Ç—TˆóŸ\\Zi=ËfS‹¿€ñ\\\'¥Òcavœ¬³».x+3%¡\\nò„ÉsÂº:”Ã¸8#O>3c&K{œÎ¾n|sH¥Ér¤GÔB±l^}[ ÂßÇƒõc¼;‹~ãü‘mi ƒêøùh{K¸P{’éHÜÉ†}Ÿr=…—;w¯6Éîu1ê7;›íğí{´Ùx;~¯–Ùqî57»ï¹œ3ÑÆÙñÓ1Ì²yJé\\\'ãÂæû#^í™0İ„{š7//µÂãÊş	<.\\nìWT}bùŸ\\0ï`»ÁO‘·‡‹v<éõıÜàrŒ?¹rq	Š\\\\)r„¹ àù‚TÂĞà}IûSYWsyÎ¬ıÿ\\0Ùo¹úCa^åÍÃ3åÓpÛq‚¯âzx•¾;%©\\\"uÔõ²ÂÓæí¾÷k¬Åu@ä¸ã’\\\'İÌêpÌasÌÓi.\\\"ä\\\\£»{x!	 æ<_¢Y‹ßÔ¤ö\\\\ºñ?øKVÙâY6BÎœƒÎÆŒ&@oî}•Uuu)í´ôÛ—ïûr:>ãI»êÿ\\0s÷·9êÉ“Ô£¿œøêÅó»\\r²ñrÏvø-.Ò‡†ø9ã‡„áÇs:.^3Íp\\0=\\\'®¤áÂ{Ëdá\\\'¦³Äm©-:”åàâÃÃÊO€‰°Ş®\\0XİvEís)§D`{oiÌÌ×°ö0ñ9z…“$ïÜİsî,Ì‘\\\\âÔÒçğKöÛ®‰êÓÛ°<-ë^ïì¾üO>ğfi]Ûoà±Â[Í¬#Áeß‰ç“Ë7/\\\\»pg…ŠóúŒgl=ÆîV¡«Q{ëˆœZ”¶nÎAÇİµÜ$ÏqÔf7;,€æVîõ\\\"‡¶7DÇÅÁ\\nŸr)L÷;¤1½é/è_)áò]#¦¢ÂçÈcyûš*­Úè…Ç™÷bÕüY9ÉiÜó\\\"K+æ÷#ÚÉ`ÙífÃ“\\r­†àæËIdÇJæ-±ŸrÏÄø\\Zù–É<ÆÃÅÛn@\\\\‡Ã¸q°º7-œ_r3›”xcyuoq`œÔç÷ëşÂŸı£œã~àï8¿~=ÀLÃ÷/Õ<Få¶\\0rRÏp‹¿ä‚ÕÄì3ºx#+Ÿr×/éá¸^á–ŒÒIğ¦=ËÍÌİY‰Â\\\\‘L±Ë4#Æ0ÛùNÁrß2Ó‹Ún–\\\\»±ñbË®/u<¯£³$pÛg-våuwrˆ\\rîÒÏÑd=¶Ÿ×›O´Ä_‰Ì¸ŸüËşoéôÌ]ncY#å™Å¶zãPÛN\\\"6væ¸\\\\Ün^§c‘­Æ•lFè\\\\ÌwÔ	Åœø	]üqFøÎ.ÓÕ„ø<´ğb]ñ‡™‹±£İ“9`àÍİ’Ø6îÉ/j(ñ?X§S«få:K­t b?VFÄ<ãÁä÷›\\nÄ÷—6\\\\ä‡ÔğoDş°²¨qwq-\\\\Ó=J0l‡‡%º<XçÀ7JolW¥Ã×’›rÇc(.G¹x“ïÇ¶Ë­\\\\CçÌ\\\'>[fıO.î£fgã	êQ%·Nl:€<êÃp\\\\¥ÃfE‹óÍ±àÙ¬4Ü6ĞûÙ=ØÁã ²^\\\'Ó›î†[w»%—|q–•ßPxÌâ<Mî|LêÛ{ÖÙ‹l„aÔ]6ä>æqº	7›àíÑ“G}]!Ìš™oW°w=Ûfıàd§VºŞ¦˜¼vá÷gß¹Ù™l¶Ùx‡z”\\\'¾mŒ=Ú=Êøõ—‹ßSëahnAgH—#‚¾§\\\'#yø´é]bitVgPë”¹½Úlb{|‡ŒÛ\\0›ÿ\\0–WÜ>EºmÀAÅÌÉPú|Z3´dÉaV.ô6ìfe\\\'„eù†ö˜>ì	z³¼k]_u:˜›½1§K—)AŒ¾ ØùAÊŞ,ğƒˆè[:l½cÜˆàLÕpEZîà³ÍêÔ¨l²ä½ˆáå¼ä:ukˆ³ÙÖ-»Q¹#È¹ÌßÅ³@ÔâÍ¢\\\'@ciY„„z×Ô°m2øeÎ0hÚ³ÎÀ\\\\LÆSğƒæ_£ Ÿil¹“›g/©Çğ‰Ÿ\\nË˜2qcwä¡9=Ú!âĞçæÌüÆ×L-æÂÚûz—!…ÙÂ	«4ŒÓŒ9½wÁì’ù[o‚î^­d <\\ré°z‹}­œÖgÃƒûœ¹6fDêßBæHÀï‡qQ2B\\0~,Uí˜°4÷Ì\\ZÚ7){½ ÏÜ5ÉŞ­m—„ îú8´õfC“ñ–§.å#FÖ3YH\\Z•?¥xø„ÎVÊr!\\0fxP8KÈ2Õ×wÍ±Å•°¹‚0ß…—W0Œ‰×í	”İx‹mğüÆ¤4>Éº/.÷/	p|I o1Èü\\\"M¦GÅh^—¹üLäŠùZ£Á´z”ø	°c[_+VE›ïğƒ`âw×»[~e\\\"Rÿ\\0ô\\\"ÏQpg2„œjŞÛPÂ°ÂÏ<eÂaıË¯`î7©àñ<øõĞ„öCxğeí„·Ã<;.&dww]÷i»‰UŸ«G$–¤øÆ],úŠXŒc\\nO^|¥à¸®^¬ƒÁ,‡ÒÖVùÅŸ\\\"ÅÖ»ğñáÈ‰OpÆ’lçÎxM®åÒ¶Eš†ì*9Œ_vçê9º¢^pvËˆ}XÖKaiK´hlîËí¬ãb\\\'¤FdpwÜ[Ä;âÏ^X$Î1ù…`ãÜgs„ù:ŒË.¹ç[ş+.PƒF\\\'ÈçÊd8 ‚Ë´;óàr:æËm»˜µ(~\\rÌŸ\\\"âÛ·]Ü¥ó?ıä®g;¹Ç¼ğ€†Ûú®°)ñ:EÕ€İ´9ó-rÜ–¾ì¼d¸„ğ×¾–Æd?Äh> ë²S˜ú²9$)M³Y8xkàm>$î7Ÿÿ\\0Êİõa2aıÛ©tğN±êÀ>	±p°²ËŒÌuø\\r-¢Ã	÷ø[“\\0Ã™^Î¡Êíx{Šß\\\'iîÙæm±ğMùfrƒêYÂë!Ÿµ‰OÔw²ëø¸†|ËéB-æ|¤\\\\á¾_®Û\\\'Ä,ãq6\\\'\\\"qëË/ØÒ%uçÔË•7ÎvÙ]Á¿R·mÂ2PàêÛ‡=Ë‘÷rcÃÍ’~ëÊ~1ÖpêÚ^ç‰‡/õ²âË<dÂïàx‹“<6OåğYàğC]\\\'Í“íú—\\\'|ñ¡ëÊs>¥–SÃö“¸gWª5Ó~àœK¯KyÃkI˜@(ã.¡¹Ì]7aîfksÏ©äZï„˜9$ls!ÃÔ‚|‹ÌÅğ8»P\\rÄ.¬[­Ğï¨G±˜Í‘‚Ñë‰wö¹.ç›‰s2C¤£ÃoYœí“êZÙ¾H÷p¹!Ò\\\'ÆÄ7»Áäå`k÷&~>,ÓåêëGê.eo–î^e´IB{,:-E«GêÁ(¸?vÖ¡òÜ+~20}­†cã2Á}@Äÿ\\0™uYvÛ,AÎİ$¼fÏ$ñ<ÙG_QÅåñam®H“5µœm’/êÂ¯õJ!Ô\\Z#¿P¥89æÛ™Å¡æÑ~çY0ßˆ¸œıÄ_†b™…ËÅÌüäôıÜm°ìó¶\\rÓlõàİeêã#À0²Üög¨5“:ğK,ı¤°>¿P#V@vİ°÷p‰rİ˜p·µËŸ	³¯>RÀ@öárF~îg;øµ8ƒ#lkfÁÕø	v­Èøğ®9â\\r8“%–pî+y2•¨áòâYÅ£äâQy•…Q<ÈÜ2eJ£˜—Ä‡©^O1.%Cn	ğ·\\\'V6ÜXŞ.LÕ»‡œğ[sŞäë¿@ØÖ»¾,Ãk2ì8ã/q”uv÷¾=Ï>Vz#‹“²áÎÌ3Óg³Ä‡Ÿ·ÂÂåG	 Œğ“p—ÃêEw¿`yocµ‚oræ`Á·ø‰æD€W¾è÷\\ZkDÇxYæâRT»yæÜñÆÊÑ:°Ü‡°›^2í0»œÀiË—3»VwÅÿ\\0†ó{À»m§N8>.!v\\r´oÔ¼âÜç6{|ïƒÆøtÂ¸^ãî¾éÒ}³ò$<)/ÛşODÌiöLœ³îYvM·©¾]‘y€Mn%ÏÇ$‰Ãû0k\\\'c=Âã. úŞâéË÷hî–(è·¬;¿;—¯[™>Kƒ¼Çï7=ƒ¯r¯Pœv\\\\şH	Ëzæ>İ]NÈŒ:Øï>–¡x‘ŒUM-	„{¡îL¹)ÕÍ=È¦“ŸRcÀD1ÍîlüIğD9áü6İğ²Û|ûğØÄ“†Ì—‰wÇgní¿\\r	6Á‚~©.p(¨Ğ2rÙ”áî?°èŸp€İ…Ä81Ó(¼ÃzæÅÕ‘‹ÍƒÅº­¹rº§q9‹‚Å.`îœÌè\\rHqÚşÀFtÉû³LÙ=µ¶]ºˆr&d‰ÑÔhäÇï†\\r‰Nû¸46ö„1KŞHüYø‹,ñ‡±á.¢Ëmó·3áëgÂTI—ˆIp[¤IäÙñÌ/f]xe}HğN{‰ ç­‰ä?s%İ€MO›KL;~‹ÌŞRÇNõ<ÊŞ\\\"º‡£épF]½¿Q5ÛV[,‡­!ÌÈmR|k2Ãbsr¸ßÜÓf¨Â‘rÈjlÍ¨0DÏæâãêzüwÂƒfÃ\\\"êÖİüƒÇSÏ‚0æ|½BÛuOrg©‡\\r¥lÜ#zZ£(KßÆZxq%³Œ¹eÇ6\\Zoñ3©®fa¸”õÿ\\0$G¶FÔº|ë7/RÈG#8o«wÀæÅú\\\\†Õ5‰ÆãÂ3\\ZæCˆxx›-—¯l{g»:Ów#\\\'Ú½øm¹Nô¹|í±dw,ùÈ‹ÔZxoŸQÙp›g©ïZ°g“{bèÏ1÷ärÚãˆIym5‰A~ag,nqÓ„ğıŞ“a8TïW5¿Y³r–Í…Ê~!«ÚáÀÖGm z6%#¿íÅË=œWÇâvâxí¿èÉá<pY%eÓ/WI qg…™<<àÀ\\\'g‚†j9‹<4i“gÙMD„ş­ÚoÔèğ~£V:<ıÜºFQèş%g_òpÑêiÁË%§…¥“_q˜`Û¨—\\rµ–ëÆÀİô’w=HTlŞäŒÙ-Ûn[‡¶rÚá?ş#’ExÉy¹Y	rQã¯/)\\\'¨êöQŸR=x?Ü–.÷>yq3ˆ3uâ)ïagV¿¯ó ÿ\\00TYÈDFLK›—?ô6Òà›ŸÓŸ0Š8Û¥‰„çêÅ©gÑ8“›¯¯¹VXôQÁ‚u°ïÙríÚm…q¹xÆ“ô‘\\0ñ Ù|xr†\\\\•Ÿ‡5a¹\\\'‡,~gì%‘wcí6ıCÜp¡½ÎGÊënÜ|xŒ‰8Â>EÓ¾íøs<>«›­o‹]hæ1öğÇÿ\\0AÚ¬k%ò?V¾ø”‚œıA%ƒã@\\\"àx°çÜ‚$ØÌÉØ,Å]Xş¤yú„=ã\\0p€À,ˆ9l¦œ\\\\<€·uÅ¯öÛmÔµ.„U·ÁmGÄ9-Çİ—\\\'»hêWh7©+-Ñ<ùÛ!ñ“Ó[>m$’¬pOWn³ËqnZ‡˜òì~Ky;“{K¶w3Yqú”äos|1w½âäá§Ú=;zÉ»2È™—“ñ%vXş`\\\'³›UiõSÒü\\\\ç	¦HNó1w¼µ—K˜v:³Ï%®ñĞDXØ?ßŒ 2´œù;@vˆ·˜ë³ŞQT›\\n\\\\ÇÔwaçy“;xŸ»çd®tÛ£Yp#”ºGô]İS¾69aì>Ø2>&%×Ä¦µ—(‘ñböce1<ä¤Óí³›Æ\\\\‰W\\0S~­“‘ø’ğå¦\\\"{µ°ú-œÁ¿vÙ‹—§.$p[YÏ‚K™´ş&›VÃ±zŠeŒZùxkó\\r¶ò@OsÖCÌõ±®ì Åûóš[®gJĞX­ô2c	ıO´?‹Oõ{Ëcí!š°íÜÃ„‰¸Ã¾.>cÁÅÉO†|kq~å¾³÷<¤îcr;İüæ{±Ø<.\\0ğ\\\\â\\\"úŒ˜=áb]Ÿ»€”fJs…D&í—<Ü&ÚOsòNqêáÂk¾-$îÍ~¬9oÜ!!#œ@ 8Jûâ|íDoRÚâí»lœñÂ{”dç¯™š¤G\\\'•ÂÃŠnYŒîf@Åºş,=?«Ñ?¨ß§õrvÌ|ßÍ#êÈnÖAgG,á-;!74Ûc—û»?Šáh‘åw%ÉáÓ å“º³»ßîĞÍ³ô³†ì= “êDéswæ.`€îÉa{Œ\\0.iCídtø	âwîú0·˜q˜:ÄÈÌ³¹“ÄÌWçeºÊÍ³ÆğEa)uaaqòùå0ãvnÄ:ú¾ºÛĞù`[$è—÷/ÍŸFØû¿{[ºÃ8Ô€j1‹dLÃÑßrÎq³æ\\0õ;¸¹aºãâY~%‡Èr]ğ{‡¡Ëñ&7}²Ûà:š6I4ŸW¤u¹‹Öû§ƒÇü1svÿ\\0Òâ§ÕÂN¹ê4^¾%ïáaOıJ¶+™dmÅ“¾—8»óŒ5¯›¯ÁårÛî%4áæ<Ì\\\\IĞºü[{Ä³¨RíPéÍ¸¹<°ìİº|ÌÒñ)‹ŠŠödL|Ç±Ëf0çÜÃ$€d=^œ¿6Iuá	5ßÄ\\r·™æÇÁ..ÉğEfA/åÏW6Ìõb\\rbqÍÃ‡¸ñƒÇ9–êÌu°vŠdäÒeÒ,òZãÈH]—!Ï~ü¾¼eÉÎx%†}Çvø;z\\\":™É¥¸Ì·¥Ÿ¹ÈªJ¦cÌ`Œ¹.}@.‡»£Àøµf’>n_Ù—Ø›³PÎ®t-O9p¹LÆWÏ†Où—=øv)¹X„ü¬q¬ñ¼Imú­3;nt<—ô¶í³àğœHc>Éñ]Ùl8\\\\f£¶‚şû,—Õ’g^>íÚ{ü6ÌßÍ–ÙÁfAÄLÀz”å»6÷ÏpÜ“­:¹L“S%®¹Ë†<ğ¬¿²¿şMÁœ¨€ğ\\rº™¤rm–Iã§‡¿ÿÙ','image/jpeg'),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,NULL,NULL),(26,NULL,NULL),(27,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\06Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0g\\0T_jk48PYzts5Jvwaa54P\\0ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0\\0ğ\\0ğ\\0\\\"\\0ÿÄ\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0°tÓ.oi°±’7HÀÄÆ}®ÌİÈôÃg\\\'L‹¡y©çIÖ6S(K®\\\'½>f¶eÏE¯z|æ¸öòåOq•GDÒ¡Ch¤–c`¢§U¼@w#h\\0#ği(ÁLÖ}ŞPVù 4PÖÏ°¾QàÄ]¸ûkZ×k^\\n\\nQxiY0\\\\š`´êêö^Úè&ëI|ÊNZŒáé‹Jõ6»®8ÒãLùs…>W^N—µ·\\\"X0\\\"|+Tù;5´0ó¤á¨QÏˆş}vÊô}¿8@Î‡²Ã;—YÏ%ô›5Ü%%}G8¼Ó‰¸qœµS€à×‰èÍtô–óšJL1Vˆ‰¡’gGÌ»øÕz¡Í•k¡¹9!—½„¨Í¥­­dIËå<•C–NÂfˆ2gQR\\\\©\\\' ºj¶ß•·¡¦i\\rÛ^Iœušİ5¯è‡9Xİ4òÌ}ñ_W—¶ª»wã£ë®T h¹‰É ß\\Z±¼bÔ=:ò=pàÆkÊ•<\\Z7¹#£+s1Ô{¢bkeÍ\\\'!‘\\néªƒq^J‚¿nüo;0òê(Âzy(.·(§ÃÙzr€£B ºîÖ7*Mt´§ĞÊøf2·<Ù–>¤˜l,¶É’c=5ÇİzÅİ»ü”l˜ù7óÍ*µPºÉX‚%‚G,ˆl¤Õì±–^«ôîe‹Ù[¹/7˜Ã4.EüË`ˆ±}^mRìÏ‡5¼ó›¤Ò¦ÕŠù$ÊÜlĞÌ\\r¡e~‹KPé2ó!Kj+S^ƒœZ\\\\R­éifj›b;•²@ë\\ZÍayĞRpÓ²Dåë\\ZhÕ•…Ç8\\0ÖG±¦º|×z\\nähQas\\rÇ2nUjô®dzx€Ñ€”¯d4“ví:-)sW8ÑÉÎ196+K«\\\\yç\\Zé¸—£S¼¸K\\\\©ú5Ö¥rÒ²\\\'ÄŸÏ(E¼Œäœ–¦>Ås†ÁêVç &¶ÆZØv	––ál5hÆ›Ï»Ôa–Ât;[á­ê†u‘ôU·‰ô8~È¬Ï3íğÁ¼ŸoäAª²Ad9|`pº‰6÷™ödùİ5ıA~+H=u*,7+3/jªÑày÷ƒ«~—^¾†=MvóÖóœg«Ÿufëy4%ûäÑ7qıŞb>€N«›\\0\\Z©ç† ÁìsÉ:?ÿÄ\\0,\\0\\0\\0\\0\\0\\0\\0! 1A\\\"#25$346ÿÚ\\0\\0\\0¬_‘xb±—-1\\ZÜ”Ã	’Õ?–Û.Ç$åSk»!ò%ƒYº²(¿UU¹/áÈª«ê\\rU1ùd=˜È~¥1ÇšÜ5³–H½ªÊÕ?Um®2+LVÍCb:¶Uâ½øÖã×Ó}dåTr®Í´YÓoÿ\\0ÎäÕ]½7+N§Ôf¯RPï :7JELÌaEøês.c›F]>‹~%xÕÖqºui^}T¥¡¬_ÑØœ¦*ÌúÕú†pßNş¿éş˜¡sT¶²ºíéUU]C=W2uOúXyQNÏJ0ëÉ¬t‹r*=ìÄÈÃCN[dk©geS~GÔÔ:nõÑ—Ó®®œÜlš1\\\'Q¹n¦Ü0qmÅÂ\\\\EáM7ÕFL¾ªò+ÎÊœ¬ZúM¿éÛk»3\\\'\\\"«1j²µÇ¦Úq¡O/“şœ‹‹‘‘’?RêÙtä× `4°jj¸Q P\\\'Ş8B·¢ó M$t÷XoR§ŒªgµÅ\\\'íÒÀš‹/ş‹_65ª«ñD:œU†ˆ‚~wßÊuŒw2ÿ\\0¿(ÃÖı£{µ?ÜÆ`!¶`¶+îrŸ‰j³ÄÕcŸ&½ùw$â³‰øc6PÜSs0\\rCì\\\'¢ö˜×Bû››˜‰ågPñù¶Î+Ì±oãNÇÑüöÜå9J­âj ¾@ş=Â¾§-JìÜêÉ·#˜[Rµ²ÖÅ¥q(›n}Î[‰GöÉßŞ@O\\0Ó‹	¹¸LßíÕM¦hA¶#(â6%VE`cäÆ­DL«ÙiÏAX¼;ã·Æoy_Ó¶à‹aË$&¹´Ğã»¥	–XĞhë©½OFq”îrhXoD7F¼Ì6 eÚÆ	Qı×GoãxkaÛss}ƒí³¸¬eEŞFá¥§YQØq-ôy¹©F1‰\\\\È ‘®1>üŒıû+0\\\"Ó­ÖÓs‚Î+-Ğ8\\ZìñÄÎK7\\nƒ8BXË¿¼ğ0˜´,TVqØ¿âãº¸g­\\\'±š—k²ıßÜpSî+•‹\\\'Ô,ò‰°e¤ÀâÂÌ`Òº8vKã$ğ˜µÌ¬UÛïÇÊhÎ3í?\\0Ë4ü öÀóVôPÄ‰¡Üö[è¶æh¡Ú™®ú³]y*Å$næ‡j1­¶YuXÆÛì¶j/ü—4K=n3{€T±ú_F½J¿lÆºrÜßa7±‚~5\\nÁ4ËÎ·!·Ù` ì¬Sí\\01‡jı¶½ZåoÄ×vç8\\Z¦ãFˆb0„Ü–‡²Æµş¾ÖÏ¾¦µ*âAVÔ {‚°Òê˜5¾¢Û¸¯Ád\\ZXeg½xÊˆäø£z\\\'ÚË›q6O\\\"\\\'2e3Qc}²j!ŠÓœåâ´´Ê¥Xåá»\\Z‰mÏsj\\n‚!˜öxÚÀ\\\'çöXÆYî<¸\\Zr•ÛƒhîööLf5îµÄÃò©ä1!RênrÔ{cY·7œ§)Ê mÄ€4â™¤ø»ƒF0„j+jPàÀÑå¬g)¹¹¹¹¹¹¹RE•°^d5—O£lˆ0@Ğª´ğOjk³ö‹—j¾û›ì x¶wÜäg\\\"c|×ú•=õ5©Q<Š«)…uñsp?É¾BHãÊk²ı¢¾ pc¢õøûšŸNÑ±Î¼FxÌñË¾u\\\"µ:£8úáï¡3qLå±î €O\\\"Fqc-ûü±~ÿ\\0Ş»8›››ìf¡]v‡ÄË~ÿ\\0,ïñğµ’ÊÈ0@!}Ò”d\\\\ucfñ”×}C÷üãV·eUCuAZıkôúUú^Ù94œ{òºRUÓ°ş­¨£(àcÛ_RccåUôéúAÆ®Œ.,•åãàã>~SZô´ı;¦P™Y)ƒ‘wOÁK-éøËe8Ö¥w?Q];–=Ì]–ÃNóÃüŸçÑñ?Tª‹-ë*–¶^ÉÃÈ­0ºŒé\\nQ±ıôjîºa½IÑºÊ8¼±-Õ~—Ëmë›g~¿§Sàë8ˆsºG1“šOLø±„Åbú§î6¦Oê•y)ÎuÎšêÔÕ2qïj²Sa–½Nºæccœ<›q#fê¯ª#¦ÕÇ°ìÙ­vu¸¬ØY%ìúÕÖcåøsiê\\\"«ğ3[¬ek;—œÄßm¨~Kœ·9j3oµV”•äªTŠ×GP#Õ³Ä,?/ÿÄ\\0\\\"\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1A\\\"2ÿÚ\\0?èš:#¢:¤uC‚³¢²Ö‹hîèìÙÙ’WöuGT.]sÎy1æ!>ÎˆEDğŞÉp*((«!Û%*Öh¬ñºb•’‡6)ÙÊ­T†íúV8y?%d¢Ğ‘D‰NÉ¯çQX\\\\C…øt”N;P‹%\\\"2²KY¬Eoãæ£Ë9’‘)±¶ÙÃö8èäãıÍ‹%£gj!ıD´~‘	vC±ba–K\\Z\\Z9tÆ“%ÆuhøòüÂ‘ÑxcZ+EüŸ!o:#¦FV9P‘Ì„Æ¬á—UG&ñEb\\\'[(‡ªtFV}•è¤)\\\"Ñé/²È=–}ú¥ˆzMl¬E‹tyQŠ²*½kúôqLZ(I¢ı%*;	²\\\'R‡ŸÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !01@ÿÚ\\0?Ù¦lÍ™³blÙ–/ccf[1e²ÍˆøˆĞĞxˆÔ¡\\\"ŒWƒF¥–_[Óğısì\\\\1\\rp²¡³	²Ë6.r—Í—C„âÆ6mˆ¯á³pÿ\\0DÄcSrÄ\\\"Æ\\\\kd\\\'ÂáğŒ_¢\\\\¨®×ké¯¾Ëåt©±>ÿÄ\\09\\0\\0\\0\\0\\0\\0\\0!1 \\\"2A0Qa‘#B@Rqr¡±ÁÑ3PbsƒáğÿÚ\\0\\0\\0?¨ÊfŸ/æ•TTŒÔµ…ñ\\\'u–3Eå7ò²×”Ê©†`x‘2©ÓpÎ/üª£*eÎ™±¡TC‡ËÉ˜1«„Ê>«ÂÜ¶¥¹¤h‰kèT-Õ¬7Y›¯’cªä-u¹{\\\")\\rÕÎĞ\\\"ñº­LkİoZl¹+aß÷”jaßx†j›‰x§Á\\\"ò4¨šb›™6œ4VŞd3¢uTÃ4¶5”ªá@=ïtö0S!‡¯²ŞJµ1®ï²Î47L­¾¢Æ»óM‚½—»/)Y*A´‚*-\\\"§’Å~Ğ°õ)ôâ;ì±YtiËì©~¿Õa7•… \\0¹ÙaÛJ«j0Øì«Óçaî=BÀµÂAÿ\\0¥‰`óüÔ4DÑ•Z³k6©ƒÈÃtÙüÆ«‚ÅÓ‚\\r7r*˜jç+j_2ulfÕaÖÉ­ëiU\\rÚc2óÔ«è«`‹HfîÖOêe<§İa±”ÅÃÃjˆÌÙŠ2\\0ôÿ\\0%ËlÎ¿º¨ÆÙ¦œåO®pXfÔ¬)\\\\…‡«Š²îÂ!VÃGÍ¥ÌÏUƒó·òXëÃe¢Úş¶tYU¢çüÒM•:ß0›±9\\r0>™T*PxÏ$B«‹¢s1±>¡aM\\\'‡A2±Kşay·İU~Q¹:«İvk¬eAP¸òBoÅU›‡–Š½\\nƒå9ÒÚ¡º\\\'îk:»ß£@MiÔ\\\'š¯Ê\\r4ê•_ åL¯R İ]± UªŠ£#ÛüQ¨ãòj:¢Ä>›³7r°tØù{Kd\\\'á19·Dò¼vOÜT~\\\'ñ\\0Æ‹.§R¨P©ˆÈ[}%Q¨ÌVx}ùb±T˜0º£º|tZÒ=—Hö]\\rö]\\röZ7ÙX!ƒõ…v4ŸÑh%FP®Ñì§P´mÚ\\néo²ˆ²èo²ˆ¬Ğ>ÊÌo¶Û«G²ĞIZ.R®8²öFWV¿”lÃ‚áYÜ@íºµü›(´¿¶’D©eî­§‹§fV	+˜ó,Û`+ps…Èå§ì¾Îd`ÎËíˆRà\\\\²Q¦;§e¼UÚ\\n»Wuß`Ê £UŠ=|+¨ĞqXå^|G‚;(™RÕ¦Í/Å™ËNëÁª¸]¤.¥ş\\\"ë\\nÇ€Õ:lÒWNÍ8\\\'d+l¿Ú	ÕX­Uø,¯uaà\\\\)Pá˜.Cöân\\r$.S%§àùÄ®WJº†ù”æ1¡ÎRæ6Øªºl…$ÏªõMuX}Cô+ò †İx!O‰}­u7K‚/y’|¨róWÛuo{ˆ9[Ù½Ê1aà…eb¢Ş5Ög81e|¦ïùŠÌó\\\'fcaáfi·‹®Ò\\\\v›\\0¹D•\\n¯@Õ:è?ÕFß_ú/ ´\\\\µ!\\0bÊêÕ\\r×RÔl¿à5Zø2¯§â³—ğ\\ZxšÜ-V«›f¾.¨øgüårçB‹©ã¥MÓ•ÅUÃœÛ¶¶Eÿ\\0Eºúw™Šf›!lêo[SIìDÜµo;Ö€\\\\ç»-6¢Ì;ª²¨Ó7u‰óf§kúÕYEåT~Õ\\Zö}/î¾+›y>~«}_6ùı\\rAq’š×²»‰Êe2½RŸe½æßeÌ²Tœ¹fÉøzf³*7ÏEˆ§^f—‘O¯ˆqm}¥\\ZœÙ~‘*NwkAq*‹Ò×¡XÙı—üßÕRÿ\\0oû§\\0ÇDõJ·!Ùœ«çÊh½¹@ŸıêªŠtËØÎ°œ)´Ñ¯­–1¤Am­÷U€½Ó·\\rqÍ„ÇÖnfTÌDæ¦G/B|Ó7ïªÓ–ÙE…´AïİÍÆL±*­>Á¦?EU´˜æâ9®ë…ŞİßRc°²)3Vxí0æè…S…a®g•ñ3ó÷àÙ¾üÒ¾* Î|´_“¼å•WÚ<Ïluh›[R§×¤ÀĞş¦›Ê&†”êªUia¨jêe@ÌwS\\nu,>´õ3%|ï¿T£…«OxÎÆt@4I	‡pY”y£PÑ/\\Z­ÿ\\0×›2Ÿ‡¾L±™NI’ygÍWª(Ÿ›Û6‰Ü¹˜í[)ÅÊÓÛËğ~{mİ_Uš,¢øÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0!1AQaq ‘¡±ÁÑ0áğñÿÚ\\0\\0\\0?!B\\\"TÛ^E®i4x8pàc«oRuI‚2ÚTÜŠäR9\\\"à4\\0­$‚¹=l£şA‰)g7´ØDŞ˜sĞ‘Ç<™3 6	FN;XØ?Y•²9P\\\\pB¨€hÿ\\0ÀÑÂïF-#^³n‰Ş…5Vfˆ4†¯ö:ÔõÀˆåD\\rBMTDˆˆ©9¬bË:|8h7*ªÅ¹Êoöbqå?ıè‚y~Èşû\\n‡æ²œuo–dW\\\"3ZU?€‘P.°ĞD´î¡-ö£ã)ëÂı™oÍ)şÄs¬ˆûÚ¤ñHÜ_ÙVÅr…)‘ÅòI;;—\\\"I2Âóı¯Ñˆd>tÃR%Åê=ÿ\\0îÈe´pÅ Tİ ÷m0æ•ü“²jÑMÈà^\\\'JÊãÀ­F\\\"B»!ZKM\\\"¤ş:\\nÏ+]2jìrİBøµ—Œ±bŞYIj:ñ½‰K†2ÎÙZ\\ZHOTï£kšKtE8n¦0¥åV×÷üwâ«é	ZÚÊ•ı\\nTt‚—È×eÉ¦P“jò+ö¹ymìÂ¥áÈû%ôİ–Kås&Ü1nê¡=RÀQö­(›P¡tkplí±«Óg?ö&Ldy£K#B%6\\\\<`ÜnùB[•¨ÓLnY%x%“¸… AÛ\\Z29d…Ô—Ü’D¾?@iMr™w^ĞÊ5 ô„\\0¿‰!É’íé<<]åÎDU¨Ë¥t!0d úcÅ`ÈOÇU+!q€˜uZ?,E*X/–Æ¥îÃ.ÎSÌåØ¾FjcLÇ\\\\\\ZzŠ¤8Ù‹µ{\\Zz}¢¹OÚ2á§öFœ5Ø²ùfZp#bÒ©•cöQYcvæ	ù\\Z(ù\\ráCˆ„CŒPÙY<£ƒğ¬«E\\\\ŠMeæÅ()?@cû•\\\"Á½˜{%±ŠŒxs–Z—Æ*‹:\\Z›íÑì‚a27Ñ5ğÏí&ª¦dVj…4bŠ%ª•6]–\\\"Ñ-öŠ‚3jÀ^m@cx)î\\\'É€Üâ@y©[$A”OÑF<e°Â2ò/†tÓAà0/Ci;hhtIaèc#Y{\\rñÁK*ø½†YH„5àcTäÄÑşgãÊ¼Rs¸2IGh½ãÁ„+£>ßŠÏ?’E%ØB÷}¼5˜†ƒËÈÆTù±7ßQ1t=%¢, ï\\Z+A¢°ÄAºá…7„•Ô\\r¾Iğ,¢=(ç³\\0E.Ëä!¢Y²BN.[2œ!g&EOäQ§“í‹e£%„É¡íªä=:‚5† à¡¯\\r\\\"tÈk„J^Ã_DàÛ¼Z[1\\n¼¡¥Ÿí(ÀnB6õ¡gƒEHcÀ!AE\\r3&I#¤Åì.FT™@Ÿ!ğöb¡JèrÌSqvFÇb¦UÁ9ßì|Û„ÆAYšÉ—BEÀà¨3±R˜¼>g%€ğÜAk\\\'w iæß‘ÂÊÁø‘›vë]ˆ­Ó±Ú U˜p!Ú†¶]$Ù‚ø&?‚`}Qá˜…î‘LUˆ2MÇÈ„ÛœâCÀlzÕPË”‹dz\\ZÁÈŠÀ%ÌGp5|eŠ¹ßHÔ6¨ÄVE`ßĞÔ*×+´[üw;O\\ZÈ½¼Ï%ô$)	dg€µ$2šU–@7³ŞfÁÇF¹òó¦\\\'piP¬6</ÊZ¨Åip.œñŠ>\\\"CrXÌÊ¹8i Ÿ±İ‹kdÜH¶=_mÁße\\0åÇá-ğ¶¨êÃ¹Pü|\\r‡¡’t*Lhüø‹=ˆCÒP”º\\\\\\\";ìÉdXÛñ¦dÀ»<@¥6Ğ°Á		|Šÿ\\0+q–x¾ÇöÅ!n—NrÇœ?ÏC‡†7¾t)òT¥\\r‡ïâ¼XŒ§n!Ì\\\'HçìO?Ÿ¢€™8ğf%òÅemùdğÁaÈù¯Ş%M‘p -‘áT¢nø1[%{ÙîñKìŸ!ç6¥Úÿ\\0,SJÙÈ–xÈäÔˆZ~ObÊÏĞíÉøEÈ¼0çòÓòJÄW¡s¾‹O({ä<d§±VYéMc!ø&ø$h®|$)3®¹èlæñĞ©à\\r™PNHä?c´™ÔhLãÎèÈXÔƒI.F&D0EùÖn\\r¦l4š\\Z´0¼*²ŒÔ\\Z(aÁv\\\'‘¯ü\\n¶1ho%ğ„\\0‚|qÔ.<XN1Ë	Á\\\"¦FjäìÓLµçÃˆC8bœpÂQ£{ÿ\\0ĞÂ=÷øÀFÖ_r¹ÿ\\0BWWm§RŒ²‰W\\\'a¤cŞ±3•±q±·ÓşƒrÁ‡¥s_ğT˜Ö¶ev‰‹åÒºñZÛÑ?B„LV?cùi8_³SWåC\\\\ÌÕÇr|Ö°Ó4½I½hUÄ’Åœ‰iM&0Ém{M!.‰|dx;QY’‰.Lò[ğ3øQ¤ÿ\\0ş†oa,•:Ú¯M-‚ì—ñëì>ZN<rRTšvö$j)ë¨¤Ö|¡»¸EÈ2ˆèç›”®¸ÿ\\0bîì¢²ÄÊ?¼Ğğà®ëğ3’‘¨Y@ŒÃ¹6_\\\'Y{Ã^ş\\nRŒ^…¥\\nŞÈp@ ]×tı‰û¾EZ¤1¡6=ÄPö/¯Û½ö\\\'ˆ¤ÄHë;èÛë`g?ìPı%,n–î_eÑRÜ¸­rÃ+Œ¢Ô$:ı÷CÍ\\\'“;ĞÄÙ išÛ?F¼Ì‘Çr«¿#bÓ‰¼ƒ9ÇåÃÃ8Ö¶ó0sìd\\\\‹¼‘>‡¨/åÿÚ\\0\\0\\0\\0\\0sV¤:Z÷ßÆ¡+A¹Ì›£ÎVOåˆ×ëq‘A™¬šØØ?.#qêFèRùª¡‹˜éa1È¯-›Wtá{ñÜSèO¤Ö‚6*QÕM\\nìa®úæ\\ZŠNç\\0<_ìÙ`\\nŸÂ¶!G­}Æî¨{N+»PT!¶$½qÖ{/Õ/«šÊB§ÃòE6î,®íÇÆ\\0ĞÊõ€¶ÙÉÉœö•:–ìÎ}Ãeä^h¢y£š£#QçÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQaÿÚ\\0?æ_ÎşnrëÒÄBP9+ëÈB‘°[@lyì›:À#X=,o’Q2Æœâ`Ç[ÕzÎè}€Ìl¡N,ïZÈdMR\\\'	#©0eÜ­å&zÊ>Íé‡ËË8LË¸Ø6$Æı|ŠÄ	·Xˆaİ‹$‡·ó¡¬«PFÏfdôlûŒ¦ö1É–cÙÆu[	ÀšÂA =\\\"LYvÁtL@]œXæÃiòÔ>OêO ‡\\Z9kÆÚËÉ“¥‘¶Ø¹÷*È„í€í…ÒãË­dgu^“ÈH:ƒy7ˆà>|\\r-±\\0‰œÔ°a-Š$j%8YñÁË7°C¢jÛ¶¢ÅÒBØA…£Œ6}3š’xdèöã,÷ä°`3\\0¼‹eÛüXˆã’âLóä6ÛÔYeì¾‘£nbÉ±µöé§>°°cğ9l†ù#ò@<§ö%ìƒìæ±f¾¦6\\Z‘d’+o—Ú \\\'`gÅ¢]l¿ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQ aÿÚ\\0?ØíşĞ_g°¾¡7¶ó!¬nl Í´@e¾ÊˆÏí«±ş¯ÆÜ#·Ù²O¶\\\'Œë»göÑœÄ-÷ö4l;bW%í¿²(ä¸Êù*Ä¸…BÁõà)n&däû²ä>Z=Ë±¹ËQúò¹q„´†0m„ˆv(ÛØSÀÛ²ŞËÈ§~\\\\{ºvÀÒtH°î1v_P2Gäş3È=@İ`¸df.³î(Ö^á+òÔ»à^–ŸwnÙ7²oLn{º|·âWmX?`¬yáğ‘dÏs›Ï8Ù6qk7l‹oxRãî}óÉàƒ&?ÆO{şMÎH³¹ÎİİùÛme¯„Ï#m&Ùûàş{å÷ŸÀ¹„·Æÿ\\0wÃ™–Ü¶\\rƒ	÷ÿÄ\\0%\\0\\0\\0\\0\\0!1AQaq‘¡Ñ± ÁğÿÚ\\0\\0\\0?{ƒŒ»q>0ZM$Êïx)ûêìyÈP@ªWs‘ï-»(U–=d¦>ÚÊ†‚÷šÅa;.ÔtòÈ×P56Ğ\\\'xå„V!÷päıàc™,v\\rÛ¿‡ÚDP›Ğúsx+a²7((t4çf¼`ÌÜâ;/lÜ:1¾Yl—Ã\\r¡Ñ™U¡Êñ.ş3–K(<cÂ!\\\"¬]Ÿ)†c¸€·Tüà-–‹!ú`Dá)Y@ƒbDp*\\n²•\\nEI¿“;˜Í!H¬u½`dÃÓºÛtñB©AÉ‹¹Üã²ªvK‚ÉîÁl%ÛÆª¸mÍO³”dä\\n;=™½Å(Ú“…ã‘/ØÂsa‡Óàq0Ä!È7û&œEœê	ÖñX3•£B·@ıæÊR5%O;)ÃÎĞ±8ğ—\\0Æ€@|aÛ„ì¬üå6(ET\\\"‘Ô»†£RLd%<ŒVº:Ùİ\\nmAğ1)¸”–$ÓÃÃ’ŸŠnx\\n w#Î±¶u\\n¶CˆõŠ2:’®»ø0`»\\\'E¯è¸$P© ¤Ñ¶Âå<‡ÀËÔj€P_ËĞñ‰°ıÍ&’w… çB;˜¢TGèƒ<[m@ló÷›áÑgÖUÖ Hô‘[ëËV¨h¶óõƒ±¨¶jŸjÈáĞ1Âtã¦Å  ƒäç‹ŸJ—C¼iïY@J\\ZĞ=à	‘Ğ^Ù8NûÂkŞ2JBM?8ÚÒE‚ÅjÉ›p‚E„i¨—g ä	Cr-ë)ÈfP Ù8<õ‚D#¶hz¬*Ô ‚5ë*³ñYXº\\nhÎX-ĞNE‚Ş>ğ2L .™çQÃf*5]¶Î±9zVe¸¦Ù¡èÄUHQ¾è;„ß“Pñª…‚°ûÖ½zÑ%º¼w‚ÙW-m™TEvxÃ\\\\” S`áúF°ˆ¨ëY,pÄÚGc\\\\İğ3²ğ\\Zyl8ÉÆıå+ûr!yXOÛü° (¤çpğ˜ÄÚ¬^\\r0%àĞİÖ±%Ç\\n\\rûÂEÒ0é1mB¿Ì!½5ÿ\\0™6Úó_#üÉ’\\0	ïÎ1*´\\0Ÿ\\\\µ5}©“Òh‡Aë(´Œ¾qD8è‹ÿ\\02Sˆ)õˆ8a/ÎÀ„Ñ0E÷Æ:H¥5Ÿ)–Oàÿ\\01A¹%×ÿ\\0I§ùŒYî³‹æI–£êL6zÁB[§èÀA7¾u†´å	qè7ï8½»¬e*‡û04y”ğ¹0y\\0˜JºòúÎ \\rÙLV‡œ€tú¹b.\\0åÂğy!¼!À+¼+§#’ ÙÉ‚HJëÊê¡Ür8İã+:uËÖ›#õ‘èqç‘_æAÑÖY‹}#hB«]€ÌJ65‚LnM@9^24\\0Êw’~ğËBu€`Czç)HÃ[fİ´å×Îj©x!0mHñË¾‹Š’öìÊYƒ:@ÕÂpÜ.1éë\\\\â\\ZFléÆH‰‰rNrn¥2ĞºwL°òñŠ»|œƒÕ~pØ%#c6¾°>ƒOxswÜ%ÂVÜŞ¸Í‚ÇªC—A‚¢»V®6ï\\\'z.iÛ‰Õ©,É\\0w€n›Šà”æâË´;ç4¡\\\"–>qdWOLc\\rã)Ü»ìÅló˜QpœL%óŠuÃï-C€Ä+=ğ‰9úÄI\\r·º:Ùíz0VÕ*Á(M&nAÎ§ˆ4ûÄÉVøÆ!€8ÁšÄœ`B{Œ¸\\\"GgE2™ırŠ²¸@¡C\\Z	]K•.“¼P¸;Æ£‘OXgÀï-ã5¬¨\\0ã4‚DI•zŒTüáFá#–L^’Ì¾\\\'“ÎtÔöùqq\\\'`}dÀ€q×EíèÀ\\nVrç õ°È 7·“nw.íø÷”¸q¼ØÔÖ‘Ë§Ù”\\09ÈG:81ÆMûŠ]‡ŒnD/5Í7%|auúcrç\\0á0\\rEn¿ø±läÍ³\\0i\\\'Î QèËd¼»Ê¡ËƒtÙÊ¸]¼ØÆ2‡Wş±iş\\\\RíèÀL@}Ş&Ù&©=­§ 	{¨àË\\nfÒ¬M`Œ7ñ”•Ra&0ìÀT4c¯w_kÌË4ò8İõ’¤İ›®}ÈV°ìä˜é<”À€G!Œ$qq1oŞA­b­äB\\0«¦2Ç!;q·Ö&#\\re³Œe@L¢ÖÉ¢£ToŞ\\nm&Ó.Fã´Î\\Zod¥ßŒĞœ¦éÆZB\\rë(!^}åWË¶P»­§œ˜ê\\nİï¼:-7°<C÷†‹†hŞ*\\0|åªƒn\\\\e=KH.µCy®0%gÆ\\n†‰”Ğ½bù&ñœ\\rØcçÆ†c½Öñ›Ú]ê‡ï Ô§R!¥ŞNwráš	¬y.ÎpêÆpÌxƒS™„	—ğNHn(6…WÎ<H!Pgœp±u§##îà&Úó† vùÀôeÄŒìÍl\\r•,À&ÿ\\0º\\0œ0œ6ji¾ğxC qHİï	¨Wãd/.s#ª˜ËjRd(A\\\"løÍ0yiÙ€Y¬Ú÷‰ªhS¥ãMQÔ+›`ÄX+å„¼•Â@ôÇ‚#×Ænÿ\\08È	z¸\\\"2gzÇÆ]²Êc8ã%]¸0Má‹9Àˆ‚b\\râ5Ï3\\\"»k¢3˜Ä8×Æ0Ó†\\\"nâ„4ç˜øèb¶ï`é=dğ™\\rjãá(ñ½—œ¯¢9Æ:€ÆÆ®ÅÂlT~²(…äë\\0,ğyÅÎÊp5*zwŸÀ–Q÷ŠDÛ/Œ¨êhq€Ê}à@iñƒ³8K’7re_S,;Ã@4zÁS.Xø?Ts‰ˆ¸2€oT¡tÜpL—Ñ†2$Ğ<|²TXÓœ&•U­åÊ99	ÆñÆv€ŒœZqˆ\\n7‘Íó¼†®\\0Û½ñ„)Y ùëDßÆ)_,€`bŸgŒºÿ\\00ÃMõˆ„IŞ\\\"MÇ<q\\\':“N&¦0À†¦1,½y½Ià€wÆÆóÿ\\0Ì_¯àX(ìÆ3êà4f’ìÁi¡áÀ0ÁUS-(E{0WÏ·\\\"k¼\\r³Öu\\0Ô1à,uŠ@xåÀ\\\'OX Aò¸0%÷ÅÃXâàˆK‘2…çx¡O9ƒ{q!‰)­uè/„ëãÿ\\04‚îï\\ZÊn°Ç¸ ‡L\\\"\\\"mëŠ\\\'¬PBÍÜ…\\0!q5qD‡¸×6õ0’4¸„àñ‚\\r¬ıb¡ÅÇø‡L´¦!¼o X=b*¯t¸¥¡…ôwŒRˆt€ëaÊ„íÛğaô?=àXR$ÂŠöÜi‡izÀD5-00R±ä|bÈ—ÁˆôÓçõƒF­Ñ—ª	mÇë•]zÍö¾ò“zÃ~²!óì§•Â¤LåSuqÁÊwç‚.Ùè°Ô\\n¬†£J:_©Ô<}b*0èÎOüÃ×´C<1VÀÀ[\\\"Ë–ø‚ÍÆ[CÎl\\röõñ—-n†Œ…yÅÖ€Ÿ8·\\0úÁBàö×.ã²‹·£\\0\\n¤¼Rß±iòÁEoÄ¢Tà0S\\\'äkŒ\\0yï$ÀöáÄ,bfÒk%†àr.\\01\\nÎøÅ*¾t6ùs‡öÄ.¿¹.ÇS-ïX!Évq„WW\\ráßÎ†ã·(\\\'!ŞYR\\Z+0F¹‚¹÷`†×ãÜ¢{Ãg¼âdÎcRâ¥Íqy;>ónŸq\\Z„,×#ÈG‘ÊMÍÃŞL»]q£*_Y|Ê~T’GüÇMc¡W!Úw‚‘Œe8bMÜ‹çˆ‡ˆ	Ãq‡Ø.$ÑWj÷ÿ\\0>°ÂÀ€\\r©ß	9.Œ>sdİŞZA}âÔ‰Ù†)jÖj><åÑ^ƒñ“ñ0­šÀºÂa•ô3sÁÊàç”Ş<á“_‡ÀD£e}gu{	lÊ­&; GÆZ\\0®+qN.­rm¾ÏY:[èï]zeâ2Øo\\\"~(Àßı3|ZÍ¼€åñŒï…DÁ^O¼~»€ò¼Uo_ø¿ÁÂ4ë }àr¢¸_Y°:À)E÷›iUÈ%Ş!cóŠùç¼tÙ“üV†w”®ÍxqCÃ¼Suıã=ä	`nã×âdÍáŒl@qâû“w=vëÎ°Hùç$ÌƒWõƒP0rL5;œâäËÊ³–8’Ìn×\\Z×9\\\">ñ{d@¿8ëœJ¸z&q2dÄŸ€ª€®W‰·syiã($«<fÌ-zÀª\\\"ªÌDIƒ¬šÆb‡ŞOF\\0ÕÃÆW+UpØ4<Ìß)`è¼8n\\\'ñM¸ƒåÄ±]çyâEÓ×;°¢Ü&³fÿ\\0Ì¬ËÜópGŞ*Èzg\\Zb¨0 ğyÕä8Í&ïÂŒö&±½¤M³RF¥¿YHFßtRèUÿ\\0roF¦^‹ÉÓ0Ä&F!IÍN2ĞŠ\\n:5µ@Å’@\\\"œ,A¼ó—ùi¤Œà%n„\\0œ°ÛòáNÜAÃœu€whz\\\\Dm\\n\\nr DpÚx#Wz|¸í¹pgË‰ZÑ…i¥ÜÖ! !Ä!l)£\\ZŠ£´NÚÎ°2­ÕòÌb„¤Â#èÅ@U@ÀÅí––i]Nri±›ÀFsêŞ\\0Ê/Î‚±?Y©,³÷¬–q±©¼!Øj›ã¨mÌf¬³êâË˜±AĞ\\\\Z;\\0•öİõ«lÒ*WLgX½¸¤pi/ ÎÔQ{K÷„„-€ûñ­üa˜#eáÖñ‘Rƒ´îf£YjÁa<ò=×ÆK½Ô>9R×\\\\EŞÉâà\\\"\\0+AO•\\\\	B¡”m×šñ“b§aü&Nú(P·¾µ¡Ã\\\'xæzzÄiš-%U¾è®âkiÆ*ÜZ¼o%o¼*†±4ã†ŸYX›XzY·Vî	ÕÛ)SSã	ÃRÜèºs;·ŞLU4X0½b ›k¢‘§1æ}c]‹¼ä>C4ôïx,*šÍİoTSï,ú?¡*ãß77.’@;`	¾„1œPÙH§†Õxã\\0h&ŸM½3^“.#PXÂTõY1à<™“Öúç\\rÔçl”lvqãŒ70#”çƒ“NÛl\\\'b’ô,­Õ$ï\\Zˆ¼lÿ\\0¹{	\\\\ $Ÿxğmt,ñ|c¾„-Vò«Ä\\\'œ0§ˆ‡ bY§[1¿·Á…µÆ,Ëã\\n¹/²#ŠéŒŠ|c)[Ù„fd÷“gx¥ûÇëÛœ†—*˜­Ô.-n:ˆT{cDĞãµÈºujJb.ßbµ>u‚\\\"ûyË\\\\	’øÖGŒsÿÙ','image/jpeg'),(28,NULL,NULL),(29,NULL,NULL),(30,NULL,NULL),(31,NULL,NULL),(32,NULL,NULL),(33,NULL,NULL),(34,NULL,NULL),(35,NULL,NULL),(36,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\0œPhotoshop 3.0\\08BIM\\0\\0\\0\\0\\0€g\\0ON5FLBrI_mhxitw5eI3b(\\0bFBMD01000ac0030000a4070000290d0000ca0e0000910f0000a0170000811f0000d62000006e2200007a230000642f0000ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0\\\'8\\0\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0î\\0\\0\\0\\0\\0\\0Ä˜uÈÙ]Šj¾¯šë½°WªÉI®0t2ë}á§Û©£z€\\0\\0\\0\\0\\0\\0\\0t-š‘~ õ7ÊyÍoÓ\\Zø:lÑeF —ŠÛ&©Ã«÷†ì-Ç$ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0)è»Rx{>R½73 <«µ){+ƒîoçæ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\r{iÒğ±½À¯hj‘W8wh’íÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\09Ş‹“‘OqODcÕÖp½ÕüÀ@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÂÙÕZ×¸#aáMÑs1/çı@3\\0\\0\\0\\0’¥=}_7.6—\\Z=ğn±§‰5ìÜ4Ö=bé Sx“U§ÓÒ˜å©ùeİ_ƒpfaÏ—Ş·BóÕ@ù?™ö}z£È‰7³Vo&À\\0¤ù8ô[¸Mvä´”ºõn‘öÆW_qËõó‡ˆä$WYW½†z#HS¶û8À×f‹Õán*°¸¯˜İ)/2&¹¤\\n›dà\\0®Ğ¬ÕÕ\\Z1÷B<«³Ñ8vqÂK—:7<ö½€\\0FÔ¤íQg\\\'Òë‘g‡¸-_kSl 4\\0\\0\\0QŞGRG•sî-hƒÚóøAGÔcmÉ›ı®ö…‚ºÁobKÂicr[ƒ_ØDM<leÓÑ«{]4°÷£P\\0\\0\\0\\0£²…*qÊ¿Îîy÷dN 9{/)0¦Ïs\\\\):èúœœûZ\\rç¯@Ÿ¶:¶ªÎjÊ4šz/=/f9 \\0\\0\\0H6ÒíÉs¸`\\0ç.én¸ô Î¬šPÜ\\0 Å¸^9½7õ;[$YWí€\\0\\0\\0\\0\\ršöÏ/D-Ê\\0½ÌÎk)—G=½,ÎFîoÔnâäÅz·=•)~¡ñ7î^Ô‡æİZïèÓ \\0\\0\\0Èˆ˜„Ú¾‚Ü–\\\"y€\\0O—ì¹^~‰vÕztklMõÅã8Şg“nçğåÕaÓ~lZ\\\'˜1Õ\\\\¦ÉÑ,P\\r+{~;³·\\0N@\\0^W´««ˆŸ>F{k÷]:¬´ÅpKŒä×”}6·ÜGH$DDi±6M7ãgÇßs9rr»N);5ì¯XŒIéëì/æ‚\\0\\0\\0)¨m`FğRóág•üæº\\\'•Æv|Lk<W¼byA6şÜœÏ“:éÏÉc ggB´°e×·8ÚïÙÚ‹r\\0\\0\\0Ì[O¯9É}õ¢ÊÄvœ|i1|uÊ¯÷«œ¡®“Ë§p\\0ÏG)cs¥}\\0\\0\\0\\0\\0\\0\\0ÑIÑj9íŞt(Ç! \\0\\0\\0\\0\\0\\0\\0ÿÄ\\0+\\0\\0\\0\\0\\0\\0\\0 0@!1#$234P\\\"ÿÚ\\0\\0\\0úo´šñß5ÙÒ¾Ìì&qõÙWÎÑYĞ1ÈeõäjV‰Ôê·#óö¬=uÃåì¯AâS°ù1Kf\\n\\Z‰^¨jÅ5n­v×jªÔdÀ£qız\\\'ó“[ëêœ¥˜úšŠ›%İÜftµgÇgÄ×Ï‰­Ÿ¨ÂÒÛ…WP^†\\\'aMó0\\nÚí:PõØ_İ±¦U~2Ú¸›kdùlÊM­avU÷®PM¸>¾bPcãZ}€1`}æ,ZÍ1ÂPCàC:S¦»şûV.Zà©Zñ¼ÉUÑb¿ßÖëõ+!UxLo\\ZòÏß!ƒ?qOKWÿ\\0€¿Æ£ãfylÀ¯<÷|oş¾3R¦¼e9ò§Ÿ*ÜùiÁÖ+b®Öo¢ã»zÚxr×ğŸÕßÌû¬juÓ%jûó³JƒÇ÷‡Y\\\'ƒ]‰ÀÔl§+[E˜ğÔİŞZˆÚ<\\n:š‡²åÕT«¸¤­QëmP9U÷Õ•4¨ê?š¨„Œæœ=][€©Ï=åì\\rN\\\"b`£Âış™&¿)cl§­`³­`qVVÙôşó¦Ú§6¬ê„#Ä§¹AVÈáhæå¨üp-¹jY:ì\\\'^nJó±Nv(ÎË’w¶¬›}HJEQÁèEV‘úì×™šÖ!Ãá?ff¨Jrgh¡ş¿P™yŒowı‹¬ÁÈ˜(wñİõÚQ	!¢åñ™ß†”¾æï\\ZÑ*‘g9úy?‘“Ê•#?Ëì/èìäş2g~v¥^*Öã©¢û»*ŞMzÓæ–w0%…ÑTùcxÂ8Fï±ë‡*“¤“Á‡\\r´±œYGùKT8øèıxXd„R ø0‚ÕMãR\\rÎƒã¹;ãşù3´!E©X:‰ODF5F¥ydó¬øÈ¸­âwá§V÷˜°/¦,Tª}Dp¶;DNñíÔcø¹£•`İE¨HWW…»0\\ZŸBÕ¬M:éâkC4îÿ\\0÷¤~ÁkQÿ\\0ŞVü¶ĞóW£E·AK‡…ë$¼«TkÇ“Ğ·€Õ}®&ÏBÏnŠëé\\\'Ñ¿´£qĞç}?ÆóXôØ¨§äÊ¹:±²ASÏôô/ôüt}»x[F ‘1_“ë%øt¼Sy§éh_éxÄüu¬L2êW…ª*\\\'åWŠÔPx,‰ôjÁÊD§aÑcm;Ä„Lnéè^8ê‘DÌàY0å„ÊğlÚ^¡$?(œùDäê[çweÏPB³V/è£õíYõÂÌò×Ó‡’¥İíÓÇpåÎXÎ\\\\®×U1@&x=òö¬y×3¶Ylâ—\\n_ÿ\\0”r§üv®ƒ´óÛÈöRŠÔş±îîŠ¼CâùÛÇ›9±Ö9fªy<6êê>‹H(‹\\0êÖ+•{«fDÄğ\\\'¨2mÅÓŞZÕ¤XÆÛËÒBƒ¦¿n¥¾iÍç‹µcfÓ+¡@±\\r(yìznÓ9Ü¶¶mVÎNŸVsãêä&ºq—ë†ËlÑ¶£\\\'ôóœlYñ²Ş’Ğ5Ë0­¤p\\\\Öài÷•´ÊÈÇ¯ªš³ºC†t“A½OV¯;içQ´FvÑ‘Q1… ÓªJxÎÅ©øí“µ¶öKÅR½uP¯Bøq\\0îozõ†ª[#Bq’É“¥G£<Qù±Æglí;´¯ËĞ3³Z¸VW®­Ô\\ræ.Ì;¸Ó«ÊëvVû(³Ü.…†åzê®¿„Î›X:]hWÆWÅ)i)â££N	ÔêÄ5û>Â(ì*n¤©>DP]6\\ZSRæ:¶Š¥UÕ_ªb&!*ú¯T91ßV¹`æ)²ÉˆÀÖÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1AQ02@\\\"PaÿÚ\\0?øè mÌå¯¨h¡‡‡ôcSeïø)UÑt0ö»Ğ´e*p\\0$v‰_Ã]Ğ8ÁŒ¥Ná£SI½tÔ3ø©¶¥ì0qøh}/[ïğ-Ú¼ÏæçópğÇÁM—½ÀÎÑF‘‹ÕûØÂŒ;Št<´Ô£ht½hi°8”©iÜÜ˜NNmEp°ÎBùœ¤õ9kêGc6Q6m¢z=,¡¢“õ7¬Ø\\\\]+`\\0z\\rE^æ\\rÚµ“|§\\\\ lŒÙÛQÍÄæ§¸Ò«é[+9f\\rş±\\\"U©«ap31wbÃ{ Â`0:øı·Iïqğñ>:Ä¦ºÌåo´(Âfô<õæÜOqÓÃ¶NÖ€9ÛLÜÊK|Ü°G“jç/ÔµHœóê\\ZÍ3¾ğiünN ÿ\\0°ÔQæ5R“jmìN!99ê£§}S–±İSeµ¸½Z»â3)£i9œÕejƒNÁ¨‹Ò`­“e2­oşƒÿÄ\\0$\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 01@!\\\"2PQÿÚ\\0?ÆJ•*z$(²zQÕ5#Ô5eJ•9æ‘lĞ›%J›X²1\\\"ÉÈ÷íEäĞ85©Â,Ô?+[¨Z†¨8…Ò2ĞÄÖ=£¥ü^7/‘dr´ş¸EºÂ²¦·•Ç¬\\\"×	S··…¾xaw(¶#„Øj-„H@~ÿÄ\\0@\\0	\\0\\0\\0\\0\\0\\0!\\\"1A 2Qa#0BRbq3@r‚‘¡$P4CScs’¢±Á£ÑğÿÚ\\0\\0\\0?÷>•ÀYÇå¨«Pï.è‹ô†Úä„ÏıÇIK¤+æ”HW2Ì¬ÆçÜÅ•ÇÍ)O§æ‹´„¯ãLtÔY(1-eCÁvEõ]ÕHGGùf{ÇxÅ`šëïªÓ¤wĞNŠò‘á8EZ[2ñ§¬ÚÂ‡/w&²Ôd„ñ1øŠaÖ=É;$qêmee¥òÂTÄÔW#êÃì¦º™;¼bMĞHæ³(¿Im®HLã¤¦Ò’¥©ÓóÇï?º.¼ú|—E5ÏšØ°´ïÚ?1GZ9åV<¶ê¨LEÙ¹GÍ=Ø6©~JŠâ›\\\"m+^ßâ©¸¾o_Gİí¢›?×¿Ş_xEGïµ’à)&`ík‘ìU¾˜IšM£ßÊšÉ9DÄÕGQú@P´’“…PÜ6[? )µ‰¤Á¢¬İ6 í‘bÛ3„:;Cô\\rjwÚ·Ò¾;$CÔcÙ3 œ”:ÑÅ\\nÚläà—è4±Î{Tw8/ô\\ZS™VÚoâ÷¨€9Å¯ğÛ\\Zy~‘e\\rØ¶„¿î‹ÔG„^#âL\\\\yYu9ÀYç8ªİ¦SÅ]}Pu«àˆ»U„ıLMçéæbëiúmZØôËÒFÑ™fº{è‰`ì¦ŠÙèÑjŒHmQQâŸ[|ÍGŒLt§T×pEÄË¬¬›‹ï&*Ò†±¿âmAI:?\\rE5œ6¢X¨âvÔ¼›N’¥\\0ÌÄ¨Ì—<FÁÉ©‰RZ-x±0f6uqYóş1¬p×tâ£¢Fe]ÑŒ]£Èx•¨óøUpWtõzÚ)óFF\\nk†‘šF1t[Çl«„-ã‹ŠÒ¤~á£)wŒY Ö”¹Â“GIy“–@ùÇ´CCÂ\\\'%%å|ÑhQõ‹‡¬ÓËI1hK£•†*6tÙ#”qQÅ\\\\tğPÁP[sÚ#¯ZÍ×GŞ8,b6ĞÊw–a\\rŒ% ˜âm:f«yeÔ,÷RŠˆIZø¢n0Bxƒ8˜´CKïİ=gâ\\Zß0¥ÒNã{»dâÚ¥H°bz¢¾\\\"P¥p“š¯¢BÁqãëkdæ<¶C(µk²ĞÇ?=†µF­!v|¼ãZÛÎ*¦)8»êô‰¢ˆñQUä-£ã\\Zã\\Z•ï#DÌkÎà±iAŠªßE‡IQÊ\\r1ß“etµvìG$Ã…$\\ZÖ	m MÅØ‘×Ò<qQÿ\\0š\\n¤œŒNtw7|\\\'EìFc?õL)ºBŠ¥jFG¯ğº4LÄ­tbxÀJD€ØK)7UOLà  J£$€„šÆYGEGu,[CwéUd‰:t*§HZ“˜‡œ¦<á\\nÏJ^Nóê&:ä¸1B¢±2Q»¬å@m±$”İRËhº”÷ŒNî©Ãoÿ\\0qq¤Ï‰·L–¡Î+QP÷5o\\\'Vç¤ç^zBš©h<+‚ÙìuÎP…ºª¬%œ6””²Í¯¹‡.qŞpï,âvê¸¡\\Zæfò%\\\"œå%f“ˆÒeíUb%6	ÌõÄByµH¥ÕQ>Cªš„–0Rl1hüKä\\\"£É_Ì?ò5®¯XéÏ‡º+ã;Hó3úèeÄvL”9\\Zk+(ÅV^go¤l+œNŒñøh‚…$¡Äâ“îgã;KJÿ\\0gtÖJ»§„LZ\\\"ó‰ÿ\\0q)8|“Hö£æ³©M$o6mò÷\\\"xC|É;UT!Ô14…t‰´CHaªµ°š’Â+UiŠ™\\rè«PJ&ËŠo–Qy´9ğ™Dõ/ËˆLÄZUı±Ú?)‹Œ8}%	hUh3+H‹\\\'<ÉÄÁNn‘×¬ÄİÒáğÃÃ> 4s®*ØRÒ\\\\IUazR‚W¼£Xè™ÂHWowË@pZ„]lw”æs=hi½õ}  e¦ ÅjF]EşÌê+Ö}œSkaµX™BLòÑªlÉ®Ò¸Ápn\\\"ê6‘Š”6ê\\\"ó‡(*Q›‡±Go»|õ+iYÁ¢Òl}¿şœV•i`´Ä•uQf‹\\\\OÖ:”¯¬HV°ğìˆ¬µ\\0\\\"V¶ÏÕ@Æè„£€ÚäØûìŞW¤)Ô6PĞÌâbîyìÒùT\\rGSº±i‘üÄàb}\\ZãÙ}Ì{/¹‰Ôm<ã~±à›a\\r2İB¼\\n±ŠêlRz´t­8ßša “4¦ñÚ\\\'<¢İãi‹V‘ëóò‚µs•Ô´	Æ\\\'Vº¸ªØ[}á(\\0â›Â•ô†ÛíJgÏ«pL‡Ş7%å:èòTZë§æÙù˜º›N\\0gç}²ÿ\\0ÄpÓH X™\\\'h’¹!8s‹T³ë\\Z¦Åƒ}\\\\\\\"ã(›.£²åñÿ\\0vßa«êÿ\\0`d»X\\Z‚Ó[/ q(‰¤ÌhÕ´cœk^5Şû\\\'Ëb”¯æŸÃ ÙÛ1WR‰yA£Ñœ¹)’m©¶Ç¯¤¾‘y£?Lâ«ISŠğÇìßù+X•!c²¬âkö®^WXş¾Íj¦—p‹D¼á‹%¸­ä¤ã3´÷QÖ*´Š»4êC¸q=ØJJ&¡ÛÀÅíb¹˜ªÚG-¹GáßMKwåb£Ú¦\\ZsU&Z¶jÇ­’€#œOğèúGFÚSä6Š”d0ë¬¥)mÅ•äX¦ÔEG“«<gaŠ”|3pà\\\"ª1ÍY®FÑ\\r /v[g	@F­/%9¥RŠ¢ŠIş „ª–œıbª@\\0d=ßÿÄ\\0*\\0\\0\\0\\0\\0\\0\\01!AQa q‘0¡±ğ@ÁÑáPñÿÚ\\0\\0\\0?!ü9§–xQİ\\\"ÿ\\0Ò®ƒúí=‰x+ıÈR›şÙÔW.¢£ÃŒgŠ°”ßªwµ?ØO•©\\0Pgå/V¯J-*ä`í¥7©[§‰M,²óŒc]QB]<(Úï…o½×ã’t (øáËµ(¤R7=\\094şğ\\\'jmÇØ¤â\\\'â‹T\\\\qÿ\\0x¼áŠË‹ôšı#+PõiÃ‹}AÇş™PSo÷X±º]ú¬gKÄu`ó¼kSE/ı1/ÈèşjI\\rL/³mVPg³·ò±ÓcŸR)}©š+™­ÏèN¿şÔ *Á}ö¢dœĞ­V*!AÌüò¼U}VçŸšD`Hò’2”Õañÿ\\08v§µÔ~y¦¦\\rJÃ[4sÿ\\0ØKêşö­¦c×”œ$Hißü]Ÿ×Ÿø|¹VtÙ÷Ç6]!ıñÿ\\0FÙù¿Şh»/äÿ\\0ƒb˜=Şk­¿ƒ«5(-Õğ¤ûAš^ë«ªİ{Kõ@{f4´>Ù•CJ\\\\™<>ªÃŞd§+Ï-Â©qõçZÍïz´¾·îÖ¥®È7»•%{µñX÷{‚ˆ}cÿ\\0*Eš·*L_ò€\\0åV+iCé?çª©bVWµ×¯ŞÕ\\rÙ¾¦/š›\\0âu«UA82¶D:7­öÒ–kP›~Ş\\\"¥H\\na=eì\\r(77À¿•2#ƒÊºò9uQ³ñØ\\n2ì3K®˜Õu©QÆI\\0‰#•IÆ×¡¸÷—ö¡¸Ë«¼ÙTIXM6ïÛìñE¯íô \\0\\0\\\'È8ä¬_&6Z*í§NòÖ)àÇŠ—7u(mS2œ¸Ï±\\ZûÀùÖÔWâÇ:jå„hİ¿§)¶d%¾Ÿ*„Ócâ2>ïV»}\\\\6šÅˆ*ÚãÄ”¤³~\\0AÏ$äøw^ÇSQµqíF\\\\LD¬\\\'i~»z–ÓfÉY¨\\\\Ñâ°KR)`–Õr%¯ß)$5q=ÔdÒ¬ëşº	‚:Oö¡Ìæ†ì{…áq&+¯‹Çª Âh\\Z¸ cIÁTà*Ä‚^¹¹%~BKjz*UDX0N8PÉ\\\'1Øb´^ƒ¸f¢“­‚=èD‘‘¡VÂ\\ZÉì.¦MoRÔ€ºĞ… Àç«êçˆ`èÔdÆ¥[ğ|ğ¡myïõÈ U€»B-É·›ÒÎ E#)B§,³·]­Y¼V*¼€*M‰ğp4‚^P*ÂsjiH (\\0\\0€õ„	‡¸ûóÀ\\0.µ|ƒèÖƒ\\0 FAŒ6ÌñPÀ€6¥ãâb¬Å©‚¯\\nm*gNâ æpfY»÷^µg\\0XiBOZ•ÛˆzœRò%ß1DI\\\"Ië>@¾Ôœd3-c©X§ßóÉ¼§³ll_ğ§S3ô€2%åã´üL`³üª9^Úôi‹¶;$8”U¬†\\\\0d\\\\P’5;Áûn{zİl¾1¨aˆáVJ\\0rÅó1±ÍSV\\\\mãÏ¡¸›+N]íSµÄægİu­zõä¦£ënAÓ{Ïï›4;öô“p¡ïX4^fÚ’ÜÃ›vcm—âa/¶Ö»ùà‰Dp7öc‚_0uv¨Å˜—œ8kËÍ!§G/Ä~)s’Ç·4\\\"M\\nKª.‰œÓ7A—‚”›4Iê?ÚÁÁtuÎ„lóˆø4µlG½ãø;TZì?Îgw	\\Z‘¬]­ØÚ£ÑÈu½Lã´Û´Ğ”ÆGÅağ»	HJ´3àÕ”5“Yƒ!ÄİhÉ	‚.¥0ìU˜=â÷j\\\"Lâ€¼™T¦íBkC¼Ïê„OY6[¹ş¸õÀWD~Xşı=³\\rå§=:Üb£­u*:ÒªcË+Q©ix2H­FÈp‡/÷J¬²%wz*5+É›êÕ/†lÖ­\\n/¯…ˆĞØCm’mgî™â.¦”I¯Ü©56ºÒ4dÃóX€¦eí(ŒŒ/åæpˆ\\r&_EéiNÔQ9a—Zo¾¤r\\ZI½‹{AÁÑÉ£\\nÖsØQ¥Àü”(¦ı•pJP»n›b¬êõ‹ˆHìgZm-úV >´èP,GjÑ™¥Ìâcw•Ğ­ê—^a‹Ğ,yµĞ£i”JîÕ$ßa¥ÿ\\0^¯ôãgj‘¤@š²sÁi)ObıĞlı]ën@{ÒPmÜU ]€kS=b;4˜:•}áÔË˜o¶\\rZp5õïqOÑ	«[¹ˆ+İ¤}w¤Ãöí¨Ïò)ğf¤Uc*˜ò,_Mò\\\"÷mQ\\n(I\\\'¼Õ	fÜhä6Š¡±%Àã€cñÊ&h(qZÔ¾ãAÏ1g³N´Q&fóË–OıVn9Çärz’Z‚*µoƒTTfê9{]t£†>~Ç![±,8Sv™¥.RŞh–ìÎuêºÕæIBR3tµ50-Õ±Y‘åÌPôkYÃ:.½C€µ„²Šo¡˜iFÏÃ@ÕÈ¥\\\'¬ÅH¹½^QŞßíz>5i²dJ®²Q¦vJÙ;pDHÔõ¡Ç“šœx%¬O=1œˆ4õSµ\\\\5­>(D›¾óÁÊr)<ÙÉ#±@ÇdŠ1õm‰Ğh¬`Ûx5jÊÅ®ïé¢.5¾8ş2fŠI•M ›ÆÜB±>òq;¿”RÍ‚ñÿ\\0ÿÚ\\0\\0\\0\\0\\0óÏ<óÏ<ão•‰\\rôóÏ<óÏ<óÏ<ßî›\\0€\\0ß<óÏ<óÏ<óÏ<±À€$|óÏ<óÏ<óÏ<óË\\0|óÏ<óÏ<óÏ<óÏ,(\\0óÏ<óÏ<óÏ<óÏ<	óÏ<óÏ9$ôoÏ=„\\0Dó4óÔÆ\\0\\0i\\0üâ„i5* \\0\\0k¼°‚\\0\\0%–0\\0\\0\\09³<ğ0	‚Y€\\0\\0\\0\\0ç<ÏZN#\\0\\0\\0\\0\\0ãÏ<SÌ¼òãÀ\\0\\0\\0\\0\\0\\0KÏ<®ÀèË‰:\\0\\0\\0\\0\\0ÃÏ<ò\\\"á©\\0\\0øÀ?Ï<ñ½i;DA\\0ÑĞAÓÏ<óÊ¼AÛ€ŞòÛRóÏ<óÏ”óÊ„qÇ<óÄÜóÏ<óÏ<óÃ\\\'sÏ<óÏ<óÏ<ÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0!1A Q0@ağ‘¡±ÁÑáPÿÚ\\0?ğÔBê=—Êpÿ\\0tÚ^@,&¼5\\0Z½sx¿I@<ƒ¶ª~ö\\räÕ\\\"?ënyP/û<ÏÇï®Àj…ÆnrCİh°Õ7†#£µ¢*\\r¦ ­Ø¾‡ê%­Ÿ\\\\tæL3æz³í­Rã»A4İ–¬Bëş \\\'½‰\\\\%>÷›m‰f¨šwgHÃ<¿sE©nê<C¡Š†m\\\\T)»2wz’ÍÆĞÈsg§µ„«½®5Æî€ Pxaã‹\\\\C¯ëÏŸöz+T€šlŞ8jÌvÓ×p=ú\\r\\r/Qb¼/ßhoƒù?\\n*5[J	¸)X7´´j¢lq´wÑ`é\\n^a&ˆÛr	ÎğŒ¬=ûüjYM.leæû\\ZZzt1+ÃüÁˆÚ‹âÌ*µÇ¬\\0(Ğ±¡|³7èá?8ÈæÃhXˆ¹êuøÁrÂÅVØ/P6ÊæmhaÃaÁnü°ãPn†~ÃüÿÄ\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1@Q0Aaq‘ğÿÚ\\0?øĞ–÷/x#×d¼ªÉïá>¹\\ZïÁ¼½×„)Ï{ğ{äkàê&~¸Öğ[o&ŒßÖRî[ˆˆ\\\"\\\\³FL­âòÒĞFm›\\\'·¨ŸfFï-·ÀLD‡X}rUœUÆªqW©Ó€ì‘?™ß¸ïSLéÊ·>¼W‚V¯:#©¥uñ}øn\\n{e¨T_´Cêˆßš%Ûc¯`ØVÄ`Y”\\nr£8ÓüÁ\\nş‰ûÿ\\0ßÌ·Úƒ­Îk!q‚‡´é¨Ã|íõ€^ñÓ\\\"¡f{–”6üid´£¹~ÿÄ\\0*\\0\\0\\0\\0\\0\\0\\0!1AQaq‘¡ 0±Áğ@ÑñáPÿÚ\\0\\0\\0?ş™q\\\"dä%{U‰şÏ&ã”4@Ì”s3Ê³×ÔOĞ«¦h]³¥,«V[Ô´L`tóQKFáh¨­,º‰óQŸêSå(o[ÓôŞ‡£H’\\\'ò†§Áºì2µsÀs·ƒínm\\r¸$gÜ-‘ëÇç°šDEVU×İ¶•+’å*O2öQ“¸ÒøLNwxzQÖÄ;&GƒürˆLÓc\\ZÑ­T¸i€§iİ¿·‹Ïqe¢B:?Ò4!#QÊ¯¢ìás…±zåT8BDpñZvÂ©‡=b*ÃE z4rD©ÖşÍf¶éù!½K+Tø(rr—(Õ9¤Ğ;Å÷_éA½B=áæ\\0q—\\\\yj(©àoïÒmCM57\\ZIµºÓéÖ3DÂÍÓT\\Z\\\'óA\\0D„u¨[åO.Õ2[Ømp”½O*¶¤ÊÄ»âÏ¹$†ã[é5ÌGRV]9€Ñ?ïóÛ±„=œ‘VkÒÌ\\Z¿E(á$à>à¡v:NCë©†€JğHIüø0QlŸ‡”!àÄİ[<b† 0Ğöò5\\Zp$³ÕêÏ1ßÿ\\0\\0(K?³dÈÓ|;Â&Çt¥–=\\Z\\n@\\0pØtDÿ\\0Àˆ…®¦‡Ku7 6ØĞYò>Ó°::•‡r¯ø=*$Bvk^Éá‘;¯pÎÊ=ÔCÉÿ\\0ƒ×Á\\\\Ôş^ín3ïÃÿ\\0ƒ+.%’×€ö¬Wk¿ü9@uiõ KÔ\\\'š±¡¢eöñXLçf€\\\"w¬<&©‰à¤¬9ÑîZLaéÇa¡K¼r+RÇºTÌOK˜Áõ=}½%pCä~~lSUFk³‡ixS,ßsLô§ÍQÒòw¡É3aîoXö8PÈ’4K\\rwğ¦ ™¸^kw\\ZÜCe\\rÜ(&*”uJıqíÙ.›=Œs]¨\\0öı‹PŒ1\\rÀ_åL Ôô48¾jq•œ{öTãÑg˜çä)$ÊÅºßvxÔÓØ__³¢gáÙàúJKÈê/\\\'õÅÚ9 ìp=«¸*Ou6•ƒÄ[úãÖÁ qju\\\"]7|U‚Ü\\\\w˜©”\\\\â/ØĞHğä\\\"dö¬\\\"Â{ñpÆû(dly¾ş±é¯‘\\né§ZÀ\\Z\\nØ§ŸZéu¦z./¦¿–(‘*hÂÍğ›®Î”w¿Õƒ»2)ã×õ¶áîˆ\\\\ÖYÛãIÊ¨F]\\\'»·Öø7–Ëq‡úĞÔh\\0ôÖ+8ÍVVÍŞB9?Õ‰wÃ|ux”â‰É?èTë%Æ’€E–“½-Å›×Äõ¦ì¾\\\\_ĞÓà6ïä”êûë–Ö]¸z–u+Ó™B)È¾ƒ÷ïã“Û› <~ğÑ2¸vV$áõí4]\\nJW-\\niÉÊHTv«ËÈ\\\"$z²õôµ47‚š‹‹ÁWğzÛğW}Ï9 \\0\\0=ğêyfJız\\\'L˜X¦\\nÌ™Ä€c”Ñ	1	†.õÅİSä× ¶¼šÛ?ÙHDO}aõ&H)¤q¡@ˆ\\0•t§BlbË ìKÌz‚\\0‰ëR,3ª¼„h&1uô9üEõ³‹ÑFJ)¼LY½—¼tôD4P6–6¾•¯ÌÇ‚ùt˜Ãüµå;VjQG%Æ‡¢g…ˆêÛ½F#ëeŞÇ\\0ö¢˜.ˆuXÚ&‚\\0!¼Ì´pI=Ç,;#î…¸]X›ÔäüHå?,P DdJÈmå$S¦Ã½3r+£Ú9D$JˆG¿éòÂpÌÚj¬ Äö”Œ©} <S\\Z®Æ¯uk˜Ñ<Î¾Ã,%F\\0¥pN ˜ä®egÑY,ÙjäÌ}©.<êµp(ƒ÷%,ùäX£ã‘ 4ˆy\\\'®õÛ÷GÑ‡èF-6¯FPë­?ŸC1o4I\\0Íº\\0Ú?ô=¥\\rQ	-/ù…\\0±â8é~@­ €¨TÍf%%•™›á«êl8}oH\\\\¨»Es¦»ş´ZD‘=ˆF–$K‰	ËĞ„@UÒ€«&3ÌjQ«Ü.yÉiÍ™.ªBõ‰õ(eíÚ¿z†ã&ã˜†[.Ãÿ\\0h>!Ì€\\Z@G°}»u4‹Õjš®ş×}í¤ßB$¼i½F†ÚÎåÎT*ÿ\\0pˆ=Z·èÇšj“Jİõ×ªµ­ÕÄŸ·«-…=\\0„\\\"Y(4JÒeò¾„ÃÆØ´í§©–#„ ¸¤W.oqÛæÉµ8ØòS©†gÚâ+{X£’p?.ïÚ„‹†àöEã–±¹Ñš.İÁÃïŞ›<à]ÑqåS–F¡Â tŠ\\rl?3YYÉ=G ª—6³bg±­H°Ífªï—Øh@\\rèÇßÍhæ~â®ÜêóG¹¾í]…Í°^#ñj D:@üÍYF½ÄÇİ£{Ù~K½\\Zª„`:!ûiş \\0 íî$Gô4KbB†°.Sé$´$‚ê:2Åêc0Ä­ƒB`à{ì— DB½6%tğ6Éú½7ÕGSğÊÁº›‘îHQÂoCBÖàs±@!9•|œŠŒ–Lb±•¹µõljP$ œt’’IšCÂÌÁoqÊZ@\\\"Iüğ„ÔâCà¯p”üÌ\\rA· ´ª\\\"Œ«Ëm$”íš²›„šFÖ#AÎ¯…8ôæJ›­ãi«-l;£$ò«i•’\\Z”)™M(AzQyâ®“uü?ˆh.²–ØihäQŞ“-×½„>Š®LÀ\\\'åX¨¬‹-³¾–wõ5˜²æyiÜ!\\\\F!ğxüı:Q Â~ª‰»š5Ê¿cN‚):ğD¦ó­9JI¥‰Ğ±ÓĞ_4ŒH\\\'‹;¯Ú‘\\0«\\0T®ÒÜ-“‚3Ãy¤»ç ÷^ÓO¯µ/DiÔ|¿qW®„¬­W›ë$h™ª³ø«~”|vDæ\\0¹à\\\"èTH¬õ¦vR9AßÚJ”@TM8sÓïôH.@RÔ¸NïmßÆN¸à|ñ;{œÅÏC »û2€ëCÄÓg\\n#6EÁÇúíQ­Ÿèláû·²>\\\'„ù?Ó? ^Jı)|¢¼2u’\\\'|ëasM1m³†úV\\0í7ôù¡d]ÔÑ²CuŠ94Ø½DpPq–ü… “îÁÃì{Tm«</Je\\\\ßú#ïAI\\ZÏ¡n1-E|M]^¬¾åXW~Ôå:RßñKå=}Y¶¸ú¶­•‹Ì›7Òš ×	o¸W•ì†SÂ´õ—Åxæ}¥÷F(Ëxö0ğğPHĞ_ÉP€xŠMÜóBH®wT\\ni!ò%¼ÑG± Æ{Î\\Z{Qœ;„>\\nb^e7C­€Íïî\\0]æL¤J.ÕİşºP«°Q-“Ë¨aÇ÷qä¥e{u˜ò¤\\\"wS¸aÎ\\\'D0KºHJYÊQ¢¼¯XWJ7v<´ÑÑÄê¦:|r\\0/HR°U•våj³²‡Õ>iM¶ÅMfÿ\\0æ(€+ké€ÔF\\Z‘ş¥ô$­À2%íB¶ºTD³YÇûR\\\'•oâŸıo¤ù[£@$w¬%öÀÄnVnT¬=V\\nQ¶œ½oOÈé/•`1Ö&šÃŠRc­\\ZVÔŸLmoÀ8Ôİ£ccóŸ3ëxrj$x}‚7t*Ğéø¸ıhÉ£\\0î3Bm±.(GAg´ÔXS^š¯¹/CYXĞôjôQFBÜZ:%—°ğ1æ¡áÕÂ±;m%<Êc”Z7Ÿ“4åJŒºØCıT’’“œÓs!$Ì\\\\\\\\ÍFÊÆÙV:MK•¹]÷K¯µğ€T\\\\‡Ôm»éCõyôÓ—ü³‘Hò“°ÌSRÂD·`”@ñÉwwx¾òt°$ˆÓ{518ƒ•\\\"jÂNÁ4“Oc^3ÃåˆÒªôÌ’ŒK¤®hÏ¹±·­?˜2É3\\ZŞ3D|¯:_ªQ,C™z›*‹G©øô“JîV\\r>3	•{¿7ó˜›t7–¥1…O ÁT¼:‡BiÊı!›8ÚÆ†CA\\0àş?ÿÙ','image/jpeg'),(37,NULL,NULL),(38,NULL,'image/jpeg'),(39,'ÿØÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\0„Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0hg\\09vpQdYWzwmrmaziCoQjd(\\0JFBMD0f00078e0300007b07000016120000c91300008b1500002c1e00009f2a0000ba2b0000ÿÛ\\0C\\0\\n\\n	\\n\\r\\r\\\"\\Z)$+*($\\\'\\\'-2@7-0=0\\\'\\\'8L9=CEHIH+6OUNFT@GHEÿÛ\\0C\\r\\r!!E.\\\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEÿÂ\\0\\0½\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0ÌË¾Œœ÷Ñ©ƒ/&vCÂ’ÓFajü™vªJzk@Âó\\ZPÉKKfY7¡FT÷Í3+Ú\\ZÔ!æ¼aŠ÷Z6gÖÄ2MéP\\n>MK}‚¹©ÒT¢°±Å]nrÓA  Ğ­SèZ·™±\\n½f&Ğvåì[|ˆ\\\\…æ„ÍtÑ Vª(½R½–*zª&ÔqúXÈ)2Qö$I\\0\\\'è{ŞÂH÷…d|—¨Œ¡ãcÕDÚëÎ°’üìJ%G\\rK„‚‹V¬t=H…:<\\0îëR´@zTØ‹CL|„KQ}ñŠbnàkU§¨3:,³>Öbv¿×/H« Å\\\"DPéEôºcÑ>DE¾¦f44¼V.!ğzdVÔdP:ÌËY‰zµt,±‡PWm9qVm‡¬€ºâô„YQ÷ŞO¼èµè¦«PïyÊ}İk½”BE]ø×ÈœQ¬³¬¼½:ìVrayK æ%O°aÔt:Iª•¨5Çƒ°¦y«ï‹Ï|ô=î ½sçGœ÷yÌ”&0ñÄæªÀLöŠ†Z³°^n\\rF}	pka™ÏR±ã¿-rãŞñ+È•¶‡k2+*K¯é\\r­a^Ÿty¨ÊÂM\\\"¾qqœo]Ïu«ïyë¢É«NY)	¥LR4yºÑ0gV¨h”2›èTà´Ph·YK“ÃÆ”d×+*»J”û¡ÔºQ8Ùy4£éY³3²Êè¬¨)yì}¼çë(¬µûSXíTfdÖè²v™`‹L–¢+¬\\0ƒ<£ı¤FªÊµÌ{º§ÉÇÒ›é)KD&ıK@ú’$èZÛºÙÒ¤Z*m0»°¬{6ÙQ’mÉ2ËcÕøPğée­,2ºMµ“ÑD\\\\î•h2µgİç4H¶º¦&(K)Òh`¾¤¼©ÍİMM…=²v=ú[Yæó¼Ô„ÉTA’ií„W[æfİ%t½e\\\\©z)Á®îá3)Êl](„NQWP-ŸÏHeBµ­UbƒKMÙæÓ°õ6]3TÊYÏnu9õ´‰Ñ»~í#ÉyÕl«vÏÎ÷šÿÄ\\0.\\0\\0\\0\\0\\0\\0\\0\\0!1\\\" #2A$345B%CEÿÚ\\0\\0›LĞÀÛ4)\\Zk543v‘´ÑU‚ï»NóGÓ¾›ÚuDŞ `ÇpY¾u–ÄöÇ1É‹çt°÷+í´nÆ¤mÆáß×b~ûÚFVÍ8ÆG¿\\0íá¹[†ÙkSFZY˜¡øWõy!RûS«Ã¸ßq}¹9‹³-,4ğ¾\\\">nQÆ^Ş“Uôä^j!ñ\\\'ïÀÉşŸ‡Öõ</†{0xıYöÒĞß[‡]‰ûïquÒ‹-g~Òáù__†]q£-?Y“ıŸşgòkp´çÿ\\0*Ïçæÿ\\01m4ğ¾ »«ÏÉ8é†/£‰\\\"Y™“é“ó’öÔFOôÜ7ø)ı%UÃ¸¨–}¯Äw:ñ\\r¯›ĞÇ©ºMñQ<ŒŠøKn”ú³è¯ÍêQvQïËknø˜å£å³U•šo#Š$¶ÇºÖÎıÜC­WÅµ”gtS\\\',äU•r—/Ñ¥9¥(¯<¥Tçl—æ=´]”ï•ê’ß?ê7…ò~\\\'ÜÃ¼t×¶›£ÅªtãTa^Jt–ùê+,f››NC·\\\"â\\\"K¼´×»x&ífØG#ØiÚ±SNJ7:¬ĞFXôÇFûkî¨;ËlÛæZ-SÁ—óYø„û`\\\"oÄÇàvŒb\\\\‰=j€2õx/­¥šk	ÔV6ªıÚÅMÆ`ñ§+O}9iËY]d‰lÖYÚWã–şà\\Z›êé•fYXk¤Ò\\n=Ï^Øgˆš°oµ|s0Ë¼öš_ŠW}Œt]Ó¨%É¤°îD>Áã¨ºş,MÆŠ•\\\\…yèëŠŠ‘åJÊqxkéËAòëŞß&jfãÊÍ»|ü<>?yÖvx9jVVäÑç_bî,Ş&öNåæy—÷ÛçäpŠa÷Í`ñşIì»‰Œ¯U„Ë\\Z‹=1èT=~K[hÛ_”y]nÃòau\\nÚ¨ö²´Ğˆezi»HlŠ±Ö\\n70¬\\nŸÕó=›ck®Øã—áL<‘¡3Sí¬­}¡n†i:n¨º¼EÓ‘]f:szãã²òw	\\Zây\\\\&½Éç§oÄ4íëÊ»Š›£TDMA:îCB@4¥ DØx²ˆ—Ug+ëĞäs´}8ÇŸùÚyÑ6´èˆÕ[×´Ìk5šk2jÒtn´z;DÔ=e}<ë,ê;š)è¤Ïr´•#–&t*rë*ñ>æñ¬\\\'‘ˆ7CöÀšÕM^Å¬N”Z€š½B%Kêê2_¶¶+¦êĞ³\\r¬£ÛoCl¹2‡pØ{\\Zû©É«¨%_¸|s>{[ÆëNÊ;|™7oh	{UTntÅtc¹`¶Á=EĞfŞ±x£Jsk½æn\\\'Vau:î5\\\\Êvš‡Ç1£|¾¯%Ï¥|ñtt\\Z\\\"íäÈ¯\\r7\\rHÜ6Ñ›*å‡•gVj‰cåÓ\\\\»-,½ªO·äöUÜwŠÔ^!>¥Äb ^‹bmƒÍ?`Šfáó_‡SÆ¢Ú§Ä»tÛ3&ì\\ZÉß2jRÿ\\0gÉøšé?ĞıÎ¸«+²Y’7T‰ëÚXôäPtİ]ˆ­TêÖ\\\'Z©×ªuéj„ëÕ=E1İv¥´”#êµ¸÷¡8§Yj”á¶øäÿ\\0p‰à7w3Áv]0^ü†¢Ûİª¥ëèU——Ğªt)‡Ú/Æ¯Ó×_C…Ö_©åcWéŸ¡ÃkG£6¥L§%×R+Ï·£^>šüFw·¨cf\\\"KóÓaÕ¹hÓ¸ñ¦œ¿êm›8YÖüËE™ıXWÓæf÷ÍÑ½Nbi”Íõ7{¸zÇg\\\'éXıWmjÄCğ¼å™?ØZ5ã®™)Ä,1ìgä«¸°ÚÜÏ˜Ş|©^‡zb[~MúìV{oêfÙCå|Hzœ—ÚùŠnLÅêU•ÒÂ|¥|fÌS’2FÏ\\\\•aYŸM•#Š\\\\gUëS‰§^÷WÈZ,x¸-¡\\rj¢ñîùCö§°ù¿*§®Ë=e’œ†±¡•òtW—ã-%½Áä|_örÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\00 1!@ÿÚ\\0?½½­­4ÓMóÏğE\\\"P3ûì™Ôˆôsã‘ÜU)xÀÂv˜™¤£ãi\\\'ñvş‘B´Îë<Ê°äæÿ\\0LÜX¤Kö´Óo¢K>ŸŒFü0Ã0ËF:ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 0!12@ÿÚ\\0?šâŠ(¢ŠŠú›6f9ûÑ®%b_P¥³f‹1^9F2Çämàã‰P¡rÄÆââ¡d~ŸqÍËEÈşÆ<Ô}ÑLÕš±_•ã»LØE–ll,á›EÿÄ\\04\\0\\0\\0\\0\\0\\0\\0!1 \\\"AQa02‘3Rqr#Bb¡‚ÁCƒ±ÿÚ\\0\\0?^“ì½\\\'Ùhc\\r¶\\Ze¡ö]\\nôŸe	4İoXÃHY˜ü)ñÖÜ´\\\'ğº-²áß@¡À·ê‡Û~ÊLÇÑg.ÈOş)ƒ¸áÕ©èÔïÊğÿ\\0re(á\\\"eZ4™U›üTô•{„S,lÌá]Îõá[.V\\\\«´u@s´á\\Zy¹2Ÿ\\\"ÒªŒµL{DĞ¨¿áeÒ®§ëÏİ4ÊEJ­ö«‡Èœzß£U_¸£QÃ8”Ršz·\\ZMë*«z\\0ù^îTérp%>>IUKONş-¡Ë)TÜ°…wò^ò¿éÿ\\0kÄ}Ò >`ô¼Ş¨ıUş1ã“£Sù!³rÛH4µµ6¿<“M—I…R© UXìÌ›öµ?êWøMÈÀT_ŞaMÛ#ÁİU~Ë×İ\\Z[9ê“âl3\\nvıÉõ9»-UGØMıôOfÇ×<ú­†Ï”L¦³gG5Iû/AU:­e¥Ší¾œüËóT†Î6dSYiaRê&ôç»\\\"VÂÎQ2˜ÍœZAÕ|í\\Z5iÜÕe:v³ºkvvÁêˆÙÌ¨±Ô‹¦y¦³a0>dñ±›:£I´mëdÚvéÈ3gzïŞÁO,P» 7çª\\0a=7xs*]æõP\\\'rq„\\rW5Íqb7!5Ü\\\'¦÷JôJÉ™jµŒcp¹ÛÃ{ Y’T±wAÂ¡Ñd­×©Då¹.G|a¦1ªæ¦”w%KŠƒ˜\\\\×Ã5nÉ·c\\n%B!fP±lîÄ)8L)ß7£{ºŸuö¬‘iAzq…‘©Ó’[ñÏ<¼ ¨Õu;œ*N5VrYè\\Z¬üù¨§ ÆíÛF¬²]»;Ùaf²âuÅ~7-Çâ.ƒ„ÄùZ£¶…ã(SjĞ+g8Pÿ\\0|[ÍF§™ÂÖÌ¹fÒ0²·áÈ…Û\\0“8zŠV‹¦c¼ÁQ õ*ÚÏ¦®.%¼•õÁÈ.¹½—aÑ?‚ ¢:õÀy\\\'zÑéd ¸ûàÔí­¦Y+\\\\Hì²¨ïuñ]î½sõ\\\\l•h6Œõtê¿OòŠÚ\\r	S»ßİ6œ÷´IQwÃ‰ ¯L.¸H+„`ÚG0p:	Y¿ÙZ—t\\n>O|m§¢7ŸÊÉ„ŒG“Â-=•Ñ—P¡¢{•Ÿ¤j›h±œÕ¶~S,Íœ‘ò	çÉ0©À®\\\'e\\\'°7ªõƒù_µI-×e·İ|F{¯ˆÏuñî¾+=×ÅgºÎ£}×Äoºø¬÷W\\\\#ª-5ŸtCz«(DJ,\\ZÂˆÏ¢c]¯‘ÃƒsÍU¸Õ2ƒiÚoƒ’m2ÆŠdkÉ=¶µäFS3b.~B\\Z£dÏdæw„ø¦Ù·¢lÓdÛÑ=Ï\\0ıUÖ€	äì¦Ğc¢wé³ÓÑ9ïh9ó\\n„4\\0Ny*t¶ãŸÚ™IŠa<\\nl˜è˜c’¸>2ÇXY×šÏgz‰Ëz7\\rª§ÚeEPız­‰§?Úmé½®Âêe¿Ú­÷&7¨*«~PŒjéTgV¸ Î­+ÄvéC}NxcÒ ^ü•ÌU	ô˜„iZâ!p€ÕÄâp€ˆÄFãïœÂ(³õ§DÚ›Âmx†‚\\Z™Ã\\\'’™vÊŞœÕG° rT\\\\Ö¿†g…V%¯ãÓ‡²Ùµ•6‘òóAmKòı©\\r©h^YSõ	ËdÛÛP‰ƒŠàAÑ›¤i’Ú™\\r²y%Û?Ú!=ÍĞ•ÂÒ¸İªáh\\nwóòóİ‡	Yn1Ö‰ò?ÿÄ\\0\\\'\\0\\0\\0\\0\\0\\0!1AQaq¡‘Á±Ñğá ñÿÚ\\0\\0?!ˆ–ˆrÅå‹ò‹ı—N«˜?;Ÿ2â£Mˆws,ŠxQc6Ê¸(_¶ĞSë?ˆE)9ÉW>m¦ -™*SâáFXÛnèƒ_<Ú–ë	\\nF§{Ê°Šì“ÿ\\0£•¿ŸâÏ@¡˜-øs†“o`V+¦‡Dz!r©oxËhê?±PØYU¬‰ÂT4ˆ‚g’ÓêxA>º_ÒÍ¸µé*zØş&3»Sİ±Ç¦ó_¹P™Ri-eÿ\\0¹†ß‡ŒJoCüAÖ«~¥GWŸŠŞãñÓ•ájtõİ¨E\\n3×lãŞ`ãBù€R®˜»ÿ\\0u?×ñC§¿×”k‘èíÓ}Öoõ<eş.ş„ÃÑşšRÓë“Š§ÛxªÅTVÍ¯¤ÇÎ­H›gó*°æ½zÖ#ÿ\\0ºŸçõ?Èñúx€Ø²[·)Û\\\\©(™7‡ h+z¤oïsıßeŸúüÌøiû™a ²ÃP_·şÌxş’g&^‚nâÅîã^Øö*°•t§/—=.ûß›„ş3ÊÛŸy¥|ÊIÄ¾7ÍGyŒÍÇksÆ»%¹zÍœ_Šg<Ù0?óKşÏ¹¾×>mİró—©á£Wuâå&¸úÁK¯\\nfvlœc öšèáOx­2¨OyA^YÀ@¢MNfawÓR­»rx˜]²\\\\!ÎÈ’Òü²Õ‚npÍK×º‡ÂUˆ£,W:™k&¼¢ â\\ZÏ+y¦ŸQ\\nåÑÒØ¼j!WÚPÊcÄ´›Æ{M 85-ÃêvrK¢x1ˆz•Bxt”tfğˆ3ÁÆVh%¹6›Kx É|\\\\ kÇyø¨ ÜÙòE\\Zn¼¥ôAl”óJcC3Aİ—Om\\Zoˆ \\n€ÄØçÔ`K9•ÙSgˆ~}±Ówš”0sÌ4¢¯RÆf.Ş¥J³²dÍp¾	”¢a¶k$pšŸc¼ş0*.Œ–f½Ş¹—9múŸpVÕyšÍJ¾ÄAÌÙ¨6Ë.Át`+ßbuŸZŠ¥Aˆ3¸?ÄËÑ‹Z˜È‚k\\\\Áí0nê’oæŸhG+Ù©j¯lÄ*Û\\nL1ñ6ƒVB¯ıpVà}1a¹Q¶s©ÕÊ‹\\\\ú˜cƒ¥\\r…Ln^%Ë–Åí‰õ\\\"Î	Ûeø–é‡#K¬êPB™bEíĞuß’¦¯QñµÁC(D•e.HUE4•Îµ1…±\\\'	_Éé]Œ´ÅG¿æÜ15úéê]Gq¼±;·qÌñæA©coEğşSÅÂ”Ë”%ÔTfÄJræâŞ`ØßêZBZJ}™WÜk¯”,\\\\\\nÁÑ¡\\r_S¥´Èó‘h©W+‰Wæ)ÄÆĞæHA¨¥ß(Äj¬FN&g¦ßyXCˆ?Ê§ê-¦Ö]Œ§¼—fa¼™ã”åş>:VeWJÛ?Œ›Ã=Ê»N\\\"A»›/MW+%ÜÄ³”ßyˆÈæ‘ÄS,m4i©ÎV™_¾¡\\ZœEy&lƒ03¿£ƒ.¥5ğá3N	©KxuÜpÃLË$¤ötœw©Í$¸tjT[k>1@Á0AÂ÷`èÁ´n\\0,pş=ÕNÿ\\0£Ï¯CaæYà–2ô›F¿quÑ9Í%2ç¶Qi`¾	^æ¹”’ø?0Îu¤«;…^ª´nkÏƒ¦#İš³zÚ¥\\\']™÷\\0NlÂMM}ÂÏ§D%\\\\Ì¹+ˆxÉí—U,kTŸ+<Ã.öâ8ÊŸ3^)Ù_1NL`˜f½¯¢ŠìùÅ÷(o3îåÎ|ø+ğoæ<¦ggùr¾O&:P\\\"lI²X(›o¹ú¥éÙq)Gdà‹)qÜæ\\nåQd“…ï.%ÓP&ŒLô™³ö½,JŸ‘ÙŠï9ëåâ§$c×>kˆ%‹õâOR#^Ç¸\\n{5eeûÖí6~£ÕÌ4%âp¾f‡‹»»j\\nôÅ‹ê%4ï®X›l¤½AĞØé÷vOÖÌ_JcæxƒÈÓâ)_; >Şg<=²Œ]h¯53?ñê}’’]4D+ß1!W atQ^»ËHúlR[Õxa±÷3â•„mÌC›‚¯şá,ìÂîYìôø£BÖ|ğù;•ø’†îo¼\\nº•JB™GiL»1Éò1	+îÚ<ÊŠ]Ç“°Æq¾k”oÆ3·ğ0Ú¯…4<!ÿ\\09ÁyÉ‚x¼aÿ\\03ùxêŸŒÃ÷Ö?ğóí](^ÇYNJ¨T¹‡2û1lÜpÌí/‹¿K…XÌR\\nìE²Ã{ŸiVØ)_©r·V)&õÚöqJİ@´«Î¨b/ú8ûÀ—æ\\\"‹u3“îtÊßè½JÉy‡h–†Töë4ºŞ¢UuÀyG2sSˆRÒ?B&¿FZquÌø>ÅR|cC6lZïP½FÚ9%QG¹|şaX¬¾ÏòIú=N5­SŸùƒßgãÿ\\0Ê&&?y“ÿ\\0±ñøëØ—EŠÍ3ì•Şñ>)©ñ}Ÿæñ>Yÿ\\03„·óÜ°ö°÷ÑÙ;é|Òùnºµg«ŒW¬M;èñ_›&ïa¤ÔÓ)U®ïyˆó£^~ßDşÀú_^¥Ëj‘ZOæÈ\\\\şüT„DòËÖò:Oêë7=/ao¼hşkıçåÎ¿Uğ†åó‹Ÿv™Ägg~ñ½Ç‰]|õÆªbæ	­™_$gdw§ÚÖWE˜»–Wb)P$36z?Pël¾¡Ì¦à_Pçşz3ÿÚ\\0\\0\\0\\0\\0\\0\\\\pˆRo”jn	:÷î=ÓCª‰=7ûƒÚVJ\\rßÈõòÚûµls2†fOĞºŸû±â˜ ÌøÂ>´\\\'cZ?ğ@“\\ZïHpGõÆ›ÔIH®?á™ã§Û??Ï•urİ©gbÌ“~}½WN7ª—®…\\\"ÂÓüËnY\\\"*9zKã§ƒëg›Ìo¼\\\\gGZ©î[5ñÕÜ&ü“¹ÏÿÄ\\0\\0\\0\\0\\0\\0\\0\\0!1AQaqÿÚ\\0?L¶Ôòÿ\\0‰vòÔ©ÛR¶­ÛºvSì8å²XÈØØØØÈáù\\\"{ØØæØØÿ\\0 wç?m¶ß¿¶è@>ŒH»vÉ÷à+ÈŸ7ãˆn,˜¿’•RLcRÉ2~/m†’VÃğƒ¬?R@09!û õ‹É—òÖ}›®0\\0ÈßŒ$)²ŞÉ\\ZC/ä½úÌ:]õ»g²#Œ{†Àü%7²‘KUìıÅ şHÎû0!Ê6ÊÏmY×lGYÄlîM±ÖğXq|‚#a½`JülHQí Œî’ÛÁt·ûjÛnã¢=€~ÙşØşÊ7JkşFÄweïÄí¹Ş.Ï3{ómµµ.Ã€J>OÅørMçÊF0RL²°YÍ¸l¿ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0!1AQ aÿÚ\\0?;óÄå’l6Å›6!¦Ü-!----!6Ò~(Znm§öÓû(ÜˆÛ{-»n[dl³ËòXDÒ|ÖSyúÈg¶‡¡8{)°Kœ¶Jki\\\"çì\\0Âİä˜Ú&Nç#wæD…yx‘Ù2lÂyKÙ×_$O\\\'àÀ¾X[ñd?¹5Õ—[6E\\\\È¬9‘½ß°aób\\ZHÂT{(ù;›p\\\\’°N¶“‘£©1d’İù–ã)’şH=0K~‹Ä‚\\Z’>å‡2ĞáS6ïl–ı“’3u”9“‡„ÒBrÅÁB¹Ø|w%ÆõìÄw\\0èIÎÍºŞ“§—ü\\\"Xé‰`GcŸ5NÙ¯g/_Sı9:À~°Ÿãì…­Él©a\\Zœ6gÇ†ÚÜµ;³çÏÿÄ\\0$\\0\\0\\0\\0\\0\\0\\0!1AQaq‘¡±ÁğñÿÚ\\0\\0?ÁÈE¢‹RÚÖ X„Â İBl|²4ÆôqÌ	\\n ©8Ùg(mş@–”pWª3p\\nîDíLG\\r¤–¡îƒQeA¨äÈfÛ)vã2º¶U[\\\'Œ-c“LlËKr’ ½\\0óuª\\n:êZÆÕ5›•*¾¸ÄiIáíÙzB­ƒ%oB™ÒÀ—éªH0Çöë[;?û©nĞZ4=D)«Ìª©”r»âa]‡{Émé‚H_i\\nÔä\\0ÓuY€éK€ÀÕ9pqv?apH»)Õ†àI(imÑ¸*//÷—›úÓıóœĞ=ºúÁ¦s&vb3Í¹Ì^¼`t§9›yækúk+ÊÀ0ùo½c--û²¥Ç×²Jşãöƒ{¹©ƒÉ¶÷ÛÅç\\\"]lüûÃsÚÿ\\0sÆ=úKöŞ]İH‹)ıA›í<_óc\\\'0|\\Z Æå¥xÔ<ÿ\\0Hˆ8qdŸİ8yæ|¤‡<]÷$­«œ\\n¹Oîâ÷Ã‡YºÇXşóüp0ÿ\\0|GõûÆúœ|ï4ø¿·Eÿ\\0Æ¹7~òıñ±YëW¼‚”(´1Ôÿ\\0tş‡ûÎ\\\\´?ööã.ŸÍ=e\\0‚Ê¼-ÅPm\\0Z¯PŞÛZßÓB\\0ëÖ²¶4*[uù=BƒŠõ«¥2Ôï„œÄs:ñdÆÙÃmÍ\\\';I<e[—ƒ\\r(x\\\"±7´µ&jRlõ…Âhš õğ”Kµ»¡»ósµ96Jú!‚`Ú|\\\"–²32fÈ2Í¸Äºø€Kø³”\\n¾%Üf¢DÓĞ¼ÊxŠ~G*Ü­2Šg~#Å:WÔäŠ(X4¡ÃÄ)Â[vÅcB£¸fŠ.L$¢ì^Oq!°”çC­¨9ÖbP-»lÃP:\\rh-Ê†³–6İ•ˆÂÂË ºÔÔAàb5•ÚœÂ‰i0¼Á J®\\\"[UkQØ-ÍÁ¨ÕÁX\\0Ñö69kGO?†2e1dUğ^I™GiÜ5‚pË–Ú’¢f6•wÅÁAÃ”±‘•CZ¹l\\Z0ù—ÈE´u ˜jüË>P«:/Dæ K¶z:„«\\ZOÉK+2İ4=1–…:H\\ZvX}Ëÿ\\0n5MZBüAÃ*\\0mëˆ*€&%J-ùqê.¸´B½rµGÉD a\\rTU ÷\\\\A©&¸+p}°ÖBÍi\\\"7Ô¹xXÌ2\\0†·+¬Å UææJ*ù˜³Ë¨2D°Ó²àá‘T0øCtGw.âÙd;­ÜÔcl £Ë¦tĞU\\rY‹Ä‰ ”ÿ\\0ISMqœ£‰mE7\\nşXY3æQQ€¸”w}Ò°PØ,¸8`¥2\\\\æeÍ(cüqJªü\\\"Ø(­CrC)-	ßPÊ¦Ïs,eâgÚêçµ­@t@U—˜w9Ì¤Åo •P Ê¬´´K¢9+ª¨%Ú\\0UÜ¯ŸÎBÁ\\\'(G\\n]?Ö*UÜ&ÓÕÇ¬óÈ!ë¸ÂE¡Cg˜¬t»Š˜âÀë¯¯qŒZ@’—A\\0‡\\\"í.£{sIU/ÚÚæSaRjàHP»KªñP»­«Â<)%†H7cj\\0‚K!ÄR\\0tEÛc×ª—ŠÃeAî\\\"dò é&ÔAçq-Êj*Üa}Â%«dt«AG$6`¨Wƒ4KîfY~ÊS+ö9v,‰Õ=†±¡ƒ›Xù@*şÂ<ˆ4ó	ÊX@}0 …D±‚bNĞ¥”‘l*$jêª¾ã{875æÂY^àB…¹o0f€|°²R[ÌP4¡º£b+ˆÿ\\0°\\\"©³AÄ2cnÜØÈzŠ¬–(I/ã$ƒŒ’š\\nË0AJ(j¬;†B÷…ê-šJÇp1VØ¶(‹B£T:‰H4K­X8ÖÒğ|úcµm·GP[6RÆô¥İ‰MAuøÁÁÂ˜…T±ÈGVlu5·ãn\\r0š^TÀ(ÈYˆ­B°¹›­,ÎH§u\\0(®H¤$*¶©[-uë¨2ƒˆ’Ë.4\\n€¦ÜFb¸XŞœõ\\0êí=ŸüŠªYÒ¼ß³·P7ŞÒC\\\\pª9!Š¡4·H	byà€Wì1°÷uy¨ŠŸ\\Zt°Ùš¨\\\"È\\\'Ü\\n…ˆŞË‚Ëj\\ZŠÅ°–JZfHã/ë1hŒÓ/rˆ0—¾XÒôí‰4\\r‰q¢Q¥ÈÇ_Ö` Ö8‡ Fš´HlŠ©nEÜ,Í!8˜(âÈ*¡u^§éİL\\\'\\rôFĞ†Àª¯QÒœûŠ\\nÊf)ˆGŞKK¡´Şx„™ûU:3›‡€\\\"6»_³DªÍ-–İ(yFÈ´)»…â„5q”z÷€em•rÊsı\\ZƒÁ06f\\\"¶½pG[Kúu2àªÁ¨h&!šŠqDE€îR’ÓW3SH·ˆ\\n\\nn‡Š€´‚{¦37RÏQîšªÇÔq˜Æ®³ûbPµ¢‘€1#\\n\\0)î)4iƒ~B ö\\\\É/¼nL™B’nôXz70§–,í³•a)¡yx”Ë/—æïd®Ä­„K-¾YCQ[dä!¡d‚7C»RxN%V!ÁÙ0†-¨â&Ÿ`¢í3¨ÏĞ­\\0fIÕÔt<C&‹Ñ‹Ô´ˆˆ‰ÕÃAÏFß€×‚ô½°ĞĞ\\0m€UZ\\0æ5ñD \\\"R<“,	>“\\\'¸Ğƒûœ‘>où–´<BpA\\rÓQƒXªŒ4KhÁr¨.eÙrœ*Ì_1­´ÅBîÁØå~ÁB\\0µÚ—¸âU6»#-²ã5–\\\"ˆ\\nGÏßä!€³PmN†Øğ–Ô\\0%(DC@ÖhñéœkV\\0¨\\0ÆLh_~ bŞß\\\"@‹¡èbV­ÃúCÍi&5pAPof)›ÖÆL%ñ˜ŠMƒû2ÌˆWÈ‚*«g,¹MpE7O5@TDµBgÉì#î\\\\æ˜Êè¬<Wš€òÔÿ\\0D!`(ª£PE\\\"é6.7Eï\\\"ÃÚ·ûfo·šµ±ám…9¨¡ ó1‡Â×0ºå·r©`“Á·1J»Ã.w³à:GL]×dZñV‡ó/ÓÓ>\\rOÌÅä¥î5 ˆ•1HÔ[èTŒ{ÿ\\0õÜ=¦=èDG±©ÂfOü†úò-iuPEc,%rÅQ@¦b	h6Ô(\\r0÷İ½@tº–cæ\\nØÂö\\nÇ‚©ŞqˆïÔÖ\\\\4òåS	›är.d]©å´›Tj“@Ú²Ïû#ŞmgÁuôÀi5?E5ÏÆx˜gãÙÍá©e×qHÛr“ÒŠ5cÒdŠÖi{ÙZÒPò±ä½7ú‹kïğ`$\\0–g	\\nW©{†E=¥3ıQO%FÒÙÔ‰¶(]AKv‘J£ 6ç\\nXËr®¦³Ô;>cGàV†$W@ÇX€Ì7\\ZT¿½Í[ü}<¼zÿ\\0Í}1)E†•Ié!ïæÍW\\Z–ÌËJí˜òç›·ÿ\\0‚	(^ê5Ê±c3×ÃPQL²o(–m—5Ì¨\\\\©¨^U5°Ì§pçäœ~æ×˜îJ¢v±º¹ğ¬Un©J§Õ›¤i]Je7m$»ÄNP·op§h|@qjÖ?-aÒÅ©R‰0€Æ1óXEìÎy5’>û}ò|ÈÆ.+;îÒn¯ãùÅ~[æÇPÒ[Ì½êÂàõaBÅ—F`7D!vBİÔ=‚^£úpİØAÉh	ÖHßbeÔGT,¢õJ\\\\Ù€K€Q‹¾¥Ú”æ}%z\\0	GNY¥@ZŒÖs8Q¹Ñ±ü°–;ÒK1óã«np>²TZk¡à»«…hKÂC$—Ae<s­F:rKT6²YuP| ÈÚ¸)ø+Ë€¢Öjã&ÜŞ¦F(¹W\\0_¡/1t”õBçÙï/y‡ÿ\\0Ç9ã¼´ş· Î¢ßæÕjø½›±Æ¤/~‡\\0¨zèK÷âÂìNx;Ó<º,õx›»Ææâ!ızî[šèq°\\Zwgu6îää`à6a¶&_i\\\\EÈ Ÿh7NàÀCğ—‘ˆy&’•/§‰t´âÍÔ]Qo0<P½&şÄ…j….PÜW(…‘Ü	{´Hï3ËˆÌ0¹<ìû8Ú0Ëç…”ö;|3S†…Ü\\Z™u­ê[G7?í>‹ûtX¹\\\'/$oöÍúËıHóG{\\0díÒN&bşuJÑğÄ(ÈÒßÃÌQË}¯Ã¾¨³|Ô(oci”\\0…Ë¨&(¸‰Nh5±Ãhµ4˜«Ş”<ˆ‚¿=oÓóMšvlù÷há‹Ûœ.;N¡ç%¸ö^§ÈëÔ s4X~ê&ïŞ¾ ãî×f!RÃ7¤º¯<ÚI‡d÷’‚øÁşV^abLâÎ%·(|òt»ıÊìÁ§Ù[\\n\\0„Ó´Ï‘s×g>}8ŒÊX	Q}¡xfÆu$<&XÂË/ú£mâÌú±DñCñwpZ ŞáàÀ{ÍÿÙ','image/jpeg'),(40,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0œPhotoshop 3.0\08BIM\0\0\0\0\0€g\0aSCRlfFNVfvWLFXnxx59(\0bFBMD01000abf0300004912000055210000e1220000892400003a2b0000873e0000294200001d450000314800002f6c0000ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\Z\0\0\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÂ\0Ğ•\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0ùH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0HA{X£CSÒmœƒ¶Ë8¢jùƒÔ\\ò‡°lx£ÜŞ_{ù>~}\nçÎ£Éósév>d}:§ÌÏ¤Áósè´>z{ğğ¾¥÷¯{Pô™ã†u’sÍp¹GVU–¥È¬ÌU™W\\YÔÑr>r2o¬ÖóeV6¯Î¥Ì©kEEâFbmKˆ\nÅ¨R¢ÒUu5”+BuœézW25\'7&}¹ŒÔråR›YµÅ«AhX½lYÔ}ç}\nÑrçWEË7Q&‰•McJ¾Ìš¥í1X¼-I,™€\"ö\\“KÕkDLš”N•kÔåo)[ª¹Ñ­ycËÑÍ›;sµ™o¦t…è^t¢ÂÅêä¶…¾áš)¦Ëi¦›eÃnbÌh¶2×T-Z	ŠÄÅ±&å&í3ÙëZÖB	”¬ÈBÛMg2µ+xÍM52ÓM\"vgÍÇ›js¬+Ô‰RÎ’L-t¯M—Ò­7t>­¥Zls¨Ú\\¹ZQ«Š^Z3©Ôç¯5×ë+ù™»Õç¯/×ê¹y2 ê+dë>wŸíyûÇ—†>‘Q4Ş\"buš-ğf£¡r§ZdÅŸb%ÅŸfir«B3¤ÍºU§RúöXÕ¾ÆhSÆ²¦«,–Œ´AÕ¶pµyº÷¹¼®>³O&o§àº\Z»‰çùGÓãtjz§x¼töùÓ:õ88ı\råf¬Ş5$Ş+[Ö—GU3§Rk\"5æÍÇŸZ2ÅŸb9qu=zu›¾­K>—u.Õ¦¥Íœ»ÕæW‡Nİ^±ËWÇFMu¹¯Vm¾­bóş£ÄôÏiü{ênÎ*^Öî5ùë_g’É}:°u7Ï!1ëóÌ^Ú&­X´hM™sëNY3lÎaÏ·\"ç$—¡¡\Zn^ê:Æ²-zµj2’^ËğºG‡\\ù¢qÕİ>gN\\=.Gg±ç»Şo.Ï¢äô3¿;æºˆíŠÑÌLúisnW[46mçªmçõ5¹_¯ÎËª{sµJ‹CR‹M×bshA—.¼ÒæîÒ‡¦ôSX–r\\\\™ŠEê¼o=Ôåù»e›²juåÕ›‡«ƒ¡•ò/jôS’ØéÏm¶è„t%®òeWcˆvú>w^n¥çæm·o—êuãÖ¬G³…‚,Rš­e	ra+r«*u#7(Â]z¢.õ²®Ú4»Ôñ“QÉ›å177örÉ[«+3m«+órv8Ìé7Ùë—C*[VM¸d³\\Rç\\&…W=Êvó™×—µ²ÛëóÍC¦(·)¶®e	rUYôæ•0ô4gÒ­l9‹°Ñif^j–´B±íD×ƒÊüş~Ï¤ŠØ­%ÛuhÆó÷øİ\\o_K¶âøó§S›«Jó¥ü¼•vŠÕ¶¬XµáéŒ®Ë¿·jÉ·§…šÂ—¡VgF”¦dkÎgÏ§4Ò\"L·êÍªİSÑÚPõlÖñh(·Q~l­˜üıØMf•uº¶lFÎ=sôqwó»¿*ÛÛ	RÚØ¯]=8\\”äw¨Ï’Íê2Ìğ3öx»Â;˜{}yz8“¿\"Ñ©E²ˆ”èJçÏ§9—6¬‚HˆêjË¦´èË¡4¹\ri×¥â`\"a|\'#ÒùÎ‹±LÅCÛ{Zi¯‡]]=®juÅ¼øÁN¼·æè[£{NÄr5ò£F‰bOÖñuŠzo5êúyöÕ´ïÊ«m,¥oQJz¬ÍŸ^S&=™ŒĞÈúsè­-K\rK•ÌSRB ™“ÏxÏ£üßk±-ÇL½,])z[ğtø÷èêçn›£œTV*sZV„ºÎz6)£ÌzŞ\\Şg¦ó‘ÏõWÕvóöâÓßŠËE)OR%NM‰Ë§9“.¼æh´GGN}zŒĞ·­Û[C/KÙbDFçHùWÒ¾oÇ´½=,uæí-Îïîr;8í\Z3Zk Ü¬±Å+e•E´æ©µ•Ùô	¦úL£Êz¯\"Ã=‡œõ¾Ÿ0Z:`¥â”·Q2£N{Ÿ^jÉ—^L³Ñµ—§¯>áïK‡5m¶\"Kƒk|ë‡ç½·’ç¿z®oªrú÷ézœíü;Ş¬¼Ô2‚µKĞ¹İ‡Ÿ§¤o#UÌ™›Ğ¤s¹=nÏ_+nÃÑÅtel -•DfÙ˜ÍŸJy6d—91—SBttÃœ·­İVëe±i	Úsºó~Õş]4ßĞòëÛĞ–pï­ª¼²¦Q¦YUÔ¶m\\ØèT‹Dfé²ms§¥›W³ÄDÆñH°RŒY•K•›—6¬ÆL›3æä†D½tï\Z^‡.‹ªãåwÎ™%ª³0k}–Ÿ8ísú¾_WIÈw>ÏµkDQ¤K°ï¦§aµ×E8”ÏDæëÏ=;rõõÇaxõù)æ„Â-lM.³L¥VL´ÌäfçÎüê¢±tåÓf¦æz½‰d­j\Z:ë½X™+6éêrâ>{šÛò{>O^Ù¬czíŠÕ®ØõÍSB.¹­1İnJtCœC“½:5züu‹§¯¬k6©D9\"—uIj3V†\':^v¡W³N]&†çr¹èfkÚ—\rfí•Ééu›IE¹p>õy×ƒéóz~O^š1yß_ª¿O­ü×GgÌÎ{h»ZúÒªÚCdW¤ëúnŞ_!_IÄïÇ\"ï]âµµu‚³]*–&¦¬RšœÕg~yµfv|Õ¿F}´\'D¬×¿Ò¯™éúiË2\\3£5wĞgÖxwi\\Ÿô¬<»xä½>G;Şñ½ôCÖù×<uë9ÏÎO§±ç}/[¼uä:ùâ·‹pr}5.<M=¦8Ëj·…­”ÔRÜ¡(~lé(º1Uù³¥E\":º²j5ú¯5íëfgõf¹z£¯%f¯ÑX^·\\ãÃÖ­œËibò~{õŸ’rôiõşSÔqõÛ©9ÂØY‹Lí²Ó6Şü&Öfk©4-¦/í“¬xvxıpµ57)Í§4¹òèÉ•s7>t¨ƒ7««\'¢Üìú¾~‘:µcšè`Õ2¾siÍ\nÑÑngÍYœÚÃ‰òoâøz;‡“Øåé§iƒ¿Ï»µ:˜vØ²$,™¨HVÁ—NÔHE|w±N±óÄtyİ0œÚ3Ù›.¬°œÏÍ,¤G¢÷~o¿¹Ù¿;L½fÑ4­‰¾TÕŸDĞD©5˜ÚU³èÉ/Ì¹*ëùı=·-¹éê70ôxêZ7	%\0ˆ&	\0Ã©\r±Ñ1-\"k©ÍğßJñ\ZçÄCóo9ó?IÊì¥+ZM}#»Ê5ŸQ9uMjnVÍiš_(Ğ-DÒÒ„ÁjÌDñúÿ\0>Î¼G Å·‡£µÑóÎ—èsç›×—tâ2çµ^vMSYÖ$\0‰(Vç³UoE¤XEs7ÓXù¦n÷›ÖU‘¹$VffXŠÄ¿@ôş7¹Ó=n–fÍl¾wæ¶è´iÑ‡lÕX¢iÀLe‹å~ƒÈñé­j¿>×ìr7Íz]vdËòÚt§3zg©¿‹Úôùí!¬€PQ—^mRb\nÅÎi‚Ì.úßÊ®yÙ¯š)™¨–ÒwcèõÃúüæGA´™§@¹oÑãv3HœËÒy¹óZ~ÇYShåÖ•˜—gK“«;ôºru3póú­Ó†îÕ.{;3?×æĞ.ÚÍ •\0²¨MŒP«&Ô‹šøOmÆO–åÓ“j²” _¡uù]^Ü·lÉ¡u73Vkòpêvx½\\í¼şo–åÓØpüö~=´ä¥sYVˆ·M¹ú2ô\nö3¼å9öv›ÉèÙİèE½~Ybï¤ERõ‚•f&X–cÖnb}†k¦¾UÌõ[–’»U Ût8İÜ»»¸;W®Î{cŸßãùïÛù:Ÿ?m×çjå×RëÌ­u¢‹’Öªì~i›ô.ÇÎ}T×q|á7·›«Yõˆ}=~bVÊ˜‰-B–Z)K›cvK)Î×Ç±›¹»	LgÛƒà¾•ó^ZEf3 ïtxwËĞëó¹šö<ß\"®{êgÍn[t®q·iÆÌİ‘BjÙÜ²¯ÏsTWM™ï­²³ÓáôS\\ëtKrz3êzñÓß‚,ÌÖ8¤’»V—K­šævzËæ»¾fºÚ1]y´¿…õ¾g.-f¼úÌÖGÂ!.RËkÒq\\ÜÌÎeÛ6÷¥óuİ\rš„¢´ùCÒÌ«gG£\\şçõ­)­¼r»T¼İ­—­&ÅYp­iLU(†Gâ®OŸßÌ®Ì­EpÛW–ìyr¢ëÆæ`P\0\0™©jfWİ‹ ÎF‹gôUÊú?GĞtÂµË5–Z\"[Ö”­‹«Å$V”±æk+ÌÅÍ|ãêµÜİ5]NYÈyksºRíÌb²˜/ÎˆÈgÆ×¬ĞjÁ@I$Ê}˜\n÷½/˜\ZŸ`è|<O½_àD~‚ŸÏ‚ş‚¯çğıoÏ¡ú\Z¿Ãïkø@}ÎŸ·×âE}Ê~\'Ûéñ0ûB¾8W×²|°GÖğÁíyşh®Æ<d6´3nP[\0\0\0\0\0\0\0$€’H	 $€\0\0`$€’H	 &\0&\0\0\0&\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÿÄ\0.\0\0\0\0\0! 1\"02A#3B4@CÿÚ\0\0\0ÿ\0äÒP ˆÜE\\jµÚ¬ö«5ŠŠ§¨úzO§¤újE¦¤új¦ úZ¥ÓŸK§>—N=.œúZ¦ új¦¤újO§¤úzO§¤ö*=Š‡MgµXê€áÆ#Š0Œ!£«d!!!ln¼Ä_}öcg´†1’D‡³ïBá#BFm!!!.å÷1³Æ1¡¢H{>ìB‘ƒ				ÿ\0¤öc\Z\Z08’DöÀûP„ˆ‘‘ƒ’1úlcø$I\rnÇº„$$GÊB0t˜0cş«\Z\ZÏf‰\"H–ì{¡\"„$$$-°`ÇÙÁG\'³3Ù˜Ö>ÃÆŒ\Z\Z\Z$††‡³ÙŠ\"$$DDLµïäö¦B›&êÓ$J	²¾§(ÖÓ^bò{H†%ÚYÀ’Ç{ß	!¡Œc%²BBDP–É	G–ïh$S	HT×YÎ=_:½ò<j8s×CªÄzHÛuBeÔU®ç»!’CD‡²\"„„!B3²íŒzXËÔ2Z¼N|#¨èÕ>ªµ]*íböŸ¨ûp«P¬²¸Ê.¾GSÓ2WÎ\n½o¶2\'öÆHÆ1ì„!B·]™H»RFÎŠì³àçÒ¨ùFËÜ®ª×+ey;[%Ìªº^Û¾svKÛ•:µ\\%n+œfá(M7(¬vãy$444=’h¯±dúµ-:åÏ¸Ù9a¿îºVôÕ,¨i¾*”£+‹ßªj1÷9¶YTMÁ»^#?r˜ÍÂP’ÅSŒãÌnÆHcC-ˆ¡	µodº#u¤¤ÙÊ}$›Œt¸q»=kÍ—Mf¦^ÎœOŒÊlÉgåIŒìşØhmJJ2¦j^ä7ı=˜Éc$Kd!zÛUng|ú˜¸êWKªÚÖc£øÆéf6ªÆ=Jy„|ã1DğUyiâ‚úùÓYîBèrÙnÇ³ÆH–ÈDD/e³[İ>Š¬Ÿ_—ûCãy‡\né{zoÊÚ0‡>ŠuoªqÅÁ˜ê:9Q%S‰LU®®¥:³EFÜàŸŞLìØÆ1Œ‘\"Cˆˆ[!Ûz„±‰y‚ÉæSâ˜.tß7«³«Q¤öÆJ3º}sü§“J¢ÓPÉ\Z“À‚ö­Ó¼NN)ÎZ•jÌ}Œc$1ŒcÙˆ·D{<\ZéòøO—_›¿Á‡¥øª¾SÒü?›+2ğëùA|hK®Pê%ñq³‹gğ…ÿ\0×©˜îÉ¥»=Ìöc%´Dˆö!y¿ª\\É‘óà^ÎŸ\r¬ˆÑ‚$H‘K–RŸ+W6¢S}\nÌFO0f–_4øìcİŒ{!d#÷ş“ü¢¸È¼ÇÅ^\'ÿ\0¿ò?›é:G\'´9p“«¨“Ã“?×÷3O,[Ç±ŒcÉlˆˆBğ`À–ÌÔÑşOñà¿6Èø—øª_*$!ÇNGNK*”]˜¶ËÌ¹-†6—å7ò§ü•~Œd†2CŞ\"$$$cf4Z¿ªï(Ÿãc\'óœøC‚ŸÂ¥uñ.£Üœz¡]–éÔ‰Bp:–NQ„ÓV|ü3K«RÇcĞÆ2CÙ\"]Óüo_(x+ó=«YMqÆ4¨ÁÂ:ÉM5Ñ¸eÃâg*tBEôºÅwIm™}]Q×ËÓc›ßcÌd‰h‘\"!w¼—\Z…ò¯ÁşÓò/.^#7]~Ü%&™Ìúx“£m\nÒÉ‘2lp‘ôÕ—ip?4×îËÒ!Î;XÆ1’$2\"\"!l¶}šØôê!ù?hÒG‹\ZZzc%Ä²Z™u}Kr“R,ÎjlŠÌfúc;²\'&*¦ÉÆE«¦Í\'Æiû^Ìc$=„\">»½Z=7¿ëõ&Eñ²WãKÄyZªÜ-ÓW)Îuÿ\0epB†H.5™b*}*z‡:˜Mz’]U‹Cÿ\0w»ÉÈDD!»Ö+ş¯ö–ËòŠæ%$‰.häç1ƒf6½|ºI®ª¥œéè~Ö»Ì<zSÍŒcÉ–Èˆ„!wú„s¥å¯Æ´KÄ^H,(‘cYN¼Ñí25ãf~¥Ì¤°p6&Ù­Ë³¡µéQÆŸ±Œd†2CÙw$jtíDÖ+HÏxB øO±³;~¿Û%Yí˜Â·™èå*+öáÚÉc$2DHˆBİn¶×^¡Tã‡	a¨û±t´úy§tğ#&L[#õ2~ï—Mrü}3Nä×µ¢C\"D†Dˆˆ÷£Wi”¥¨Óà~ad ş²Â»§`Ù$Èù0H­™5rş½=.ùÂµ÷2CÉÙDEÜ„Oñ×JS\'çm:Ëß$b]Õî^¥UıKÜ=Î©.$†]_ºôÕ{qûÆ?Ù}FXµÚ7§ÚDÈ¼-×IdéãÛi¨Ë5¬ce1çì±Œ‘\"[\"\"\".Åİ¬©[MĞp±\Z/Æ\"#øÇÄÒ:ŒğIˆ—*‚µÆ;ìc$1‰=«»=n®E	8è\"/\r>_™I%ïÅ÷\nÖFÑÙØôş4Çªxûf1ŒöDH‘ì_c_¦¢¨Vê—hù\\Š,ŠÄ …T${2C‡Ï-Ï1m¯Æ:EğîcìlcÈ‘»?k¾M%®º—ˆ	‘bi?ıM¸ŠÄ+:ÆÙäğà“„RsÇ´¼±±Œbˆ‹t.Ä²ã¤xÕ¸éã«ÕNùÅp¶L—*»\'Hà™mG´*°á~’É§«Û‡Ø–ìcÇ²¶ˆ¶B–Jô¹+Œ*57b\Zª¾¦7U-=Õ¢½™¤Òõ©ú|\\g]Äy1·J:M6’UDaŒcÆ2[![!óNÉŸBóN5)Ö™%˜ÉõG§¦Zíu5F¦Èm.\rªJ®W¬W‡Ê#4Ïp9æOÓ½65-ÓFeÔJ·ÜöcÆ1’ÙBUS°ú[‘¤Ó`®D¢<¡H—&¡b~T85ºêb”¡2ïñÑ+è–‡_•ê+ÜÓGÃ©HuM/ìBœ‘¹¿JÒÇİİ–ia2İ, 5³cÆ1’Ú\"I¥ê+—I“ô°\"hÆÖW”áĞğE`Õè£¨SR¦zŸğéqdc¥„¢Óíâ](HHéDQ ¯¦®ë)…ŠíD¸{±’$1Œ“Ú\" ²ôz3Ù’$¬Œ«»\r<­äŠy8déÀ¢`Ôi«ÔG[¥ÔÓ—¥³&³åV6[ÑS¶qkáí~­E2ª[1’$1’d¶‰OÍ°‹Œ(¸ıj*÷#£›O|dKÛ“ñPÉŒ8Ö[ïk´Ë ©.™³¥’Nfš¥T;¬!ÊÚqSZÍ3­½™\"D†2[DG¦éš\"‹jqtOk£Ò×+y,˜Êk\r\r.¨^ªÑB&š]5h*–=\rgñÄ}>†š¨‰a.ùrª}ek´şÔ‰‘!Œ–ÈôÊ=É¼ÁWiåNu¼©®¨éßõö`’#¿ÿ\0¦+«—¤ómŸIŠöğcî.\'úŞÈ+#ª©Õc$Hc-´´JãMıPŒ²°ˆeÆe\\>ïÙ}jïwÔ4ñùÑÂ±¦icíÑÔgîYÅ‘ñÙêû´Èc\"CM…U9%ˆefI. øÿ\0×ìYñ\'\';tÑâ*£îj»y_É£Oµl‰d‰$Sd:4Î$ˆ²$D`ÿ\0ÓwÛêvªt•e”d^=;üf±ÔŒıËWÂ­ÿ\0dŸËWW½L¸rd†H–ËKF*Pz{2šÀˆ±p//óû»»d+Š#>_WòuK¦gX¬b¹‘¶/ìË•_lÿ\03Õiöí“$ÉÚ=KƒâÅU><m~„>í]¾Í·2Êc¦‘fD÷ÓÏ?a‹‰vy™­©[¦˜ØÙ!ídÓ9AÇ0B\\!ğgšßÅ#Ûë:¿vÁmRŠáÆ8waÆÔFhR4Ï6ı‰Ÿ¡ñ§Ê×CÚÔ¶61íB$$âF]i¢/oõ¯!ÙêÚ¿jäÆÙ+*d2D²¨ÌŒöo‚¢7Û=6S±\"&v±â(ğ¤zíD‰1jÔH&G’?ê^7…›bKÂxqfMv¶4ÆëŞÏhğW/•,á%4ŞÌÓË®±w½¦ÄK™gfÏP¯ÜÒH÷§’dàLÉ¨–\r/ä‡âÉt¹ëãı}“\'cË{dòx„m*Ô2NFxVBf‡ñ{kåx|\r™âDŞV¶>Ş¡zæˆKˆ8ídÉ¬oÒøÎ¯Ô«v¦VŸYÛ;dÓ)¯2ÓQÇ²]NÒ_ÚÔ#KU–¸AB\"û,ü³Äæ)äÉ!³Öã‹åÙ¹`®Ì‰àRXLO‰O¯YõUÑ^¯ÔgyÖ)äogÚ¶ª]/I4âÌ™)-?}ù$ÉşR—Oˆ?–FÉ3ÕáÕ§cŞ»4È²:ˆË™[FZœJv¹>£$LìÙÔug!ÌMš]Cƒ§W‘İÔ+³O™ÚIìÉ“;2Î\\¼]\"¶dll½uWgxL„ÈLŒ‰[zo&yB\"Ì™2&/9=±@£O’ªR¢r# (Ó×W´¸ì{ä™câÉfÊFÇ\"R\'#_›÷‹##ßŒTµÌÎo¨ê2-²d[µ¶DÈÈRDd³¥ikhvpìê)â­ÿ\0ÚÆLÔKoåSâR%&HœPç³«¸Ìı¨³&vÈ™ÔFFî™GRˆÜFR±é4}çir\'¾F1–³U.æ¿Å²Lœ™9\Z‡˜ıµÙ?fND‰24Zİ>›ª°şU‡éÚ¥=¡¼WéšzÜc\r™ç|’ò™‘™2I–>5“ Gñ“âL›$É²_k;&dÉ“©•×+gé¾‰¨hôÑ¡B2dÏvL™ÙøÉ“#,Lóe#&ÉÈœ‰H“áıÜ™[Òztì44U§Œ$dLL{äÉå\r™:ŒGQ’^r69\r—?„¥›*ğÙ9‘9ïÑZ²Ze£ÓŸYFj×éˆú†•ÈèÏätbõ-ü–ˆşKD#¢?’ÑÈè…êZ!ú–ˆ~¡£?ÒÔt‡ò\ZSù\r)ü†˜¨éIkô‡×é¯Ò_¥»L=v˜·W§p°êZŠ’–¢¬Nè±1Èoÿ\0“ŸÿÄ\0\"\0\0\0\0\0\0\0\0 0!1@pAÿÚ\0?ÿ\0³ccş†ææÆÆÆÆÆÆÆÅ›››››rÿ\0†ÿ\0¥ÿ\0-2˜ÿ\0‘\ZØ¢VjÇ³^É\n\"åaÄj¼×	X•rù’6Y|¼G¦¹¢jº²ûŠêJâcô_¼!,ÑE‰\"X}¬Ç„,ığÆ?DG„\"¸Õ’úÖ…p¿0„²¤Åø6%cšD¾Éşy_xBâÆ&?şÆ«èŸ¥ˆˆ°³Eq\"OÙb\"áñòKÖ²ˆõxd¿|×+ô‚ãSD8\rcÁÙÖo9’‘òNñe–_¤]x¯¬Y°Ù9Y]ßœ\'Bv\"k3ËŠJÊõø±,6IßIW·Æ±)}–]÷!úÑoëÉÂËá—Ù¡¡§oWœP¸h}>kÂ(\\±û¬F&¼,Ëğÿ\0ŞœbExÏó§İ(‹6^o|˜¿æ±e–Ye–lÑ¸şFl_ŠıébË…\"ñeö‡”¼hÔ¢Š(¢Š(£SSQÄÔ×üƒÿÄ\0\"\0\0\0\0\0\0\0\0\0 0!1@pQÿÚ\0?ş=E\'‰EQEQG‰ÄâQEl´¾ºë]Ë5Ş±e¡5¢Ñö$1Ê‰NÏ\'‘3›B˜˜¿•Ÿ‘ÉKbó†X§D%Öô“¡ù*°†|h¢‡ˆJ…çJ(¢´¬ÎXd°Èz92Åàøå¥Q[Ë,x½¾9Eu?2èD{¬2‡£CVd²ÇµaÏkòÒ¢°Å}ÒÄ‡›Í¤)|}k2ÄŸE‚­ïE¥^7x„z¬²ëYúè‰]w¥\rİVEi]vJTJY¬XØ¬øáX­kªJÑ%¥QĞ•Ò³8YU¥BÅœ„ÿ\0ôHŠ­S/¾xŒNJ»hxz²b#ã©³²•£ì>Äs]ïi¼2ğ™Ç)ÿ\0™yD}~NmëX²>»å:\'+é‡±tË69\rá•Ññ!j³cÕ”5š8œYÀúÏ¨Q¢º^Ì¢ÖÅ›é³‘e–^,³‘Èär9Eÿ\0 ÿÄ\06\0\0\0\0\0\0\0\0\0! 1\"023@AQa‘4qPR’#Bb¡±$€ÿÚ\0\0\0?şÓ¸(ÙFÊ6°ˆMˆMÜ&îêêêêêêêæææææêêêêêêêîîba(ÙFÃÿ\0ÒÚ#eı³P£N£n!3¤Ğóa™ƒ™,\"9x&òhÑŠ]¬¯ÙjhÃšº•«3Q›\"»]OÅu4T¤7”ˆ3â”oü•4bN\\Œke‡Ø¤‰CVJd“§6gLÎ’Îd¥7È›xš1Äy­O(\'¤º“‡F39Õuê™8jcö\Z™°æÇ›d1\"°Dúxt\Z}Ùÿ\0QbKkàÆ¤×<DáØ‘4PšãëejÄf¯‘.FiœñdŞ“\"˜ÛÀ”ı…¤áö\Zœß\"\\Å“éEƒª%©3¿6gDMóX/ÅÚu;²¹¹™‹ØY¸2}Hâü¨¬©\n™Ğâil³c\nŸO+ì¦wãsVk¡êê1$G”|‰ógø)ÈÉÃÉTgq¢¸$ş	s%&g*D…|°óÆ69ãj\'ØnÈ êPöGv1.e9EID¡1ËD¾}Äù<I2œ^m³³İÙ\nîfò„ŸAtd¹+*M\r	Äb8r‹DÍ{1`Ç£Cüb=ÌÆô±_`dÀßE2(Ÿ1³Úä…\ZùFo!Âi‡!8` ˆ¡x¢¡²¼K¬C=ˆ†úĞ‡ŞÉ»]½W!D¹åP­|Ù!qÍ!Kò‹¸çÈ“Äêv¸šâX¯Â!’VVælf&$áÄL™+aâböµŒVµo{($ì“£\'	U5lÑ›\'kaâbÔRınáRŠh‘2L•‹·¸î»$‰YŒ¦R+”¶°Ù8FEÙÅñÅGrw&ñ¶¶fÃEy6™5re,Ä¨ÈŸauâ§ù+µ¿U”D2œ•f6´Gœ‰ÊB$°³6òm®ÇBà\\R‹ ì¥İvu½9Y+	7—!ÏùˆWAßŠÊ{ZØÙ\\¯Ñ˜ßèNiÙòOıø¨ı‰²\\lÍx2KŠ‰st·@V.‘>Æ{À—¥–Š²p¹“&ÅÀ9’[\"KŒ”7UéY£ÉÃl’¹&r‹íŠính˜İŸáá|µõØÔ\\šQûÛ+jI;9\ZEl£ØëŠ:‘K›¹2dù•F(äR#‘ÊE\nãdşÃ8°\ZÉy»\'w¡‰µrB\\vM\'!¸š1ÑéªïmU½Îüm1?ˆäh¡D8c»8ÉÀä57ú«gÇ\rxÉà´ugsº³±ı\\‡“Êb­™K!Œš;“åd•‰)•ÒÎŒê¸}[+3ãVM\\Îäí¥\"X325(¬e&J:1µn‹+	²t&Öz2•áYL:…I[…é[Ò%ƒ32ŠOı”ê\'Ì˜àÎîMãú¢pT¯$ñ6f+®ü²‹äúQiBŒè5	jj«Ô®\Zå\"d™4Mb8\"ÇS\\\nY•‹”äSw´aç«“&¶u¹ñdÑR‚šÕR¨ÊååCüÛ~\"fÙ¥f5²x[\Z¼éQ­“V4.ÔÕdòpâÜí‘}uÍ]pÄ‡øÔö)Y„Šar%ßU\ZXCK©p“şe©”8U¾õ32±~Q²{ëÕù­˜µ	KPµ9H»µÄŞ£áZæ°$ïÏ\'d¢;\\‘§è,7(K…fzÙ‹Q	BQ\\î„õF6ùêó^¹»\"Nı,š¹3ßS™ÑZ‰:Y.DpòÔĞÇéÀô§I\Z4c31èwf3‹[+åW³½H¬ª)vW¥ĞÜX»õ½íÀÆ¾uT¶NÜM\Z˜È¦·_\"8{ŞêŠİtVTÍ‚±‹[,““1LäÍ-%¢åú”¹bq²IÊ>;¥ÚŞyÌ3›+Á¤µŠüK¨×MDÛ‘,M\'ÁI9#y´Í.÷ªÍIğÔ!áâ±6¬”\nb‹)µÂ¾b/N7ğnY9/&oÒˆÿ\0±»\"u~æ‚JüşÃ›m™ÿ\0òjúˆ\rÔ\nAƒÂ=Cà(\'”Ñ„ş\Z¯^&.J8a]Ù½‚(ºÌŞÁäßäü§%äõ9/\'ªÉ~ÇªÈşÇªÈşÇªÈşÇªÈşÇªÉ~ÇªÈşÇ«ÈşÇªÈşÇªÉ~Ç©Éy=FKÉêr^OS“òzŒŸ“Ôd¼§%äõ9/\'¨Éy=FOÉ¿Éù7ù?$RËAäÚFòy“iÿ\0iïÿÄ\0*\0\0\0\0\0!1AQaq ‘¡±Ñ0ÁáğñPÿÚ\0\0\0?!ÿ\0äËŠt8­P¦ÔX(7³ÿ\0R¤ÿ\0Îş£ş!ËÂÂQbq|Œ¤‚gğ¡\0ƒ à<ÿ\0áøpÿ\0âÉ¿ëÀ®ˆ}³G@á±¡°´.\n%*	w…	D	xÖ…¢²P¼xe‡cD`Ö/*Ù¡A¡°öxŞ„=I¾BB\ZaŠÈ#èKÆPr,CÃF¶5dX4%Bˆ\'Á…±¨xq†ˆ,|È¸.6\n˜«‹?ÜQ“Ğ°¾x‚5ƒø\r#.K*¶<¾[±!a`°XÑBÌi´AğBxD‹ßÂ¡`NÄÃC8,.\ZÂ	\nHªMëÅÕ’^Ä°\"¯¬0´Lñ˜2Mğô\'_d\nÆQQ\"À£B\rQfA!\r£ÂŠ!@¤Ù¤¡RÄ¤ğ™=ŞÈ©ı±;òr¶H…-²¢lğ‰ZkÃóDÚÃ_(ä*6…XØ[ÀŸ\0(´ ”WÃbDèJQØ×BP[­Ëğ‡è/Èh†}7D|(!ônFÑ´-Õ4nEëŒ«eĞµV†ë†jÉõˆ¡˜Ğè6É(·f¸h/…P	Vi`O€Æl?Ø§bÎ\"ÿ\0båû²!l7C[L)•[1í#DrùòC§¥OÙx.KhBA6µà&mZjWh^çv}‘špò<i’.dn™{ìxX„XĞ‚	ğÆ„9Â–\n-|t$&èibÙ´s[b+BI¦ñÊ\0™Ş‚ı*Itÿ\0bµªGl¯=rO¦Z¤ç’Lï°¤QZö ÔŸéäp«z\\¹ùB•Kö…”Úf?;\"ö<„LV˜´)î,‹EY9(!±³aá+9MşÈ9\Z8mˆKn\'±®\Z¶;b‰ª±§†¢œ#JØ|àfµÒÌ]ŠÛÙ\rEÀÍ;vx4kd-qDWİÑ>EÊæ:¶²=å^\rPĞ‚	Š§X–1`—‚P²„°@°”)IÛ„@fdİö‚ğ]J-ëÿ\0Y$”­ƒvI\"é6¦FGôz…ô‰•Øoö†ÂfLÛ±÷IQÓ:şç,ıì ÍS:ìháv9³\r D…7ğ.+…±p)P‚ÙÎt*¯	Öê7xx>Ò[ö!Y¯ØNíh¾¦ßĞÄ-­è…©&‚? ‰­R•\\ŠàşEa]§ı‚~v_¸–B\'FÎoèAmÛ¿³óˆÊpÿ\0¯âKÇ\\4y:ˆ-	QTA¬1#+¡²MDÛ¾89Û&ÎßB›·ú\"e[8­M&nØJ_0ŸØ‰¥‰$Ka‹bTxÌ1pğQÇØ+ƒ¨i}Äd!{8û™4UA®Å8>Æ?qÀu2¾e›‘œuÁÜJ]\nb‘R<$‹¯,Z¡¦ÑÕŒØü9½ÚzP!K‰ÙZ	0´K:hTÊbÂR9:ÎëÊŸÓ\\\Z\r«nÆªâBßÙÜ\0„^v#íô2ƒyá‘‘3à«;#œ°A,ß4\Z2°™1§„YÍ¹*S³{%>DJşŠñ·!íg’	ù‹$’ĞÉÙ¤¡Éekú‡kp^iH7t\0·!÷ÙRåÄŠ¬šO(‹oS£‡‹í\n	ÿ\0K mñü»8±“ß½-ÈÚ™§ÉB‹Dµ†Ö\'Ñ¼Oh½»EËGOCcÇZ+ïb‘3C£ŞĞ‚ÁÏÀÉr‹«Ÿı$›D—ÁèĞ&\r{/G=¡i/–*7O\"×z¢{hS¹ĞGÿ\0Dö’-­\rıI8z\reÔhFò±¶\r‡ğwé…)\Zí‰A\'ƒOÁW¶Nú>Ê¿ØDü²WØY²_¦S²vAÓ*å©šcâ¶ØT”·$n îBÔ—ß’ƒ‰ü™[TËÎı¸šmˆ‘¶=ãa¡ó¸±aÑåŠ<ô\'B°…=•§–kOŠ\"÷cı\rŸCu¤£öÌ¶s{’p\'I”`\\İÉßÈ›UCİ&ßxÓ[º!nû19éT_õ${ØjÉ0[§€Š£ğkäqxl\'dP¨&ÉÓ5™½\rzÑÉ#5~‹iœk“ù\'æ„ÌVäQ¤¤#!%M	€ûè¡S^KÄÙZM—ò1Pù—“C>¡o`ƒô@ĞÕ	B	xzefÄ¼A?Â„Œ!ôè“ûè{4¯b$ÏÑ[c8öÏ4Ìÿ\0·³q®ªÔ±Ü>ÁŒ¶9fI%=A.DæÕÁ«ºå-±h\"œÉÄÄ%X·ä{Š$#LK\ra‰»£ò‡Ú~¾†´5lI\n£Iô\Z×.	·{(àH(	²IKè’QgPì\")¯	^FQ#p,»3Ğ=y\'hÌa¨Ğ¶rÃLX†Â\n-\rbË’F])ğä!ç‚!qè…}!ylAæ}šT&î<Ç$ıLÙ;\\\r[B’±Ø& “ˆlz%ğ!ª[Ğ¶‹ôğí—¡èĞA/b‹Y¶Ã|®&XçâğÓy¨ò5§ĞÔ»aÙ »›ÜÚ*¥!>üĞœkŞÑ:¯QÉé|ø(G&çŒb§hÂ–Z8Š¦¬‡\"êäxnBøMlhd&-ˆ.x¾:üŒJè?Ğn/¶©eh¹$”»t4l¹!$¶\"D;åv=|äĞIÉ˜—`ß±i¡OA†‚¤Úk²AÌ ò\0XŒ$ı…˜¹OD…{ÃÂIÃŠ³ø›åÔlŞëá\"{a©\n$×püú”\rlBÍ7ªˆ<ÃQĞiPšEØéÂ]\"[i$&‘àâ‰$•h*KŠ9Òd…Fb› k˜èXºãîpÆ^Ô#\r	bdö9f{Çe™(A†¬7Â9¸-á†(Ö!¬•bf#»‘?çf+cTQˆ5,ÑìÛ³™ä5€ğ:NÂX‚1S|œòÑ›[ñ%’ÊS‚¹rüí~ÇŞ2¸lQ§E¢\Zˆ &	\rÂ¢$1ÈçQòbº\'¢lÕ)î+Ú§GbÄjÊ£lP×.Å„±E¡B‚T	x»<´Ñß£ôzpE%dÁñaÚË‰¼dQ¦4©Fİ+G¯eöp¡`N˜È¢d. µ‚I°ŠMğZ9Ã‚à‘½;\Z¬†˜äf„Á7‚eO#B;fDJD¨ò¤&hK¢Í,ÚàÑcHÆ9LRc¤R!¢¶Å>’K‚1kJT˜“àQCÇsÌğ<…àŒ!	G©5È±éå}f0JÄá!D¢hlüŠÉØr	S\'­§Á¶Ù6\nŸ“IÆIR¦DÆ‘7¼¼=á\rÇ³W‰F±Û	À¤BVGG\"Ñ=O2Í\'Ğ›\"Q%È”*&=GCs¡R	BR¸ÊäiÅ´ÀåÓï±b\Zá‘+x¿¾\'<¸ÃÃq7ğOát5Äœ¢$h8q,[Â© $1¤°Ğ¹)-¹LDèmÒ„.È²ü”Ş†IÙ2Ç¤\\a$FS†ç1°€DˆB˜ØE¨]&à˜22ğû.K‘/À¸’é¤¯qaÑOZWT?1\nDaFÆ5‰ÈĞlsÓ9¶&H™¸°ğ«BB•LnM@ŠM¨-Œ•?1İ }òò\ZàE	S™á£ÙVfˆâ&`ª{QGá=« cø‡¡Øñ’ô8×ğ.!3¡±b>\ríK³4KÈXXNp…‘Jµ†ß)CĞ®ì:µ\Z=I-lÑ8=Hñ·À6óŸo†€Â‘›ZÃ`IÍEŠÑ«uÅ0%8~§²»[ôGa:›‘(Tè’¸“hyÂ´)}!Jï·†7‰ÃŞbÇÃgq»777˜Ô0‰,ŠÂTI·M¾ÔOb{‚9ç(ú\"}¢‡xqsÑ:\r+¨AO‘¯t?Ci F¤wD°á>!U©÷ÁªäÛcĞßCØÇÍÇä9Ç|ÊÖ	‘m½Æ±~ø‹9èÇÃ{W‘~NEÅ°éI%±(±Ä<eÀŠÙ–DËÃ.Ø&iĞòicW¨ÎB}o’UUºD—‡%b¥yü<:Íéš\Z|mÆÂ®\r?@5tŠ\r(Ò¦NÂHÑ’R†Q—b;-pmO’aÉ iqò-øJá J–‹wjŸxpÓ|œğ†‰•ÔK(ĞÊcĞK5‡Ó×±¬cĞÅÇcÌzğß—ª<;\Zı]	Zd$†¤º	²YÇÑâ\\x‘¹õ‘¶3Ï“w ïÄAùG©PsÔÍ‰ıø*‰¥Y?ÖPÖcp­²=\nâV˜Õ±Açj4Àİá¹…%*ê‰ĞviÓÀ¹á‘Mk\ZÂ”…»fĞ.ñEĞÕp4š½¡êìW$,²&Ç¦[šŠ¤Sf˜Q‰$öú³„‡ğ‘àÃHÔªÏƒÍ>˜Åxy{Ô29£*z18±pô^ûàG³Ç©‰>I 5ÖÏÁJ0œÏ5ù0yd	bOåÈ”5™yT¡ªvß¬¾e°ØKº*;àK„PÖ™G ×\"6Ùlu\'Â Öı¢!‰6-ğ9\r|ğP.Û‘#PG¨jN—69¨5oúâC?b)FHyäY{6’NäKÜ·=X0÷•ğcŒÙh;B]!Êu€}¹çDH§¼Làd¡TÉO(g´ZH•#‘îÀƒ B+/BÂÍŸÇ…yÉ,ËØíò›:Ë$¢B¥*IYt×ĞåıG%!ÉOLİ‹öOŠ±Avœ‹@ËbâF†*E[Ğİº%‹Å¬™á‰¾P«ü[{&r!ˆ¹WÏÇ6ª8“\'è‘uÏägD³ó\nÑ8š/b®†„Ô\rŞS¼4-~‰±«ØTgdUÃÖóş%>VÆ16»)¦C0×EL¡·LF­1Éû?$QöŠ9šCÊ#>bÃšîˆ‚ÛmÉ\Z±ë4R¥Ø3$3ÎAé’\'CØµñ[ÌÌ4¬=˜ö:‡µÁ6É)àqçôtàJX„Vø,²Óaş ‡¼!æHVã(,±R¤à‚N	²K‘>E6P·bĞ¾k ñX{ø*t*ŞO³ÈP8Ã¹Í¹-”‚qGô\Z›Ep7X}ƒià41:9Ì	tôûlÛ N‡EW\"âÄB–sCKBŞcãär7Cä{³Òœ©CCk§‚Æ<âİ0@º<„ü ö†¢Ä˜\nq|1Ç~’±>i¾ØíŒù(‘Q–BÁd‚iú?‚Ë‰ÈCY¼±&ocÊ)Fâ¦0øT\rZc¹àT›Àœv¬áàwzCPÖ,7ü‹ğ\\çe5ğšDc6¬jÇ*¤Ä(pÚÛ9¾k#vT™\"91¡@Ş•sÉ@(ğ0Øeÿ\0(µ«ËÉ´Ø¶ñ¯gïXÅ8J8l”I¸Ã¤›—Ÿ\'˜t CJdã47[\Z×‹ä6¯†£Vˆz: ¬o¼]Õ÷9ÛÆ˜Ù Ş#ºbTbONÆ$»lf‘}„HÑÖ÷À¡¥ÉdîdNˆ—Ch@)9’%&8„¡A†èSÁ²´A¿ÏCd:§PòÁ£ĞñÉîTÆÃÄScd»§àf~Á…HbOÚ8Y°¬yDdöFG2)mó\ræ£´FKälİhCzÀeÂà%ñbBhÜ‹ÍÕôÊ›\\Š*—ì“o›xk~¨Eb\Z™¥TBª‹4cÖ^6l&\"éiE§%±sµAì‡	½-X\nåI6hI\"ì@¢^‡cAÇ‘ª;†!Ñàb$’u7¢ã$sòM=oÒ)eê¼¿¦!!tèSkø,\rD¡nm¸—3~É±x\r(pòIà:– ĞÉ;BÎ‚cdØ‰\ZVÄH¼Şg‚lqğW0Ùd¢Šp/²k´…—møB&$ü°—iMÙ){&ü‹`ÃY\n]ÉÑ`°šDÄ‡·Õ(Ö‡©.áSsrûìPŒO8äYH¦±97DŒ<Y“Ó\Z ³0“Óf¥I#˜ai’X0˜‚¹dD)\Z$ĞÔ1!JÎ@‡6¬YLJØ{C[¨úÈá«¡67#*0âJşH1:4%+bUPR6{Â‘;Ğ¨OhT¤MÀÂ‡}ÂbBnKlğÂ$b;D›¿ƒúMa\"t/†MÈa° …Ñ vŒÃn1írA‡¬½åDÄå[Âub_d÷0›èKGìoPuöèâ¿[sî(m\nâ({¡\'…d“…`Àğ0Å6¤ŞÆƒpcùeÅLÛ/ÉÊL+É7ØœË¨FÚ¦%z5Çà\0•ø!Î	Èõ–áä\'¡LtEB¸da,¶ÍÊ A79‘çü2H™\"*Ib¶½¤)?´£&¤n‰E°~qº”\ZÁ »—Ó\Z\n®\n<“\"&~’e$u—ï6œ5ˆİÿ\03ìLMRí‚é] %¦±ÌF4T_\rB2‹¢kIÂyÉ¹qÖùª-`Æ^hn°m¡¹Š{\"ëóŒÀüÂêQ=–Ÿyûÿ\0òçÿ\0¿ÿÚ\0\0\0\0\0óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<‡äƒCû#®;-Ãªs\r,ú åñJ¿©U(íë®†.GŠõ•<Ô³‘Ïµ tß¤h\ZµÎƒN*ı}>¯,n\nÏc\n¦é?a¸øÃı¼ÿ\0zş”úô(7)ã¯m‡Sbò+tGz›dù	¥äÛJŒà!ÈƒíöyAMô¬ÈŠ/ï­üRš°gĞYœ‘£†Š×½.O4\rCz_€”²uğºƒ©qœ²zeìªï€+Ó¬‰¬°‚c^fŞüÕØ‡Œ ½’²ıÙã5ØëôÑÑØMíÎ¹)Aùu÷.‘È%I¬½K˜A\0¼A’Ë,cÑ\n®!ø¥=»‹İÖm$p@É¹Åèw$şNşŠÂ)	_Ä†M %¼  ¼¢ÈnìÕzV÷?õuó’œŸ…òşÂÓ:§y$ß¯>\0şv&Úçwf9€LÂ¡áôt4ooûŞİô.˜Na9òÊy.lÈ-5fiÁ&4F-’j4i7Œ¼óPÔÓ\" ş•äƒ<Yøü2Ní¯jbTŸÑµÅøÛAıäÜüA FÉ¨„³K~zD˜J\\ô§\n»m:DãLâ¼l*2ï¡÷`\ZÜ²ó€E8&bTL}£Ä}s\0tİÆæõo<7°h`lvæO8R’°¢J\\$fm³ÏÔşî°Ÿÿ\0ª`W°˜3üóêåCv±ÀÕ\\ôç1¨ã‹AjÛ“~y#}Ì‘ÆKN¾OúhEm%.÷ÆøŠŸş@m²£†f:øÿ\0¡7°T({ÀÔÿ\0íî–	 ¬]†º“O¢–\0\0ÒÖ‰¬wòê	×«àÑ³D+Œ ‘O.¼Ë²\nïœ¿æ&{s‹/<óÏ<0Ã3Ï,0ÃrÏ<sÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<óÏÿÄ\0 \0\0\0\0\0\0\0\0!1 AQaqp0ÿÚ\0?ÿ\0¸±d±üX±›,X±bÅ›‹,A±ü)eîı² ²Ï¶^øo‘Ü9>L–ü<’pŞ¡µ…!†8V^0³¾¬°ùÆ?Š?C“dÇ‘ÆÏ%œ‹BÄ±Ÿ²<J=Ol’H™$Dp³wcÎÈÙÃ—¢Ş½Z3ıKNy>ü`{[d¿8áê-!r¶ğ87ÈîõlxØmÎ4î;p¶Ùm¶>A½²\0áàïØ$åË0Û¤²ÚÚÃÎò]ûG‘À‹`/öÆycø±üX“ Èw>r#†îÖóFËË¼©f[wz“¨şì²8>w7ƒØà6É>Y:iÔñİşAâÏ˜ğ3\\|-É\\ÒÑ-ŸÁ`Ùl¼¸MŸü¼mµŒ–õpde»VzË,’yÈ^Uµv‰q³8I²\rãkt›”²ÂÏl ÉwüÉ\\oaÁò$7e•xgŒç ˜:ä¯v^r¶!³ÙnÚ[o|~|%à¶X1„_–Ûl½C³ıZ·f²_äAc2>¶„Ÿ€Á‹mˆøËx\Z¬’Üw±l‹	[<í°ÇËcÈ\'¶cbw	ÆI¬äbZ8aÁdy\'îò|\0m»á‡SdYq±ÇäYl–wvl¹3W+äğ<½p{m¼Ç‘É\Zg‡p˜ŸlŸ£ˆvwƒŞbc¤BÈ³Éx-ÊÉAcûğG6x»#ØmŞf,»á–I\"^ó‚lÉe~ÍrÖ85î\0uÇ	ËÕœ¬Ìõ6AÁÊê\rµ²~Gõü–Ë©–b ²2ÒÆòÙm˜å®­¶Rëä?ÅœvN·BÓ“g Bp]O\r™ylÒxå¼ƒ#´tXı³%ìN?,©úyÏM|Œ­àõ´2I›juÆó¶Ş®½[0}m­¼1èëlXŒ~Ú1ı¬Aÿ\0ÿÄ\0\0\0\0\0\0\0\0!1 AQqapÿÚ\0?ÿ\0ÇÅE²‹,l·²ËÍ—ŸôYeKá¢HJbëÅú¤ÄÖ‰ğİQ²ß¡Ä,~|¥”\\ÛÜE£%fÇåJÆêÓÕ1Ì^ÂŒÁ-2uÓş†\'P¿@æºÊ*°˜ñåùJu”XÅ§¾X`Ì$-c½b/ğO.RY0ì2‘†ü8ø?&5 ñHÄ±Ö[ájãÌsp˜£§Lh\r=;î9©‰U‡ÆÃ(î•Â³ÑÆ&J\"±¶&ü1–,z ƒó&±ú Æº3^m•åbBôXéç¢J(üÕ¬J´}y(CÁ¦*!<<	Â”£jå¸#ÇÂ•ˆhı8?ŸçËûènÜ=b¢Ô…GR‹9‚ÃùJ“bÌ¯x?aê‹]Eİx‘5ÆÇèı¢…ÑúAßâ”Oe¢ÃÒ#ø)Pÿ\0tVˆc:\"î‰|\\~e_Gé‡ğ5ÂK¤\Zàı³Ağ…Öàø-Ô9§HÇæÒ—HÄ™Ñ1¢c,AiágK¡?á_£g^ÑáëÚ&,Æ\'Ñ\"sLt\'¦!!4ÆîxÆ<?‡Ái{‹ZvŒmå:ı<bav]ë(ß\nÅŒ~ŒM‰•”Ex1ã„_˜¬§H?2\r¤èË¬t/ø)û‚zÃğBq–‹ÌhˆàJNj^„¬AGòü:‡‚Œ˜ñëX˜¤ƒVQp¿€œ/* –Nb…eÖ°Õµ:SÌá”\'Şˆ^/2òdJ\\xñn*Y@ıÏyW&RbŠÊW¬cá0úÎş‹Üj—‰BÏ„!¡ûµpk¾‰|Ñ´×oƒÎÌC„ø!\"ëƒM±:?”!Â\"1‰<LğC¾-£èƒèè4F&e ôl%şA²	tbÖùjˆ6ÊëDDˆA{ñ(‘Â:CPlbå)r	/Ò‡ùş|/à²Æï‚d7,l¥ÿ\0ÇÿÄ\0)\0\0\0\0\0!1AQaq‘¡±Á Ñáğñ0ÿÚ\0\0\0?ÿ\0ñŸ??_*$©R¥Je$©_üªWøT©R¥J•*T©R¾kü1\n¸\n(‚è@¥…Šiâÿ\0ÿ\0AÄÿ\0¢(µ˜Œº\Z…DU–Fr«rÓµ#‘ğ¡ÿ\0\0Dïğâ,ş<ÏãÎâÅ«?ò³¼¾°¸??ğ(3‹\0iúÊØüBW!ş´Kp[pñfër]Nôà[{µ¢ú„âú‚ª8üC»@ÃgR’å&Çv§¿€Ë§0™sğ¼YVÇ‘\rË²ê¥ÅÂÓ,‘.°í)÷ğßwâ+Ê‡¢q5\\¡çóİ½K¹gÔnñ<¡bäTJø°&WåÚeL^ÒdAB…ì±å|îø¹¦c\\ü+PÀJ¦¥Ù–Øù@›1î*µ.ãøL‘Hä«\"»üD\\aÉ˜áxˆ»…4Š¹[ /¯ÕRˆ³r¦&q08ùœ+ëâ\nİ³Üæ$9ˆâRêPä8¹C¢bYX˜ïqW\rN2ô4~b#<Ær•Ôß©ÎÖÈ…±-–p*uÂßÔ|›Á&kP$«ÃˆS¸EXêaw4¡1ˆËa…‰r¡†/ÌK1ÄÊÄ»Š§EÊTs®%üK~RD%˜ƒ\n˜Oê\\©Şá„Ò®Vî1(J.¦ôÁ•ùM{ˆqu¹TnáÜµ‹ÅË8øTä¹pÉˆ¯_\n&Îàwñrˆ*µ×†\"×	G˜·,¼ÔÄ·5&œÆ)âYÒT¥\\¤ÑRÁ³rÓh7qà¨% ¬Ê*Ô÷[3´ÁFî5ˆ¢·¨@2ê\0”6G¸8¢ïá|åû©•f`›~ ÷$•½ÍüWMKæcÄQ¹Ly‚°æ-X›J9YBú˜|ü7¯_\01sÔ´™YTDdT$323¸^æœx€ÌJœØÆ¨\rÊwXßÁA¦E§¤_“=\09L3ÊÙ/U\0jt¨Sl¹‰É=ÒLÕk|‰KCTfäG:‡B¡WıK5+±‚QŞ%½nS¬CêdÔ£‰Q‰d¡Æê\\ä™£pÁaSd¼C·2Ìu0¯¨e‰_*:\rf*ßÄ3¢:ÉQÁ2òŠ6Gá¹h–#<ÚnÌÑ€÷,{oÍœË£Ú‹ş„åÃqÍAbÜócÖ®ÕÆ\"•«8ÿ\0¤Ô×7÷¶5Ùkâ1ÓXµMy*-‘³˜Ù¡gsÊ(˜—â$ŞaÄ3œUÌk^^\' ˜pNÃ3=’”aâ¥Ï©ä\\Q%®¿S$A|Ü\nâá %´õ®!‚à$òÏ®!D™¨+Gáh±â>\rt¢ŸÊ<b6ÚûFC)áÈµ×ôLNQÏD0ğ\0i;©hw¦Uå·îdèĞiP§\"9·ÅÀSxfc‘Åâ`í0®Ê%–Å`\0Š•XTŞ¢9™ÈQ}K¥È±àÍ!f(-•Ä/qÍŠ•²3<4×e’«¸2˜²•ÔÓÄJ^~0Ô\ZÊ˜¨\\TV”Wqµö„Ç¥¿hĞ%-|D r( û‹ÜŞ¥_&ß=@˜£^âPƒuß©µ0\rÂ^8Ó_kş% UU\'¨b‹–o¨8¡n	\rUV¼À„¸iú J;&,zñ \rÛ¡Bí¢Ş\\‰D\n)§çˆ€e¤º;©G(x¢U@^#è|C0(Åhª2ˆrñ-K5S—qÙ‰~ÒŠEÅÜñGĞ©h¹a†®P„õ¦hºÉ\\Ë¶B1‹âeT<·§¬Ëûwq-Fe¯2Ò…y÷Œè_™•¯©çqVRƒğcø˜-ÚßO›—&=,ÜpX6*«ş!i@Ñ¥óÔ+c0øó‘Ş(N?Ä±ZôWÈó,uXà˜yŠŸ§‰i(˜âÈª€å+7|…í‰´óÔfZnâ\Z#Õêp1U”Â:d¨B9æ¹X`·àˆ§Ì¢ ƒ˜«\rL2A³=Üh‰iYÿ\0<mŸÔÇÈlñê\"\nKÆræ¼GLÄIÿ\0rÀ ·¾Ht´Í7»Ÿ®h\nú5ûâ]e9}ÊZ¥àCª¸å›³Ns€vŠ5Çe2â¦ŸÈö¢Œ}¡)ŠÍ¾âl°¶n¸}Ì„\nJ\0ñÜR«œ|´±ÄÁ$Ö–À®§ ¨Su²PfT¸{²‹Ä³ˆÄí•¤áZî,&©W+•ÂmÁ¡]ş¦g\nÃÌ&À\'0Àd¾Ô¦ædBº\rÙÿ\0[©~ÁÌ¡ï@Á(”,aÔ^—\'Ê×ôÃEiàPàz Wğ#‘ôâ8RñÔubÀ™ÏdU±¶m}uF4Ài¸˜á_ıÃ–»îéh=jïÕÜ¥<Ë>à>:L`kÔ52Ë™H¹eÃÔ Íˆ-Ëñ\nšna^>:øMâB&Kˆñ3:ŒŸ(ŒÙ[[MxED€ò5uãÔUë„]@OB4¥ábÚ„C{¶;Ò’rE]KrˆÑÂ®#Ê³ì@‹ÊÍáîV&Û”`Åİ/°Æ	jlw.ÈpÄĞŒÓ†;¬iFàæ³¡¨VD×„\0³BşÈ•R»¹½0UÁ¢oY‚¸Œ¦™Ê(ÙyÜÉk_1Ä\\®˜yw)sjd‚ÄAÌ.ÑñÓ¥\råÔL…s4‹-Äf±ášV’±B“Æ!¹è¶1±(Våækû‚›\r x‚œæWbUs´1V\0İêtWn›†\0¨³ÄÂ†…Ùâ§tÀ†×BÓÇ÷kÇÜ¶?fŞ½‘Ó+†„A7|^œıË‡­£ğC²­JÙîrn­ëÄmb Ï)Õ‡rÅ1I±2ÔÓÓáÙ8 §ä\0.òL‘‚ø˜qĞÃ$¦\"0ÕÅtFIm~üLÀ`\'¤Ùô˜İq„nÑ\'¢\n®€‡¢\r¤t³’„FvŸe2º„|æ5¬Ñø\"%Íªa—7»ş 7j²¸ß¨1Ìbß˜Sä+³ª™Ñ+uå§Ù ?ºACO¸O¸â§Ã*=å;&Dd­¦MIb†Ø›•n,«©œ\\D]s-o\\ÎRœ£”¢Óh2Í!¯©£×Å\0á2îÿ\0Qy]Ä¥¶¡\nµ—Q—D¶¦xÄd¡Yü¬Qk™-”)Šææeªs°[\\Û\0òõaù =ÌYp\rAİ¯p›s‹<\"kX	D9½$çkÊPx™¯ûÌZ<-Ÿ˜ÅåµïÄŒŠ=ñq}	Q²Ü¡k‡® æ;âYw•\Z®‘Ü4m}ø”!çÄ\0¼lF.¿pl.;_wš‚ƒÍ@¶fF<T)CPm%0ç0V¡©j&\0”0Ô®JŞê	çËG}å n]Xê!Ç9¢Í@ØåˆHÓFÃÌ\097Ÿ;•Élñ-).‡’¸¡$À…u]oøN*}Ê¨ƒ‘„Ã)ˆ;›\0[<ñÖƒšbè^;êQJ´k’\nBÅ‡^æÂØ%ò!¬…Æ/2©ó‹DÆù¹U›«naEû‚ŒËÔG8‰Ââ¨y@ùc\rîo.,JÛ€º¤Ÿ¸Ô‹“p.A—€mOP­×Kâ7	¯ÒrkrË¤GÄxÍ Nâ\rª1zVDR‰B›æd¹ìÏ12í*ï¸†(ÁU8k+°æRXÆXŠ·Â AK/Ç™•ÉÊáŞ#må\0\Z¾©Æ¶jã^©äæ¹¨,H@XGû¸%s ËˆäÕ,l–Vió»î]|Ğ\\*4AN3krÅãà%1g1R]Ô£Jn0°¶Æ&Ä¼_Ô»+}CkæB®\'¬Á£¸UkÏÔ±îc”™ílÏ©JŒ´›ÉÜâR0‘«ÏK^°Å‡<Å[y‰Å£—˜Ê·qM]Ä\r}Ls‰x\05±‹,[ÅœùL0s/q©ãÔEĞm:ñ;\r°ó\0Ç£Ì \rŠ%ÊÕLûÑÇ™q%©™ñpw#&£ÚQ”à†µä†m\r+¸™ÌMÔ°¢³x”×Æ˜jmÄä‘Gêf&«DAœØ¶2;U²ïÀf/VêV­¨N÷â7§ó¸®3Mâ$–RÙ¿êYUXÅp›ÂíåÛ)\Z\'«%Ë¨óÄ\\QIn¹ƒOèFMºÌÁIzì™cµáõVYs±Aé Yæ›¸œ[¼ÆZ]@	Ãê*h?Œ\n¸°Ñ™£ñLÃiRXÀH*‚ \\¢&`·?P,ÑXú‰¦é\\8­]3)‘Œ¼J†à^&Ûˆ\"ùæ6ş›õ/´,(Œÿ\0h\"ù°ı	\0¶a³¿©’Â¶Vbqû8EİœF¦‰Ue<±SAÔ³LDŠø‰×Àjm€eÓ-›æ\\yRÊ\Ze¥UP€9©D¨õ5Æ¥©]Â»æRÚ¹Œƒ/L3y¡Öæ3éË´ğå­*Yx¦% n£Ù/JØY¤ÒÅ> Öˆ#^`DUP0\r¸Î¡\rR(l­©HÖ©ñ™å\")§¿bîë!(f÷&ï¬Òn\"´r9Šƒzê\nUW¸±œËtñ.ik¹Fjòh.€–-€±A³ÔV)œ¡pƒmÜÎµñ29ø¥³ğÉ©ƒqŒ\"•·30a‹4AšELEk3°†â¡°²ìu4~zq×=ÍEZ¾\"”ÎUêå)Xj¥(v†(¾%TÅş¡Bù€8Ë4ŒÚ˜9lP°\Z”È(ÌŞ½Q@şT)şãM6ñÚJäH•Ö¸B^VU@²âØ¨Ÿ7ˆ†\\; ÛG8âä«¨½•l‚çò%\0µkÛFÂ>~R†jüL}G0JÙRÅ!|N_,÷3â[‰šîhîÛ,©Q¤ÖtŒa¨M”¸eN\"<H\0cŒK6¨H#âëšâ\n-£ñ\n®Cô…(,®uÁî„¡‡„Lì%#CP\rf¦ªGp\0‹³/Q-aX÷)cSUægÕi­—ÁpæÏi|lÓ™ØE½B,\nÔeˆ£r°AJ ÜÙøÖtOä©¬œ©	bíˆÙ¹›\"1\ZáÄYr•Y4üg‚UÅ\0ø¹ë\"ŒñÂ¯¡s.Mc*ˆR­eó²[†…ÄÃ{—öàYn¤¦.®—¨¯Á£w%ÖÒ ]¥aÛ³¹RÄ\nÄ^¹[’Ü^ZL9T;–ö³ ÎaÒ³‡-*å7U:–®13Ô\ngLB‚çœÚ_8Tşc)\r·@ná†b½EğÄhSqãáºíêP¦ÈôÂÙÖæøŠğ8p?ÔÔÂq€\'	u(=[6Õ?¸6.æ#vPc”F‘¨ÔÎf’Œó;·\Z›Ô·ÕUÔ³ˆÛ:Ei?Fç’óQ&#q^	EÔ6¡Ì%ÅZ£rÊ­Å,´\nb fhõ6š°ßÒÈ—D»)P\\3’~WIVæêP/ŒfRØÌM²†Ş¢%PW2àÜ·»”) 0+Ø$ ã‰BüKDß˜j-ó*˜\')Tîf~¦AÚË—2ìó‹(`8‚ÎI‚¨+Ã ƒÊ`ğn\0À;â×eòƒÌâÁ.§Êäƒ¥bÌ9*!]ÍSD\Z7˜w¿€)™}òwğ¡¢XÊ¦‡é}AVÌ›‚Ù^qsŸĞ •…‚è(¬D)kPÄµ´É¨ÓP¡0†¼ÀA¨1NKrQ|Í.ç\'²¦Yie$.Qéáª£‰iZ0™k”Õ~%yÃF±s‰ÜÅÄ^¦S\n¼°27Şq­Ê™`Û™BF&ş ¬°Æ&\0%\r&Ÿ%ÍÀÄ%„\Z‚BÒq,„²­•…;Z?&8F³Šœ¸)P,{ÄÅ“Šêp?\"S¨Y;%WÒo‰k‰u†wˆîÜ\rÌ\r8F o•‹¹kHj¦P8³ß~\"–·9†B¥Ìa©»4=ÆP38˜Šı‘†\"Z°—&ìÄWP)Šš’Ø\\³Ñ€\0ÏÜ¬(Ä6ê\n pƒ‡Í+y.$W¥ÔAv\nk‘¾—n\'¬‘Ù,Ì²ñdÊ¨ä¬F‹KÜHÖ½1.pRK)ô,ºÍ²^#PÛ»õ‹îd,6%J»5\rGÌâo(¼Å^ï2•\r’˜ü@ZdxŸ©5vË&MÌ iŒBåIkc˜8 ¡‰´\Zq0p”ìG-x‹GL<¯TKâPMİKaZÀ@×0Ğg?ˆvíˆl0oPÌ±y•µÁwUvó„7UÈCÅQÔ=Bw‹•¦Oâ`‰J›Â‡”\\f#¸­îj-Ïq&“I{bÛpåšBñ°ÔØt\\4¯Š‰W	i´ÚRáQ+Ò\0Ëµ?P—¦©†K‹‚­iUÁ¸™Û/2üêö¬\"\0ã¨Eq1u¹zèW1±d”æRß\r±\r%%b¢®XÆà†×“êZÙ\"ØÚ<„Õ¥–R«Ì{JD›%¦\"†\n3­Ç´Ê=&ğ§SaTM>ğƒË1!K”Z”s\nJ•\"\ng\"©˜bÊ¢³±ıR³3Ó¯X‰{N	aÎˆ‚Ôrâk^bêŠ˜å.èÎ¦/gÙpØ:Ehl™yBîRæè0%…ßq*\"c˜RŠ\rT7U(•(épŞ&ÉUs©EÄØ`ùF)•mr¡>FÓ!ˆï¤[1gP5(ÓqYõğ«‚£,+®`[-AD&\\m/ˆ¿‰	”u4<î*E„²ˆl;”U‡+qQu/Z‚§0»Ôá‚pI¼àŠ¨c3IÊîP°¼±/ÕX¿¡\\£r½ÁZÌãpÜT°%»Ä»Š°™–™²–„âGƒ÷BgRÊ&âuÌ¢å°ŒJÜ\Z´ih_¹nåBÍË¨8XÚQ”Ëªû!PÍ·}ÅLb÷X‰aqÄK¸îò¦<ªÀÔ}+4¨^Kk_¡*UñœMb\"µs	 Ï,×Ø3O,»räÜ$j€ù`·RİÌµ3s0Zê7¸Ğ¢%7…í‰T½MKq_ğa$mâ -·«–jlL¨îlšMD!æ&€Ü<.c§…ƒika—Šó8PMQÔıÀ•{šd	Ë3¡õ7 M³{Aàƒ.•UQÒ2¢–-†Pga¨—‡S2w*‚p^8‹á{. ®èÉâ_‘3B,æ]ÍGàG™–oŒFÂ[™Ó7:>&©¢!Ú~„@|iJ™;¦¥ÕóÔC- 7ÚªÂå”b+k„—Eåf]?Ñ.ÀYÄLKx!ÃßJ©İ:î%ljT¢@ózi?¸\"=›”Ğå”áâ®ÖZ\'¶Pnï³Œ{Š.V}Æ¿z¶0º`ÊÁc”	”º¹¼ÒlÌäÈæef »–İj;¤ßÒ1w˜÷GqÑğE‘ªåÌJ&%ĞŞÊªƒĞ³IMsŒË ß…qæ3nŒ„r\n„Á«@ºÎmK4\rŒ¨#Zqì€·pÑ˜4–!ejbå‘Ô1pZ|Ä´ÑÊ3S­SÄCŸŠ\0	7¼4òq)Ak“MBÀƒ>¦\r‹Q•ƒé©N0ñTZk1\n™À‹áŞHhÌKŠ˜œ@æÅ6ÁQÇÔÁ™\\Ñ•ÍÅÅiğ7¼L8”.a.HİÜ3ÂoG%H³.{b”n!ÖJÜ°L®È°wL0‘v!øD*/	²}½!\Zªc5¢•!Ğ0\'^å“\'„¦#û™¹apš~â0Â%ÈµÎ\\’™¨7sîÈ°ÚÍèÊ`Ùá,/B¥Í%\r¨ËXZœ\Z˜Âµ¶ [Ôº*!/Shï(nRƒ3*9ÅÊ!@)e¹ê­B`,Ì²¯†â&ƒ—š˜ öº`G¤\nåoˆŠ—¨Û¼ÆO¿š¡èìajØà@’Èû…;%º²DÕJî›‡©­1\rÉ® ¢\"ú†Kü)n Á0IÉæ‚_0WÄê©rG¡L£šìæ* j™fVC•1cŞ¦•ËÄÈÌíË.R®&uÌ* ªÊ¡PÅ5³Ñ\n‹rÊŠVÛU‹|¡Ux£,¬äÏ}KàÜÙi³!D¹æO$²æ\\¿¨€u?p\ZZÅ´æ\"{\n™§¸ÈgúŠR˜Èa‡VJ8÷\0eJå€^	Cd½(N2ªBèÀš  ú\"Æ%½ş¥½ş¥â_PèaH5„˜ğe¦õO3-“-˜¨&ßQ3OX¥æ ªY¸GI|\\u¡BZq/%¡’\rq–\r\Z”\rUİKzÆ¬ñDZ–¦rö¸„È€SÏ†€©ÄÓá•ŠXí–D)n4L\rvÍ”b\\a–ôš0²Æ\\”(¿ŸÄ^Ó…Ì~o®çÌŞ0I)}Ìæ.>-–Â./Y•œ5RÎæ; ÊMÙ¨(­²G<wS9“9Då‹sOƒ$\0V\\;3\nn`š†{!r¸ñ)Ã—‰Kf•ğTs\rrƒOÎ­0\0Ñ,®bè.UC\nÑ¼T~ÑûzÏ¹Ç•Çû˜¥oy-¸´^a¡Ìº1F}+jX+}° Òğ9db‰Nø‚æ&>lEJØÕ&!¾™jÔ¿PópéÆÀ¦ÁË¨êÎ™àÊ¥Š§/€Å™KŠÕD©2ìbå9ËƒˆõK\0e8f+564JâìlCCÜR˜,úøa•x”@°Õ4\\ÁÌ;¥Ø°\'ĞÁ-T8s(:ºb «LOõ*åaçû€¸‰Ü®¾\"©2÷ƒd\Z7Ã\rú1Ñõ;÷oÁÒàÍA±Òuõ4NIÂlÎSV2§Ó( ƒ¼’áD£–`‹Ò`ËAŞW`0¨—³3³2€¯ÁoÏå.b<AŠˆ)‚ó1Ù‰Gº¢	‡.é–6…p³¿ÜÁÓØ†åN\nü@.Ï¨ÿ\0º‰ĞNËeıG?5,˜LBZfÈ6—C0k\0ÍD›*;›·1¹Lçq™œÅ{F¡*ª3˜\n…2”æ3‘îbÇrÙZç‘ÖIaP5W ˆµ“@ø¯2eÁYq)Sv?DÚÌD÷X€”/âR\r–a@JÅt •N\Zõ2eOr¯™Oøs8ŠîUÑa³Úbc†æH‹®fı@EÈ»™H-ùºf¢æT<Ç½JnQ™H¤£B”°ÁK»”­G0µdºâK²3\'G¨ºù;*_0Ç+àT\Zƒ\n²Qšï*ÅŒ*>áF@äù•Œé·[e	Áj73~f¨{¸£¯¨Œ^›ã­BºdÉ+‚Sˆ­˜¡p€Êkˆ<¸µuJpŒ±¯\n’«m3wµ-uYm2‡6›š‰4¶2(61T>–¦ÙÀÃÄK¦¹ÏÂÛGà¤¼2/Q¹0pRîR°Åzv›Îâáñ¥¡Ÿr¢›«$ÖWŠláøbb9×øT¼Fo!ÌÖb/â8Í²­Ô2…mzñ3+%«i»cs±â_uÔ møòBªÕ.£\\Š0˜ FÁ€ã<Dr²òñ*ó¸ÊÑªÏyü¥dógÜ¾’¨–µ™†0×Å™Ì0ƒÄ°3s•v,j‡s´şehû0Í ,ó+÷Fê…©JÇ3%Öøˆ1+3ÄÊÑ,Ä«70ÔŞ¡ğ\Z²%;.XY¦rÀ½o3Ö01«ÍÁ×sù!¤.sU¨l¨\ZDœiXm5ãz:f);™Šc+Ü$u‹‘vJäİlSVÜ GS\0ãàølQyˆX-pAèÌ¹ZpKE2ššÄJÎaZ¶nš„!óê3ÇqÚ3¢QjšÜæeø4”şpè©‘‰§M¶Ø1ğÃ˜ˆt2£?(ó5_óº\\Yº¸UØu+£9]ù”o˜WâÄ.e¥«T0±¤¿rê‘âw¢àVmV¨\"˜ÑÆŠîù…Tp[¸V—œEhÖ\n_–êVªf¯§›ˆ¶KÓiRÀO\0	”Ãê\\OüAy2™\\¹æ*ê>K™0¨Ã+PĞrMrøV¥¨2#r—ph¸ÔeîWx%ˆ‘Ñ„B1P!–$MÌ÷ÑVB`í—‚P‡( Æ%LÑ‹Üi,±â?QN¢‘bªædyªŒéÄ+†ƒô&˜›•ælKÅ‘@]8ÀÊ:i‚\n‹TY\\µ\ràm—¸îÏ…»~DP—VÍ¹u=ÌË(K<TËtì¨Yå[¹Ê\"€ñ2¡Ì\rñQ~£;–ÁqteÄå)Ä?7c,¨ù—ÕV]Dí¢]kÁ_sK-ûÄØeyêGr÷9O°a¨S©®,ÅÅ=Ëo+–Yl[¨»Aèâ!•¡ÄÏ)*”â\0\nîªP‹®ˆ!d[‰ÙâdÂ™`êmZº–VlÖe~k~.¾.+q; «L4ÄÊt³1\\Lk;u,	A~Éƒ>C<·;\rìß\\ù4pj³¨C5ÀœEßlË\'êV—l ÚÀûb²É€Š€@^¦ˆ™ÏA¨´Éñqp.çb½Å*Ânêahw;òE…;ˆ«¼BZ—à* %\"rCÓ\n[9¶oW8Q¹ÜÌäx”¸\r¤d£¹€ŠïRû›­ÁMË\n‡%q2v 6i¨vX›ÿ\0ºaU»aZêê> \n¹\'cŒLòŒ¦	sÉ«²jï¨\rH*Â´¸-\rŒÊDaÑ¬9¨í2íø÷0­–7Ën\0KÉ,ş¢gÄTÇ\Z#{wæk.ù–5r¥å‘­Ô#óÈß8ø‹ŠfuŒòŒ£mù!sbÙx&F+•-XÆáuœFs”xÃªPÁ.F¸o-â0Æ<µ¡ç1¶ÓNˆ¹7Wğ9øÂÌ3I§¹Vê`‘¥¤+œÀ7œ„ùÊ[2öÄGÁÕå\Zª^h€çiPêV¯Ú\0~¦äEÔnbEÆbg…2‹1\r°(­«p72v„¦ß™EkÄw*	ÁRœ-.k¡2-N%ù…L ğ¼&àX*\nb \rÇxÅKw3í%JÅ*«„‚ÀÌŠLšÒ#rÊ»¨!•Æà\0Wv”š[­L»z¦‚T¬t·$[,â¢Õ2naHÊL®É^Çw(–ÌŠÏˆ²b‰ˆŸÄÌìæêZKc¨†Á˜»\\e‰r¥À\ZÆŞOÜÿ\0Éz2âøæ¦-<ÌEø\n-ø«»©•‹Š†CœÌÔ½¼Wî\r©–•q*˜ê]m€k0N‰M]×LÉàîÄt¯>£õï™qƒ‚\ZÔßBàÌÆ0\\Ê),DÙ\r/‚-ÆbàIRœ¬Hµ¶•ò¹¥\"-`TĞAQµF:˜U!©UÜ3K¬Œ\Z³q›ÔMYÔIÔ©˜z–&™JÂõDÔáw+;ˆ)‰I2¾fÊ‡Ü³™´s4ˆ!ÌQC ×˜í¥|æ]êTÛ¨ÛF¼¹Ì®:î.¼fãp‹ñ,Ê*§Üq¼¸Ûo£ÅĞÌ`ùˆÊõø`êLVhá`·¯–uÅ†ˆÉÄšj¼u\nÃÙŒ–c42bqD\\bpG³ê8åˆ~\n%ãEÁâ\\ÊTãĞWUs­©é¼{ƒø²„ì†S†âİ¦c>fÂ.Ğ8Ã/¥**a?0UMCB—¤\\æ`<EhÁÜq„¾™‡±˜	.²2Cû(0\n\r¨²ç+UÃ÷	bË?˜¡wŒ‡â&ğK9È)¸ô–îXÓù‰Böbx›ÌífM8I3[­&vÙnÚq5´%Ù~âÙ_Ü¦´ÌK‹ä)©Ÿ?³°øùtoãL‡d	—\ZFØ `äL5pD©,\r[âaŸ ”Ï€@î£å>f˜Z‰ÃÅÁWî-\\R·2WÎ71Úˆ]¥g0)LZ¶Îc‹” \n%T\n|J—î-H©¸Ei3PÂÙ	bçşA½LÜFø­Ô¥ ^#\rU\\´˜Ù—›®QrI¬O	W™Ò”ª>¼ 9”^˜ ¥üj3‚È;ƒ7-)ˆö€E+EM·3¡\r±\'bô‹BJL9™[æÂ¼±ˆ!b¼ÅU	‹/Ë-½ùmÄ²!Ì\"xqû˜˜˜˜˜˜ƒSÌKğƒyeJ¢KúéÚ® j§ÈŸYX·úÃl}ˆ,?ƒøü³ı9k?àx9’úOêN\'Oõ‰TÇËõœOÅ•jŸIÈX—úÄî=q_×ŸøHÕ_‹cğ¥L/Òb\nı#‡\r‰IRÊ`@,ÍËW¢·aÇìÄñ|ÀUs1w\Zy”t—ÿ\0Îßğ¿Sñ?ñ?ãråÏÄüKõó~¥ú—ê[?şm–ËK—.\\¿ÿ\0\Z?ÿÙ','image/jpeg'),(41,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0œPhotoshop 3.0\08BIM\0\0\0\0\0€g\0UsUEPvtj_f4WYftTXBTo(\0bFBMD01000ac0030000461200001f220000ec230000eb24000021280000903a00004a3e0000d6410000394500005b850000ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\Z\0\0\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿÂ\0€à\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0Ÿg—ÇŞfsÛâú^^«V—Ñ4@â=ï;pÓ°ç§%l®‹IÒk¥\róÜÂübwrwJÓs5\'9TSÔKt¤uÆÉfR=±¹å5çp™\n2Ù¶Ém7”Ğ¤ímƒ¢*¬f/wÑæ¤õã=<†ºy‚Ü²æE\')è†Îúœµ}tr½/\ng·¥ySŸ²\\İl·L“2iÕ,Fš³Ğ‘×4ÉuÊò×óÍœ½_7vsŞ3ØksH®µ“+B­YÒiÑ¤q®.gIÛÍuùÄ`±ˆØ`l`£Ôà3LÓ9ß«Óçz<~¬ìpÂ¬¸šA®cÓqæCŸ\\æĞVkÉ×™äb——Ex™·•Î=Y¹¶²ù4¯Heê<¹®­ÏÛÄ¼³ÛÌÀöù{ev³\Zuç·5ì¹ô\"™²ë\"ÃÍšæ«µR]Ôã—ÑlôÙ24Ş79N¹+•DÔZÒÆâ¥t¤ï9%Rò]…–Er9ÒáH!&aY¶í[cÖœôä¼ùr·_\0Ğv~ÜgÓ=B³4‰\\Ç4ºõçÂİA™;<ß¡D~~°¬­!(Ë©rbº¡;£RkœÇKğé¯Hp²õ¬\ZVJr\'¡¬ò·|µÇ—VNjkÇªtk>=&{œÜê<‘Ûtónéwröv=Di#¬e®=	Î——J@\\[G\\ĞÄ\'Go—égÓé4éÇè6ØòGÜó¼º\rÌW¡yÂtO™wŠÎR¼)%Mp¡,üÙz_Œ/¢şS5é6’º[K‘;¢,o*A¼ùA×4qÛ•®\\û\ZR‹¡néÃÉO£v~e¾Œü¾úÕ_’Öò\\üîô¸5“ìù^¶=Îñõ\\sN¥‹æË“Ó[+wóë„6[‚c®ÈÜ°6ÙÂÍL0°«2œÚzwN{úŞx^p/†ÖNLvvçïÜËiç—±İ×Œ#‹†ÀØ\\…«:„:•<İætôô™Ó=€»ÍñS¦l‰¤uÎÂÚáÒ¨÷œåÑ˜«„Pù2Ö\r¬\\H6À;\0åC¶M°†\"Å=qÓÏÒ~‹urÎÍ£`†äêuÀú}3åWİ|>r>¯›uÔ|îÆ¸üî{Ã¤^tW–osñíøï0´ı}õå¬O%5yn•ìóÎ5éñû^Ô×Á¯İy‹òû¯›S&0g‰š’%ÖÄ\r©s”BL¨ëÏ¥^¯?|ÛdÁB´SÊé“Ø¼]1Eàš}_§ó3Şòú<ìo‘´µºlõôI\'si*Ş|Ày¨eKg@w‰²r­\\­wõ¿;ëã^Í¹kÃä¾Ú~z>£ÈÔàìîôùôòí×³®mQ\\üİ¹<ôôvRû	sãZ\ZÏ\0dŞ>áƒy{°Â·âŞW®~vóNLÌåb«TeôÚ=ròusÔc~[Õ•*ÊíµÉHkNè„Ê•)Wƒ§M¹;3®ÏG‡¾n¹ö)¼Z-Ák+[Âšô9xS¦;7gÓ×Æsú¾%Ï§o³;´m”Pq/}µŸpí‹¼Ñ=áó7’”™m»–]Û€¦ä¦o[nb|µ[y”\r\\v±QÒà¼ŞÏwÇö|¼ŞBâåXû9:ó{û<ËËß^Zç]ÍÓ›I‘cù>“/Ê¯µÈÑîâ¦Qò}Èny]uÎ˜tO:á;Y‹è<™Ï|úy[‡X@J‹Z•ôRz+IŒ\ZIíËèaæÎÉ­q%á¡ÃhgE±h´Î}>şIx&°¥][¦1~®\nËØÜ•ÎºkÏi]¦Ò]äÊşgo,Ô#;è±Î:’¹–òˆ×1EbsNRíÃJÈÔ%èYJùÑTÀävÂ)ÛÁ\\ë£›Ğà#ÍéOWÍÎšqTcœ,Í\nï\0ìDy«tùÎw[Î¶owG³KNù¶¿%-êçºÇ\n‰M^œmw·Ëdl‘Ó·Â‘åÕ×·\nrvB‡¥3£TaŠm°»Ú\\Êeîä¥%å¯©æéÉÏÕå­:VVg«“¢,ÉÎÖ)ëøÍO + mÎNëqÛ:ì¬mY‘ŠS•ÄàëäYçE¸Ñ·\'_=µõó\\(_–ëæõ½<<\'PÆ¢¨í¥Ûd`í‡ô<Î¹§ç¤¢ÓÅÅÔŠ³¤zÈÇ¿â\"…%º¢‰¬Ndé³eÒu×ƒ/¤œ î^]@ví—›»¹ùõã®Lk©áh;eùÔÇÕçÁL1\Z3)Mƒ[°ĞÈ1Ë™1F‹<İš2¬ésiß‘óÜ-¦Ş{ÉÎ;.²Ô›¥k:f¢ueäOJ‰å7 ³^~îòŞ÷\'ÙÕİ—ŸoGg\\<¾œ—ÆµO*¾½ÓÁ¯»K?2Ê{sb¤Äd eb†6ÚÀUšÛÇÂ[u“NÉ*ï.ˆ–š=Q“¬Yæ8#Û-s•RÂtgÉØ™UºS)1j™£®ş“é©ÉX4^™RÆXüäaÖ›ã32VÜäÅpØÛcm­Ô‘†Î‹nkMT‘;ŞÓõrEèLã…:“Yå6PŞ’¯\"µ\nì²ôvG²„¶‘«h´˜ŠˆÊÖ©mb–Çç8m†*²2jÌFåëÏz¶Ã4íˆ”í€rÙi’0OÏ£Ñïãõyæpõİ<N_ ñ«•:(œuìK İ¦9ºú*ˆÎ%Šj-räœáK0¤êSš\"¾İğô]†²vÊæJËy˜ë<İ§f”b¶6·24‹i2¿\\:3¯¡êjf»ÇX<ob\'‘nú6è2I®%‰¦±54 ³\"³\ZŠ!\"	À;jcóş\'¹Æ¾ è—LÌQ+„çëœÙö²½P¾uˆ!ÀÆVÛJ1èÏ!êãìÎ¾šş\'·–`ú#\'Cdc±6%3æ´gÀ\'¶¾±3…ËM63¿*ñ	ôÏRÕ\0\"ÕÅ‘IÊÉ¶Öm´¸íh¤Ü5‹ŸÔüŸ½‹İ³\0TÉ ]²»% \n\ZF:Š&Rô»Mµ`Et ‚TğUï7æù¿Gãë<)Ñ+9’ó¹aj¬8c00	¶ÆØÊ14™•jN¿SÂõ³¯ªıp¹–\\¬6À´*A095&ÊÎŒl¸ÃÄkX2ÈÊk~{MšíŒº,ğÒ±¹Iİlå[Â‚  Ğ ›l›l¸âƒlek4è‡Ğà|ëèıÏ™ú)i¶“bid@qV¤èe1+NWC+j,™¶]°¢¨²¶ùmÎvè·L;ÚòlšÒvA,´‹±QˆR1A±´fT$\nÌm6i=__æı|ké\02tp¨vF ÚJ´¨Ae•”`2“°\nDh²ÕÉñkÄıg§×äú÷p]#Í“¥Ìç]lBÉAJ°±•Ûhk69B:Óªï_ÇìËé}úvCX\"²å}´„lÖÄ!†(¹C7EZb@HŸš5gèÅºüö_iüşŒë™-3C,`Ëˆ(ÖÃQ«œÕE#3±Ím’´ÊµWè~wĞlƒ–FS\0G*Ğr”Î¤•ÙpÄF(gGˆ¬C˜‰îüÜ/D½Üõšn^ÙM²ÊÂ2œ\r±±¶Ñ¶ÕĞ™õ ¦&¶t)qı/ÑËèëäzùÈb3Œ˜à¥”¡Õ3è\\@¨È;­)@R¡2şZM=[¯–Ø×k@ÍW•V·Dk“b!qÛl`B²í±ˆÆ+JPq>Ş³tHæ÷ûÿ\09êæ- ª\Z«.†ÊÀ¢º†e—$ÖVÙ†ªmEÙB4×ó{-;àP>ub†h¨CL¸Í’†QÃFÛ\0Œ¤›lm±ˆaÎ»Ñ–^‹òÚOlK¦5\rRx¨ÄlPè*iË:O/FL•QJšŞJ™B~^k÷Ã¸9¬v\"R­ĞœÔ• í bµ¶Òí²m€vÆ*LÊTàè¯Ò^ÎçÊ9Œê\n22æ	r€ ØB¬Ğ•‘38IŠÎ0ÎX·l³— •c<WN”·<S€ÀĞÛ.Û&ØAÛl¬¦ôOl´è²Îº™SH²3)È•4á)Êğ­«*ˆIÕ”3MV±\'Sóc—y½¸zô+“+jçK²zS^µóY\r“«Œ6—“`Áô›¼KV…óhg’\n½dÕL®‡O¬W2P4\r ›¥ªœèY5t<ÒË(hLÆ¿7Vİ2 Š6¢œÕÈ°è-İ\r/ı?.	\rˆFQN6°örzQÔğIly­-ú%è<®tĞ¥&J´j6\\Q¦áª422TÊ\0£­-&æh½–1¥X)?8tY­Ytdİl©ÑÏÙm|¯em\rchÛ&Íj¿Di\Z/#zæœÖ[~ˆ¥¦bš-¢w:«ƒÎµÓ8ÈPp	MM¶üõ¦¬j|?£Í©Ê®–cBİ;¥™Ç^ëG™ÑÙ1ú\"çÌCÔò)²ålºRSX2vtsôÁ!lìç‚S¼¦Òd¸˜ÍêNaÒu­ã‹}mZ4²–“Rs9FìyX·45‹åó<ıR8!Û=ëgéêzŞ»8÷:Ò7Qæêä¥ğ=ï:¸-.ÄÀ„Ö“i>¥ªİYñkÕÌËÆk²°´µ\nù*ÕóeGË¨Î´ÕPÒ^—ä»6Yó•¨YªÍë¥6²S*^xùädkœVzë³»Õñ;ÓŞèóı)Š®Læìã!šÚ|¸íâ»8hÌ(¶êâêKä)ÍÂÊJ3Nçâï§¼m•²¾kED¥çĞ¸ºÔE½MÍÙ^IÒ=Jô›Y}\nÈá\ZßVI¡\nókÓÊ1×+Û³~ßWØçítp^aùp‘lœŞ¹ãêÌ4J¹G³§²\'2ÑR²D¬ä-bÏ¡Ë×5FFÅ™gÎ§U\Z[—§9«Í-Nó#gcFùj&[ÓšƒuqôE\0P •ÿÄ\0)\0\0\0\0\0\0 !1\"0A2#@3BÿÚ\0\0\0Ïù/yX…nÑ¡E‹(·ê\'ñú^ñÓ«Bı‘=’T»!H‰\n\'I!DÉ-&ÎDÒ\\PFÄé\"8Åi	®˜¿×²1\"V—·¡*ˆ¯ØÄEˆ”F­\nÕDtˆ‘67QB3MmÈÙ	“}´G#˜¤r¬^àª^d 3hÙÈûO´S97R‰¶BbGˆW‹uÈLR’“ÿ\0 …P~aRòB\Z­\rF‘ÁiHäºN5˜šd 8±Z¨Ò *ÑÄB¯Ôº¡!/‘J½Š“4‡âù!I‘š=#¤ÈLN2z¡	‰‘˜¦r9Q¿èªF3z!Ú³fÓ4‡cƒBÙãÒ<Hq©LC}D…@Ò?Q8!ã8štˆ\'\'Š¥Ñ¾û9\nHiEºi\Zè†µú#cÕ.ˆ„6F\n·J.–ÎLR‘áœ‰ÄräÄ#b}v&n’8œYÅˆâpéÚEhŠ!\ZcµHÇWˆ¢q8£Š1ÁœX“<¢2{‡®Š’M\Z-ŠbÊ)¡I\nôx‡q}ÕF$#^Õ#;BíÉFĞ4¹+öõQt©Ó4qbƒ8±lä,‡Ø…3™àöpLú‡Ñ\"#j¥Õ !\nù#‘Èä9G#g#ãÿ\0¤hÕê‘ºÑ£IcÙÈİlR9\nbÈ,‚š9!Å4ˆ³‘ÍœÎ]qÄ]C‘ÈßéøŞÓ›ô}ÇÚ)ŠgØ)œör9†ÿ\0^ÍŠlR ¶ÔÁñ9.É…NC‘¾šg×#êâ×H-Ë8Ò6\'rÆ‡{6rb‘³fÿ\0Bè„#	É‘)tW4Ç#Ér™„Ù‡|H!|hŠ8’øñfOĞâÑ‡ıïDkb6#[%Yæ—èBê©ÚŸLäúª„9\rNOãüB1QèºµRÇOmò½\ZbNœ³BÌ}ˆæè¿Rµúù\r˜q<’Ã†0KôlßLø£”G!³d\"Ø i\r#Cÿ\0ªº¶6||.oí<èo#8ä1EÊya8ÊÈ´ÑT¥æ\"™±ÉR6GÜ}&NlR8òøl—ÇÈŸ­Z+]¡Û>>\'’P‡º\"RQY2¹˜0ÊF<P!Dş:×åY ¢Ô´Ô—¾Mbf<d´@d™®‘tê>™§ğşG!q‘?K7À\'‰Å‹¢B‹YÅšì…HÃ‰ÍâÆ —YÎ0NRÉ(cŒòg&¥\"d!‹2ã“Cõşd…£bcb—‡+TıÄCTlÀÚµ\ZÍ‚9ÈøÒÄéÄÏ X±¡AVÇˆú‹4-Şj]2eP_–Y­AdÈØäÅ)#ÌÉxòhRådò\'ã¢6;CŠgÖPóˆÈR6N*K7Á?ñÚpÀF1‰/q9yÚG(ëHÒ8!Aˆı‹¢2æâB2É-Æ\ny6obB“\\ñ>2Ë‰/\rô[§Ñ\'HBˆ‰-œ™yˆ¼™qhå£ìD²!åÑ÷Ç— ş>h¥9D†DÒtÊš1C”×LÙ´cÆæJ~%>B{E!¿	§D÷NÕ1R\ZqT„\",Ç¡¢qó£BbgÈÄÉrˆŞëà|e’Sá‡ÊÍ˜dw¸H„‡QôÌQĞ…Y³˜ñ“ÈJ{\\x¹Zÿ\0<Ró5©N1ú dîˆûšå‰ªB¨#²O{bØ›­ŠKYğ|O’xŞ_›9Gæ|‰ü‰8½¨²ÙhâïÈ›B¬Ùy‚‰“(å±\nâ¶bÄxDò¶*ÿ\0PÈ/tº¡ÿ\0Õ?f©ñŠBrß&Bb‘	!èB8¦²ci¤¶%³‚gÖ…F\"­3BN’É—™±2é·±t„ŒxÔT²(nT˜™†FUøûD…K¤Hy†EJâl€F´.B˜™¢Zd¢¶„#G™ÈDM\Z2åsxâäóN\"]‘¢O1ï¢ õ%åEq“ğİ¡Z1ÿ\0œ–¥QÖÜ”’6Ú‹Ø¥¢\r#!I	ª~kBb‘MR=‰4!†Ì¹üC}“-QY2¹Z©ŸŒˆcCT©Tær7Ñ\nDg¢?>\"Ó#±lßŸ$Hºcö´!uLÙºÉšS#\\\"äñãP2dQNMôT©z–“4B<Œ¸ôº¡?Â]¢Î,B\"ô)\ngõy¤)%³¤)‘¦!´1lI±Eœx˜Ñ5ø³ˆ¥<ÂóÙuƒüZóíÊLšèª?åûFˆEoéøÊ¼ò­‰‰‰ø/„\'â~Ù½9Šb™­Æ…hrSx%õO&NgMD–G*V„.¨Ä8˜ş:†9ò.¸Çí!Rìˆ13‘1VĞ¤9!´‡$r¨DP„ÎFÌb!EO&äö!vH]bÌ~L“n2—‹tˆŠ;\Z©thT¤C\'ŸµoíĞó&Ç#“9F(sqÃ¡D^â#CZ ›iÇ”ÜœWUÑ=vF&OÜ|RÕªÃ¢~Ú¨èâ[­R¡kDa&Cã3.#C¨lJÓQM¹À¶/Ò­ß˜{™éŒI:c%Ñ‹!¡	lâq8œN\"‰Æ™=\n‘!œHZPb„«Âè©ªè©ò½¥åÑÿ\0ÒUÚcLŒiÖÜP¢q8‘€ c‰‘ˆ¢hqÙô³ÿ\0__\Z\"ÅF)\Z6.»ê©\n•¢,—‰/^º\Z¦3ùÑ£D¼Eh‹¢qÓ+Åˆ£Å.±¥Kºèº+G¸²-$#G¹@hhĞ‘\ZQ#íU²)ÈÅñÛ!Š1¨ôØ†Å^ézí¿=WD\"şÄ–’şé¬8¶CÕhĞ‘\"„*hÅñœŒxã„Íøä)7qv»+Tÿ\0Ø­wL~“Õ1Ä’Ù…i3CZ4jĞ!!Gdb&&!\n—Uh]W_ï&@T»*@şF°\"#ˆ¢ÉBµZ\"qĞ¼¨Á˜ñ‰\Z„!^©tUªB´é»Æ+Tº¯Õá¿lŒ[0¦Œq#cFHx’¥cGÖÅ\r¨ãÓŒEHT„R¥JÕü˜qŸUOİGİ.‹ª¥æ+Ì~/’È@HğKÔã¶ Èãb†ˆÄQ4+DUhBB´.ŠóÇ”)¤º\'İtGÃ^Åñ›±;qØ¡£BV…HHÑ¡Z®Šç.Õ.¨]…Jã#‹QÃ%<b¸Ò¡ZB¥İZç‰ÇF´k«F„…Š×UHÃëàKÊ„*T\Z¤#B+T»!öMjšê©x¥İtW©oëËV©RhĞ…K²è©R¼–íZê¿JõX¿äÅğ\'Ë\nh]„!R¥Õ¢êàN>1¯Ğ…Ñub¤|yqŸÇ—Õò…Ù{Bê».Ê‘;2Ã„ÇÕuñHV…hTı˜~6O³zD!V…ÕZµ[Ñy„‘Ãô.Š×uìGÅ—Ÿ†øfµZ¤!«V­uĞµ¯D$\'ã\"á1v_¥v^DEêRõ	)Â—d+T…İ˜˜œˆKÏÉ[ïº¥KªµHø²Ü?üùÒì©}×]î‘¡Ñ.(I8µ¦Ïı\nÕ!R¦!z^ğË„ù}y©tTº+BFü¤hJ’6\"1!jWª]P²¤DĞ¼˜ßÙ‡ádç€Bê…J×vÄ…hG22 ÈJBäÌ‰Ê	’èÑ£]•®ª‘ñ¥Æxeõü¡vT©Rî—v˜¶Aè„äÈHr\'øäèÑ¡uB5h¡üñ|lŸf.«ª¤.‰lB©_±=\nf!™\"åöhĞ©Z¨ûĞŠÏ‡.Dz¥ÕR.È!W!Rf$ÅàOo	Òì­RhÕhĞˆÿ\0“ã)ş.RŠ¥H]UìK²UXÈïPHÊŸ½õT©Z¥Ñ^´b~_‚&Êˆ©Bµh]=Åízş›´EyÆF¹è”ÜŒ~—é]T!¡Òğñ>9#/«ä&oUıˆ©TGñ	Ó´!ÇäD¼5ú—EjF#Bò¼_\'<BRfll[ÕìOgªˆª$z%â©]•+T®Ë¬/Røòú³:B¥JÓG$rà^·I„n¢*Bè…âJ•¡ª´*VŒ~c¡FFDõò‚Š•*â™õ£ƒ²>bb†„DB¥×D?è!\nÔ1|yãÇÄHZ¥IØ„+b­lHĞ /b!hB\\4itT­uUcÃ³5RèˆˆT™½	Ú¤\'Q«[´„!Z¤\"hˆºª]Xù0ãÑ.Ê‘½¢tÓ/óJÚĞ©!!JÔˆ.FœX»+T®fz®4©	M1R\"&!SèOuºÙ§Ê“!\"/}Y³é!zıˆFN˜˜†Ä!B#àİ!Éå#Õz7ªˆŸŠ•ªR#!1\rxÑÄÅ)3‡(úêº.¿ºØˆˆV!Z„!¦Ær ;B5Ö$Dé	´rzËIzehF¡1ÈÙ²(ZFÈ½±R<Rˆ›¤1ù4kdÒ\ZB´!Ddu–Éãÿ\0Rµjá½ÁhŞ›ÑfÅIˆFÒ\"+N¢nÙ±{Û˜…J®5/G#ŠÉ3]ª‰:[Õ7áy!éÒfÄ#b7¡:lˆ…ºÙ±Ò¼£g±Ğ½tU(B\"ˆF³áÿ\0‰u]1*$b€Øİ\"©ğ#‘²$YÈä)ŠBfÅÑ{ôlş¡jÕ#HÁ²8Å1óæ9¡õÍ­‰‰ˆÙ	4FL[¨Gb’D˜$/{\"Í£‘±2\"99ÒŠOfÄl±£ú½+”G\\|B;p[#Àâ!Áó|‹º\"bZUÍ@YbÆÓ´„\'I‰Ú­‰Èø¨Š£éÈ‹ñhHbö–ˆŒ’ØÉ!//ÀšŠøşhˆ£´hÑ9¶8şÃ´*DZ\"Dœ6J.òœQÉ\ndE^„„A¨Ú„ÄNbò\"\"§éø?Ÿßâ\Zı1?\'‡Á“u¢^’Ù96şF=Z©	‹l„t*’5ªQd!¡1ŒvxÚlBHšri$GÌ½ÔÈúşÿ\0šcDIºÂÌS#-È¢=…ycÎ>»!ÁŠ;‡éú8®.Z#=‹\"lˆü6n’·Q¼1_é±U*uüuX%£s1ê\':d…íi/‘LVª\"Ä1û¨ù!ñ^‹È‡H…¶c9¢\"…í²\'ôCô®b¼~ÖAL[=&ê>ı¿“ÄT…xã·£ÈÆhÑ!æñ‡r’Góÿ\0ˆ¯\"F?oÜØÙqHR\"/\"¤F—ªC¶Lô/ôÌoBÊ|iiãfü¹s‘Z3²~ÅÒ>àÑË£\Z#âËÄ7ãªHoÊ—”ÑŒ‡—£Ğ„DB~66)?ÿÄ\0(\0\0\0\0\0\0\0\0\0 !01@A\"Q`2PpÿÚ\0?n™2-‘&GIEµÄH)/XŒÑb1¥ËÕJÆã33!.Äc^ÎÌË’ˆµ?“©#HÄ±ÙEš|z1L”,\\’¹Ú2-~4fÍ>Î—\r=!i¤XèèÀŒ\r5eÊôù6ÌF©óÂ¹â‰J‹³GGù‰d5˜¢1ì\\ZYûŒìo#q3ö³mF6¤ar1Ä”ìJe\r?Íì=Su›†á¸hJìT¹¸Äf‡¨‡¨‰j3&n3}›×ÈÛÅÔİ4á‘ş(–¨äÎË˜–?Ldd\\”6ÙÙ“2­øDÓÔÄ—ê.ezduS¿„zB1>	LzÖ±¹Òõ”›ás\"ô‰‰‡&õ.Ç\"÷uO…ébÌ·ƒãXSÉKª_Š®$aNŒQ‡œY‘$ÌŒ©‘Wã~^J&&>ÊÎ?E{\\½/íÆ¨üî/xŒ^7­ˆ¯UHŸ(ŒKr±bÔê·22õ„ˆ’‰%öâÄIıUá½}uÎ?ïWôËÿ\0x^Ëï/øV?wN7d×İÑ_‘ü˜‚úÈŠ´OÏ(ò|§ÿÄ\0\"\0\0\0\0\0\0\0\0\0\0\0 0@!1`PpÿÚ\0?¦ÔÚ-‘$»¡è»%´‘ã]]×hÛ\"v|g««iéùhíJÖ1 ‚­ Äh ƒè’­6ƒèÈÌşC3\"­fËB§_¢ª´‹\'¶&$vúÒšLFSB´‹Y2ÖxÓMÙÙVK>O“&f*´Tò\\ TÚ$tß!ÓÂù¡].+UéBÒxø×*mÆ¾EUyä“#&dÉÒ|O¶}¯À´^ªt]ä_”z«/ë\'ğ“ï[/òEÅxiï]àÖëeËÿÄ\0.\0\0\0\0\0\0\0\0!01@A PaQq\"‘±`bpá2BÿÚ\0\0\0?õü—ã\n|>møø~°Ïğ5yÛAĞPQÔt\\\nDfbV„&/è(ğİ\"ŞŒÅú\Z¨QæT%&B²)qĞMÊc§}M}İø\Z[‹&5WDDP,Ø\r&ê•¬7)»SQ1ôÑÌü†_I‚ğc£\ZL¬Èö ÊIÅ‡c°…ÈAQQ¢¬~“½r[¡…grX¡T~L#?qÖÒ#T0l˜[ÅÜ¤É…A¨ÈZ2˜3¾\0$ä˜^¤UÑÜ»55AH²l‘õ$öidjn‚4ñ½N‚P²ˆ¥İÀ2ZJ ŒÙD|défƒSuÁÔ.åiĞ£•ÚqdGµ7,å1¤ ÈÔqk\0ò{ûÚÚw²}93?;—0ËhFXn§A¥ˆ3»êrE$ Y++K—rm¬¤*ÆÈÇ“”a<\n_ÜÚoK4rìFBÊõ²!%ÿ\0³Ô ¶uØ¯ˆX4_‘Bfî§ŸÉò”0\"ˆVÜ§`Ì}ˆpé‘å«3+êŞ·´)p´õ¿6¸à:;ã=\\@FÆ’j[+A\nÓü±W…±R»YÇĞI‘	Õ²HKteRÙn½p]İ.GÁOÿ\0eêÈ#àVé_Šp)vÇÉ÷Í¦Fœ³.½Úßnˆò@šÎx]iò\ZøÎD¸#+•ü…Vb	¢Ï¨±tl˜kâ:—€ËÅÉcåÅ‚ÕŒİi	ÿ\0¦`|	‘İ ı­ßÑşû¹PMd5Q½ ş?ì¯ ô	rM~RÀ#,•æ6@k:İi<øÎ¬Şgr]2ÖÁ-º?±Û60°K­>A³ƒæÔª	¬‚9µâ Õløµ²_j|Rs9z”ü…;“³@\'j>52=ÍSã{uJjX-÷n÷Í ÒCVy³0„\r™ÉÃ&o#ŸQ\"ï`•ğ*»Í¦²a«¢!fM«¿.Pfå=ªn#±Ô¾BYŞlÊWAõqmYË`¦É¹|Øª=d¨Iİ„ŞDP\"!ìuµ0ía“É5|ÉÖuaL!;³rZFãÿÄ\0(\0\0\0\0\0\0\0!1 AQaq‘¡0±ÁÑğá@ÿÚ\0\0\0?!j×ƒ~Í¤lò0ÃTBP„ğOˆá~âX•\r`JÎ#0˜l’à“É¦*1¤;0j\rä».&	‡\"k£T4€•Â[4Ø˜ëF4Â²5~DØLlc¶%±†¼lK‚§AÜ †¸9¢”±…†ƒLˆŞcNTN@ºp‡ÙÇöaÙ…ĞC¯D²$sÁBÛƒØ&ÆNâ$ğ2eÇRuHy”…¢Â²ŸV,7”Ê\\®2™qJ0ÛÀB_0ÆM\\Æ¥‚?\n„=ÙÁx.êY!.A/a£cBP”^¢ÍÂe¹0ÛÀ²<Å6ÉP±G‰\rŒa	BA1¨jÀxx$èa®f%1†-Ä“¤…”ñl¿%ºº$¸Ø°H!ìO¡©óÅv`®FyFÈX°gsêxyXB)±)u\\Pk\'Éég~ Ô‘0™ajP¢A!d¥¸OèH´Äì`k±Hdô[•¢c]<\'”!a)´ÕAú›pabˆ0¡Èœ>¸C\'q`Xì õwOˆG1LpZL%ŠtÒ;$Äh¨l\"¬ †˜]%IcD5bÉYG±á¿BÓ!Øğ\n>ÓÈÛ9+‚Æ°`ÄPh`%&fQ0œ!¼À¤(7Œq”Pî1!ß\"ál§³0éı`ĞÓ<W¼Ä	ØqÚÂ‰l‘/¼8ƒkÈ”.D¸%ƒCl¢·•-È |\r††Ø\"ƒf~X‚²A&û	p4$tÍÊ,U$Jˆ\Z,2OB%¬¶ceÍ~HBĞŸJVÊR”¥.Q½,ƒànTùˆ¯|,ÕîV^„\"á8 \nç( $/EblJ4áJ%DîÂhôY	Lë=–\r›hÕÚ,ô\\/°lP‹ÔÂé9‰Ş£¤‰”Óc†<ÄOœ,R>\0êØì8G*²&7ï4ˆ56!ÁàÃ$õ”ğ™FÁuqÀRâŒRŒH@ò¾„\"…„„Ë&vÃˆ(n Û4°‘è=Tô\r¸	L°…ĞĞÊQ2‹HĞ«#»ö&¼Ü–˜M²ÈØó‰ ÃAc°ˆ\\’Àa\ZÅ.Rê£…p²„&\Zed„!ã6r&Áİaî,?‘.PªOZ¿Gh9	Ø«ØöÚ0”<Ô €ÚTd*ä‡–`V÷‹	Ğb›	Q)’¡„Ã„D º–ŒZF%Q{<4}%ÈşÉp•°ÆQt¶Á¢ğ]ã<Xh.¾¯fÔ9Ğœ‹\n¤·Â‰ô\"ÓHHK\"äØâz B\r”»>#Ïcğ v(6÷¹ƒcÈÿ\0å£“¶s\rû†Aß{†äF‘ó†;‹D56’¢œ‰ôØ•*Cn©…ºCG@J8Ó…Æ‚„)t-Çô½Àœ¥äs£°9M±HÃ74¹>äµ®ádZ6åM¡éÁËq°hÄãíX—ƒÀ5äTIA‹¿|‰0hoÈ=Ü”J õÇ„EdA\"eä‡ûJz¼¹õ¯!…t@%6x‚îÒ(tĞ‹Q¾ËK†È²Ó°a†£U	!+bFQ»‹!¥—\"H«“Ğsö… =˜*˜lÆ«ÂÁbÚ0¿Zâ^;”z*õ‚ï…ŠÓÖt/Á‹Ø‘œ ìÂ\ZBN0h6&£]­Oç(©Xh;Š`Án½$~F0;|ìd\Zù*%°\'dZü²qàÿ\0rSµÛìÕààÓ±³à!8\nÑtÏ˜\ZTö$ÙqÆF\ZŞ ÇÒ¾\n	5F¬CÏt&(€‡²”ÁQòH˜íúâÀ$]Øˆ®\nşDL!RG(ù	ü°¾ÿ\0#ü–DGÉàm;f§0ÿ\0¢TÑ?†=ez†¨„…áBÍƒLgq/R\\[¼nÂÃG‹ĞZ\Z	‡ÀxX\Z!Ãc,(Æi±õF$å8`\"‰…-bDßaÎòj~F¡_C9t.¨H]àÒ]mŠ\r¸F Ù§[^†ˆr)„Ü‚\Zh_8%ÇA§rflw\n¾gŒxŸ\r>Á\"ËpĞHï]\ZoFˆ}i|	÷‹¦.‘#š%.0³£( àïA©1d.\Z+€Ñq=ØòEY.ô7¢`ähsùçˆ‹%&w/Şğ:Á‹úˆBöb‹	ÒhÃó-ƒw|[ó¸†ÍğZE¶2¡ô\\%NfšhÄşÅ²~†¦Å£ÖF<h.^|†Š‹¬Õã¾È‡í€ËäB\Z\"A¶RL4–\r0Õ‚»hC‘}×A* k€Ğf`VÄR‰I‡œà—ZH°~@²º*){0”ÂÉ“Âä@Õ89Â4MÀSD\"q…¸¦[Ë!`¨À‘¬M€)Û®7¹ÀóØp÷ô_ øÂzÇ±§¼ì6Kx<sFØ<²ì\'•†,6	£A86Z ‡†Òãy\nLHğEr1ß(Û†\'ØgØg¢Ûò~¤œ_nfağ™JPB	cgp…ø,Ô¶)¿L|ÒíıEƒDYH	ô9rd¹KD	àyz<‹te°ÇÃ(7èN2ì+ÀXQû8r’·¨±Út,æÄø<£‘x\ZÁÊ×AÛ‘W`•b&ğ9%ÇaşF#^„t4XáÙÈ4i¢àÚ*‰N-±b Íõ’êàk–?ƒ`x^¤Ú>DÙÜ„ ‡\rû(˜ğzKE+]C¸Ñ©ñ-FXÇ®Ç”ˆI#Ê	D\Z°Tì•(9ÅÂG0Ú«ƒäJÈ\Z˜jğ¤B%5>Èlˆ 9ØJDã,+ÁöÂ§¢¼³Ü ÂBìm¤&XBHÄÁa¡\'€>‘ÇÌZ\n‰3AÃà,äE|(ï(„á¢B	R‚b8RB!Ãà,…Ò¸]-:\r¤É7±?d\r¾‡¨P$\ZÃvÀñ›øÄ8”Xp\"óQ\'C\r”A»àbÒôºuÙ¥é|0“Œ9ŠvÎp9ÂzÄ#Q(ùc,ˆ\' ã	Sˆì&\r\nâa…±óM`·Ò†ƒã/ìè,a°Ù<ÌçÓ¦$y$X6¬hğ!š4\r››Ï‚R–è	ŸBøÂœxYQå©Q0f×Æ+ °²j —\0õ	`ğÅ„PĞÔ¸\Z˜CNnğ	 P‡$!‚‹‚˜L$±£}!drxîş°Ğ=V€‘Õ‘gqD$!ñ6ÂkØÈĞÍKÀ„ ‚		‘0ŒB`²ã èOúFa	ÔGaª/èmBêî7\ZH(Ø8X$äsš° ‚DÂ‚B	ƒAs„6¤é\"ãì&[1Nä\Z…™ÒXc‡<ïyÿ\0¾Îh‡…iØHSB`A„Ä„HA0ã\'ĞH—>L–’<òé?xl9ŸĞ{E$Aù„§º&3$²£Œˆ\0J$$HBLs’bèlÁ¦!O“BF]‹ °˜KC\n=±²òiƒ\Z‹¡ğè?¦	„Á,~ÂÁ‚B	„Iìs‰pLñ„¢äXY]rÌæÑh‡âD!À˜L8ô	„\\‰a‰\rÔL§ôQ7F5D\Z „.‡9Xhl-FÏhÛ‰¦Óø46;ô‹¡Oñ‰Jw)ì6T‚u	— \\ ºxh{GZ‰ã¦&Æ0|V/ûE˜ğ8ÃxÌ½ÙÃ4Bd°„DáŸã\"èQ.\rpÑßäûG£˜\"`}Î0P°bâFèv98a!ó°¾óoÙ´2\rd‚?Á¶ ºEÆ²ğwÃË/ècáà¸7I „ñî<Tàn›ÛaVZyÀÖá¶7,BS+¢Æ´#@Ğ™â3mĞc\'Àº“`‡¦\\7ãBƒˆÄÛäĞN¾Ä.U/c–.†/R	ü4‡‚-×Á0“0†Ù>\r¹èpQ‚¨L†p+ÀíNJÇ-†Ü¸$ÿ\0áB¡4Oéckç ”_\"¤Ö^GÃAgÂÀÔaïcA>CXN0ÄÊã$,¹êxtB¿”Á,‹)èÙì,[;‰qƒ}ÜÎ˜;¡64£YPĞK0Xıt†iîz>-ı‹Š&!†6K!sˆXy0û|â…W‚›!ò Ğ°Æ/¡`Lşº&Dùê!ö¢îsƒT0ãHò}ÇçÎHbêYƒ0Øªï±hğ6PkÉj‡°!¨‚YYD\'ì™ô#q<awW,OLÃĞ,“$ÄÂ}!®bßX“Î·Øöz¤¾²L&E‚£˜”w=${§N\0ƒC‘û¾y…’(«,(¶[‡/ƒ¸‘J8ƒ^ÄŠ%¨!ÓfÒĞƒL–t9t¦„£dQô)Ÿ¢œ¡±l&4(¶ à§caöâI‚ü„Ïñ|òTc±ç at.’? ……¬”båÀ‰áàı‚ú½S€úÁ1„Ä&Ü|r6_ÈıÑS¶Gù„Ñ\r{âÓÆP¶\'Jã]ÖŒĞOˆC¾X6Í·ƒ–ˆÄHGxLcäi‚7`Hú,ObAì!CÚÃu}ÿ\0\"}ŸØ¹Ç,iéLj…ÅÂ„Ï ~B†óÉÙìaÈ´cd¬	¡&Z ğO³h\"dNŸòş Å°Â€~}6;#ÈÖà ÄÁ\rVa†›£^iÍÁ¢m4?\"ô!WĞÔºÆ…ÑEˆs‚\\–¦İÏtÆD±ı:/g.0a±³an7‰(_7×“ï§P\"§ÀqêÅÀµĞ]Y,q’(wg’ÅaaKƒCöL…£ÙîQ;ÏØÔ£Lˆ‘$È²X²l²Ğİ-²²YJ.BABBèBcwØ£¡.Mî\Z7ÂW °@L Så‰\\\"GP˜ø‹¿¡t—IÆG HK8jÆë´l±>T°jø4<ƒ œ6 »u †H±;r= öÿ\0¢~rg°„&<!`•„K $a›ÁMppÍÖÆ®€’ƒRÀÃPHIÀ²nKd6î?…?ğÏºÌF‚ê,K¯EÁ®|‚Fƒt”àW]F)«æa…¹§o8,<›fÅ„NÃG‘àİå°²XĞJ0üÈCÑ¿ĞcCÓc\\o€Û\n\'\"Á†ƒa¡XÍúJù4F¬KÉ¶†Åë\rƒŞ‚$K5¢ãÕCû[´#\ZX·4\'ƒä,Äz4ïx9úĞ×œr6#†ÆQ¡†s²L.\ZúÂ™é`rPñ¶T]$¢WØùv\n|!XHZ‰ˆFØ<’ğSÑp± ÌX3#c /è{\r Á=›É9!şr¼‰ğE{4y$]œğ*éb¡±­“Á›åKw5bğ†+ ÈV¯²F!<R®	PÚ\Z³Bc]%Äcœ,T.Eğû«äô£ÁÅ0½1Œ1…±\ZiFJhÌ—–%rlÍJ3a°ÔTVpÉA¦\\8mkd˜@áV¡¨>\'ànÄ†ÃMğ&§nF‚.	NøaòZwƒ“œ.SØ|pVÆ$Aí”¸´Ëò§ N–q²Šd	²Œã9}0•*\Z!/Ò3$ƒ)Â\ZXwz> óÀJ·aa`Âc<)|šlƒÈj…±†Dö1)S|šö-¶<<²-H ÇEì,fìí(|\nIÚbw?AªüÖ|7ã\r1Dì§ËÈ°™&BĞç±³”G°†…úè6Q?NH1‘ß`ÚNc›„6ø‰rzèĞ“4§d·ÔpJmÛ¿XËSÑÛ\Z¨X%,×cvœ€Ôû0\rlH§ÀO¾p;<aC%ö$Ùò~Ù&´XÂÅ¡9\r†\\8g·øÿ\0I^ÎW†úÑ‘ÿ\01Ö›-zRô4Wã+’ä6;CNÃQÃ SéGmº$±+\ZŒlÛÈ—Ñ\Zi†á†<³\\J9\r~æøn\\kÁ¾ü#wüCeTZı† ß1bÓ@Ÿí;Ã Û/x­Ò+Øìj;(§h@ÀàÈ,%}&4ûÂ¸Òƒ‘²àixc~ñ!Çœ7b…¨°ˆBOÙ²ö/C¼ìkvNGÆÜ?Òu Òà·ÁJ<%¾	ôCì®m†‘}F£ŞJŸ¥‡ƒ‚Á°Ğkô5dÈ4gÿÚ\0\0\0\0\0KÅNsmAÖ­\Z,†Fäè\rór´¾Vég¼ m2ç}R“ÿ\0_à¢G¾úi\0¶ÇËi@}W¯sô÷çĞœ!õ½œ~F‹sä^qF¾oÑ1ŒG \'êø•òg‡Mş;|zhÑÿ\0¿W{•yqºtÏ~GŸ}h=\r˜	ûÏfŒæ?tHl¡˜3ŒĞÙu÷‹DíêòV$ôêH*å«Ã×ØÙÖM³Y ‡“Ê¸¦øÏ¦©ví^¼òÿ\0ş\Z‘¾ß§\0L&”“Îáßã0¥;Ö}®ö°!‡ÄÄ±€»Ğù7ê¥Å´Œ,>2¼ìj¥\"Ô#¶\'£Ÿ¦»éÛÍêÙ)Ğô–<s&{:tã‚ÿ\0ûı\'İ!À úpB<yßÁÙ‘â¿8)å˜Ñk®‹®9#d’[ÖŞòwÆwcVr¸½.NhBÒí„¼¿f4ÜjYMû¢©¨R#`,«óƒU×ßÍ¶óËÃáE˜ì+d@z0“!û¦™¤†Œ‡€kpµÀ£í&#6nùÊ–š#sÈä§$B¦OÙ¨Ú ¹méÒ®ïŒq49Š1ÒHSG×*G§ü’ú¬ºiŠšÏ’*ÿ\0øğÎ: °éÄöÓ©‚¨”r†Ú-2;ÄRƒÛˆ–+Ãº£ú¡’\nj*“Ø¼´xüBÉDh0Ê¥ú*øb©DY¬…¶I}k‚#¬¸gûÚf‹ø‚š™0±é¬ß¨As¢Ù-¾9e\nxõô¾\n³ƒzf¸Ø˜DrİsÀšõ]Eòşï…®ªRmªÉáhl@TğZi·MñpN,Z÷Š±Ş*È€\ZÒf\'†1¶ÿ\0yÍ¡8íg®ãã\"¤–3t÷ÚH‡wA…Á[@ÏÆş-}êº²M)é¢šFòÚ\\ğc,À\'„{ã¾{ëÛCÿ\0¸5s7íZØÚµ@M|‰_¾;êªêà‚šÅ5§=s]‹Ñ?‹ó@¼òëšxî#´sö½ûÉ´ì…¢½úyú¯ƒ…œï„0QÇt+~‚h+\"ãOúùaÖ~÷ziBÙeïcÅu›ıcŞçê\rK8$´â”U~•Ï~0T„ ÇÕÆM¾{C;µYs2Î1·\ZÀ\'ÑAq3pÔ1VQU\n]Ô\r˜ñ·ˆ\r®{Æ÷q|¼\n|rÀ\Z’Üçb|/™FË…I·ú!º¢A°\ZØÂƒJMC*ÑAut`ÌÿÄ\0\0\0\0\0\0\0\0!1 A0Qa@ÿÚ\0?™u;øB]J5€öÄ°évñ‘C[;ãt‹«°½6ı“ÕÜÉà‹z½É½w\'élgÙ °~N\rÿ\0°Ø‘¼Á†p‘DöË~…‘‘<&V£ËÔ»¸kîĞ·`mKorŒÔ×•¶Tc4A£oö¤i¤uÆÊÒLrñµ\rk(G¶–ëÕÚ>_•8z6Uéb|‚øË²€ñ¶ÚíÕ‰‰k4•¸—|u(0“¾eWivÚAxX›êdxôK@=0>£‡ 6û5ÙY!S©G’Ô™4Í¶HWxj ½ÓK]µşÂ›ó’õâÿ\0§	Æ’—€/Ø7vÂ2Äu”2s.¶ËHü	Š‹6È\0¶¸”Ù$6ÒÅ¶¼,c\ZÈ0”öÛïŞ<àá7«$Ø	­×†@êXöp“e¥ÖÓ†¶Èd¤˜Ü;\rrAÛh%Á›%àóœ;ÎKWËo¬úêD»À\'°ÛbM-ï÷_²Ó#ŞB9ÂBl{l¸’‰s–]àà‰Bgb}áäsmJe„pi2Ü,¿%‚İ¿osVx8Ob&wÄ#,¿D«{„Ç\\òK¸~—Ë1ŞG¸cÈ…Û›ÆyuÀçq™ç¸rm-8¾àûëäï…ŒôŞ)²|–Úµ½…˜B=ñ‘l}ìûác!¡i,’`êìaÃ±:†Ïó Ìd*l#\'vYükñ×ÎÂpüöÄ!YvCl8ÂxÛlùÎ;ãK{½}2Ø¶ÛÆËo\'?œ÷&sû<ı aom¼şq×Ï·Riñ‡ï×=ÿ\0¢~S8xÃãË¾N½±û~OŒ“¹ç¯àşß¿ŞGáóŸ>O/Ø1à÷ùœ¿Ğé£œ#ƒ³oÆqßğ‚#ŞO#àyóã®qäù=úÏƒŞ8?˜ÄYÎAÏq¼ã\'ñİùcÃÀkÎß–XÇÁ±ÆpOƒàúñüÈóœäà÷ç×ŞY=Ûayl;üB>»à÷à÷’Ià,³Œø#ŒåşLsùöGösã¨:àãxË,³ç¯ŒùÛŞQƒ¼”8rÃÿ\0 ”rÄ²ÎC«>ì¶Kö>=Ÿ²×äö.—?~‘ˆàe2^íàøñtŸìÙN3€mœ„$¶> ¦Ë×w<gÿÄ\0\0\0\0\0\0\0\0\0\0 !1A0QÿÚ\0?_P{µH–rW8=ñîË}u™Y~[1?#v69 ½Å‹2zŸVób/–°ß‘0$®K‡§‡·¹Ìs¬{ña|…ØOÛrr,æX“!èÈ-ßov¤6’Ö÷{Œƒ×\r½[ÈÇb%]ƒŠrŞl,-©x^¹°Ãz°³¤)´†\\—¨/GŞLƒ¹ÍàC~Z·aA¶,q†Å¢va‚ÄY>¼1öÒ\0±À?`&ßPXpRz‰aeŒ«/ Îı½\rdL/¶6Z½“Œjk>­¶\rbeŒs<q¨6UoV2®°	?äÓîúù<2HÜ›?– C½ÒÅ¤GŞªº÷mëòØË4È#PGÈ\rî’‘Ë2ĞÂbÇÈ²öÊ?/–ñc ‹{³<M‚Ä‹…™—Î\n0ˆ,ƒ¯’lz¾¢Â\'2¤›#à©cM^˜iüR‹ò%õŞ³ÆN¬{áãùÄá[ÆúŒ½g2Ig3mI–AÃƒ˜m…[í÷àYce–0vÉ¬ó<sÁ#×=[x[m°Ûe²Yz$xoúñOQÁ÷1ò>óòÛmpa~ãø¿<X@Æ&í–[o|l³„ÀÛxñpØƒ¶ùçŞÅîõ\'«ÈûÆ:Ù^ò9ó‡Şlôï»9ÄÏ%g‰îı´±ğÆüâF‰—»I|=^¸\Zõ÷dGØôÃs\\¿<>x|3ìnôõ~w×†=2dñcøoğ>yâøßQ}tÏ`áï‡·åêı¼~Iây®^ù’G®o}½G¼ıyëøúáîK;ûİ´ğ&m¦o,²ÆYb|¶÷oÇ¿<}ÛÃºK·Ø\'ÃŞø¿%<üçåõÍ´Î{ˆë<7Àş,}Ï±æDXõûàğß=¶ßo}ñ/Ø6Nä¶ô}Úsó·„xÌà„ô³ÁáöÆõÁ3Àæs8|a\'6O\0³Üğõàx+.çÏ«:Ë æY8¡¶léÌË…“c}[À²Î\rÈ}l3Ó§‰Ì“,²#åùáëÄ>‘î$æ2Îeü^¢øD™dØğm¾áã$—ÄE“?ÿÄ\0\'\0\0\0\0\0\0!1AQaq‘¡±ÁÑğñá ÿÚ\0\0\0?ª€­np[µ%ÕLî ¥êíóV¼Å:Š-Sf“scerKóG¶PÂ—ÈqŒ}G½}DîâıN±Úæ¢¸*\nGBæÑ_q\0QO1 ‘ì#VRrVny›uğAf+n+%@ø¢æ\nôAbÒ{ÄÀ®bS%ŞZ–Ejª Úˆµcâc{Ë{ƒ›ÄE]/l @|˜Å/ÌÙ‘ó\Z8@êÓN7Ì¤ìÍoPÙéæyQY‰¶`»l¬Ëu€\Z‰J[™¯?Ø¢Ø67‚·(5œhšÜ.…w\0<«u;”|KZUóp—/¨V¤3[€¾­µÑÜ±knˆÊ)s«‰wÕG.Ë…¸mêˆíøŠF±É3$öjXNÔV´«ëñu¿¨µ\"m²­³Ô@èåê* Ğmê.+=Ä¡á©|ø•£â!ƒu[Ô¸¡o1-v\\<Ô#Qh®s‘¨-¡A[”ù–Ü¡Ål‚`ÒóÜh1r¥Ö£íe™zW,)ãr‘Í^SÃùx†ÚÇ:ˆ^Ü\\_îZG¾¸fjg=Lë¹µTÖÈ Wâ*Ó‚1\\B¸ìW€uÙÆåÁ½7®›€æë›˜Å¥:•ú‡|ÊØÀ¼òß¨_·µÇ9X\"ªüF-s…o’öå\rîı‘ÕÛS”\r¯ÅÂ¸ä\\{ˆ\n3(DB¼ÅT3ã¹Eîˆ‡qP	¾Y`öî8iÇ,ÌL¶Ş(©sE/˜ &Ï”‚C\0ÃE÷»¨7N`ªâ¹Œ$¯åÇW›ÃÍ@µæk’ªljôD\0zq,ˆ¥CßD°L)Ú¯˜‰F@§Ì£k‡µhÎ/™{¸*½>âİ·2•tÇ”0Å²*SÆ¥¹Ì¾±Ñøˆ]æVp>âÚÕ÷rª©1V¯Ìw×Ë\0(n-MÔ¬T«¿‚àT;Ük›â)ø(íÅÄŞÖú[ˆ9w;RşS3	\\,^ÑpÆÕ$¶e+§r·cº.+£Î\"-Ñîlãâ|\\ºóï˜ŒV9f\rï<Ë›ÂË¤z©c’¡m—ÔU¢R€~¥´ª…)--\0h àsÍ¼A¥¼â„ZÇ=nk‘¨–Â{¨eù‡ğ‚â¥•æe*`{ƒeõ\Z~U=JJÔRÆc#¸î•iTEÛs Éµ8jn×Ä¶ÜYF`¶ÙN3°Åû‰½£\0júÌ2[]K*Ã¼ËÚÍM¥Ô¼B\"WÌgT9­!Óc9ŠS0-7Dq_¢YS,!®ıJƒW¿Üø¯aÌ¡Å‘î ù.TØ¾ãGg¨o9­C.±2ÇêaQßáºf%œÍ2òËÿ\0=»¨>–\\á\'ÿ\0Ï6}ÁRËß¹‚L=ğË¸©”h·À1]yañ|ş`»Ââ°ÔJV×q^ğq\Z®Ût\\C\n®Kÿ\0¼F¶Wæ¿ÜI¾KËD|”j¸½DÔìœèy*+f>f0¨«Z….èöÁ‡º\nÌë‡ˆ‡«yÇá©QYS^ÿ\0ÿ\0£FnåŸluFš¨-Ãšƒeêçæ5ú˜ó\r_â¶E~£ q(İG­÷*à#97±ŸpìÌ±²,°ÈªôCy—wÄ!@×ˆ>3äÔ\0Ş_0î±»€µm²)nŸy”hoXb¼bêÀCJ|Ë“;íæ\ZÑG¸»‚$of-M[x–ºÁyÌ~Ê=’ª—ó6#ä²(Sù4|I¡^%y1ìH‰LÃDÚŸ¸ÅE×ÔT> ÚÌœÔìõ0ö®eÎ‡¨ªy¹¯sVˆÜ×à^52jïUÓõ3ôC|A˜òù™ÖÃõ)/EÁMÒi–´SÎ}LÏÌØ•y…+*!µ|MÓ¥ÌtrÁD£ŒNš¤jêf­?Ø›wpRµË,ÒÕyâQw”e´’SŒÂµáäYW»‡m^½@m»Ñ+![¬B ³ÊTm½ğÁµÁĞ¸G\ZxŠ¢{eÄş+kú©s¼µ‰’Z#¨›i²à|xêY´XƒrøöÔX–_Qøø„¹q2Z¹|†`ãÔTú™\r1êïÃJy¢£›:”åW¶+lË‹*Öé•Èàn›ÌáˆYºe­ä:›‚÷2²”8_$6é7²ßlU†ŒÅ¡x!–Õ…k1r,,ÒÕÅYÓú›õÔCİÔ§Aë•æ6jv{ ”‹ó\"k•†Ö£u†Àô@U—ÊˆKKTºÿ\0\"\n”: «ıGR—Ñ\rğıE©™Æì£˜\\º5ß|E[ÍKê^<<CZ®˜Ö\nF`çwPquÏÊ2£qóiñª¢º?\r ˆ#a±e__3S&TÛÿ\0x”DÎ¡\\„9+æ[€’(exŠ—ÜÅ7(Ly—ycCuz«ˆ5Ë|J“Ußp¨2ßSD2:b\n½WCá\"¥k?Ø@ŞùƒZ~¢Z‹™Bƒ„ƒ¼@*‰ê[G ßÌ¨È|Ä]·-n±ÑRÎO†Zğy¨Œ±D+ˆ`•«ˆ¶cÔfŒ:q¯«Æ+Svc¹i½CÚ2L0%ğ-\\±–[Wí_3˜İvÃ­@BğGn´Ü B¸*ı^Ix^ M7ß<=DÚ¹Êó¼W÷ıËºqóÀİK-u³ûeš¬Ó{2÷l³¶ Õ­€¥)Åå€Bñx cË™œëİN$©IÍüÜG€u™’“[Œ˜”´+p¤\n¾8ø<€åKî`jyÚó”*ºŒr±£‡7­¬Xúœ,EhEòMê¡¸-`ƒS$rQ¯2†“Ş\"¦;½º.cÕuÍ~dG|6Ãh>f?ìÜ¤SkTwy1-nµQo,GoÜwy‰4Ü|s—PŸXM”ôDÉttÌà«æ %Ü$lÖÊ˜A%sæ$İ=‘:gæ-ºà—vöÂh¯¸\n©÷+Eª6Ü¨ˆ\Z/‹y>åyÌJÒk¸–ØÒ-Íı\\\ZöÃˆêã7ì÷¶cıÎqû”®ÓLÔ¾çµÑWÎ%CMõ2Â£ÁÄuLf4Wà<ñÜŞ{ãª!bj÷íOLMÊ\r·ÑôWÌ]\'rĞLKĞ²ò“ñ/2>\"?ê–¶¬n,İpü’ìŒ]˜xö73At’Ö®RÚÄ±p¾¥B\rÃÚšé‚¨—´Äªÿ\0H9cÿ\0aÙ8‹Ff[Ï,á\Zc&ÌÄÚ¬Ø?]GkÄû2Á%~£İ·ûPf¬œpÁT¸Æ‡<Ëo!}f(Uæ]Á¸2ÛTDZ]U0B,ê\nÛ²â&é·«´•ƒ-U-00<.Tá‰a„äâV½Ñ¸3@z\"ë‘ÒEÑ1â~ÄA÷]{†ÖŸ5[yÌRò–Va6qpÛ¼b¦TId±]\"<¯†høcÜúé‹gê]Ú-ñúƒ_‚Şs;›îYÕ,²+ñ•Ö\'?·œÌ5ˆ52Né÷	ƒì1gb¼ÌÛ~åÜ¼Ì%ÿ\0+ğÁf^æ{G˜‚‚³û–7Mèº•q¿Ê*@PGá^X@uı€İoŸ2ıüË{ªm‡xÕ\\À¿ÌÄ£wCY„6sÌ©ÑWaÀB*^ñ˜/Ä/Kq…kÄFËòÜ¢¹JÍ7ÜØø‹lFÂSâ«ÄV×LZ«æ6¿,`UıÀ»¡¶¿®bÑµ*ndÔIWã>¥‹¦=/¨ÚÌ©Oê¢ZÔÙ*f&×P•€z79ÔQ¸­ËÁrì²\rà^UR¿iİÊ±xp_¸!È|Ê<ŸkÊSœf¢İú†4ˆK–4’P¼ó¸G©œ5ä`SAê4(‹ÕÅ67â±šxUÌF¨e2©9kQEWÔ+âùâÛäü>ñÓ[âTN½F_ë,Ño¹^àÿ\0 >ú7«ğp/_È[nCyÛ\rŞ»ÄWr‹sb9Ì2¤Äƒ½ÄÛ0š”;7	Cr“¶í™Ï¯àb3@vÆD¾SRÁ]¸!ÙûˆÅliB:®` Ç³dö\rÔH\'5—Jv¸­G¸êèÇD×^;—×	õybjdN\rF\ZêŠ*Ãb—ÙëUÂ»”‡÷×…uÓ”O˜#½%’ÚyU2¨XäRB2WeK¢ñ/sbà6Á¢Œ	fJ;…3ÌiæÉ™µõf®½CPZ=÷÷>Z„-Öf—˜Ê-¼b£³¨M‚¼Ka¨bãó0ôEMGlr€; àNeeJ5å7cŸ0Í-ÙxK¬‹Üt%› lGeÊ+¥ˆS% –8‡˜íŠr\\B€<Şà\r´êñ/ò[¸îDd‹W?ÆãŞáuÊ¯¨5<J–Y¨\\¡ºí€C±ƒ‚CKW(¨ÉN7/I6%¹\0PSq¶ƒDT¤]±’Ì@ÌW5x–8™~¦VòV¢í‡\'ßÄ[~ê=ñ2Ô\0\\L_‰BÑ¿5gNâËˆ.©|À@ku¸UfsÀ’¹Ô­t6ÀB\0C“Ç‡¢\"¢\ZurôĞ/%Ä0™b´\nÂõ\Z6\n[eÚ,ÍÒÇ¸µ¬œA(µe\\KÜq•à±)\rH&/9†4\'ÄuÕüâ<ıÎâØ7F*¢h;zŠ£oî(İ¶Jùæ%À—Ú!§2óˆ‚‚0Yâ’˜«KÜj+¿7(¢æ7R‰m„TŒ¨®…z&¼J´…ÔuÛ_Ly‹èÀê6™´+ĞƒµíêO‚Z@qâVóp»R“‡î4‡§ê—¹S­w§°Hæ¢­4Àw.ò¦ÕÀLp%¼Q	-˜Vù¬K†T‚Ë7±–Aæ`ÎeÕ,{# —k6RA§\"Ò÷/Îe$sq—l­º¸C°|MŸƒtğÁJjŞR-SÔ\\ÇR®¹Š‹E÷<¦­®˜ìU„ ÑÔB_îb4ã¼K@‚õ˜W¨üîËŒ¸m¬•\n»†Ä,æ±›jâ\\05w\Z/“©ˆ@Ú·¨„®‰ÿ\0ÄÜtm‹+Lø‰IF/qÄ²5e³Ó{¦)—ÔJú‹z?P\rñeo<$ZÂ\nVV6\Z{Ò0 ³˜5T/+Œ ÕœËÔhä†k`¾zV¨\\Y0Tæ%ÒÑ,Š‹SÅÌuá¤êWlC:Ô\\>­Š(Åc,pZÍ˜¥AÇÌ©UDûM›ËXŠàÁá†ZÅ\0¨=°BŠğxÕ¬ 	w6´§dE’VóY„Ñè‰-kÅÁ°\na£“š%Y’¶TxÅ@‡¨4\ZÆƒBØ‰¶¥tÌà¸áÅ›ÌQf/‰xƒtÖ~e;‚•9\"§Q¢áªšWX†~®è†1 ËzŠÖå€À¦4áµW×oGëñ_ò;¸ë–2£QYÅj¹\";±Rë¥ªÌî$Xœ¬x%>Š8‚Œuu~Qos~=ÁŸÅË,âÛªŒÔµ›\"Yr_d¾•ó3@ÓY7NyŒª	ed€7‘s\ZÇxÜ8o>*¤ÅJ%¾WpyIgK÷¡uÈó9–æv1€‰^7µXÙ\0P™«\0BĞA-º¿Sk¿‰Xx@y´~`‹¢³Ìwo=±\Z`™ä•[Á†È+¿™y.jš›ÆŠ–EÓV†\rW›\0ª”mºux•/ìur£ìpb¥@Ä1£--i›4.<CAğ•\rÓl3TnÅu-Z°ÓÌËˆæX²[VcˆRl Øá¶ã\0œ…T^a«‚‰[+îv×q×³¨6ë—©¦Âº€k›€A.yu¶¨\Z!•OÉ7â¾*æâ2±á—aw’¹‰pB@qË\\cp#PÑ\0‰Zs\Zï\0­Ã<?Q”º±%/0â¸6Ê4–í½ÌQâ`V%’ ·Š–Öš4ÊôB@«ÌÜC4ĞÔWY]Êï{nÖfÈ²±ÚÂ *è¯¡â8@<µ/l8·¹‘f1(;7|¢Ä²ËvLÅ(1˜¬ÍÌšîß¸X®¥â#©Êµ»Àfpu›—€Úè‡ûjæ@ä†¶‹˜ôEPQ”æZÀJõ7lF¬¬Å6ˆécvmÎùeˆ`r2’ZûŠ¦‡â\rU‹ c ¥Šš·PÄzñÄîW-ê$/		xfK0\"Ğ5VÜsn:º™ÀQÓ/Z%vGª	À2¬v£n)`àšÛ©Œ6m4šû”ŞGÔ/XÍfnÕo¿ÃEíu5ÛvÃ×H]7-Æ‡‰w(Å¡Ô®Âƒ«™+˜ªÜDÙg›ÿ\0ÈÔ©U-ı\\©wÁı˜çz‰—ßâÃ]\rCE`¬Ú,önjÕ=/æ:5rêcf\'ïŒÑÔ`&¦RèæLX‚Ò€Õ(n;-Ş`ªÓkÃ/¦ÂsqM«]fã”ßº–ÌÄ²¶A°?ÜÚùK\Z£×‰D¡Ô¥v¢‘7·ÄM)\Z 6™+PäF¸OdÏÑ©q ­T¾Ê¥pJÚ á¹}ÁÈµ’­,Xj…·ÇLªò¼À]rwo=ÜÕnPÙêÜ\"(è„.V³lFÂ­°g/µ†ƒšÛÌM\r$­ÁÉãÌWMsòKĞÒ\ng+ßR¦W4_ä³6vq,‘v´	¢‰«ä¸ñÓµ%RSæPÿ\0¸\Z«K—0“ºó\0f‚]QH7R²oâñ\0äÊ…\\¤Z}ÍJŞàZğ…¥ÊÖÑ}Î„{%Ç^%UŠ~ ğ}Ê[V­Õê\\Ú\nï˜-ºÇˆw¶	¦ \rHmƒ¢[@ÇRÓMù”gĞÅZhæ9j^ˆ\ršGlB»RSGd¬q\0VŠ!lRt÷,4WãóPfµê`W1‰œY†nµ68…y/Ê*Ã	‹Å.îPYóV`ßÁß¨f¬”\0sY•[q‰QKaÙ»8bß9¶*Üÿ\0Rİ²µs÷±ÒUE‚˜p¥c	ÀÌ+7ÇQéËÄ«#ÕÇ İ†Ér¹o¦¢–¶(±~eQ°÷\r1Ùp\nPèy€¾ 9:/pîO˜+@y$F½LÔÁ¦\rÃµ> `z•À¼qs\\\ZàxŒ1³*3h˜ˆ5†°ÜÅO0×Ä2ao‚pÑ˜¤(\"–İ)ÿ\0ñkue¼T<8æˆªøøˆÿ\0ÌT>Ba~âPä<ÆòGî=0·¶e¢b³N8æh¨#ç¿Æ³ç¨ôc6Â¡Š³‰’İWSÔ8–4\r¼TYc}‘-\\­T;ˆì–¥a6GÃ®¥¥œï1n¢](Íæk 	GX¿ˆx0’Åâ$(í‰L«é©U­\"PŒ©—nÃÛ\0¸ZjîPµOR†mŒ”àMÍ‰UÑ¥×Uƒ™vÀùˆÁÉPİ„SÜÙš.æo+¸{n$)WknsÖøğñ/Ö¦¿¸2Í\n7Ìİù™wÎ(ª!ÅÚ©¨Ä¶:T¹¶Ûõ[gxŠ\n…¶¢Z\Z°Ènñ1–/3môF;ÁÔv¶gÔsg_9`ú@)\rš.‹1ÄuhÁúe†Ì3ËÔ½‡jÙ2GiòK J¨à*ë)\ZhÎxŠ.õW\Z„0ÜVúæfs~e\rë‡¸W¨‚¢)¦¥`tñµË¶1E¿Å›½	À}ÀqG¢ ‹¡¢\0Ü¨‡G\0Ì¸À±0ûh+†Eô^å)¡¿\\LŒ}n¨Şø ºc¸¦4.¦‹—pÛWD«æ:}ÆXvT·HËK´ä\"ı†´]¨„æÜYi%µ‚¯Å\\9xÿ\08÷0\"á0ChÕMÆ¥]êµØ?ET~c/ÑïÄjtCQÜu3³ÔÈÊÍæáÏ$ÏO%•ÛHÅDiÉ{‚`.®\Zà×PÅk%¦†¥§> ÛDÜf·Ÿ\Z‹T7ll›,‡‘«t%Ê\nå#Z\n×MA7aê¡šés(€RĞ•Jd?Ö€D€ÅÇJ«ÛôôÊ•˜GÄù½JŠ¬ø‚·G\Z›ßŠ‰zlÇ\\ÑLöú„Uàuæ^&^Ì¦ê;\n4¼â\"X<·ÄPQoşÛ÷¥K¨ÍêQV›Ü:cµ›Vÿ\0s7¸Ô2›ŠN\"»B8Öà­	ÊWü9ï}@4¿3hrŒó\0¼»rcs¸©È¨5/İ1MŠ<Ó¹lUO,Ù‚$º¸˜Lõ\0\0¼æTÕ5¥%(o¸WVJÊ\0¦Ø(ÓÎ\"<­ÔF”†v¯QñkvÜD\\T«£ˆ%Áë…‡ÁñsünRxÉìUËµãœÇş©Ç1—œ(æwñ¯3³&È¬Å“}D­îRæù•r„>Pw6|A”†Üfuˆ§õZ¢c7U/Õ7«ÅÅm–”l›ùP<´3XŸ\'’¢+õZí¹ÄÙ\Z9fo5m•p/ÄQ:l‘‚IÁB‡¸ˆœl—[`MuQ=À ÛŸ©ÃXÕÆHÒİ¹³!·ËP—DÀù¨o9ãQÛ_‚»¾áÿ\0fu,N#j‡êPê^no7˜…Ş}A¤V‹W‰KÕle¤Áó0˜jÅªå).ÙnP­@÷.SÌõîcqDË\0¤áÙkuqÒ‹ º¨`”rŞfiÁ²Ye$À¥Kè—T¾ L¨/3¶°Ê·ˆŒhº…JíÜ¼Q›\\!)¦RØnå	p1oD\Zjà2zÌWEã¸â*c‰erú Ùg¬ÊÒÑÕ’ú%¾#°1Û:…™v·îú©c]Ám…›½KRWÄÖ¼E›æ¾åİW¢]Í‹¿À¦ø½JN/œ±àÃc¶+‡Ù9Cã†eé6K%Y8•\'å9ë¹tÉ\r†«ÌJÃi‚’¢¼)ê\\Ø-½FŞ9»—”—1Zç8ŠÅ\n]\Z™UÒT¼_î3¢‹£¸Ã[!¶4§	4ù—¨)Ig\'rî¾H¤B‹èŠ›ù†ŞˆG†=k1‘ôB\nñTPõÿ\0ØÂ‘=1-èn¸m³Ÿ\\Å€\0<Kö’X¡Eè™òYÍÀw˜Ì4Ùî&~aòUÆ½Åb;Ş\ZÍİÇf«Î®ªŠû{†_~\"6ºuSEÙİñ2ïS”5×º¹b®Š©ãÆg¦•7.U®%À-d\\0­6Fh:\'\'vÖ¥Y/1ZzŠØàXRq®MFM=E¯ÅA…ts3Â[w-Z—‘â\0èy‚]bÂ³¥$Q²¥`«ze5=0m_¢a«}°m-…n\Z*qÁ*¯pÒ÷Mf:PuĞ^â)kL0åúÜ¡İóii4Ëº]¤!ÏË®ÊÑjÁæÁtì]Ş¥…ÍçŞ»ÌW.¯šåƒ@pf_¸·\r¡ª$Z±jû•XÓWK-5_SôìÎº‹Şù›|„X¾ãW—JÌD-<±†­Ô;BÁ]À°áéb×+íÑS\'Ì\0êşæ~x†0À·…næF¯ã0D p\'¤Óøê.%\n¾ÙaTcÄ½v?¸‰»¥¦.fË²à—eYQX‚9S¸!Aje jP‹ªø€]à3˜~a…ß.6âÊê0«i}æƒœS,s“™’¥ÓÇ©“÷5zq3/(YDÚS\Z½Wp?ÜàèÜÄ»¯UÜ Û5oˆ4´C~9òó%9ÖánJçù7ğJJª×QmH°IjñRNœ0îr_‹§î\Z4¡Ô˜¿3àù€º¬;ØLÛ\n†õp^uÌ<ÌÍÌ\ZULJ·“¾¡ÑÈ×ı¯ÁsÕ\\]»Ô¹JÜ®‚‹ªæ+@[ijQ ,:µJ&Š`Z³P-Ü<bbÃ­jÔL÷ºê5›û˜îï5¤K€ÏÜ²•¥Šg*w^µ3iœ9™åY“\\°U¥7ÌÉºóÔ aVêé7z¸ª«æÍµ†\rQ¾\"-6sW>£¦»œ½ÎrÄÎ¦.tl†Ä?q¡}7U—˜¬H+Ye…²kQ¨;™a8‰q—‚˜¤;Zá=ÂRª\"]ŒXU–³ˆÖ;rĞÄ-yŠ$È1Ä(Öâ±k’·\nô`æ+ª‡R€‡Á\Z\rf)¬KU­Ã¹{ë¹[xÔ±Ésp”Ã›wÔ\\çAAÔå¼Ê²Ş—pƒPU*³¦XªÅó)ˆ\n½.H<ñWdY.êí©KP¢öº‹<×qhõˆAT*¬\"«i›¡¯kq[ã~â*ŒÅ^ÏÀãÙù¼ßP…ßpº¬¨á\rËVì©@†UÑi*Q¹Ğ®4÷6a —PÜj\"ÑRÂ^ÚËh‰ìŠj³ELüG*¨«g¤‚Œ1y§RĞe4ÊMï¸©Q†Ë…P\08\n•B>É«\\ëÄ¼C¯ÁŠ¾e…s¹±õ6–™-ñ¦qwnàÅWÇR–­êæ#Ì*|ZADêa9Šplnª%y–äÜÁ7~x•_ı‹-ç1†ĞU‹cœ]Ôfw3iÒÁ‡ÑKÅÊ.÷âuŞBŸ¨m®±áåÉqÓ¨zø#ÛÍn;ÒÌÇp‚4á;”ñº‚¡Ém\Z€x,ÉÄV‚½$’7EjUß3ƒĞ±k |†ÎÈÃX¨7Y‚ (Pğ.åhÂ8aİG…ƒÔ¬ZµÊ‘C‰w©·Ÿ‹›p§b_Ïp!N9¸\"±TA“Ä¤NØ‡Ì\rƒvknÿ\0Ìv¡ªÄyòA@rJ=„sŸë-ÁŒÿ\05‹×(_ì°=çÌªWwÜ\n°S¬\\)ãš†–ƒ† W_‡dkÆ ‰¸jl€¬%œ°ÀôMÑ|ä¹Oˆç0:¼rÃ‡#,Îcj]¨ÉÈÔ¿M@#F¶A‚UÕBªPø7Uæ%½ó(ƒ˜•ªŒæ…ÚÅG–¦®\0Ô¿ıâŠ`ó(7Â’“¾	“Àê²ªd]}’£+}5\nªau0f%W	ˆyiÜ5Sô@jáeÀÀñSVójñ¸*©İË­¥T£k˜ÑNcHÑ\\@SX–LÃæš²avÕ’×¦–ì‚úCÓòt3W‘\'(÷¿³#°W‚o¢f\'\'îrë\\‘î…`.µÊ%+á—x!±»„»¨R³*¸\rË›B®c:×qàhà‰hî\0+ÊK…Äˆ9Å@Á}ëd|ã¥-jæuÚÂVéÌ cŞáCr1ºîÇ2–.PâQñ\n½vÂÉªw®´·ëLŞ¸š*\rÁ¿Q‹æ$S‘Ù£cÜNMó0çgãÄ ¥µy¬AW«º²&Ş^Öˆ¥Øin9*%u4¸!º;†5ªº`ï“¸WÜ\0õãïŒñlÏ~e‚õr›şDäØtáAV¯1º]•ÊG4£ï3 hù7Œ\ntÏeöÇXƒU3ôëÇfFôÆo	î÷0¯P™Õsq;}Å¿R—†åÛ°.d‰š9‚š„%¸¼p›ƒC8ê|—Ì}T²MV£rµŠq‰—Ô¡ËìˆŞkæ{€»¡a.ğ”› ,‘ÄqšeÕo¡‚Úò\\¯Ô­Q˜Ğ…ä™	æ¡\r2Ë<DhZŒÊÚQv½L	~nóÇçöüD èƒŸ5»†X,Ÿ$¹®x!«aõ0¢.ò±IÄ¡äÈc¥*µÌ7½Å¹B—Lo’ğ|TÈ£f¢¨ã×˜×X²ú„©ÓÅîrûƒÎ1µg¥7gªY­G³î\0q¾ \r–&\\ø•{AbAW#ÏÌ÷r‰lÙ p¢c–a—\\°mèS\rªši²=ÕÔMUFÊuæjõˆéˆ»ÇSŸ¨b	ÄFo*Îk©—PUÀ¯W¨rõÌÚ¿12“JÅ÷2½ı\\\rıÊ¸“~ ­Ö=Ç\'Ü»4á†şƒLæ\0@6Cã¨µúLdÜäb à3eÍŸ3íû…¯ñ7º\"RœæbW×ásÅw:É\\Í×ªÌFù¢n^óa(jè›.!w2ëwSuêX]â]»®aÛ§qÂÍUSQDÉ<,½AæTï7¹]¯Íjr·™»ë¹M+ÿ\0²ÕĞb¦áÂMİC9q-nHúıK±/÷+èJÀ÷øy”¶4ñZ”YaçQœÛ‰¿ÌGW¦Šv)b]\"aç¨ƒ.^ànx*> gÀê÷æ1ì™³2d»É6I˜4Ó®f\\ÜÖêX<ÂöC,Öo10?h­‡êS6WÌB­V-&-Ç\n˜;™\nÕnmñ0êâİö.xxæ¢/¢\"RÏUĞˆ²ÈÏ1-ÑäÙaº® Yşş+ÌOªê¿4Ô»D¬ó¯¹}uVñWšë¶¿Wš…pÁwİN*=Ä®*ûƒ#µÆ  w™V’*S‡$¯M``Áeh6ròAMu\0•›Râ¦¶1ª¯)l¨.)Ì;:I˜y Íõ\r˜¿1Æx3S+.j²ê`µÜugV1m{¯¸Nv¨³|w.Ñê%u]GªÙ³‹&Fïâ‹‹aZÆH®	AJ¼*Øª`^ù”®ÛîgÕM¾÷«›5gU+ç7¸-­g™aWœ–ÃœŞ ÀÙñ3[ î°E)at!W§/P£âì-¦£ÅÁ¶`.ÌtQ¤Å™†…2]8ÔhL]b.P½Y8F *å‰Ä 76ª<óV‘.ôËr¼Ù6îù?[,¡o\".©¦i¨m™/’¥Z3\"³wˆ6Æ!á¦ï4Lƒ¥§©m#@ÎÇˆ}ÇJf °]ó&)•2y£Ä9™¹5[‚”Â®!šÉ}kÜg¢İ¸í½\\m2VbÁªZ¦PZ0ælá&-óÄràw®`—*û\'õ-ÎH·Õsî\nY×™W{Ìg4³p(Y§±˜8‹g§	.¾	]Ì..¼dp2¦/¦á±ud¸£u‰º<ÆJ%\"ŸQ.³œ·Äsÿ\0paŞ1O=ÆÕâšb^²ÅDÁî¥Å_0a9şÁl7»®¢Áæ-ÇOGu7ŸßqÜ(W<æ‹†lw¦kÇR›WËĞ:¢^_Û«ó’„å”!ÍŒ|ÿ\0™^·R©o´Ø»¶]ğÇcØŞæ+Ó°Ä^!²åRäşJ]oÎ\'Á	WÁÇÅJ›‘İî“˜^ŸÂmÚy–y\rÌ²a\ZqQ–íì%ŒkÜ6ü1ë“û ‰•¸ÔÅë¦\Zy‰m›â÷XV1‚½-®%ä®4C˜•Gp1Q5ª–²ò^m‹?¨²zÆ»³İè»%†Äí>¢§ím‚š\ZĞ¼LŠäºb.³(¾!^j=µq\0iµd‚Ays†Àçˆ4î7ä*¢Ä†c+{5â?Jq2Ã˜y¢ p|ä¦fu]eŒó*šÆ‡ŸR°îõ@àø\'s•÷oúùc\0ò³tÍùg=©­9{¸j­àòK9”®ã\"\rÌƒ¯sq}Ë9¦ö5¹’›¦õ…§5ê%Ñ’½ËÜ&<Å†¾+45šìƒû×‰`ó›‚)p®x™Ë+\r¢]D‹”q±ÑŒÆ·]³E\Z¸ç.I“(ø\"Ì°mµöËi‡†UiÁy*jËğD- ¤MÅ½-*Î Í½[\0[ÀXËTG¯rƒÇrª÷Ü\ræ\róe\\áğ`îš°Õkõ.¥LñÜ~ Ç^ˆuƒ‹ƒ\\Ü×Ü´¶”İ@””ßLÊ0íœ4\\Ğ4T°\"P±¹²:vJ²îê`,h|˜zbø˜µ{ÄÙ^`±9\Z,ÂYÔ\'ŸÔÁ—wâ&51º›\'r‹+*»›1•Z5«U,{…”k–PÚâÁG+.®PÎs+>êfhõ/‚ûc•\rp.èø*Y“\"LØr¦¢\n†NÜk,p@^>*ÿ\0Ìªà&S;õÇoÔ¥¶Ñµ–m¬0RğòMÀ·>–ı!ë`ÀÓ¾¢Xù*áÚÉ³Ä(S…ˆ/J6GKŒ•XY_¨Ö¬ü3æyüÄñÕ~¡4pÊ-Ašº*ó’å…5ÌÔ1÷S2ß™¤éÍÃmël†¿plc=Ltå™€«Ş%Ù6í™Çd§÷¢­c¡<\\+JËTn]µN–Ærºue\\½•håÀ+¦,Ò5Ù*c(æSc’%¯¶+J5O3\"÷X!¥U@£¡4Ç£UÖ ¶(î]xSÅJ…ŸñÜ52%ùD÷ó9Vï)nùnc\rÃYròÅaãŸÈ.¹˜´dÑ™SXX…mPz#¹1.ñU3¿QC÷)iÖüKŠİdóW‰‚±‡˜ëG‰aWlØ:5ˆ\ræùÌªó¸1qÃ:0ÁYßæ!sÍwë\'1¢½ÊŠøeŠŠvY9}TTA¶)æøˆñuî8µº%•FïÌ@@7)S‹„(­APÀîã;U¢íh‰¨eGg&‹x7ÁÜQÉKš½C7ƒùWÎüÃ7¶eJ§zÎb:²ê\0ëUw.«w-ŒWKJŠ¾úƒ¿¸o¿pÊ4Xc;ƒs$ÿ\0‰ø€/‚d§RÜc[â8ƒÜË8\0œ@VR\r¹æ¸M±®¹‹b”‚·›êmN¯S»l¦ù.`^Ê»‰nø²:eÚèñ09®¦aÍa™Şõx^££âh5¨‚İF\Zâ¾ (¼¡¨.ÙÌG¡\'CT—Llİ5Ô29«X^ÿ\0İKR\n…\rê\0 §”ÔkRµæ)L€UÛ‹ôf(†JnÌ²…¶˜w¼>\"X‘)O9Ê4×-Ô¤[kÅÃwêm­xš3¬Áç\"#£w2úÅ]TC&-¸\\ĞØìyf\"™#¹µ\ZLF…~¥†pÁ,bÌÊø˜Ùx°î‘µpNâ/†\nS–ªãÃmş¢“<·‘Ö¯˜\\]Y}A†/«™êñ<8¢<êàÊ8ïùÑ]ÅÃ­ÆÑŸ™Vİq@m³%,(ºyL‚³x¸Új–É™ES0Sÿ\0°ŠLAµÈ1•rKr›p¡và‹‘ØnfÅ;‚Ÿ5ÄZVéÜ¶HÈ=1Nû†ÿ\0Z¶/lÒór8İs8ã=JõU=¾ÙjzÕT;m]JœY‰kD±æ·\0Õz#sˆKVÚ”A¢ø¸R´\\±¬ÛÌ-·Ÿˆm‹©™ÍKScxÌ¢Rê#D¼9¶9}Fäˆªê3·hñ2Ühw|ñÂï¦1æº*\\\Z\\ÂÅß‰w_sZ68‡/2–¿~f0<ªxŒ¨qòÙÔ4åVæãb1`Æ!Åáuù‚›Î\nÄÁÖanXF¹Îfn\ní…×ÄzDZ/1·j«¨Ô¯Ò¥b ¼;LæåH)\0°¥ñ‹_D±¢ÇS_w0oÄÁT‡½ÀŞZŠ„xòbàç²/j…İ™œ¥l£NõÌ²kû\r<zƒêWdªÖ	ên›˜wWQP]ó\r‡$A$eL€¾b†L<1§¸¸°\0ÓR©¼TÇ¾âR÷ˆO8c–9Ô0w]J\rã˜BÛ.âã©YK“pR\0€v®â-ç#*Åj«9^\"¦KnË‹»\nF`âª`CcV¸»°A©p³Œ’´§!l\ZwF9æC¦á(EØIl³eÇ*ñË\0ÉWÅË“­\0\rDdÒ¥÷2ƒMÑĞnÂ]j­1{æOPÃGP=O·¨Šk\r[g×5î*@ådç¨©ãP³·<\ZxÛæ`pgN8•\r”XÜ&²2¶q©iÓSœ5\'$&Ac^ŞÎ£:ÄmÜ©Ëù\\Tã\\FËÉ²	mßI\rq÷-Qºà¸WU}°Ãa/şáEWd¡·«˜ƒ\'´„â¢œZ—c„+´–/\ry›¶J*‰kRÔ6f\"gœ¥T;kˆÅt‡`x³0E¿R´WLµFn%—f:%¡¯™d·WøEáWåÚñ™Tì1yƒqÛÓÄc½j\Z+7Ü¦xÆ(•\\¦ÛÁPÓŒ˜ª™uõ3ÓWÁÃšÏ3&ìiâó\\L·Ë‰›¾¥YNb¥ŠæÚŒYb3ŠYÅ\\mí¤kŠˆVŠ¢â	ae0é*ãªá #Xò1Œ·ˆ²”®ˆê,í=K4Èî7s	¶ë3+ŒwQ[Ä¡²úˆ‘auo0–Uİ’¯ ‚t…âa*æ¨6°ƒ–;–Åñ\nvF¾Ãs\nµŞa•ÿ\0I”³œ1äå#Ş!ß‚µj»ÔF»¾\'{#I}\\Ì¸h¼·3ÓF\\@6ºîd»9›p¾9•Ó.y_Àğ5ŒÃ¾8e.‹Qœ¬vßÉ,–ï¨kÛVœ<M°Õ÷9ãk•î¥\"7‰‰;.:¦ê!w†.Z×S<Ö\nK®6FØ´T\0¬yg×S-Ş;šXZÎ İ%_dÒMİÜ¬€·BÅz}æ\r­Û‰al ñ(¡H4\'1 ]¬­*šo¸›6U×rÈ6’ÅİüBJT÷˜k„á%\n<’Ä]&q†ƒüÅ¥,çJR¹Í5ÃUóU\Zb«LÌÁ’±4-™Û¨¶ã¸ìƒ|MÅ¹ññŸ$ÉWN©n%NÑ¶ñ\rµ½‘\rÕ¾‘ÿ\079šßS\nŞ#‘­İ„¢•|:‚œÄKv2Şá€ìÔlç!\r\r®ü’VÔP±3,-º`€6\Z&Ø¨ÊÓTE«5S¢0må8—how2”;/”_	Õ™t¹©â+)’¬ÌD€‡…âÊÅæYj¬™‚ Mó*	hö50o¹…úˆ«kâsºåê\rVsÔCC`œ;š{[¨dGÜ©|qÔ»êw@˜%ÚÇ¹Ë_n\Z4Íş¡@4Á½ï¨àxÄÁºşÎZêvæ®É««sd3|ó–ÿ\0Ä}Ã$°©Rêf)l,Åñ-vªë=+–Po\'Eµ#ŒœÀ¶ñfƒ™åû‹Ö]f®QBêçZ¶ñPw¤€ª\rjÈl\Z.&.\0ï‰s`ğ“jP¤m\rÊXúËl³r? iàêwú•­ú“e]j%Ò\Zµ„ªA{emTxN%ù÷p¤a\nS˜G!zNe¬#utE¹5ñ\nrdcŠ¾\\=Íœ•{ŠÁo)šÎ`6fpáÃÔ*n{˜¹“ka¸™óîÇR©Iğ,¦f)^+8™]WÎ#ş!´ÏÌÂÅ•Áph|h™	w6qà·Æ…İ4ñun¼ÀÅ	¬W—p+½s0¸Ì¢4-ıÄbàJ›A\'l  \0îc€Û0Ú*r|DG\nßu2yvÁOYˆv»–>!F³,\\[Ñ\Z4\r,Í\r;¶à”ng˜¬ÑrÅŸ2­ˆZàtb¥+DŒûŒÒn¢¬<ÇõwÜm7†(x©·”1\rğE¬Øqnìú…¥Œe¶¢tC{Jæ0ºÎ*e6¼At#Y,ÅqÔøÛ^oû*UõşãÏ¸©òf¥ä3+k@¼/0À§&”»æ<ÿ\0ö`İ›ÜÇ-âuıK¾ºƒ”µz@+ĞGÑUDPå;ù#¶¹•™ê+¿rÅÛ€\\Ûv]}J”áæ\nµÛ¶(Kx¸\"Õ5ªŒí‰tU;wPÕÜQu[%ÕÃ|0±¨4\n¸2WV›”k]ÄV”p˜(áJ²1wüÆ$0Ë¦°‘­eSQr¦¹£Q[n&mà¾e—˜˜p8•7œ5lgpVªébQ­ù—Â×DF€V¬…z\nÑ–;„¶˜±[Åî¢²ºƒ.)õ&ËñQÏZ¨™òAF¶u(]°1×©xß?÷™¯&»˜¼ß‰VJÄ>ßÕkÔpWCÄ¥¨Å^b»ßÌƒ<³b2]` k‹†&ìxƒ£‚PÖ \nÅ7yÄ-6]AWi&V4^˜¬­¬ÊÕU`¨ )’g‰—Âˆv*³{Š‡ÜM¢À¢óÌÀÛeãˆ\"•HÕPÁENûƒ¶ôb÷/#.b›ØÁ¸Ò\r•”9€Òœ‚¹‡×Ãp}K\"ªç0¶¦ê4;<ËA€jZ‚Úãˆ¥€0ÛqÜ„±¬ÎB³ª¨4õÔØ®°Ä8¯DÇÛ(Åc¨•Æ=NLŸQUŞêgó˜«y9¨õ}@fœ.f€˜Ñ¢*s\\éPo¹C¾â¶@±ê\'<¯ÀÒ«Æ%hˆ6½Jùú*!AÌ6YjèÜ`í50\0û€ªÈ‚º½JGğšŸqÅµ´Ã°Î!°5Y\'2…d†nôÀ.à@_6/,Ü¯;‚Úßî\n3‘é¸ö\\<1Õà;`S.bÇ&¥ŠÊy€Á¥µÊÄV’‡lZQiJ¶°¬ªeËµ}•7ŸÜ«vç™Ö²s,hÄÁv¡Ã6w¸î*¶ŒÁßÜã?$M\róÌXÛa¥È&æ=\04áñ=b\\V¦F¸»”›®%2Îª-Òá•<W`Ã\nÑm,İ]GVÁZ @MÀ\n£]Ã5ÁÁ3!¡ÃÙlª\0ÍBJÖ­”9\rÀ´cm»î\n©UP*Í@Ö·\ZÎ`&Àõëû\nÖ¹âPjÀó\n5ÛÜº‡·³˜ö|1×WÅE±Í]!!xÏP( Ä6B˜[D²¦Å[¢3	G…K­ƒœİ1¨&™Î¦İz™Úäá—ÕŸƒ¡‚K×†\\øY‹~*\0İ¦ÛÔ¹+-ì°@­„FœKğ+u<êCË\\K×Ë5\ZSC*çNY…_0»g0Âê\"Ò¤TÈjN)/12<Ä5w5na¿/˜„5^ù‹©i×Bƒ$¦UE³~Äà„ƒ·7E±Ï¹`cO2U5¨öºÏ©”2YP\nŞ1\rÛÂ˜LÔÒ²:‚Ş¡„Tš­[ˆ‚\n·Àê-®±—˜€v¦Òr”EíaZ£ÚõÊsY¹‚ùš8~¦OºŸçR‘L!‹î\\4àñüÀ·ëÄiã7† ZÖâ	h¡­B”ßEnR²n0×l,;ù–¸š+İT	Tôw;Û$~î-í=ÀShõg»\Z¨‘Ë‚Ò·Nà«zƒJ¤İËW,4ãd„lôÃòV5™UVİf%Ì_–â-[àÁPá4Ä°rs(XÙŒ˜Ä³¼]3ªÄZšÀÂ¢ñ¶ ÓOî¥¢T­ˆ@ç{ê&iq[	›õÔäğq5·ÕÔQÃ©×ØEã¥ |:¨ø/le´önQ:±j]G5Ëº˜•ÑKofëP.ÿ\0ïãKooDÌAÍ0U–b^,ê-…›µ!:åoÄêİ‘nóÓ*Z‡P_ˆ$y‚\nyî¥÷£õn¯€uŠ³9u-±~sãœÌ¬-6ß/2‹£‚!³üåmê\0¥uç2ÔóçP\\;%Z\\>[{üKVµ^#gã£RÂì¬”Çi[ıã¢pÄ\n®jX	¦9a\Zˆ&îÊ•Z¶˜”«eÕÔÖ®8ÁäC–RÏŠ&KP2±0€V›B¹õ¸éEË66«î5kM\\b‘VUâ\0†yInr–®ĞÜQkç˜ë¯‰e±÷šÌ[ç÷ÛçsErB°]v™¿ÆCIÁ¸*á²´ò]M\0_FåÁÔ$5¢à(©à¾Ùî¿¨-İ5}Áæ±›é€pRÕT°¶>cœÔ°\\ø £©¸k¾áÀõXÊÇ÷<ïÃ¼‡¶#v¦XÕDSY<Â›•qW<ÔâJ’ı¤Îš:‹¡’ù&À™ó]aG¯úæKÉ²Wêƒî;¥‡K	)gÄÓá¸Ğ7ğL‚©B’àú–º^ÈæÓCÜsC†²m”–)Î!Ö>º‚Y«5Iv›ML\0Š¡«0¡vÄXÅ¦6N{øeÊ”\Z¾ã^şåe¹¼b`Õø€V=b*š+—Wâ^P}ÔÄÍB\nÙq\Z3ùRÔ\n\n²ü&÷äõ˜Ø°\0ß…zyÌhõLo%¸·[Í÷;‹ê%gö@7®£å\n•lë¸Î3N\"Ğ¨¤-æk+Ì¾÷Ë\0 )š_lV_rä;jo\\Fó¡Ë)n±.\0à¦2¯˜ÍŒf Õ4œ÷±‹‚,²ºæ+nÌ[(³‹rËMc‰¸ëHÁ\nÁGÅÁúJÆ,½G,Ä /\nj\n6mJ¸µªÁ@R/1-3Ş#.ú‡³.«·\0¡y–\\ìsğ¾¢$îŞ¥b¿qÄôMÆ\0…5–84•,5¬zEEò/QÖ®w¢j«Õ¬DYz¸]\nîP¶ùeÅ_w¶¬ó[ÏÌ;¶Úîe“@‰2g#÷+]Ü±i\"ª8ë;áÏ,wt>â6›ÍÆlçæeE‚ªâ¸£yf­õS~ğ)ä¸4Ñµ€•5-.Òâ\0½Kõ²8`º‡°4g/Ôf\r4Pz••£Û2£À¼ÊÉWŠ©‚˜µØjB…-XëVlJT	ÄrªÉ¸Ã…êåæƒ&	µcî\n‰Ç\'35S^\".³zÄ —‚ï¨X”®\0u]•y—Ì6êÛ‚ÊtÎ¢²Ô¶0È¸m¹t°8V)\Zà`ªl÷0*ƒ–õÍK6®œK\0¬¸X…¦‚èæ  ¬:ÜUbu‰k;^e æ×p+äš/ÇXfZ1ÑV®bâ®LüÁkÁVİ \0GHc¡Tæ­”±Y¼D¡W|’ÒÈ3uP{2q]%gÄ‡NàÁV«e¾‰Sxw´7ä¨CÉ.£ª@2¾a\rŒ‹p\0hPâ	’…«–î£e»»Ô²\Z]@[	K6\0®ş±¡Q`f\"½e†oGL˜9„ÅÃ™L×\ZÆ ·¥Ş ³V\\GLb„k¶n\"¯z÷Cì”êšñ\rC“É+§1½§¨MªB	 ƒÎ%÷˜ƒAû€‰vò°J›ñÙL^€àVÇ$Æ&ËWn	`¸ïñQÚÌŞdşØ¢öê*\0ã¬À¡v‡2…4±Q[û•4¼”Ls¶’ªŒÀÂ^ÜÊ/s0¸¤45—¹p+vSä£UrwŠ\râP¦åRÙt=Ë[¨wİx€à[¸º½ù†QEqù\Z¢—Èf_p£˜EV™wêU®ú”KnÊ#•Üá“cç¸êŠF’>GÑ*gq•¬ğ’ô£ôÔÁÆkˆêâ&…õ)P!$b¶Äk$¶(¡¹»e5’-âÔ<N0Zó­ß˜B¨»\"¦W2–à†\\…wP\0ªW¶5¯X•3l\rQ.¸>¥M;bP|Ó¨#e½Åµ7p­Vo¶Y°/ˆéRgèÄU£^¦Ï¨ÙNê++ãl\n%@\Za”5Y‹B\n­\0HÕq,‚ªè*åİF\"¢æ9j0h†.pMÆŠÓÅú‹R­*×°Ä¥m@(y€P0\ZWÏ0€T¥UÂĞ-gK:<E5&E‚¡4kÔï£¶·<Çáùn#´( xÔíÛ£0Å®ùŠ@4jfëå©é¥0J\n+S£‘Ù\r©¾j¶QävÛY`-u{F »wee„¹¬_¨Ğ×Qi%±*éôÊ\\+}1§ ¡ê6­V€°Ñ\\)AÜjBÛíÔ¤Å^c¤\Z2æñ»Œ æ™ìÊañæ4±Î5\'îR\"£EÀ!F©Fîa+OYÓ+`•ÙiFéƒ½ê Ó7Àt`%·BêW¼ş¢†SªÚ%bØ\0QË*ux”B’ŠÌN¼)\ZœÖHFT¶G3 ?zÍw6Ü\\¹+%Íë\\JènÚ‡&^#Ø˜á¸y¢»`­­ó¢4yÅÁHæ¸ ^#ØåóPxpİ‹‰Tˆ2ÆjÊÃÜmVÓê^ûŠ_¢íÏS(t ›V‚\nNÁ¸(šR¢·ƒEÖæ(hç5qdº!±ä53~jåy`+Z\Zª”® ¶ÛqíË\r¶äê0·Å§P]ç»ÉJ¼(ğE¡pQå”	Œ·ˆµLBÇ\"w¢ÅÉÜ·«c˜\0U«QÛ\rP…ëÌ½·ÿ\0Øi+1Õ6r†å­†õRº^Ê\nıÂ9%lÕìÃÌÉ¢óPØõR«„{½Íg$ñÆBrš,1°W\"C¨lìáîe¬¡’; Láe„o‰l/sY7ÃåØ›pœABâÕ\n-¡Á›šUQuU:‡³1†.²u\Zì¼xY˜}TüAÎ¡²‘(¼r’÷Bò¨\n×C*ŠAÔ\r›ñÜTVTG¡}Ô¼<0ôº¨(–`¤a\"-¦ ©ÅsnçÿÙ','image/jpeg'),(42,'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\06Photoshop 3.0\08BIM\0\0\0\0\0g\0q7jd3TqEp74GXJ5EizJh\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0öÖ\0\0\0\0\0Ó-XYZ \0\0\0\0\0\0\0\03\0\0¤XYZ \0\0\0\0\0\0o¢\0\08õ\0\0XYZ \0\0\0\0\0\0b™\0\0·…\0\0ÚXYZ \0\0\0\0\0\0$ \0\0„\0\0¶Ïcurv\0\0\0\0\0\0\0\Z\0\0\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\0C\n\n\n9& &99999999999999999999999999999999999999999999999999ÿÂ\0Qà\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿÚ\0\0\0\0\0ÌrŸ™j“Å@+@+\ZÙÙ‰U]µ—ÓótÖÙ²¼»\0K\0\0\0\0\0CDd£`%­d&¬3Ad¬–¼±¯¯jÓm“æéæ@ÛÙ÷õ—æiP—b¥¶‰ÒàP*@Qˆ*€(”(ÅçÑã	oTZB†éD\Z[‹ÙòtCl8úÀ%€\0\0\0\066LØŠQN•‘~Ï-JèSd®¡µ­ÕéiR¹³4c«fÉÙ¦Tİ¥z¬¢ÌÂàÑYép½P×0@Jæ¸&cæ>ÕĞÜÔìkØ‚iìú-$_7¸šP\0\0”z“¯Qœº Pnˆ,-Jñ†şV6QÈ)]¨Ü‘©¥€\0kÈ(’%Y\\¡¯RQÊöò\n\\è¨¢¬â(¡ŠQš€¨²Ó²å{î^—	[¡ë\rÊ\0®‰ª²Û+Ûll‘ŒJEiÆWu‘”bZ¦İ­:¹cEtŠ#¥\0\0\0\0\0•/TQ¯õ3k\"h}.Û&€%TPQ@¡*²SwŸÓmZçë[ıNf—›İ\rH¯Æ’¸ÎDª¥JU-hÃR³\"¢t…ÉÚ¿‰*7!†Üº¶\Zªšà5\0)DD@\0\n€ìUSo	p/”@ô8œH*	UÆ½$r(a3V^º²ÇU©&m÷“¤O¦{\ZÖò¼şé®ÅXa®bĞ\\»™ã}f›zÛ¦³·%Ÿ:k†Ë1 ‚İ]è/İ(P\0À\0\n 5\0Ek5œñÈ‹İå€i\0pŠ \0p(…E\nêŠ¬ŠQ6í3\rdéyÕ]ˆ#·ËÒÈ£¸Ã99{Í{.k«n®|·¢f¾tpÎQšZÒİ\r4W¢Ë\0¨¨\0\0\n\0\0¨ \0Kyõš¢öùbO¾´É£×ññ@ª\0œ¬A5{P7¯qÉtü}MG·\rìç¿“Ó1ª\\İÌrufİeì´™B\Zrw³´vôÚí´š\0\0P\0\0J\"Œ\0DAdióõ:–¯mÎûxôâóÖêup(ó( \n€œ­P¡{g‡¥Š¸ ¨-]Ì½NØçNK=2ts>Z÷´Å	øû`\\YNß!NKƒÑôè E=E@\0\0&\0\0\0*\0¤u‚êS´Ç‚¡­u6«H9¥ÃÚ¬Ëeş\\Ï1Vnï24¬Í–%’Íh™Xc1­¾^›`8ª%y®«gg‹¯#†Ğ¢9f¥*”Üç5wöªÚÎÜUO•¸İª¶÷7ÓëtÛ~9s;\'NIDQ€€©R¨¬ArÀQ¸ğ\Zª1U½µZVÜËAĞcéÉ&´v·âbÊfBË-¥Q–ÑÍ´¢¥ÏG!v•ì ó£Ônt4¤ç¹÷ª`Ğ5—é÷ùš\\•-ó9¾_¢æv:&.«Fº/2äİÏÇÚF“«XMA[Š¬ª”v[’–Õ>.èº—¹GSDQiNëEÍîÓÓ¤’%PÀ¶Û›ùn”U…\Z#€c%kQµì¨æ·q ¡JmµÙk“ª¨ø§D–*9=¿@òŸG“KÏ{6•mõ%êÃ¯ÌuHíéV½ULÈÜ–I­dkŒ±ÈDtôm)–Íg72±Ãp\0*\0sº™\"±»â1t¹½0ÑµBŞşu‡Å.tñÊS\0C\ZæÔ²Õ¨‚•W*Tu©©ÙšªM:LÉØÕ:Y/é?E_;ô{8š“BÀÔèy\r%}ìÍ;èsš‰È×TEÀÎU` \0\00†j	æo×´åa©ƒY9¨ş¯:İšwe¯cZé´cšÓ\Zæ9¯NİM3ä¬S½Ëİ<”ß¶RÈã£ÍÔÈÏX/ÓÓæè¯_V¾¹>ilcÉÙŠk7[3N)(h®‘‹¤×å­®¯ëMåcÛ—\\)c6V³rû\0Ô¥\0`0.àéÏ¨ÌÛ••{­kÇNk,D™-ŠÓÉ;˜³nhàbHÇ5jé2çÊíøœzzŞg¦Ï¼s&¾İ³§…ÑóùíjÃÅJÉ—\\‘\\5¼ÎT1\\Œhô‡O¯ÉÛq¬rì‘ñÈ›@z±À ˆ	D±¦3Ê±;z<Øttmù}¸6˜½¼³ısŠ½È…¬W3:\'*z±FñK7VFp¢\rE‘³]UzÚ•¢¸Ó6)4pÆª±2j¼½z—9ûß_½ÅŞç«³aK.N™ÒñEh \0((‘´ëL*%ßÌ‰fW›yMóûñİœï{$©FJÑ×lñÔ±ÌÊè^‰HÊÆ  eBæV1´¥}xÓ¶ÜùÕZÍ¹—¤ŠkœŠªå‘¹‰·\ZÅ>nÈVVsv1EºØ]<rËÓÉ}jIºW¹ƒş ÎYèĞ9­I‰†®,¹ğŸ~~Û³íŞ2‘%Äë…eõß71‡FÖT«Qµ.#\Zpƒ³:L+™é¡‰3¬±52ŞI«J–‹³ï9ÒZïéå”„­j¬³w‡ÑË7_2hé_3ê:ZòàtrØ¦&lÕÌ¾¯³9J†ı””Ñ¯DÌ%ZÔR)FFâÎ·9·Ñæí9ÌëñŞµØËiQÓ+´v¤atÏ`õŒáë™¯›¾Tµ¦<uš“òvEŠÅ4	·É¡×ó¦+¨è±÷Èhì¹ãÛ…Üm\'CĞó²Ûšì8¾¹_%±‰è³X\\ÿ\0¢sõ\\çAÎé—QÓàôøïZƒ7Õyi7c=Iè4«>W²âû*Ï‚K=ÍÇ;Ñ1rÚ¹SŞ}D|ı}0èkb\n´«Õ\'IX€ÀPtÒÛI8ı´c)M¿®äzÿ\0Kç8»UfçÒp”Ï-¶ê-Å@kv‹£§½ÚÄÛS‘­—»YyKK³¹çz~3³ŠóoBà;öyo]O¥EKxûåÂ-®Çªåz¨x»8ı¯6Ş¯ØÎu<OjòóŸCóÏCkË:Üş®–nüW— »ää\0\0E\0RÚI8½¡«iŒè(uø©Òcltñò±=¼½7Šó\r‘­ ¦‚‚5uy[ÙwëgÇRáİ8oÃ±&­A’t<ËaêÍˆ&\0ËÚ/ «˜gÑ.ÿ\04\\n»×æ–²~ƒ˜Z|5\0Up\0\0\0*\0\0Û¬¶^?eQ-Fx½“^#&]¹ª|İì~{Ífµ“8lÖ²ŠÔ/Ğ5PªÚ›5-ÔÏº4Tìñ‘Q[PŒ{3®j¡Ïcâ€\'¥ _;ÀÛ \nŠ¢‰UH\0\0\0\0\"¢Î—•ÏúD»JïWŒ¶kYÛÊÜ{¬TYÿÄ\0.\0\0\0\0\0\0 !\"0123#4@5A$PÿÚ\0\0\02«\n=™Y8øvœ´[,X¹P^†WKß)¥)Ó(`±â°a¥©Ì	ñ~Oã·ğ·ò2?<+Ç]«7ãAo‘öuOãÿ\0bºÚÖÆÁ®Ÿ}«(QÃ7õ[ó“ø­üvş|6·×™“ùé_Æ\'âÎã_ò\r¥+îyA®#«ˆÃh§‡óİö]øì»ó?Ê<Ää&Hå½CÏAåN1—é÷9{X”}E•¢Ö¾Öş,¬Ê­æ%>—–ıÖ~29Sgßrùª^iW”³.—yU2?3Ìi>ß0ÜwåíŸƒ\nÅ>Ë: 9Ïı\r;WÍ®±mC¶³¹=ÊwıÑ2>Â7QğŞyïã±9\n_¾cªêl{bö*c¹ö•Bø“äüÎŸOvÿ\0a˜,6ÙdLq></Z¼(õJmàçÊ)óqÉÆğıŞÃz,ÈûGÁ^wõGÚ¯êtê»thï±\Z’\061‚¡¼Şoœ4Î,ºÄ±\\e| ³¹[yÀg)¿¶ãu¯÷,ŸaêVr¿út\'rà6Û8Š×W³iÛäDŞo¦ó’ÎJuj¢[¹–©½ê€\\©¿ÊÏéôªıRÆâ+İ¢\ZÂñT.…¡±aºXÎGU°ˆ¶ÑÔ<­ÎCßo+®m¦nG÷9ï9ù	˜ğÇ1¿vÅâ;ˆ\0h÷Bäø;©;“wÁ„®İú9jòrx¯ºÃˆå`³ÍNµ¯;Pl¹6pJ—‚)c›X\r„ºÍô6\"Áqwúkš&*ØõÑZ\06Ğ€fWÑ×+²·j»ŸÒÈü–÷™CNÔ5È\"+ùƒ¾99dÏÉrüßaİT(—[°Ï>ö5Öƒ\Z¾\nûÚÕ A¡ ŒÆ±“exõ×ı<Áı’•\"Qñ:Zm^Cñ®¥â–ÛÛJS€™9Xw{ŠÅUŞ|¨NíÖ6Òšø.ê‹‘ùE\"±ıL¯Á¯ı«ÆŒ8¿¸@0/f*ğ¡ÏrïøŸºó+ T¬YÛ¾wÌ¦ÚT4ã¡:³\\›Û%ñé?«›å¥U=Æœtª9â„î}†ùğ¨äÿ\0jÓ.İÈòYµf.Ó¦¦ÕE^åì;¶éñ3r;Í‹OëõÚ©FiéE©Y²{ÀÁüXkË&óécÚ®…;d\\+WsciBñ©¼…Ú®¥Ùtê9LZyë3¹Yn>*×,±k\\fl‹¦UËıœcë>GÁÓGï·ªöıË­°\"äZmm*®„ow×&áM^nõ/ş©–Øwª°’Ë8L€Ü°Ó–öéÓiÀ™ÀÎq›j§‰ù_K`Ö½´ê\\Ígu¶Ó¦úòb}İË±ÿ\0/¾Î«>¡\';Lø2ªÕ_kñ•×Æ]_;„êr¶-e¢Òã8Â³Œ)8Í¥‰ÆRÛ¯ƒ¥ş\"7FîÚ7ÍghL-:Gò\"üi“gÊA\\Åü¬ªÓ…‰FÄ}«2Qgş›¢c*¼Do,nÚãnZ\"ú­n“Éª¯xª6Úm6›M¡Œ+n*ò:gIüÁ&óuÍ„éÓßD\Zddoœ7«şöªáU±Ê·!â{ÂÎ6İ*¥+öO”®Áuİ³İN¢şŠÒ ƒÁ´Úm6›hGc<ôéÇêùø«n-Só­~&Mšîyw±*ôÛ«A[ƒƒ¿Û‚ÌZôø–fQ\\[]Á7l¶\\ÍàÊjµp\rà\Z^İÜŠÖ=İ„à³áF-ÌøºE¼èO‰Ölôª4Àn&Ê}¶w*¾èÈf¦ºz¡‹ÚÉ\'­Õ÷\" Q2:…tËr¯È8˜6—ıÙÛ_ÃÖ4É~T›í–¿¥YÛ½>&eÆÌÛÀx°õ¦pº9wOªÈ(ÈÃ²·<a2¯J:TªŠêöoÎnæ\0g:e¿+V\rvñ˜TømyóGfôŸ\n±Yzœ·íãƒ¼?3İÓ+zoäZ¾ÍS|ıñYà¿÷Yğ%ğv÷ÛÅ“µ-X,ÒšÖ¤—Ø*­[vX°Aã1ŒX¶.Ú·Çlî¨o†ó:2P:>GnŞ°Ûcï´å+}¢ÙÅ½TâoÛÓ}\0teåíXâµJ,²õÒÛV¥¶Ö¹–)‚<F42¬†¬5ŒÓyÊÖó ó„yÊWxFòÊ¼ÁânËú„4ƒ\n4øˆŞtØjl{Uìğ?ŞÀ{6v†PfFP®1gm yE‚<&40,ØBšä}Ò‘é¬z¬]š•Ù!Œ…e?vSoÿ\0jûh</Ğ…v\\VŒv±tEHã_rS»ß¨Ù“m‚\"o;QkœaX ‚Vm´E/4+f›iwŞŠ\\ñàxÆ]ì›hëÈ\"íf¶V6¨zO”¯Í4jØİlô˜.¬ÎØ\0_c2Ş	´Ú]ÈÛZÍ¦Ğˆt{Lú8×Û=ª¬NÆ½mûñ—Êßû·«ÁÇÕ®Óhf)ıœl=§pŠÛÚû@†Çz|Á©h ö]C\'ŞCG>Ü5Â²ÅıÊ†ÉÇŸ÷Ùâ@˜´µ¶q²²¬A¦şÕµ‡v¸ÃñŒ*™Â\rO´tÊ¤<C_ş‰¶÷{Yxƒ+uRéî™g°i¹mİ·…‹½èWËáÄº€ÍÜ³Àa×›ÆóÓy¾†¹Ú\'æñ±\n-´¶µØR/¨‹À;±Î¼ˆşÃº 6Y|J•_nÚ”S;k¨ğ|;Íæú…á3y¼ŞTşşg	ÇF Klæ|ï±Ñ~`ä…2øYÕCä3E§r4«Å¼Ş‡]æóy¾›Íæó}^åIõ Ä°4Ş\'å\Z9Bt½¹·€J›’è\Zw{ê•fã$Ï¨0½ÍCA­ÙF‹×¨™u´å7›ÍôŞo7›ÍôßØ†[i-ÜhX™¼F1-3y°ğÜü¼ó›9œQ1Ûg–ÜµÇÉs±Ó§~}¨‡&¡eB~ #gÙ*æ„nvÓ\r¹¦Óoó”ç9Mæó\Z9¾xµŒ|[í0VwSÀè]OncíÚİ`e3/ïÆ¨Y,Æã «SÎÚm1,—Íµ¡²Æœ`\Zï9‰Îs3yÓtå9ÎFo¯%†ÔêkŸU\\úÅŸ[dú¨2DtGùÔBfó\ZÀ‹ÒqêÈO Åƒ-ÃB\r‰;ÕÌ«Q—¹ééü,Ê³	k»Õ:f;:İK ¢µk,jŞt|z²\'éØ“ôìI“Ò©u#‰ŞsœÌÄâùM‹ƒÇÃ€vnP¡¹lµ‡-¡È°Îl|J7€hí´äK¯Ú\"ËŒ!Ê¼µµéÅ£=.ºä¢½šë±ºU§Àç›Òª5ôú’ü«ºV\"U…ÙWâãWŒŠõ[3qSYb5süzd­F>?PK®µ)GŞë±ºU5Ï§Áå—ÒétÄ¬Y”zV(\\jNEÕtÜjÂãà¹ê=9+ªUi¨¶M†cí¼mö„ï*ÙÌû¡­v?>mçDüy.=IÕñİ®¢¬…º¶ÇÊÇ£©£¥Óçã¥ÿ\0²Éş>7¸13î«œK:—ğtÿ\0—Ú(©zÆ96Ó]é•IÅÈÆ«©q¯¥ÕSL_ööQİî®6}•âàS‹fgñ}À ĞÆßy†7º´Säåğ©Út?Å‘JßRt¬t;í)µ/ë6nkÆéÙS:gû,Ÿãÿ\0íÏ=.³¦`YoRşŸãÒú–ú—¤cÄ»«¶äUÓr_\"cµ·¡íõicÑÓğ,®ü¿ã{`o\0Óä¨Ú\r,¢`Œ#y·Ÿü—7—‡6Üaú–Ln«–%Ù—İ*këÈê7ß?VÊ‰{×{õL¦Zmz,ıjÙgQÉ²×ê¹6.˜¹–âÏÖ2çêùrìì›§#*ê÷\"äu+ïÕ2TÜ_ú¶L®Æ©×¬Û-ê9ê™${B(Óæ*íà+ÆX\Zróå¼ùy1¬ˆA;†üe\Z¢íªÔÍE¥âº\'üX²ï\rz?Ïÿ\0jŸ~•|¯Æ¿ÿÄ\0(\0\0\0\0\0\0\0\0\0 !012Q\"@ABÿÚ\0?E3RåÌ„xÎÁ_{ºÆ%«e­Û‰‰_îìŒ‹Ñºˆ–ìD-±i/T-ëBÛ–’¯;±-XÒÉÔ‚oRWØ]É\"(æŒNzlcÒïûĞŠgt\"«œ7b\'[¼èÈr%b5lrV\Z9Åî£|Ønğl?ÉÂ»²%cò’o;ºE²^vå’Q\Z7ÊXDªwêK­Ä\Zó-Í=ÊLë¸JØZµ.\'lSş„í™öMÿ\038•áqï\Zëu\Zë	ç\\’bHü¨‚lQi£œf9Ü‘¾ÄŠ5â¼İ2M÷º\n·]öÂºú9yí.\\JiÛÑ#ñAîÍÄpÿ\0i#1^ŒªÕ°ÅäwµôHˆæF%”üF½j’¯\"p7QÀ÷ä»QK—¯&*Fƒ«BRvÑrÉ–Ù\"v\\c›îËîùŒˆÅCÍæôc¸/Gò„pfãáaa\Z2SñÓıŸ8Ú,‘0ÖJÇ§l¦\'©ø²š­ôQµljïL\Z§Á³\Z»Â+¡u.:LOÈyõr™ª–|ÄˆÁ!aÉlitÈÔºš‰šÄ±ªvJ)q´ÓI‹‰z%bRJ¦ö7%4Údo*ju_>K’òL´TµÓ`ÿ\0ML8y²û\ZˆLëì¹}ˆ†“M*ju&“5ä°¬½Œ¦“÷5¿®öûGl]±~ÈGú¡ı@OkÿÄ\0#\0\0\0\0\0\0\0 !01A\"2ÿÚ\0?q±cGQÅ‘¨’•úÍGªÿ\0Ñ+_±ûÌ}ÖlÃóÖ%uZ­ÿ\0¦7ã·æ~#Âc“N‰Ê‘\'o½û0vä‹×D¿Î•ª8œv»½aGºÈÑ	rZÈíî\'ÁkÙ‹±.ÒÆ8İ2Rÿ\0ÜZK×ÿ\0F‡ŒËóq-=B>´Gá,„%o®	o7İF6(Ò%ôoP±cf(‹¤<Ky~ë‰ËÀÆDª÷GË>EêQòEDü¾’Ö?~!²Ë,²†K×’£ï‡„7ŞL«cÜˆŠ~=ĞöBÈ~‡ÑøCÔ!dâG\"öFF41ôZÇ¬ŸÆÎF‘’%D¡daäšôÂÅàå§Ñ=F:ÊGáÖófŠt\'}Òü£7õ¾F,œã~•¹é“))ıÌò;‰‹„|v€Éÿ\0)ñğUèã«,µf\\…ëõ$>ªhR¾ÕªÒÈK!È³™	’N:†O%#ô³‘ÌıG”å!FLÅ»Z9#õ‰wÕ–rgêJvÉ=#!ZHQCŠ<#’ÈärÕÑ“%‹f%ÖHZc%ÒZˆÉîİ2r1ã²*Œ}²x1ÊÊ(¢ºÀ¢Š+¶\\†<|„«JuÛ!‡ÿ\0]Ş£é—ÂL?:ÿÄ\05\0\0\0\0\0!1Q \"0@Aaq2BR‘3r¡±#Pb’SÁÿÚ\0\0\0?X ÉoZZíĞ•î•¾ÕB¾Æ(háÁÉSzÏúR2¾™‹›Şï”;…åNy­Íòö®»ç™ÂÀ±;yü|V#`N…;”Ï	îƒ?7·bĞ÷¹üÅ(Ş¥CG\Z[Q¢–İˆ)ygå2é¾FÃ–ÉÃ·/HÍahÈc³£¿µ¡ê.s.k»¢£Udß”§gB°?>—ª%8öº¼QÀîsáTÂ†5ÎY5‹õø_K–õ’ÓÍŞ£(z÷X†i®Ô]óÀïÑAÍB•„fäm­}ÑA¢\'^RNMàÔ¨²lw*m3µpÈĞ­\nìä;¸‹É×ƒˆds]Í)?J\r×•««|ö*¡ƒåbuNÏ¹ÁnÚO•şÆ|… ÍØ›GA£Ú¥)	ûnò°ı¼£Z¢êfW{àT©}NÖk;ñYî•…ÔuŞ£s¢xçşÂâş9ÚQÖ—â?ágço=¯ÿ\0Vçıò6nXFez\'Šm‹°ı#;á§sûQ·îTkÂı\'­éB£”O•Sõ»øåZİJS5MØí•EÕrÃfÂJß´Â;,ÜZ:•‚ú€·è{(³´s{Iş“\'‘®Æ/´]Ù·zlÏªúÛ‰M£ãÂœ2±}Ezmù*/’½;ÊÅhI*¯&ÿ\0±v¥w»¹ÉWÜjo¡(4]?KVî+½øœ`,-ö*çÊ¿ÆÄuRíÔ[œr\Z¼/S§Ówu‰Ê~Úßü¯Qù›Ë@j¼³¯İËU©EÈxín¥xEÚ¯L|¨ÒìFâínìÔô¶§c}ƒùX/‡Sv+\\´Zƒ5äÙF´^#™»¯hìŠsú•Üßé7>«0Ë6Ô©u\\¥È¹ŞÑ•ÄéNAÇ@€Ğ,=tı7°wº[Òòî½õ(_*ãü-\\s*3qX‡z®çˆËÊ{ºœ”œÍJÂÕøXFMCŞpt9Şİ`¹UØ†‰\'øZ«jóÑI«e1·aûx‘²ï7a•]ƒãg¹Ékšn:{ƒ\n§\nñ_üÚ¤ïüéîºìH»D]Ôñ#dè“Ñl·ñ²ô‹¢ü.©’ºUTÃUx2‰Ó%Œ7†kÅ› _ò½üíšu½ú®jSñ±\n:çfUwö….©ş¯«Ô²ÈÇu$1¿*FvN°í9\'ŸÂ.9¼=[x²n6e::Uî\"³pQhÕ‰¥FÀ¬B‹¡»Î]~{ÛLê½ğ;Zí±ƒY¼êy<=8ÉÔ½Îé•ÁÚ)Õ:ÎêÕİ*EZÙœ¡Ùº;)µwÀPÖ	e˜Ëª63xgAÉGv@õOwe:ßƒ¨Aı-Sê•úËy¡ÁK29˜©héª†5¬ß+Ü];xgxĞ){¢VÜ\\±ÏvÏÈ¬:ìcnwa=)³çcN¯RĞ@Îùr—eÓ‡5SÃÅ|è¬ÁÌlâj1Ôl´i]štjƒvÕËÌF¹İ;2§ˆ×kKåL\'?¬ÜT›½²€à<\ZUF,Ö@xä©š‚6Mğ†ÌlMÒØ9‰Q-ò·í	Pü/µ¿ÚÀÂ=Æì•Z9¹£Ê\n¡QEåMó³;mÙö…—\nJÆëƒ@$u[–fGYäKTwÚ!Ğ]\"˜V,Çe#.*M\Z2õ¸G^E¶ƒ^œ\Zª ×tRœÃp{39…Lôâ@ŞrõSılaq‡*¸,]:rós¼p$®Û…”¸ÉR(TZ¸Â†n·]U?;9,¹£·%vÙƒ³¸~;tìïQdß•‰ç½ŞyÚ\\vã‡RªPk!İVÌªY•˜j—o—4	ªÅ§c=—89–Ç›µT¢ÏgÜ¼*ITaThÜ§;Èå2U;vJÏbªPY…˜¸Ê–İ‹²“°]™YÂ«‰á;š÷,î£Wµ{±{JÏ†şáZVA_¤,ÂÜ¡Y¯r†•	µöwN-mœÇÜ‡„âªŒRëOUĞ¿@/Ñı[şiÏ-‹6Ú{Iª4³ÿ\0ÖÓ®Íf¨%PBÍTBùàZşäábì/Õkm,ÒQ}¡€·E^åşÁê;øX0XâÑ9öÅ|¦Y¼n”÷º@û³5*>J†½ğezÌË¨Fu²p²0ş‰®µ·–uªÄóÑïu6£ÿ\0…ƒ–-uÀõgfñBjã¿ô…›i*¬Çû”5–DöFÒÇ¦bı|vñ-<£hé¢\rßlöQhĞà›IÄÓHÍC­ğ7şÕ)¶––¥Îšt7ÉVŸ´¬6ØÚazvÿ\0ä†¶4”y6„u*Ûößjhé†è£\r òZ48\"Æ“#Ú·­°÷T¯RÚØ¸Ìészw…%Øÿ\0ê°Zÿ\0\ZßS]¡V¿´òÍVïÅóµiå7LvùMŞ§NŸ„àÃ\"ˆZÿ\0ïiÖno’­?iVßt[`ì/FÚØŒ^U·í¾Ù7L:ŠwÏÍÍwÓ4D\nşC¨:ÌÜßŞ„ıb‰Í±v¯^ÜïyV¿·ËQ×j6‹YVmü,ÙøD=ç	è¤!C˜×wQìoe›Ölb™E¤¶½}™‚«dÂSm1F€É;öŞ}(®¡}…›?‡Z@Ğ-9­yXD1½Ø—­Ls9,ÛøAì0å[6’ƒ±F \"	e{q£f”*>ærUY(ùßÿÄ\0(\0\0\0\0\0\0\0!1 AQa0q‘@¡±ÑğÁáÿÚ\0\0\0?!hW\"—760átBe›vB ‚’lmGÉÃhW#v¿ìgÛ[ÏİrÄÍÜ;‰³5_zD¢ù2ó)è$0Zræ!¼†4-ªdt5ägÇÍü—2bÈ<ƒi)dÎ(ÁıÉ8V{ªŞeƒ2¦şPÄp…–ÂÅ;•D\'²Æ=æ’I×Š$¿kÜù%r7a’İéÅî&RÔ´IŸeÌè¹=EúL®0BÍ–2’\n¹Õ¶|\r	0›.³ÅGF¡¿%ÎÂrJ&ŠähoÉBDÅ#Q¶êĞN’‚±B¸Ò<Ê¥°T^¸$¸ãĞ&$šÿ\0.!ÏÎsE€\n¿P‡á¹{d:Z–†mÒÉ†ù$Â{b\0È:z»„ùüI‚†K=XŒ>ÁÛıáNL­ü Ñr\"Û€áp·“w„>HHECckG[!ìÃÈö_#ß‚‘eÑE<ÖZ%#r$„B!\rük{’ĞÚÒbX\nWÌD’BV-¡L_¢Á,`Êf¹	*pŒ7-Yàp\0¼	ÈËax	Eä–ğ˜BÖ©‡I±\"VC^\nÛ™¬© k…Èzia\rFâÆìFÎ{?ŒÎÏı€”ü@3ÑÀ5Ü’e€Ş	½ü~˜KtºY–ş*«$êıâ)i…O¨„\n÷l×ë$·õl„ñ’r\0±r^“Ó¸èúSÖÈÏĞóû³l9Ç›	Ê×3”K[x1Q£´`3ÈœP[q{*ch¹òz:‰/f°v¡‡BH„£Ïòèd$z|±9Óc\Z`iÓî·\ZôJ°²\"e„0V%Y·YI]À×°»õã—ë!ÀÆ®¡N„Ckü`†Äş¡-¹nïÂ´5¨ÂL²M	‘F;g°X ú\\E	DˆSª\'^\rì„Ş!pTËÏhÙUğÁûğâeñ¿›(FIŒhzQ+*x030@Æí—Ş*%‰1Œ9¹&ø bIÊ@û@Sj¹21.Qv÷¿6ü ØFÂ´X,°ArîÌTºòh—¢T‹\\_ú‘×@\"æY«”\0¼•\"{ø£F‰8/Á)/ÊÉ$ø2‚ØÑ…{”†o=ªCu…íŠ\rhYÂ.a«ê]\06vD©øÇ\n$Ú\rá}—k$í‘ÙsK5¼>„¹÷Œ–ÿ\0ê*RbÊ\"HŞÕ6;¸s‹í!Q¸KÅ·D¨¿$\rÂ\\²$%n1-$ŸhÆí«îC\r—	“€ƒÖ33ÕÚ„˜R˜^ß#¬9n7†¿ &F:¾€±es‚¬xÒé\'ú0İÄŠN1iä_°…G .›-È~3tKp\n¶¶HA®¾8;àMz‚¦š	!Ñéh0–$\0.5b†V¢–`¤”¯^t 2`Ê×.´*	ÈåÉfªöfDJËÑc`$u`‡#^)0ÃkJTV”÷oA	3ÈôUk\\c–Â÷	n6¿~vËJ~K6Ck¼(ÿ\0UË‘ç	’…©bá»“”\Z\"ñ=lãÎbXh,:Ü¥¼I(FuŠÙ\r$Ym\r±ì42tM\ZÂ}¹\n?T²À€Şû\n‰©´”»\n­\rÂ}ÊF¶HÙÙG¨ğ¡!ÆÅ¤!¤]1·P\ZÜ:&€½4j}œˆCQX#Ì²î)\'÷Eµö7bà-XĞ†Bz–z‰ø\r‚,—pX—=Í›\r CäÑ/tÎš;çDç$‘Òh¸ÒJÁ\rR4A6Åã¹#:q’7¢L\rC>x`ls;Æ#İd‚¹às$¦éˆ	Äà±®»ĞÄDhì|»E: svÔôBVJğgîÌ(ÒÅ>àRÇàB9ÜQ*G\ZvµçEõX(“pAŠßq€’0ñDK	|¢µğÂˆ-™8­$Ş€Ã\'^«ú°§`ô!-F1Ä2ˆÑ¶b–™€gB\Z2İ\"¾qM@È&ä‹Y#’ßMĞ³”6âV`Um+¶OĞ@„6‚º±”ÃIÑ!(ÒÙrĞ{â¨Ğ|v@a†K£SDP“I¦‚Y´5ÀĞMsBÄ‹íGaM1Ç%öeü°È7o¤BOÒ¨ÊèS	áœoÂ8íHJ??ã“âPeAë!ÕĞã’¡Æëq0†áÕŠ‰(\'‡\n“½„$1ŠKÒìÃ‘\'!û àQ]õ¸Ø4îŸ‚\0	9*Åı(†“\rY¨õ;Ä¢èÜ2mF²‰)(¢Jhxì4-!2øˆjPìÄ«1À›â\\fP¤Šb¸œ…,aàW\"±–6(Xkˆ@#D’iXmÍ\n$”Ñ°+Ñ”!(²éAÅH„ed®@ppr7®£‡a)YŒì¬QJ3¥`T¬sò`^XÆ‹ä\"s%Q]\ZÕ5¦şù0½ë2‰+E4…rÌç:tS*¹\n-rKÌ–¨$lñ8>ÄçÀ©İJ÷ğH¸t¢	Ç)’IÑ…f†ÒEªè¸D·a‹a!(9ÑŠ»\rÍÕ$$.¸İY¾‚Y4ÒO‚ÉŠ&.nQ-lè´’I&³T™PE\Z¥ı‘±5­‚DAFIBò$0cë’ÿ\0=“>.JÁk—õ¨ú(‚Lèea\\’èŠB¢	 ™$’HÃ¸˜­#¢*¼!¤F©@1…S†HöˆÎşè2jFğQ-%9^lV).ò6»¢3(Ä¶!\n¨\ZJI$èmÎ\n“RÄ£6¢CBdE fÙ Ê‡rıcÿ\0ìtÌ‡í×Í÷Š’Å64¦„L‘±†\'SK&N¤’¹2\n¢1áHU$l=Œ\rV-È¶U¶u¶Ñ/ò\rŒõ’EÎF%¶ÂÑ”ó˜C)Í2$&*†š\'^Ñ’RÇèd!…Ø˜IÙ˜Î†°¥ÅD›%ö6€÷\\r²¨Õgh¢™šhÅÙ–WÎ“×ô3.-‹…àT\"’D=ëI:$cf5sdš¬—Fáz[„íB&š³¬Ğv cH€7\0ŠHPJ¸9Ğ1á)júƒøOçLòäB¤T#ÀÂOsfÚ”‰>F¬©³Õ‰àÈ)wh-v:5Ç°©h=Äàá…š~,?øÄìÕFHÂ”‚PK\"ÂÓ\"9ËÀ“ó¡SrÚ¸ˆ_£ª¤ÿ\0?ÎÆ–#p“‘YCÜ,ZOƒã„˜œ fÊ |œN‰KyzdŠJÔJäÜ™¨µÆé*Aà‰k8Ï½pŒ)ûé\n/c/b\'´a;ô\\›I`Â[ˆ˜´?‚	GÈ	f\rÒv¦hÌÅI·êşHšÛ†•WÈ÷y` ÌÉ,6Ã0Àáñ°=³œ\"Ù›‘Ô¾C§pjòn?*ÏÄñ‰D/c\Zä[±Y%Å…$$‚U–CDÁ†‘ßç‘jÚC½õè¤ƒIc!d¡?Æà™—rSüagşÉªšÙWA>âòìCÎÄ–„²ÈúBÑà‘ÜtşÄıa)²‘<å\\r`”)qô¼Â‘‰\n(Îédl1Há4’HÈ°w¬Ò×\ZNÔ~ĞM¥¹#pËvFó;ıB,g!EæcÃ/ñ¸Ãå0Å‰A6KJŠ”	X3d¸ƒv,û$&løeÀ^s:~Äı°—Âš†z¨e-Ÿ¼ò9„%KÄ–B«ª%ÛB”QAB†Eªa3eÊ¬F§àÆÈXÛ‰0BË×IE†Ë7K¸$3\\Q¡È#¬hÎ«Îô[(më ºrNSGh¡ØyY¢šÀA„ãè	T:vâ)\"Ïr,=cÃ\'±¥Ú—D—ötpÁ±ä7!ô+™«$C·šIáeªeÂÈr)­â±IËÊUV:=\n®¯ğ3›ŸÿÚ\0\0\0\0\03Ó0»€\0KJ¢ËÒmT~üà<MKÏÃ€\0\03FÓX\'4Ú`Êw§¿¨S¯$ÑÚ‘€pC-·û^õ]òvl7ÿ\0ö;ñú	‹™nÁ”PFf¤Ù>‘sı¢ã³yâéïƒşP,à\0³³Âë|?Øú|3ö[ì2À¨ş ƒ\\ì®¥ß¿dÿ\0°ÔîwÌèâ	sïk ¨-\ZóÕß¡A ¯B2§¾ûàƒ)¤¼…öóf,}ßì&[>Óÿ\0¾úÁš\nƒPN[A\"‡Z=\02\0QäÏ{nÕ`1äŸ‹<–,Oüc==Q~¯®\n+ALkœ¿¿®è\Z¶©ÿ\0@|ûë²\Z>à®:ü`{Õ\0<j6_•®Ûÿ\0ÿ\0èĞ$5­õ8¤2öTmÉ0Ğ‡©h½Ûê8ŒG†©	Ø’¶Ë“OhFë¾şÈ·-™(œ¸ğx3Æ¡ÈÉNZ‹îGI½š±¾s.’\\+FCD9˜JåÓ[aĞ¯ÜéÍ	P0PPˆŠÊ˜ñ€iß<ŠËßêÖZ¶+FÕG¼Àp„>‡9z‚|sƒ	¨ jÛHø[ªıĞ(`ªW,Cÿ\0ıîx`ñÏ„ºkHËòˆê*ë®l0‚ÁÎ\\hš<]pÀõ¼ûÕA¨¾P*Ã5¿ÿ\0ï*ÿÄ\0\0\0\0\0\0\0\0\0!1 AQ0qÿÚ\0?ÍÙOÙOí¿ì/ìƒìÓ¬ş{3ÃWD|ìsSû`Œ>—!Şq^£ú¼Î;áìÈâ~“½qÃ ’á·†³là	aÂi‘ÆM,XØÅ­û[ß;-°Ûl0Šòge~Ö¦A®X¬¶ÂİİÛ|g\'¨W_–Éü›.íAÂä³°@@Fà0pOÆ´ÉVñŸõ9ŞÈÁ€»Æä!’Ó[ 2Ş\08Ë3íwa¨&ZØ ï†YÆ<Œ6z€%ĞÀAaÃI\"~J Œv\0ôZ`øÈsK88`¬ˆ`‚\rbr‹e®Ê¥¶VÛcÑ\'y3ù³¸È‹1Á¶Ûó–Fİ‰‰d3¢@ëê;‚‰pØœD°Ã¼2ä¯äo¯ËÃmLòI0q³¬²q˜YÁyLM/Ë á$ƒè”ŞíWX‰%–Q(’fä°Ë,@8Æ&—˜èŒrË,á„ ÷+Ö9eZE•Üa°ƒc–Ú•c\Z‰ ÆN˜ğ|o$°„É;+%ä3361œp—]-µÌ±e½ğZcvrtö|ßË#ã\"vH#·í¼$Ã³“—G©uŞij¶]›x5a;‹\Ziy‚CƒÈw=J±f­#0“íI’òX½ÚÀ¼$Ke[Óuk3ŒûI\'œ6g³ß“’6ñYm°õbR[rÛem“¬„/Y\0Ü]O^ÈÆŒ·F`ü x&GS=d¯}@ö£ĞİÑ‹fÆ<imßáá	ù;¬j”Á‘ÉuÜvl“6É¢vI!Æ{UÍUöµ„&3ä<r_ªÊYI»0†öÀ{ùeùcò\\v(îH1cÒÊm¡êZIz^3ln÷\\‡»²ÿ\0Û;cÙöÎN	–Ôßr=ƒ¶:¬²cÎğ¸„oéG²³êÙ±Ìà\0ÆóEoA…İ-vv3ï\0î±IŸ’¾ÂÂ’ıµğê­„.Øğ=™«ıò>Œr|—îoÏñ!ïˆãÿÄ\0\0\0\0\0\0\0\0\0!1A Qa0ÿÚ\0?ËşA|±ü¿ÊSåä2¯Óä»ƒæÏ·Ë1Ùte¡ç9(ğ·ü…q„\Zq‡G³V¿Œ_!±\\Ù–CÖDdù{Ÿ&Ş ıe‘7¥ª[Ì¬¼–AjC…}˜4±ŞãÏÂËŞÛMBøÀ|ágs¹@/va{\"‘€	OÇ‹;Ë+ııvxÈ{Ÿg£mø0“zŠt\0¾’d–q‘eœ\'Rè‘€ï*y)Û._,“&«í¦u(•òÕg~ÀÌÇç Ô\"Ÿ±Æ™—n’ÂAİ„Ë¤AÂ^§³­¯láÑ31ÃÉ\0ˆ0Ÿ³ò¨§û=ÁÃ£¨)jg:•¶íòpè—şG“0•l$Ÿñƒ­ám°0ˆÙá-c¨NxKoåHûÂ\"¶Ì%ÑŒf‹!¡G©Tí¼p;Ùv;ÁÎ÷¸G½ÔR•±Ó	WvÇ“7ˆk“€äË–ï)6İÇœ}„—\\àkl0ÂÛÁ†ÊF\0ãÃ®‘¸e×¦Iál`,²È-´k&<woïèï’zíŸlk(ã0Òc¦.áftÉ<{ùØ‘@2$x ’¸²y4l‡§)²a)vIÎQN\r0µò# ]‡f Í@Ã`ù=Á<„{#Éî¥÷òÎ¡–\"àğ²âä2í–gÁ±ÉM1°^m—\rl4,{-=³œØ³Ñ&Ğz4±%Œ@¹Ê^N{.ávöÔ:¶éœÈ_bVl™iìc6I,YOD§ì3ìë6´‚ˆO®İd$’X‰/ÓìLù+ó‚S¶Ë:³}°´#ûI\Z°îl¥³Ê	{ÓˆËIËé>lÍ6™ zÍmÍb=‘s\'6ÌÉ›dŸæSkıµÖeƒÕßHm¶Û2ik\röS¬öhâ`’àõ·ÂÖõ ˜Ë»‡w@–!şO¤=şëy‰{°œ!Ôşu„«ì‡Ø9™%;$å†p§³¬ÆfINÉ/¶sÏÊ¬«„‹_#8JKÁxàbgôô›ÿÄ\0)\0\0\0\0\0!1AQa q0‘¡Á±Ñğá@ñÿÚ\0\0\0?£»àÇø$±\"6ªî €„0¦Á^>š¿¨s\\Ã£s©<¦Ü\nhL¾ªf‹¿£Ñ{ÎdùX|O‰³#3Fçx›:i9­ÀÖÿ\0ÍD	û‹U€$c¢ÇvBk ‚+TÔ£î¡7OŞa£5!âQ¡¯9Ö€}‘Øö™iŞG“‚Â%À¡(\n%J•Í@§€¸bj9z=°˜|°ÁX\0£øİ0×¨\0(GHîUØ‚8I÷sÓì{™ˆ]*l	îã¨èÙ—ˆŒkçzhÊÏ¸]vÇ‚ \0~CBeX{,„Å¹Wj\"Û\n`Ø\'7ò¨¿2ş#kè„ÄŒ\0óÙy_âuÜĞ‰HÆTífÓÙ2!Ò°ŸgĞÈvCWı<\Z¼YúKPè¿æ;NË/åa˜èQQ{µA²½ˆ°DÕl¨Í)Gy†”ƒ—„•£IÓIÉƒAeMÚ”G¥#ğìøœa¶ÑÀÔI¥Ô­…çÄ-Ô¨Ã,2åÛ5—1JS4€\0¨á\"Kªa˜RZâåÔµ—n\0™–œÅLıa&Æ<ÉN2Ï?.®¬ı\'æF0ˆCÛÂ¿%†Ê§na,Ç2º™O&4}ù§Òfì­™C*À}İÊŞú}F#ûh+ˆ[˜„GK¯›n:8r`œrnXK¸–™b)¿¨p<e†”„V¨X€¬Õ$ğøw•-ÑSû8†hŸ·ú!şÔ¢m!ĞÈ-\\”á“ea+û1ƒc’8ÊwĞ<$\'D®Äê’\Zí%zzÜ\nFÑ.‚°¼0_ùÜ¨VÂh®ƒ£YƒbBj OWäke7_°YÈOJfÖ’¿°ş\"‹—°35Ñd[`Ç¨Ç‰iˆ×ŒR„ 2“mƒeœ‘è·,\\ŞÙœ¿·©ôB@Q´%e¼QÏÒ™LmfBÖ†a”UŒÜlbê1´¿á”z1¨W¥ù¸Q¢À5Úë©Aío×+‡Á,Jr+´RWİÅhèXıë•_à‹ÅË> Èx©w\Z&S\ZqpÅ_–º#åzRãƒk‰G&oÑ	7®ò’‚\0£ØÛƒğP|5¯†Aö?î&†·À`¤Bá*Zå†/Ó)ÖÂ»NÉX2ÒL2¦­ƒş%haŠ²¢®Ö‡ğàøc§UƒëW¦\nŸÔkä8rœŞj\rG÷ô! \0\0E¡c/=µÎ^à\0Rê\Zô‘£Û2^¾ƒ¸`´=…x±Úw `ÆÏSbË6ä­ä¶ƒb¥ã×±5p˜QU\ZøŒñiBô=E½`—Éü,ÀÙàMÄè7-ãïÛË±Şj¡Š‰,¥L·\0ü/Q¥IT€e™µ-±àkµ¶(\nàå(\Zÿ\0¦Y=­°àÁT‘lÁ,­nSvş²ÑÅQ°Uğa/+c¨a\"¾…Ò\"ÙOe1ÀÍİ~WÅÊø°A/¤ce/G¡Û	%õ\0àøÅğÈµÚ%À.„P—M/Â¥æ±É0÷QŒ9nÄ2€ À\Z\"‚¨mè\"\"»×‚uRlÖéR4ØDUr¬ÙíZ¨Â.`]xË‘•î‚ş¯Ø°ªxw(h–\réÉšñ.ş7.\\»•Ísp‹O¶¨&QÜm%«•‚¸T C#¤»©›¿é[bEn0â#=‘®¬Ğ¿C\0å\0Í¾3í†ÖRÓµa£lu…\0qo‚0(¢•¸Šô’¯-}¬¹]\r°c°	W¸X\"¤9ø€@ÂèƒÑ\\\Z‚§S\rS}WCdbÙ\r-Ü»şT¯G^”“S(…•ş¹¾løŒ8\"†jˆ\ZŠ5AÄ~NŒBUuÃ:Ìù—x[!ác¶m?Ü7‹W×²\0OÕ÷…Zõ	 U ˆ´#¨1¹ı¦,¢ÛW¨huÛûÑ/\n\r^<@ô „¸h\rj´%‘s¼	éôWñåÁ—._ûp(}ğgƒ‚Q(TÅ¦™P]GRé‚uÜ±w%uà¯f+WrÍ7‹È±/8Î^¦¸±r$œÀà(úW¸gabOëb¸^0u}ÀYÓÛ1À\rªË\\H4C,`Qü§Ä[áCG×=\n˜\nØ)D+ª¸?\0¤¾.J•*\ZB=GL6à‡áŠı¹•- #Ã	 ¯‚\Zº»b…¦#ãsríèè XB§Ü°¶Ğ|°#R‹;WG÷§¼èêUp`Dªê¸¯3cl&˜\0øWñ-K—«ˆPÕÑ\r…Ó2/™‘;¡ŸØ‹íıâù¹|è«—ºõp¢.~€•»(“¢0H!G^A\0h¨ËÌBõ¸Å^³<³%¤úĞE¤ïâ\'K¢€Ğu*\n ÕÑ¶Ú€£N…ËşàµÇÁ-(Õõ5¬\0\0˜3\r=ÅÁÒñ¨7/)DÉw._5ƒÂüÁh¬\0vÍìv«¡Ñ*µ3rÍÔSÍÃ8ĞSî\"‡4Ôp%ÊJ\0Wµx¸Ô}°¬\0\0j\\ş—mÍF3~ƒ`¡µñP–£¨ØÚ¨Ë^—VŞ‚ WÂø\Z„q«>>(ƒ\r‘í—4¼Şâ2@×Á:Õ’ˆ&˜5#_¢\0`*€\"TK\n=LJ4`—7ÀöÌÒ·ÕŞá¬Á– |î\\¾n\\¾Xèf4ĞS òÄ’v²±z_ØĞ,Y¸¦ª™Ø?í\nú­·Û* –_PËW7=¥ÈÂI1ºeLóQ%r¥bñ	Q¸c>$Î±%ºbHªé\"`·w(^2µîdº&Y^,ZËQ„:ş2_€öƒıMc:n?¶\'*Ø?ĞFÍC±‘¬Gº^ÌØöi‹Ô·G³ê¸ÈM¯¯«²+ˆ9€\n&ÜD E° \nñƒ¹ñPéÁŠG\0ÃãiğxsuÚ¥b+M¹kÔ£w²5JK”û Æ<@r«·—S¥.Õˆ„ »Â4‘jÑ{Àğ0\nÜ÷P¸´³‹—/â’Ñäq—^uØj%ñïÌ~\07àåöw‘x;WPeGTì: H\n!®¡òÄñQOì:\0Ç^]|xa`O$\nhñ%˜ç!wj´}Kä‘~ãîPFl¾X\n¯–ãÇ“Î†ß?Y‘úy•M%Ó¢¬\'	ãÔ:¸¬Éwğ¸Õ\0mcŒ_OÓÜ°ºš\Z³Ô\'KÙ–°¾+àÊÙ«âg‘IĞn˜äî¡V˜cRºr¡,C`C‡(b\"\"!±ÈÄz­àê\rêÂ77¶4ÆıFÀOÙ\"«ú‹|q%æãa“·Ó±³ÍGb[»\n¬n ŸÕ#±Áv ˆÎË”¬ƒ¬µ>³K½ÃıPüÇüQcğp% vÇ\0¤±(}½û!…AèlÁÁµ¢\\\'á#Y®¨‘0Î›¥áU%„.‹«ï–8>àNàïÉª´¶ ïPÁÕ•^úÅJôJ*®<$$•Úæ£†]j#¤Eºmêã3U2•E¸MwˆI·=/‡or’Z|)¢]†hD~@ºÁ_œA‚Å¤#gPHÈéQC‚^È7h6Z\rï‹Œá+RPò¶¾nË©qDW\04•B^š­G‹—w^äş \0\0\0W$JK‡Å\rUGP%ãBíŠ`Qkµe)Â9$H‘Š¾\"X%hí†ª­«ËnÖ#‡1µÅ\\RÁ!¤t4Beh_7<1 \\Vúˆb’ë=‘1X¸ì	„K!1KÈî—c(YáãråÙ²hŒÃ¦[î½WÛ€iŠşJÁ·“‡ôn>¥p¸î:ÀT¸Y>YÆ{ê\"*$cÁTÎÅrkÊÖcé(ÁTµîxn\'u×ñ±(ˆ§²]‹ÒOÅ(É6•ı”™¬Ê˜¼%ÀW©h¤Â&İP“aĞÅEË\ra¨FÔzï¯„t\0«Dt®i:··Ä1ea\0ˆ¸z *¡6Û’-ú‡\n?%X2œZ‚#\\Õ×¨è]•šÉ¦RÊ‡c‹»ƒš€‰MENˆ¼+e©ˆ°[cX‚ÅbØ¨›Îøª;õïëkÔ!CD´Ó›yQò²—ıÆaØì•\"ıi?`”ÖåõÓ.\rBÜ ª¸ph!xeA †¿…à½kÑ	3[¼A­õ\r\0†jèÃ}!17\râwQê<ğTJÆZ·¸=J·PåƒàqT\n¶8E«†ÀÆ\Z‰J=5+Qa„F\"=Dc¥Ç¬\'’8u!%Flñ\ZªWxq–Xµ>Ñ\"’\Za9\ZŠ§5QÄz´! QÒ76\0~âµk8<À)z«ÿ\0ì-n˜í‡_B oªƒ1¦eá\\+Á‰À¹‚*I…%ü)Ôè@8C€ƒê¥KCÁ.	²Ü¤FF-%àm„DD\\Ó*{ğ¨T´» DJ‰w‰c”Yl°àÆ¢x‹û7“\\5%¡CÎ%)h™2ÙO.€ÛÔ:Ú’]\nÕ—!ê¾¦õ±ë×ÍªU\0|Fv–F„)Cªê0İ\"$»v»`S;Q*T3dÆ=E60Ş1Ö´w’xåQ.D´n0‰ÙÉwE5ÖV6r4LÏ\nh¿°Œ–²•AÂª8X]0Š-.{êfkŒQ —ôg´ƒş8 ²Ç	+$‚’°ıUe|šİ–DŠT2€ ¶µü¨d€1ïÛîŸS1P×iw*P(ª´b£ €õP¡V1(”_ÔQ`—ğc%CğÄ˜¡+e[&u:€«ºEkî¥Ü¢Â”û0Ô€¿QiZ\n•*$C¸\ZÈ•* K¸@\rY…E¸—Ä\0Ÿ	H#ÓËd×ŸçÅ—K ¯/ˆûúN¡â@Dë/Ì\"ƒE¥Y0LBÜlJLu(Š¡‰À‹‡!Pİ(!ŒW.>ÑÎón³Y”Z-ÆÒ»7l¯%5’$ğ.ÙS?.©\\*øT©P­ Ë%xñ\n…²¢/éR{©Ulì‹¸Åáx<åßÂ§‡Gkà%c~àûeô\Z!wTA0\0\'•…™‚%ÆºŠøÆ•\nBI$`Ã‡hÖa¢‰˜Z\0 H8\r©Ib0¡GPZÈá[¥·Ì8A/HjÊŒ3@1\"X‘˜÷\Z÷1`ÕÒ%¥vZ’a’W¦P )˜>Ş¥ÕQ\\eƒŒA”ÇßP³O\"Ìp„®—îAÁ%¤qÄªƒW\'ï–\r—éIF$ Â=ª–>%À>Ã¨yÊÆœÔ©UóÜvˆ.UæVÊÓ$~ÈÔŒ¨€\n!µkÚàúˆv\Z¿¸KËDšiw§äS\Z3—/ îaEq´=âM•|ÜYx3üÆĞ$/ÍyKI~\nû_øP\0x!‚xÍ‘Ä ‚½ÊJùcqc0XÖRí…Ë~!¨zIJÑR®a¸‚ĞèpŒ\"BĞË6ÑÑÀFtB˜\0ìIuk³ØıBw/XŒ,Dò|ùÿ\0¨‹ê8Ç²PZ÷z¢RŠp+Öÿ\0æ\rK%!pÛ„3.5%¥¢ù…*w9Bw˜Xu¤EH›àıJĞîÈ}@¦±•ª%Áhæ˜TÉP\"	Ü0Ë`D©°Šx\"‰	+Ñ¢8q,½Ò ¨ùÓq“7³ú„Q\0h4L7R^£‘‡¼ñÅ€äHÅğ‹‘ˆ|e´bïr¾²x^Bå‡T@‰p–%Xf[†m±(`¥ŠÌòñ‘#‡·n˜·5Á\'¢àKQ\\%iÂAFWW…À¨“ú	f]–»Ï1ieV¥+-‰¸†‘\\KÄ\rÂ=KQµr³\\\"ĞE`§1d„UDû\"³†(Å»‹K0¾Ù^lŒYjc%µ*ÈÍÆ²¾î,¹tT\n%€!58*\nÔŞ­<ÄˆÆ÷/I²9\\LwÊ­¬\04yQJğÈXš}0ÈT­Ñzj3–«&} ¡iRÅñ(İ·”uí`:>á)L{‰êÑÎ\ZÃ«™ËÏ<¼eâÍ-ú–b†È{f·Öí‡eæ>ğåPX^	LHk‡-‰#@ËÌ‘Á«‘ª,X0ÜJÅ1b˜J†à¯ë˜ŸÕcá¨ûUW*=«î;Fl$°Ó”šj ”¹XI¨ ?p.\"¤M	 X8V0	ÿ\0û°ÿ\0ö İ@Çj zF˜t}~ÁhGª:QªÉhÁ…mµŞ>¦7çRÈO$_f[‡ìÏöÌôv´0Ñ¢!vTs}²®Q(ğp¢­\naDF¶z ‚Æ4~Ã·?q¥DÁØctúŒ¨)pÌÍĞõ8ŠR¹©Ù×ÊKŞ¹Úè6¬waH«Œ¾B*ı+Y)~–òQH‰RÅ¢BÁ|TXš‰\"øh,‹„„R¼6ûB˜1j\n‰²¹;ŸÂÊøØâyUh\'›q]Ç`•ÅC9¾e\0”H›ê¯Ød·!+4”]W¨(ˆK!êßnŞjW7.\\Lº„iVzGJ!v.H#¡x5¦&‚T[„O„È>3*F¬ê\Z÷ST²OB„½¹\0ÂS˜kvŒŒ¯DÈAEVR\rÜ\'x!Y?Àwõ1ôÏÿ\0cÊ<JğHrzÓ¯­#ñFö‘œ?ç%ù{ºı\nÔ\ZŸõY‰„fÆÆV\0“j0c!1‘àTaÅ?ö<DÀ]ı•G–ê9¨2Ç\nO³~ø\Z>¼o€æ¾ËX¸dBx€BR‹Ù‰bKÇQ•\\e,DÄÊæ5óÈÆFàılMê)F^P„Õhk;v‚?†¡c¬€\\¡GÜ2ŸTö<§Ÿ&L—°p—Ó)<q¯â^$‹½(Ë´k3_\\ õ5Pó#±ŸÆX‚ÓªnüjVjÿ\0Á¹	W¡õR\n.Ã2/2Š•+åV.®=¼\0íñ+Ã}±ÀOºÌrâz>6˜ÀpİB5ºÌZ¯‘…ì·ÍÔ[à±F×Ã®-D/Å²#Pã\"i*òç¼õ—(ú°ø/ªZ?ë±;sûPEä¨C>XÙ¹±ÀNèAØF*¨$)LÑ—BÕZ”F×ş#7W_Œº…Ø?È“ì» ?Î.¹ú ğh‡È2åÀàAæàB6¸}J™•Û3P†ÄGXVt ˜ıVã`ÊkÅBÆÔ¿XPhXäkÒEi€Ö|Jrb†!ZT¾.\\IQ\"e•ğ¨)¢¢a.]ñuÀB\nùÜ.W…HUuâ	{[a\0¸n¨.W¨R¦ä´°æ”)áÊÆÙ±õ5~mûáù£à9<uğ=pŸ¹¡ÆÏ¢òµÃ—ÿÙ','image/jpeg');
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
INSERT INTO `municipio` VALUES (1,'Ocotal',1),(2,'Mozonte',1),(3,'Dipilto',1),(4,'Jalapa',1),(5,'San Fernando',1),(6,'EstelÃ­',2),(7,'Condega',2),(8,'La Trinidad',2),(10,'Sebaco',3),(11,'Somoto',4),(12,'ASDF GHIJL ASDASDADADS',1);
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
INSERT INTO `persona` VALUES (10,'Miguel Angel','Castillo Cornejo','M','2015-10-08'),(11,'Jose Manuel','Poveda','M','2015-04-08'),(12,'Rene Mauricio','Cruz Hernandez','M','1969-12-31'),(13,'Idalia del Socorro','Mairena','M','2015-12-08'),(15,'Alfredo Heberto','Martinez AcuÃ±a','M','1969-12-31'),(16,'Jose Manuel','Poveda sad','M','2015-08-06'),(17,'Engels Uriel','Alegria','M','1969-12-31'),(18,'Miguel Angel','Castillo Cornejo','M','1969-12-31'),(19,'Pedro Joaquin','Castillo Cornejo','M','1969-12-31'),(20,'Pedro Joaquin','Castillo Cornejo','M','1969-12-31'),(21,'dasdsadsadsa','aaaaaaaa','M','1969-12-31'),(22,'dasdsadsadsa','aaaaaaaa','M','1969-12-31'),(23,'sadadsaddsaadasdsadsad','sadadsdsadsadsadsadsadas','M','1969-12-31'),(24,'sadadsaddsaadasdsadsad','sadadsdsadsadsadsadsadas','M','1969-12-31'),(25,'kkkkkkkkkk kkkkkkkkk','rrrrrrrrrr rrrrrrrrrr','M','1969-12-31'),(26,'dasdsadsadsadadasdadsdasdadad','adasdasdsadsaa','M','2015-09-30'),(27,'asdasdsadsadsadsadsaads','asdadsasadsadsdsad','M','2015-09-30'),(28,'admin','prueba','M',NULL),(29,'asdasda ads ada','adsadsad','M','2015-10-04'),(30,'leticia maria','davila','M','2015-10-04');
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
INSERT INTO `sociedad` VALUES (1,'Sociedad Anonima'),(2,'Sociedad Civil'),(3,'Sociedad Colectiva'),(4,'Sociedad en Comandita'),(5,'Uniones de empresas'),(6,'adasdadasdad'),(7,'Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±'),(8,'sfsfsfsdsdf'),(9,'pppppppppoooooo'),(10,'2'),(11,'3');
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
