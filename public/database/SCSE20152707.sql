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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beca`
--

LOCK TABLES `beca` WRITE;
/*!40000 ALTER TABLE `beca` DISABLE KEYS */;
INSERT INTO `beca` VALUES (1,15,'Beca de cursos en asaber que','https://www.youtube.com/watch?v=TEDWfjDc_fE'),(9,29,'Ejemplo de beca','dasdasdasda'),(10,30,'Prueba de beca internacional','https://www.facebook.com/?q='),(11,31,'Beca en asdadsads 12',''),(12,35,'Beca alimenticias y de transporte','https://norte.uni.edu.ni/becas'),(13,36,'Una publicaciÃ³n larga 123456','https://www.youtube.com/watch?v=vOlF5YRV8Ow');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_publicacion`
--

LOCK TABLES `imagen_publicacion` WRITE;
/*!40000 ALTER TABLE `imagen_publicacion` DISABLE KEYS */;
INSERT INTO `imagen_publicacion` VALUES (1,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿÛ\\0„\\0\\n\\r(\\Z1#%(:3=<9387@H\\\\N@DWE78PmQW_bghg>Mqypdx\\\\egc/\\Z\\Z/cB8BccccccccccccccccccccccccccccccccccccccccccccccccccÿÀ\\0hà\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0N\\0\\r\\0\\0!1AQ±\\\"6Taqt‘’Ò2¡ÁÑ#BR“Us²$357CSbr‚”áğÂñdƒ£4ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0?\\0ÏÑZ(4Ò¾†\\n¸g£ls0=¡Ïv@=~*\\nº+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢¸x8¼yÍÎÿ\\0¥<^<æ‡çÒ‚Šáàâñç4?;ş”ğqxóšÿ\\0J\\nz+‡ƒ‹ÇœĞüïúSÁÅãÎh~wı()è®/sCó¿éO9¡ùßô §¢´Wè;¥õrÏFèáa{ƒ^ì:¼UW@DDD@DDD@DDD@DDD@DDD@[^—òjİìíìX¢Úô¿“Vïgob	TD@DDD@DDDAu¼ÓZ‹P‘­I°K\\Zydòâ¼v\\rI\\rÚ8#ÃPèö¥1°ì0õg­z¯Vqwkcš¢fÀÚ‡\\rî#\\\'Ü¼:gN:Ï2tòÆòÏßÀ´Ç?­M÷VÉj½2Û\\r¼ÔÈö´·`’ycæ“X»ö¼vë¶Z)¥-ñ¶¸ğÊ¯êæÎı}JÚWµ“‘cœ2ÉÂë¸\\nË&®¤¬¾ëİ&Kwc~2XA~½İb³[%­˜mlnks§r\\n/KêØµÓ@`ïy˜6ƒvö¶‚†î‡rŠJÊd’:8¶„³;àp¹óP°İmöíkm±ßä/Ã\\\\Ö0°\\0FÇÀ ÕÕ^ÿ\\0«d´^#·E@j_#Z[‰1’N1ÁYÁÈÊÎõgúÁ·úÄPM3X¾šµ”÷›\\\\ÔLÈ]´ßy^íM¨…†\\n–À*ÏÙ~9g<t‡ìózM—¥oG>œ{•{Rtßa,}>ÖŞ×ñqÆ? ¹İ/ÿ\\0³ôäWn÷ÛéGµŒmzpº\\\'Õ-+ï½s¶@è¶øoÇ(½Qş®©ä‡°/\\roú«§ÿ\\0™¿ã(-šrÿ\\0\\röŞê–³¡tnÄŒ.ÎÏ§*&ƒ\\\\2ºşËlTŸ»|…›oˆßŒzRGWØ¡…¿º»ÒÇ²2~ñ\\0zrÛm·‹^¿¢£|e›XşcOâƒSU°¸Ú†İ]‰ñÄ^Z×ºmÎüÁS;§¡i}£ÿ\\0‰Aï¶jZÊ¦ŠŠÛSé(z#!©t™ÆFì/,\\ZÊ®àù\\r¦É5T8Û/\\rŞ¤(©áªÑ4ôõtQIHÖ¹ÿ\\0Êâª±ÙõN™Šg[¥lÔÃÆ!˜ úvJm&£‚K4×\\nÈ$¤îØ‘’\\rûX‡_O«îÑ¾{}‚ié IÒœz0¼ô6k9YIZYK0s\\ZduÎ\\\'ÅüBŒï]W¥(Ş`{d¢Œä‡\\07’pw€‚ÜíMI‰·Z˜å…„–ˆœ<ràqŒ{”d:ºå=7}Ã§ç}/ “yo^0º±ë}0ÖHæQÔ‰ö[ü®ş ¨·Éªô¥#Ëe¢Œã~\\0Ü\\0ëİ÷ˆYhŠâègè¤\\r;-fÓšXJ2ß«©jêæ€˜™ö 0¸–a¾1êŞOÁz(j¦Ó°Í²Ğô‡èˆÎã‚ê+ÃhÒ\\\"ßY<ğM-)lßº1¿;qa»œ¤´DAª<š¸û;»(¶½QäÕÇÙİØ±DD@DDD@DDD@DDD@DDD@DDµé&­ŞÎŞÅŠ-¯Kù5növö •DDD@DDD@DDDAX¾i\\\']o\\r¹G^êiÖ†ì³8#r¾ ÑŒ’àÊË­ÂkƒãÆË^07u«R §ÓQ7PÏw©”NùgŠÏy~kçQéh/Œ€5í¦|D¶Æ	#©XE¦¢†	$éñ¬sPí$n÷v\\\\^êi#kCvYœsœåY‘V-\\Z&­eEÚå=Ã£Ák0ßzš»Ú)nöóEPÒ#ÜZY¸´¥ ˆ)ßa¤–©j¯5ÑÄrØvqÅLİ¬Ü,MµE\\\'{Äİ’ÖTÂ òÑPÇKCMLí™;Ş6°8·¨c*],Ù5So}ôA¢Øên8åNºxXâ×ËHä\\\\êåEM’z¸c`İ´ç„¥\\r©¬#PQÅNj›y\\rÚÎâ?5õ.§²E¤uÊœ†Œá®Ú>àíÎŸóÇEÿ\\0¢	!iŒØ¦YcèD%íÜHÆ2 İ£ë¦Šÿ\\0TÚWdÜ3»«9^¯·:Ïış‰öçOùã¿¢ÿ\\0Ñl:N†íL|¢9ùd‚ä¼èúÙ©ûÖ[ıSéxËx¬åz¾Üéÿ\\0<wô_ú\\\'Û?çş‹ÿ\\0D³iZ\\\'Ù ¶G$ĞÇúF½ñ¶·ï\\\'Ş£æÑµu‘²\\ZëõLôí ˜Ëqœ{Ô´\\Z¦É<BFÜ h<vOÀ®è¯ö‰¤lqÜiœ÷\\0$Ğzè©! £Š–»1DĞÖ…Ş¸##‚åEj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QwTj˜¬l4O]\\\'İ‹ùGYA3]]Ko§3ÖLÈcÜxúF³º\\0|’Gi·KS²7HìãPÂóĞék­úvVê\\Z—¶-¬ˆ9ã«Ú­m´¶‘´¶‘çÈ—ãÑéô”ƒpÖ·¸ADÚFìÿ\\0@÷‚y¯l:†ª¡Æíp¬…Á£eÑ5Òí|»‚¼>ŒÂàæÜ§ˆcmÍp?0+Kˆè.¡î;/{°è´eÜ÷×Õ\\\\ç‘ØÃ›Là}ù+°hË@sv#ºÌv‡ˆcÙÖH\\0|UÇ£¹yÅ/ô]õ\\\'Gróš_è;êA\\\\û!jvæY\\\'k%NïÃ‰ü³ìÜ.-h´Z¡‹ˆ2†Ú¥ûŞ¹ÿ\\0ç+C1Ã¡ˆúö²ºf¢¥§€K[Q<­Œo2HH\\\'Ôx>ËSù¥¯şĞıK‡ixCIm©äpi¦-Ï¿hãà½,u±ã,£¨#ÑÓf‰¯.Š+„Y\\0$\\0ûy¦İöj´ä gğ0JŞ è¥´éºÆæ\\n\\nBFâÓ¨ƒ¼.bªh,ï{ÈÃº:¦Ç—#ŸY\\\\T=’3jçBÿ\\0õÓ 7qÈñ‡şïA×.‰°Ë#h¶KpÙĞ=@å­ĞyéË)›%4¼]ñ©Xæ®£h8ı¡KÊHÏïZ7ñË†ÿ\\0B’ŠXæ`|nˆ(÷Æ¬šéµSm{ˆlœqéòWêjˆjéÙ=<’\\\'ŒµÍ;Šê¸ĞSÜ¨¤¥ªŒ>7ŒoäzÕNÖÏ¥o±Ü^ÓM+¶£“;<¨õ Ğ‘p¹Aª<š¸û;»(¶½QäÕÇÙİØ±DD@DDD@DDD@DDD@DDD@DDµé&­ŞÎŞÅŠ-¯Kù5növö •DDD@DDD@DDD@DDDAÃ\\ZO¡Pt%.W:û½f%’á»Cî“¿?’³j‹ÄV‹<òCg{Kbh;Ë1êâ£»P¾–Âg“h:©åø=\\\\Aj^\\nÚŠ“PÊJ Á#š^é_¼F8pÎó•ï^gG4ÓVHö³i€9ÎÀ\\07<ıè:aµÂ×ôµÕS<Ûñêí’İG!iu4yoÖà‚‰:ÖÀ;ûÿ\\0æïÑvA«ìUl6áN3™`ø”õ4Ô”õíØ.‘Å­–\\\'Ç¿š’…†(˜Â÷<´´î\\\'ÒW†ã4Á$od¬sã,sNA;CR(ÃušHé›šwˆ˜ìğÏî^åÓPØŒaódœh8£¤ŠŠœCpÑ¼“¼¸ó$ó+½RîZåÒU÷¥†ÖIşópQWJ½e®5sw¤,kFËp	ÉÇ½è4w±’7fFµÍêpÈQ³ÚŒotöÙŸK.	èÛƒÏ¥§òÂË¢Õ÷Øäkÿ\\0hHı“—\\0Aõ©zè—¦ûSÄHÎËvHğ‚ÏMDµ.lQ6‚êÂ	¥t¹vã\\\'†îg†ñ•î¤¨Ší³Û¤4Õq’É\\Zæîœ9ú×ÅÂÛª)Ä´ÏseùÃ$g¯ÔT¨£§mI©l-lÄ`¼ëëâƒêÒº:vJGŒĞrõª×t`¬²\\Z¸ÚzzC¶Fı¯¹Z—ÄŒl±º7€æ¸`ƒÌ ‰Òw1u°ÓÌ_µ+ÑË×´ÊÎm•Ñz–z:Àño©>#ùÇò+B‚xªalĞHÙ#pË^ÃPGj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QCê{Ó,v—Ôq™ş$Mİ÷ºıÊaQuÛQ¨l”óa{°æçwŞ<¶>k˜/º¡îiÃÙß²;\\0W*gÜ&ˆ=¬§¥aÿ\\07ØKƒygcÔ¼[\\\"ZqlL½íe)x$FÂàÖ¸7ñø(›¶ ‚ËptPËpº\\Z÷JIâáéáÀ ²JË»Úö2jHÌ¡>¿?šƒÕö½ŞßLÈ*#â¥Œx‚CÈÑxåÕšİ,Ú|±ââ×îSšTĞßEb¨\\rÚtNü4º}3¨ …±şÇ¢“gø¤s¿*\\n¦×s–GLm²FÄC@Ç/‚Øt¢e|t.©¾dÍ;È^Ä­÷Yb¯dÛ1´øğ8<wu«İ6¾¤«¸CMOEPæHCKÎ<RN8u.{¢QSêÌï†½ I©]-o¤¤³RÍONÈäšÑ½ÇĞLªtªª¶OGO¶ø¨¤i.,?xçx#Ğ;UıtVQÓ×Sº\\n¨›$n!Á6’ı¦´Õ½­·f¦w4m·Æw?Ë%v©Ôô³GQÑL6|vÖ	VKf´[¤|§éœ_´Ó/±è\\nx2—hZöÕ6™ÕÖñ;†DfS´G«ÕO¤µ–qQI-K‹H#s†=NğV=Y¦$¸HÛ•±Æ;ŒX#xá¿‘QÔZâ®İ/zê\\Z)öÿ\\0´cpO»Ÿ.<Z^Õzn¤eq¡4qg÷À–¸¿ÿ\\0p­r6å=D¿³*Œlkƒ\\\\j2vO†–õµ7t[[c&*d““KCsïÊ‹}ËW_ßÒ[àu%>p1†ç–òî>äJ›µ 0Op¥Š¥­Ş$xúñ•-\\\\uµèïÔbB|FÅ!ñ[Ô$º^×e¡5º–¢Z©exnc.Ü}|O¯Ğ¤ª´\\rª\\Z#,pÚkö‹‡` âë¦«kèó\\n–ÆK†Ì¤8ŸFÖFş­Şµh¹Vi\\Z–² º{\\\\Î#ÒÇ<÷Ì/~¹Viûñ°\\\\äE#¿u&s‚x{§‚°ŞmQTÍĞ¸†¼˜åinv^Hxôø¸A÷¨Š«IWOO#d‰ôÎ-sNâ0±•o§­©²Ñ]´íxv/0¢sê* €ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¶½/äÕ»ÙÛØ±Eµé&­ŞÎŞÄ¨ˆ€ˆ¸AÊ.do”D@DDD@DDGÖ£:¦Ä	Æ_Çş ¯\\n¥İ\\nÖ*­¾=ÓQœç­¤ÿ\\0ôƒßÒ5–ZPüEíW·†HõµªU´4}ökO|8ÒìŒ‘ëUÍ3_5U«¦lL¬Š_óñÇ€øßŒƒ¸ƒŒûÔµ\\r]\\r5ıï$¡´ì/tgn!Œã‚mú¢\\rgIhk#4óG´âFüàı?Šˆ­ĞKvš®’â)›#‹Û†¦È`…P¡»UE|‚ñRùe›‘Ãkqâ¸Ë`¥­§«¡edO³ohÒ‚Oèº[=S+%õ5M#\\r¬R“½j}–\\\'\\Z™šfÆ[N\\\\ïw/Zûe}MXs¨)‹vÌ³’ÀïHÉI½èÛ½mÖ®©ó2QÑô‚NnÇİ\\0pÿ\\0éÓ\\\"¿ë^…Õ8¦µ™	ËwdGÕ• RÓ²’–*x³ÑÄÀÆç¨*®„¿GUFË\\\\ûTÓ–°4¦~µoÈÎ23Ôƒ•~»şÅ¡=ë-F\\\\³/I^\\rMv¼P=‘Zí®¨fzPƒOV‚ª½k*ãšª†.Î\\rÃXsËqÜ‚B‹ºÕm‚²–j0îyÈ÷õJ±ÑÜaªtÍÚ®‰å»;`œr\\\'«*‘İºš«½­ñD]^×µÎÃ9Ÿ<yÊğÚJy!‰Õñ=Í`{#âƒÑÒÇşñŸó54é¡\\\\pÛhv>*\\\"ãW§h2ÊÃDÂwìwú\\0Ê…«îƒNÒ ´ÑKPá€İ­Ã8\\rè-Ÿ³è[ãw¥8ÆüômÜ¡o\\ZÒ×lqŠ\\\'wÜàà²#¸zÊ¨:«Pj;ĞµUÔ>¤ËÉhkqÕÄîW;.µÚv_Ñ÷Å@ÿ\\0i.üz‡\\0‚z~¢ÔTVÍNa·Á™[¼]ÃıçqV-/¬-óÛà¥­¨èjc`k)Ã]yà¾uõú*[cíôòQ1Øán2~<>)gÑvŠ‹%ª™ÒÊæmºXŞFÖwñ@Aãî‹ÑĞİiÇ;og¥fĞâ7û•¥ÏtŒ³½ç.sÁ\\\'¬ôNT­Oo‰÷‹^·BöÇò	8ñIÏ¨qWiCEÊŠ™®\\\":hİ+·pÀÙnO¨»à‚İ:8Ûx¥{@|>1ëÁÜ©jÕ¨fû¨ëê)š%‚š™Ùx;¼Vœ;âBª \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -¯Kù5növö,Qmz_É«w³·±ª\\\" /\\rïcö-gI+¡gBì½¼[¹{”V§òjãıÃ»Dw9i´ó„ÏsÄr–3k“p7+b®h$éæøŠ± \\\"\\\"\\\" \\\"\\\"\\\" /—±²1Ìxk†<ÂúDı²éÍm5§y¦ªË£ßÀo-=¡Yõcİ›¯–3³\\\'E³´üÁWµ”Lf°±JÖáï‘¡Ç¯í*Xù-_ıßæfªw]*i-áß¸i2HCq³ÖNş\\0>•ï³\\\\®ÖºšÁeÛ«¡‚B\\\\ÒÜ‚Üî8â7K§Fİi-gOXøË†ı’qÉY{šTÄhÃŸ¼H:±¼ ‘¶kÛ]LX®.£™¿x8	ôaNÓŞ-µ[\\nêw™ZÑ É÷qTYéiïıĞŸN)˜ÚxC›(go\\0äîç“ø)ªç¶‰\\ZŞ‚JˆòµŸŠA¥\\\"¸V:áj¬m5pv_‡`Gú¯ºÍq¢½ÓÜïwŠv¶,€L»ßÇÅå×•wÓb‹SRZig–Q8i.$ddœşZ#îuo5ÒÖTÊÀw´2‚z«QZ)`t²\\\\ -˜ğâ}ÁEÔëÛ$;™$³œ†nÏVõZ¸iÛ}&¶·ÛbcÍ4Í{\\\\ì’|n~à¯é«4]º´0rÜö §Ëª¦¸VºªÑ`TôxéœÂ÷7¡x­l¾jù¦‚{©‰‘gm‡qßÿ\\0ÆFîkLc ¥‹eÚ3†€ĞiG~§°êû…F#bFiÎáÏr%sûU3Ãê-Q8yÃ~Š›èmV\\n\\\'ÎØa¥†0ràİş®²¨—^èuÕ²İi˜F6ã;ô\\n\\\"Š†ı©°×ÔOÖKæyèÚ}û¹òA!K©©¬¥¼Õ¶ ×665¹$c\\0í¬ÔwÛøsmĞš*-ûSÀo%ü·u/.—ÓÑ[=oG;(ÚKšFçñ*[WÜä«¨MY£ñÜ@“£ \\0?—wÖ‚½£ìfõy/¨ZXÔ®\\\'sÏ!Örµ˜¢d16(˜Æ5 nxlV˜lÖÈ©\\\"Ş@ËİÍÎ<TŠ›¤sš–Ì&¥¤†0|= ¿yŞ<:½ê§}¿R÷¼Ö»)–²¶¬ìK9.åÙÔ¥µ¥ùÔ†+eBjùˆ,81òæê]ÚOK²Ï}Õâ[„›Üã¿c<‡§ÒƒÌÛ#lšº\\\'±¢¥ôîtÎxáŸBË–×ª<š¸û;»(€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¶½/äÕ»ÙÛØ±Eµé&­ŞÎŞÄ¨ª×½on d°Ò?¾jš0ĞÑâ‡pŞU>E«*ËÍ<•â8ÇàƒYQ:©ífš¸¸4\\\\O3ÁUà¨×tÜiÛRËÃ<_Fâf Ô—z«3í÷Ko@é3.Éh8vwú ·h$éæøŠ±ª’ÔVg¤¢ï˜á8Ã\\\\×œœo9à­Ms\\\\ĞZA˜Aôˆˆˆ€ˆˆ\\n«¯¯V«\\\\L¤vÃêX^8´ÉZ”eşÓâÙ-<ÍA¤Æşlw\\\"‚;Fßàº[b§|î}l,Äû‹½#­YcÜîÔÚ‹³«M@ké	ÎF3®+NAHÖUiÿ\\0ïGøÚ§µs&—¯k\\Z\\\\z>\\0g˜P:ÓÊ­?ıèÿ\\0UÊ¦ÔSKó³#:ˆÂr×9§-$zŠ–uºfšË[£µ4Ï2eÛ‹ÀÀ\\\'Ñ½v>ÍÚa—ZG<Éú:ˆÉÎ:èä‚5—\\nØæ|ÑÕÎÙ^0ç‰.õ•!«¾Á—v[Ãh‰^˜4…Ue¡—**˜eˆ°¹í9iaG<¯=“LW_ ’Z7Áˆİ²à÷GàƒÄë½{®bâê‡\\Z°r%ÀÏpáÁ{şØßÿ\\0´Ÿò7ô]½=_ct}ø#Ù“î¹È?š±EÜâi¢dŒ¹ÂZö‡#\\\'óAXšùrã|µNuTC“dd\\rşŒs+ÙöÆÿ\\0ı¢ÿ\\0‘¿¢°Üt%²ÇWW%L³O;C\\rRº\\\"Ín“OÓUÉG“È÷·k>1ëAB‚–õ~¨&6ÔÕ<\\rîs·ë;‚ï¸éŠ«Tô1W>0jäØÄg;##õ[Z\\Z0Ğ\\0ô*¾½µ\\ZÛG~Ä÷6z,ÈÜnİŸ~ä´º\\ZÉM+$è)o)H\\\'Ô¬,‘·ekÇ\\0aV¬š¦—ìÄ5·\\Z–‰X8¹Îdî>õQ|½êÊ‡QÚ\\\"u5 w(88Ï ƒÇ¨§ï}Tétõl«©Ëelc8wgŸä­šSL2Ï}U–á(ËŞwìgıW~œÒôv8šü	ªğv¦#¯ê\\ny|M+ …òÈàÖ08A}\\Z	\\\'\\0q%gú‡PË¨*â²Y^í‰]³3ñÇøy çJ0ßµmeêXÉ‚#û­®G–=ÛıZ±Z!²Ûc£„íc{ŞF÷;™R(\\\"µG“WgwbÅ×ª<š¸û;»(€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€¯Z…ÇM[¬–­¹+e…yŒıÍÜ=}Š¯ıËé¡w~Ô:6™˜ZÖ¸ñ\\0ç(\\\'´î”¡¶QDêŠxæ¬ ½à;dõR±\\0\\0åtVUÁCJúš™q0d¸¬¾ùtºê©¤4PLhc;\\\"6pëË¾\\nsRÓİõñ–¦SI/Ò–î?ñgßÁ\\\\è¨à ¤š6²67\\0\\0‚¦¬ÖMGi:3M]\\0Ùyc÷»ş,è~”Ôg,·7HÁ“Ñ—cğ;‰_\\Z†–m+¨b½Q5İë;¿|ÆNòßQâ¯t5Q×QCU!“0=¹ã‚‚›n×3RÏŞš‚‘ğH7\\ZÒ>#ôW\\Z:ÚjøDÔ“²hÏ6®»®ŠçE[NÉ[È‘¼zŠ¤İ4Õ~š{îv\\Z—t1´ºF<Œù„\\Z(5zmöÔÊ ĞÉØ‘£“‚–@DDÂåg“¹ÚO\\\\œâ(k²\\\\IÜ2wüàV‚×5íak†APZÎÔn¶[AšŞ3vIÇºô5ÔÜì,l™éiDã×»ğA¬¥cõ…Š&»/d.@¼c°«Ò¢´I_İEÛE RG»w³Û—+¤óˆ] •û·ù «k\\r\\\"ë´¦¾…ÁµMfÂ7Iõ_£¾Oi¶ÉCr°SÏ‘,‚2ÂıŞ‘Œ­µõ1Óô”±¶G´‚XN6‡0Zâš¢ãK¶À²×5Ãx<Áh3¨é-\\r¨§®™í‚GƒvK¶zÎRÁx£±jª˜¢ª[g\\\'÷›ğ9ƒù+åFŸ´TÅÑËn§ÙÎ|VlŸˆQUzkL·nQ>74m‘ê;Â&¾¸[ªtédU4óLdi`cƒˆëáÃr’Ó7ªéê.’ª^Èƒ+A;¿%öKMù¿+ş•Ôt~Ÿ/qV€xû¸Ãëø šÔ×;|ºz¶&WÓÉk@”Ÿr‡ÒZšÛnÓQÃ[RÆIv#nKˆÎxu£t~ŸtÍÙ’³ï‚\\ZèİŒupSÍÒ688[£È9sæ‚.«ºª8óKóÈwlìì¨×_u6¡&–‚´‘½€¹îç“Èú•ÂJK=¿É>ÉÈyc[ƒè\\\\„Óò\\Z\\\'½¸8’_İ·ÇğAU´w;dnl—J\\0Eáy*ÏM\\0e²#˜vz(x3÷ŸëÏRæ‹.5¯•øÈ¤¤Ú½8Şx$ÚÁ4Td¦˜}Ó¸¸zùŸZ*Ë[%Ò±ĞíãfšÇ$ƒÀã;—×WYQĞ™êeı›onâ÷o”ïëÆwõ•	rÔö»<²Cm‰ÕÕîñLÅÛ[÷?PÜ¼T\\ZZó¨*¯µ²Ç¼aòğo\\0ƒª®ó_¨åÉe6 µò½ûEíëqêíÊºXlv:VÇ\\Zé±ãÌGŒãúz¦Ûj¢µCÑQS²!Ì.õ•í@DDZ£É«³»±b‹kÕM\\\\}İ‹@DDD@DDD@DDD@DDD@DDD@VÍ);¬:‚Lç6\\nø¼ãk‡ã¹TÖ£‚ı¤-Ä²¢*vôRg#šrågÛz¿N=Àµ×\\Z`Fó—ú7s¡Ğ%‚RË•x22Ğ	É÷^QT©; Ú&qlìœä¶Üçà§i¯vº¦Ã_Næƒó€v öËsFèåc^Ç¸dôÖ†´5 \\07\\09/–HÉÇµÍ;Á ¯¬°ƒ•òö‡±ÌwÎGXP:SRZmÒ:)ã’©À¶&4‡aİgĞ@hg\\Z-IsµÃ0–•»N@üğ}JüªZ\\nÕQKG=Æ¬‘5iÚØ-Á\\\'¿*Ú€ˆˆˆƒ‚20UJDmzŞçmg¡-.Àå¼¹Êú¨\\Zƒnè7Ö¶)ñ´v¸ÿ\\0	\\\'â>=Ïõ¡qşäö1[«iU%1IÃØğ3‚:ÇV	T½cI=šùM¨¨Û–m0Ï>ˆÜ®vÚø.T1US¼9’7;pzŠ<w))Ë\\\"ºF!yÜ&÷O>¾^¢»\\\'¶SÍ7|D_O9ã,\\\'Ş¾GŞ½rFÉXY#Zö¸`µÃ ¯mŒŒMsÖNö´z€8ŠåÈNĞÜfFõî_Nı¦ZCE v7\\\\qø.?eÓÿ\\0=OıÌŸR~Ë§şzŸû™>¤~Ö-xcèšâÉ!Ç¯ÒºŞÛ¬p—Ép£n\\Z2L$4ÅÃ‚ïmŞ	.¦d®qÉt¾;½Ù+î;eo¸p\\\"1‚5õÕMa-¹ÒÊ@\\\'Ó:N{¾é<—:›¼îsf‚àK†ó&³ÅáãdûóÍY\\\\è a{‹#`ŞIÀ\\n6]Kf‹¥Ú¸ÀL_xgáÖƒ¦’ÛTÖt¢’\\n—´‘Î™ã—èô¯ªúX!¤º]ê[~÷ïaÛ½>ìªõ~¼šªcKa£tò8á²9¤õÅ|QèÛ•ŞaW¨«_¿DÓ“êêø ø«Õ 8Pij\\0ç;sŸÑıíØÈ´ªıê’ô+há½Ï!5låÙ\\rÉÁôej–ëU\\r®.Š™‘d\\rçÖTt;{j¬]ôĞã-+ƒ›²3¸î?¯¹•—LÛl¹u4[rŸö’opİË©L¨=)y§ºZiØ*•QÆÍ;œáN \\\"\\\"\\\" ŠÕM\\\\}İ‹[^¨òjãìîìX¢\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"Úô¿“VïîØ±Eµé&­ŞÎŞÄ«åÌc\\\\Ğ}a}\\\"êë²àßTP¼»vÎ»Ò7¬÷Uéê[eú*x¤m-VŞàsƒVBÔÕ\\\'ºúBÇıùíj{1 İê@\\0ù\\\\ø>oöÅWÃÿ\\0*êˆ)^›ı±Uğÿ\\0ÊõÛ´ªXæÒUHÃŸŞcdúÂµ\\\"\\ZĞÖ†´\\0\\0À’åUµFªš×XË}¾”ÔV=»[Á PãÀ¯­#©ßz3SV±‘VÄIØh#-÷õ­©î°jVÜ( Ÿce‰»X8 ğá¸®;ŸQ¶ásšéSW#êávö.c$ü~4eNî•h¦©ihè&<«Š†ÕÔ¬«ÓU¬ycvY¶×?€#şzi„7{$=òÆKD-/há¼oTú;yÓUF®Á3ç§âøóŒççëâ¤ôâš{-=çˆUG´Z9«j\\nm\\\'t\\nQ!†éG5­ã»h­Ü0ÍYb{\\ZïÚP·hgÈ!{ëm”5ãü®–)íQQc,`ßßªÿ\\0µ6?í8>+¦§XØ©Úk›&N1.!qö2Áæ\\rùİú¯¸´…Š[#mì%¼6‰pø‚£º$/”Em·MRòâ\\0\\\'C¬’ºYrÖW‰v¨é…@œ°qÚßø+µ5-#6)©â…¹ÎĞ7®ô&h»ÅÇdŞ.î-ÁË\\Zâò?%ÛvĞvÚkMLÔ½ğúˆã.`/${•áDê‰L:n½í~ÃºÎ7 ŠîuŞïÓ­tpµ²²G2GàeÛò7úŠµªÏsè—…íÎf{Şìõç’³ .`Œ…Ê  ê›¬‹õšNƒ£péc\\\' äãàs¼+•¢±×U-[Úé£-²¼\\ZÆ˜Uizæì³¤Ü?”ç‚óè:¾úÓáÒ>c#ùpw†XÑEj&®>ÎîÅŠ-¯Ty5qöwv,Qmz_É«w³·±b‹kÒşM[½½ˆ%QR{ ¤lßÖ«²¢êæ¾³YYèL›1îxİÀíÿ\\0„ ½\\\"\\\"\\\" \\\"\\\"\\\" áPlOè\\n\\\'È[Q%¹n6‰;C´…Tèt.‹½/í\\\"XÜİÇAø »ª&®5W}SI`ô4Ò4<àq;Îş¾•ÆÙZËº®=Í™ØêUıQ§«*î÷[D»Ña¾3°6wğİéA\\\\İ.ˆÔWô=õBâZ×‘½™ì=«I§™•ñÍv$hssÔVa©âÔb\\røô”mx%ÑîøczĞ,w*\\nût†A°\\Z#\\\'Æn7`„hˆ€ˆˆ‹¢²²†ÓÕJØãhÉ.(;‰\\r¸€òJÏu¦­£­¤–ÙG¨k1$yu¯ªúû†³¸\\n+_I±‡Ç˜‚6½¢Ô6ÊHg¥Óöš3%kHt³ã{;9õ ¿i¨D\\Zz‚>Œô-%¸Æò7©5ñK!cOĞ\\nû@DDºîO\\\\Ç¸@âå¹E÷>ŒÒ°9­Ï{ËˆNÑ\\nfñOßvŠºrí’7=[•{¹´Ï“O¾7»-ŠbÖpÚJr\\\" \\\"\\\"­QäÕÇÙİØ±Eµê&®>ÎîÅŠ \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" \\\"\\\"\\\" -¯Kù5növö,Qmz_É«w³·±ª\\\" áQë\\ZúÎéôñ½øm<aÍİÈ4œ|J¼*=’3Sİ\\Zç4¯qu8pfş[†^(ˆˆ€ˆˆˆ€¼wj\\\\í•rnl¬#=G‘ø¯b £h„”ÓÕXk<Y`qt`ú÷Í^U^[_CUO¡nÄ±¼t¥£‰äOb·Zn0İmÑUÀàZñ¼á<ÂT±G<nV5ìpÁk†AT»¦ˆš£¿´ıK¡Ÿh‚àĞ3É¤p\\nîˆ(#Tê$mòƒ¤„’:F·ÜFå!OİÑ$›2ÇSq÷œÀGàJ¶9xÃÚ:ˆÊòUZmÕ…¦¦†RŞqƒ„ÿ\\0nìu\\\'ô]ú.¹õı’8Ë£|Ó;ùñÂ•û9eşË¤ş_LÓöxŞ×²ÙH×4äÜPTäÖ7««Œv;cƒwâG7hş€ú7®bÒ7›Ìì—P×ˆ8‰ÉêäíŒkĞÑÔÒ5--ŞæRÂ#Š&—´qÀãëÜª\\Z1“]õmúV½±¶<»<y{‚µj*‡RØ+§`Í…Ø‡R‰îw¡Ó,{ˆ\\\"Yñ\\\\¿$…FÖwZŠÛ5Ö÷‰¶Ã¥s3¸òº¸•1«ul”‚(Zd¬¨DÑËÒ¼š+N¾‚\\\'\\\\n&¾l\\\\rXÓù”˜Álmk\\\\\\0õ•öˆƒª§ë.xlãÔ©}Ì]/zW´g½„ƒ£$c\\\'ÿ\\0\\r•tª¥˜pËR¦w1Ÿü’¾“\\0ôR‡mr1ÿ\\0ÅáV¨òjãìîìX¢ÚõG“WgwbÅ×¥üš·{;{(¶½/äÕ»ÙÛØ‚UFºJİWy®ØÙŒ’Ò3œ¯ü+EL±™*&dL$½ØÜ²Û6¢šËp¹2ŠÖ÷ÃÉanx‚pqÌoA¬\\\"¢GU®kšù\\\"‚(ã¹®\\ri¬ï\\\\ıÕÕÛ3ŞƒvÛ‡0¼îôdwÈÈÆd{X:Üp¼5ÛU4¦9îñ¼oÁ*Àî|ù¶eâyX\\\\ÜvdşKİKÜşË×J\\\'¨Ï‘øÇÃ%~ÒÙ?µ)¨§XX©œ\\Zêö?#9ŒÁtı‡°y›¿ªïÕvG£,1íâ„¦ìøÏ\\\'¬Å…êÛ\\\\	¦­‚L\\0H^åP­îyl˜—RM53·`´Ññßø¨Ù­Ú§M±“ÓV:¶7b»wYòA¡\\\"„ÓzšûHÒ#©né\\\"\\\'x=c¬)´U4ñÕSIO3v£‘¥®‚¨Ú2i,ÚŠ¶Á;Ái%Ñäñ#~ïXßîWåI×öÆ@Èï”óº\\n¸œÖîş.¯QAvEŸSë\\rE=8t†È#ŒXíş•)e×T•ÓÇI[©*\\\\vIwÜÚêô ¶¢ár€ˆˆˆ‚­İ·½´ñ…®p}KÃ:¸œú7/ªZÊ}-£©MQ-“¢ËcwŞ/;ñYPİÒf:ë[œÖÈ#.s£Ï–î>µóf´Vê«‹.×vìĞ´şêàÈÕÚƒ·JY¦½ÖıäºB]˜cpÀ8à}C’¾¯–µ¬hk\\0k@À’ú@DD[”ì¦¶ÔÍ)Ã‰8ô*Çs6bÅ;‹qµ9ß#Hk{ƒh4äáÌ/5¡n9õÙ¢é&¢Ó4±T3bOÛ\\\'¨’B	ÔD@DDZ£É«³»±b‹kÕM\\\\}İ‹@DDD@DDD@DDD@DDD@DDD@[^—òjİìíìX¢Úô¿“Vïgob	UOÔº¢¡•Í´XÛÒÖ¹Û/xØôO§’¸,ÎáQ6œ×ï¨\\\'÷U8¸`8ïßèëô ¥Ğµ•äO}¹Hçœ“Ñôß\\0¾{œQÃuÑàeğ¸FÇ¬ŸĞ+ã×°9¤‘G5×OIOLd0BÈÌ®Úykq´zÊäDAÂå¬ÔÀ*E9•1nĞ>1x^kŞ†ÕI[PÈú›œ¸ú‚\\n–´ÓñĞ‰/ÖùİMQš\\\\Ğp/¨©=©Ûy§m$âNü…™{Èñ_éÏZªŞ«+õDu5ÏÚ¥µR7,xòõ’~\\nËÜâÑiã+zYIhÙÆ\\0ôóAmU^èŞLŸï™ù«R†ÕV™/69ia L{8H;è#|Úrš8¤1=ôk^?„–ñYm¾ß-n¢ÍU7İ¨xt€däg;ı8V[Fµe¢ömÚsQJz,Çƒ:òTLT7mMq©½[¢™Ñ¸ğvI>ƒÌõ”\\Z \\0u.U-kuµ¹±_-å—´l<z”Ì:êÅ$M{ê:3‘ğAeE^ûo`óÓı7~Šá®j+\\\'4šzóHN®n~õAt¨©‚–#-D¬Š6ñsÎ\\0TûÆµ’ZğÓĞš™É#¤\\rÚôkÍ’¼Şê:}CZæ3;¢c²}Ü‡%uı¢¬Ï’ßNÁQ+¶cÛ%ÄœqÏPAI°[ªµ¢òâò×t“ºAÀğ>¾`cZÆ1¡­hÀ€U=g©¡¦¨¬¬­’«aç³ÇWn@DDDAKî›+?dÒÁ¿¤|ÛMh@=¡[¨ÁpÇ£ob¦jæ\\Z½gf£{Ü\\\"8v#´wş^rˆˆˆ‚+Ty5qöwv,Qmz£É«³»±bˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆkÒşM[½½‹[^—òjİìíìA*¨\\Z¾;†¶¶ÒM÷&ˆ4ü\\\\¯ê“ÿ\\0X¶ùkxš—G\\r™\\Z+-Ìàx´ÑÅ\\\\,ú†İxˆ:šv‰1ãFíÎjû¿Ü!µÙçª¨‡¦Œ\\0ÓógvnMl¼RÃp¶É%¦cdk@Ë[ü?B‚ìŠ‹.Š¼FÍº}A+ä\\\\ÑñÉì_fÇ¬ˆ ŞãÁÿ\\0ˆı(.Ëã§‡ıë>`©1è{«¢. ™®#ÆhÚ#ã´»\\\"îo@#h–¶¡ÒcÆ-Àú°‚zé©­v¹cŠ¢¥¥ïp,ñ¶GYêªá«ì´0‡šÆNOBv‰ı.é¥è­ºšÙ@×Ë,5$míœ8ä®ú*ÅO3em!qo\\0÷—ABÊªW=ÊİLéf“-…Ë‹20şïVKNåPû¤{İ4‡\\\"î^œvÅ¹¿³û¦TÃĞ†¶¢3°€\\0À9Çı*ö‚TĞ¤*éhâkY`µÜ\\0ø¸Ğõ=ó¥©<]1ñãƒÅHß¿ĞUşÎÿ\\0ğ•ÜóÉh¿¼j:\\\" éu5;Ü\\\\ø#sX	+±Œlm\\rcCZ8\\00Ò ø’6Jİ™×·©Ã!F}™²“l¦ÏüŠYDı™²eÓ|‹ÛEo£ ae4P4œÆázU~ı«­ÖWº=Hÿ\\0dÎ^³ÉÅmm=;§«™‘FßâqÂ RÅW®/¢®pÖÛi_€Î±Õé\\\'×}\\r’ã«+p½ºX(òP\\rÙ°:±Í]­¶úk])i±3œş”\\0\\0\\rÀ.QQkÚúŞéÔ±9à6ÍİÈp¯*né+{¦ÕÍ††Ò°´úF0;UåV¨òjãìîìX¢ÚõG“WgwbÅ×¥üš·{;{(­\\ZòéAC$0Qº8XÒæ;$¿°¨ºĞ>“UYkcxÚsƒ\\0Ç8}J\\\'Â=ãÍ¨~GıJ*óª+¯3ÒÍQ;Jâætm#~Aß’zhúŞõ\\ZZ±¬ !ÏP9+ëFT:§KÑ9À\\r–t{ºšqù*v»ºWĞMG4‚9˜XâÖ8¯uZ5¥ÆÑoŠ\\nWGpdc‰ŞsÉÁº‹/ğxój‘ÿ\\0RxG¼yµÈÿ\\0© ‹/ğxój‘ÿ\\0RxG¼yµÈÿ\\0©Ö¨òæÅîÿ\\0»,bç©ëîw\\Zjé[SS}Î‰¤9ß’T¿„{Ç›Püú\\\\e°ÌıcäLÁ\\\"Ù,Çœù©õ—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒ@¿ «ıÿ\\0á*#¹ç’ÑxşÕM¸ë«Æ†ZI ¤lr·eÆ6¼Òø´ëJûEi))hÄM$øÍy$?Äƒ\\\\E—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒPE—øG¼yµÈÿ\\0©<#Ş<Ú‡äÔƒP\\\\\\Z	<Ì<#Ş<Ú‡äÔ¼wMov¹Ñº•âıÎ0µÀ‘Õ’J\\rn¹©­lÔ–{|ÆrâÆI÷±éÇZÓ\\ZF*(ûòèÆÔWÈvßŒúŸJ¤Y5eeŠ•ÔôtÔ„9ÛN|qs§R^ïmCò?êA§Ãr²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj²ÿ\\0÷6¡ùõ\\\'„{Ç›Püúj®iP¾CÁ.ø,ÏÂ=ãÍ¨~GıKÏ_¯.•ô3RKc™…,c\\0õxÈ\\\'»Äjª®wWµÙ–M†¸»<w‘Ø¯K²êúë%zRSRm=.q=xpRïmCò?êA¨\\\"Ëü#Ş<Ú‡äÔïmCò?êA¨\\\"Ëü#Ş<Ú‡äÔïmCò?êA{ÕM\\\\}İ‹VŠıyt¯¡’h(ÛÌ,qkWŒªèˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆƒÿÙ','image/jpeg'),(2,'ÿØÿà\\0JFIF\\0\\0`\\0`\\0\\0ÿá²Exif\\0\\0MM\\0*\\0\\0\\0\\0‡i\\0\\0\\0\\0\\0\\02ê\\0\\0\\0\\0\\0\\0&\\0\\0\\0\\0ê\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0€\\0\\0\\0\\0\\0\\0”’‘\\0\\0\\0\\000\\0\\0’’\\0\\0\\0\\000\\0\\0ê\\0\\0\\0\\0\\0t\\0\\0\\0\\0ê\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\02014:05:17 15:09:08\\02014:05:17 15:09:08\\0\\0\\0ÿş\\0*\\0ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿá\\n}http://ns.adobe.com/xap/1.0/\\0<?xpacket begin=\\\'ï»¿\\\' id=\\\'W5M0MpCehiHzreSzNTczkc9d\\\'?>\\r\\n<x:xmpmeta xmlns:x=\\\"adobe:ns:meta/\\\"><rdf:RDF xmlns:rdf=\\\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\\\"><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:xmp=\\\"http://ns.adobe.com/xap/1.0/\\\"><xmp:CreateDate>2014-05-17T15:09:08</xmp:CreateDate></rdf:Description><rdf:Description rdf:about=\\\"uuid:faf5bdd5-ba3d-11da-ad31-d33d75182f1b\\\" xmlns:MicrosoftPhoto=\\\"http://ns.microsoft.com/photo/1.0/\\\"><MicrosoftPhoto:DateAcquired>2014-05-20T09:09:40</MicrosoftPhoto:DateAcquired></rdf:Description></rdf:RDF></x:xmpmeta>\\r\\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                                                                                                    \\n                            <?xpacket end=\\\'w\\\'?>ÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0Ğ¿\\0\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0öÂ3– b b b b b b b b b b b b b b h\\0\\0\\0b b iqc$D$D$D$D$˜! 1Œ@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@Ä@ÄÔ\\0\\0\\0\\0\\0h\\0\\0Ä@ÄÀ\\0\\0\\0\\0\\0\\0\\0\\0ÄC0C0C0C0C0C0C0C0C0C0C0C0L\\0\\0¹ºŸ?Jé|İÖX\\\'`\\0&\\\"!‚`\\0\\0&\\0\\0\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0( üË]NW¼_CÑó;ïCæ=n¤Ä\\\\0\\0\\0\\0\\0\\0\\0À\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0âù\\\"ñwóZVdœ½Ióî=‡wƒ­:‹&»–À\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0N…»7Ÿókì|¿*²tÊ\\nÜË(gFŒ¬ÓÖóógèı?”u¢î!4\\0\\0\\0\\0\\0@Ó\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\05³ÎàMjãÊ«\\\\$$ˆ&‰Î¹uê6DfI:ßç~¶½AMÈÄĞ\\0\\0\\00L\\0\\0\\0\\0@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ó”qºX&¼÷;VØÂUí&E„G\\ZS„‚o£{,ıÔùß;Úb/ Ì{_Có{f÷ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0Ú\\\"KÊúoŸ7‚¹<³.ŞúòñÓ¢¹‡KL#%ë+Ï{æÑ®2ió–Ç3‡¾wjíçYÓr\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0Lëç/\\\'Ìú??7–Ç°õø½g7¡ÊL÷9¹!UÎ§*UèèâJ:´óÂÅP·O4aÛùïm=vşOT`™b`\\0\\0\\0\\0\\0 `(\\0\\0‰€\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0	ÔWƒ©àñ{öMpº:SÉÑÈ)ªpDÅBN†”³Dâ%¡Y1bš©[·ÕüÃÔ§®y´$Àe‰€\\0\\0<ˆV…Œ*ÙS=É\\0\\0\\0\\0\\0\\0-`H\\0&˜\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0†\\n3Ez\\\"ÑÂïx‰xùm¥Tm±s.®Èóöú/N¼ÅºyP¬9PN±ÈgN¾}¤òlº¹Zud¯Yé>wíN´cEÆƒ›ŒïR“Ù/$öPó2=Käõ¹é‰Ü¡©b¤¹Ô•wV[%Û\\0\\ZŒ\\0AN’çŠK¬ÏacˆHB\\r0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0`\\\\^+M8ŞúDW~<KÕËÏ\\rÆË*•©`¦ªµdR\\ne°s‘Z¶=¸woƒÒ=­ĞÀ6Í*÷YÖk£Xp»œ~Ï-!šÂ\\Z‚2\\\\÷L[@ôs\\Zv\\0ZP™-0Ò—5ÎÁ8Ö—™±ã™¨¤.**Ò2!\\\"-˜\\0\\0\\0óŸÃÍsº&n\\\\¹DŒ‚äN#”-[#!¬ò±B&Ö²Ä°rFÁ\\\"­iŸJ+Üõ¼O¯¸Ò\\\'p@ÊLZá>TÁ5€šç¸ÒÁğ†h\\0\\0EÍŞJ^÷KÄu%õÑ#(Èh\\\\àA]#\\\"Ù$®ŠÆJ1j¬W*ZÙ,ğ­ÓcÆÓeT²_»Ê—\\\'+VX…3†Àd,”U+Ò‘&£# Á\\rˆ)$‰û?Ù×?i(Ë\\\\À(\\0\\0# É\\0	¬„Î[ƒRÔ˜ò\\0\\0Pš1ù/Yãñ£¹Áô’èß\\\\ÑK=\\\'@Ã®¤Æ$ÁÆH`ÈÂÔg«eóÖ(ÇJ\\\\®ÖÔµ]SÍl¶¨¸‡¿Á³‹šúÆQÒSsˆ;T±$¦‡	JĞ”…bd &ŒMe¢‹n=ÎŞw|ä\\\'r\\0\\0€(LÅ@¹ê2Œé´wÃ\\0\\0¡0Åå½_£¥Ğ•kS1aëã(ëqzµmvÔ;±¦`‡y´dšãh¢™z½LÚu%“]ry³¢Ü8«Øó‹Î®uƒ&NÈİ5¢+h„W!ªRŠ B$&114Æ\\n,º›µŸ­ò>¦òÔâõ€ˆ\\0 Hk\\ZRL`ı\\0\\0 L*ævç²úºòò›+^ª¿\\\"O7ÖÏÇ‹î„…{çà¤÷W‡õÆ¸ÖÒxuãšååÕ†]½ï!§SÖeÉBG-°–¿EÊéG+Înæ5E{3Ù\\\\Óeµè›df©…°)\\\'I«R’  ¤1¥	D¯Í¢ç¥ê|Ÿ®×+¥\\\\õ–Á¹«Ô\\0!¬fjcVl€\\0\\0Q9aº[ÁVo+ê|‚íèFƒ¿W\\nÃ§nKVú¥bcÍØ‘À¯Ó3Ê¯Z“ÇG×s[ó±ßLBÜ]«)®Ù”èÏ¢\\\'§$eáQ§,İ¸ï‚g‘bl¾«¦£jj1šŠár*VÆªS(ªdI \\0dd¦†Š-:~»Êúİñr—aŠ<­zß­K›Ò§r ÈAŠ4ô`t€\\0\\0W8ËÈÎ£f{şCÖy3Ğsú¼ÍLôëÉLĞ&u¢%EYºá\\Z¬çu+æÆ[b«]}ŞhË\\\'³N[\\\"®N¾Fzer%(ÚÄ,S5[	‚¢\\n,*€éŒl®» IÔ(H±ÉÅ©¾»şŸÎú=ñ´¯Êßäe…!_Iìñ{Yƒ\\raš“\\\\ë”e°He(Y\\\\°ƒ7T©‘›Ìú:—‡×ájtqìÇ¦§8ÈH)ÄŠiAÖ•×(©M´ÆŞ¯3«-\\né.YG,gçkÇ:Ô æíÙ‡s,°-²ç+ŒTLeµÕ4*]°•mnQcpUb‚,·5©ê}_ˆö»ä¼íJ\\\\ùíÎF(Ö}_·ùWÑ²ér†²\\0ÅROP \\0(®p–¸Ìç¼‹9ü.×»ş»ÁÖz9¯Í©¥ÖÖs¨IÅD‘²®İ¶s*¶™V¸cÑt3ê–üºp®~nî\\\\G&ÜYëÙFhèàé‰¹S¦úŒ°Ñ	(£Tz«Ö(²½\\ZÍoFx”¡dÔ¤Ü°‚§Y¹çšiÑ‹Yì6câYéŠ³Ê½e¤k;=·‡ô¾üÁ)6‘’\\0`4ô\\0Ø\\0\\0µBpÅ„lk%×•ƒ‰ëj³™Çõ|\\Z§6¬¶Z¤Ğq$@IÛŸt»9İlyß+q“U:®qs{x£Îsú|µ¶ìõË\\nëš§£‹q `…‘ª¡d\\n¨ÕŸ,Ğ¾Í½%s••T¦¦›fË·6±^Üº5šú8ôÇo‡\\n”¦TY¢óM3Fš/ÎºÒ\\\'7¿ÓøK3è\\Znc\\n\\0Ğ€-P²œ¨q»6²sZëŒ‡çıÓ>mY’Ø¨ÓiŠ‰5\\0Ÿ¦à÷yë›¥Êç×=±Vz^¿™ôä¹SãÛŸ¼sNq&³ÂÈM;³5èÊ$\\\"×UÎp²¼¡•Dæª)ÔXBhÜˆª­j¹æØ¢×]ÛÇ,¿=UTáqËlÕ×äúzìUÔ¯Ÿ_=~ìW>¡§®-§¨@”¸ë‚kÓw¾w¾=ä³èŒå”Tø¾-e…M&£eV\\\\¬%Y-v-rõñÙ.š8£1Â{p/F¼U\\\\*Şj®»Hª»IªãxÁÄÜ]¤% ãd+HRUVê¾®”Dœ âPvES¦òNyzsÍA^á3$‰4mö¾;è|÷~.‡+ŸYèÍÓ->q§¬€PGÌz~fuæ0{n{ùgÓæÜ{.ïô,Ó	É3yŸ[š¼;ö|4Ãªºt¹Õé=g¤®#Ìõ_>ú´ã{ò.B×^Z&ôg¨fÔ€mcˆ‘n\\\':ìV	¢.Š€«pF¢ÈÕ5U­Läàš¬Ëdijâû2è¼ÍÜ¾˜ÌX·’\\0ƒ”R*,ê{O#ŞçîôœÈÛ‹™äÈïëvxÿ\\0A¿\\\'H„ï¨\\0,ú!7Æçu°qôåÏ³UÎ¾–;÷Ä9ö¥ñ½†K2WV1‘8Y­Uä+ÛSó~¤¾Ÿ›‚ûiÍU@¹Qa©Ä¡À8	¨–(…¶ÑlÔĞ•AÖ(8\\\"­¡!R\\0ë5BÖ”ZÙ\\\"6Ëc*»»—®drH«”hOGµ>x²‚n°nZ2ÍË±ßñ¾—_3¢Å¿„¤—‹Çôo—ªƒËw£ÑA-q„nw\\\"¦5v¼}ÎÖ6C¯O&³W=C6vP—¼²Ïl…qÊÈ×*••H×D°©“ˆ„Dˆ[m–ä’ªå	ÄŒ\\\\iBPF¡KJéç™26ÛñÌ¨ÍšqÖ–B‰\\Zb‘í‚ÇÔç>‹kš·ÖÖ(éÍŸL»|Î¼¾§¿Œ5L·CŸÌwéò±Óc(%ìô¼Å½<Ş²^R_AÇägß;²:4pJˆ†UÂÈr£nİõsì\\\"9Ûœ&D4B»Fá\\\"DP¢%‘/tÌ¼­Ã‰QuÑ­HL¥+lª:¬^|wÆŞréEœz¤¤»ølDÍf-¤P”i)+0ö»+xö”ŞMÕ’Ø5ò†}Ï¥Îİ®~¾P–ş-{_>ÙW(¾„eezã,ø³ôğè1K§ÈÖÜ¤©h£:Ñ‚\\\"$86*KÍ˜vòìÇAIÄ…Ye‹rŠ$”hJ%ÓÏ8½Ö(Ä•dB\\r‰RJ)tò³J¢WW”´ß¦b©…Š*È‡¤T2Uåêªsrû;ã…:[\\ZÑ[÷óúËë¥oãy®^în>­’”÷×7^ÿ\\0.R×(¹šÙ\\\'S2‚$œDQ² ‘Û‹g³ŸH€$Õ V9D- D”dMÁ&‰g‘t†DY\\nDTÑB@²Nå­ß®»+¹\\rÉtÊI¹R“Õlk‹n/?è\\\"\\\';V%)]“b{°ôuåõaüo-ÌèäÏÑ×É×Äíå®SO)Äœdƒ 8É	%‚q S€í©sn–{ùwC3¨¡S‹W)¤HŠFDÉ(¢D\\Z;h¶jiÓV[É¡Q%´¥E°„­–š÷Õu[EU\\\\£rBRÒ±­A¦€![	/7è*N\\r\\\"ÉJ˜ës½¼=joÇÓæyšíák´*ª}|ÒŠQqQ*óe’#‚J2!Db†€Jî¥ã}^Œ6rëÉÃØå”ÆJåBp@JÉ$† hPïVgrÁĞÃ©D o\\Z®Í(÷yüïªkË­uëS®Ìz‘©À‚q±©À@&ˆ©Ê=´{Vy}œØnÃ:ròjÅ}³¿?Vç£ØrßÈ|î\\\\|÷o;®¤8ë¶•8¬Û+fU©*d[0b”R‰+%!\\r\\0‰§(êÎ»˜z¾=§™×rE‰Ù²1\\ZQsIcNJJğîÉs^s2Iu¹Õîhçínœ–æÑÖ%®\\\\X ŒD&ˆ’N>±_¡nJ±N± zìº¼í×Ÿ±³>üƒÉzo	¼äÅ«T¦’!FFS¡_¢å×Ìæô|œŞ{#¾R‹z‘pt&\\\"qcAKnQÏ®5ĞÉË¥X´Q‹N[ñõå¬ÏxÓYª3D™ SŒËyÒa6š®y®Që…$÷€\\r¬Õ•.ê ÕtÓBbÔˆ@ÁCISjêê–_7Ğ¸­ßL”dÓÛ‡£yúUO_#ä:¼>¼ó)Ó»dH‚jXÎ+-=®vÎá::œ÷ÈÁè2ïÚzòh7–˜á¾÷†[¦ş¬yœ»i†;1«*„ŠÜ;q,¬­O5øÔÄóDÈM1ÉH“‹–n2•ÂqÖy°º®œÓO¦@4™’¶‰M^Ç­qQ\\0 N0Ä AJQ‰ëµ+x²UĞéÀZq[§·Àï¯«ÁÑòÏ7%¹}5JÚ…\\0D†oRî~îa§±Ğª˜–eëôî|”=mÇ#Ñc«;–uN\\\\Şß3ÒíW§ÏÅ¯Es!]™wŒÍ.œÚjÇ(2û2K\\ZÔU,êRN%(¨°ƒYÎ˜ÖŒÔÕ¼}1& (”Z\\0.™SmÒMZ†€J\\\\a˜)(Jaïs÷çË>vÌxúã¡Æ¾ ïp{øéê¼¼ùÖ³™UÚD‚–å”9O£Ì×ËE6qíš7×-ı~7C-%…¹y½>C5ß›Nİ9t9X¸³İ’ÍQIæØk<°:ó@\\\\¬H°ƒ‹%K¶Å\\\'\\r€Á\\0\\0ÓàÉİëeš…%ˆÜ48\\\"ëKÕ2âàQ©k9÷.»X¬·6u¯Äw<çnuÆuöŒë‰D²B„â­ëW›G³¦Ú1»-Êğíîó·5·™«%•YU›l†z0¶•f¡ª™ºHÖ9D¡× Ë”˜!¥m\\0¡d•0À\\0CĞJìöÛbi¤‡Ï$Úe‘,Šhúm”®7‘<}êÃé±Yn2æğ?@ğ]¦XJ=²(Ç+b\\nÄ#b#‚u¼ëtqjã§$³§kUiIi³K³ßFQ¶©[5	Wfmg0y L±5C\\0\\Z†BC\\\"`\\04EŒêø5´®IC@8°ªÚÆlIŸOÉ«7+æºZ%¬teÌîÄ«)é|×\\\\òAv‘†U¶¥¢J š•@lÇ~tä§ÏT«êš™#(–_QY5;i‘n=95”L\\\"I@Á\\r6! *€&ˆ6€L\\0\\0Q––	ÍE\\Z@†Ó,€J\\\'pæœçJ\\\\—§^|U³— Û½›œZ¶eí\\nçVRpr±®GK7‘w§Õy^‡v¼ùé¯7-\\Z WØ.\\Z7âJ„µ&¢‘Î¬rnÅÓ\\\"f°˜ÈŒ\\0À\\Zj‡@¤i¡1¬FX€Ú`€%V(¹T£%IŠ‚I9+œC ç\\\"¤ˆ©¯ØùŸ¡o/±‚|Û›ì¼i3uZ™5\\rš;<z;2eç­‹¥Ú²ÁtC4ãT’…M±¬üş§x®\\\"Ö%(²M1ÙYË(ô‰²Ü\\\\7€†\\0)EX0³ÏeÙ™GÙ`<Ü}O;D×Í—Qã×©G˜:üªN.ÒUÎP 	\\ZI#°·Ù\\\'){NÇ{²×sÜyïA›(µ\\\'ÃûŸÚc’·7[FÎ}2qé\\Zãg*’Û\\ZÒÙ«6É/‰j2HqzÜnÜêŒ£¾nQ	J°šˆ1Mj&Œ¤Ğ\\0\\0 i«9KÛÇ7×_Å|Uè£Égö¾&!N´Y*Âë3LèÕŸEyÜşçÊ[‚p•­ \\0€‰‡·Õ©‡ƒİóVr1\\\'«íú¼^Ï:&£‘âı÷‘éœ!dÕ¹eG°¬Š²2Ój¶ ¢í¸vÃ„ZNÊlL¼ŞN¸Á.¼€ M!(È\\02#0ˆ\\0‚qì¯o×C—‹“—,±wgÍ£w<H¡(ªŠ*£E™¬/³<º¹·/+·ñöĞ5¢R*#@àÿÄ\\0-\\0\\0\\0\\0\\0 !01\\\"2@A#3P`B€ÿÚ\\0\\0\\0ÿ\\0ôöå»şTšN‘1ö®€—Ü\\rÿ\\0É\\0²&:e¾é$ Çî|C§ü42òQœ¹	.£<½0†é\\0ÿ\\0+6`#¬Ú	EÖ°\\Z+şC.pÖÍ‘¹9× (94õÄxkSSr#(âÉ¥$ìj—9•““½_%¦¹~A®+“ezÆÎ{YÌrkÚïø‡º–^CÔ²¸­Ç¶ãxù†3’Ù[ÿ\\0\\n÷RÈÊSäîNuóG Xò–;\\Zmíÿ\\0ƒš]ƒ#)Å9îqqæ*¹[dìp èÓGPàÏø)¥¥5‘)N+ôOh‡Éøty˜Æ7ş”RL­É¯±şü¤\\\"/Y>Ñ)ëås«E\\ZÀÆ¾©ÇÔañ\\\"™†\\\'ÚÇ”µØÎı÷wêDÙÒ1CHcsšƒE,Ö‡6ìÕ]3›Kñ„÷C\\\'ûÅ5JàÖåLdzÔXéøÌÛ#iĞEjX“›Zşı?\\n9D8ñÂŠÜÔe`Yyc‰\\\'¨dHì†ôÖ€Ü¨Fèú·ıÒ}Î;Ftîrp¢¡4üi\\\"-È\\rÙ/öc¿jŞ\\n”‚¿zcd¾}NEùó9§§å<ÅZ¥¼“… ©_¹˜ÿ\\0÷²$µ#)²uvÎ§í{äº¥>àò­Ç’ĞìG#˜¢É.8¯ÿ\\0tšO>ØÙ¹ÙŞÑ;”ø»-…ñµL\\Z¹/¸]G%BıÀ”ßöœ¶…´–ÂåŒÆ–KøÎø³Ú{ï±zm+†å±Ëc–Ò¨ò1ÛW§å\\\"à™şá[ˆ±Íµê“Ï- Ò„Er†0C©±4´/jöªi\\\\6”ajt°\\\"~×cäZ‰İ7Äjâ±q¸¬\\\\V.#‹x\\\\Vv·. @ÿ\\0’ã´gO½î:Rá™á1Œû\\Z¸ÍG!qÈ\\\\wY•Åo+q[ÊŞP”®2iNcJte¦Ó±¤±@£\\r£Œ¤ÉÑ½¨‡ª‘1¯³ÆŒñ\\Zõç±hõ[ç%_ø9y\\0)M»ÊlV›#A€ ®1+q*–Õ]Ÿ<¦È\\nsháÉÕ¡u1´®\\r‹‚Ä\\Z ˆ¬I	ì<öiËyBE¸+ûyRp™;Ëß³r\\\'Ôùú9î+ª¤4­/JT©R¥ZR«ÿ\\0$gÙåW=,>ÁCÏn–ÔZ… U«V­_Õõ9i0&´4K:q%W(ĞëJ•*T«JTˆT¢“k±$ŞÁÙÄo`¡Ş(*[Q«+r[–å¹nV­Z¾Ù^ wMv‰äêyÆµÜ¥µaM±Fëˆ[Cœ¡Ùs©°ÒÜÀKd\\0óR!éÕu[•«ÒÕ­ËrÜ·­ërÜ·+EºKî–gû|—/\\ZÒ¥H}Mù`¼9£°;7³/‰şLóœ¡q:ZÖ‘bÚ«ŸªµjôµjPÑ8Ù:GÕÁ“lê9ë°S{2øŸæÁÖ&¦ŠCÁîRÚ‹Qè¸¾î8½ÊùÜ-d{QGZúÁ3åŒn>ùC³7‰zÈÏ”dUÖä›ÜƒÕòÃ¹¸ÛŒ	Ì,[Õ„\\nµhšYE8£¨\\n•/Li…-·¾Pì+zK·ğ\\\\˜×…ñR.ª#×ô‰WÙ“â>p?ùÍ’Ÿ\\0rv9c‚µä8tËòíiåR(ı ‚Ã4Yã¾;3É±­Èp{SvĞ„AaĞƒÚ”ûB²„Œ\\ZR3£%§;¬>æä‚gZw \\ZH…_Di‰òaû/`p8BİˆäöJÄ2¤Œ³Ô7&ä´£–À]—‘¡Ÿ\\Züø×æD¿.%ùQ¯Ë6v;–o\\núÅ?Ç+d<ØpD›ÔÃÑ¹ÎGªpäo)ú!ˆiíæ¿¬Z\\nÌ„S@ŞO\\r÷Àrà¸ka]WT-uXÏÙ+6ñ\\Z·¸)´z´Ç¹Š<›‘6E`–{¶·>K-NÓöy+CÜ¾@‚Çù³ãÈM)¦¯¯-VVÖœ“š8Œcvº•øâÌ,CˆâDQÀ;Ó›nôÔp$_‡8F‹2Wv®+Àâ®…Ğ\\nbÚ‚÷{2.4w’‚S©ìpš±¾møêTÓmY9=~‹ü\\0ä×k*Ì?É…ır¸ïü·±÷&f¿)‹òX¸ì\\\\V¡#PpW­)©<‚\\\\ÑQüÌ>Ö² Dõ•ı$x$””ÔİO%j{¡bxÔ©äÚ2²:Èòä:ı+E4¢¦S‹—Ûwò“Ôëkq[Êâ9q¿\\\"@¿-èf</Ír~Nà^P”¨=ÒZx£újı<¬™w]ËÂ×ìy‡J.[ĞrÜ¯²§¶Î¯~Õ›íÅc:ş‰×÷jbŸıñôŠ½ïö©R¥KjÚˆ[UjîOÑªÓÜ§ò \\n“PÔéjÑ(éJ•*Ğs^^çGšY¹AªG—ë‰ôN§Ê˜ôó7^ñã÷ØÚ¶£©óÊéz^>éÏ[é¹5È\\\"CB‰DöÇ5­È9zkıÈvVÑ#·“®!EÚŸ*ûCê1ÖWøıÆä]|ó“Õ5ˆ„ğ·/Ü¾UZ	œÅIEËrÜ­Z¾kW¨Ó/‰úÎÉ¡,›ÉDékm²°îo}Ú•¢şÃ\\\\6ÿ\\0a_±­«Öù’¸lö&³£­HŠ\\nO:1„yJ:¹¼+@ºA©ägœÖTû‘&òœUê×û°dß|éúòç,ŸŸ{ÿ\\0­<B¿õ¥«WÈß< æ¹¥„èş¯Ãa\\rpMu4È¤)å7Ã»a(‚9N…R!;Â!Rb4Š \\\"­Z´\\nˆû±ß¶<¹âÈÕé[{çKSn¶{›‘!˜î—¤L=Jÿ\\0×e’–9õ;N:tEQâÂ,	Ñ)`¤ñIÊ1jH“z))~â7Êt­Š(éZR­NòË¬g„éi²>É)ÅOß§N\\\"wå17% ƒİ*Ğ»UQ=Q†×Æ\\Z÷/ßf÷§SAr/ê×oë(…)é+“ÔFŒ…+@(üvŠ­T©V£GGU¾;İ©Ò^G”y‰Ôíå Ë-1¼<vÊ)¡.Mê“âìp@uEÊù˜-Ôu§xê˜êXr^u)…9âŠ­#r¾sÉH…\\\\ô‹QjF:Ì=›JğŠ<Ñ®	®­^îáĞ\\r)iı¸ô?7i|ö±Ø\\\\÷­Òt×ˆyxY\\\"ëOE\\r\\nµj3×œòo–—ì…IKĞĞózt{ät`¬ˆ×§»¨ìİ)²Cóé3;¬S¶Q¤‰DŸÚè¨*\\n•&Æ×\\\'c\\\'3j†\\\"÷7l,2Èèı‚dš>f”Ú*Ii9ÅÈ„òRØƒeÉÔ¢‰@ZÛÊşˆ\\Z¦D¢{’Î¤.ŠfnnE²vrçØ¦˜¸— V,ÅÜF§xgE8ö\\0â7ƒ¨–S¼a>2ÆŠ‘´)Ë\\\\xaYb{ÖáDõå›Ey	_¶š[Ğv£Ë…ª¤SJ¾p½)¾É\\r-ÊGĞÇ’²£Ş÷c\\\'ÀB ¦šXö§ùrÈş¸²ÌfRÛ\\\"cÁV¯r6¢6F0sŠøß	î²œT‡Ü_IÒ\\\"Wë²9Ï)GRši5Êô/EÖ‚gŒƒÕW%kÜp›¶\\0§FäÎ©îpé#T‘­¦ğEû!\\0$NG$À÷Éƒ\\\"üYÂds0Å#6pâÜÑĞ…#AlA¬RL\\Z¤É´çÚs¯º9­ÈyJ¤İ\\\\‚\\ZuuizR:ÅòÄí\\\'p‘Šé‚ÓÁÃ±+z:Ó½«…g ¡(Ø\\\\G-ö#7#‚h€¶5ÚåQÆ›<e; \\\\Ù!ÊsÉD«VŠ±Î{\\\'QÈÔ|‰ìc‹!ÛS%Nu©»QI´Ã8(8wx«D¨£Ü›’x,.+Ë@Nö¨ffòàšá¥…,Ícr³óÆx1do‰V­Zµv›¥óßdö©R­i÷PvµÍi¼…ÆN$q\\n°Øåw‰Âq¥»®\\\'û“šèMSS‚ü8íğí%ˆæÈÔs^¦È{Öí#v×XµzZ½9(ä=«WÌ5•İy¯P(*UÈJÅw·›!¶¦°‚Ã’€=?º´ëjRÉÉ 3¹Nq2’®ÑW¥«P»¡*ÕòƒÓëZµjÕ«W£U\\\';j&ÏeÌuìrá¹pœ¸N\\\\7\\\"Ò5Â=y\\\\@R<)\\0(µ4íQäÒlí)®:@™AM“iï%nGR$]€y5ö	Ò•.\\Zá¢Âº®ºšUĞ‘İ½Ô‹zsú^W¹0Ï]\\\\úOÈI‘hÈQy[ÊêƒPè]9j~IN‘oEÖŠ¾CÉ`vÒù]¥¢†€«äØĞ\\njyèzªUÙ6òÒKú8•»¦˜§ß¤²mÎJ»Ô5P	Ò†§LP§]îV—Ùgfû‚‡CÍkrÜ¯KV·trwUZ¯±7RÂ®É+rò¸ÿ\\06øY®äHğÑÅ´îºîEZ¾Û{@öAÒÕ«WÙµjÕ«D¢yeåªÚ·´\\\"ö¯jÚ\\\'ª\\n“|~³]\\0ë3¶§>ô½½\\n=;a›W­«ÔviR­k@h{4«RŸÌU  ù7Çë7äE—íj•öˆAk_=°›õ-_u¼‡»\\\"<V?Í¾WÏÉh¦Îş§ª½+[ï´«ú7¥­ÊÕ«ÒÕ«V¯‘Š‘î”QGR‚¤\\Z©büšTçÜÁJW§Ù(ézˆıªÚ­ZµzÚµÕ1½ChŠ=Ò¯¡GBš90Ç¹H}Ÿ#€w[GôVÑk”LŞK\\r}„U¯ÔN\\r|8JÉ½9O\\rDÛ\\rh	çB|¢¨ 9lâÇZd\\ZÖï7ÎUëã¼<áŠ=nOùw@Ği\\\'+1Ğ8fq[œë8ãØâŠ½xcnÖ1…:R\\rªôh³h­3>9¤î§–ô(«úù7ÛŞ·t>{€*U¬¾tZ+jnçk\\\\Q?E…Zsé>E)½Ãöšg¬”ïV¯šÑÖùh(nwÁêù‡–¹¥æµÈ”ç+Wôä\\\\‰R÷«ÓÔæõ\\ZzŒ–ç\\\'y…~šHÅqÌĞ÷aƒˆ@Š-†Whş€;¸9B—Ó%O(}BJF@\\\"{‰Ò\\nî‹â¦~ÆJíÏyWÔ#Ë[ÜzZ=o´Æî8ÍØÙ­IåJt¶9¤ùæ¾¾C~‹–åjõ\\n/0|W©>˜âw\\\\ğüœU­›ÁÅ¤è‹I¡çğ±œúNrÜœU§º¯¾äÿ\\0<û?Dô•…ÓP±ÛoŒP&†t»Şã¦î|pŠ!M}§{Ô­£ @aÅ°üf©c1”Æo-nÈäw[AQä_x§öXzı\\r»‰ÇaG¨â©70‡¡\\\"Â;¤lœ8äu§#ÌtÆNC£ä\\\\·)rá9Q\\n–+mÄÓK”E{±\\\"¥1NòÕş9š{–ä{CSÜ¤Ñµqn\\\'Î›ó^ªû.ÑÈrİ!}JwPPPÑ1XPŒF^ôJsºD7IÑyGOÒö[•óÚÜ‹»úÇrà</j¨ÔÑ6¶Ö›óYÎşWx\\\'B‚:”ƒäÿ\\0— ˜i4ô½$)åZ`²È)LSŠ½Z¤Ûµen[–â·+ïı®ªÅfŸäQ.Ğ/Lù¸ĞÊwó8£Ìy\\\"}§tLO@ADU*R„ı!èıÃd¥;Aá7Ìíé÷‚ğY-·4R¤È\\ZW0£-‰ÏË%vç¢9\\Z4í5¸†O( å‹¡Sá¤~x´œî‡‘ª^­ûà£Ù¾Rş·í‘Ãp{Pæ<rĞøf\\\')ƒ€wËC¥r‰Ö94qDèu!9¿rvŒ)ÁZ´4¤Õ\\\'¾Ş[C”rŸğá—»ñ£…ñ½éjÂÌÛÃ“ä{g@â}£­«Mğâ­4§r^JÀ…R‡—iRta~×Ã!s-qq¤9¹\\rÛ!äç[)®Drt\\ZP¥ëş\\0Ôö\\n\\Z‰©dHÒÎ«ZAÖ­Z´JÌù;ÏbùoF\\\\ÃCÈ§¿Tö‡vô1‚Ÿ76	Ë†àˆz;–h6{Á„¡‘ˆ„\\ZVÂ©Z½oœùíª5=“¯äÈ¿*Eù/_–ğ¿6D3¤_Ÿ*üéç=Lã #RUòR­äÜY\\nf!e\\\"ÕK¢sS‚=—xíCôGxsÆİëñÊüs|3µâµ< ¡Ä{Ó1\\\"j°­nD\\n!àŸØ	ÿ\\0V¿ÁÆœÜ¹Ÿü÷„q¥bÈnÒt®HqÌ†(XÀd¤^­Z.EËr\\ZŸçœ\\\'ŸªÜY\\\\4~;—Ë‚åÃrØåµËk¾ÀXùÑ¨¯VŠ‘äÎ>9\\\'£¤EërÜ·\\\"åiœ¥KçÓ¾Pc¾WbzcZ13ÚIp[‚°½«Ø©‰¼-¦(¬ãÄD¸e¢ˆäÚÓÉ®¾šÏx×Õ>Ö‰8ğ£ír.V­Zµh&r¹J}Ü¶­_ÑN¦™xìˆM|¥?u~•«W¥«CË¤ÆlÂXîÍÂt8üWÿ\\0ó¶|>İ	 Ã~™\\r7_Sø?FÄ\\\\aÆ¤ãµ9Éèó55Z½dNò{ÁËZ\\\\ïOÀ\\0\\\"Ïi—+ÙŠÀ²c„ï7¥òÚ5äã™¹0ÜÏùúx÷¬ï”…>Ÿı:ú‹n)i¦\\0äâœ{\\rMñÉ*pGëÕ¯KÃ´òÙ¥%™.ÇŸQöË–ù-«@«@¡å®£í˜dã˜]ÛÍşßNò½MÔâm>\\\\ÁüíBäã­jujıj|ğŸªWÄŞY2’œJ\\\'[æ:ëiD6x¦†şÀÓÿÄ\\0%\\0\\0\\0\\0\\0\\0\\0\\00 @P!12`AÿÚ\\0?ÿ\\0m\\rxÇâV_ûØñkÆ/¼læ#s\\\\_Q\\\"1$“˜ /‹×ÍqY‚#/Sß…ˆ#’ÒĞö­OUCâµ-1±ø¶>âDb6½±½½ğzVÕ…¦Iá#c^•µahz_E\\\"°´2æÇŠH\\ZèS–S…¶ËÍ8cã\\Z“‚pĞ—EñE%H|)=£Z%Ô|i³(Všb±%ë:ZÍ\\\"ûôSÕ|h¥#Ú…¹L—íÆQB*C\\\\\\\'‚ê¾*éòŸ)GÚ=M?D\\n™(°ÙE˜Ä‡Î”h¥2\\nS-£ùééí”Ò‘râEËÃªGÉô#z(¶|E6…ô_üôzeô\\\\®räM:d/=Gáÿ\\0J*ŠK×dI‰ó’p†I;)g¼‘³Ô×ôSúU\\\\!½p!BñHõ|•ÕS(eÚş‹—$¤©íBÃæò™:•¶Êm´$^ü+ı4¢ªHä–\\\'’ÃÚ/Šâ=è»Rh¯÷•htãÚ:HÃcÄócÚ™ò´+ÅWGÊ—–{D22øI$’I#}¢‘rYcã$“Ğx‰’N‡×b4É‡×zãKğ0Ah}ô„i |_~f{‹,BX\\\\ªîÿ\\0ÿÄ\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0 0@P!Ap`ÿÚ\\0?ÿ\\0¶Œåoü2ùÙgÑô,½YeÍ3ù‹ÖË—^š‹,²÷¢¡¸Ùe–Y{?\\ZPÆcã²æ¼lf:¾µâ[8Z¾OGá[8Z¾OÊ´PãøE¢–c­ûÔ£Ã1ÕÊö!Š±hô^Eµh¶Z>v_DâånË•£å“…Í‹k®,Z¾.*o‹ÑR¶p¡M‰ğq}–¬[PµfBàüºÑ­>Oƒä¨~å£í‹hj‘rZ,,_¦TÙrÑ’ãErB(­Ô3%EñËÈ—J1\\\\Ú\\ZğQE	rP—V‡ÆÄQE	QSZÜ(BéFCàáC&%\\n×&,‹Û<…‘ı˜pB1éETc£3„ÄËGÙfL¢ŒFŠÈ]¨¢„„µÎS>†á¹B–Š(¢‘bWT!–c¶xÃ‹Ûª(®èúŒ6ÈxŒ­ñô)F;´5­Jä»!Â1ÍŒ{â½	iˆ´lú>¢÷À~»1s“¡½lEM–Y}±Œ²ÈEW¯ÊcÈo‚êøÙ{ÿÄ\\0\\\'\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1 0@P`\\\"2AapÿÚ\\0\\0\\0?ÿ\\0‰¾YÈ\\\'$Éü“&§ó6Y2ËØ‚ËTeRÄA—¹by©ğ°NõfşRŠ#7B|¨Ûÿ\\0%É1ˆ.Éÿ\\0B*x%İ„92ÂŸÜ£%>«Àª¨¹Êƒkû\\\\9~Dâ–úşB®+\\\\ğãA;÷+9ÉYE×yYzd±¼Äœß&^(×4Äœfğ?Ñ†ã2øL§mÒÉ½ë,²ÏÈ²Ë/µqSq÷ìıŸ³ö~ÉU\\\"Pû¦$íW¼fQğŒ9:(¢†%8±Ğ?!—¿nZwğO#ãÍeç«2Ên|óWšıƒ\\r¶ü´±|#bÎKè›—YÏrø­•ª{§\\\'Œç÷À2YäùŞvYy^äxDÉ°“®Ë>ÊYe—¥ĞŸÃ ë••…eŒü‹,e%	ëW‹;N‹,½5•?Jé²Ë,½†ÿ\\0@²Xëå™	æ¸«ç\\Zß¼ÉúGØq:O©=›pàşäí¼å2æ\\\'K$nGw™:—İo×@š›³eá¨¢í Ê(ÙÎQ×Q(?	óUU‘‹?î‡?ÓÁ>•TÚWÉò~Éô?	S*@«‡)/*(l“Pƒ-vl\\\'\\r42”Qõ#\\\'\\\\\\\'Ûüdá>©İß´ÑYIù\\røh\\\'Kş‹,¼ìúäß{<)¡ÏÌŒeøÖ×–_”\\0úg~ËíztN”İwñiå!t\\\'˜O6¾aG/Ê¨¼èãı„T# ^lç˜æ:ènZs|Ä¼ÿ\\0Ìg>-TUÛ‘ü\\rí7)ûÙâÁ=İ©Ç‚ŠÍ´:ö³Âš+(ïr…Ò»¸Ã÷¯çÇÅ>E^êné°è¡|ŠääùWÔ¢øùÍÁ~NË,²Ë/7ÜŒ9Oˆ´É—gêIö!<J@îF3ù®²¡“©ş$¡YÑEÉA3tÕ#\\\'TÈƒãÊµÊføyî½U,Y2e[j¸!FTŞ±î–ÄõHˆ>42b…ta[m±Î;õß,HFn7ìmÖSùÆQzÇâüVÅM¿ÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0!1 AQa0q@`P‘¡p±ÑÿÚ\\0\\0\\0?!ş™|)JR”¥şš¿<şjn!`Nÿ\\0UĞöV4	Cd\\Zş¢ø&Û>\\0*º)¢ÔÑŒ[P]æ›L.ØÑ#V\\røBSúƒ/n`Æ6Ç¹»´Œ/‚Š7ğ/éÅM£µwÛÜ{ËZÄ\\\\\\ryBú×úZ:b}¨¬¡cŒjÑJQºN8¯±/H—8‹Âş‹Q-Ø\\\\vÜl[\\rÜÒ‰”¸n\\rP“T™P‰Îsú/°$”µa½l[Æ)G*ÃLã‚´cĞ?\\\\ş„Åö*ĞæØCy„ĞÂğDREFÏÉ¬~ .«±µıÁkKğB!•G†¶1eƒC¹‚àÂ%B¿ REÜ$Õaº4ÑÜûÅ<.‰ª(\\\'¤QGÖ›A!ğÓ;ä+ÿ\\0yáõ\\nB|%èô*Ü£zÆÌ’7Ây×äe¢øb	 ÒĞä©.A‹[ïˆª=Š1;ÿ\\0y´&Ï…at--EÒûs7Ñaë#Á¥ú&ˆ»\\\"I/D½m ëŒ=ˆ,}ÓöHïûÚY3t:Ë(µ0€ŸDİê+ı Ût°poĞŸ¯g1ÁöıÈ*ÆÇm¾Ÿ0ÃÈº:m–‘7ÿ\\0wĞÖí\\Z†½Š%R+|ø½°£1$>Ñ³¬‡£ì7ÑKöR²á1ç`ÙNˆbwşÜÜk2j‡K]\\\'ÇØnÕHéº?¹l¥ÅğaëhN«dBFßö’²‹e5jZ\\\"Wù(ÎmÃxsÅd“|ì=QôXĞ%O¡UÁ»§³ƒG—G«ñ_ú	FÓçAzÄÙ¥ó_<CÏ›4´)²°^@@¡¨?„zÖáÆ6Æ-¦:SbJ–é\\\'Õ>‰õª}3aüUø[kÑúà§ü‡ÂÚpA	ÑP½WĞªÙàÛ\\Z×P®!9PÛ³öŸq£¬›è¡öáİ8%RàälRÓ\\Z\\Zg³PÛhôØ÷A•Rè{@%•õ¨\\n¸òekBX‘yÄÜOùï‚Ô2™Pğ”T„B1µhÏ¶Y—MøP³ÀŸ\\n†#M>£ ˆ¯Q»p%ÀÆ¤A¿\\\'ˆzü\\rQËbHG±¢ÿ\\0%ŒcùLº%5ë†ı+ŒI¡,7„ñ‰¡à$çG(1GòÍ%±< o?’1XÔŸ²Zº%\\\'ä‚0¿Är¼)™\\r!í¢M\\rA+ää\\ZÁd }\\n‰WáŸ¼™4!¥Â·Ì9 ¨¨«7ÃF‰Ğ«47F7tkÑşå‹\\ZtbxÂ%é®ÌUòÙrÜd…\\\"Ê°³b§qXÓ ju‘`Ec–;[C%ğD\\r*ğÌOÖQ	ˆD%±å0ú²äöVÿ\\0Šø#îu)tiÆiÁshmKò„	dJC§ìıdc£b„?bá±ÒÈ§NËM°ÑÁ$2áùB£ğ]¤ØÉ)ü¡ÜmĞ†k=hà<S¥_>?&Œx(Ò¡õhá¿v[Â¢‹•EVxb¥ÒjËü/ÆñÈ~ÇòV>ã¶±ÔÚ€âZtkie	ø\\Z4spg²Cã7ëbK¤Æó†ÂPßs%¶T„\\\"Ó¾Êâø–£€şAÀÖğªÇÄ¶?Úp¿¼ê94Gº)À‡\\\'¡?¿øÄO~öĞ­ÔÛ§ÕšpõDÈ%±c ûÄä‘¡2XU6\\\"\\r~]¬û4§?ÊÊ>ş%C4«ª(Ó9ÒCÙ>#qB8%®T„´´O¢}x¡›‡lÑ„*4HLcº…: Íè…bÆB³¼¬IAC\\\\,C×ƒš)·‚à¶ÿ\\0>‹ğtbàZz‹pt\\n¥’hMÁÚ;ÿ\\0ıî‰zÊûbbÊo´s!;áÔù;Ó…Á!§±¢¢±•¼1ÚDF´˜è½<®¡!á¿ñæXØÒ\\rÁx´]üñÄza¦%[.XNÒé­ÔÏb–¾G÷\\r/É~ã|Âi»&1‘LôÃBËL|~\\ZÒ—`Ô¦a	5GJ‰±P¸1†„ñcîPÊ<½eàp„ó°#Ìò¿eğõ\\ZŒ¯Ìh! ó‚tÒ\\\"ä‡N2Ç£l)EòCã>Çÿ\\0‚\\\\oü8–ÿ\\0Áï”Ğ»PŞ‡1·±%Ñ9bPú=à§£³Œ.a(ÄÑ4O—¼<\\\\‰PM„¦\\ZĞpOğ¯Â&ílrp<4LCA:9%QVQ°“I;Ø™íOğ„7Ô_´j|á\\\'Á\\rÃ(lkPÈxU¢‰ô)Ü[U‰±4,u†‰ƒF È¹ôQx¡\\rˆr–Æ-QŒF\\\\~ø9áô7_g­äÕˆÛG6Å1¸V6‚G°şP¾p•ì|Áöâ—¼l¦Êª=‚hCú²è5*[ô5)F:(ËÒ[ ³e.*i…VTÅá0…À¥2¥è”ÚLuh“ôÆöÿ\\0\\nü${‡cQ·ú&Jh~Ä\\\"„a$áNH<\\Z¡¦wô7ÁéVÆ)¢cM°ø1pgâ)Œe›KápLmxTÅÍ¡\\\'à_ŠŞ(]ãúÓğ ÉlEf\\ra’âôØ°bcÁ§–®ĞcQF\\r†ø4g8l…(ÎÑ¡ªB›X¾§8KYa£\\ZÛğó—øvç³nCFFô]ĞÉÁÔƒkÁ”o\\ràÓÂé	6GA°Ÿ¢¤Î»£RØc6\\Z&Ä1ó±IŸxÛç|z!<Qà¤5„Ør„H1³œ‚:ºdÏ§ğ•F˜\\\\fÂ<ıƒ8RÚ)³Œ›ÃM\\n>D°zÉi—‰â	±ibĞ –ğö5hb¸5±lá›(Ÿˆ˜ …¨…$RÄÆ°o¢áÍ+‡ùàÚƒˆm¿B\\rYKZ++‡6ó.ò†H¬Á‰÷„µ9\\n‰›TlvnÔ0Ù˜4/b(´Ç‹càA0p<ø¬M9iö=cO½,×ğm›¼³Øƒd^‹cç3»=¼›ØÙDö+&à×‘É›±Q=í¡½¦?C³	NŠU‘µHb\\\\/hFp º!I›B`ÿ\\0bï§ÀthÁáÏĞ™°×à¸ŞbIš­\\\",V¿šÑ&l1/g¨+aIFˆ¦kFŒ»ˆ„ËÅ7›ZXq@«\\\"Á(ÔØÆ¯)¸nğ,Åc°ƒ¢R,À]Â%dbA:6w-€¨tah£A%§ù[F”SÀ[µ\\\"6u;ÃÑ‚e.ö-c·:çQå8œ*òë‚\\\\xnÇ¼±±†<6O\\\'…¸z`a¯“ÙÅ²”ü¾³@¶áÄ+	È»bN1î66Š†×ÉJ8ÿ\\0Hò=¥	Ğ“v¸¹tXc:6F©®|ŞL~6Ç°˜„LKÇqÀ6˜?ÇnF± BMQÄ7áiÖ.Ê6Ëöpô-P8<v-Š¦è™Çİt{šÜoiÖC°ˆhÕDGMW‘tjKìX„Ä1«br,kcPc,6‡ÑÁAQ=àS\\\"1õ’d&.Ämƒ_êX²çáB8Í¹àÒ%ïBjéè}›cÁÄD6šN5Ò_dûÃ¬=pKãºbÒïØˆ_f6E1>Å\\n\\\"z$\\n0Ñ<Â”ëcll)XŞ&„ÎˆeBx¦Ã‘tz|uÄ-\\\\ èfn—àGk:6´Ë\\n¦>¦üòâ¥*È~Î‚Şß	õ„i1)ã$Ö‘¤7é\\rÄ.‰*l¿‚e‰—ÈğÇØØŞÅ2\\r4Q\\\'ìBB8›YÎuÄŞÈ˜ƒs\\nÖG@ŒBÚ²!sğ1J……âŒ\\\"MÄ=‹\\\"£M¨áOê&ƒCHH­\\\",/è¼?üUÿ\\0ğTå šƒÍ$*´æHkQ‚”OÅ”¥/‰cpØÙpxƒB60ŠÑm†4jQf8\\Z!ìBÊBJ›:&ú\\\'Ñ	)lNş?°‹QïÏ°ĞVUöAÏ‘ßQãÚ+à[ĞÚ\\Z6ƒÎ\\Z\\ZhBoè(ô;ÇÑnğ&û\\ZæÒŒ¸˜báŒècÃó-aÒx=Ø,qI$¨ÖLTƒ«b>ìæ~	(jÙ³&ZT4‘lZ(‡ëGDıŠiªcêÌıŒúN¡«Ùf&[F´]´>M”æ\\rF¦4Ö£*‹CàÙJv_4®ØÒ¤dŒKØjô!ˆ6’ÉŠIFlEw«…P%ìy¦-°ßù#aŠÑ‚Ä5bhO ×P¿¨¦§ÄS« Ë(¿DÙ9Œ#qÿ\\0lYÄ£>¼Á†ğ£ØØ)J7àL¹QàÙv=±Âä÷†\\\\.‡¡sC#y£/ƒ\\\\Gğl5^…ú+(ØœÑ7åMÆ%!oØŠ˜·ò*ú}†	ú¦Í#Å ïcc™pbÛ›¢Âx¢xceÊeÊ<2ŒcÁã¡ £èuÂBÃñcğàSö~ÏŞ|iôt–×I:<¥>T{ív°İDsQÃmŒ5XÌh\\\\!ÆÇ”ñM’”M	¡0ö<±ŒĞ]`­ŠáB±¹…Nø1å¬Œ‚ŠÔ‚¶zÌ­kGbd¤Y_bm3ĞgÌ>PÃaï¢†‹ªQÏm”¾\\\'ğCc”X£.Dğ£eeÃŒ.‡\\r<Y%BaZaÆË˜AÄ°5_B­ÚCà7¼MBâÂ‹œ5£èöS*šzgÏè|âÚ,7Ãæ!G–ŒõáJ6\\\'‚Å.^1J_¼úÎ…‘q[\\n¥²´,@x?…T&…°Yº÷~Š®1ãx\\\'Øî\\\'™X·Ñš1³½–ÛG{z+Ş\\Z„Œ£x¸»:ópÆRëÊğ?\\nQ:iá–ÄQL67¿‰²¤5‹áÄÅ3sÜÏb,-’b}\\rº/m\\nº$°iC¢•1ëÅô¸ëÊ£Âb¢“a±¼_±ş‰Œ¥ÌÈÄÑ¼&†2Ä†Ëcf%šÂ²öhÄŒ}ŸıG1ôltgXdıŠ}Ÿ\\rY†ÑS[p‰`Î1º·†ğÒ\\\'µ—àÅ›†Ë‹š!Ç‚~\\rQ-\\Z-Â•š=33fË&<±H‚T9Ú6)„Y½—è·´QÒ&R/ÈãEİ†Ñ.ğÄÓBÓÂÃXôLT\\\\¼ÌR”¥)Yplb¯„Åâğ„cÓáÖ45æ®:Áôv=FÑl_³N©Ê$›…¸iˆ0RIšÑ´&öJ _¡–¡›C\\Zdg¬12ë,ùrô5÷ãpü(Şl6ƒ‡21¿[7…|	7¡¬o™o	“_…ôC|—X0UOehôl5ê‘ÃéÒYÀ´]’­÷ôx=›L·0Ğñx2´z™9\\\"fğÏZ}‰çÑK–CåÅ4KaR4K\\ZÊp j\\Z ÆÂxA„ÄFUÕ6Z!èlÙ!v{¢TÚÇìCñìa‘¶z7›†êÙ¡öÓ¬2èx°w×‹Ì‹­&;nğŸ¨yö2—ÃØÊ1)‚47¢!mB>Y‚•H‘‡äŒ™¥)6D:†¡ğL+èrÚÈéĞ!0–(¥T8I†ÆÊ Ï°‚g¢\\rSkBØÖVÎÌ&Åğ>›a?>Œ^x1 „Á¾\\rÔn­‘º–\\ZÌº?*&iJ;!Òb,Ä%ËiNáCÙyyl2L,ÄÎ3ÌÌ¾HòÍüP‚hDÄÂBÂqyL¨[}‚æƒ¡íáGQ÷3ÁĞ}.D³ÃÙxç_|\\Zg1¼hJ\\\"…ÃÅmŒ´àŞV)H9´‰(8wyßBx ¼‡ßfœ´ÍcQ÷/ÅwÂâ”+ØùÇÇ‚i·±\\n2\\ns=¬ãwà)N<E¥‚µa¡­Ô$dLj2á¨s+f¬NÑw§bSï4ÄïŒò.x\\\"‹ğDÈh?ü=ùQˆú¼\\nã£T\\Z¨ÍeÃC)Ñ\\\'<1I±uƒbç7Î	Á³¦Û=at{bRR¯§ì}£bb¯Áà°šyÑ£B˜Ccü,¢4>–kÔ\\\'ªV?Ò\\nîÇ!z$¡,~…ØôjÑjòºŠ7ƒn;a•&5â\\Z ’S<GÒNìrR•6|âÍû-q0ä+ü	ecèİù®\\\'±àÿ\\0ÃeÄ»¢*Á%c&Æ{DÅ„%‹Û(lØ}ax¦®Fƒ5­ãìI ¾Pû˜p¸ÈÂfCèøcPÒ·6B0ßŠpùJ¼”ñ¼×0ÆÑKäbf&¨bÚ¢t¶$%T‚©>)>6Æñp2‚ï\\\\4EDQà8ÛÆÔ4¶‚Ù\\næ6	(ğ™O@½ÙØ†Âßá %³BeÅ).+üPè‡‰š6t^?”X(qŒßßşk</CàÆ¿³Ü\\\"vˆ½’d8\\Z	Á›HfZ£casLØì	ÅLü:†Äl£b–\\\"¢°¢ØÛñk†ŒOÁå¸ğ¹ŠRà¾nâ¾”Wtã¬wÙMñ‚Ëíòz0e§2tgV!Ó{Ğ™¾×1’[5)T…†ÑºhÀR¿ã/À˜Û(~-Ğé²1ŞÍhD%lÜ3CHfA&û49÷ÎHÅóD¨ß=“U84 )é†Ñ¢ZHØ6è!ô9ìõÖğ‰ÿ\\0klxƒÎĞøR-&(åKcŞÙA¶3Ô/†ÂÎ\\\"\\\\fÀÃ”PŸb?’:l50ˆÌôØÚm4hÁ[CC¿OÜ×É°¶ÆÃ\\n5¡„C@ú{ñ~háy¶†Âc{:1ö<«„Ô5¨l‚\\\"ps_bO‘\\nÎÒÙ7•-66ŞXòîĞÑ\\n”£;1ğ Üq”õ…;&§Œ9ü;â±Øø7’Ğbø8\\\'VUGN#v	—£ô%úS§ú,ÛÇBĞŞ\\ZÑ²…„‡¢ª1‹å¸øuBtX>Ÿx³×ƒ/âè¥Átô.‰ìl¸CA•ˆÑé]íxø-j~¹\\nÎ!Â—cuâ	¬¡EµĞhBcÃèb‹<dÂÏ¯áè]üÂxxOÑìö<Q¿~r	úô ØDê´H_tmÆÈ4ˆL<LzèÅYÂC›ÃÈ2l™¦OöRâ–#|’#ñF°÷–<#ŒƒÌüÆ¼`˜BW¹olEÄĞE`¹”.KBcèµ-Ä¢J=K¿‘&ãº… ×Á W³V%ŞÈš¥ğD5ót!åø=¹]aètºüÇø.ğÆşM¡ÓxØÍÿ\\0ÿ\\0 £IŸ¨|ôcÊÁóBz8¦Ù	¬B»ĞšÑª\\Z2ìZˆ7åèFÇ[ğJbƒZğbè÷—¿¼½x\\\"şG‰ˆLzdG°Ÿ¡ÊOÑ[¬7†Ä›ø\\nïˆC©I8\\\"î?±.Ÿ™äƒB`oÇĞ±ÖRø¥IãDü’®%dy¡¦aö±´úÄhÀ8tzç“gWš=Œ§H2\\rı‚4%Ôº£î=ŒBº5ğ4x#©ACÑy¬ú(õ\\Zş\\nË‰ã1¶½”†|Á\\Z“bh¥ÖÖƒ^¤oô~„øô„h@Ã8k}w\\r‰2ğ~H÷™òD?±øĞ1«‡9İE„ô-\\0×6¤>ï\\\\x™¶hÇÌ\\\\0§éDÊ_üQaß$8‘\\0„…DhñCf¶¶èÉM£\\Z#%?a%èÍt|¼Âÿ\\0±x]óyXdî4!ĞŸCÂëÏ!Gñ‹t„hŠ\\rp˜¥É\\rŠ!â=ç_…ø´~kP/<!ú?B}¦$äB\\\'â©~ĞL¥(›\\n†àèZ°}›ó_eQ¢©lHÍ·Qj¾‰t6,ğ§G5‡†ÀÙDÊ[7x_7ø‚f_&¡½d9{RĞƒ¾Ğu¬6R3Ú6›ÀH}–³ÆÈLAcdû\\Z¨U¶kÑx¾6’…´-\\\"zÀØüJ-\\Z!wá×ñ4)ø°„à¥$¸8qQˆ{\\\"GÀy˜“Ø†¨tÉ%ò@›Çäü_ÿÚ\\0\\0\\0\\0\\01Ë0Ã0Ã0Ã0Ã0Ã0ÃöÃóËğÇ<óÏLo¾¼óÏ<óÏ<óÏ<óÏ<óÏ<óÏ(\\00Âì¶úæ¢ ‚$óÏ<óÏ<óÏ<óÏ<óÏ<óÏ<ã\\0Ã‚“Ï8Ã8Ã Ã0Ã0Ã0Ã0Ã0Ã0Â3\\rïPƒ0ÃN0Ã\\\'²Ë,²Ë,²Ë,²Ë,²Ë,²ë$¶qÙ2û¬²Ê%²*ƒ0Ã0Ã0Ã0Ã0ÃtŠCm0—nÎ°Ã\\rÃ)0Ã0Ã0Ã0Ã0Ã\\nŞÜCoÇUgÔx²Ã\\r<Ã5¾¨0Ã0Ã0Ã0Ã0Ãˆ‰øÑàe	Ğ–\\Zƒ0Ã$²ˆ0Ã0Ã0Ã0Ã0Ï=×ğñ§gœ@\\0Ã ‚0Ã0Ã0Ã0Ã0Ã0Ç‰Ş$¸(š ÖÀË\\roª4\\0Ã<òÃ Ã0Ã0Ã0×\\\"×y?O.÷0”Óî½$\\0Ã$ĞxÃKèŒ:ë0Ã0ãÿ\\0…dQ~÷GÎ’[ÅM ™#@/ƒ?—”úÃ0Ã0Ã\\r/[ín3\\\'´k\\nnéPgêÁÓÄéÒP[A4Azg„ş¡…_..Ìaß%äw,ûÃÁóˆç„2g·f©La<ø(p½q¹Ì0Ã•zd€W#§øaİ’ÿ\\0^¥\\\\~óÓ\\Zóg ´0ü– ê`?ë¬ÙŒ\\\"ÙŒ=úÆÉzşÃÄ_yfá„8¼ñÿ\\0\\Z}=€CXIÊéı„³FÃsÁ ß]j®&s_UWQ.	aÈÉH óVÉ wÜ(th“Ë–U—-÷6 6R¥ğñr§šÓC¦ºãiaæ&hp½gÖ‚¢G7øèÜĞ«œZ:¾?SÃ÷ï¬#1ÖÈòÜ=©g8I O†ÅlJˆ’£ù	®\\0ƒt†}S%7ÏNM#=§:É²DØı@âˆF¢¤6u7¡\\0Dù-J<hYDÕËå‘}İWñJtÙnEFc¯ëˆ ĞØ®Ò0–Ïv.µÁ±!Rİc’$=’*v8/ª_¸ ÿ\\0€E \\0¯@\\rŸ<ª17+wÏ§wdA†´%­¾Åë¤!ËäÃ¨2z8ù8wËûú‡Iÿ\\0˜ë½ü™˜;î±ÏM…ôÔø6.Ïçıõa$Ú$n«bß?êË¡!¿½Šşë&åaö± ÓËê­*t*Š~¨#G´ÿ\\0-ÖÇÛß‡¥ÓİâËå ÿ\\0Õl.²n]b…]—´/8XŸšÄÅ-U…@r¢öÑ£åcb½îk\\\'pyS”ºCOŞ_ÀĞªMÒf*Ò„mÒ£İdï\\\"™\\\\ÂÔÅ¡ï4™æ75º£ŞYŞM›•\\ZL¤\\nÅ´æ\\Zş@»æÒUæêàC®}xå1`d¿\\Z€¼€ç˜‹ÏoİƒåŒwÒU^ßšóõN9`d9û4:àMvÅUï¸R}³ÀæÈµà­L3à•öQq+Œáxä—»!æH‹‚Õ1~Ï!¿/&Šï¤ïFÂˆræv@óEwjÀM€•½²s\\\\ºÇŸëB8Ì[;«À4µËíIsGYhñ‹G|nS†×åØM¼qƒÆSep*gºÌà‰É`ŒD]IÒ³‡^Ÿ•»j\\n‘²)	îïoßìdÄ”(wk&Ø%Ê“+0“÷axd\\r`AN&foMo\\\'BÔ L*A&ƒ\\\\Şİ¢iõÀkÆâln®z’€\\njÿ\\0ûÿ\\0‡5äï+Œäò\\n°H]0|²æ¸\\nd\\0Ï:lIE¾î}|Ïñû«@Ñ€5\\n˜åTQè1x)ü×„ğÁêˆºIwş´Ÿu)fŞ[´û|C÷øpÿ\\0<øB)oğ&§mşUwåöiV<¾+O®ïOLÇ›³±çhoEm¨İZDÛÎYŞ[t¸_Ë˜û–_O–Mf‡9BxÙí\\\\©»ü;c+ckì|¥ê\\n<óë¶ë*(«J=ß_`·ÃÔÿÄ\\0\\0\\0\\0\\0\\0\\0\\0 !10PA@`ÿÚ\\0?ÿ\\0Ú\\\"9%£ÿ\\0\\\"B	“øh„ ¼ÖˆB	~sø+•)KÃÿ\\0¿èCâ”o–¿†|ÂƒCíşsË©	›†»CúBÉD(•ßÉ1Î\\Z\\Zæ$O:!¥Ršz.bcDÄ?ƒz-H›N\\\'J10HA`Ä\\Zo‹qoÃĞµfİIh4µJeHZÈL“Ş‡ø®§4Ní)yBÔMdOzBèÅæ„hl¢/	,\\\\Lh_IÒ+à¾c „AâÈ%ù/¡ñAb/_“O’$$M¥/HA!¢âBcÊ]bl^âÑGàiŸ›>Äˆ>|#àcà³è_O’ø5pÜÂ¥#¬Aø7†±1ğg¼ÑcÊú|„ØM,ƒ.CàçÓè„ábâsF,üe}Áf¡ï	e.6—>QêÄ./)î=ÿ\\0ÜR—ó²Ô.…¢‹î¡{ø•‚£üÅè‚PX»zØŞÄ,=¼—Ñâ±ø&5¯†)	xA¡\\\"pºce)GÅˆFƒÔ1ü>€±ã>»HøÑöºcÔÆø±\\n ŞèÈ¢½èÆĞÿ\\0ğe÷)qPšCùøQYJZ2”lle)Q0™±VÇsø0¤ˆ_D¾ÙJ&&!ÿ\\0”£xÄ49Ê2X,¨G=Ğ¿ß¢Z1ˆõğxjBÃåÊR”¥)JR46Q¾R1DIáw‚1n/ğz\\\\Yæ!ÿ\\0¥(¡½>R	Qø1½’•¬kD&qöÔË!z?\\nR—K†ğQ…”oZå\\\"CÙ!6†\\rW°hzx-ƒÙL1F=m.>GŸH¯IYö5¹¨JŒ¥á}Å<#Û¤\\Zğ^e”€ü±ÀÔıàƒw‹àËXñ},%Ä{[ÑòQ?KÔÄl¾-K\\r\\\\Ø½ œrÒh³¡4$âo‰‰‰şø$Ñ­A«¼§…(”òèˆô$,Ç(›Z$œÛxñ	õJ1¶Ui\\rôã\\\\^ÒAã\\\'Êğ(úOº •àÔ{3ü<l^Š8xQ±¶NoóBáñtzÇ¼±<b”¥ÖÒ\\Zõ?\\\'ÃÖ¢´L£í0„R”¥ºüb&>Â+)Å+/WÓå.©Dø{LPFƒA ÙJS×K÷e.Q=oÑ!dÈ<6\\\\Rô²d!?øcdÂÒCÂÇÁş+ó\\\\=‡ÿÄ\\0 \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !10@AP`QÿÚ\\0?ÿ\\0JRÿ\\0%&!(„/ä´%şNğ„ã„ì\\\\`ÿ\\0ˆÇÍÿ\\0‹ğ©!­™QFÈ*Ùñ^4‰ŠQ‡‘è¬L&R—Q1£®(¥å9±²âUâB	#¹DN9ÆÇìóÅü€¼|DåJR‹Dì^Ä/5²”¼nQ2—Fê§¬£|!Q1mƒÏ£Ğ¾\\\'Á¡\\\"a¡¬]|Òêâ[hö%×\\\'ŞBEXšÙKòC¸¶ÏbóSæ¼HLh|Zë)~Ä\\Z;×\\n/Œ ±Œ¢x/‚cZÇF4^±J\\\"p™RŒyKğ„à£pnˆt€ñx1ã1”£/4ˆMD Ğí™‡‰—‹Á†ëÄ¾1ã(<ÄAâW“<Æ5•‹ÌÂX¸7Q·ù¼Å(ĞnŒKÇ˜·<„ÕˆyJ	ãÔ¢‰¯ĞØƒT!°nÇ†«ÒzdÉ©è‰¤ı	_g¡&Å‹±àbÄÄÊSÁ{j(şL£ ‚Á1¾t¢\\\'GG´¸\\\\ğ=[>ÏEÊ^cğ°„v5‰Ê„% —Å‚â…‹f5†QˆT JD-‹_É‹\\\" –<l˜ce£ˆ¥Ò¡¤ñ†\\\\d!	¤Å¨¼Âú˜«ÉXù1Gˆ„!AŸ$B˜Ş!z~Ì–R•¥(Ùl_B(2„Ñ\\\\(ñ.Ë‰D1—ŠÆtúÉ%›`ÃÜ*ÏxóPBbo›A,.1–‚ÈtgcĞ‘KÅ±»¬\\\'\\nâöÆ5IA±yMLAº‹J=7Bdâø<!ØAÈNf‘ „$l}\\n.ø ÂNH$,OƒÆ!çaĞ³\\\"†<x„„pö%İ\\nY”‡£H¨à¡¹bÆ œx¾„èÄA’\\ZËÖ1ˆ&ï±>†İĞÂÊ$DA0\\\\VR”lj‰Ğ›ë^\\r”b;ìAˆ!x?Dºàñ›ceJv\\Zƒ=gô<b\\Z§V0‡ì^!ü+‹(˜Æù¨¤¼xFÊT dzÆ.\\r}®MÁ<Nâ(ËËşƒTHk±†èc 0Ã\\n†ÏØ‡ò!51‰/Éâ†QcóJ2¦vbb59R—‰\\\'«…ÅØĞÅî,Å©5âv*‚%Í±¾TN\\\\ıeˆ’Êƒ,ş‹óbüH§xSÿÄ\\0)\\0\\0\\0\\0\\0!1AQa q‘0P¡@Á±ÑáğÿÚ\\0\\0\\0?ÿ\\0Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm³øÛm¿Ëm·ü e—766Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–‹,²ÏØØÙ0³ÎYe–Ye“ãì±¶Û|m¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûm¶Ûş\\\"m·ÆÛo¿Í¿íÏñoş.şYe–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–Ye–YøoÛi‹›0ÿ\\0–YeŸ‹6¿‘şëÕ‡nvğ´îç=ÃÖ6Wdt—|æ~gû„ÙäáPÆğBg™|²˜¯¤ƒ¯q\\rúÿ\\0È?²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,²Ë,³ÎYe–YábÙí„Ÿ£êºW›œ:}Àº€¾K,²Ë,²Ë,²Ïe–Ygû ¹cß·k­¹7%L‡{rgƒşÙ˜štmÿ\\0>¥Œœö¯å¯Ãse¬øm°‹ù½!Éá¸–?>åá0˜¡ıÙ%ß¸@Kğß£,|åŸä?Àÿ\\0¬\\r.LÛváû+}eÍfNó+{µ„¹2Ü·ù)³÷NŸ»zöØÔ¡¼Áÿ\\0TÏ¿©mêßòàÖ>	™¾šşíÄëc-§vĞ\\\'»>ìÃäë›•ÈÃóÀ=Ç[÷sû6ÕÑ»w×ùOö‹¬%¸)ê,†HùâVhe’‹.r#$ü]áµs9ø½á8œzº:$êëğB%4í#Vÿ\\0”´îàn„•C“×3™wÄÜ“‘\\r7näÏp¾¶Ö“–¨gêõ\\rmël(Pƒ6xİ=Yàÿ\\0}LÁu9%6>›İ¥ç–áçİÁüYñÉlvÚ	ñ‘çÆoÎ1å>„…‰ÌF\\\\$DÑ9N9cN÷wïrÓô&»z8‡«FxËI±9Ùœ#‘ğXÛ¹fÀõÜ/h/«8Ó~\\\'Cp€ôÀÎ‰¯<ÂØ÷G$qÉgÊ!ñïZ#a!§»1xãÆãâ¿¨ª	îîÌæe°Œ¤\\\'u‡g1¤í\\r}=’u¢à!€z³èY.î2ár±bßK9é¿ıc`˜\\r¸îğš¼Ï£İ–³Y5ÌY¸Û™ı¯t+ïHÔ-:bö–çŞíænA/´4·—ß=Ãˆ>ÍmñÕËĞw/Üà\\r&ZÂíŞ}Â±©¢õ@avç·K:š€½\\r™E­¾¤s—èıÉyzm\\0Í²OGyjTï(ãÄ’Ù‚[¿ÅËÖú8ù]‰Ÿikûf÷)®¿Mü›;j_7pâeØN²PšÂ,ãÔÄĞÉ¸ğí}¬Óäz¸`^4»ÇyÖl½ò½BÔ\\nÏr´!1ÙÍã[4\\\\FŞä7£q»iÜqá°ü³_0»rºµ1¶)ËÕœÎo¾ÒBqq.e¿şÔG\\\'v#è‘½/rWÆq.8~¨Âx£”DÁ/¥šurn£¨é?6½jÕ¬Mƒ{ºl{š™Û qDx†<]1øm¶ÛşP²Ğí•%ŸÒôI`’^a†{´\\\'/É.xºäœø}Ù°×8·şXÜÅş.¤ş¤0°õœÄèÿ\\0©.ùŸ›ıHvæºBEÉMå—C	8\\\"ró}wMi±õ=ÿ\\0ƒ8ÛË|ï0qáò‘ñëÿ\\0\\\'LÎrû0ÉfáÚ+È$3åÌmóğPæÍê×¨®+5«”Ò{†mğœğ=€Û|K^¬{£.éRÎ1÷3ÁKp”Ş·OêÃ×$@ÈöVUŸˆê³ĞÚ!\\\"8¶Û\\r›XMÓ(í»øoãŞÿ\\0,·ÎşO_ø]øË’ÒÔ†ÙÑšõlã¶ex`÷XVÓ5Ç¹-xLNIÛƒŸ<¶çFüJk¼Ê{Iv ¸w´X[Â\\0ûµÜ‹e%eÏÎî]0Ë‰­ªOÜ¦?¶3†zÄî¿Ë ÀşíœWãnDŸlgæ§+”Ø9æÄymç\\rØÛÉ±ÎaËÁø­4…öYäü¿ñP§s!`¹ÉìL¸ç[?VßâCäË…lm¢¶À®77<Ç®f`ö¹÷’)Ì4B;9ç-?HÊsÓ1\\\'e¡ä»°óK©¨v¡ş\\\'ÔæúšÎß¨‡\\0ıHRW*·|ÛáòCÜ_]Ï^ÿ\\0Àb	“éÑn†Hâs(Î\\rˆæ£Å˜wÃÿ\\0Œ¸¶N-` ì¹\\rØ±ØÎ“ànXcò->Ë|ßÑ8:´zË—¿SÓÃ•‹cëË\\\'ÄÊYÿ\\0¦#:Òæ~ …‘S¸×Ÿã-ûƒHëñÈ€ß¯ÍñÈzÂøf4á÷àb_}÷Yù€Ü\\\\\\\\\\\\‹?§\\r¾pz²àXhupş%Ic÷nsÍÃÔ] Ø¸\\\'íY<yú¿[ô°zƒâ‹?FóŒóû“O·rf˜GÅëñË,³êRq3Ãm³¼à:üfË,µ‚q’®æ£cƒv9¥¯‹g¸-˜ûGÚ%·¸owê´}Û‘¯9÷oM6K·Ô8h=BÉÉ2FÎ¸\\\'ÂÇçfRæıÚù“½‘¸óßöÉåÜlø&-¬P¤1?ÃÍeßàÙ\\\'>=ÿ\\0Á“„§½:Ød§«ßh÷+êçpd¼†\\ZàŸeã¿d/˜İÖÂÃÆÿ\\0qÓÌ–ı¤á>\\0±ó$îÕH‘qŒ®öàs%–1;æĞËBÆ·|J2xp“#Á\\rˆ$> Ä2’\\\'¬æ>£š\\\\ËAëxó¶Ûm·ò6yñÙùú|	ß›c¬Oó?Üñ\\0{l:[’õ\\0sğm=é­Ş	úô#øHgµ¯…ú,Q=AvÌ-šùaî$\\\\°4Y’Â¿1|\\\'R–Ç?7\\\'ê$á‡™‡HfF	v1ÔL@X˜2oc¨æÌ`º±2¢oø}Ş§Ãå»CüMÕ÷rƒ¨î\\\'Â«2Ñ\\Z,×ÍøØã³c‡Az½ÆgV«°€Ş..¿%ˆ,×–c&8>ç~{%/É|@Ş—ÅŞ3ˆg\\rèl»æõq „ëŸ˜ácìÒõãÀ|{.PAñ#w»Qnç¿À,²Ùmğş£øoà°³q×\\\"“‹–FO¾c®6>%Í—¯H˜ÉN~,¿o³‹ÜyM¸,·7†bµµ»İÃ0GÇ6âıÇ`ş’ÏîİÇöJè\\\\`}\\\'Õ“ù[±rwÇ0±ÅMmÍ\\\'{}¸“lâÒ|paÓÎÃb_¶=©èº|Ævm­¯ø{Ëmü€ò°Fñz¸¼Zc¼=’%Dà$ì;……£ÑÃ…ËÀPgƒ2N`\\\\@û·dRáúeìæİlæÈŠp“ı‚Aà?»q<ñ)`Á«OÜ?MıÎPoFŒ­©.øeÉ`9×<º<s.ã‹f½Ãz”ğİøÒ<vY‘bõbsmê\\\"úe·Ï—‰ë{÷OË\\\'ÂÂ9]W¿ø4;¹ŒÈEùˆk23V(º¸É¿ÿ\\0átœ‰›fØõsº]à“›-¿”qíø<Ã6X6ôÇ™ïl¡ëÜ`á™1%Æ|@»÷(£Ã’¢CÉıH‡2kdV\\\\¦æG±…Â8†½ÈÉÍée{¸ù`¶nS¡ô[\\\'œ¢Ñó(ƒÖC¶Ûm¶ŸšYÑuÏ=¡ƒWsy#×2:óv¤>ÛI§/Ü‹FÆÍÿ\\0»¶i‹s>9»Oî…u¿»îÿ\\0û·Ñ’úI€èÌ¿ôíÄ.£ Àzg/´\\rÙ6C‹pxSês—XX‡–ü‡>çíµ>¬—Ğc0}G‹5ƒÁÔ¹n÷3(<Ú|X|–|ÛénÜÜóÎ1l;m™Ä´<Ü|]<Ÿ‚á>Cñ|áC£ùUÎğ¸xûÂGÃ)Ñö¹óÆ~¾£ÿ\\0Å‚nX^ë?)ğp?vÈ\\0û‘¾?wÿ\\0lİ³ù{ó1y…uæíd#ıÚı™‹r¯õ©r‰Ë-¸C’ctØlr÷sÎ\\ZÃ\\\\üø17Ãá!‘]%Ä•m¶z]ïXÿ\\0|ãƒÒİÌñîî#CŸ\\\'_‡OğIñ|>6|‹»†Šèº¾aœ?©Ú\\r>$8êhŞ²ÊV—cêéÀ?SŸİ¡ô\\\\˜õÉr?Ãv\\rÔäD€Ì‹Ü|@İ‚ó¶aÄm\\rX¸-_9Ÿ{$÷}!º[ÎO–òø†v>ÿ\\0~>‹ªK²ï}C8üFğ’K%„ö{¸Äœ¾;t&İ«ôÎx@ğÈ»+C—¸’cË%–yçå¥ƒ“ PîcÓÅ¤;>,Cm‡°@nôn†˜7~ Yø¶yb\\rM	ÿ\\0Ù#Óû”ñ—îäG?vÿ\\0díMœqú“ú®Š¿W®Ä¥¦oV˜qËE}O£2UŞg94û‡PAÆçm†ô ÁZxÓÈä@ÂvA\\\"Ëğ êìelÛ–sÀ0†ug„ˆ/á¹\\\\Ç´iÀÄ=Fó±Zî¿\\\'<È±Ñ°ÓĞŠğ›=²Î§£&7¦ß¬‡Sft=Ú8œOÀÿ\\0wÉîêTÿ\\0d@0ıÁç?îåïæß/ÙÇ8çivæÁ§á—?îÎÑîş$|ºÏ\\\\#XÆìğ»iÅÈ÷qñaÖé´°ur´;œØ]X¬nwîÙÂ;r_µ„m†ék°ù–¶6ÍÈ„S‹œ\\r¹„Î¤°.éù6øYqã<¼zİñi‚ÒÏ™÷X´yÉ:¾âjŞ­HnÃ¯·7IòÆ–õ%9\\\'ã”:$låç´ãp‡zw?æ\\\\‚l»İ’æ5«ÔûÕ=Z?òä]Dx³v m™Õ©…ƒ·déõb}­›\\r1Ø—‚}ÁÀ–—¸mŒ\\Z;æxƒ<hvik\\0$şÒKÖ~¶NÖ?|v<ïà±Ë<K#‹]&=n:·N8±VQÔîK[7Ù.Ü8</«$–ßVó¸E¨);¸²Àşíµk1iÔ˜Z1;sÒÕàóáigrˆPCÀ9árQqñi»bÛgWP}²ã½[‹iògw\\r#:·Ã~íû–|Y9tœw·Pó)‡ÜáKµãFTë±P-Æİƒ>ìñê|Ççîô“{br]és6ñz™HìN !œõbÎcŞ[¬æwgà“ÖÚú…òRYÓˆM23`‹¥˜¹û9sVHÜ£­‡§©5ñì-Ÿ‚Ò8ã€K	j½­AÉİ˜xğ6,{L¼3œ¶IÓ2âËF¬.{RvoÔ-´7«©<Ì›ÍjÍ…0!{€¹» @7±oâõ{ÿ\\0éRé»n›a»êoÌ6¨¿ydëßWXÍ½Z1ÙûgG»]æÅf†ƒ“%qæajÌ;[¿©\\0Ã±æfüK]áñ„º‘ipåÌ?…‡Râ`Lw\\\\ö1ù½·» nêÙñ¸†@¿¯	Æi»¬»/†-Í±Ó‰øíğ8º\\\'3‹`]Ø~$6ÙåÅ2®ï¨\\rş\\\'‹#ó÷vğ-–jfgÜÛd{ØÎ2C=œX}¼¡àŒZÉn.™às¼ø@à=ÊÃ1êDÅwƒ¬/ß(¸\\Z\\\'Ô¶^1…ÇüÌË VßJ,¹ŒHĞ2àí‡/‹xòYÍFåè”BÇy%8Œ#Ï¸ÄÜÜĞ<NSnâëmÂë”Âà˜z\\r9ƒv‹ó8/Ì(É«¾­ñ²7Òí<\\\\­×«#ò;¸Eš;/Ä1¯ FÆ1Éj²Ì İ“¥aiŞÏ_©âÛ`3mÏ‘eğµh.¾c\\\\Û5w]â5Á‚íÒ0¹¢OËÒ9‰VÀÖØß’Rr‹\\\"Nî°¡Ì!8¾FÆvæ”ˆsÅœş³¾ ê5ÆZØÆ!¯ÄDÈ\\\'!ÿ\\0ÑæAör‘y´a÷;Äœº\\\\<üÄ¸KI¶.vÆÇEø€	Õˆ#úoñg¹é·s<\\rËwÀãgñ\\\"ÎË\\räüNzïÌj³›3Ç^;I¥¼]»œ½§²XsÕ¹«›Ç7ò\\\\B)ÉÅˆ|®tä»¢æ./æ\\\\_«C“:>ã\\\"õweÇ—O¶‰´³ÒÈ£GMÏÔpğÆö|İ¯e@\\râRß©\\0,%mcœ—È¹R‡©ƒ•Ú)´µŞÇqÓÁåüwÃá¹’Ğ`·ÊC¤ø¿H…²XüLÊ%ÃÒìù_ËÂ×“m¼‰ƒ”D*s?nÄ>`O[8Ü?[‰€:àLË–D¬q^O„\\0[L^¤vcÂãÀ­	êïsğà\\\\Sà6‹&^­ıs\\\"ä¿…9uÃ˜§ŸŸŒ³˜$ô³	˜6q±GelsÖßÇ—ñØéº²8ØæìÌr‹kˆÀ7‰[“%íƒvGÉâ¹	íàM]õ8ê@r\\\'ÅÃ¹¾¦w÷ñr+!“·îä›|{»®[,Êøiâåc­¶%…É.Ã†ánâì]v}äsÄq„ı< ˆó<5êÉ<‹Ì‘vÜ±õrÑş,I;òìˆoÇ“òøw&Ê¼‡Yh¶qéÛkÏyŸC¨4yHv»!Æ|ÏÁ»ê~™cÔûò\\\\¬ägîkZû„ò¡ëÑ\\\'yc“ƒŸ»6pQ\\\'e]G¨Æã·%¡=¸²¼Ÿ+y˜ğq#İ†0Lƒ!œVí‹\\\\Èî\\\\ã¥ ´G‡Ä-ğ	c8Û!·„\\rêß?sÖÀg»bç}@†´nS¯—^>I)üµº˜O@m”¹KÚ»†\\rï üÌåz2rT¦lNï0öˆ6&\\n›òŸK‘[_d¬}Úƒ±VC°£Ø¼È:.ŸÅ.ZEÜ³Ë¤~âáÚöş$¸0í€G=Op‘!ÕÖ@™;7‹gfbIlŠÃÜ{œz‡¨|8/™iäˆ›’µ}Ş>	n§[ƒ\\n´q5Ê6Ïi3_»ZšÊÌâB\\\"™\\Zøƒ$®oÉêÁ×‚Òİ„ãA± u[Ü\\0ç2ØcŸëÁ4´¹m¤ş Fİ\\0ä›¤ñÂÏıİ½äƒIá{A0şã	¯Òs‹&¥œæÈ¶,ö\\r_¸ÓæryŒt^òIĞıE9Ì„í-uÔ­@M¹“‡$tÈÃnqdsÔ,´Ç+˜0ÂÉá/3)OvÉñëÆ²Ùsaáéló¯BØÉß7Ç·hÀ›Ü:sò±ó¿(A\\rr†Î¢ÚsÍî“ƒ×Ô‹Şå·‰t†õ»õ¹Œç²$çÄN%Ä¶Ç†âãâÛÚb·lÉk×QiÃnm¾¬˜wCúf†dzüBˆüä—]Z\\r	o]Ï»|Qø’\\0Fv´ÀCŸP<8É™@øfdú’¬wWâ0ûñ—°ÉûG+S\\\"Yx³–sÃçÀqT6Û+º\\\\>P¥Ä¬ğL6Å\\02Êœ·0Ø#ãQÄVï¹2u§·–Ë`,–ñü,´NßR:€qãæfäú&¥áñré\\rp9…‹ŠL7É\\\'+rÛÙ7¼…Î	vÛº¡qñ.©ñpÕ¼\\0A²òÛ¡G°Q1ïnKŞ:Ç†4çaıÃ¹!÷cò´ğäp^¼Ë²;îqÄ;k.FÂ8^¥†ÜÛvu\\\\í’ş\\nu.Ruáä¶§ÉgÈ\\\'€nıÏeÅxÒÑ}\\\\ÍcÄ.Ï×ñq\\0³d¯‹Œ+	|YÎüØ´M-¡q!ÇÚìCüşLu¶Ş÷5x¾¾\\\\G8l¿Rö‚Èú¹r\\\\0‡åÇ´ı@öØêÀ<7óa­¦2D7¹Ë@üÎ‚ï“njz<ÙuMúBi-º°ù¸N5ğ1	ã.lÛ‚øl74áãÀç+™{’yJÙêÙ|¼ÀoîÛ«‘ âNì\\\\Mêz2«Ñ“îVÜİBX¸Jx?,É¸.>„ÅçqwÎY¦¹¹±¡Â=%–ÃåX\\ZØ“Œ)×¾\\0`µµf6Tn2€zO4r@â;,Õ/dà×. ÕÜñŒû»î‘<şdFÿ\\0s¦ï\\röMÎtğ»h”~­Ç—TˆóŸ\\Zi=ËfS‹¿€ñ\\\'¥Òcavœ¬³».x+3%¡\\nò„ÉsÂº:”Ã¸8#O>3c&K{œÎ¾n|sH¥Ér¤GÔB±l^}[ ÂßÇƒõc¼;‹~ãü‘mi ƒêøùh{K¸P{’éHÜÉ†}Ÿr=…—;w¯6Éîu1ê7;›íğí{´Ùx;~¯–Ùqî57»ï¹œ3ÑÆÙñÓ1Ì²yJé\\\'ãÂæû#^í™0İ„{š7//µÂãÊş	<.\\nìWT}bùŸ\\0ï`»ÁO‘·‡‹v<éõıÜàrŒ?¹rq	Š\\\\)r„¹ àù‚TÂĞà}IûSYWsyÎ¬ıÿ\\0Ùo¹úCa^åÍÃ3åÓpÛq‚¯âzx•¾;%©\\\"uÔõ²ÂÓæí¾÷k¬Åu@ä¸ã’\\\'İÌêpÌasÌÓi.\\\"ä\\\\£»{x!	 æ<_¢Y‹ßÔ¤ö\\\\ºñ?øKVÙâY6BÎœƒÎÆŒ&@oî}•Uuu)í´ôÛ—ïûr:>ãI»êÿ\\0s÷·9êÉ“Ô£¿œøêÅó»\\r²ñrÏvø-.Ò‡†ø9ã‡„áÇs:.^3Íp\\0=\\\'®¤áÂ{Ëdá\\\'¦³Äm©-:”åàâÃÃÊO€‰°Ş®\\0XİvEís)§D`{oiÌÌ×°ö0ñ9z…“$ïÜİsî,Ì‘\\\\âÔÒçğKöÛ®‰êÓÛ°<-ë^ïì¾üO>ğfi]Ûoà±Â[Í¬#Áeß‰ç“Ë7/\\\\»pg…ŠóúŒgl=ÆîV¡«Q{ëˆœZ”¶nÎAÇİµÜ$ÏqÔf7;,€æVîõ\\\"‡¶7DÇÅÁ\\nŸr)L÷;¤1½é/è_)áò]#¦¢ÂçÈcyûš*­Úè…Ç™÷bÕüY9ÉiÜó\\\"K+æ÷#ÚÉ`ÙífÃ“\\r­†àæËIdÇJæ-±ŸrÏÄø\\Zù–É<ÆÃÅÛn@\\\\‡Ã¸q°º7-œ_r3›”xcyuoq`œÔç÷ëşÂŸı£œã~àï8¿~=ÀLÃ÷/Õ<Få¶\\0rRÏp‹¿ä‚ÕÄì3ºx#+Ÿr×/éá¸^á–ŒÒIğ¦=ËÍÌİY‰Â\\\\‘L±Ë4#Æ0ÛùNÁrß2Ó‹Ún–\\\\»±ñbË®/u<¯£³$pÛg-våuwrˆ\\rîÒÏÑd=¶Ÿ×›O´Ä_‰Ì¸ŸüËşoéôÌ]ncY#å™Å¶zãPÛN\\\"6væ¸\\\\Ün^§c‘­Æ•lFè\\\\ÌwÔ	Åœø	]üqFøÎ.ÓÕ„ø<´ğb]ñ‡™‹±£İ“9`àÍİ’Ø6îÉ/j(ñ?X§S«få:K­t b?VFÄ<ãÁä÷›\\nÄ÷—6\\\\ä‡ÔğoDş°²¨qwq-\\\\Ó=J0l‡‡%º<XçÀ7JolW¥Ã×’›rÇc(.G¹x“ïÇ¶Ë­\\\\CçÌ\\\'>[fıO.î£fgã	êQ%·Nl:€<êÃp\\\\¥ÃfE‹óÍ±àÙ¬4Ü6ĞûÙ=ØÁã ²^\\\'Ó›î†[w»%—|q–•ßPxÌâ<Mî|LêÛ{ÖÙ‹l„aÔ]6ä>æqº	7›àíÑ“G}]!Ìš™oW°w=Ûfıàd§VºŞ¦˜¼vá÷gß¹Ù™l¶Ùx‡z”\\\'¾mŒ=Ú=Êøõ—‹ßSëahnAgH—#‚¾§\\\'#yø´é]bitVgPë”¹½Úlb{|‡ŒÛ\\0›ÿ\\0–WÜ>EºmÀAÅÌÉPú|Z3´dÉaV.ô6ìfe\\\'„eù†ö˜>ì	z³¼k]_u:˜›½1§K—)AŒ¾ ØùAÊŞ,ğƒˆè[:l½cÜˆàLÕpEZîà³ÍêÔ¨l²ä½ˆáå¼ä:ukˆ³ÙÖ-»Q¹#È¹ÌßÅ³@ÔâÍ¢\\\'@ciY„„z×Ô°m2øeÎ0hÚ³ÎÀ\\\\LÆSğƒæ_£ Ÿil¹“›g/©Çğ‰Ÿ\\nË˜2qcwä¡9=Ú!âĞçæÌüÆ×L-æÂÚûz—!…ÙÂ	«4ŒÓŒ9½wÁì’ù[o‚î^­d <\\ré°z‹}­œÖgÃƒûœ¹6fDêßBæHÀï‡qQ2B\\0~,Uí˜°4÷Ì\\ZÚ7){½ ÏÜ5ÉŞ­m—„ îú8´õfC“ñ–§.å#FÖ3YH\\Z•?¥xø„ÎVÊr!\\0fxP8KÈ2Õ×wÍ±Å•°¹‚0ß…—W0Œ‰×í	”İx‹mğüÆ¤4>Éº/.÷/	p|I o1Èü\\\"M¦GÅh^—¹üLäŠùZ£Á´z”ø	°c[_+VE›ïğƒ`âw×»[~e\\\"Rÿ\\0ô\\\"ÏQpg2„œjŞÛPÂ°ÂÏ<eÂaıË¯`î7©àñ<øõĞ„öCxğeí„·Ã<;.&dww]÷i»‰UŸ«G$–¤øÆ],úŠXŒc\\nO^|¥à¸®^¬ƒÁ,‡ÒÖVùÅŸ\\\"ÅÖ»ğñáÈ‰OpÆ’lçÎxM®åÒ¶Eš†ì*9Œ_vçê9º¢^pvËˆ}XÖKaiK´hlîËí¬ãb\\\'¤FdpwÜ[Ä;âÏ^X$Î1ù…`ãÜgs„ù:ŒË.¹ç[ş+.PƒF\\\'ÈçÊd8 ‚Ë´;óàr:æËm»˜µ(~\\rÌŸ\\\"âÛ·]Ü¥ó?ıä®g;¹Ç¼ğ€†Ûú®°)ñ:EÕ€İ´9ó-rÜ–¾ì¼d¸„ğ×¾–Æd?Äh> ë²S˜ú²9$)M³Y8xkàm>$î7Ÿÿ\\0Êİõa2aıÛ©tğN±êÀ>	±p°²ËŒÌuø\\r-¢Ã	÷ø[“\\0Ã™^Î¡Êíx{Šß\\\'iîÙæm±ğMùfrƒêYÂë!Ÿµ‰OÔw²ëø¸†|ËéB-æ|¤\\\\á¾_®Û\\\'Ä,ãq6\\\'\\\"qëË/ØÒ%uçÔË•7ÎvÙ]Á¿R·mÂ2PàêÛ‡=Ë‘÷rcÃÍ’~ëÊ~1ÖpêÚ^ç‰‡/õ²âË<dÂïàx‹“<6OåğYàğC]\\\'Í“íú—\\\'|ñ¡ëÊs>¥–SÃö“¸gWª5Ó~àœK¯KyÃkI˜@(ã.¡¹Ì]7aîfksÏ©äZï„˜9$ls!ÃÔ‚|‹ÌÅğ8»P\\rÄ.¬[­Ğï¨G±˜Í‘‚Ñë‰wö¹.ç›‰s2C¤£ÃoYœí“êZÙ¾H÷p¹!Ò\\\'ÆÄ7»Áäå`k÷&~>,ÓåêëGê.eo–î^e´IB{,:-E«GêÁ(¸?vÖ¡òÜ+~20}­†cã2Á}@Äÿ\\0™uYvÛ,AÎİ$¼fÏ$ñ<ÙG_QÅåñam®H“5µœm’/êÂ¯õJ!Ô\\Z#¿P¥89æÛ™Å¡æÑ~çY0ßˆ¸œıÄ_†b™…ËÅÌüäôıÜm°ìó¶\\rÓlõàİeêã#À0²Üög¨5“:ğK,ı¤°>¿P#V@vİ°÷p‰rİ˜p·µËŸ	³¯>RÀ@öárF~îg;øµ8ƒ#lkfÁÕø	v­Èøğ®9â\\r8“%–pî+y2•¨áòâYÅ£äâQy•…Q<ÈÜ2eJ£˜—Ä‡©^O1.%Cn	ğ·\\\'V6ÜXŞ.LÕ»‡œğ[sŞäë¿@ØÖ»¾,Ãk2ì8ã/q”uv÷¾=Ï>Vz#‹“²áÎÌ3Óg³Ä‡Ÿ·ÂÂåG	 Œğ“p—ÃêEw¿`yocµ‚oræ`Á·ø‰æD€W¾è÷\\ZkDÇxYæâRT»yæÜñÆÊÑ:°Ü‡°›^2í0»œÀiË—3»VwÅÿ\\0†ó{À»m§N8>.!v\\r´oÔ¼âÜç6{|ïƒÆøtÂ¸^ãî¾éÒ}³ò$<)/ÛşODÌiöLœ³îYvM·©¾]‘y€Mn%ÏÇ$‰Ãû0k\\\'c=Âã. úŞâéË÷hî–(è·¬;¿;—¯[™>Kƒ¼Çï7=ƒ¯r¯Pœv\\\\şH	Ëzæ>İ]NÈŒ:Øï>–¡x‘ŒUM-	„{¡îL¹)ÕÍ=È¦“ŸRcÀD1ÍîlüIğD9áü6İğ²Û|ûğØÄ“†Ì—‰wÇgní¿\\r	6Á‚~©.p(¨Ğ2rÙ”áî?°èŸp€İ…Ä81Ó(¼ÃzæÅÕ‘‹ÍƒÅº­¹rº§q9‹‚Å.`îœÌè\\rHqÚşÀFtÉû³LÙ=µ¶]ºˆr&d‰ÑÔhäÇï†\\r‰Nû¸46ö„1KŞHüYø‹,ñ‡±á.¢Ëmó·3áëgÂTI—ˆIp[¤IäÙñÌ/f]xe}HğN{‰ ç­‰ä?s%İ€MO›KL;~‹ÌŞRÇNõ<ÊŞ\\\"º‡£épF]½¿Q5ÛV[,‡­!ÌÈmR|k2Ãbsr¸ßÜÓf¨Â‘rÈjlÍ¨0DÏæâãêzüwÂƒfÃ\\\"êÖİüƒÇSÏ‚0æ|½BÛuOrg©‡\\r¥lÜ#zZ£(KßÆZxq%³Œ¹eÇ6\\Zoñ3©®fa¸”õÿ\\0$G¶FÔº|ë7/RÈG#8o«wÀæÅú\\\\†Õ5‰ÆãÂ3\\ZæCˆxx›-—¯l{g»:Ów#\\\'Ú½øm¹Nô¹|í±dw,ùÈ‹ÔZxoŸQÙp›g©ïZ°g“{bèÏ1÷ärÚãˆIym5‰A~ag,nqÓ„ğıŞ“a8TïW5¿Y³r–Í…Ê~!«ÚáÀÖGm z6%#¿íÅË=œWÇâvâxí¿èÉá<pY%eÓ/WI qg…™<<àÀ\\\'g‚†j9‹<4i“gÙMD„ş­ÚoÔèğ~£V:<ıÜºFQèş%g_òpÑêiÁË%§…¥“_q˜`Û¨—\\rµ–ëÆÀİô’w=HTlŞäŒÙ-Ûn[‡¶rÚá?ş#’ExÉy¹Y	rQã¯/)\\\'¨êöQŸR=x?Ü–.÷>yq3ˆ3uâ)ïagV¿¯ó ÿ\\00TYÈDFLK›—?ô6Òà›ŸÓŸ0Š8Û¥‰„çêÅ©gÑ8“›¯¯¹VXôQÁ‚u°ïÙríÚm…q¹xÆ“ô‘\\0ñ Ù|xr†\\\\•Ÿ‡5a¹\\\'‡,~gì%‘wcí6ıCÜp¡½ÎGÊënÜ|xŒ‰8Â>EÓ¾íøs<>«›­o‹]hæ1öğÇÿ\\0AÚ¬k%ò?V¾ø”‚œıA%ƒã@\\\"àx°çÜ‚$ØÌÉØ,Å]Xş¤yú„=ã\\0p€À,ˆ9l¦œ\\\\<€·uÅ¯öÛmÔµ.„U·ÁmGÄ9-Çİ—\\\'»hêWh7©+-Ñ<ùÛ!ñ“Ó[>m$’¬pOWn³ËqnZ‡˜òì~Ky;“{K¶w3Yqú”äos|1w½âäá§Ú=;zÉ»2È™—“ñ%vXş`\\\'³›UiõSÒü\\\\ç	¦HNó1w¼µ—K˜v:³Ï%®ñĞDXØ?ßŒ 2´œù;@vˆ·˜ë³ŞQT›\\n\\\\ÇÔwaçy“;xŸ»çd®tÛ£Yp#”ºGô]İS¾69aì>Ø2>&%×Ä¦µ—(‘ñböce1<ä¤Óí³›Æ\\\\‰W\\0S~­“‘ø’ğå¦\\\"{µ°ú-œÁ¿vÙ‹—§.$p[YÏ‚K™´ş&›VÃ±zŠeŒZùxkó\\r¶ò@OsÖCÌõ±®ì Åûóš[®gJĞX­ô2c	ıO´?‹Oõ{Ëcí!š°íÜÃ„‰¸Ã¾.>cÁÅÉO†|kq~å¾³÷<¤îcr;İüæ{±Ø<.\\0ğ\\\\â\\\"úŒ˜=áb]Ÿ»€”fJs…D&í—<Ü&ÚOsòNqêáÂk¾-$îÍ~¬9oÜ!!#œ@ 8Jûâ|íDoRÚâí»lœñÂ{”dç¯™š¤G\\\'•ÂÃŠnYŒîf@Åºş,=?«Ñ?¨ß§õrvÌ|ßÍ#êÈnÖAgG,á-;!74Ûc—û»?Šáh‘åw%ÉáÓ å“º³»ßîĞÍ³ô³†ì= “êDéswæ.`€îÉa{Œ\\0.iCídtø	âwîú0·˜q˜:ÄÈÌ³¹“ÄÌWçeºÊÍ³ÆğEa)uaaqòùå0ãvnÄ:ú¾ºÛĞù`[$è—÷/ÍŸFØû¿{[ºÃ8Ô€j1‹dLÃÑßrÎq³æ\\0õ;¸¹aºãâY~%‡Èr]ğ{‡¡Ëñ&7}²Ûà:š6I4ŸW¤u¹‹Öû§ƒÇü1svÿ\\0Òâ§ÕÂN¹ê4^¾%ïáaOıJ¶+™dmÅ“¾—8»óŒ5¯›¯ÁårÛî%4áæ<Ì\\\\IĞºü[{Ä³¨RíPéÍ¸¹<°ìİº|ÌÒñ)‹ŠŠödL|Ç±Ëf0çÜÃ$€d=^œ¿6Iuá	5ßÄ\\r·™æÇÁ..ÉğEfA/åÏW6Ìõb\\rbqÍÃ‡¸ñƒÇ9–êÌu°vŠdäÒeÒ,òZãÈH]—!Ï~ü¾¼eÉÎx%†}Çvø;z\\\":™É¥¸Ì·¥Ÿ¹ÈªJ¦cÌ`Œ¹.}@.‡»£Àøµf’>n_Ù—Ø›³PÎ®t-O9p¹LÆWÏ†Où—=øv)¹X„ü¬q¬ñ¼Imú­3;nt<—ô¶í³àğœHc>Éñ]Ùl8\\\\f£¶‚şû,—Õ’g^>íÚ{ü6ÌßÍ–ÙÁfAÄLÀz”å»6÷ÏpÜ“­:¹L“S%®¹Ë†<ğ¬¿²¿şMÁœ¨€ğ\\rº™¤rm–Iã§‡¿ÿÙ','image/jpeg'),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL),(18,NULL,NULL),(19,NULL,NULL),(20,NULL,NULL),(21,NULL,NULL),(22,NULL,NULL),(23,NULL,NULL),(24,NULL,NULL),(25,NULL,NULL),(26,NULL,NULL),(27,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\06Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0g\\0T_jk48PYzts5Jvwaa54P\\0ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0\\0ğ\\0ğ\\0\\\"\\0ÿÄ\\0\\Z\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0°tÓ.oi°±’7HÀÄÆ}®ÌİÈôÃg\\\'L‹¡y©çIÖ6S(K®\\\'½>f¶eÏE¯z|æ¸öòåOq•GDÒ¡Ch¤–c`¢§U¼@w#h\\0#ği(ÁLÖ}ŞPVù 4PÖÏ°¾QàÄ]¸ûkZ×k^\\n\\nQxiY0\\\\š`´êêö^Úè&ëI|ÊNZŒáé‹Jõ6»®8ÒãLùs…>W^N—µ·\\\"X0\\\"|+Tù;5´0ó¤á¨QÏˆş}vÊô}¿8@Î‡²Ã;—YÏ%ô›5Ü%%}G8¼Ó‰¸qœµS€à×‰èÍtô–óšJL1Vˆ‰¡’gGÌ»øÕz¡Í•k¡¹9!—½„¨Í¥­­dIËå<•C–NÂfˆ2gQR\\\\©\\\' ºj¶ß•·¡¦i\\rÛ^Iœušİ5¯è‡9Xİ4òÌ}ñ_W—¶ª»wã£ë®T h¹‰É ß\\Z±¼bÔ=:ò=pàÆkÊ•<\\Z7¹#£+s1Ô{¢bkeÍ\\\'!‘\\néªƒq^J‚¿nüo;0òê(Âzy(.·(§ÃÙzr€£B ºîÖ7*Mt´§ĞÊøf2·<Ù–>¤˜l,¶É’c=5ÇİzÅİ»ü”l˜ù7óÍ*µPºÉX‚%‚G,ˆl¤Õì±–^«ôîe‹Ù[¹/7˜Ã4.EüË`ˆ±}^mRìÏ‡5¼ó›¤Ò¦ÕŠù$ÊÜlĞÌ\\r¡e~‹KPé2ó!Kj+S^ƒœZ\\\\R­éifj›b;•²@ë\\ZÍayĞRpÓ²Dåë\\ZhÕ•…Ç8\\0ÖG±¦º|×z\\nähQas\\rÇ2nUjô®dzx€Ñ€”¯d4“ví:-)sW8ÑÉÎ196+K«\\\\yç\\Zé¸—£S¼¸K\\\\©ú5Ö¥rÒ²\\\'ÄŸÏ(E¼Œäœ–¦>Ås†ÁêVç &¶ÆZØv	––ál5hÆ›Ï»Ôa–Ât;[á­ê†u‘ôU·‰ô8~È¬Ï3íğÁ¼ŸoäAª²Ad9|`pº‰6÷™ödùİ5ıA~+H=u*,7+3/jªÑày÷ƒ«~—^¾†=MvóÖóœg«Ÿufëy4%ûäÑ7qıŞb>€N«›\\0\\Z©ç† ÁìsÉ:?ÿÄ\\0,\\0\\0\\0\\0\\0\\0\\0! 1A\\\"#25$346ÿÚ\\0\\0\\0¬_‘xb±—-1\\ZÜ”Ã	’Õ?–Û.Ç$åSk»!ò%ƒYº²(¿UU¹/áÈª«ê\\rU1ùd=˜È~¥1ÇšÜ5³–H½ªÊÕ?Um®2+LVÍCb:¶Uâ½øÖã×Ó}dåTr®Í´YÓoÿ\\0ÎäÕ]½7+N§Ôf¯RPï :7JELÌaEøês.c›F]>‹~%xÕÖqºui^}T¥¡¬_ÑØœ¦*ÌúÕú†pßNş¿éş˜¡sT¶²ºíéUU]C=W2uOúXyQNÏJ0ëÉ¬t‹r*=ìÄÈÃCN[dk©geS~GÔÔ:nõÑ—Ó®®œÜlš1\\\'Q¹n¦Ü0qmÅÂ\\\\EáM7ÕFL¾ªò+ÎÊœ¬ZúM¿éÛk»3\\\'\\\"«1j²µÇ¦Úq¡O/“şœ‹‹‘‘’?RêÙtä× `4°jj¸Q P\\\'Ş8B·¢ó M$t÷XoR§ŒªgµÅ\\\'íÒÀš‹/ş‹_65ª«ñD:œU†ˆ‚~wßÊuŒw2ÿ\\0¿(ÃÖı£{µ?ÜÆ`!¶`¶+îrŸ‰j³ÄÕcŸ&½ùw$â³‰øc6PÜSs0\\rCì\\\'¢ö˜×Bû››˜‰ågPñù¶Î+Ì±oãNÇÑüöÜå9J­âj ¾@ş=Â¾§-JìÜêÉ·#˜[Rµ²ÖÅ¥q(›n}Î[‰GöÉßŞ@O\\0Ó‹	¹¸LßíÕM¦hA¶#(â6%VE`cäÆ­DL«ÙiÏAX¼;ã·Æoy_Ó¶à‹aË$&¹´Ğã»¥	–XĞhë©½OFq”îrhXoD7F¼Ì6 eÚÆ	Qı×GoãxkaÛss}ƒí³¸¬eEŞFá¥§YQØq-ôy¹©F1‰\\\\È ‘®1>üŒıû+0\\\"Ó­ÖÓs‚Î+-Ğ8\\ZìñÄÎK7\\nƒ8BXË¿¼ğ0˜´,TVqØ¿âãº¸g­\\\'±š—k²ıßÜpSî+•‹\\\'Ô,ò‰°e¤ÀâÂÌ`Òº8vKã$ğ˜µÌ¬UÛïÇÊhÎ3í?\\0Ë4ü öÀóVôPÄ‰¡Üö[è¶æh¡Ú™®ú³]y*Å$næ‡j1­¶YuXÆÛì¶j/ü—4K=n3{€T±ú_F½J¿lÆºrÜßa7±‚~5\\nÁ4ËÎ·!·Ù` ì¬Sí\\01‡jı¶½ZåoÄ×vç8\\Z¦ãFˆb0„Ü–‡²Æµş¾ÖÏ¾¦µ*âAVÔ {‚°Òê˜5¾¢Û¸¯Ád\\ZXeg½xÊˆäø£z\\\'ÚË›q6O\\\"\\\'2e3Qc}²j!ŠÓœåâ´´Ê¥Xåá»\\Z‰mÏsj\\n‚!˜öxÚÀ\\\'çöXÆYî<¸\\Zr•ÛƒhîööLf5îµÄÃò©ä1!RênrÔ{cY·7œ§)Ê mÄ€4â™¤ø»ƒF0„j+jPàÀÑå¬g)¹¹¹¹¹¹¹RE•°^d5—O£lˆ0@Ğª´ğOjk³ö‹—j¾û›ì x¶wÜäg\\\"c|×ú•=õ5©Q<Š«)…uñsp?É¾BHãÊk²ı¢¾ pc¢õøûšŸNÑ±Î¼FxÌñË¾u\\\"µ:£8úáï¡3qLå±î €O\\\"Fqc-ûü±~ÿ\\0Ş»8›››ìf¡]v‡ÄË~ÿ\\0,ïñğµ’ÊÈ0@!}Ò”d\\\\ucfñ”×}C÷üãV·eUCuAZıkôúUú^Ù94œ{òºRUÓ°ş­¨£(àcÛ_RccåUôéúAÆ®Œ.,•åãàã>~SZô´ı;¦P™Y)ƒ‘wOÁK-éøËe8Ö¥w?Q];–=Ì]–ÃNóÃüŸçÑñ?Tª‹-ë*–¶^ÉÃÈ­0ºŒé\\nQ±ıôjîºa½IÑºÊ8¼±-Õ~—Ëmë›g~¿§Sàë8ˆsºG1“šOLø±„Åbú§î6¦Oê•y)ÎuÎšêÔÕ2qïj²Sa–½Nºæccœ<›q#fê¯ª#¦ÕÇ°ìÙ­vu¸¬ØY%ìúÕÖcåøsiê\\\"«ğ3[¬ek;—œÄßm¨~Kœ·9j3oµV”•äªTŠ×GP#Õ³Ä,?/ÿÄ\\0\\\"\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1A\\\"2ÿÚ\\0?èš:#¢:¤uC‚³¢²Ö‹hîèìÙÙ’WöuGT.]sÎy1æ!>ÎˆEDğŞÉp*((«!Û%*Öh¬ñºb•’‡6)ÙÊ­T†íúV8y?%d¢Ğ‘D‰NÉ¯çQX\\\\C…øt”N;P‹%\\\"2²KY¬Eoãæ£Ë9’‘)±¶ÙÃö8èäãıÍ‹%£gj!ıD´~‘	vC±ba–K\\Z\\Z9tÆ“%ÆuhøòüÂ‘ÑxcZ+EüŸ!o:#¦FV9P‘Ì„Æ¬á—UG&ñEb\\\'[(‡ªtFV}•è¤)\\\"Ñé/²È=–}ú¥ˆzMl¬E‹tyQŠ²*½kúôqLZ(I¢ı%*;	²\\\'R‡ŸÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 !01@ÿÚ\\0?Ù¦lÍ™³blÙ–/ccf[1e²ÍˆøˆĞĞxˆÔ¡\\\"ŒWƒF¥–_[Óğısì\\\\1\\rp²¡³	²Ë6.r—Í—C„âÆ6mˆ¯á³pÿ\\0DÄcSrÄ\\\"Æ\\\\kd\\\'ÂáğŒ_¢\\\\¨®×ké¯¾Ëåt©±>ÿÄ\\09\\0\\0\\0\\0\\0\\0\\0!1 \\\"2A0Qa‘#B@Rqr¡±ÁÑ3PbsƒáğÿÚ\\0\\0\\0?¨ÊfŸ/æ•TTŒÔµ…ñ\\\'u–3Eå7ò²×”Ê©†`x‘2©ÓpÎ/üª£*eÎ™±¡TC‡ËÉ˜1«„Ê>«ÂÜ¶¥¹¤h‰kèT-Õ¬7Y›¯’cªä-u¹{\\\")\\rÕÎĞ\\\"ñº­LkİoZl¹+aß÷”jaßx†j›‰x§Á\\\"ò4¨šb›™6œ4VŞd3¢uTÃ4¶5”ªá@=ïtö0S!‡¯²ŞJµ1®ï²Î47L­¾¢Æ»óM‚½—»/)Y*A´‚*-\\\"§’Å~Ğ°õ)ôâ;ì±YtiËì©~¿Õa7•… \\0¹ÙaÛJ«j0Øì«Óçaî=BÀµÂAÿ\\0¥‰`óüÔ4DÑ•Z³k6©ƒÈÃtÙüÆ«‚ÅÓ‚\\r7r*˜jç+j_2ulfÕaÖÉ­ëiU\\rÚc2óÔ«è«`‹HfîÖOêe<§İa±”ÅÃÃjˆÌÙŠ2\\0ôÿ\\0%ËlÎ¿º¨ÆÙ¦œåO®pXfÔ¬)\\\\…‡«Š²îÂ!VÃGÍ¥ÌÏUƒó·òXëÃe¢Úş¶tYU¢çüÒM•:ß0›±9\\r0>™T*PxÏ$B«‹¢s1±>¡aM\\\'‡A2±Kşay·İU~Q¹:«İvk¬eAP¸òBoÅU›‡–Š½\\nƒå9ÒÚ¡º\\\'îk:»ß£@MiÔ\\\'š¯Ê\\r4ê•_ åL¯R İ]± UªŠ£#ÛüQ¨ãòj:¢Ä>›³7r°tØù{Kd\\\'á19·Dò¼vOÜT~\\\'ñ\\0Æ‹.§R¨P©ˆÈ[}%Q¨ÌVx}ùb±T˜0º£º|tZÒ=—Hö]\\rö]\\röZ7ÙX!ƒõ…v4ŸÑh%FP®Ñì§P´mÚ\\néo²ˆ²èo²ˆ¬Ğ>ÊÌo¶Û«G²ĞIZ.R®8²öFWV¿”lÃ‚áYÜ@íºµü›(´¿¶’D©eî­§‹§fV	+˜ó,Û`+ps…Èå§ì¾Îd`ÎËíˆRà\\\\²Q¦;§e¼UÚ\\n»Wuß`Ê £UŠ=|+¨ĞqXå^|G‚;(™RÕ¦Í/Å™ËNëÁª¸]¤.¥ş\\\"ë\\nÇ€Õ:lÒWNÍ8\\\'d+l¿Ú	ÕX­Uø,¯uaà\\\\)Pá˜.Cöân\\r$.S%§àùÄ®WJº†ù”æ1¡ÎRæ6Øªºl…$ÏªõMuX}Cô+ò †İx!O‰}­u7K‚/y’|¨róWÛuo{ˆ9[Ù½Ê1aà…eb¢Ş5Ög81e|¦ïùŠÌó\\\'fcaáfi·‹®Ò\\\\v›\\0¹D•\\n¯@Õ:è?ÕFß_ú/ ´\\\\µ!\\0bÊêÕ\\r×RÔl¿à5Zø2¯§â³—ğ\\ZxšÜ-V«›f¾.¨øgüårçB‹©ã¥MÓ•ÅUÃœÛ¶¶Eÿ\\0Eºúw™Šf›!lêo[SIìDÜµo;Ö€\\\\ç»-6¢Ì;ª²¨Ó7u‰óf§kúÕYEåT~Õ\\Zö}/î¾+›y>~«}_6ùı\\rAq’š×²»‰Êe2½RŸe½æßeÌ²Tœ¹fÉøzf³*7ÏEˆ§^f—‘O¯ˆqm}¥\\ZœÙ~‘*NwkAq*‹Ò×¡XÙı—üßÕRÿ\\0oû§\\0ÇDõJ·!Ùœ«çÊh½¹@ŸıêªŠtËØÎ°œ)´Ñ¯­–1¤Am­÷U€½Ó·\\rqÍ„ÇÖnfTÌDæ¦G/B|Ó7ïªÓ–ÙE…´AïİÍÆL±*­>Á¦?EU´˜æâ9®ë…ŞİßRc°²)3Vxí0æè…S…a®g•ñ3ó÷àÙ¾üÒ¾* Î|´_“¼å•WÚ<Ïluh›[R§×¤ÀĞş¦›Ê&†”êªUia¨jêe@ÌwS\\nu,>´õ3%|ï¿T£…«OxÎÆt@4I	‡pY”y£PÑ/\\Z­ÿ\\0×›2Ÿ‡¾L±™NI’ygÍWª(Ÿ›Û6‰Ü¹˜í[)ÅÊÓÛËğ~{mİ_Uš,¢øÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0!1AQaq ‘¡±ÁÑ0áğñÿÚ\\0\\0\\0?!B\\\"TÛ^E®i4x8pàc«oRuI‚2ÚTÜŠäR9\\\"à4\\0­$‚¹=l£şA‰)g7´ØDŞ˜sĞ‘Ç<™3 6	FN;XØ?Y•²9P\\\\pB¨€hÿ\\0ÀÑÂïF-#^³n‰Ş…5Vfˆ4†¯ö:ÔõÀˆåD\\rBMTDˆˆ©9¬bË:|8h7*ªÅ¹Êoöbqå?ıè‚y~Èşû\\n‡æ²œuo–dW\\\"3ZU?€‘P.°ĞD´î¡-ö£ã)ëÂı™oÍ)şÄs¬ˆûÚ¤ñHÜ_ÙVÅr…)‘ÅòI;;—\\\"I2Âóı¯Ñˆd>tÃR%Åê=ÿ\\0îÈe´pÅ Tİ ÷m0æ•ü“²jÑMÈà^\\\'JÊãÀ­F\\\"B»!ZKM\\\"¤ş:\\nÏ+]2jìrİBøµ—Œ±bŞYIj:ñ½‰K†2ÎÙZ\\ZHOTï£kšKtE8n¦0¥åV×÷üwâ«é	ZÚÊ•ı\\nTt‚—È×eÉ¦P“jò+ö¹ymìÂ¥áÈû%ôİ–Kås&Ü1nê¡=RÀQö­(›P¡tkplí±«Óg?ö&Ldy£K#B%6\\\\<`ÜnùB[•¨ÓLnY%x%“¸… AÛ\\Z29d…Ô—Ü’D¾?@iMr™w^ĞÊ5 ô„\\0¿‰!É’íé<<]åÎDU¨Ë¥t!0d úcÅ`ÈOÇU+!q€˜uZ?,E*X/–Æ¥îÃ.ÎSÌåØ¾FjcLÇ\\\\\\ZzŠ¤8Ù‹µ{\\Zz}¢¹OÚ2á§öFœ5Ø²ùfZp#bÒ©•cöQYcvæ	ù\\Z(ù\\ráCˆ„CŒPÙY<£ƒğ¬«E\\\\ŠMeæÅ()?@cû•\\\"Á½˜{%±ŠŒxs–Z—Æ*‹:\\Z›íÑì‚a27Ñ5ğÏí&ª¦dVj…4bŠ%ª•6]–\\\"Ñ-öŠ‚3jÀ^m@cx)î\\\'É€Üâ@y©[$A”OÑF<e°Â2ò/†tÓAà0/Ci;hhtIaèc#Y{\\rñÁK*ø½†YH„5àcTäÄÑşgãÊ¼Rs¸2IGh½ãÁ„+£>ßŠÏ?’E%ØB÷}¼5˜†ƒËÈÆTù±7ßQ1t=%¢, ï\\Z+A¢°ÄAºá…7„•Ô\\r¾Iğ,¢=(ç³\\0E.Ëä!¢Y²BN.[2œ!g&EOäQ§“í‹e£%„É¡íªä=:‚5† à¡¯\\r\\\"tÈk„J^Ã_DàÛ¼Z[1\\n¼¡¥Ÿí(ÀnB6õ¡gƒEHcÀ!AE\\r3&I#¤Åì.FT™@Ÿ!ğöb¡JèrÌSqvFÇb¦UÁ9ßì|Û„ÆAYšÉ—BEÀà¨3±R˜¼>g%€ğÜAk\\\'w iæß‘ÂÊÁø‘›vë]ˆ­Ó±Ú U˜p!Ú†¶]$Ù‚ø&?‚`}Qá˜…î‘LUˆ2MÇÈ„ÛœâCÀlzÕPË”‹dz\\ZÁÈŠÀ%ÌGp5|eŠ¹ßHÔ6¨ÄVE`ßĞÔ*×+´[üw;O\\ZÈ½¼Ï%ô$)	dg€µ$2šU–@7³ŞfÁÇF¹òó¦\\\'piP¬6</ÊZ¨Åip.œñŠ>\\\"CrXÌÊ¹8i Ÿ±İ‹kdÜH¶=_mÁße\\0åÇá-ğ¶¨êÃ¹Pü|\\r‡¡’t*Lhüø‹=ˆCÒP”º\\\\\\\";ìÉdXÛñ¦dÀ»<@¥6Ğ°Á		|Šÿ\\0+q–x¾ÇöÅ!n—NrÇœ?ÏC‡†7¾t)òT¥\\r‡ïâ¼XŒ§n!Ì\\\'HçìO?Ÿ¢€™8ğf%òÅemùdğÁaÈù¯Ş%M‘p -‘áT¢nø1[%{ÙîñKìŸ!ç6¥Úÿ\\0,SJÙÈ–xÈäÔˆZ~ObÊÏĞíÉøEÈ¼0çòÓòJÄW¡s¾‹O({ä<d§±VYéMc!ø&ø$h®|$)3®¹èlæñĞ©à\\r™PNHä?c´™ÔhLãÎèÈXÔƒI.F&D0EùÖn\\r¦l4š\\Z´0¼*²ŒÔ\\Z(aÁv\\\'‘¯ü\\n¶1ho%ğ„\\0‚|qÔ.<XN1Ë	Á\\\"¦FjäìÓLµçÃˆC8bœpÂQ£{ÿ\\0ĞÂ=÷øÀFÖ_r¹ÿ\\0BWWm§RŒ²‰W\\\'a¤cŞ±3•±q±·ÓşƒrÁ‡¥s_ğT˜Ö¶ev‰‹åÒºñZÛÑ?B„LV?cùi8_³SWåC\\\\ÌÕÇr|Ö°Ó4½I½hUÄ’Åœ‰iM&0Ém{M!.‰|dx;QY’‰.Lò[ğ3øQ¤ÿ\\0ş†oa,•:Ú¯M-‚ì—ñëì>ZN<rRTšvö$j)ë¨¤Ö|¡»¸EÈ2ˆèç›”®¸ÿ\\0bîì¢²ÄÊ?¼Ğğà®ëğ3’‘¨Y@ŒÃ¹6_\\\'Y{Ã^ş\\nRŒ^…¥\\nŞÈp@ ]×tı‰û¾EZ¤1¡6=ÄPö/¯Û½ö\\\'ˆ¤ÄHë;èÛë`g?ìPı%,n–î_eÑRÜ¸­rÃ+Œ¢Ô$:ı÷CÍ\\\'“;ĞÄÙ išÛ?F¼Ì‘Çr«¿#bÓ‰¼ƒ9ÇåÃÃ8Ö¶ó0sìd\\\\‹¼‘>‡¨/åÿÚ\\0\\0\\0\\0\\0sV¤:Z÷ßÆ¡+A¹Ì›£ÎVOåˆ×ëq‘A™¬šØØ?.#qêFèRùª¡‹˜éa1È¯-›Wtá{ñÜSèO¤Ö‚6*QÕM\\nìa®úæ\\ZŠNç\\0<_ìÙ`\\nŸÂ¶!G­}Æî¨{N+»PT!¶$½qÖ{/Õ/«šÊB§ÃòE6î,®íÇÆ\\0ĞÊõ€¶ÙÉÉœö•:–ìÎ}Ãeä^h¢y£š£#QçÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQaÿÚ\\0?æ_ÎşnrëÒÄBP9+ëÈB‘°[@lyì›:À#X=,o’Q2Æœâ`Ç[ÕzÎè}€Ìl¡N,ïZÈdMR\\\'	#©0eÜ­å&zÊ>Íé‡ËË8LË¸Ø6$Æı|ŠÄ	·Xˆaİ‹$‡·ó¡¬«PFÏfdôlûŒ¦ö1É–cÙÆu[	ÀšÂA =\\\"LYvÁtL@]œXæÃiòÔ>OêO ‡\\Z9kÆÚËÉ“¥‘¶Ø¹÷*È„í€í…ÒãË­dgu^“ÈH:ƒy7ˆà>|\\r-±\\0‰œÔ°a-Š$j%8YñÁË7°C¢jÛ¶¢ÅÒBØA…£Œ6}3š’xdèöã,÷ä°`3\\0¼‹eÛüXˆã’âLóä6ÛÔYeì¾‘£nbÉ±µöé§>°°cğ9l†ù#ò@<§ö%ìƒìæ±f¾¦6\\Z‘d’+o—Ú \\\'`gÅ¢]l¿ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0!1AQ aÿÚ\\0?ØíşĞ_g°¾¡7¶ó!¬nl Í´@e¾ÊˆÏí«±ş¯ÆÜ#·Ù²O¶\\\'Œë»göÑœÄ-÷ö4l;bW%í¿²(ä¸Êù*Ä¸…BÁõà)n&däû²ä>Z=Ë±¹ËQúò¹q„´†0m„ˆv(ÛØSÀÛ²ŞËÈ§~\\\\{ºvÀÒtH°î1v_P2Gäş3È=@İ`¸df.³î(Ö^á+òÔ»à^–ŸwnÙ7²oLn{º|·âWmX?`¬yáğ‘dÏs›Ï8Ù6qk7l‹oxRãî}óÉàƒ&?ÆO{şMÎH³¹ÎİİùÛme¯„Ï#m&Ùûàş{å÷ŸÀ¹„·Æÿ\\0wÃ™–Ü¶\\rƒ	÷ÿÄ\\0%\\0\\0\\0\\0\\0!1AQaq‘¡Ñ± ÁğÿÚ\\0\\0\\0?{ƒŒ»q>0ZM$Êïx)ûêìyÈP@ªWs‘ï-»(U–=d¦>ÚÊ†‚÷šÅa;.ÔtòÈ×P56Ğ\\\'xå„V!÷päıàc™,v\\rÛ¿‡ÚDP›Ğúsx+a²7((t4çf¼`ÌÜâ;/lÜ:1¾Yl—Ã\\r¡Ñ™U¡Êñ.ş3–K(<cÂ!\\\"¬]Ÿ)†c¸€·Tüà-–‹!ú`Dá)Y@ƒbDp*\\n²•\\nEI¿“;˜Í!H¬u½`dÃÓºÛtñB©AÉ‹¹Üã²ªvK‚ÉîÁl%ÛÆª¸mÍO³”dä\\n;=™½Å(Ú“…ã‘/ØÂsa‡Óàq0Ä!È7û&œEœê	ÖñX3•£B·@ıæÊR5%O;)ÃÎĞ±8ğ—\\0Æ€@|aÛ„ì¬üå6(ET\\\"‘Ô»†£RLd%<ŒVº:Ùİ\\nmAğ1)¸”–$ÓÃÃ’ŸŠnx\\n w#Î±¶u\\n¶CˆõŠ2:’®»ø0`»\\\'E¯è¸$P© ¤Ñ¶Âå<‡ÀËÔj€P_ËĞñ‰°ıÍ&’w… çB;˜¢TGèƒ<[m@ló÷›áÑgÖUÖ Hô‘[ëËV¨h¶óõƒ±¨¶jŸjÈáĞ1Âtã¦Å  ƒäç‹ŸJ—C¼iïY@J\\ZĞ=à	‘Ğ^Ù8NûÂkŞ2JBM?8ÚÒE‚ÅjÉ›p‚E„i¨—g ä	Cr-ë)ÈfP Ù8<õ‚D#¶hz¬*Ô ‚5ë*³ñYXº\\nhÎX-ĞNE‚Ş>ğ2L .™çQÃf*5]¶Î±9zVe¸¦Ù¡èÄUHQ¾è;„ß“Pñª…‚°ûÖ½zÑ%º¼w‚ÙW-m™TEvxÃ\\\\” S`áúF°ˆ¨ëY,pÄÚGc\\\\İğ3²ğ\\Zyl8ÉÆıå+ûr!yXOÛü° (¤çpğ˜ÄÚ¬^\\r0%àĞİÖ±%Ç\\n\\rûÂEÒ0é1mB¿Ì!½5ÿ\\0™6Úó_#üÉ’\\0	ïÎ1*´\\0Ÿ\\\\µ5}©“Òh‡Aë(´Œ¾qD8è‹ÿ\\02Sˆ)õˆ8a/ÎÀ„Ñ0E÷Æ:H¥5Ÿ)–Oàÿ\\01A¹%×ÿ\\0I§ùŒYî³‹æI–£êL6zÁB[§èÀA7¾u†´å	qè7ï8½»¬e*‡û04y”ğ¹0y\\0˜JºòúÎ \\rÙLV‡œ€tú¹b.\\0åÂğy!¼!À+¼+§#’ ÙÉ‚HJëÊê¡Ür8İã+:uËÖ›#õ‘èqç‘_æAÑÖY‹}#hB«]€ÌJ65‚LnM@9^24\\0Êw’~ğËBu€`Czç)HÃ[fİ´å×Îj©x!0mHñË¾‹Š’öìÊYƒ:@ÕÂpÜ.1éë\\\\â\\ZFléÆH‰‰rNrn¥2ĞºwL°òñŠ»|œƒÕ~pØ%#c6¾°>ƒOxswÜ%ÂVÜŞ¸Í‚ÇªC—A‚¢»V®6ï\\\'z.iÛ‰Õ©,É\\0w€n›Šà”æâË´;ç4¡\\\"–>qdWOLc\\rã)Ü»ìÅló˜QpœL%óŠuÃï-C€Ä+=ğ‰9úÄI\\r·º:Ùíz0VÕ*Á(M&nAÎ§ˆ4ûÄÉVøÆ!€8ÁšÄœ`B{Œ¸\\\"GgE2™ırŠ²¸@¡C\\Z	]K•.“¼P¸;Æ£‘OXgÀï-ã5¬¨\\0ã4‚DI•zŒTüáFá#–L^’Ì¾\\\'“ÎtÔöùqq\\\'`}dÀ€q×EíèÀ\\nVrç õ°È 7·“nw.íø÷”¸q¼ØÔÖ‘Ë§Ù”\\09ÈG:81ÆMûŠ]‡ŒnD/5Í7%|auúcrç\\0á0\\rEn¿ø±läÍ³\\0i\\\'Î QèËd¼»Ê¡ËƒtÙÊ¸]¼ØÆ2‡Wş±iş\\\\RíèÀL@}Ş&Ù&©=­§ 	{¨àË\\nfÒ¬M`Œ7ñ”•Ra&0ìÀT4c¯w_kÌË4ò8İõ’¤İ›®}ÈV°ìä˜é<”À€G!Œ$qq1oŞA­b­äB\\0«¦2Ç!;q·Ö&#\\re³Œe@L¢ÖÉ¢£ToŞ\\nm&Ó.Fã´Î\\Zod¥ßŒĞœ¦éÆZB\\rë(!^}åWË¶P»­§œ˜ê\\nİï¼:-7°<C÷†‹†hŞ*\\0|åªƒn\\\\e=KH.µCy®0%gÆ\\n†‰”Ğ½bù&ñœ\\rØcçÆ†c½Öñ›Ú]ê‡ï Ô§R!¥ŞNwráš	¬y.ÎpêÆpÌxƒS™„	—ğNHn(6…WÎ<H!Pgœp±u§##îà&Úó† vùÀôeÄŒìÍl\\r•,À&ÿ\\0º\\0œ0œ6ji¾ğxC qHİï	¨Wãd/.s#ª˜ËjRd(A\\\"løÍ0yiÙ€Y¬Ú÷‰ªhS¥ãMQÔ+›`ÄX+å„¼•Â@ôÇ‚#×Ænÿ\\08È	z¸\\\"2gzÇÆ]²Êc8ã%]¸0Má‹9Àˆ‚b\\râ5Ï3\\\"»k¢3˜Ä8×Æ0Ó†\\\"nâ„4ç˜øèb¶ï`é=dğ™\\rjãá(ñ½—œ¯¢9Æ:€ÆÆ®ÅÂlT~²(…äë\\0,ğyÅÎÊp5*zwŸÀ–Q÷ŠDÛ/Œ¨êhq€Ê}à@iñƒ³8K’7re_S,;Ã@4zÁS.Xø?Ts‰ˆ¸2€oT¡tÜpL—Ñ†2$Ğ<|²TXÓœ&•U­åÊ99	ÆñÆv€ŒœZqˆ\\n7‘Íó¼†®\\0Û½ñ„)Y ùëDßÆ)_,€`bŸgŒºÿ\\00ÃMõˆ„IŞ\\\"MÇ<q\\\':“N&¦0À†¦1,½y½Ià€wÆÆóÿ\\0Ì_¯àX(ìÆ3êà4f’ìÁi¡áÀ0ÁUS-(E{0WÏ·\\\"k¼\\r³Öu\\0Ô1à,uŠ@xåÀ\\\'OX Aò¸0%÷ÅÃXâàˆK‘2…çx¡O9ƒ{q!‰)­uè/„ëãÿ\\04‚îï\\ZÊn°Ç¸ ‡L\\\"\\\"mëŠ\\\'¬PBÍÜ…\\0!q5qD‡¸×6õ0’4¸„àñ‚\\r¬ıb¡ÅÇø‡L´¦!¼o X=b*¯t¸¥¡…ôwŒRˆt€ëaÊ„íÛğaô?=àXR$ÂŠöÜi‡izÀD5-00R±ä|bÈ—ÁˆôÓçõƒF­Ñ—ª	mÇë•]zÍö¾ò“zÃ~²!óì§•Â¤LåSuqÁÊwç‚.Ùè°Ô\\n¬†£J:_©Ô<}b*0èÎOüÃ×´C<1VÀÀ[\\\"Ë–ø‚ÍÆ[CÎl\\röõñ—-n†Œ…yÅÖ€Ÿ8·\\0úÁBàö×.ã²‹·£\\0\\n¤¼Rß±iòÁEoÄ¢Tà0S\\\'äkŒ\\0yï$ÀöáÄ,bfÒk%†àr.\\01\\nÎøÅ*¾t6ùs‡öÄ.¿¹.ÇS-ïX!Évq„WW\\ráßÎ†ã·(\\\'!ŞYR\\Z+0F¹‚¹÷`†×ãÜ¢{Ãg¼âdÎcRâ¥Íqy;>ónŸq\\Z„,×#ÈG‘ÊMÍÃŞL»]q£*_Y|Ê~T’GüÇMc¡W!Úw‚‘Œe8bMÜ‹çˆ‡ˆ	Ãq‡Ø.$ÑWj÷ÿ\\0>°ÂÀ€\\r©ß	9.Œ>sdİŞZA}âÔ‰Ù†)jÖj><åÑ^ƒñ“ñ0­šÀºÂa•ô3sÁÊàç”Ş<á“_‡ÀD£e}gu{	lÊ­&; GÆZ\\0®+qN.­rm¾ÏY:[èï]zeâ2Øo\\\"~(Àßı3|ZÍ¼€åñŒï…DÁ^O¼~»€ò¼Uo_ø¿ÁÂ4ë }àr¢¸_Y°:À)E÷›iUÈ%Ş!cóŠùç¼tÙ“üV†w”®ÍxqCÃ¼Suıã=ä	`nã×âdÍáŒl@qâû“w=vëÎ°Hùç$ÌƒWõƒP0rL5;œâäËÊ³–8’Ìn×\\Z×9\\\">ñ{d@¿8ëœJ¸z&q2dÄŸ€ª€®W‰·syiã($«<fÌ-zÀª\\\"ªÌDIƒ¬šÆb‡ŞOF\\0ÕÃÆW+UpØ4<Ìß)`è¼8n\\\'ñM¸ƒåÄ±]çyâEÓ×;°¢Ü&³fÿ\\0Ì¬ËÜópGŞ*Èzg\\Zb¨0 ğyÕä8Í&ïÂŒö&±½¤M³RF¥¿YHFßtRèUÿ\\0roF¦^‹ÉÓ0Ä&F!IÍN2ĞŠ\\n:5µ@Å’@\\\"œ,A¼ó—ùi¤Œà%n„\\0œ°ÛòáNÜAÃœu€whz\\\\Dm\\n\\nr DpÚx#Wz|¸í¹pgË‰ZÑ…i¥ÜÖ! !Ä!l)£\\ZŠ£´NÚÎ°2­ÕòÌb„¤Â#èÅ@U@ÀÅí––i]Nri±›ÀFsêŞ\\0Ê/Î‚±?Y©,³÷¬–q±©¼!Øj›ã¨mÌf¬³êâË˜±AĞ\\\\Z;\\0•öİõ«lÒ*WLgX½¸¤pi/ ÎÔQ{K÷„„-€ûñ­üa˜#eáÖñ‘Rƒ´îf£YjÁa<ò=×ÆK½Ô>9R×\\\\EŞÉâà\\\"\\0+AO•\\\\	B¡”m×šñ“b§aü&Nú(P·¾µ¡Ã\\\'xæzzÄiš-%U¾è®âkiÆ*ÜZ¼o%o¼*†±4ã†ŸYX›XzY·Vî	ÕÛ)SSã	ÃRÜèºs;·ŞLU4X0½b ›k¢‘§1æ}c]‹¼ä>C4ôïx,*šÍİoTSï,ú?¡*ãß77.’@;`	¾„1œPÙH§†Õxã\\0h&ŸM½3^“.#PXÂTõY1à<™“Öúç\\rÔçl”lvqãŒ70#”çƒ“NÛl\\\'b’ô,­Õ$ï\\Zˆ¼lÿ\\0¹{	\\\\ $Ÿxğmt,ñ|c¾„-Vò«Ä\\\'œ0§ˆ‡ bY§[1¿·Á…µÆ,Ëã\\n¹/²#ŠéŒŠ|c)[Ù„fd÷“gx¥ûÇëÛœ†—*˜­Ô.-n:ˆT{cDĞãµÈºujJb.ßbµ>u‚\\\"ûyË\\\\	’øÖGŒsÿÙ','image/jpeg'),(28,NULL,NULL),(29,NULL,NULL),(30,NULL,NULL),(31,NULL,NULL),(32,NULL,NULL),(33,NULL,NULL),(34,NULL,NULL),(35,NULL,NULL),(36,'ÿØÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\0œPhotoshop 3.0\\08BIM\\0\\0\\0\\0\\0€g\\0ON5FLBrI_mhxitw5eI3b(\\0bFBMD01000ac0030000a4070000290d0000ca0e0000910f0000a0170000811f0000d62000006e2200007a230000642f0000ÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿÛ\\0C\\0		\\n\\n	\\r\\r\\\"##!  %*5-%\\\'2(  .?/279<<<$-BFA:F5;<9ÿÛ\\0C\\n\\n\\n9& &99999999999999999999999999999999999999999999999999ÿÂ\\0\\\'8\\0\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0\\0î\\0\\0\\0\\0\\0\\0Ä˜uÈÙ]Šj¾¯šë½°WªÉI®0t2ë}á§Û©£z€\\0\\0\\0\\0\\0\\0\\0t-š‘~ õ7ÊyÍoÓ\\Zø:lÑeF —ŠÛ&©Ã«÷†ì-Ç$ \\0\\0\\0\\0\\0\\0\\0\\0\\0\\0)è»Rx{>R½73 <«µ){+ƒîoçæ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\r{iÒğ±½À¯hj‘W8wh’íÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\09Ş‹“‘OqODcÕÖp½ÕüÀ@\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÂÙÕZ×¸#aáMÑs1/çı@3\\0\\0\\0\\0’¥=}_7.6—\\Z=ğn±§‰5ìÜ4Ö=bé Sx“U§ÓÒ˜å©ùeİ_ƒpfaÏ—Ş·BóÕ@ù?™ö}z£È‰7³Vo&À\\0¤ù8ô[¸Mvä´”ºõn‘öÆW_qËõó‡ˆä$WYW½†z#HS¶û8À×f‹Õán*°¸¯˜İ)/2&¹¤\\n›dà\\0®Ğ¬ÕÕ\\Z1÷B<«³Ñ8vqÂK—:7<ö½€\\0FÔ¤íQg\\\'Òë‘g‡¸-_kSl 4\\0\\0\\0QŞGRG•sî-hƒÚóøAGÔcmÉ›ı®ö…‚ºÁobKÂicr[ƒ_ØDM<leÓÑ«{]4°÷£P\\0\\0\\0\\0£²…*qÊ¿Îîy÷dN 9{/)0¦Ïs\\\\):èúœœûZ\\rç¯@Ÿ¶:¶ªÎjÊ4šz/=/f9 \\0\\0\\0H6ÒíÉs¸`\\0ç.én¸ô Î¬šPÜ\\0 Å¸^9½7õ;[$YWí€\\0\\0\\0\\0\\ršöÏ/D-Ê\\0½ÌÎk)—G=½,ÎFîoÔnâäÅz·=•)~¡ñ7î^Ô‡æİZïèÓ \\0\\0\\0Èˆ˜„Ú¾‚Ü–\\\"y€\\0O—ì¹^~‰vÕztklMõÅã8Şg“nçğåÕaÓ~lZ\\\'˜1Õ\\\\¦ÉÑ,P\\r+{~;³·\\0N@\\0^W´««ˆŸ>F{k÷]:¬´ÅpKŒä×”}6·ÜGH$DDi±6M7ãgÇßs9rr»N);5ì¯XŒIéëì/æ‚\\0\\0\\0)¨m`FğRóág•üæº\\\'•Æv|Lk<W¼byA6şÜœÏ“:éÏÉc ggB´°e×·8ÚïÙÚ‹r\\0\\0\\0Ì[O¯9É}õ¢ÊÄvœ|i1|uÊ¯÷«œ¡®“Ë§p\\0ÏG)cs¥}\\0\\0\\0\\0\\0\\0\\0ÑIÑj9íŞt(Ç! \\0\\0\\0\\0\\0\\0\\0ÿÄ\\0+\\0\\0\\0\\0\\0\\0\\0 0@!1#$234P\\\"ÿÚ\\0\\0\\0úo´šñß5ÙÒ¾Ìì&qõÙWÎÑYĞ1ÈeõäjV‰Ôê·#óö¬=uÃåì¯AâS°ù1Kf\\n\\Z‰^¨jÅ5n­v×jªÔdÀ£qız\\\'ó“[ëêœ¥˜úšŠ›%İÜftµgÇgÄ×Ï‰­Ÿ¨ÂÒÛ…WP^†\\\'aMó0\\nÚí:PõØ_İ±¦U~2Ú¸›kdùlÊM­avU÷®PM¸>¾bPcãZ}€1`}æ,ZÍ1ÂPCàC:S¦»şûV.Zà©Zñ¼ÉUÑb¿ßÖëõ+!UxLo\\ZòÏß!ƒ?qOKWÿ\\0€¿Æ£ãfylÀ¯<÷|oş¾3R¦¼e9ò§Ÿ*ÜùiÁÖ+b®Öo¢ã»zÚxr×ğŸÕßÌû¬juÓ%jûó³JƒÇ÷‡Y\\\'ƒ]‰ÀÔl§+[E˜ğÔİŞZˆÚ<\\n:š‡²åÕT«¸¤­QëmP9U÷Õ•4¨ê?š¨„Œæœ=][€©Ï=åì\\rN\\\"b`£Âış™&¿)cl§­`³­`qVVÙôşó¦Ú§6¬ê„#Ä§¹AVÈáhæå¨üp-¹jY:ì\\\'^nJó±Nv(ÎË’w¶¬›}HJEQÁèEV‘úì×™šÖ!Ãá?ff¨Jrgh¡ş¿P™yŒowı‹¬ÁÈ˜(wñİõÚQ	!¢åñ™ß†”¾æï\\ZÑ*‘g9úy?‘“Ê•#?Ëì/èìäş2g~v¥^*Öã©¢û»*ŞMzÓæ–w0%…ÑTùcxÂ8Fï±ë‡*“¤“Á‡\\r´±œYGùKT8øèıxXd„R ø0‚ÕMãR\\rÎƒã¹;ãşù3´!E©X:‰ODF5F¥ydó¬øÈ¸­âwá§V÷˜°/¦,Tª}Dp¶;DNñíÔcø¹£•`İE¨HWW…»0\\ZŸBÕ¬M:éâkC4îÿ\\0÷¤~ÁkQÿ\\0ŞVü¶ĞóW£E·AK‡…ë$¼«TkÇ“Ğ·€Õ}®&ÏBÏnŠëé\\\'Ñ¿´£qĞç}?ÆóXôØ¨§äÊ¹:±²ASÏôô/ôüt}»x[F ‘1_“ë%øt¼Sy§éh_éxÄüu¬L2êW…ª*\\\'åWŠÔPx,‰ôjÁÊD§aÑcm;Ä„Lnéè^8ê‘DÌàY0å„ÊğlÚ^¡$?(œùDäê[çweÏPB³V/è£õíYõÂÌò×Ó‡’¥İíÓÇpåÎXÎ\\\\®×U1@&x=òö¬y×3¶Ylâ—\\n_ÿ\\0”r§üv®ƒ´óÛÈöRŠÔş±îîŠ¼CâùÛÇ›9±Ö9fªy<6êê>‹H(‹\\0êÖ+•{«fDÄğ\\\'¨2mÅÓŞZÕ¤XÆÛËÒBƒ¦¿n¥¾iÍç‹µcfÓ+¡@±\\r(yìznÓ9Ü¶¶mVÎNŸVsãêä&ºq—ë†ËlÑ¶£\\\'ôóœlYñ²Ş’Ğ5Ë0­¤p\\\\Öài÷•´ÊÈÇ¯ªš³ºC†t“A½OV¯;içQ´FvÑ‘Q1… ÓªJxÎÅ©øí“µ¶öKÅR½uP¯Bøq\\0îozõ†ª[#Bq’É“¥G£<Qù±Æglí;´¯ËĞ3³Z¸VW®­Ô\\ræ.Ì;¸Ó«ÊëvVû(³Ü.…†åzê®¿„Î›X:]hWÆWÅ)i)â££N	ÔêÄ5û>Â(ì*n¤©>DP]6\\ZSRæ:¶Š¥UÕ_ªb&!*ú¯T91ßV¹`æ)²ÉˆÀÖÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1AQ02@\\\"PaÿÚ\\0?øè mÌå¯¨h¡‡‡ôcSeïø)UÑt0ö»Ğ´e*p\\0$v‰_Ã]Ğ8ÁŒ¥Ná£SI½tÔ3ø©¶¥ì0qøh}/[ïğ-Ú¼ÏæçópğÇÁM—½ÀÎÑF‘‹ÕûØÂŒ;Št<´Ô£ht½hi°8”©iÜÜ˜NNmEp°ÎBùœ¤õ9kêGc6Q6m¢z=,¡¢“õ7¬Ø\\\\]+`\\0z\\rE^æ\\rÚµ“|§\\\\ lŒÙÛQÍÄæ§¸Ò«é[+9f\\rş±\\\"U©«ap31wbÃ{ Â`0:øı·Iïqğñ>:Ä¦ºÌåo´(Âfô<õæÜOqÓÃ¶NÖ€9ÛLÜÊK|Ü°G“jç/ÔµHœóê\\ZÍ3¾ğiünN ÿ\\0°ÔQæ5R“jmìN!99ê£§}S–±İSeµ¸½Z»â3)£i9œÕejƒNÁ¨‹Ò`­“e2­oşƒÿÄ\\0$\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 01@!\\\"2PQÿÚ\\0?ÆJ•*z$(²zQÕ5#Ô5eJ•9æ‘lĞ›%J›X²1\\\"ÉÈ÷íEäĞ85©Â,Ô?+[¨Z†¨8…Ò2ĞÄÖ=£¥ü^7/‘dr´ş¸EºÂ²¦·•Ç¬\\\"×	S··…¾xaw(¶#„Øj-„H@~ÿÄ\\0@\\0	\\0\\0\\0\\0\\0\\0!\\\"1A 2Qa#0BRbq3@r‚‘¡$P4CScs’¢±Á£ÑğÿÚ\\0\\0\\0?÷>•ÀYÇå¨«Pï.è‹ô†Úä„ÏıÇIK¤+æ”HW2Ì¬ÆçÜÅ•ÇÍ)O§æ‹´„¯ãLtÔY(1-eCÁvEõ]ÕHGGùf{ÇxÅ`šëïªÓ¤wĞNŠò‘á8EZ[2ñ§¬ÚÂ‡/w&²Ôd„ñ1øŠaÖ=É;$qêmee¥òÂTÄÔW#êÃì¦º™;¼bMĞHæ³(¿Im®HLã¤¦Ò’¥©ÓóÇï?º.¼ú|—E5ÏšØ°´ïÚ?1GZ9åV<¶ê¨LEÙ¹GÍ=Ø6©~JŠâ›\\\"m+^ßâ©¸¾o_Gİí¢›?×¿Ş_xEGïµ’à)&`ík‘ìU¾˜IšM£ßÊšÉ9DÄÕGQú@P´’“…PÜ6[? )µ‰¤Á¢¬İ6 í‘bÛ3„:;Cô\\rjwÚ·Ò¾;$CÔcÙ3 œ”:ÑÅ\\nÚläà—è4±Î{Tw8/ô\\ZS™VÚoâ÷¨€9Å¯ğÛ\\Zy~‘e\\rØ¶„¿î‹ÔG„^#âL\\\\yYu9ÀYç8ªİ¦SÅ]}Pu«àˆ»U„ıLMçéæbëiúmZØôËÒFÑ™fº{è‰`ì¦ŠÙèÑjŒHmQQâŸ[|ÍGŒLt§T×pEÄË¬¬›‹ï&*Ò†±¿âmAI:?\\rE5œ6¢X¨âvÔ¼›N’¥\\0ÌÄ¨Ì—<FÁÉ©‰RZ-x±0f6uqYóş1¬p×tâ£¢Fe]ÑŒ]£Èx•¨óøUpWtõzÚ)óFF\\nk†‘šF1t[Çl«„-ã‹ŠÒ¤~á£)wŒY Ö”¹Â“GIy“–@ùÇ´CCÂ\\\'%%å|ÑhQõ‹‡¬ÓËI1hK£•†*6tÙ#”qQÅ\\\\tğPÁP[sÚ#¯ZÍ×GŞ8,b6ĞÊw–a\\rŒ% ˜âm:f«yeÔ,÷RŠˆIZø¢n0Bxƒ8˜´CKïİ=gâ\\Zß0¥ÒNã{»dâÚ¥H°bz¢¾\\\"P¥p“š¯¢BÁqãëkdæ<¶C(µk²ĞÇ?=†µF­!v|¼ãZÛÎ*¦)8»êô‰¢ˆñQUä-£ã\\Zã\\Z•ï#DÌkÎà±iAŠªßE‡IQÊ\\r1ß“etµvìG$Ã…$\\ZÖ	m MÅØ‘×Ò<qQÿ\\0š\\n¤œŒNtw7|\\\'EìFc?õL)ºBŠ¥jFG¯ğº4LÄ­tbxÀJD€ØK)7UOLà  J£$€„šÆYGEGu,[CwéUd‰:t*§HZ“˜‡œ¦<á\\nÏJ^Nóê&:ä¸1B¢±2Q»¬å@m±$”İRËhº”÷ŒNî©Ãoÿ\\0qq¤Ï‰·L–¡Î+QP÷5o\\\'Vç¤ç^zBš©h<+‚ÙìuÎP…ºª¬%œ6””²Í¯¹‡.qŞpï,âvê¸¡\\Zæfò%\\\"œå%f“ˆÒeíUb%6	ÌõÄByµH¥ÕQ>Cªš„–0Rl1hüKä\\\"£É_Ì?ò5®¯XéÏ‡º+ã;Hó3úèeÄvL”9\\Zk+(ÅV^go¤l+œNŒñøh‚…$¡Äâ“îgã;KJÿ\\0gtÖJ»§„LZ\\\"ó‰ÿ\\0q)8|“Hö£æ³©M$o6mò÷\\\"xC|É;UT!Ô14…t‰´CHaªµ°š’Â+UiŠ™\\rè«PJ&ËŠo–Qy´9ğ™Dõ/ËˆLÄZUı±Ú?)‹Œ8}%	hUh3+H‹\\\'<ÉÄÁNn‘×¬ÄİÒáğÃÃ> 4s®*ØRÒ\\\\IUazR‚W¼£Xè™ÂHWowË@pZ„]lw”æs=hi½õ}  e¦ ÅjF]EşÌê+Ö}œSkaµX™BLòÑªlÉ®Ò¸Ápn\\\"ê6‘Š”6ê\\\"ó‡(*Q›‡±Go»|õ+iYÁ¢Òl}¿şœV•i`´Ä•uQf‹\\\\OÖ:”¯¬HV°ğìˆ¬µ\\0\\\"V¶ÏÕ@Æè„£€ÚäØûìŞW¤)Ô6PĞÌâbîyìÒùT\\rGSº±i‘üÄàb}\\ZãÙ}Ì{/¹‰Ôm<ã~±à›a\\r2İB¼\\n±ŠêlRz´t­8ßša “4¦ñÚ\\\'<¢İãi‹V‘ëóò‚µs•Ô´	Æ\\\'Vº¸ªØ[}á(\\0â›Â•ô†ÛíJgÏ«pL‡Ş7%å:èòTZë§æÙù˜º›N\\0gç}²ÿ\\0ÄpÓH X™\\\'h’¹!8s‹T³ë\\Z¦Åƒ}\\\\\\\"ã(›.£²åñÿ\\0vßa«êÿ\\0`d»X\\Z‚Ó[/ q(‰¤ÌhÕ´cœk^5Şû\\\'Ëb”¯æŸÃ ÙÛ1WR‰yA£Ñœ¹)’m©¶Ç¯¤¾‘y£?Lâ«ISŠğÇìßù+X•!c²¬âkö®^WXş¾Íj¦—p‹D¼á‹%¸­ä¤ã3´÷QÖ*´Š»4êC¸q=ØJJ&¡ÛÀÅíb¹˜ªÚG-¹GáßMKwåb£Ú¦\\ZsU&Z¶jÇ­’€#œOğèúGFÚSä6Š”d0ë¬¥)mÅ•äX¦ÔEG“«<gaŠ”|3pà\\\"ª1ÍY®FÑ\\r /v[g	@F­/%9¥RŠ¢ŠIş „ª–œıbª@\\0d=ßÿÄ\\0*\\0\\0\\0\\0\\0\\0\\01!AQa q‘0¡±ğ@ÁÑáPñÿÚ\\0\\0\\0?!ü9§–xQİ\\\"ÿ\\0Ò®ƒúí=‰x+ıÈR›şÙÔW.¢£ÃŒgŠ°”ßªwµ?ØO•©\\0Pgå/V¯J-*ä`í¥7©[§‰M,²óŒc]QB]<(Úï…o½×ã’t (øáËµ(¤R7=\\094şğ\\\'jmÇØ¤â\\\'â‹T\\\\qÿ\\0x¼áŠË‹ôšı#+PõiÃ‹}AÇş™PSo÷X±º]ú¬gKÄu`ó¼kSE/ı1/ÈèşjI\\rL/³mVPg³·ò±ÓcŸR)}©š+™­ÏèN¿şÔ *Á}ö¢dœĞ­V*!AÌüò¼U}VçŸšD`Hò’2”Õañÿ\\08v§µÔ~y¦¦\\rJÃ[4sÿ\\0ØKêşö­¦c×”œ$Hißü]Ÿ×Ÿø|¹VtÙ÷Ç6]!ıñÿ\\0FÙù¿Şh»/äÿ\\0ƒb˜=Şk­¿ƒ«5(-Õğ¤ûAš^ë«ªİ{Kõ@{f4´>Ù•CJ\\\\™<>ªÃŞd§+Ï-Â©qõçZÍïz´¾·îÖ¥®È7»•%{µñX÷{‚ˆ}cÿ\\0*Eš·*L_ò€\\0åV+iCé?çª©bVWµ×¯ŞÕ\\rÙ¾¦/š›\\0âu«UA82¶D:7­öÒ–kP›~Ş\\\"¥H\\na=eì\\r(77À¿•2#ƒÊºò9uQ³ñØ\\n2ì3K®˜Õu©QÆI\\0‰#•IÆ×¡¸÷—ö¡¸Ë«¼ÙTIXM6ïÛìñE¯íô \\0\\0\\\'È8ä¬_&6Z*í§NòÖ)àÇŠ—7u(mS2œ¸Ï±\\ZûÀùÖÔWâÇ:jå„hİ¿§)¶d%¾Ÿ*„Ócâ2>ïV»}\\\\6šÅˆ*ÚãÄ”¤³~\\0AÏ$äøw^ÇSQµqíF\\\\LD¬\\\'i~»z–ÓfÉY¨\\\\Ñâ°KR)`–Õr%¯ß)$5q=ÔdÒ¬ëşº	‚:Oö¡Ìæ†ì{…áq&+¯‹Çª Âh\\Z¸ cIÁTà*Ä‚^¹¹%~BKjz*UDX0N8PÉ\\\'1Øb´^ƒ¸f¢“­‚=èD‘‘¡VÂ\\ZÉì.¦MoRÔ€ºĞ… Àç«êçˆ`èÔdÆ¥[ğ|ğ¡myïõÈ U€»B-É·›ÒÎ E#)B§,³·]­Y¼V*¼€*M‰ğp4‚^P*ÂsjiH (\\0\\0€õ„	‡¸ûóÀ\\0.µ|ƒèÖƒ\\0 FAŒ6ÌñPÀ€6¥ãâb¬Å©‚¯\\nm*gNâ æpfY»÷^µg\\0XiBOZ•ÛˆzœRò%ß1DI\\\"Ië>@¾Ôœd3-c©X§ßóÉ¼§³ll_ğ§S3ô€2%åã´üL`³üª9^Úôi‹¶;$8”U¬†\\\\0d\\\\P’5;Áûn{zİl¾1¨aˆáVJ\\0rÅó1±ÍSV\\\\mãÏ¡¸›+N]íSµÄægİu­zõä¦£ënAÓ{Ïï›4;öô“p¡ïX4^fÚ’ÜÃ›vcm—âa/¶Ö»ùà‰Dp7öc‚_0uv¨Å˜—œ8kËÍ!§G/Ä~)s’Ç·4\\\"M\\nKª.‰œÓ7A—‚”›4Iê?ÚÁÁtuÎ„lóˆø4µlG½ãø;TZì?Îgw	\\Z‘¬]­ØÚ£ÑÈu½Lã´Û´Ğ”ÆGÅağ»	HJ´3àÕ”5“Yƒ!ÄİhÉ	‚.¥0ìU˜=â÷j\\\"Lâ€¼™T¦íBkC¼Ïê„OY6[¹ş¸õÀWD~Xşı=³\\rå§=:Üb£­u*:ÒªcË+Q©ix2H­FÈp‡/÷J¬²%wz*5+É›êÕ/†lÖ­\\n/¯…ˆĞØCm’mgî™â.¦”I¯Ü©56ºÒ4dÃóX€¦eí(ŒŒ/åæpˆ\\r&_EéiNÔQ9a—Zo¾¤r\\ZI½‹{AÁÑÉ£\\nÖsØQ¥Àü”(¦ı•pJP»n›b¬êõ‹ˆHìgZm-úV >´èP,GjÑ™¥Ìâcw•Ğ­ê—^a‹Ğ,yµĞ£i”JîÕ$ßa¥ÿ\\0^¯ôãgj‘¤@š²sÁi)ObıĞlı]ën@{ÒPmÜU ]€kS=b;4˜:•}áÔË˜o¶\\rZp5õïqOÑ	«[¹ˆ+İ¤}w¤Ãöí¨Ïò)ğf¤Uc*˜ò,_Mò\\\"÷mQ\\n(I\\\'¼Õ	fÜhä6Š¡±%Àã€cñÊ&h(qZÔ¾ãAÏ1g³N´Q&fóË–OıVn9Çärz’Z‚*µoƒTTfê9{]t£†>~Ç![±,8Sv™¥.RŞh–ìÎuêºÕæIBR3tµ50-Õ±Y‘åÌPôkYÃ:.½C€µ„²Šo¡˜iFÏÃ@ÕÈ¥\\\'¬ÅH¹½^QŞßíz>5i²dJ®²Q¦vJÙ;pDHÔõ¡Ç“šœx%¬O=1œˆ4õSµ\\\\5­>(D›¾óÁÊr)<ÙÉ#±@ÇdŠ1õm‰Ğh¬`Ûx5jÊÅ®ïé¢.5¾8ş2fŠI•M ›ÆÜB±>òq;¿”RÍ‚ñÿ\\0ÿÚ\\0\\0\\0\\0\\0óÏ<óÏ<ão•‰\\rôóÏ<óÏ<óÏ<ßî›\\0€\\0ß<óÏ<óÏ<óÏ<±À€$|óÏ<óÏ<óÏ<óË\\0|óÏ<óÏ<óÏ<óÏ,(\\0óÏ<óÏ<óÏ<óÏ<	óÏ<óÏ9$ôoÏ=„\\0Dó4óÔÆ\\0\\0i\\0üâ„i5* \\0\\0k¼°‚\\0\\0%–0\\0\\0\\09³<ğ0	‚Y€\\0\\0\\0\\0ç<ÏZN#\\0\\0\\0\\0\\0ãÏ<SÌ¼òãÀ\\0\\0\\0\\0\\0\\0KÏ<®ÀèË‰:\\0\\0\\0\\0\\0ÃÏ<ò\\\"á©\\0\\0øÀ?Ï<ñ½i;DA\\0ÑĞAÓÏ<óÊ¼AÛ€ŞòÛRóÏ<óÏ”óÊ„qÇ<óÄÜóÏ<óÏ<óÃ\\\'sÏ<óÏ<óÏ<ÿÄ\\0(\\0\\0\\0\\0\\0\\0\\0\\0\\0!1A Q0@ağ‘¡±ÁÑáPÿÚ\\0?ğÔBê=—Êpÿ\\0tÚ^@,&¼5\\0Z½sx¿I@<ƒ¶ª~ö\\räÕ\\\"?ënyP/û<ÏÇï®Àj…ÆnrCİh°Õ7†#£µ¢*\\r¦ ­Ø¾‡ê%­Ÿ\\\\tæL3æz³í­Rã»A4İ–¬Bëş \\\'½‰\\\\%>÷›m‰f¨šwgHÃ<¿sE©nê<C¡Š†m\\\\T)»2wz’ÍÆĞÈsg§µ„«½®5Æî€ Pxaã‹\\\\C¯ëÏŸöz+T€šlŞ8jÌvÓ×p=ú\\r\\r/Qb¼/ßhoƒù?\\n*5[J	¸)X7´´j¢lq´wÑ`é\\n^a&ˆÛr	ÎğŒ¬=ûüjYM.leæû\\ZZzt1+ÃüÁˆÚ‹âÌ*µÇ¬\\0(Ğ±¡|³7èá?8ÈæÃhXˆ¹êuøÁrÂÅVØ/P6ÊæmhaÃaÁnü°ãPn†~ÃüÿÄ\\0#\\0\\0\\0\\0\\0\\0\\0\\0\\0! 1@Q0Aaq‘ğÿÚ\\0?øĞ–÷/x#×d¼ªÉïá>¹\\ZïÁ¼½×„)Ï{ğ{äkàê&~¸Öğ[o&ŒßÖRî[ˆˆ\\\"\\\\³FL­âòÒĞFm›\\\'·¨ŸfFï-·ÀLD‡X}rUœUÆªqW©Ó€ì‘?™ß¸ïSLéÊ·>¼W‚V¯:#©¥uñ}øn\\n{e¨T_´Cêˆßš%Ûc¯`ØVÄ`Y”\\nr£8ÓüÁ\\nş‰ûÿ\\0ßÌ·Úƒ­Îk!q‚‡´é¨Ã|íõ€^ñÓ\\\"¡f{–”6üid´£¹~ÿÄ\\0*\\0\\0\\0\\0\\0\\0\\0!1AQaq‘¡ 0±Áğ@ÑñáPÿÚ\\0\\0\\0?ş™q\\\"dä%{U‰şÏ&ã”4@Ì”s3Ê³×ÔOĞ«¦h]³¥,«V[Ô´L`tóQKFáh¨­,º‰óQŸêSå(o[ÓôŞ‡£H’\\\'ò†§Áºì2µsÀs·ƒínm\\r¸$gÜ-‘ëÇç°šDEVU×İ¶•+’å*O2öQ“¸ÒøLNwxzQÖÄ;&GƒürˆLÓc\\ZÑ­T¸i€§iİ¿·‹Ïqe¢B:?Ò4!#QÊ¯¢ìás…±zåT8BDpñZvÂ©‡=b*ÃE z4rD©ÖşÍf¶éù!½K+Tø(rr—(Õ9¤Ğ;Å÷_éA½B=áæ\\0q—\\\\yj(©àoïÒmCM57\\ZIµºÓéÖ3DÂÍÓT\\Z\\\'óA\\0D„u¨[åO.Õ2[Ømp”½O*¶¤ÊÄ»âÏ¹$†ã[é5ÌGRV]9€Ñ?ïóÛ±„=œ‘VkÒÌ\\Z¿E(á$à>à¡v:NCë©†€JğHIüø0QlŸ‡”!àÄİ[<b† 0Ğöò5\\Zp$³ÕêÏ1ßÿ\\0\\0(K?³dÈÓ|;Â&Çt¥–=\\Z\\n@\\0pØtDÿ\\0Àˆ…®¦‡Ku7 6ØĞYò>Ó°::•‡r¯ø=*$Bvk^Éá‘;¯pÎÊ=ÔCÉÿ\\0ƒ×Á\\\\Ôş^ín3ïÃÿ\\0ƒ+.%’×€ö¬Wk¿ü9@uiõ KÔ\\\'š±¡¢eöñXLçf€\\\"w¬<&©‰à¤¬9ÑîZLaéÇa¡K¼r+RÇºTÌOK˜Áõ=}½%pCä~~lSUFk³‡ixS,ßsLô§ÍQÒòw¡É3aîoXö8PÈ’4K\\rwğ¦ ™¸^kw\\ZÜCe\\rÜ(&*”uJıqíÙ.›=Œs]¨\\0öı‹PŒ1\\rÀ_åL Ôô48¾jq•œ{öTãÑg˜çä)$ÊÅºßvxÔÓØ__³¢gáÙàúJKÈê/\\\'õÅÚ9 ìp=«¸*Ou6•ƒÄ[úãÖÁ qju\\\"]7|U‚Ü\\\\w˜©”\\\\â/ØĞHğä\\\"dö¬\\\"Â{ñpÆû(dly¾ş±é¯‘\\né§ZÀ\\Z\\nØ§ŸZéu¦z./¦¿–(‘*hÂÍğ›®Î”w¿Õƒ»2)ã×õ¶áîˆ\\\\ÖYÛãIÊ¨F]\\\'»·Öø7–Ëq‡úĞÔh\\0ôÖ+8ÍVVÍŞB9?Õ‰wÃ|ux”â‰É?èTë%Æ’€E–“½-Å›×Äõ¦ì¾\\\\_ĞÓà6ïä”êûë–Ö]¸z–u+Ó™B)È¾ƒ÷ïã“Û› <~ğÑ2¸vV$áõí4]\\nJW-\\niÉÊHTv«ËÈ\\\"$z²õôµ47‚š‹‹ÁWğzÛğW}Ï9 \\0\\0=ğêyfJız\\\'L˜X¦\\nÌ™Ä€c”Ñ	1	†.õÅİSä× ¶¼šÛ?ÙHDO}aõ&H)¤q¡@ˆ\\0•t§BlbË ìKÌz‚\\0‰ëR,3ª¼„h&1uô9üEõ³‹ÑFJ)¼LY½—¼tôD4P6–6¾•¯ÌÇ‚ùt˜Ãüµå;VjQG%Æ‡¢g…ˆêÛ½F#ëeŞÇ\\0ö¢˜.ˆuXÚ&‚\\0!¼Ì´pI=Ç,;#î…¸]X›ÔäüHå?,P DdJÈmå$S¦Ã½3r+£Ú9D$JˆG¿éòÂpÌÚj¬ Äö”Œ©} <S\\Z®Æ¯uk˜Ñ<Î¾Ã,%F\\0¥pN ˜ä®egÑY,ÙjäÌ}©.<êµp(ƒ÷%,ùäX£ã‘ 4ˆy\\\'®õÛ÷GÑ‡èF-6¯FPë­?ŸC1o4I\\0Íº\\0Ú?ô=¥\\rQ	-/ù…\\0±â8é~@­ €¨TÍf%%•™›á«êl8}oH\\\\¨»Es¦»ş´ZD‘=ˆF–$K‰	ËĞ„@UÒ€«&3ÌjQ«Ü.yÉiÍ™.ªBõ‰õ(eíÚ¿z†ã&ã˜†[.Ãÿ\\0h>!Ì€\\Z@G°}»u4‹Õjš®ş×}í¤ßB$¼i½F†ÚÎåÎT*ÿ\\0pˆ=Z·èÇšj“Jİõ×ªµ­ÕÄŸ·«-…=\\0„\\\"Y(4JÒeò¾„ÃÆØ´í§©–#„ ¸¤W.oqÛæÉµ8ØòS©†gÚâ+{X£’p?.ïÚ„‹†àöEã–±¹Ñš.İÁÃïŞ›<à]ÑqåS–F¡Â tŠ\\rl?3YYÉ=G ª—6³bg±­H°Ífªï—Øh@\\rèÇßÍhæ~â®ÜêóG¹¾í]…Í°^#ñj D:@üÍYF½ÄÇİ£{Ù~K½\\Zª„`:!ûiş \\0 íî$Gô4KbB†°.Sé$´$‚ê:2Åêc0Ä­ƒB`à{ì— DB½6%tğ6Éú½7ÕGSğÊÁº›‘îHQÂoCBÖàs±@!9•|œŠŒ–Lb±•¹µõljP$ œt’’IšCÂÌÁoqÊZ@\\\"Iüğ„ÔâCà¯p”üÌ\\rA· ´ª\\\"Œ«Ëm$”íš²›„šFÖ#AÎ¯…8ôæJ›­ãi«-l;£$ò«i•’\\Z”)™M(AzQyâ®“uü?ˆh.²–ØihäQŞ“-×½„>Š®LÀ\\\'åX¨¬‹-³¾–wõ5˜²æyiÜ!\\\\F!ğxüı:Q Â~ª‰»š5Ê¿cN‚):ğD¦ó­9JI¥‰Ğ±ÓĞ_4ŒH\\\'‹;¯Ú‘\\0«\\0T®ÒÜ-“‚3Ãy¤»ç ÷^ÓO¯µ/DiÔ|¿qW®„¬­W›ë$h™ª³ø«~”|vDæ\\0¹à\\\"èTH¬õ¦vR9AßÚJ”@TM8sÓïôH.@RÔ¸NïmßÆN¸à|ñ;{œÅÏC »û2€ëCÄÓg\\n#6EÁÇúíQ­Ÿèláû·²>\\\'„ù?Ó? ^Jı)|¢¼2u’\\\'|ëasM1m³†úV\\0í7ôù¡d]ÔÑ²CuŠ94Ø½DpPq–ü… “îÁÃì{Tm«</Je\\\\ßú#ïAI\\ZÏ¡n1-E|M]^¬¾åXW~Ôå:RßñKå=}Y¶¸ú¶­•‹Ì›7Òš ×	o¸W•ì†SÂ´õ—Åxæ}¥÷F(Ëxö0ğğPHĞ_ÉP€xŠMÜóBH®wT\\ni!ò%¼ÑG± Æ{Î\\Z{Qœ;„>\\nb^e7C­€Íïî\\0]æL¤J.ÕİşºP«°Q-“Ë¨aÇ÷qä¥e{u˜ò¤\\\"wS¸aÎ\\\'D0KºHJYÊQ¢¼¯XWJ7v<´ÑÑÄê¦:|r\\0/HR°U•våj³²‡Õ>iM¶ÅMfÿ\\0æ(€+ké€ÔF\\Z‘ş¥ô$­À2%íB¶ºTD³YÇûR\\\'•oâŸıo¤ù[£@$w¬%öÀÄnVnT¬=V\\nQ¶œ½oOÈé/•`1Ö&šÃŠRc­\\ZVÔŸLmoÀ8Ôİ£ccóŸ3ëxrj$x}‚7t*Ğéø¸ıhÉ£\\0î3Bm±.(GAg´ÔXS^š¯¹/CYXĞôjôQFBÜZ:%—°ğ1æ¡áÕÂ±;m%<Êc”Z7Ÿ“4åJŒºØCıT’’“œÓs!$Ì\\\\\\\\ÍFÊÆÙV:MK•¹]÷K¯µğ€T\\\\‡Ôm»éCõyôÓ—ü³‘Hò“°ÌSRÂD·`”@ñÉwwx¾òt°$ˆÓ{518ƒ•\\\"jÂNÁ4“Oc^3ÃåˆÒªôÌ’ŒK¤®hÏ¹±·­?˜2É3\\ZŞ3D|¯:_ªQ,C™z›*‹G©øô“JîV\\r>3	•{¿7ó˜›t7–¥1…O ÁT¼:‡BiÊı!›8ÚÆ†CA\\0àş?ÿÙ','image/jpeg'),(37,NULL,NULL),(38,NULL,'image/jpeg'),(39,'ÿØÿâICC_PROFILE\\0\\0\\0lcms\\0\\0mntrRGB XYZ Ü\\0\\0\\0\\0)\\09acspAPPL\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-lcms\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\ndesc\\0\\0\\0ü\\0\\0\\0^cprt\\0\\0\\\\\\0\\0\\0wtpt\\0\\0h\\0\\0\\0bkpt\\0\\0|\\0\\0\\0rXYZ\\0\\0\\0\\0\\0gXYZ\\0\\0¤\\0\\0\\0bXYZ\\0\\0¸\\0\\0\\0rTRC\\0\\0Ì\\0\\0\\0@gTRC\\0\\0Ì\\0\\0\\0@bTRC\\0\\0Ì\\0\\0\\0@desc\\0\\0\\0\\0\\0\\0\\0c2\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0text\\0\\0\\0\\0FB\\0\\0XYZ \\0\\0\\0\\0\\0\\0öÖ\\0\\0\\0\\0\\0Ó-XYZ \\0\\0\\0\\0\\0\\0\\0\\03\\0\\0¤XYZ \\0\\0\\0\\0\\0\\0o¢\\0\\08õ\\0\\0XYZ \\0\\0\\0\\0\\0\\0b™\\0\\0·…\\0\\0ÚXYZ \\0\\0\\0\\0\\0\\0$ \\0\\0„\\0\\0¶Ïcurv\\0\\0\\0\\0\\0\\0\\0\\Z\\0\\0\\0ËÉc’kö?Q4!ñ)2;’FQw]íkpz‰±š|¬i¿}ÓÃé0ÿÿÿà\\0JFIF\\0\\0\\0\\0\\0\\0ÿí\\0„Photoshop 3.0\\08BIM\\0\\0\\0\\0\\0hg\\09vpQdYWzwmrmaziCoQjd(\\0JFBMD0f00078e0300007b07000016120000c91300008b1500002c1e00009f2a0000ba2b0000ÿÛ\\0C\\0\\n\\n	\\n\\r\\r\\\"\\Z)$+*($\\\'\\\'-2@7-0=0\\\'\\\'8L9=CEHIH+6OUNFT@GHEÿÛ\\0C\\r\\r!!E.\\\'.EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEÿÂ\\0\\0½\\\"\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0ÿÚ\\0\\0\\0\\0ÌË¾Œœ÷Ñ©ƒ/&vCÂ’ÓFajü™vªJzk@Âó\\ZPÉKKfY7¡FT÷Í3+Ú\\ZÔ!æ¼aŠ÷Z6gÖÄ2MéP\\n>MK}‚¹©ÒT¢°±Å]nrÓA  Ğ­SèZ·™±\\n½f&Ğvåì[|ˆ\\\\…æ„ÍtÑ Vª(½R½–*zª&ÔqúXÈ)2Qö$I\\0\\\'è{ŞÂH÷…d|—¨Œ¡ãcÕDÚëÎ°’üìJ%G\\rK„‚‹V¬t=H…:<\\0îëR´@zTØ‹CL|„KQ}ñŠbnàkU§¨3:,³>Öbv¿×/H« Å\\\"DPéEôºcÑ>DE¾¦f44¼V.!ğzdVÔdP:ÌËY‰zµt,±‡PWm9qVm‡¬€ºâô„YQ÷ŞO¼èµè¦«PïyÊ}İk½”BE]ø×ÈœQ¬³¬¼½:ìVrayK æ%O°aÔt:Iª•¨5Çƒ°¦y«ï‹Ï|ô=î ½sçGœ÷yÌ”&0ñÄæªÀLöŠ†Z³°^n\\rF}	pka™ÏR±ã¿-rãŞñ+È•¶‡k2+*K¯é\\r­a^Ÿty¨ÊÂM\\\"¾qqœo]Ïu«ïyë¢É«NY)	¥LR4yºÑ0gV¨h”2›èTà´Ph·YK“ÃÆ”d×+*»J”û¡ÔºQ8Ùy4£éY³3²Êè¬¨)yì}¼çë(¬µûSXíTfdÖè²v™`‹L–¢+¬\\0ƒ<£ı¤FªÊµÌ{º§ÉÇÒ›é)KD&ıK@ú’$èZÛºÙÒ¤Z*m0»°¬{6ÙQ’mÉ2ËcÕøPğée­,2ºMµ“ÑD\\\\î•h2µgİç4H¶º¦&(K)Òh`¾¤¼©ÍİMM…=²v=ú[Yæó¼Ô„ÉTA’ií„W[æfİ%t½e\\\\©z)Á®îá3)Êl](„NQWP-ŸÏHeBµ­UbƒKMÙæÓ°õ6]3TÊYÏnu9õ´‰Ñ»~í#ÉyÕl«vÏÎ÷šÿÄ\\0.\\0\\0\\0\\0\\0\\0\\0\\0!1\\\" #2A$345B%CEÿÚ\\0\\0›LĞÀÛ4)\\Zk543v‘´ÑU‚ï»NóGÓ¾›ÚuDŞ `ÇpY¾u–ÄöÇ1É‹çt°÷+í´nÆ¤mÆáß×b~ûÚFVÍ8ÆG¿\\0íá¹[†ÙkSFZY˜¡øWõy!RûS«Ã¸ßq}¹9‹³-,4ğ¾\\\">nQÆ^Ş“Uôä^j!ñ\\\'ïÀÉşŸ‡Öõ</†{0xıYöÒĞß[‡]‰ûïquÒ‹-g~Òáù__†]q£-?Y“ıŸşgòkp´çÿ\\0*Ïçæÿ\\01m4ğ¾ »«ÏÉ8é†/£‰\\\"Y™“é“ó’öÔFOôÜ7ø)ı%UÃ¸¨–}¯Äw:ñ\\r¯›ĞÇ©ºMñQ<ŒŠøKn”ú³è¯ÍêQvQïËknø˜å£å³U•šo#Š$¶ÇºÖÎıÜC­WÅµ”gtS\\\',äU•r—/Ñ¥9¥(¯<¥Tçl—æ=´]”ï•ê’ß?ê7…ò~\\\'ÜÃ¼t×¶›£ÅªtãTa^Jt–ùê+,f››NC·\\\"â\\\"K¼´×»x&ífØG#ØiÚ±SNJ7:¬ĞFXôÇFûkî¨;ËlÛæZ-SÁ—óYø„û`\\\"oÄÇàvŒb\\\\‰=j€2õx/­¥šk	ÔV6ªıÚÅMÆ`ñ§+O}9iËY]d‰lÖYÚWã–şà\\Z›êé•fYXk¤Ò\\n=Ï^Øgˆš°oµ|s0Ë¼öš_ŠW}Œt]Ó¨%É¤°îD>Áã¨ºş,MÆŠ•\\\\…yèëŠŠ‘åJÊqxkéËAòëŞß&jfãÊÍ»|ü<>?yÖvx9jVVäÑç_bî,Ş&öNåæy—÷ÛçäpŠa÷Í`ñşIì»‰Œ¯U„Ë\\Z‹=1èT=~K[hÛ_”y]nÃòau\\nÚ¨ö²´Ğˆezi»HlŠ±Ö\\n70¬\\nŸÕó=›ck®Øã—áL<‘¡3Sí¬­}¡n†i:n¨º¼EÓ‘]f:szãã²òw	\\Zây\\\\&½Éç§oÄ4íëÊ»Š›£TDMA:îCB@4¥ DØx²ˆ—Ug+ëĞäs´}8ÇŸùÚyÑ6´èˆÕ[×´Ìk5šk2jÒtn´z;DÔ=e}<ë,ê;š)è¤Ïr´•#–&t*rë*ñ>æñ¬\\\'‘ˆ7CöÀšÕM^Å¬N”Z€š½B%Kêê2_¶¶+¦êĞ³\\r¬£ÛoCl¹2‡pØ{\\Zû©É«¨%_¸|s>{[ÆëNÊ;|™7oh	{UTntÅtc¹`¶Á=EĞfŞ±x£Jsk½æn\\\'Vau:î5\\\\Êvš‡Ç1£|¾¯%Ï¥|ñtt\\Z\\\"íäÈ¯\\r7\\rHÜ6Ñ›*å‡•gVj‰cåÓ\\\\»-,½ªO·äöUÜwŠÔ^!>¥Äb ^‹bmƒÍ?`Šfáó_‡SÆ¢Ú§Ä»tÛ3&ì\\ZÉß2jRÿ\\0gÉøšé?ĞıÎ¸«+²Y’7T‰ëÚXôäPtİ]ˆ­TêÖ\\\'Z©×ªuéj„ëÕ=E1İv¥´”#êµ¸÷¡8§Yj”á¶øäÿ\\0p‰à7w3Áv]0^ü†¢Ûİª¥ëèU——Ğªt)‡Ú/Æ¯Ó×_C…Ö_©åcWéŸ¡ÃkG£6¥L§%×R+Ï·£^>šüFw·¨cf\\\"KóÓaÕ¹hÓ¸ñ¦œ¿êm›8YÖüËE™ıXWÓæf÷ÍÑ½Nbi”Íõ7{¸zÇg\\\'éXıWmjÄCğ¼å™?ØZ5ã®™)Ä,1ìgä«¸°ÚÜÏ˜Ş|©^‡zb[~MúìV{oêfÙCå|Hzœ—ÚùŠnLÅêU•ÒÂ|¥|fÌS’2FÏ\\\\•aYŸM•#Š\\\\gUëS‰§^÷WÈZ,x¸-¡\\rj¢ñîùCö§°ù¿*§®Ë=e’œ†±¡•òtW—ã-%½Áä|_örÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\00 1!@ÿÚ\\0?½½­­4ÓMóÏğE\\\"P3ûì™Ôˆôsã‘ÜU)xÀÂv˜™¤£ãi\\\'ñvş‘B´Îë<Ê°äæÿ\\0LÜX¤Kö´Óo¢K>ŸŒFü0Ã0ËF:ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0\\0\\0 0!12@ÿÚ\\0?šâŠ(¢ŠŠú›6f9ûÑ®%b_P¥³f‹1^9F2Çämàã‰P¡rÄÆââ¡d~ŸqÍËEÈşÆ<Ô}ÑLÕš±_•ã»LØE–ll,á›EÿÄ\\04\\0\\0\\0\\0\\0\\0\\0!1 \\\"AQa02‘3Rqr#Bb¡‚ÁCƒ±ÿÚ\\0\\0?^“ì½\\\'Ùhc\\r¶\\Ze¡ö]\\nôŸe	4İoXÃHY˜ü)ñÖÜ´\\\'ğº-²áß@¡À·ê‡Û~ÊLÇÑg.ÈOş)ƒ¸áÕ©èÔïÊğÿ\\0re(á\\\"eZ4™U›üTô•{„S,lÌá]Îõá[.V\\\\«´u@s´á\\Zy¹2Ÿ\\\"ÒªŒµL{DĞ¨¿áeÒ®§ëÏİ4ÊEJ­ö«‡Èœzß£U_¸£QÃ8”Ršz·\\ZMë*«z\\0ù^îTérp%>>IUKONş-¡Ë)TÜ°…wò^ò¿éÿ\\0kÄ}Ò >`ô¼Ş¨ıUş1ã“£Sù!³rÛH4µµ6¿<“M—I…R© UXìÌ›öµ?êWøMÈÀT_ŞaMÛ#ÁİU~Ë×İ\\Z[9ê“âl3\\nvıÉõ9»-UGØMıôOfÇ×<ú­†Ï”L¦³gG5Iû/AU:­e¥Ší¾œüËóT†Î6dSYiaRê&ôç»\\\"VÂÎQ2˜ÍœZAÕ|í\\Z5iÜÕe:v³ºkvvÁêˆÙÌ¨±Ô‹¦y¦³a0>dñ±›:£I´mëdÚvéÈ3gzïŞÁO,P» 7çª\\0a=7xs*]æõP\\\'rq„\\rW5Íqb7!5Ü\\\'¦÷JôJÉ™jµŒcp¹ÛÃ{ Y’T±wAÂ¡Ñd­×©Då¹.G|a¦1ªæ¦”w%KŠƒ˜\\\\×Ã5nÉ·c\\n%B!fP±lîÄ)8L)ß7£{ºŸuö¬‘iAzq…‘©Ó’[ñÏ<¼ ¨Õu;œ*N5VrYè\\Z¬üù¨§ ÆíÛF¬²]»;Ùaf²âuÅ~7-Çâ.ƒ„ÄùZ£¶…ã(SjĞ+g8Pÿ\\0|[ÍF§™ÂÖÌ¹fÒ0²·áÈ…Û\\0“8zŠV‹¦c¼ÁQ õ*ÚÏ¦®.%¼•õÁÈ.¹½—aÑ?‚ ¢:õÀy\\\'zÑéd ¸ûàÔí­¦Y+\\\\Hì²¨ïuñ]î½sõ\\\\l•h6Œõtê¿OòŠÚ\\r	S»ßİ6œ÷´IQwÃ‰ ¯L.¸H+„`ÚG0p:	Y¿ÙZ—t\\n>O|m§¢7ŸÊÉ„ŒG“Â-=•Ñ—P¡¢{•Ÿ¤j›h±œÕ¶~S,Íœ‘ò	çÉ0©À®\\\'e\\\'°7ªõƒù_µI-×e·İ|F{¯ˆÏuñî¾+=×ÅgºÎ£}×Äoºø¬÷W\\\\#ª-5ŸtCz«(DJ,\\ZÂˆÏ¢c]¯‘ÃƒsÍU¸Õ2ƒiÚoƒ’m2ÆŠdkÉ=¶µäFS3b.~B\\Z£dÏdæw„ø¦Ù·¢lÓdÛÑ=Ï\\0ıUÖ€	äì¦Ğc¢wé³ÓÑ9ïh9ó\\n„4\\0Ny*t¶ãŸÚ™IŠa<\\nl˜è˜c’¸>2ÇXY×šÏgz‰Ëz7\\rª§ÚeEPız­‰§?Úmé½®Âêe¿Ú­÷&7¨*«~PŒjéTgV¸ Î­+ÄvéC}NxcÒ ^ü•ÌU	ô˜„iZâ!p€ÕÄâp€ˆÄFãïœÂ(³õ§DÚ›Âmx†‚\\Z™Ã\\\'’™vÊŞœÕG° rT\\\\Ö¿†g…V%¯ãÓ‡²Ùµ•6‘òóAmKòı©\\r©h^YSõ	ËdÛÛP‰ƒŠàAÑ›¤i’Ú™\\r²y%Û?Ú!=ÍĞ•ÂÒ¸İªáh\\nwóòóİ‡	Yn1Ö‰ò?ÿÄ\\0\\\'\\0\\0\\0\\0\\0\\0!1AQaq¡‘Á±Ñğá ñÿÚ\\0\\0?!ˆ–ˆrÅå‹ò‹ı—N«˜?;Ÿ2â£Mˆws,ŠxQc6Ê¸(_¶ĞSë?ˆE)9ÉW>m¦ -™*SâáFXÛnèƒ_<Ú–ë	\\nF§{Ê°Šì“ÿ\\0£•¿ŸâÏ@¡˜-øs†“o`V+¦‡Dz!r©oxËhê?±PØYU¬‰ÂT4ˆ‚g’ÓêxA>º_ÒÍ¸µé*zØş&3»Sİ±Ç¦ó_¹P™Ri-eÿ\\0¹†ß‡ŒJoCüAÖ«~¥GWŸŠŞãñÓ•ájtõİ¨E\\n3×lãŞ`ãBù€R®˜»ÿ\\0u?×ñC§¿×”k‘èíÓ}Öoõ<eş.ş„ÃÑşšRÓë“Š§ÛxªÅTVÍ¯¤ÇÎ­H›gó*°æ½zÖ#ÿ\\0ºŸçõ?Èñúx€Ø²[·)Û\\\\©(™7‡ h+z¤oïsıßeŸúüÌøiû™a ²ÃP_·şÌxş’g&^‚nâÅîã^Øö*°•t§/—=.ûß›„ş3ÊÛŸy¥|ÊIÄ¾7ÍGyŒÍÇksÆ»%¹zÍœ_Šg<Ù0?óKşÏ¹¾×>mİró—©á£Wuâå&¸úÁK¯\\nfvlœc öšèáOx­2¨OyA^YÀ@¢MNfawÓR­»rx˜]²\\\\!ÎÈ’Òü²Õ‚npÍK×º‡ÂUˆ£,W:™k&¼¢ â\\ZÏ+y¦ŸQ\\nåÑÒØ¼j!WÚPÊcÄ´›Æ{M 85-ÃêvrK¢x1ˆz•Bxt”tfğˆ3ÁÆVh%¹6›Kx É|\\\\ kÇyø¨ ÜÙòE\\Zn¼¥ôAl”óJcC3Aİ—Om\\Zoˆ \\n€ÄØçÔ`K9•ÙSgˆ~}±Ówš”0sÌ4¢¯RÆf.Ş¥J³²dÍp¾	”¢a¶k$pšŸc¼ş0*.Œ–f½Ş¹—9múŸpVÕyšÍJ¾ÄAÌÙ¨6Ë.Át`+ßbuŸZŠ¥Aˆ3¸?ÄËÑ‹Z˜È‚k\\\\Áí0nê’oæŸhG+Ù©j¯lÄ*Û\\nL1ñ6ƒVB¯ıpVà}1a¹Q¶s©ÕÊ‹\\\\ú˜cƒ¥\\r…Ln^%Ë–Åí‰õ\\\"Î	Ûeø–é‡#K¬êPB™bEíĞuß’¦¯QñµÁC(D•e.HUE4•Îµ1…±\\\'	_Éé]Œ´ÅG¿æÜ15úéê]Gq¼±;·qÌñæA©coEğşSÅÂ”Ë”%ÔTfÄJræâŞ`ØßêZBZJ}™WÜk¯”,\\\\\\nÁÑ¡\\r_S¥´Èó‘h©W+‰Wæ)ÄÆĞæHA¨¥ß(Äj¬FN&g¦ßyXCˆ?Ê§ê-¦Ö]Œ§¼—fa¼™ã”åş>:VeWJÛ?Œ›Ã=Ê»N\\\"A»›/MW+%ÜÄ³”ßyˆÈæ‘ÄS,m4i©ÎV™_¾¡\\ZœEy&lƒ03¿£ƒ.¥5ğá3N	©KxuÜpÃLË$¤ötœw©Í$¸tjT[k>1@Á0AÂ÷`èÁ´n\\0,pş=ÕNÿ\\0£Ï¯CaæYà–2ô›F¿quÑ9Í%2ç¶Qi`¾	^æ¹”’ø?0Îu¤«;…^ª´nkÏƒ¦#İš³zÚ¥\\\']™÷\\0NlÂMM}ÂÏ§D%\\\\Ì¹+ˆxÉí—U,kTŸ+<Ã.öâ8ÊŸ3^)Ù_1NL`˜f½¯¢ŠìùÅ÷(o3îåÎ|ø+ğoæ<¦ggùr¾O&:P\\\"lI²X(›o¹ú¥éÙq)Gdà‹)qÜæ\\nåQd“…ï.%ÓP&ŒLô™³ö½,JŸ‘ÙŠï9ëåâ§$c×>kˆ%‹õâOR#^Ç¸\\n{5eeûÖí6~£ÕÌ4%âp¾f‡‹»»j\\nôÅ‹ê%4ï®X›l¤½AĞØé÷vOÖÌ_JcæxƒÈÓâ)_; >Şg<=²Œ]h¯53?ñê}’’]4D+ß1!W atQ^»ËHúlR[Õxa±÷3â•„mÌC›‚¯şá,ìÂîYìôø£BÖ|ğù;•ø’†îo¼\\nº•JB™GiL»1Éò1	+îÚ<ÊŠ]Ç“°Æq¾k”oÆ3·ğ0Ú¯…4<!ÿ\\09ÁyÉ‚x¼aÿ\\03ùxêŸŒÃ÷Ö?ğóí](^ÇYNJ¨T¹‡2û1lÜpÌí/‹¿K…XÌR\\nìE²Ã{ŸiVØ)_©r·V)&õÚöqJİ@´«Î¨b/ú8ûÀ—æ\\\"‹u3“îtÊßè½JÉy‡h–†Töë4ºŞ¢UuÀyG2sSˆRÒ?B&¿FZquÌø>ÅR|cC6lZïP½FÚ9%QG¹|şaX¬¾ÏòIú=N5­SŸùƒßgãÿ\\0Ê&&?y“ÿ\\0±ñøëØ—EŠÍ3ì•Şñ>)©ñ}Ÿæñ>Yÿ\\03„·óÜ°ö°÷ÑÙ;é|Òùnºµg«ŒW¬M;èñ_›&ïa¤ÔÓ)U®ïyˆó£^~ßDşÀú_^¥Ëj‘ZOæÈ\\\\şüT„DòËÖò:Oêë7=/ao¼hşkıçåÎ¿Uğ†åó‹Ÿv™Ägg~ñ½Ç‰]|õÆªbæ	­™_$gdw§ÚÖWE˜»–Wb)P$36z?Pël¾¡Ì¦à_Pçşz3ÿÚ\\0\\0\\0\\0\\0\\0\\\\pˆRo”jn	:÷î=ÓCª‰=7ûƒÚVJ\\rßÈõòÚûµls2†fOĞºŸû±â˜ ÌøÂ>´\\\'cZ?ğ@“\\ZïHpGõÆ›ÔIH®?á™ã§Û??Ï•urİ©gbÌ“~}½WN7ª—®…\\\"ÂÓüËnY\\\"*9zKã§ƒëg›Ìo¼\\\\gGZ©î[5ñÕÜ&ü“¹ÏÿÄ\\0\\0\\0\\0\\0\\0\\0\\0!1AQaqÿÚ\\0?L¶Ôòÿ\\0‰vòÔ©ÛR¶­ÛºvSì8å²XÈØØØØÈáù\\\"{ØØæØØÿ\\0 wç?m¶ß¿¶è@>ŒH»vÉ÷à+ÈŸ7ãˆn,˜¿’•RLcRÉ2~/m†’VÃğƒ¬?R@09!û õ‹É—òÖ}›®0\\0ÈßŒ$)²ŞÉ\\ZC/ä½úÌ:]õ»g²#Œ{†Àü%7²‘KUìıÅ şHÎû0!Ê6ÊÏmY×lGYÄlîM±ÖğXq|‚#a½`JülHQí Œî’ÛÁt·ûjÛnã¢=€~ÙşØşÊ7JkşFÄweïÄí¹Ş.Ï3{ómµµ.Ã€J>OÅørMçÊF0RL²°YÍ¸l¿ÿÄ\\0\\0\\0\\0\\0\\0\\0\\0!1AQ aÿÚ\\0?;óÄå’l6Å›6!¦Ü-!----!6Ò~(Znm§öÓû(ÜˆÛ{-»n[dl³ËòXDÒ|ÖSyúÈg¶‡¡8{)°Kœ¶Jki\\\"çì\\0Âİä˜Ú&Nç#wæD…yx‘Ù2lÂyKÙ×_$O\\\'àÀ¾X[ñd?¹5Õ—[6E\\\\È¬9‘½ß°aób\\ZHÂT{(ù;›p\\\\’°N¶“‘£©1d’İù–ã)’şH=0K~‹Ä‚\\Z’>å‡2ĞáS6ïl–ı“’3u”9“‡„ÒBrÅÁB¹Ø|w%ÆõìÄw\\0èIÎÍºŞ“§—ü\\\"Xé‰`GcŸ5NÙ¯g/_Sı9:À~°Ÿãì…­Él©a\\Zœ6gÇ†ÚÜµ;³çÏÿÄ\\0$\\0\\0\\0\\0\\0\\0\\0!1AQaq‘¡±ÁğñÿÚ\\0\\0?ÁÈE¢‹RÚÖ X„Â İBl|²4ÆôqÌ	\\n ©8Ùg(mş@–”pWª3p\\nîDíLG\\r¤–¡îƒQeA¨äÈfÛ)vã2º¶U[\\\'Œ-c“LlËKr’ ½\\0óuª\\n:êZÆÕ5›•*¾¸ÄiIáíÙzB­ƒ%oB™ÒÀ—éªH0Çöë[;?û©nĞZ4=D)«Ìª©”r»âa]‡{Émé‚H_i\\nÔä\\0ÓuY€éK€ÀÕ9pqv?apH»)Õ†àI(imÑ¸*//÷—›úÓıóœĞ=ºúÁ¦s&vb3Í¹Ì^¼`t§9›yækúk+ÊÀ0ùo½c--û²¥Ç×²Jşãöƒ{¹©ƒÉ¶÷ÛÅç\\\"]lüûÃsÚÿ\\0sÆ=úKöŞ]İH‹)ıA›í<_óc\\\'0|\\Z Æå¥xÔ<ÿ\\0Hˆ8qdŸİ8yæ|¤‡<]÷$­«œ\\n¹Oîâ÷Ã‡YºÇXşóüp0ÿ\\0|GõûÆúœ|ï4ø¿·Eÿ\\0Æ¹7~òıñ±YëW¼‚”(´1Ôÿ\\0tş‡ûÎ\\\\´?ööã.ŸÍ=e\\0‚Ê¼-ÅPm\\0Z¯PŞÛZßÓB\\0ëÖ²¶4*[uù=BƒŠõ«¥2Ôï„œÄs:ñdÆÙÃmÍ\\\';I<e[—ƒ\\r(x\\\"±7´µ&jRlõ…Âhš õğ”Kµ»¡»ósµ96Jú!‚`Ú|\\\"–²32fÈ2Í¸Äºø€Kø³”\\n¾%Üf¢DÓĞ¼ÊxŠ~G*Ü­2Šg~#Å:WÔäŠ(X4¡ÃÄ)Â[vÅcB£¸fŠ.L$¢ì^Oq!°”çC­¨9ÖbP-»lÃP:\\rh-Ê†³–6İ•ˆÂÂË ºÔÔAàb5•ÚœÂ‰i0¼Á J®\\\"[UkQØ-ÍÁ¨ÕÁX\\0Ñö69kGO?†2e1dUğ^I™GiÜ5‚pË–Ú’¢f6•wÅÁAÃ”±‘•CZ¹l\\Z0ù—ÈE´u ˜jüË>P«:/Dæ K¶z:„«\\ZOÉK+2İ4=1–…:H\\ZvX}Ëÿ\\0n5MZBüAÃ*\\0mëˆ*€&%J-ùqê.¸´B½rµGÉD a\\rTU ÷\\\\A©&¸+p}°ÖBÍi\\\"7Ô¹xXÌ2\\0†·+¬Å UææJ*ù˜³Ë¨2D°Ó²àá‘T0øCtGw.âÙd;­ÜÔcl £Ë¦tĞU\\rY‹Ä‰ ”ÿ\\0ISMqœ£‰mE7\\nşXY3æQQ€¸”w}Ò°PØ,¸8`¥2\\\\æeÍ(cüqJªü\\\"Ø(­CrC)-	ßPÊ¦Ïs,eâgÚêçµ­@t@U—˜w9Ì¤Åo •P Ê¬´´K¢9+ª¨%Ú\\0UÜ¯ŸÎBÁ\\\'(G\\n]?Ö*UÜ&ÓÕÇ¬óÈ!ë¸ÂE¡Cg˜¬t»Š˜âÀë¯¯qŒZ@’—A\\0‡\\\"í.£{sIU/ÚÚæSaRjàHP»KªñP»­«Â<)%†H7cj\\0‚K!ÄR\\0tEÛc×ª—ŠÃeAî\\\"dò é&ÔAçq-Êj*Üa}Â%«dt«AG$6`¨Wƒ4KîfY~ÊS+ö9v,‰Õ=†±¡ƒ›Xù@*şÂ<ˆ4ó	ÊX@}0 …D±‚bNĞ¥”‘l*$jêª¾ã{875æÂY^àB…¹o0f€|°²R[ÌP4¡º£b+ˆÿ\\0°\\\"©³AÄ2cnÜØÈzŠ¬–(I/ã$ƒŒ’š\\nË0AJ(j¬;†B÷…ê-šJÇp1VØ¶(‹B£T:‰H4K­X8ÖÒğ|úcµm·GP[6RÆô¥İ‰MAuøÁÁÂ˜…T±ÈGVlu5·ãn\\r0š^TÀ(ÈYˆ­B°¹›­,ÎH§u\\0(®H¤$*¶©[-uë¨2ƒˆ’Ë.4\\n€¦ÜFb¸XŞœõ\\0êí=ŸüŠªYÒ¼ß³·P7ŞÒC\\\\pª9!Š¡4·H	byà€Wì1°÷uy¨ŠŸ\\Zt°Ùš¨\\\"È\\\'Ü\\n…ˆŞË‚Ëj\\ZŠÅ°–JZfHã/ë1hŒÓ/rˆ0—¾XÒôí‰4\\r‰q¢Q¥ÈÇ_Ö` Ö8‡ Fš´HlŠ©nEÜ,Í!8˜(âÈ*¡u^§éİL\\\'\\rôFĞ†Àª¯QÒœûŠ\\nÊf)ˆGŞKK¡´Şx„™ûU:3›‡€\\\"6»_³DªÍ-–İ(yFÈ´)»…â„5q”z÷€em•rÊsı\\ZƒÁ06f\\\"¶½pG[Kúu2àªÁ¨h&!šŠqDE€îR’ÓW3SH·ˆ\\n\\nn‡Š€´‚{¦37RÏQîšªÇÔq˜Æ®³ûbPµ¢‘€1#\\n\\0)î)4iƒ~B ö\\\\É/¼nL™B’nôXz70§–,í³•a)¡yx”Ë/—æïd®Ä­„K-¾YCQ[dä!¡d‚7C»RxN%V!ÁÙ0†-¨â&Ÿ`¢í3¨ÏĞ­\\0fIÕÔt<C&‹Ñ‹Ô´ˆˆ‰ÕÃAÏFß€×‚ô½°ĞĞ\\0m€UZ\\0æ5ñD \\\"R<“,	>“\\\'¸Ğƒûœ‘>où–´<BpA\\rÓQƒXªŒ4KhÁr¨.eÙrœ*Ì_1­´ÅBîÁØå~ÁB\\0µÚ—¸âU6»#-²ã5–\\\"ˆ\\nGÏßä!€³PmN†Øğ–Ô\\0%(DC@ÖhñéœkV\\0¨\\0ÆLh_~ bŞß\\\"@‹¡èbV­ÃúCÍi&5pAPof)›ÖÆL%ñ˜ŠMƒû2ÌˆWÈ‚*«g,¹MpE7O5@TDµBgÉì#î\\\\æ˜Êè¬<Wš€òÔÿ\\0D!`(ª£PE\\\"é6.7Eï\\\"ÃÚ·ûfo·šµ±ám…9¨¡ ó1‡Â×0ºå·r©`“Á·1J»Ã.w³à:GL]×dZñV‡ó/ÓÓ>\\rOÌÅä¥î5 ˆ•1HÔ[èTŒ{ÿ\\0õÜ=¦=èDG±©ÂfOü†úò-iuPEc,%rÅQ@¦b	h6Ô(\\r0÷İ½@tº–cæ\\nØÂö\\nÇ‚©ŞqˆïÔÖ\\\\4òåS	›är.d]©å´›Tj“@Ú²Ïû#ŞmgÁuôÀi5?E5ÏÆx˜gãÙÍá©e×qHÛr“ÒŠ5cÒdŠÖi{ÙZÒPò±ä½7ú‹kïğ`$\\0–g	\\nW©{†E=¥3ıQO%FÒÙÔ‰¶(]AKv‘J£ 6ç\\nXËr®¦³Ô;>cGàV†$W@ÇX€Ì7\\ZT¿½Í[ü}<¼zÿ\\0Í}1)E†•Ié!ïæÍW\\Z–ÌËJí˜òç›·ÿ\\0‚	(^ê5Ê±c3×ÃPQL²o(–m—5Ì¨\\\\©¨^U5°Ì§pçäœ~æ×˜îJ¢v±º¹ğ¬Un©J§Õ›¤i]Je7m$»ÄNP·op§h|@qjÖ?-aÒÅ©R‰0€Æ1óXEìÎy5’>û}ò|ÈÆ.+;îÒn¯ãùÅ~[æÇPÒ[Ì½êÂàõaBÅ—F`7D!vBİÔ=‚^£úpİØAÉh	ÖHßbeÔGT,¢õJ\\\\Ù€K€Q‹¾¥Ú”æ}%z\\0	GNY¥@ZŒÖs8Q¹Ñ±ü°–;ÒK1óã«np>²TZk¡à»«…hKÂC$—Ae<s­F:rKT6²YuP| ÈÚ¸)ø+Ë€¢Öjã&ÜŞ¦F(¹W\\0_¡/1t”õBçÙï/y‡ÿ\\0Ç9ã¼´ş· Î¢ßæÕjø½›±Æ¤/~‡\\0¨zèK÷âÂìNx;Ó<º,õx›»Ææâ!ızî[šèq°\\Zwgu6îää`à6a¶&_i\\\\EÈ Ÿh7NàÀCğ—‘ˆy&’•/§‰t´âÍÔ]Qo0<P½&şÄ…j….PÜW(…‘Ü	{´Hï3ËˆÌ0¹<ìû8Ú0Ëç…”ö;|3S†…Ü\\Z™u­ê[G7?í>‹ûtX¹\\\'/$oöÍúËıHóG{\\0díÒN&bşuJÑğÄ(ÈÒßÃÌQË}¯Ã¾¨³|Ô(oci”\\0…Ë¨&(¸‰Nh5±Ãhµ4˜«Ş”<ˆ‚¿=oÓóMšvlù÷há‹Ûœ.;N¡ç%¸ö^§ÈëÔ s4X~ê&ïŞ¾ ãî×f!RÃ7¤º¯<ÚI‡d÷’‚øÁşV^abLâÎ%·(|òt»ıÊìÁ§Ù[\\n\\0„Ó´Ï‘s×g>}8ŒÊX	Q}¡xfÆu$<&XÂË/ú£mâÌú±DñCñwpZ ŞáàÀ{ÍÿÙ','image/jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (10,'Miguel Angel','Castillo Cornejo','M','1992-03-09'),(11,'Jose Manuel','Poveda','M','2015-04-08'),(12,'Rene Mauricio','Cruz Hernandez','M','1969-12-31'),(13,'Idalia del Socorro','Mairena','M','2015-12-08'),(15,'Alfredo Heberto','Martinez AcuÃ±a','M','1969-12-31'),(16,'Jose Manuel','Poveda','M','2015-06-08');
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
INSERT INTO `sociedad` VALUES (1,'Sociedad Anonima'),(2,'Sociedad Civil'),(3,'Sociedad Colectiva'),(4,'Sociedad en Comandita'),(5,'Uniones de empresas'),(6,'adasdadasdad'),(7,'Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±Ã±'),(8,'sfsfsfsdsdf'),(9,'pppppppppoooooo');
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
