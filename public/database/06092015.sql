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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Coordinacion'),(2,'Posgrado'),(3,'Recursos Humanos'),(4,'Dirección'),(5,'Sub direccion'),(6,'Informatica');
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
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`beca_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beca`
--

LOCK TABLES `beca` WRITE;
/*!40000 ALTER TABLE `beca` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,1,'Coordinador'),(2,3,'Gerente'),(3,3,'Asistente'),(4,6,'Administrador de sistemas');
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
  `curso_id` int(11) NOT NULL,
  `publicacion_id` int(11) NOT NULL,
  `costo` float NOT NULL,
  `duracion` int(11) NOT NULL,
  `libre` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino_mensaje`
--

LOCK TABLES `destino_mensaje` WRITE;
/*!40000 ALTER TABLE `destino_mensaje` DISABLE KEYS */;
INSERT INTO `destino_mensaje` VALUES (21,95,19,0),(22,96,16,0),(23,97,19,0),(24,98,17,0),(25,99,17,0),(26,100,17,0),(27,101,17,0),(28,102,17,0),(29,103,17,0),(30,104,20,0),(31,105,22,0),(32,106,20,0),(33,107,17,0),(34,108,19,0),(35,109,17,0),(36,110,16,0),(37,111,16,0),(38,112,17,0),(39,116,17,0),(40,117,17,0),(41,118,19,0),(42,119,20,0),(43,120,22,0),(44,121,17,0),(45,122,17,0),(46,123,17,0),(47,124,17,0),(48,125,16,0),(49,126,16,0),(50,127,16,0);
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
INSERT INTO `empresa` VALUES (5,'Universidad Nacional de Ingenieria','0000445589-6421',3,'prueba','prueba1','me ocupdo de adlaldadajsd','http://www.norte.uni.edu.ni/',16,16,0),(6,'Aalfs','1665550000-8777',1,'jhjkljlkjk)))))))))))))))&&&&&&&&&&&&',')))))(((((%%%%%           ','Investigar ocupacion','www.actualizarsitioweb.com',22,24,0);
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
  `cargo` varchar(20) NOT NULL,
  `ubicacion` varchar(20) DEFAULT NULL,
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
INSERT INTO `ficha` VALUES (3,1,'Programador','Informatica',5,'Jorge Rodriguez','nadie\r\nok\r\nasd','esto esta<br />\r\nmuy bien','actualizando<br />\r\nlas<br />\r\nfunctiones<br />\r\naqui','otro<br />\r\nequisito','2 años','Informatica'),(4,2,'Programador','Informatica',5,'Jorge Rodriguez','Programador','da','d<br />\r\n<br />\r\nasd<br />\r\ndasa<br />\r\nd','sd','2 años','Informatica'),(5,7,'Programador','Informatica',1,'Jorge Rodriguez','asdasd','dsa','asdasdsa','dsad','2 años','Informatica'),(6,8,'Programador','Informatica',5,'Jorge Rodriguez','asdad','d','d','dasd','2 años','Informatica'),(7,9,'asdsad','dada',2,'daddsd','adad','dad','dadasd','adadadaddad','dadsada','dada'),(8,10,'Analista de sistemas','asdadasdsadsa',1,'Jorge Rodriguez','qweqweqw','eqweqwe','eqeqwe','qweqweqwe','qweqeqweqw','asdadasdsadsa'),(9,11,'Programador','Informatica',5,'daddsd','asdad','d','ad','dad','asdsadad','Informatica'),(10,12,'Programador','Informatica',5,'daddsd','asdad','d','ad','dad','asdsadad','Informatica'),(11,14,'asdada','dadsdasda',5,'dasdasdasdada','dadasdsad','asdaa','asdasd','','asdas','dadsdasda'),(12,15,'prueba','dadasda',2,'asdasda','asdadas','dsadadas','dadasdad','dadasd','asdadsa','dadasda');
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
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
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `imagen_id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` mediumblob NOT NULL,
  `tipo` varchar(20) NOT NULL,
  PRIMARY KEY (`imagen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (12,'����\0JFIF\0\0\0d\0d\0\0��\0Ducky\0\0\0\0\0Z\0\0��\0Adobe\0d�\0\0\0��\0�\0��\0��\0��\0x\0\0\0\0\0\0\0\0\0\0\0\0\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQ�aq��������2\"BRb\0\0\0\0\0\0\0!1A��\0\0\0?\0��~��Ƣ	�Z�@���T��[@�~y�\'���6V�	�B�Z�A�W��0��\n<У�\n<У(�B�4(�L(�B�!G�y�G���\n0ňY�Y\Z��Z0��Q�j<w2�T�VV�4)g4Zo�b�&7\"�y��L(�B�,昴ߐ��0��\n0����܅W���X�MyJ�x�f��ZL0��ūѢF��ԅj�FR�i�MNP�K��D&5\"�#*�G�aG���X�\\J�x�h�Vj��ŏʳ��kXSS���\n\\0�(�a��<�\Z���\"ы�hQ�![A�\Z�/����\01�(��������2��i<�44)|Х�Qk��0���Ŝ�A�ry\n<�/�\n�b��.L(�B�4(�3�����|_�\Z~5e4�F�Q1���l�C��r���a��e\\?<�L?<�0���O�#O�l�S�LO�#)��(�����2���\Z��5\'��+�������(���\n��0Ĥ�aI�(�B�1?&T���yJ�yLJOL��I�hQ�K��Vo%.&\'�6O(��kR���Z(�\n0(�yc�䱟�>k6%S\n<�Q�-&��B����0�����q����3>5�R4�%�Jg�\n0ģ�0�*^Y��YɉL��I�y0��ffĤ�0�|�I�(���IE�R��Q��.1aFT4(�%3y�L�R��I�I�ʖ%/����)�4J2�ϊ�Q�k�R�ɅhQ��f�RĤ�Y&y�FQ�hQ�hQ�(�B�4JL�}0�<�	�+�bO�N�&��1�L�N���&3I�� 	0ͅ��\r�5�ȭ. �CY�\"�i_���ͭ*-9Z1qVr�\\��\n���`����C0\0�U1�b+#Q\ryj*�e��C8�E���\Z�X�\Z�S\ZS0U�-79@�0(�X�\Z�S��\"�\\����*��`���j�F�U�1JY�-7�(���h������\Z��J�Rc+F.-&5�K8Uk�@�\\�\\\n���_+\"��.�-���xn�S�U�ˌ�&]�k��b�.��`R�B�ȵ=��\Zţ0S��\n_MxA|�`~fS\r_̉��V<S\r_�#k�cXQ���L_%�R�&.-R�\0�<�)qJO `��T�%!K�B�\n\\<�	�I���\'�p�����]f��S\r*��\nO\nS>h�0C��fĤ�^	D򨘂�Rb�R�8�c\"����WY��Lj!���&�L%���b��`1xT�Ĭ��6b3>+\Z��[ʥ1yP�0J1,J\\fDb���w0*����yb�S0)qX�\Z�֥%�Q�!F��\"3�Fp�\\f�iq�����b�0�5����F	F	0ϖld�C\0�@�1C0KKO\"RY��I��J�O�h���1��3���6 �3X�4�L\Z�o�\Z���k�E`c5h�#T���kE0)�1hƱh0�\0Qp\0;)�P`i����� (!�,\\j!��P�LZԥ��T3���D�`Sf5EY\Z�\\(\nY{to\0\Z�F�i���u�ei!dY\Z�V�S\nC��\Z1�kU\n�d�m��G�,ڕhLZE��l7�5\"+B*��B��媆�\0\\(��x�6�\"И��ו\Z�0)g\"���p(\0+�^E��12���E��jj�z\"-\Z�PyZ�\0U��j`��D�ɋFK�`Q�\n!����v�&	I�Z<��y0��aF���@�Q��(1&ğ]T����@��&R`��p1)RĦ|�a�hP��yJ�3�Q9�3>)�J�n,\0\0q��Ɍc4�b�LD2�%1y�I�/)J�$���SMD�lTeV�Yf��\0��d1��K�04�\Zi��*0���+\0#�.��0%��3�1a�$��LR��E\\\0�(�����0�\0�u0C$H�)*<�&\'��O&	�l �͊�{&�c5��$bb�h��f���b��CQ\ra#�E�\Z��rX�Q��R4(R��/��\\Q|�K�:`.D��b�.nɈ���hX��`v0Sk.mcR*�R����j����Lb�bk9�ȱ	�dS\ZP��ȵ�s���*,�cQi1F�\"�z/��J�q� �k9��K��0]L=W�B�hƃLR�DZ��]\"!1�>�7L�H�NZ�d�\\0��0*��Ƣ)�-H�R�DR����<�麥�ukh2��Qg+I�`H��R����dU�h��Tȸ��T��R��R�5h�ֿ0��Q�����\\Z���h�/�-A�B���������0\\C\0�0S���Q��\"d��2(����b�\"��by�P�`�y\nO�G�L�+������~ab�~H��ɬT���*3�(�(�(�32%E�)/0F|b��V�3喱�T\'�J���&5�S\Z1I�L�Y�O,؉�\"`��Z#�)0Ę��,ĥ�����jVi1�0�.3R�ı��UL�I���͌�D00*��a�i�YKʔ�*`a�c:� �d\n�gʥvL�N,�Raq��Q�\Z=�&E�&3�jcH�\\a/)c\Z�FD�0\n0��T�cȉ�*��&&#6 ���2͌�o���R7+����2-5��V�\"+($a��Y�h�E��$j��S���Ԁ\"�оJ�L(����Q�a�&VR�Q����J�ʾZ�Ŝ�K��\\�\\+\0ţ\Z��5L�8R��jrb�mI��cs��1qh<�Ha[�baFS�(��Q��(�Ŧ�&,x��ln<Yg\nS\nL1��g-R�XR�VS\n0���91+���o�F.	�5���6��qc�r�x�2��ig&�R�&S\n0)�~Ց�+K��a_�+#_�֖�7��+Tbb�F��&5�%aK昴��+*012��&5�+9��,�1i��(��������#�aI�baF.-.S����W�W��L_%)�y(�\n0� 1h���0�FW01i0ĥ�bє���c\'�v\\_\'�S)�2e<�)�(�y?2�O�1<���y+��a�&R���bW�1h�\n���<�bQ��)��S�~S���q(0�)�\'�3\'�~�g򪟝�ģɅ3�Ĥ<��f�T�&%aFS\nO&��Ĥ�\n1p��O��xJğ��\n�\0��Fh�<�a�bO�b^Y�q�+�p\n0�b~Y��4����Lb|#=�*�(o\nL0�ı����),L)��A�b�Q�<���yf��(�y&1��F�g�^W����ұyJ10�+�a�1a�I��h��O)J��(��JbʸRa�><�,Y���J�b�b�W�pğlg�~k�bX�&RQ�-bQ��yO�i�*^LD��|�6	Ac5�^Y��A`��	c3�c.s��uj\ZX���-n1i#K#Jб�,�4Ѣ�+R��-W\n_*����J9��\n\0`\0P�Dh[��D���5��Z�Yqj@��hƫ4l�*�R\"�5Ja�\r2܋�(��\Z����Q�;2δ ��.,��J\0\0.�,5VF��P\0��Օ�+R-d��X�(�E0�E��H��{.\0,B\rG��ͭ��%#UP7 \n���5�\0cTU���5���5��gB,x�Z�x�Y�P3�E�·$_+��LQpP>�\0J<�1h0���Q����qhL+ZU��LQ}E\0\0ABQS\n�C\n��F����T�\n��\0�aBD0^!\0\0���©1�,ԉ���L@jO���51�Z�\0�g+��(�bV�\"�/d��%3�} .���呖g�1�jV&(j.��(�c5�3b�`D��8�0����1}w,YY�F�J�K���f�,D�Fp`!&��ƻ�Y�\n����p�֢4�\02� ��`sK4F(�����ňX\'f\0�&/���ci���A&9S8�3 \0O�\0��0)/#3���x�8&Ł[���%��I�+3�X�fV9�5bV���#Q+R+b�5\"�U��� ��-F�R-D,���(���gQ5\Z���~:���S��>��0������R���~:���H��\0���-������>���V<2���\0�;OʟW��d6�x4/�\Z������}?\rHm_�G���M��_�G�54��E�����}X�\0�{¥�����m?\"�j?��\\Y��V����~:���!����unDڿ�թ*�#�4~c����눥��k_�R��j<:�rS��Q~��>��a���k��>���V<����F���Rп�>��@��\0������\0�Mgj�/I�~��窯����OϨ}?\rH}?\n��U�����W����OW��h�Z�\0彫>�Q�	�}?��u��:���c�\\?5W��O�}?!��)��������\\��\0�$����r5O����\0C���E�Wi�\\���}?W\r��4����O�Y\r��>��>���i���>��R�>���~>���}?\Z~���2�O�i��r��~�~#i]LO�a��\0>�e?>�O�O�������&S��2�O�sg�X������Tʟ�����$6��\0��jt��RkR�����>���\'�\05�l��T�~6��,�����O�}_� ��S�eg���S���M6�?��u՝V=U���	��������?\"c?��~�~�~�m?}O�Oŉeg�}I�\0�e]�s�\0���nT����\0�c6V)yI��\'�����O��p�~!�>	b]g�3�?}?.�\'�\0]4ԩ��,�?�O�]g�}?}?Cj~:����Յ�~`>����?]O�+?S��,>���>����\0��i�Y�*�?\0~���a�����7Y�	������>��ڟ�O�k5*�����Ęe��+(Ŋ!c	c#(�Y��JV\\�=��^0R�4�7�lo��i��U���\Z���h��sn<c�a����*.�9��Dט�����ZX��jF�p�-��\ZFF��`�HV��a��MH+H\0*�5\"�CRJ���j�:5�,�t�i�A�Qx��\"�*ȴ6W�ra]\")�bՠX��.�4� 7\"\0W0j nE��o��B����ћR֑��-cX�����@)q�ߒ�XJ,�j��@�2bkQ㼮3kUC��\0-���5�b�My�YQ\0Z�\\Z�_�p��ȵ���\0\0@|\0P�p*gDB�9\\�8����J�!B�S\n\"N����\0	��%3�;\0	BaByJ�U0�A@�+��S�U�&%.��b\0f	>16b����X�	�D�Q��S�����+(�6���a�1�c8���c�DfpX�Ap,la�dg0%�#&��c2��0S�Q(P�Vlg�,db�\\���K��FD�U��j4�b�!1f�2�\".*�%BX)�Ë0ĝH�ʰ}����0H11�Z�D�S�\0I�f� ���AT�ĮF\'�g�>�0+ RX��2͈��NuY�,e�D�+3�c��37��\0J�4���h�z7��k����5#TԊ��\Z���u�<ybH�*����b��T�^P�ʘ�P��B�\"єJ<�De��Z�^�yii<�Ry\r�4n#Od�ͭ\'�+~��)�k��\Z�ǚ�h��i��j�\r����y%S�#�LjE��<ִ�Y��ɿ)k�x�6VwV�<�u<���賕�DO�ז��	�(���ǋs�Ո[�Y�\'��y��E���inF�*)|�-Z<��G#+KZ��+�<�V�Z�א��-I�kK[���E�x��_�S=�)k�E3�j��y�X��׆�Z�|�ŧ��j��$�P��*\Z�E���Ȱy�b�yXP����-n<W�7���14<�M_ɋ\"��\"׹8�)������\n<�A�I�b��2<�Z_?+�K�)|�6yv<�0�P�e�-\'�3����p���c�����f\Z��g��^�\"�Q�T`W#�&e0��aRa�L(�\n����D��]H�j~c�&O����9����5���1\'�R�/����)�������(�)x�Uhy�yB����S��\n_\"g��y�X\'�R��B�S�,f|Lg��y��SWS�������Z�b|kD�Z�+�y�*U�R�W��͉G��ǐ<�Q�Cʧ���*��XI��y�b|v�Z���_5V�\"LO�x���*LI嚕�=W�B�!L����e�J�唘�<���֝S�R�yh�yD�Y�i/����R�@�CSȜZ��L1嚟I�\n<�&.\'Ƴk�z�8j��T��J喋���,�|��O\"L3y��>T��\\��T��|�bVg�Ԗo4թO#3����LM5��!ĞTO(��}��T�g�)_��M�<Я�2�Va�`|@�a11�|Q5�ig�X�X�%����J�FlD����$��[������k�Xiy�,����Fա��\0��H��AZ��.\"��H\ZrP\0��\n���!��4��AE�A���d�ֲFW��nAs뤆5č���T�ALX�d^���K �����D�sJͪ!� G�dV�h��\rE;.\nԈ��dkL�4�\"�15����P_��Z�~����()B�Q�H��^^�5)jZ�E}�5b2Y\Z��Zi{ u0N-h�\"��\r,F�ԋ�1�E���\rǏ�q�Z�TOtj4��k���e�wj@P�@\0\\X��\n��.��p�*�\"*�\n��A���ii1��55k�`Z11ig+�L*7\\1zJ��`j�\'`1�\0`(q@&!P`����\n�/&���F�U?1�|`�S�?��Z�5����e�\nH���yLJ��Ę�\0O ɉ1��yO�f��)�:]���1ZtJ�AN,�*7��g��4��#�O��n�l�͈���˭J���X.	�X�L���3b**`��g���������t�1����Vr�^S�^Q+���\0�s�fcٱ�1&-b�&�w\\j3���D�3br˒�j��5f��\0LfU�� �Ө3�,X��+`�*�����&q�QA)Ł�`�����\'PJ���69�F~��V5i��x��+	��g�>YD��_Ԭgݚ�⼍�|��ɨ7d�n._��`�A�s��b-*WX�O�\Z��h�0X�nLJ����\"�*zs%V��%I��T��i䩾jyj#ݦ�+�#^H�TO%L�U�蚖7U��jP�܇�\"Z��Q	�NJ�p�O%-Kr&;��Jy+�s[��F��I+3�iy��r�-K\Z�D�T�bǌ�\0�9�D�5�\n�0��T�����ǌ��S��\Z�PyX�\\+q��eZ��NV���Z�ɭNV�����?�rT��RH�����\Z��m|ҧ`¦rn<+<�6mg���|��-�Z��rV��_p����0�MHeZ�\ZO\'�sZ�5S�K-y+�Y+�����������VqkdO+T����Z�W��_+Mb�+8h�J�|��RT�y)+B�R�/��>ˋे��;��C����~fR�ƣ�S�/㑩�k�A�\\����_���\n�|�!�N	��O+Y\ZyH�W�Z����Jb�X��Hb�;�T�+[��T����W��\n��!�D�y*��~g�4�T����d�yJ�D�J��J��(�R�R���a�LO)���K|7�4���q�}.��15�jȟ�]_)RJ�Z�Jg�yO�����JDġ<��y*��V�5<�J�)������/)����|%N�┺�~o?D\\b|\'8�1SY�jC�4��Jτ���V|��\\J�i�=��T���bR|g�%���������\0VU�?3�k\n)/��5,Լԫ5�$ǠaS��R��iS��yJ���K�|�³柛E�\\��c,w��+4��A嚘�WY�\'�1&%�y*p�J�<�H�R�,ό�ϔ���I��\'�f��eY�rV�)R�R/�����V<ԩT�W0�W���~DMtC�Y@y*iR�����X��m�6/����V�Y��jFjqU�T�䭄µ��yb�:F��/)_�\Zb�R�lD�B��X%1`3	c5�����+30�2͌ĜY+<�����u�k\n�Yj7V�j��ֿ���^[�M�0��n#u�)�� ._�Ȳ-UR5�ů�)|�zP�ʕ�<�V�D�<�h��+8n5]���G��S�V1����|��xM+e�Rהj#�<�\"�ᢓ�Q�Zo�+�|��\'�+<O#UZ��HQ�Z�չ�\rǎ��V�ş(�x\n<�uMyh�o��4���J�x��MN������U�<��57ZA�-t�_,ZWs�Q�D%�Wc­n��4��|���57��8jE�k�K\\�!����Dhϖ5b=7�׆�Y�}�V��j��V��V�VE���ԋ_�ʕ�9\Z��}�)�ǍV+�J<�D�Z��R5^��aX5?�uk�ׄJ<�Q�(��կI<!<�Y��UW�k�[�����Q��=�jǆ�&%�κ�SV�R�4��B��E��WϺ���^)�qh�a�xR#�y��L��-e��ҏ!G��焔<(x5k�S��x4��b՞*{�\0�jy\n<\ZQ�Z擒�B��W�\'���/�I�\'&��)��_)�I�1(��f�rO��T�.���΍y]f�+�kk�\"8��R�q���?)xO)Z\'�R�<h���*Q���aWݟ*���g���%\'�I��|�>T������S�Q��k�_,aG��ɋ��xQ<��k3�1*Y�2�yMb|Z�֥Z+3����Ĥ�x�)�0x4�c¥J���s�<\"L^���Υ<7+4xS�<�>$���)LxR�!G���<�LQ���ϔ����q���3ܜ�+�-ᤦ/\0y*T/�k4�+H�<�j����\r+��J��|���u��\\S�L�\'�(���1�95�I���ry5k��Ԙ�\0R�c߲xcWD��F)1�\"Y���f��q��*��&,,bc�%���\\i\'&l,f�a+!�,d����ǣ5����c-Ɩ#mE�SQ��JH�#mD5Y�������\Z�\n�!ȿ	����������>�2\0 ő�m�@=�\Z��IY�q(��H��7�QjEϢ4}�V�qk�V��\Z��L\\V�F�`�[FH\Z�٩\Z�yR�H�H-SR�4�/�5�E�]2鲲��`,�j�H��r!���&-z��{vY\Z��V�\"�[)ku�2��qdoƎ�\0�59Z�ň�\0Q��U�5�`X����wY�U�8�1j�.-m��ԋ\\��`V�qN`)�[�\\jr�Dt\\0�4R�\"��:άEFV!X*���šd?;��51p娸��q@�(&-.��`f`A�`}���W�f(����`��0J0*������0���C\r�@8�*.��0��)S�LN)\n�%@\'�uu��q5S���T���c63L���`q�	0��&���f򔨢31�,b|f\'q�PT�B�3yg�\\go*���`�vf)�g��ֵUT���,g�(������W;���~�J��/ftF�dPT�Xň�2���)W30��s�ٜg\05bb5X���,i90�`�c5�#\0�\'��t0�Q&?�g��e���b�38�{�X��M}��\0f*�1c6%�,����c6&:��6*V�������S�j$�E��c,�S,1��垣6&��Lb��Ո�g�\\[r4�F-E�W6�MCK\Zk����%J��I\"�-7�%jEnE\\C5`\0\\�j!���0`\0\rD%J�B%=�$X��չ~7U�hjE��[��ǣh�P�����\"��U�� �F��ky���Z��FJԊ�f��ɩbd\\2F�Qjfb=�WL���cQ#x���)�r�S�����F�US5\Z�~Y�k}eb-�F벴P$�\n,ڑ9UX�F�QAZ���mn�!YP#���,�K�\rH�(���\"��,�#U�q�;�S\0X��KcQ��Z���T�b�\"�J��㿢��X�pU\0�P4P@�ތ���.f!����+�*iLZ�0�p�F��+��S_a\\�1*�0��0���1JL�`�� �\nR�T1*�0g�LDĤ1$C�˙��O��nֵ�R)_�A��dı+�Vp��\0�j \0�f	\\ذJ�K�`��|���φ�Ԭ�%��+8��Y��\"�3b�A��qF�k�X͌��Dg��X�cR�J�@�	bX�3@�	�qlX$��bd�X@�\\uJ�sz�����͌��2\0s�\0��,g�,���s�4�f�K��VbX�XVS�E�9�`n�\0��\n͉�X����fa��f�SU�A\'���b�z&A&$�I�%���`�r��F$�:s���X��#=SD�L%f�����3V~,k���Q�75ɮZj#ٻ4��[����Շ+�d�/l[\r��\'�쑳�:�b-�\\n�`W�`��i�0\0��R�J��`�`� �m`�`7\"���L���E�R����V�i�l�ȋWղ�H��e���Z���U�Y4�\0\0`m�-H��{5bƷJ�11V�y�k�EFܗS�S#n|hŅg�x���b�:�\"���cH�7:�,�mj��E��Z�dj���\nda��ې!VF�$jELR���0j<{�\\f��\\d0X�\\Ո\ZŦ�*q�����`��`����\"Ү/AN��x�IR֣Ƒ5iM�1j���2��-SX��(`r0N,\n0_�|�/�W�5\n�\\(\'+��Y��t*1�. �bрq(�\050 �9���`�Р�P�LI��V��R�5�0T0�\0�ʥh�)�q0Њ���y�	���1+�F\"V�PB\Z��ZkX��U^��W��$��<�%rŖz!�	�+�d�aL���P�A&/,�Tŕ�b�\Z�U4�1,LU�M���I���$�X�2͌�¬�Ua?�ZL��K��e�a��=w,��ĘL,E�:v0I����39���S�5�����±�Ib��)������L���q�\n��t�X�UMcQ=���vq���6\'��+�0=R�L��C0J�_�1FlTٜ\n��t�zW5�T�ǩbT���S���&�u��9�8���ǡ�1����rV������H��1c7��lFg���F=Z�m��P�j5𼴰�����m��$��[¾�Y��\"��M�J,X^ZV�8�\02�@ә�Ŕ3��m�	���.�֢?��L�p0Zt��IVE�F�$���\r�P3�5\\���*����V�Y��Ȁ-o�dY\Z����`�� wQA���X�Q��xn�Ϛ�5�(C���h܋H��7 rP�u��\Z�T�k�9z����FS\Z���ԍH��Z\nK �b-+R.Z�X�Y�����\nbY��ѩ�K#FmH�/^!E �^�k�#U��(\rǍ�Ț�!�� H.+�������.4s1T@)J	��g ��7�q���\"1�_+Xq�L�P���!Ċ�:��EV���\r?3�R�~gbCO�w�������0���\r?�j~g���2������b~f�0��:@���f}�\0�C�F\0bV�aZ	��\0�8��qF���^D�^9�\n2�(�ĪB�0ĘO)�+��3���	0ώ˭J��*���1���Lg�\0>�����K\\`��ŌO��XԬ�)�\0�\Z��؞�+c)L�T�d\0���t��Ϻc,ώv%YX�MC��I�܋�6�Y���	;dłq�X�b�\0�I��s�`���B�1}��f~U�Jb�@A8���f�lgC�c�uY\\��q��T��\0�θ,s�C����0&?�%��la+݋���vX���[0T=����q�& �3���)��0�\\A��+��N�����#���39���٨��n[%J�L2Ƭ3V1�#t�mc^�E�Dg�Q��m����n���g�+�4�5���5��Ė/-D/-���C\\�\0�\'a\r��[�V������F\\���1a�E�f�\n�\0e�F�Ֆ��(,��M�\0-U%o��*�r��Vkl��LF+u��4����\n&&RȫM��{d7\"��i]���8�V:k��r��$i~�t��\n`����G<�Y\Z�Ua��\rǎ�k:�|�LI\Z����nE�Di�6�X�F�+�#X���F��YVmj�%ey��U�Z���)��+F\0q`U����U.5�ե���uKY֢\"4�LHT���Q��g+��H�bb�\Z��Z\Z�5���\"�5�0\0�P���ֆ&���g��z_�I���*mZ���ը�\0�*W{�E��\0`{�C#\0,�\n}\0a�k@��ha�?1&.��1}\'�w�pҥ1u*q1u\0�P�]��+<z�>R�;!��D��9�m�NJ�{\n�	��J�ɉbO��\0Ę�1�.�1Qz�m,�b��*TO�11&�qϮ�}�aġ\n��&7�cjaY���v0f|o�ԬV��*Lz�%���+��FC���]|	��V���bL_]���11�M�����qՖ00\0�L��*�\0�%����3������3�	�g�\\Ӎ�����\ZU*���ic4�P1��\Z���}�������a��|�1b��P>A�X�b}�7<��Ubc�DP��I�LJ��gL@ۓ=+2�T���T�B��L��Z�3,H�e�3�5���s�%�/��5?7MO����95��&���6F���ҺFF}b�\rcR|X$1[LX�r\Z��^Z^m`��H�}\0P,F��,�Ҵ}fj&}�\\t�f�U\"-z,�Mb5ҺH����!�M���x�HԋH�T�jAb-�ҫ��`�F�#R.���P�\0��j#�kR-\"�+~1�.3[癌���܋�b�ɩP��C�\Z��djE�V9q�X�iY֩\ZY�iL(�d\n��1����4U�\0��֫�Yb7�k�]\Z+�ذ*��W`ťƧ-,����\Z��\rG�f��Z술DL��G�q��T�a�EJ�\0��0)g\"�RTňE�T\rNT�(0�H�ɉ�G��j�������W�bkU|�\n��AW�R�!���\0Q|��|��S�J�|�S�Z�y+�J%)�(<��O%&.%�`W}�g�3\\5?�i����Ⱥ�*��aH|�S�o)Z	�{	Z旐���^�\0`��O�h��Rbc<Y�q|mV31�J��dX�1��63yf��^$��\0K�Ry؜B��%Vg��1��4���&\"FlfpVp��6	��A0JB�S�\'�&�X��U-4�LI��R�i1�:��3`���ȅ��灊ϔfX��\Z(�K[�����f���0�0+�(�1Yd�j3YJX���\n�J@\0��JDN٨�X�X�%fŁY��1�c�o��J�[���J�wD%���|њ�\"Lvf�����D��K)�cVq��bϪϔz3Y��f�fc��Α��cM�k���j,i��Z�d�F��-�A�b�Y�i��ԅ^!�`ş�w9l�m$`\0��H���qb5Mf��8Z���#U�$l�Xq@�KR\"�u\n��_�[U�WZݸ�ҫFk%������\Z�UM�\03繁��r\rD-Y.��E\Z���f�J�f�1ưE�1�qib.�\'��d5#JЩ���	k5��5�ԊԊd�����\0S\Z��jEO�#6�]hňE�z�/ƪ�Ā���V�x�����_��ٝMj#hFW��F,G+jE�kZX���6����Ғ-z#R,T\nX��=�_�籆�\Z�εQ� �|��)^�\"�e5|����V���0�k۱���\n0(��B�&�`B�!G�������J�<�G���1\n��\n�<�\'��1:	���P3>1�ai\"�~6Vg�v1S�)�L&?ĉ�J�%*a�`�Jy\n�`v�10�b$���%#$&�3>8��b��MaI�f�PI���)DKd��LC�KVpL1&0�ŕ�s\Z+G�b�3Z	�rDF@\n��*��X�{�8��y��s�⴬�З�~�@�(��ep�R	0��S���Hǔj/5�\Zw�c63�2q,����`I��d�cʆ%���mciY{C)�̫>�*3a��3���^+3\nŉ������XƘ���	IaX��0K�͉Ĉ�_�\')D���Y��}�cYF�9љњ�e��C�`��1���+�1j4����cmOƱ�4L��t�Y�,�S�lZī��ƌWC�C��Z�������	�qj,tÑGH��͊�+��Zݩ��Cq��4�X�D(��x/���b��j/4R��Dgq�+��ac���%q�pT\0)d���5F̻\n�f%���\\ל�`{Y�#]��6\0ԁM\"��V��H��Cr�F>�Z�K,���jF�\0�\rq-b�o��ԋ]���F*�RW�X�R.yg� s�jrR���|�.-\"��\"ȱ�X�3�q-n�;���rLd�*��LZ�����@�+�\\�r�r�Z�Z�@��*b�Ч��Q��bkQ���&�F�R����E�_%d/���T<���)pC˶����E)C�\0�`��@��d��L�T]������<�TvO\"V�Zy4��<�1�&̅�*D��q����*a�|bgd�_��g?bƵ��\0E+>y\0&3Ba����V�y)�T�@���b3^�c6\"b.�31�efb�,jT���f��0���I`��0����3c\"a[$J�L,s��Ũ�V��-N%Q������\n0&�>Y�lg�����1Y-�&w���X�b��)?�l\\���fc\\Ջ�Ȉ`��%��Ψ�rf�cћ�-0>L�q&=6Lf���g�\"�c�b��-�2Ł\"bL+6&��/���ł_���a�`�7+�Ri��H��T��bc8�V��0J��D�K���ϤI�g��1��1U\',4!X���c���c�O�O�VjNLTs�V:aZ�t����y��\Z�Z����di�>6��+�d��W�^b�x��1���Y����\0@U�ز5�MHҊ*C4�Jͭ2�RujDX��r(�	�7\".�d��B6Bȋ�6:EGfk�ڌ����F(\n`i��Z7�Yh7\"�\"�s%u�����~����R7�����DN�Z*�ZLm{,��x��mi1�cQͩ+JW��4�����CX�h�B\"��-t��g��U�vգE��D�`�*�Ԙ�����5\"�K�q�%�k^��_����d\Z��V��N�H*`W�S�[\n�qk�5q{d5!��b5������1�C��jx�\\Z�|�KK�\n_\"�k�ł(n���8�S\0뀂�\Z�\nB��>��\\X�\0��0*Sȕ�e)ByJ�ȞJ��T���@��30f|#L�k�5?���~�J�C6\'e��L�D�T�ak�Vq��Ĭ���r0b|vYWY����3	`��r\"L\r��b��L+6!��`���,\Z��}�Q�R`T�W�i�\0�I�M�&+6YEF|�X�V,�tXы\n�d�ؔ��y�	<C6*i�T�X�D��0�S��7>�)>��f�0���LX	���`��0b�F��D��\Ze,iU��eD�Q��4�)�Le�͉߸�qL�� ��*�6VϥC�E=����e��t��e�I��9ϧ$��s��g]��+3��fsٚ�fr����>�]>a�U���-�f܋j~�����k���#���4Z�XY��غ�5�P�Ɩ~Z0��Z�&ڑ�\Z����\n(�3X�n����0�K#H���j�\n�b(��F���,����wFm_h1[�Y\Z�x�W��-79#	��#H��~1����&\rDGm�� (H+x��,c�\0�j�hjA���a���e�\n5�djEUPÊQ �\Z�\Z�^�r5|ԩ��V��܈h��\Z�E�\\Q�LZU�#Q֤\\j�@j\"�D���@+�ԃT�H��\0F��g�`)�!�H�d\"���3�\0�R/.,D�?�ĵ��lbkUK��U�b��-2���W��Z$���\0\\eDP\nT�Rb�)��KXy_�4��W��.V�\\J�G��TW���yL?<�\\(�O�cɅl�yJ��1<�I�-v�bG��r8�\'�(\0��*��ƥ�Y��Jg�Y��&?�b*&\'�:qf.��f/��\Zԓ�,L�q9*aI�W�<��g@Wa1�k��3�,��)1����麵����D�Q��PO}�Y��uİJɌV&+%��QW���63\\�ՋP���E���fı����N Ff1�:+R�E�#8$����VC;1`rLS�b3�xP$ŕ\\�*ѳ�$�_\"X��bt�s�\0���厐�%���8g�1cX�10�Q\',j��U`�X}���QN-�k?t�%db�K�8!�[5\Z�8�S�L�30��c��;��Rsb�NI��?(Fc��6�&X��fs�g����bc����\\�z|7�q��o��X�\Zb�7t��b�H�ej~.�E+v�,{��T���,C��F�)q�qp0��Ś�k�D+�Y�okm9�r/) R�����,DwF�j�1�nA������֙E�Z�v�,�a٬Yb�\'j�`,�,CD�Rcx�׌Xͭu�*���Z��kp]pjDU��u�.5�1�!d+Q\Z{5R��Ɋ�G�R,������0ņ�#/��\Z���n#L�I5���ԈqJ������5!W�0´�\\\\Z��o\Z���J�a�eh�5�0)����Vr��p��b��/{kE���2F�Z�\rn<b#��3j�V���D+M`$ZF��zF���╢�(q@R�bbUT�C�����y_��XW��\"�\0�/�l_���4���55��\r?0\Z~c��&��J�Ț�\Z�\0Tz��%ue?0&������CMO��m���V�W,�f����10�0�Rbbt~�1S�04����~�Q0���&7��y(g\ng�\'TjV\'ƨX��H�����	�=�LJgk�	ZU�Vlfa,d�l\r��*��|k��*W����w�Y�������U�b���Lfa�,N�!<A�1�,X��|icR�z�[��{�`����L%���8ʆ9�Dc�Q���X�;3�$��Ջ��_�S�k1,f����<�^)1��1���VlN�͛)0È�C�1q�����0g�5X���ҙ�$�؟J�Ř���b�h|�%w��\\a)��1��5k\Z8�2԰I��s�8�g���YO�,Ra���s�3���������LbR����EcHg�1W�n娱�\rEoji���7�5�n�1]#�i���Hn\"�f,k���[PV�7Ab\Z�cJ����\Z�Of�Pk��\ZYe��\nu�ku\0\".E�#f ��ǻX��*�#Ֆ(a�Q\r��^Y���m��}ڐ�����o���ڂ�#V��x�iS�qU��%+R*�3ݴn�e}��YF���� `�V�b�\"�?�.�Wvds��s�_m�*ő�F�)����|�p��#��X�x����e,t�k�kN����J�,@܍DL�BR��-j�Ց���\"�\Zו�#�)K��� W��_�@\0ũ۰�V��#1�k�<�Q���p�V<b��M#�4��Q�Ð&�/�\nb\0y�P�ĉ�p:\n	���XLD��a|c���j~E�g�(�hUԘ��C\"PX���� ����(`�!�0��S�\n�\0D�LX�����1�ei3퐖%R�b|nb#&B)�D�	��Lt,g�Cۘ� bc��Y��Y���,b�����:�b����3��br�!���\\��]7YZ���K�W���J0I�a,f�DI��ǔT�Y��ά��a�3bqC6%U����u��3bQ��&F<����\'� X��=�Q�\nL�\r��+0��ϛ8ł	1��	����q�j��ұL�O`+�K��S^��+#=2X��\n`��v�q�q�5X��~I�]��f�(��%bre�9�\n�2Ƒ�s��J�O�bq���5��7_�ԋ#{��������6��V�(V��(�܂�u����zLlŮP�\Z�h��k�\\UL��Q�#ݚƮ����@��\Z�\Z�}��(b��\"\r�s0X�[���S�����\ZĬ�ޛ2ɗ#b3��\Z���.)� �\n�jcQ\Z�ԋ�.*��\0�Ed�f�$E����iH�`{n�*��c�jF����mɼJ�E3Y�b,G�k\"ɭUd��`.`�܂�~JԍU�h�t����k�����	5��V[�Zjr\r`k�	�:5S�yYF��k��٬��a\ZRb\'c�ũF�ƢR��#Yz5���S���~w쉭����jr��-k(���Th1H�Ad���ԋ�}Q|�8a�qZ��cֿ0bZ��b?S�ੂB�qF��3\n}&�R�u�04���\0\0@0\r�y���`&0J�?1���3��1u��hbĘ���įc��C���0O�Y���aQ��V�yI�5�S�O!\\��b|v챹R��1Y��+7��c8V,�H�P:�b�l#3\Z%��3�Q���F;���o��$��g�8��@�����3��.2%���y5���\r�޳X5�f�����T�J�\0@튌�Wܳc6\'���Z��<���Y�:1��1�H�D\\`0+�g�\',�`b31J͈͈�f��Mca���k)���ĘQ��������ı:d��Wtb���ŕ���5X�I�&%g٬c�S�l)0N(�&0\"VU��g��+X��_��I��:Q�����Q�c��Q���h�/����K�~S�W.�+�c	:�b������k��t�5jO��64�x�i���Z���ۤAX��9D�K����\\ωV8��s���Ԃ����2jEŬ��h��1�)k�e�41ݹU�w�H���$�\0�\rȇE�����	\Z���������K[��0FM�3�1q�n4��!��r��Ȳ5Ŵ�R\rxƾ�Y���!܈�Gq�]��¯�r!�,e;%�H�v1�����0n ����c0��.7ͩ����$\0X�v�F�q���a]\"+,��arnD3衟�,�B459UT8�\r�j#;YF�vUj<k��e���b�ق���#_--L��\"\n����,E�կœZ�ΰF�b&t�Z����MZjr��ŮޣS���b��Į��bJaŁ.-o���#MG���kQ�LKZ�Je�B��50>PD	����ũʲL0��\'��Ő���/���F.y0��2,0�ɉ��<���?=��~}uK��+c)�S|jba�`q\"`s�⡈���)C�0f|b貤����I�k5:�V3C>R��*``���	Y֩yS�gV��\\f��g�Nl�Ff-�j$�d�X�c}\Z,Ԙè͉�^P�eM�J�E��,K�\'fYM\0�D&/��9�i�f%0�+Da+C��5�lTݕO�V,J>K�ۣ�LWu�J������:1�q!�\"��2��c��1a�\"L\\V{c��f��[%+63���*sb�8�$K.�3bqX��O��J��+X��3ɛ�>�	1U�8�Y�lf�vFT���T�R��5�ʤ�\0��	�U���^LN%����2X�\'9�c�����j\'Vz��&U\'5�:�bcݞ�˚$�:��X���$�ђ��Ԩs�X�c�b��+q��-Oƿ�qc^�ck���׉^cn���t��F���T�o���iZ�S\Z#�\\�Z���������Ej>�Z�d��-6cL� � s􅜊�!X}���\Z�F�\\]��ۑ���~iX�!�&7ԍH+Xr�WqF.7M5\"*�s	J�FP�\nԈ�*Ȧ7�b�N�ȉJ�A�h�x�H5���ky��\n�V�)�\Z�p�EL+�E�#�R#UˣMH�5�����(��L+_b�4���H��Z���DsjF�+�5XbƱW�)0B�0j\"ZƱ{�.-\"��SR&5J��uF��񙯄�-j�����E�Aqj���\"�����&�1hf),G�����CZ�f�[��R��D1�(�����R��b�j�p����+�1qx��>�0\n�\nr8� S���`:\0W 8�PA0�J+�&%GC���O)>3蘘Ra�B�zȡ��ۡ��1�\n����a�O����3_䅉��6�1#@(����q,�(%*X��o)W���f�3>9�5�)V���/)&1�ņ\"b���pĘ����g0�&,W9�Zj$��XXƙ�1��{�b��\"Lb�X�aE�3��\0XV&)��`f�KN!�S`��bX�)��gb&3>1�ŌQym>!��ubJK�=�\n��,eVf+�Q�ʩ^�10͌Xt(R�_�dI�2,K�bcߐ$�l���6�I���8�%R�bWa\0)��3��J�RDf��X�Y��eY���X�ǲt�rCH�f���b��<bĜ�ݛ�0���:�m���!��cK5��՚��Μ�\n�+��s����6���ȱ�6�\Zk���X��]VF���Ŏ�r�a��;/&5��Y\Z���mh�:2��`�H��\"��cff�\Z��Mȇڋ����I�I�.�/0\".rn�N�Xz0��\rRȲ5�,�Ƥ8��L���j#���Y�V���c�Fj�$F�?��5�Ģ��z5!�+k�*��\"�o�ȫr�_��F��-wC\Z�jF�X�\Z8�8�qb�@��[$o�Lm����f�TԌ���(U��UG̣r.�\"қ,(C�cj#_E��\Z��o�+���kFy&V=s��\Z�\\k�UT0���U��Xb�w+R5���X���j��E�MP���\Zà���ZT+3�\\j��F�-G��a����q+Ba���\Z�\0\n��a�����j����!p31J��SQrDJU>�\Z��k�`�a��\"qJ�\r�S�0�E�T�2`�R�\0H�@���Y�&$�|��J��2�%\0�W��1L�0I�ҹ��O�d�Ԭ����g�F�ߚb%Y�5L?�`����؆3�%�I����:��l�bX������MY�`���X���wLf�D���TH9�SM30XX��8�9r1�+f�¿����±`!۲X��\\2F;f�l�X��\"WvT����	1��X͌�h��\Zu�B�1]7+3�f�D��j��v��bR�)��p�k�LT�&1\nEr�²i�����bX��k�Z� +3�Y�=�&3�Ń�R���qKb����63\\R�B	8us�½��bR�bQbDǳ����5�d�I\\b��H��k��ı�K�K8�r���%1�q��1Y�b�c�V:euX��Ln�\'֢��V���Ǭi��ps\Z����֢�Z���\\@����#�V����ň��\\j$j.Z\nr���ֻ�!�d�K�1��1KjD^M�W��\rk�1�dUͼF�*\'��_s)���k\Z���I�t�0H�@X�1dj���4�\"�E����h�+Ԉ�{�r-r�(*�\r�%zl�Q�U�~S^^��WH���ұW�Ab=��\"��M\0K ����u�k��=��kTԌ�� k��6�����-D()�cQ�H�r�f�����e~��c�sj�n-.*�,�X�mZ$j\"���2���[k+�7�\"#U]Q���*h�-CS�^!p+��-e��^Z���n\"!q��\"� ��T(���p�?��+T������!�Sz\n�\0q`����A|�^����q\nLS|T�+�p\0�/`DO!]�ȵ�g�(�8�@�,�\n\0C�`�f�y+�Ie1>@���j`���O�xK\Z�����^R�����i/#=����R	1x	������\'^ly��|k�jܬע�%k��ǜJ��`����%D��z�(11Z&3b\"��?�A�bb~�\0�7`�,cm��p\08�o!�Ɍd�XI`ϔL��̋��\0\Zm���Ř�ɛ��	^��r�ޒ�,fa U��L{f�Z�Ŋ��=��Ed�@I��Ջ�p>U,c�u�1�X�c5�FZP禬�͈��f\"qŊ��1�R��9�B]{J�s����lTA�-X�L+��`��d=��X�f�_��%����F��j9�S���,���\ne��X�ι�1#���X�o�$s�Ӛ�+XI��/�V7��f\ra����j/�r+q�5����Q,n:�YZ2�5\"Ƶ��#�a��	cQ�k��4�Q��p0#3H����E�%�\n��\ZLm8�pS�V�C����w�c|��~�{��^1�U��錀��K#R4��`{�b5Pԍ��X�E�ҫ�8��wY\n��H�sF�04nD9�V5#UV���-s�Z��uZ�m�d���qZ�mcr.�&!�>F)�#����aر�k�5Jt�2O��\"�-kX�܍�r!]��}���a�ő���#\nJ�_��>U���j7k��Q\n��]�\r�k��,��I��x�3�6��_Ŝ�q\r�E�ѩ1��=��d\Zk0�r�xΘS-l�Ǎc��kC(����1��h����qq�1�&ܗ}�(s�0308�\0�0#U�\Z/��b�B�иLL��RJ�|�頾J�<��\'\'��Bȵ���W �W.���D�R����v\'��0�a�!�\"�sO!�t�J��`|�`H ꘘ�JbbUa#6)��\\�R�4�A&/u���Z�m���e�ů�,0ɜ�S��3\n��e*����x�IViZf��*��8�N�e:��W����f%���1\n��c\n���i�f6D���h`b�3b�	�c3�{.0tA%�|�g<�cR���1��S�P��͌X�&\'�gY�9�-��݁��~�LS����\n�L1���Vz��FR}-�W9�զ�\'ӚXV+<Yb����Ɂ�\"31��abo�ca���(֮�X�c<��%v�p&#�\"X�|�0�	0�(`L,K,a91�L1��*�X�g�\\f�u���(fόW)Ɍb9�E��8���s��la�b�e�^-���e�ms\Z�ս�i����\Z��Z��֣�S�g�CX5ȼKH�o�H�����ɥ©C�7��k_(�G��WLE�F�j��>\nXU�]�,\"5�@Y\Z����5�꣤D}�U��\rTƪ��VC�q@���\"ȭ4i�c~1�l��j:a���h��YvF��\n��5!�٤\Z�0�t���,�j#�%�����-�DWU���T�A�^�bש�dX��խ�ݖW?���Ԇ,k9�7\"УR�`L,F�\rNZ�aq�<k�f��ċ�h�7JԂ�a��Z�9����Do�\Z��t���G�dAS��-W.��T¸��+v����5�	Z���Y�J5\\�O��T(���Gqg+ZPԅ_�Ԃ��}\n��Vi�..�Z���|��V��k:��./�DX񞉦��������i�G�F��H�\n����\\�+��B��+��Q:�O�mS����H������jk?���.��_�S\n짖k�$��T�\'�1�RS\n\08��J����ϔ����Qi1P�Ée�����[�n���L+4�=�1>Ak���K�=�g����2���j$�+63)c8��..z\0\"gΓf��l8�16I��ac��cl�v�,N�&a��,�LY�+%��)�	��	Es�\Z���]j31��X�,��d0�Ę�X�2�P9�V�7����\n���c-1�!0͊0\nc[+\'?v,c=�!�l�}Y���@&=҅_6F+��`�$��9��\r��%C�V,J��a\n�1b�a@LZ3J�͆\'֬t�1���t�L3шɌyg�,��Q�b��.3�U���)YIs+Cc>L���seZ�j#8n�-K�4�o��q�Hb�\\�jF��%�V�Ov����Xe[�6���p�׌r�c|�ǫ|�uk\nV\"�Tt�ݖ*�+r!��sF����Zɮ`V\rb�{��ԍ׺5N00X���D��*�%�`bU��K\Z��Lh��Ov�(��)�\rDl�iLU�j2�n��eb\Z�#U�H�~�a�p�o�^E��\"�}#R.�i#J܃�DDE3X��5�,�W&5����`X�H�dY�i��Vk5�B�jA���I����܈g�)1V���q�1�_���WL��F�+<�Ƥ(�\n�\n�Ԃ�v���U���q���ͫMH�ip�j��r,�ٍC!\n�\0z�9E�����S���,>R��DB2��U�jAW�\nF�j��jC�ȹ���H�³\\\n� 8�Z1qj:/��Ǌ��~&��jJ������\"���Uמ)�Vx�]���¹n��_�\n�`P�\0r0,8��*���@������W%�g�bbU3���-�L+�MsL����옇��I���X�bc5�P��Ł1��>5��S�5�bU�#7�3�Y��P�+/q,eY�K�31�FV1[�޳J�%�f���Ŋ{d`W�/}�Lfpf�p�!�3�b�9�����1�Fl;��8*�\'�F�kc6%gZ%���1�{s�թbcZ,f���C�161N �fc�6%��!1����iQ�x���Ϧ�XbLay	bvkJCF,i�J�63�2�����j\"ȵ(��fq���F�`qi`0$�#�3J���x�:�r�_�F�p&6��WC�w�,Q��08�1���fÜ�K���˨��G�D��c]��lI��*�±5�+g�>�Q�Ews�\'����Rr�:V����J��LVWmZ��wLk��[���1jGH�7�/��j;AYj\Z9hh�o�~�ho�;o�1�;[:�j�5㧴%f��h�*��X,`cr(����m\0j>�aŠb�U��*��ފF������J� ��R5?W����~1p�f�$f�ݳ\Z�H�aU�٤�ѹZ��ĩkZm� ��t�5o\Zį�aT��3�����_M4�G}��Ե�!�N!dU����#Q�[䕬Zչ��.31�,�S�\0!n<u�C����0�~�Y�����b�.&Z\0`�ȍDjV�Z�4F����ֻ�\"�%Y\ZF�^�)�k��E��#k\"2��J���\"��9�R ���U^h�CS�^1k\0LY0Đj\"g,�0ň�f}\Z��娉�����\rMMj��)�~w\0`$�.[I�Q�s�E��|��=�<�X��YL���qF`�.R`�Q�)<�yR����w瘄q%T����캺��=����b~g�Dı��@Aņ	y���X��;��\'֊��3�I�������+�����5f�1\nc\"�/~��>1��W�Lؕ�b��X�1*�I���׹cD��X����63����C���zɍr�#L����8�A,�PFeq�_�f�I��E�ϻM�3q,��&ZP�ـ��*11�&q�4�ƺ강��,m+3��W<6璉V�\n3\n�Q\'�F,bPsɶ��I��k7���zl\"�3b�[#*�Ī�:H9U&:AS��do�rb��63����<����F$f��p���g�Y�Ǔ���6�x�k	9K4��1��g8�L{���5��m��+��+q\rHڵ�1���>�?iq��5?��1��V�7Yo�\Z�NZ�E����^I�qrݚͫ�$E�\Z�X\\1��&6@��M�\n����+QԱ��:�׌.3]+Z1���bȼ�Lik�f�-p+��b\Z�2jF�ָc^1���-n��3������+Q�n@Ɗ�H��鈵�d��\Z�bF�\"o�I];���`�G,VF�k�*�	�A�����$j\"��H�j\n��^��Ů}\Z��9\r�۱�SR\"��˱�Q�-��F=3\\K];�.*�F�;��H���`��R�jF���[��l��MH�|��7����H&�9��b=��j��\Z�_��VY�ͪI���~@���k��S�\\X�,�}�bс��������9X����x��MKW��d�V��	Y_��C�|�F8,���#�%*�T�%v+B�?1�\0C����<��C\n�U¢�� ��<���/\'�O)A���J��\"uI��>�a�y�+#��>�O�O�X�\'Ǹ��z®%\'��á�����a� ��3WfqRc�h�yf�,>Ak���I��܋+�WEk�����6\'baLXjF���lb�#3����Q=�V&&&�n31�E*^R��c	L��c�aI�l���@�11�,jV:��fb�q�1>B�f�L��h��{��`1�\Z��Q��a��cL�	�\0���	1y�X����8V����N=��Fuf�M�,g�u��1\'�lX/�`���k5�Ɍ\'��yG�ƥg�R��bb����_���K��*N������2|�yG�X�`Ɗ��I�Į]��M�Bc�X���ŘVf)X�\';�>P�陋Tr�ǒ���<�g���/�10�#����>�9��a+�R�[3�31�̬oɋ�0�j�nk��7En:5#qa�K\Z��i��0�7\'��}oT�\r�b�d܋#�k�-����X�`����mH5�Ԋ5�w�D\\�թ9P��1c�+r)��7�ֱ��q0�$j��I�V�\0=���|�\Z�0�is�=o�0�њ͋\\�Dj�$ZF��#��aJE��dk�7���bc��a�f���V�iZ\Z�`i�VF�n\"�#UV�l�*иSR#QZ�x�R�d���K�Tj#��b/T+�Dak(P�cQ�\Z��G%SF�U����F����k�\n��\"�m}dӚȍg<�E��4�Z��t�ƫ�E���kM�T2����!���0�P�}�F�^��)�\Z���dШ\'-�q��\0!0Ƣ9c*�Q�8^[	kU/ަ 	^��P(aV�����?aqk��a�z�q2}�&LUZP e_!�7�Cp�(@\\+��\"T�BbQ���&P+��UU���#�J����LcQ�O)\"a�&D�VKs�I艉^��&�����el�\'X���F�k�bD+8S6*`�v h%�1\Zؕ[(���Ebb�k���U,D�bW���X$��^Y�b�]�M��bc�#Q��P�f1�X9o������^hbL`��f��2n��8�bpѬn31�T��%@\"+ѕfc\\ћq�cX�]��	LI���c��qݤZA�0�Rc�c%m3b$�N\Z�Es�i��	1�K��tE�;�6.%�X�±aB$�a�XGL8��y\\,fp�s�\n``�X�sϐ$�\\f�gf:��\'��\'!�&\n�g�*��+=~�,ĎQ��^��0�����R�{��30�3��0̈́G|�k7�SmF��[����1���k\Z����\Z���s���������.�ԍGR�NZ����mb5��*V�(�q��H.�vk�nC�1��\nŮb.4�!K���X�*6��\\�%���.e��^!1�ͩ�k21W11�+լo�pj\"�a,K]�N3nC\Z�jE�1�e�=�1�tF���b�^1s�D���񙄍\r�T��\n\\��pũ��CF�F��k�93Y�蘘q �����#U�1�10Z�n@�\\\"�d�5\Z����#HLf��k��pňJԍlH������)��q\Z��ԍDL�\n��W��2�U`E�Y	\Z�jE��i��H��&�5�G�b�q�y��WJ�LE��r��`��-\"�&*���-H����Q�\"�{&+���ku��3����`.��R����ŭ���)F�Xd�K�)��.zقc�-i�i�{lb��Q�{��e�$�f`�CSp\'�p8�B�)�`�\"aZ{&&$��&�\0)�n��]9�/?�\0I�^;z+Z�ǲ`��q,J1�1R��L�\0�	������\'q�с�y�f���۹\Zba�K���1�ϕ&��\'�!&%��X�$�)���W9��M�f󾩌�̦$2��� b��63�͌���O��q�1c��a���b�����q�0F0T��#2�![�8$�9�McL�m�3bb\"|��Xl3�.1bw�11�X�g�Lk�)�,Z�A+z�sI����bXɌ#�EvjF�eq��Pfu�q�}L��`h��*LwVzOs�Ss�+|�]�N �豞����H%%��=����0�IXfc-��f��1����C��2ό��g݌gΙƺ�r��՞��gɜJ�[�ͱ��5��s��95�˦���o�WH�F_-H�\\��Z�j~;CL��5�X�֣ME��1���m��_���Z�\0\Z�H�C�G,e��T��GIJ��H�\ny&P�C�\\Ej!*�X\r����\\g��Ɏ`�J:E�U��C\\��X�V5#\\SM\Z��6+��dEmdTo_�#�V�J�\"��|����EF:��1j�wA���ԋ��\"��.=�T0o�=ڍH�E�8�K]>�a\\Xt��!01d#YjFWL��ōr�F��\"��j�Ȋ�[�\"ȴckԈSAH-Oe�do�����k\Z����5��XԊb���5 qMb/��q���vj֓Z���)��.�\Zƶ�����g�X(��`\"#�b��JF��#\r�ՠ3�	�\0Z��1ipňUŪ�p��q��({R�Z�\n_\"��*TQ��h�`�`��I�����­Lt�%o\'����B�����+E��BI���P�$Ǭ&&&ɂW�)�\0(`LD�I!�O��.,b�HT�Ta�*v�p@ĭ}ՌJ\0�R��Ȕ��vյ�>�fŅ2&pcp3c3�؇{|���!+��:$��\0Ա��%�M%R�蘩,`��A��j!�dX��r�cQ�p�q���Z������:�rc�>���3�%w����1�/\Z�ըܩZ{1X�Y�N$\nrb��,g��\ZR��)��K�Ŧ��\03c9��I`�S�$ǡ�?��2��̋�l��&3����!]A4�c9��+�~9}&6i�s��,e�<:����b�>Lf5b��b}i��FI�2f��GFd��̰���7�2c��Y�a��6+,�1��&0��,|���:���5#MGGE�wk��Q��5?V�[�v��m�ǳ�dV񥄭r�{5�֢=�kl�&k W�x7	�Ȧ(`Fp�%Zk\\�ő�q�)Ub1H�t��71#���#T���Qy7\"�Y\nQ�5}5�b�\\U��%tgV�Lj2+r��)d�(1���?�]$	\Z��dJ�������L�xD7 �˂R�D^+\"��.4�DC5���H�F�Z���/^�H-6�i`�a��^1�U�T��b��+6��E�i�MH�5�����H������VkH��!�F3\r�\"�&7�b��\"�M&^ˋ����ţU�.�Ȃ�)��Ԃb��CrJ��%z��x���>4`�/S()����VMH�r�@k��\n���0��+?��\\��\n ���U�b\Z�\0w�p�0J��!@D\n���&\'ʘM&)��%�5O!F�a��`�P�&K��L�Pg���	�a�1Y��9�x�i|����h\n�b�D��VlE���0FlZ���Ī�ŷ��&��R�d`�le�L���,bvi�g�lfįD�OrC/!1�����r�X�Y��%�Q�W6cQ���b��V1�)�T��3,a~!����b���ϔ%��̤�!��)a��.3���3�Nf,a1�r��0%��	F�[=���f5�h�ub�\n08��Ff��Y0L�r����3$�XVB!�͊E%��Q1�tǲ�t�rb�Fz��~5�_�tΐ�$q��3��\'�=G;�Ռs��s�&3,�Y�ܪ,d�1dj$#m��^1ɸ�j5վV�Vƣ����bƵ\\i��^cX�4�Zc\\�/-:x�X�b�S\\�V�j?�.���A:4b�,m��m`F�c/e�kt �,B5\"��M�t��b�=sU��iZĥ#&k5����X���ȹ#xP*����Y\Z�1���GH��V�q1x�1�b�c�#K�dO��L1�¡��j#x�+y�c(a�D[K#_CXa�Cu�`���1��~���L��M�bW�.7H܋��\r���V�j�Ƽc�\n�������Lj�\\jAUq�HB�|�!��>5�ي7F�X|���.5��cY�.4l�b-��\0��울������������ZS#YV�Z�.@t8���0^=�p¥@���q1V����xM��&�~9�b�\0��3E�F����L?0i�>1�h��ߩ���J��A*b~9�]1?��餉��L��D���\'�\'邆% I�ĳ���A5���K�T�\0��q8�g�1^(A0ĭ�<�1��XcS���Î�}!`1`�ic�X�>L�aY���jS٢\"3�XbP3U�+8{3Y41q�(��/,M�5��Vz�6Z� ��`��c*��bV��6LWMdn31j�3Ė3��_� b�01b_�63���1�ʲ��1MX�39��q�;�C\n�O�z��蘝F}Ղv�DX�1S̭���v��\n�����c�	0���K�frLX�4�*���)c��\0�C�b�&=Q1�m�`�iV1ţX��?Ռ�����Ųb>�0SX�q�Б˸�wN��S�(ã1����+,�8�u��N���.UϨ�͊��b�Y�\\��W�%��{�s>,m�j�y�7�i��\\^]�ab���ԍ���טУPc\\��\"��\\S�DX,jELk0Y^2o��Ln��X��\"��)���[B,�U�X�y�8����b�-�ԋ���F8��+�8ʵ�\Z�\\jC�LS\\�?��5�1q�\0�+^1�,�����\n1V����\"�.	B5�`�7#Q���Ed�5s0+j#լkqN9B�,E�H�eH��Q��8�i�!pX��cR-I�+x\Zu040j ƹ�xŋk�&0Q�[.\rE�+�ȵ+��$.�R�5S�L�5�`�R�܁@�?�\"�^��*�E���c�#�$j�^M�D�p��aO}�Ej��,��W,�\n���1A0P���jv�0X��3���ѯ�&�DTe�!�F^F�fs��J��b\0a�c.���@����L\\3�D�MF\'�c�H���D��.���b���1\n�+3�Gcĩg: Ā�	���,f|bk}�Q�bc�p�\\�\n���&��+6\'C�C��\0�9m�`�^18���5�V	�6��!�1w�cL���d�1>5�+R�0�c3x+�W�N�������f4c17�5#l�b�3c4͈qI�f��L�d���1�*qjF�bc�bVY�^$\n�&	Z1���9�#>ZMd�5�Li*�0��+�1�n`R`V�92m��b1����&)7��X�Y��)`�,b�-HŅ��39�%��\0�x��:�Ŋr@0vz�>I#�q��ҽ\\����yFU��Q��=RF�=S�˟�9u鉆,e�X��&0��s�H�bơ�+���n��s\Z�Z�Z����J���$�yt��t��5��ʊ�\Z�*���+c8��d\r������LT�0�1S��,5\",CK#I���J�X�1Q��7\"`�Q��\Z��9��po�+k�ȑ��4�6��b�W��ט�cet����*��ƤT���0t�0�~C\Z��m��r�+C\'��,�H�f�\0��F�X�*WH$`��#�#H��x�m �k��E��t���0t�\\E⁨���dk��;�����-,����XϢ�6�)���\"\n-b,��ԅ5\"ְ\\\rLD���^Ŧ:�V�1ig!MH��%*\n�.�D5 ���A�U�-5 �㠘�xn��Q�I�H`�&\0�U��/���(W��R����^ǘ�\'��ғ�g���z	����l�]�f-`��Ӳ�O��431�2&%&(�\0.�@W�\'�a�1�L�8�&\")��V<�1i9�Κ�f��C4R�1)�ʦl��?jň �$�����WQ�v٬S�%f	��ac���*�S�cQ�Ǡ�\'��\"}0��lF,k\Zf����F\Z�r[0�L��fz�bk��2�	1p�,b���LNlX�\'��\0���e,g�\\s(�r��$�� �fuVle��+8��!E���̌X�͈�X�el�C��lK�@6L��$�Y�`�<���Y�P	��X�X�\n�P)�%�ft�D��ɧ�.��`r�U�I\Z�k,�1�=9O����s�fi�͋��\Z�C�1]*}[�_[��K#MD7W�e�kQ����u���,q.�Ү5�X�.����k��ZőS\Z�1p�>���܆,@�T\\(���0\\f���+F\rb�7\"�xa�5�\rHԊ�b�b�&lc�jDň[\Z�Q��0�nDj n@���	���X�5�j��U�¤�b3jF���\n�a�,��������T5�H�b�-f�1���\Z��F�b=��a[�1��܋Ms�01H�\n�7S�cn��9ڦт�,�#Mb�I�R�_��c~>:�5��3�FMHaJ�#T��4��F�(�o��u�KGF0Zjr\rbbт-�,C^ZƩqp0+D�\n�p(0jr/�e�5F�75�\0X��W (�00���Qk5��q0�aK�ӹ�`a����P(H�	\n0��W\nK�R`P��bQ�O�)�O�d��1K�S6&&�1w�$ı��q�O���00��L��c	�.\Z��)�C���%3�$��lD�p,��pL��ը9��\'�b�\\LAq&�le�g\0I�1c�Rcl�,f�1\0�a���,f�V0�&�\\�)cQ���,f��p�0�bclaL��n5��Kg�L�I�Zbģ�(�1��cI=W�,a��0¤�b��h���X��*Z��\\T�ı�1�C1z��ɌұJ��Ę�\Z�u�6��bQ�bQ�&v�.%\\8�:�10H�3K#���=τ�㋌yG�c7��acX�1��Fi��ϗ�=Fz�s�Nns�:�3.u:�\rE�7ʶ�j\"�ݨ����MG�6��lH׎k\"����� ���ҵ��NQi��E�di����Zm#Z#�@��`�T�j��(�Tk��C�0n\Z��Q��9J��q�tI\Z˲:\0l`�H+d�j���]\")�s�b5�ȵ�\"��) �F�ԍ��G����E��b\Z�diZC0_�I0j�F��f�\rH��\n,F�Z�I]1\0�[���c��Zڱ�AH����\00ZY�|m�:�F�\0��RTQdi1��ʫR `m�#~>;�kM�\"*�Ti\0�F�dkSXD)T��b\Z����-1�<b�t�\00����V��*��.�=��T����W�O%NA��~eS��R�)�Q0�B�J�	��	�R`R^A0���X�\r��Lbb�Q&���\00�c3	c6%& �>De\\��vjT�+���d��`�iX���X�g3����pc�LD�31�X͈�3���,�uhՌ��\n\0�X$��!��b$��\r9���L��+�:�\0$�%e�ɦ�#3\n�a���g�@�a�I��yeq��W)�1�faY�)�\"P)X��g�/H���@bb�f�@�Ls`fV3џҳ�\"�yG�&7���ŉX�6!H���J��$g�&\Z�t��>3�\\p�gfk5�acO<�5�S�k5�r�&:s�eΥ!at�+m���7�#MH�Q�x����^1�\\������sho�?�Վ��0nD��\rBcr(`�b+r�/*�ژ5����l�C�1��H��\"�!�Q\"��Xٱ���5i����s�Q0�\Z�V�Tk\Z�mdJ��F.5ݜnEj@k0j!q�[�U��c!���`�7\"�����j�1��Qmn>FU�E�Uƻ&7�R\n� ��c\\Ƣ.L[]La)q�\\n2Y\Z����x��m&:�S5qSjD\Z0�F��V@h||k�qŊcL⫤�. b�\rD^+�#J�`�,�q�3���ǌC4T�LpU�+X�\n`t0J\\1i\Z�9)pŤ���01\0�0R�@�(g�PR�<�b``�\"��ųy<�`\'�s�-�L`��\"\n`�\0�	bX�c!�	b�`Ǘ�g�����a�`S7�3L+3\nŀ�\"`9O�O�P��\0�)�f��b9�F&7+!��\"���1�&5�I����K�8�рa�Lb�1b&\01��Q���Kg\0K���b�q�Rƣ	�*X�X�3�	�L.3�e,e)�W:����I�IbVSC1Q��J��\03�	�����$���c#�`3�̤���fS��2�b�9���s�Y<Ӛ��e��fS�k]�\\�ϧ&<��g��ڋ#n��ms�m��,6r�B�~9�#�-��+\\İ��t��FӕiӘ�4H�6\n*	�+r#T�H���,�U��ѱdUm\0���r(���+l��cJ�*��Cx��t�<c��Ң�#R4��LLlt��c��iƢF�Uk1LU�𑡼n#Ն+J�5 �@��H�5 ��@ԍRcN�\n�1TPX�ecR4�aF��Uv񊈼�P�LZi1��n@Uj@k<|ubѴ1i�P\Z��ʪ�)�!�DZ���{ �\n�)�����-*�I��h_*�P`�`��Q��	�```\0P\0\0`�&��LCK1�PE����|f�S\0��Lb�,A�LKgg��e1Ϊ[� �%���\nC�s��	����q���S�P\0ĘK�Q�I�\\#��#�3f�Y�JUI�%��X��I�sV٘V,F,\0@�cd�,a�`I��c��̣ �UFpI�3b+8�&,s�Q�eX��FP�����5k\Z�J��,`	F3�\\��U��F+�#pV�h�F:X̤g���2��˝��˝g��ר<��QҲ�F%��I�;f��,K�fŌڑcZ�t�c�7�mc6���#mFmؼ��$t�nF�Mcj�0Ō�����#K�Uu������a\n�\\S\nD,������,j31+��+�bȸ�6�܈�)K Q �x�Ħ.7�f�b����0Q�j\ZőS\Zj#�0���e���hQ�U��Y\Z������q���z\r7�*�\\�\Z�k5��]�pY��v��֏\"���,3�c~1z��q�p+�\r���b��K�����#�40P����S\ZAZ�0t���R�l�рԀ�cR)���R�pN�*�53=GZ�1�L�L�����`�b�I�b����``Q���\Z!��P�H�` ,(�LB����0��#8	�bģ���\\F\'�d�`��R�LI�,�LK�&\"�0�	^�b�b3>7���Mb�pJs�C1*r,e)�0��(��q�0(�;�0͉��bA�(�01c�b����D�+�ł&	0�X���ǔjԍF\Z��R�Jc��b30Ō�	�������2bVW���!��������rɊ���f�� ����3bX�������fR�h�. ��$�S��#��b���D\\e��zVgD�����Ra,f�~�\\���h�G��1Y+��ر�Y�#�Ĺu���αb�k6�#M�q���#MFی۰��4^`���m�����1+Q{*WHfÖ�y�b��b-cNI�E08�\Z�\n��)3�GOY�d0\Z�W�h�B\Z�+Mb�h�+�WV^%E��UyWDƨ�C�F���&,t�\'M�\"U�\\U�1�]��\\E�ƣ��M\\�j��V��i���aKnAS�\"�&jX+\\�T�`����U��(�534��.  *�r\n5 ���Į��F�\n�X��\rA�ݹ\nP��E┮���-b��Zn@QCdZ$Y\Z��R��.b����ε�d�qLS�\n� ъ�`b��W�,�@\"��&!K�Sѯ!Y�y|�iY.9��\"��J�2�VI�C�RNB��L�0��D�!F�#7��٦\0%X�!��^6`�11��X\n���0͈���&!%R����c3�(��4�F�*Wa�VlI�l	`��c.~QX�b�,C�c�#��c�cL�A��eq8�f��0$��9N�TTF,H\"�Ĭ�X�3�	�ϔ\\}�,r�T>UR��Df��O(���%���NK��%���`I�?��h��\Z��RR�&!�	�%Tf�S�謠3�\Z앮\\�iITJK)�Q��̒3��LD�,frg�s��q�N)��7�b�.�͑��}��ԝY����U�sr�U���ơ�F���Qc8ټY���4�7bǢ!x�\Zt��EƢ�\\���ֳ]!�^cQ\rq�\\�jX�ca�V�F*��E��`|\n�ғu�	^k�G���*Ǣȱ��SL�ɨ5Q�J��ݜc�\\\Zѹ�1���,�M�+Q��4�\\�Uqa,CR4�����]A�����-F�Ԋ�.,�C\ZZ���V�cJ:{1�K\".�⩄hư��Ҕ��b���cH5J-D,��`�,�������c\rAbȿf4�����cQZ�L�5 �\Z��6gX��\Z�Z��.)F��k��DR�Ү	Ę,D�s���bZ؋cX�F* �`B�z���5�F&����@��-J���0�&�x����Ӹj�\"�&��H�j`��%�\'�?���~`5\'�q�CWRcx0�&	R�T0J���`q&	V�bR��؈``��D��0*�J��ʕ������\Z�L\\>�\n�(��͈b!��^D͜J��㞍F�ep��I�pJ�F0��W�0&51,fb�\\e�b�\ZN$�:�1����,e%�\\S|��\Z\\B&��1`��M�LFlR��c�5�v��-H�,�\"`Oac&2���LR�Dq򊟓�0��ɜ,MWJ�CA�b����2��QJLKq��ł3�\Z��\\,M\n�W��	H*JX�D�J��b-vL1���\\�Dm�&���`��͞���8�I�q�D�+	#�LK�q�s�?�,j��%�19�1Y�lJ�0��a�s�qr�5\Z�Q�]di�ɯ�Q�nE��Ŷچ����1�yX���J�j\"Z�]\"��j�yj#=8�/Ӣ``��4��\'a���:���_�C�F�b�d��u�ՌZ�&\r�`�nJ�A��Q�V�t���Z�Q\n��^%��*cr.B�Ԃ�HF��:D\\�F�T�aM�4�Ә�7!��$t��κI��({��cU����PV���*2�b�5\\��Cr�,BU�4H�SP�|nc]�;DwHb�j��5�H��bߌj���\n�7Ų���¹6,G!���bb�L��+q2�QY\Z�����LJ�0($n�#x�-(DZ�Yj�-z)#U�H���ԁ1�d1�-%jr������q+�&-L�j563jǌuV��ETp��A�h_%���W��P^JC�X*y?>���Pa^����$�k����I�Q0)0+�\n�C���Vq(g,�J�\0:%0�Z����31�c>Rb#�W��r����ظ�ƹn�Xq&�_�btf����VX�����\\Fi��\n�FLe+�4��0諌�^Y��:�Α��\n��,a�zd�\r�)*�y�M�B3MX$�$������,Cj\\g�.>�S�6�����\n�1��t�,L�0<�g8��\'�2��%{��4�<�\"��1�GQ+�2��E��2�x��=EÉgI���H�0�V2�8!�`1#,0���@�~Q�5�Ẍ́�`	��e�͊q}.3?đ��\\�I��f}�3�bY�9�m��Qq��\\��4�9�5��*Y�s�}ce��>��=D����ڌ��k���ȱ��m��ͼ^gע2��1����F�\Z�H���E���$�*�D�yo�:�\Z\"1o�`��s\Z�1��`{� SX�ఖ5�t�E����\"��n�5�X����(R������Xe�S��Ѯb\ra#L��� l��D�܎��,؍Q\"\r�,�o$��X��b:��F9�5�V�7jF�k_��B\Z�+^1s���TT`�(�[�^(���Lt�&�r��wf�j�5\"����cx�,�{Z�{c^1sK�]#�1��(k�Jb�Z�|�Z�\\Y5kP�� �0t��R�Z��%�#Z���p�@�����܋M�j�)�T��X{���N�.,�U.5��p\r����k��,A�\"�4q(%4�b��b,x���\\K����%\n���?A|�\"�&�.&.\Z�����&�Uj!���b!� `P�R�bR\'��<��\"U��`��G��)cR���s�0\n��3^���q���Q�U�LA0(����c6%&$bc�Ƶ4k4�,R���f&�(���b��lF:��^�%`��%��ϳ�n\"Lc�q�c��b%h��«49�Q�X�aZ)0g�5�,f��LCTB��(�ɜk�iŋS�R�Y�2��a�b��X�9y�W�Q1�[aJ���/�1˳62���z�<�+�H�3`��$b�\'�g�D��R,s�n5c+�	`�X�rg�}+�e�\\S��cq�,gL(Qp3�d��߻60��1�,�;5��l41��+d�S+���T�:JV*3Q��$N��Ө��è�D[��1�1���,�5���>��e�Ï�y��:Fp�#m��F^��\0[��Fp�\"��o���^c��-R3�܈�FM5��^9��+����c\\��ȭ(a�Bcp׉PLUnDU\Z�t��t��Y�P�@���5ő�)����z�=�F�:�Z�t��+xb�o�Z�(ѮĂӢ��j<oVk����[r!�pŎ��s\ZY\Z�I�Q1��@n��t`�5+�Uh���u��9�U�B��k�OF��m+\\���Ab;6��<��v����П*/�h�U5#R/�:x�E�3�������4��6Y�ƣ�O�@�MH:G�Y���H�ڵ\".(`��HSR(�-L�@�Ų��_�\"��X�\Z� ���ujE\Z��\Z�{\r (*ǌɌ��DB�KW��2���|�Yk��!���\0�� �\'���|��c�w_!Z��O!R`R`_b��:BbL_��V�� ����ɋ���LoP*s�PP0��Q1�����J��E�c�c6&}��a�Ы���&0�iX�p+�1`�X����W>ō����c5�+�Ŋ�I��$������\\��*��\'X��`�D��ٰ�^Q<�a�G�A0ŁĲ$�����k���L����b�r�X��1b�a�+�0s0(����1��Kf=Y��M��X���1��n39�*�R�Q>�(�Lm�g��c�1�Y\"1�V5�1�����&ک�@��L3Y�����\0$�VU�hՌ+p(�M�zVf#�ꑞ�e�J�JbV\'Vz�x�×Q\\|�o뗕�H��s�LJ��ny�����×��Ϩ��B$of���o\Z��LYk�Ot�5��6���Ԉ�G�܍���%���c8GRF�n�#X`�b��a�����\"-�,�RcN�}����Ť��\Z�ЍE���v�0�V�Ԏ�:�,j�gjC�\Z�F�>F��Q�J��O�bŭ�DZo1\n\\1��1��Vį�Ęc~��S)PJ��!#ZtkůP�DZ�ph�ژ\\S�ډ�D�V���!Ŧ�r.#���D�f�D�/v��Ub���5\ZZ�\0#BV�g��V���\"�ǹ������L��)j�\"�X�Ѭ�10\Z���ע�U1j��\Z����kQ�H�G����|.}�aS*H�ԄǠ�\0`Dm� n<#9���r�*�X��_��+B�^�q&f�`q\r`P`�a�Wm��A0��\n���b}ha�r��.�W�1&��{	bq\"$���9�f�{�a\\��0�k�ŉ>��_���\n����&3b	��٭\0�?�إii�c>�a���N�b��$�%gL��*�9�x�챨ϳ6.\'\\	�TN�I���ц�b1cQ����c�q����f5��1��TL\n\"Sb�fa�5��\n��R�s0��Z�1=�\n�\0X�(|�jz����\\)�\0�f?�k=Fj=LT�ì��ǔEc�Y*b�WnA����d��Sϔ`�5�\Z��%0�4���3��¦3^ˌb{�ņ�1<���^Q|�q��Ld�]L0����\'D��cE�	��#�+��Xs1�3q�q\'Mm#=3+���,1S�1�,c��p�>LgŮ~P�u���1,a�s򽘱γ��\"7ķ����k_��cqѹu�t��Qٮ`��1���GH��_��^0��-5���F9#]���E̐>ApX�E�Dc	Zu���7�V��\n�-pn#�Ei�9b��ԁ�v��ĮF\0-:#Q�K\Z�:�L�U�bD7ݼE��ō|}m[�+���*2d�rlCDk��YE�W\Z;�.۵�����zGF1C�r���:\'\"DZ�D_����Eg,*�T���\Z��\0�V���\"�і\Z���Zů|��@VK�VZ.:E�@qk���e�s�DO�,�&5�z�M��dkq�N%LZ�5i���4�֩\Z��M�@U��j����x�.\Z�53%KZ��FVH���\0W\Z�,X�B�b�F	�U\\^��W���`s�\\��1L$+����\n�\n>5�0�L��f���/�J\\U�L�D��̦3�Z�̫z���b%H�i&�c��\'�\0a��`��T�Df�j�F&=�i��ٰJ�\0R`���+���`2���c3��L#q9&#�D�<M:���19�3c3S�s�mU�1I��F(`�M�����9yG��܈�ˊub�L�^d�ؕ�YF0����G*�\0%�s�+x��,Kg8�LL�Lؤp��٬p\0c�2c5+�1	f�����i�צk�h�U�r�08�������G=�������|n��\0��)c5X#8+��c�cQ��D���N�W\'��p�OF\"tW����͌Ɍ�f?�g��\\����g�c�3ec��~�31�0��w;�i��0��N�$o\Z�mcQն����_�Әӷ�1�����5[���2݆j�K��k2�\"�zk���m\Z���c\\����ѡ\"��C��\\���$Z���A>ڋ&��6��\r~�0#3:Db�Uќ`�F�=\n�F�I�� ��Q#n��,��L�!+\\�������������K�GXg���x�qx_yk�n��-`��1QQv1L�C��Q�b�i�+|�:e��~��=S�^K!Ma�����6����0��鶬�5�7��w0Ab5ըԍ.* ��\\�ͭ�L�X�nA�[��i�E��F�\"@nr���V+U��d�x�܂.\n��zԍ��=T��a�]����dK[��ej�\\j�~ڑ����@P.��R�_\"�	Ů��\nG�P0+AC�qM�+�a�����qiyR�Ȍ���\0�8����f9dc8��$��ݩVVF������3��&q�@,��U����V��uaN(�Y�����X���a�?mc1��4�yc�q�dD��X�3Q���*\00fcq�����YQq�g�3,��\'t�I���^17Y�ԣ�mb��Ό��zΩ�c5��	��8Đq��x��i��L�2c�8��g��~Q�S�skLD��,\\I��ّ:g�q��6	��ds��t��x�.0�u\'ш��+2�􅌦,.ǔc�k\Z�s{\"X�����s����q�Ɉ��\0��(�\Z��}L^�����^.]�bt�dN��f7�c���bY����lw>�rs�br�j��c�h��d鎮v2�9|K�b�Fcn�6�F-���:+��d܎��2�I\Zuk��\Z�GO�ln~:Dre,Zo�\Z�o���LLj8���]~�\r\\)�kX��nG_1+K��FW���&,�W�#xV���`�Y��H�㾫K\Z��q��\\����%�H�V�=L1i�bb��ߌc��L�m�r�����7#U��r�c��a{�F��dUֽL!djF�������j#^1s��f0��V��SX�5���b�r{�&;�D9���r(�&5#_M��L��V\"3Y\Z�����=�0E �F��jF�k�+Cu�����+Q��y��E,��&\Z�����)[�Y�c�Z���ek�5#MH��#\0�b1����6T���Ƀq�YgV��X��g-T.4{��Ř-5�)q��#Z0�0³�1kqg+I�9+U0�sEŬz&����T���Z�y+��SN�a1��\'b&\nV�\nK��(��L�K�k���L_���Eƃ\0��31Ic6%{\"Xv0¹!���3Z+yD�p���rK��a^��.1``W�	X��͌T.#��i�1���&LW�K�)�E��11���K��9����&����f?�`��X{�\"Tn�Vb8�V\r���1b��LV�#������r0r��0X`�(a��ZVlJFp�\n�\0���+�-�bVa����X��\\s�����ǔR��s��\Z�zC�%1�ŘaBXʱ�Ł�ϔr��^c���	ac)��F.!^��Qq��f�\\g���F�qc�3��5��NxV����X�����\"�8��Ղ�f�Y����:��a��1Y��\\|�G9�����4Ō�.}F��2�:FۏF�\0��Mƫq�z:s�����v�W�Ƣ0���<t��Z�Θ�	c\\����_�lk\r��`���r5���-%tu��1\\b�0츅��jE^cK��P����0j7j,t�Jt��b\n�Q�o	�\r�j\Z����\Z��W�O�_��ϸ5Ħ:*�\n��b���b�\r{�\r&�)�`/�bư�i��`߄k�#�e��r���Ln1~[���7eGfG�ȫ�X���j/�Y\Z��*V�U�������Q5\"�V�Z��\Z�m*V���Z\Z;����!�cQ�dj(��c��n#�+\rP�IQ}�QL1c�A�k�\\\n�Et�\ZJ�j��S�\\iqM�0�ZL\nX�[(��J-.-v�0~W�j��M���2������q���&��ߺ��c��\0Cp&;����{���Y&	� ��C��1\0�I����u�Le&-b�+v�E��+ٖq4�*`��H�X%\"X�j��s?\n�g�*��c3�6%{	!�6	ų!���֚��ϖX���\'�Z�	9%f��*��P���h����X�,t�2�L3Q������@�c�9yF=Z�<B�7b�� ̑���0Ę3��FUL��f�]��4TI��&��)�Y��2���Ł���QS�/��c��[�Q;2�Ʌ���P3(�\'��I��mȲ�O��\n�\"�	�W<E)����q,�u����Z�)b��Nx M�=C����\'Q>�%�+��2�	,�c���I��k��Era#����W9b���3]4nF���wLn5�{Kr|WH¹h�#n����]~VC���|#߈\\]o�b.�.�,��]9�,F-���8�V�b�r!�`��\Z��Lj�������5F7��Wñ���0n���H�-�,_�Ę)����k+�1tnDՌ?�c\\���ŉV0ƚ�\"�k#R��3��5\"\r`��;S2\n�L\0R4�r*�[k�;DVK�����N�j�wK�:&7%pV�<c��J�8�Z�� d�I�P��]3jA�Ԭ�щ\Z��4��)��\\\Z�mb�4:�ʙ�*�5 ��ii�ͬ\Z�So�\Z]<b������U�cF ��R,iT0���Zn@�\\�i�<X���&!F*�9!��1dZ�$������Y���\n0���_����-R�~֣�2�B���B`\0`wSH�\'�+o�Vs]5����D��V@��9�L&	L�	�`%w1��p)�Ț[8%.!1�es��j$�+(X\'f0=�B������YdL�q�/�b�9�1�0I�ĩ��\\e)�ӛ8�`�X�8uds�X�J�.�\"Vk�62���`��#2��I���HJ���V�`���(�J�B��s��(�Z��V�☹≂J�63�q�b�^��&3\\j��U2LS���tś��^���`\'Vz����u�d�2���PN)1Rp$f����4���ċ+�����5�q��FlSD�8�f\"٬؉�Q����\\wkb���ߑ��=���fo����Ɂ�`�8L�6����I��b�壞3�&2�X��Ic�Nt�9����$�|H��0�b�9�Ď>Q�L�LY��0�G��,c�d�1��;n/1��]#X�]y�cq��J�Y\ZVݼ#\r�A[$K��0�^cq\r���4F�J���k�n\"W>�\\�x�<h�]�PTti�J�E*B7�x��܃\n�,z�+\"ƹ�-4sE+���Zlj\"Ѽu�?����ALX�kQF�k�\\�\\Z\Z��S�u�Ҝ�\Z[\n�S\nA���E�i�F�1��#Oe�Ťiid0lQc[��6G�d*�8Ci���1�V�L\0�4��{�L���y���n\0P�MH4�ȼH�Dk1ݚ���#\rq\rcR)\ZS�TZF�^-�.z*_�L�]DJ츲7\\�k��*�hnGOf�V��E�H-59�\"�\rH�ɖ���\\��=��cjf��#Q�ǌFȨ\0`O�`a��`+�3�`\0�Ĩ�f|6�HkLbbc�`�!	��6�i��ؕ��\'fo*�����E�j1\\�j�k�c*0K\r+vC�Lq��fq���`�˃^3w�-J�s�5RcK����H%F��+&3-Fz��2���25�F�\'�������f}y�ye*�s���v�q��<T��؆2V��Ŋ��Flr���ŉ\\�g��)�\'����N�|���J�68�Et�XȫBFe,J�d� b�A�>�`ǞI��HL%�\nLz�X��b`�b���ƣ��LX3�TgK�39C=D�=��0<�ښ�H�:���(a�Y��\\��´�(��\Z�L��b3ҳ1�s��DJsV|���>�ݗ4�ћ\'):f19r��\Zbb*X�$p��X��+���3\'1��\'I���ȱ��㤍:G�\'ƚ��Wx�#q���q]�cB-sU��1\Z�VF�kv���CX�k?d���=���[\n0Ōy^�5�o�E���)^�!]��Q\'�֡��0X�$X���浪�e~��C\0�k�;J��Z�8�q�>�.��ňid��F<����ќd�u�)��1�WqJ�������\\厡��\"SU�7�Đ�0Ƣ5ѩ���k�5�1��b=�\"���j�10��jƹ�փKZ�5�\Z�~J����k�Y\Z0�m\Z0��-g���\Z�Yo�.r�����gX�=,�{4Ҙ!�5X��\'đ���Ƀ�E1X�\r�5��H��m��0ZP��b��o�y��W��Y�#qqɬnB�Ɗ�E�Y�ɼ#!�c~1x�V�X�\"�ԅZkjƤ^���p����L�nrR�a��֑�F#Q�fή:DF֘-a�4\n�\0\0��¯`R���B�<�F琯C��f�T���W��`f�[��bbTM��1��h���h�0�	ť�ϐ��09�31J�%o�F\n�f�J�ќC�Ŭ�Gm�b�)����a)����.\'s1������{Q��`b��s)���_�`���dfÖ���ٛ퀜{��c5�X�4���q�Q�\\�������`��^��k�Vk)�ϔkjE�Rt�Lz$N�+(ai��	��K���F(���0*ı��`��,�sT��,�c��a��؜�_�-�9n�%�t�8�L3K|��vd�8�_m�s�)���&,+j�I�|1���`�����6%%�v���٦%�d�2}d�1�(���X�c�$Ĭ�옐�1>ح31�c+��d0(��Q�a$Z�L.0�K=Cpb�Q�q�ߖlX��e�T�:s��4��&:1�r*F&�\\�[�/F+.S�vg��S�Ō�\'�s�}e�9a��H�n5Ѷ���n�+�d�#MFMB��#|�\rX��9F�֫\"�&�5jF�j5��+\\R�h�邵\"CX�c$������q�c�J�ƣ�u�65���Qb3�5b�̥oVYN��F�\r�\r7\"���7\",o���t��f�7I#+�-��F�1��08�Az@��1QLU[��������qHO���\\�FtF�t�^!��LnE�����9+��61�_f�z4\0�`���=Z��1]d�UA��M:5#Q~�R�y��F�e-c\\�Li������c�x�5Ŧ7�V�@\Z��V��b��7�ˉ�t1�7��,<ujE�53V��\0��Mȋڮ,�Dc���0e�qFZ����Z\Z�v�I\Z+�`��d�W9P�3;n�+�x�a]�\\_��@\\�0+�&���P�\\�J�u�\\\r}D�P���B�L��`(L^��@�>3�F����!Lb�X�avFz�Z�+)Lا�(�yF9wj5��k��J�q��3��q�K\n�8��1�\Z����cmlf��i�:�&�t>S&;�2͉��`���$�*�FY��1N�	0�Xݜb\n�ʋJdg�W:���1K�aq�(j0��G|��QU��P��c�&��c�P�Z���;lŌ&�)�@�lX��U�L6��;��XşC:�`ϔR5�t�,��S�s�S�1�*(��z�,s���k<Rc8d���5f��C��V�\0���c��V~5��	��l#3��3��9+>Ya��z�s��&8��˟J�9	���Zı�8�r�ύX�,t�b\\�a�������,���F�t���\\���X��4�CS�+�ˤ�:���B-)���\"��5�\\[\\����ըQ�&/V�\r�+,\Z�����v3Z���C�p���Z�5�\"�X!�(����j:�`�f��;����1�a�Ƣ�u�����En���\"���K ����pv�\"#&?�}��-W�ab��M`a�3!]b#$fF��V�Z�5H�^�?B����1�e�g+�m�Z ��Wd��#�n%t�c�Y\Z\Z�z��Ln!]$���vX�%j\ZnE��k�R��G��6�6�\n:�TW�1UdL+��P�7�Z�\\PE���5�h������cqse��b&+��(����cx��b/ԁK��J/����a�Q�\"�aV�N�(�����	����P\0�A�bS\n\n�D�1	�\nL��0�8�U����|s��R��X��a�2�+�`g��3�͈2��6)�1	��A�|jqi��*��6BTM���W���f1�e�EA0Ğ���э�@$Ǫ�ŉ[�ا/T���&��!���)0d�X�����c`��.#��OU�Fe�i���c=D��2qi`��L]{,f�LT��Q+�b�Ӓ+3�1b\"ٰ����Q�b���Pa\\���lJ���}@��%�9yx�Pc�P�X�L:l�bN�w#=3Ů2L{�$��E�_\r5bw\\sF1QSY���F!�1�c�Ս���I�a_��&&�ı���bv���1��G*V٬U�i,�c>_�=3��&%�bye%���8�K�K#��51���Ýa��9R�N\\�c��1:�c,�1��d��k��9�I��b��j�H��5#q5\'Ԯ�$����V�J��,�3\\U�[�j5o>/-D5�i��] �-.!-�g�\\���P�鎑C5���\n�l��K�5\rH���q�5#x�&3b�&&%{\n��,�Xg��6�@��!U�\Z��S�ֽ�d�+��#P�5�����د08��k�.~Y���ዂ�a^��-vEXjE�W\Z�0X�a*WH�r!#u��qR�U��DW�Z�^(ư�k�5s�MT��|9�1���1�#�Ԃ�����,5Z�nĮ���8��w�H��o�vo�LE��b����ztɌ`�+��l�L1U`�E�/1LU񋔥tےF�J�\nb�\rȴԋ���p�40M!pj!dX���\0�k�1�(p��E���)q\0�jr�778�F�\nّL\nܐ+�C��\n\\1klWg�q0�S<��E���&5�*��aQ�TdLa�D\\I�ט�V�yJ�YĬ��L@�Fl���B`R�R#���sNmC��	��\0)�S!��0*5�\n0g�d���&naOz0f|o(�b�9�0�j�νue�1��0��fl��%.0�`G-?�yF��\Z�ҪL��r�1�J\0��\0���O�s���0٩\Z��b��}�8�S�Y�Ĝ��$G��bc>Q��Ōt���f1Lg��q�\'��,&I�K��1��11�D�5!L�>��g�,e>�������f��g�Fw\\h����	c5��є(�J##��cms+�HK=E�g$�,gNx��N!��L�9��k\\a�NI�`ϓ5��8g蘋��D�\\�3\\ta�c$L>@��gF1jn�g�a�����-F�\\a8�N��۳8�Q�c��\"NS��:���1ƥ9��X��#�:Z��1�e��q��隕�0�ys��63	n/H��7�[�F�ӈ�p�\Z���S�Ǣ?�?]�Xj��e�,�+ugH5�-ؼ�#M�6�R�:bX/��5�+n��z2�Xk��Zz�D=����y� �L�\n�z��\Zc��n��8����+���,�F���)����[�T��:C���_l�$\Z��s�47�y4:�F���CUq�\n�[\\�8�!q[�������\0Q[����H�,��֊H��s�d��Z�#^=�t�E�W�-ȇҫQ��tƤ]��V�`���2�q܊�)ŵ`�g*,D�1cX+Mx�>�Y�qi��\"�ڴ��`�}�nL#L�`�c~1�Vk���\"��)�kd��o\nb�H3��,��+N��L�L�XF\rG6�jF�E�<�\n�0F��c,ٵq�.̆��V8v������5���T�-z9Z��ư�T`9\'c�Y��B������>�0NB���(&�5f�\'��`N(;�QP�S�D��ܣ`�	y�\r\0�R��bX�S8� _�9�mH��3�\"X����	0Ń5RF,�08��I��!�Ͷ�LVg_c��q,�\"��͌�{�8��D���^Y�bV�{��XFV�PIK#+Y��:��*��U��%���\0U�\nAV��ǔ,b9�V5�L)1�D�s,`aC��R��F��1�J�@$��w1,a����՚����>WMB����	�,)1���u��r�*��9�w��F�\Z��8f�P8� �O+�\'�X�3�,��郜���7개ћ!1	��\'<VZ�0�&0f��#�Q���Y��T��7Fzg���)�Rr����)ß3�F(�.}~�btb�a��s���q��������Y�da������-Eۧ1c�tu�5[��ט��x�R+�3��::x�Ռ�X�u�gอD:H�ݼk��A\Z�W�6��\\�\nK�L�d�媴j�i�����Ri�����D�ֹtt���p:x�<ֵ]=��0�F5���V�L�S�^S�$t�R��u��1�q�`�-����Z��)�܈��:x��Lر�LB�� ��	��F�5�������ݛ��!�h퉀`��pj��cg#x��:DV	Y��j�4D���hR��O�c��� ����Oш���HQ�_��n0k\Z�{�:DT|3���n2�	�iqx���Y��^b�����g8��E��Qb3LjE�\Z��p)qX���<bR�o�b@�X����#J�K��,�Zʹo����U��L��I���\rb\n-\"�V��\Zװ.� ��W��q��/`D��\'�����V�\"тQ�`�Y�3[�QY����b�`q���㍵)X����^�ث^�W���Q����lN���dH�`�ƾ�X�`�X��xQ�H�IBcє�.0h|\\�V<���F�5�e�fbs����>Y�8��¡Ls\'��+�c8�����3�&9�qfa��*{��5��1MG9�e[����ck�X\"%1T���(�/��\\��k\ZL��\n�����4g�@��c\\��N�тw����q���b�Ja���a0H�U]�1��%1�����r���	����Q�Q�Į%��T���(�I���Ω���yfԍH�9�\'IZI�&W��+&,���b���,���(ũ\Z���u���#3�I>�ؒ\'�`����c��V%G�#��Ϭ�?,0�bŬn�Q�s�+՜H��͋�3�r���#p�\'����Ӗ��i���jƣ]�#\\�O���#��Fz�c�H�7Y\Z��ZV�$f�\Z��Z�5��Q��·�i�U���!\Z�Db�-tcň�ɸ�}��N����h�bǤ�t�j�&0��)��Di�j5�R����a�BŎ�)J�֨�,��-�x�[�����㦌X��_P�����⁍֞���p+���H��eѥ=�\0��$mq�\\^q�Lu���V\Z�Q���-h�Q��b��:�#��EF�>)��lZ�0����R�W�,/��5\n��%S�qE��.5��ׄ�+}���.$�R7�k��X��5z\r:TDVl%V�0�E��1y��5��.&��aR��\\ѣ�l���\nU�jS\\�S#�q�S��C�!�}P�0^�`q q\0qb�t�XV�ؔ������@�LKpFp�*!0J�\rL1zу3Ĳ9�Fm�0�4ߛ8�����5�ň��a����j5�RÈ�)IBi���	J�)�#6ϔj�c�MT#,�p��C�r,푞����9�wj7#)Fg�3`b��}��\'�#0��p�yF9t��EI����HDC4C�X͎S3}��N[\"�4b39�f�S&$�X��͌W<�~\Zo`1�ɒ1Q�i�T�Qe11>�����1f=��y�R��&@FyT�g�%\"�>~���9�ZT⒳H�d�I�c�@a�+>P/.S�X�3��)ъ���3bP�lS�İ��W��9�Xu�ɚ�$�T���N�bo��b�N[%K�G.�b�q�ɞ�G)Ҵs�IQ,t��ɚ̟\\e��F+>�1Y��\Z&1\Z�1�[���Ɲ\"6�v�4���r�.�-H;�w����kc5�#��g�*��gY��^Z����Ϊ.\\�Y�6��P��1�ٰ�qwIj\"\'8KF��$kv���.�3�rߏ�d^�6�1�l20�1q�ɩ\ZS1V��y�t��}����@�^`�m�,&7\"2��Q�CV#�1a��$UټHD.*�%#\\�LE1b1�̌���&����\0	0X��_M��1��8�$Lu���cqqLiqYc����~8:v\\`�y��czK\Z���1V�k昱hō���CV����2q&,j�9��`�v�H0u���v���\\��>��5�\Z���m>���XEt�٥j�l�#_m�Q�,X���F��C�-Z`���\0��]�\0��a-�A @&�`�-l`��R*�	���LqkD\\0����끁���=��\Z|�P��s�%ħnɈ.d�3���F,?��E�q��L\r���\n���=��\\��8����ۚ`����1�ckn�&�͊ϔa�$�r��5�\\D�ذ+;��\n��ɢX�%^����T�pF,D�@��`�͉YLf��F����%���3S�pIf��YĬ���(�Ō$�Y��3R���cq*O�q���cQ�s\'	1+2�2��V`g��3Ӕ�3}	=���fs�1���c�qI���������9ѹ���Qb3�NX�%E�)�l��c�,���<B�3LൟɈP&��V4�2I��yVZ�5˜�E��J�)��.?鈘�b�<JH�H���Z �͋�,��,�s\rB��FY�d��،��h���-$s�}��X�^L��:l�a�2�Q��k��3՜Z�.X�f1��1�]\Z����5c{v�7W���,v񊅍c�fcS��E�]4ʡdj-s�%�Wi���Z�5��\Z��G5�ho�*�qj53��ߏ�63Z1�\"�fV��V��Elч�b�������\'M��ޑɬo�\\��\\X��a�:���D�W�b5M@ǲ�Qq��ƈ�^R���X:ǫ$RF�.��R�,G&q�b�Ɨň��*W_I5���!6\rs���j���VD��ۑ�c\\�cXRȋͬU�+Q��+�ĭ�\'3��ԭE�y�#K����qF+Q���t��k�fq\0X����ҝ;,G%��|s��Kj�L ���5CqW�\r���fQ�\"��lQk�k����R��{��F��R4w0Z��\n�\Z���*WH�H�cҚư�]�L\n0*z�܂��CR/��=@�\0���(��p���L\0��\0�\r�\rp1q&	�*}U��İ),c�`H{v�`�ؖ9�FV$��Xk!L�����L�͌d1�t�*U�9N��f���T+���A1�m�*q\n�S�*{��燗\'NFW}��g\0�&1ٛ�]ѐ�&&z�����8�����a*�i�*\'�\\c�1er�\Z�:bc5\'R��*N]I�*ß�e�1�Y��\Zfc%N�v,e7`+X1�$�X���1�$\".*NLՌ�0�*�`�u�!\\��������ĲbX�Eb�z��15zAj���p±����!]Ьjؚ͌�����,����r�F�4�.����IՉ�tV\n�T�f,1&0�\"��>mcU�S��3i#=Fjh����	1�L�����N����\\����c���T��:e���y��,ZĹ��f=y3#<��u�GH���1�H��sk�\\�dv��g�N��3~;.&7\rH�}�F��Yň�e��[�>��\"��*��LL)�T\\E>j:��\0Y�,\\3D�o��1��X�-v^Tk\n�h\"�7˯�K\"U����!�.+}���KA�ف�d���]�*f�E^K�CQ\Z�7 ��Hc^1ѫ���r�Y\Z���#Q�c|�ڎUk6�X�}Rı�2�-q�,�q00Xɹ\Z�%kQS��c�+T���%o��Z�v��`V��є#4��F�� j#��r��r)\\�£L����b**�+��؃PF�k�5\"�c�.������S��ud@Qk�I�����C�h+3_��t�]Y���\0U\n�o�Z���#U�4�4k�Y��\Z���Yb�GA��\0��_ja[*��`5��\\\n�\0L#T�HV|�h����YTצ�,x�!5���F� H��\r_�ahjTT�jF\"�~q��bP��@a�$�͉Z+!����6lTg�AN�Bu����+tc�6��+�I�\"��8#6%FNi�&s>�C�g�8��S��kB��\\��>�Ċ�\n�Aa�����r�\"NIV	���`��+4�^��;X�9La�ҫ5��|a䰱��lab.9��`S*�1����c�1��Q5`I�J�c8ǔ&�,fcX���,f��L)���t���B3cQ�%���R%3�qfD����D�3D���\\��V�NY�����Xf�V\n���\"�V��N��\'\\[�inxR�	�R19�Vq���	�|���a�\0���\00�\0���ϭ�bB�����b��HG.-�m�N��Y����,g�pV|��K�Q\\�α>��ӗ�Lw�G/,�^��m�&4s�8yf�Ĺ��b�3�q��\Z��?WI�9;�j#7I�o�O��x�ş�фlb5�5\"����U��H�V���8̑�E�լXw�C�t��b\r���3V�����0X��c|��R.�5�v��\0���93��X�>�bU�S�0��H�ͬ%p�ڐX��Gx�[��.u1S���0jj@�Xٹ�l����3W������pjƢ�R)͡����He�2Y������,X�|�5��3[�܌Ռ���*��I���5��u��a}������̍�Ӧ	FF\rFh�:�0Pb`�^�f7?�X��!���Z�u��>��k�1�+�\Ző�Ll�ֱ;:`��0u�Yg���qa�5�V�>�,kA��)�x��.5��J�N��R,\r�omHΫ�w���>�*�Xg��\r`.���60>�U���Dj#<.�Z�JP�=�ȫ�!�A0+d�)&&Ueb��U��\00��_cD��5K�Xr,�S�10�����Vf=�3�c˗v�#�X����b��x\"V(d�A�N����_�ϲȮ-�U�Lf�Vq���V}���Փ���H8��o�#_�	��,�3�-Ls�&	F^Q�[��caWM�1;�Ń��\Zu0Ov0s�����+�	�(c��/�wݬsO(ϳ��q+���VG4�Y�b���x��M�+��#1���\Zg�#8Xθ�0i�ܰG0�1\\+��a��H�c�\\m�s�&��Ĭ�0�S!�T�g	���c4�c�H��(�tf�&\"�1	Ù���4���33,x�1,g��lrI9��H�3���6f?đ:f��8X��X�fc�g�~L��:��=B9Ln�a�2ň���sa��9ܲ�����z��Fyn��q�N���wx�q\rƹw�\Z��Wo\r�\nk�\Z�j~,]�#X�iN�#�r����4/��b܉%Qu˪,j���%�kY,��SA*5tf�!^���]0�d�5_�m�4�V*�H�5�k�Sxa�?��ު\n\r8�V9�\"V���/�U��[�~:AcGHe�b+X�܈��GH5 �\r��Y�������\\�Xb��&7?]\"2e��8sk��AW�� X�BV�0g]�00��� ��:!Ģ�����\r��.9���6�ں{�na�V;7?�91V�\nR\rG%�E�b�,��A�����b�\0�R!���֙���ԉ�8�H:F3�V�!�u1V�6�(V?,F\r�*���jF���\0�Z��R0�Wȸ�X,���\0�Xk�eI�t1\nO$)1Y�QY��i��)�Qc	\"X�Lb3b��|l@�%s�ŊL{�c�a�a���X#8�?�1bd\"L8�N(�r��mĩJ�?�:�tA&��X�qL��� 8�c5���1�0Z�a�1Zt��(���.s�%I��l`W���1X�X���V<�j5�=�X��)Q*�9�(�\\�ت�ɦ���[+	���r(iNcQ����z�cXJX���Es]�8�1Ss\nǖK��}5cHŊ��37��ň�w1p(�9��lX¬戒�,��3��1�c�1���Y�	�bу3�1�}�职�=A%���:�Ns�c,�{$c��#eƵ�+�J��l�\0\\럖I�G-��^�u�\'V1���͌[���b��>)\"F��\Z���7I\Zt�v��\Z�tƣ��`��og~B��_��*�dԟ	>�cx�Ӽ��/1�$v^�`}.�r!\\�0(V��6�d�1W�d�Cc��,n+R(��{��\Z���\0�Ѧ��b��Y���\Z宍s\Z)�t�%c�F�b�c�c�s��t���$J\\V���k5ќh!�\0��#\\SR �7\Zrf�]Ɩ�o�p(�荦:E��`��0��\Zg���!U���	cv7Wə����LY>��Fφ��*���	\"��7�S\"l\\j�đ���xa��0j\"�1o���1��*�|�j21��Z���J.׌c�4��1���7\"���&Lm}��Ů��+�C63\Z�1���\n5�T�T�PH�:b-Gh�Y\Zâcr&�a�DZX����3U���+�`�/���¶��|�mf\'�������	���L�\'�8����U��k\Z�I��X.\"|.3a��Jf�9���E�������gb���i���k�X�Y�YhH�$���s�رJL��o�c��uN��g�\0Y�Ӟ��fX�bؘ�b�yEO�s�11�8R`r��g���c4�����0�U��`�I_�0��&�*LcI��\\L8�:�1�a�#\\��b�J�!��38O�X�JŊc��h��.λ.9�1b����%{��1���\\�hKF0f�\\b��Nx�Ȏs\rFXז�b�g�v,S4���m��1`���`���ݹ>&9�b���P�ӡ�fD�%{+!��a�3�c�bW�_�����N��f��~�	�3�V쫓m�)�b�Y$�t�؉/=��Ne����r�S>���唱�e�>�bc6+5�����Ç�3���͌��3帇F�n�}i�!�5?\Ztj;��VݼcEϣ��Qɹ�s����w�:/.��s��\rL�!�\0�Ɲ�m�����U�\Z�3��#H�ʷ . *�Q��6��X�\0�F}3K���y�\r� ׎m�;9�}\n��G]}�1���X��te�LJ:2`���ȋ^��e����I�x��讃}���:$�-6F�ݖ����Qyt�f�n��$d��?��\Z�y��U��>���0�B3�+R}i�cUc�A\\�rA����:��\0�ɹ\ZGLU\njD��]򌻥WM�`�ѼE0�|��E=�0^F\rx�Vkp�9k�\Z+�p>�p\Z��ZR�i�\Z�v\Z=�3J7��� Ԃ��X�jB�S8�0+�@��򕒳bn\"�	^�ة^�F&*�iN$b�Č����P�f�!��b�3�3�d�#�5��1�\Z�D����X��0m�9�����X� )�9��mr�i`q)�H3`���f�LehV|�&%8�,:������Y�g���+$�̓>P���-ȝ@D�j�Ls�c��힢9O���9��놭9�wb�@sV|�c�v�NK�9�J�J��1C�g%�\\���4�PL��V*1`��~yǳ|��5Q1UQ4ś�fD��J�\\�4���f�ަ `|O���bب��8�h�m�N�Ή#=&�2�Å�VgY/�7���g��Ӕ��q�ܬZ����:�s���ك������F9n���v�:C�}j,Sx����\n۷�خ���r|X�,�4��̭��	�u^�`.\"���\Z����F1���J|��J6�:B��� �b���4�) ��%�s\Z^cE�\0Y\"c��\\�GVqC\0�a��6bH+C���Xm1��[AqcTˢ�\nQ�!�̍��e:bP�T6���cdfXWFc�Do]�m\"V���1du�ٚ��25�Pb���\n�3�_Z�ʘb�Ԋ��\\�����N-�\0�\ZY\Z\\l0��U��_��Z�1�F�k���n5\"��ԈQ��Bc5�q�Q�5\\�R@��`4��.��ߌj�J���`,�Q�a��)F����\n303�p+՛��!��6\"�\nň\"S4T�1S�*�J����%da�b��X�Fh���c+�bQ�8�pO,�`�M��S b�?\ZTgL00c�0����Ò`�QA��,�5����\'�U������%���ȉD��$N��ϖTH��r�jB�,A�\"b��T�J�s�#Q���X��0Lc��H�s�żX���#�9��E�ė;�`̬�W)i�g0f`b�_�0�9y��(�6*l�\0%�I�fq,g��`�`.+��l�r1<�Fj.2%��	�8c&1a^��O񞢧�y]�R��s��k2�}D\\e�\n�3)g�/�,a�yV��NS���s݋\n���rJ�62���bC����b��>9�����7v��H��O�E�1c��WGo�:,F�2nO�\Z����-;ȍx�X�� �:\r`,��`\"�\Z��͚�t�Y�k��\ra�I���A����1�*���SX1�ZjE\Z�\nj\r�F2�Aьp	�Ż7��%\n:��m�:��ba�\ZF�a�Y5�:C5�������`��,g6��F=\n��XXX����jDX[\Z���&,+B܉�A�sipj���˧�LҴ�E\\E���b���r����`Q�(�y,X��A��\rHc��3E�VDm1��\n:C,V�o\0U���\0`�,\"���X�X6�0���Dkk\Z�0C���0�\\)PE�q\0�f�lA0@��1��j\"��Vg��\"� 	,�Vw\\s�)�ډ)b�3*�Jf�a�9L,1��1\0I�+=2�aZ3�%��dC��(�!5X��r��[\\b�P�ʤ�3Yб��ĘG)o\n����A&��eg�5�k�ұaH���`3�Ve#5�c�ň�Q0�&1\\b�&$�b��3+�W)�j%%P��\\c�b��?8ɮLsK��0J����b�. b���7#���J�\"QQ��U����.11��X��\0�X��1�N�2˅�������f9��0f$���S�c2�gԿ�1X�/6(f�Q��$f~�\r��n�5c�C�5#Q�6����9�t��ƺ�tY��Cs�cK\Zi�DX\Z�:Br�5��&+x�p��S8µ�5�\r�70V��V�#~)��U���r�#P�+��\0�ϣ~��:���,7�\ZF�\Z{:�Uri����U������\"+i]a�EHҺ`�\"�ȱ��kiR��a��dj4�\n\rH5\n�:���*��Q\Z���U1�Xo�\\\Z�ƹu�q�S\\�Tj�C\ZV��5���4���ȱ���PE��v���1A�V�i�t�c?�+�8�I��Ԉ�`\0`,#r5\rsi\Z�D��\"�Q\rcR*�@�� �`\0(\"L`2�1DgUX�M`�QYќJ������ʳc��m�D,i�fV1b3b	�8�s��c,b�(b3)bt����`�Y�!��u�T�+-cX#9KQ�ʹ��X�)+��`c$Y���\n�#��ϓ4��Y�j,���,Ա�eE�b�I��sj,e*���j�Qdf�fc��q��������s�@��<5k�9JX� `%�̳��*`ǔ%�G9$N�S�T�V,�͊�KQ�ĕ,btF:Ee�\n��Y�Ys�Ĥs���)b$�p��\n���R��Yr�Ն\\|��ͅ��i#�t��Hu�4飼���xG��$���Ǧ-u:,���	>��6��#Q�X�1�YW�X\n��U���Q��tgV�ApV��A�#~9�5Ӣ�\rBcqa�>*� b��3�^�c�8`,7�\ZLh1V3\\GX�lf~��6,����,k�cb�5�Չ]#՛��6sl@�c5�����ME�c5�gk�e��Zk\ZAv�)k\\�hɋ\n�!M�j�F(܂�\"�Icr:�L���RMb,{3�ȼA�+Q��r��\Z0\n0X�dY\Z\\ih�)pj3�\Z,v�%�0Cd\Z���Rca`7�J��I\Z�ƅ�X`ъ`i1���P\Z#p͌V�\\E�#R6�!���`	��\018Zc6 �$��歟%��q���(b�%0c0IY��ɨrʨ�*&	+�f�Q0(Ÿ�����̥J�c!�`�U(8qK�`%�R`Ĭ��bQ)��S��#L�0G<T�Ĭ�#��R�-de�Y���c,�,�r��L�X�D�C�$���9�\"�X�D���X�\"3�Q�����c\Z���$�3�4͌��`ǞK �t	�*�`���1h��$ƣaY\\dN�1��`̬�Qq\ng��ʱ�5���I�e��fsK>3Ys��}��RČ�	�X�Y���ϩs�1��,H�9�a�H�NY��M�\Z�����H��5\Z��1c��V���%��\'�!���j7�S�g�,o�J9��M���\rH,��k�g�#P��w��Jd�Ac~9�Z���*�`.,&5\Zn��:xj���*�H5\r�F��#3\n��F��h�F�6�b�6���I]b%�H��/�p�P#0嵍��kbX�L���cT�B�cP�j:�Q͚�)���,j)����1F��h�b�L6o�Ƣ�)\n��E_�dk��\\\nX�k���f��1b1�hv�1qi0�ò�5\rE�W1UQ��*WHH��\ZPS�Z\n�F��U�6�2�ehJw0=��+J��`�\Z$(00����2(b(���VpA&�r�H\"�&�1C\0Fj����0I��0�C �3)R��2�b☈`���Jb 3D�D���A�Qp��\0;1LDD����Q��n�r4ʲ��\r-�ĕf�L�&����Zj��)\0rf�kȘ̬�Z�3�,�1��q�22Fk��r�^YⓥFD�b�4�(��3#5��1�ň.\n$�3c,�>�)�c���\0���T�d�Df�Ǒ\Z�r�\'@�IV`2�����,1��(�\Z��\\�2�X����q�p��lVl���fω���}��I��s�>�̹ԬOG+�/,�f�#��W��\'1����i�^��;H����\Z�G�`�7��?ƬGE����F��R6��#+�2ƹt���5�����X�ō��5[��c+M����L+���A�f+~9�6+�vq�\0�`�+R4������t1p�遁���5Ęن�cZ��=LaLV�\Z6o���>����ͫ����,h��o\n��������V�lm�ec5�\\�����0+5:5\"�FP͈�����5�U��l���LE1����|�������U�1b�Ԋa�\0��(f�j5Y/���`�,X\"�M�A�ˌ�b�1p���8��Zk0ZF��ꕚ�#T���cP$�x��CKŦ4�^�+�e�uL@� �)���ni��k\0���\n�����,�c	���1��KJ�\\E��y�7s\\J�1J�F)F\"S)�&��F�D�yBH���\"�!�K6\"&��#��b,f�s�Y���3R��\"�	1�XVf�fDro0����\"`����)�0r����c$۞)�������Q�b��V�P0����ucg�dk�N�LO�\'P큌�	)a�,�T��~Y�ԍH�uLJ�c4�,����e�s�;\rD옡����c�Y�����b8���^� ��fq�q& \"S\nǗ�dW=Z�J��qKc\0���:�Y�	g�%�V\'5���%�X��Ϥ��U�͋���Dr�fdr�9K��p���Pfj�V:��˔�c1�X�F�$b::��7�:X�e��X�F0�Q���v��Z��,�c5�y�i��n�\"��ԭ�:z��͇#O����������d��#�f���j���T�֌��\r`�`׎ib�l�\r:H��蘭7\Z���{(:xk�&\r�-m�b#_n�\Z���X\\J��c�׿$��3W@̱cG3�K�݉]3c]E�/1��X}AcE�f�i���+H��\\�iZ�b��jA�2�hс�#���Һ\"�ԂƋ`�C�$]��S\0�XF��Ha�<j����d�1b���|�Fd��k���X�v\\aS\Z�cPLB\Z�M.�\r&6׎ic5�\"-4A�Q	Z�Ȫ� �b�G�6w0u�FބZ1���R5�\0�׸ب��	+�������+�39����J�\0�>���d�z�TH�2��+�P�%*\'�VpPN(�b�yfcQ(�@Iы����\0I�,J��b9ξ��H`����2�\"1�_�g9�7t�O��s�AK��\'t�T�	n����`���̥���1䱨�X�2̌�����%���q*.#Y�#Q�����I��S�LT��**9Nr�7qp��Vze��H�1�\0�\0�\n&#����E0��b����1>�!��ic1�m�f���)Dc�Ѩ�cȩ���Ye1�Vg6,g�vfψ��$r��rfFc��.vO7,+4��.^^���p�f*Vc�3I�Jt�H������wl^[��%�\Z�Dex��ڱ��n��V1��dm�����8׊X�-��#��-`I��b�q�ō�icUҙg�S�Li1�\n@���E�J`��x�̈́ubEX�$(a�ƻT�H���@<3�1� +�a�\Z��F���{a􅎱u�k�.,��cja�M�\nQ�����p����.�$j��SI���ck�x׍-f���2d��CQ�V�R�\\ZX���b�\n`{�-rk�cU��s��[L#�5�sS%�B��,\n�0j=\"��,QLt��d����Ʃ��\"a�`�fE�qK��L\\uG6�ԭH�P�!�ъ�\rwe�\Z��)[ӒF��b,lV��4�@Q(�Q��*���ߏ�fƈ��H\0b��ELR�\ZB��T\0@Eâa�9�3Y�wQ}�=ʸ���9�c?q$�Y���J�A�*I\"Vx���*�\\Gbb���YV*2a�*���q>vd���9�|�nD�\nJ�̲��\'�LIe,f��F\\ڱ�f�,�)q���0�T��\'�AO�qNf#5�F�\'.��8��A	��\'�+�F|�Y\Z僨�3��f�VQ)���s��4����V���Ufx��\"nŀ�fsjF*qIQ��?���Oe\\>��g���e50c�$��)L9%�X��p���	�%va\\����Fk�U0JD`���V(��>��X`�ǔ\Z���9�%f`�:g�aX��&1��f���jd���)sH�1����˗�:a���\\��Պ�p�X�gmR2�:F�#(vᦣ\'lk��8o>5��Q�_�#�ȫ�,#\\SQ����_u�y�t�Y�1�y5�]��GI�7|���/Β�0ZѬC_�j2��C�+\\��^9�%��م\\ې���F��-rX��Q�~�.��Y��g�Qc~ˍ�f`m�:���$a���\Z��tE��7�Q�^Ɏ����W_����D�𥂷�DfU壘�q������\rx�Q�V�ZqB���9G-S��-E��j2��n@�=��]�,�f�5^�\0n\"�E�b5J�Q��r��E�t�F<�yk��ҵ�P.�\r{��ol���rF+Q�V�ib��@F�.\"�-�j2Lj5	a�{�&2d\"��W\Z�q��f�A9(����X�Z�C\Zk�9�f�o�Z�g��1W�0��oMU1h=�\n��Ϋ�T���LL���z$��F���0$Jʲ9��`.\'L�%cم|��Y\Z���E,g�[N!�S�0(�\rҘ��و�%X�9����$@qL��cT�:�2�p_x0��23�3�\"9tj�0$��\\JɌ	`0�F!��q�nwլH�YR�J~tZ��)7Sީ���%A�b��������C<������X�2�3�u��Ib�L�3X�\\b�#�7#5b���%1a��&*Nr�9��4���2F�N-p6�L�y�J��e�s<�k��0Z�h�+=W>�0�s��?;�2k�0����P���3��BR��+MH�s�ĩY��F:c�$��٬�ԯ���c��ǯ�g\':Oמs�,1�sf�={�ؕ��{��g�	Ջ��r����Hv�4�;c\\�æ|X���:WO��n�����!g�ƾ[ƛ盺V�t�i#��Ѵ2������U���`j�\n`�8���!�H|�/�xc\Z�+�˘��T0�\"������m����1������S3X�7Ĵ�a�`��cM�\\��1�o/�6�R�Ӛ�\Z�iHظ.�\r�Ja\Z�W�J׎Ռ��8^:챨�cG^�b\0��mf�L�(����&*�����(f��!_��Ub,5\Z��/��V�*��,Z��A�j�/�`�o͊ōDyRF��=�²�Cv�\Z�y浾Z��\n�ݜd��U�X�}��\ZLl��0M�:���U�\"�Fڍı�a_��AE\n�.�,�R��h��#@+�PS�u�k4c&�S6)�L,t���	?�f�Vp�aE�f�FlD�M�0L\\cʯf�j39ela�04g�c3ӳ)�-c{���&L_љ�h1���\'arK\'mى�3�đ���pĜ#���~u\\d����,⬠���V	ݑuLT�q+;�Q�ˣ\0�y��U�@4rK\n�.gb��5#Q�%:�3)�0O�:��`��+�us��o�Ƣ��,b�@)�D��;�1S�9�}VF��q)��T���C��c�r��3Л�\n¹�����{��(��t0+�=*|�A�;�m9�+/fi�+�s8�,�s���V\'�m�Q7cf�ՙϫ63S��>���\\�0s�p��b�2�R�\'\':�r�V/�H�:�Ԭ�z�tt�4�d��jF�3w�r�h�\Zǧ�0�F�|1�\0��ˬd�*�b�5i����&,G>�X�\r���ݬ\r�0$�\"+q�V�ьak٩k\Zg�&�aM��^8M�)`��`�0���V���cXi�\r�)�^8Ja�ԡF	�A��,o�V4rϊ0�+�˃�a,c�x��C�b��R!K�5Yk�cqk�u��\\b�����@��!�����GF�1�jĭ�,�ha�Db�,V���|2��t��%�����j-aQ�cP�0ZѮb:���\\��°�`5�E��XLj-]{#K\rA�kc65%�\Z��ckռ\n1\n1Z��� W%���&lfƣ4��A\Z�7��&���7�1c�l^Z�S\Zt�cvkk�0)a�\r��a��ܚQ�W��-&�k\Z��Ljb�D��ص]� �\"ы�b`)�����cR�I��F&��q�1\n����@��݊$홋#ԍc<Y�O^��O�i�,�W��a�F�+�3���ӦF�<���I\\g�g6k8S8�����0�F3)#=38FK\"H�X�%��X3K�R��bb�3В��c������\0�q9��$��1:��u����qH��&0��\"8�a�͌P�\'�+;s:�b1�%.����r�a��F*ytK����у��y�#Q�fƤfI�Cv*�|&#?K�X9M\\���J�\0Efc���@��aO�F}�(k�s��9�Z�ӊ0�/�fc�lf�_t�\n\\����s�)0+k�b͆\'��!l`0Ť�4�.9yg�܉bV�bR�́_�8%T��:�Rt��`��1��5�6ȱ+3���2��%1���63Jݛ�c4q����\\�H�:�b�Nv%�N[l�X�^\\C6�}����3�.�:��~9C�3�R7��\Z��3�t�����\0F�<4�V�����X��Ƴi��yF���-���zCB�W<�[��cq�#�Zц�k���Q��Uk�x��ۘ,]�z��7?q�p>�Q�Z#G6��x�M죷>!Qq�1\r1�H����L=�t���,���uoj6�GHPb�p^)F��1�\n���tצ`�q�S�����F�?����e��0X��4�&\\�LV�3�qL\\;�Ij-�\Z�~�\Z8�\Z��_n6����weB��Cݴ5�cL�k\n5�ķS��VX�A�\r\Z�\Z�tj.\"�ߍUk�X�m1\Z��������aV#�l������c5��Y(A��,k�1�@$��*�����N��bX��\'�R��-�1�oC\04��W0Y0�gl��nD��I#6�XF��\n��\0���v`@<���y��J�:fY��3(s�Lت��!�ǗF�#*�	���4���T�R�#��b�~� ���H��M��g��L�{>UY��G�(�uQ\'+2�L�qh1��bc��	���3%g�e��G?,�j5�g힚fw#=�%�U�����tt�:	YZ���\'�.V}�Ov,�էD�!��٬�D1�Q��;�Pc����Ɋ�ϢFjh2q*��	_�͹T������c��)�ڥc�q�CO�z\\L���զ���K��G�1�3�H���r�f�͈�<K5������������=399�k��׃��6+5�ȑ�M9m��>�yj~:Df��R6�\'����\0�1�:x��ԟvѩ\n�f�}^Z��Xt�%j#F�yt�GY\n����C{1F�����i,mӉg���.}\ZC�0j#���ъ��Xa�M�y�;�r*�-skx����W^������a�H;�`({�H��M�`�&\r��63cM��kQ����6���]��ݤ����H�nb��1��W��Q�X�Z1���p�G���c�2��1yX�ZV�������׈��ņז�1��S�b�xk�j:&4��UV��Uő�Ɖ�*������1���1���}�%�r�a�cK����ؕ�ݜe�dl�lU��4�����3_𥎜Jcަ)ŬE�kEj5Q��`.e	��^!�X�����j%,K����pPh^�Ć�P\0���\0_a�2�E\'�	�3��H�5�3�>�	�x�L:�޺f�N��3Y�+&	��A�ϖ5�o�ª+	ɛ\0����fu�1α�R5#=Fj�)��W\0�hb1b��q�ǖJ����	�N{.1PD͊��y,��TNɊ�\'L�5L�#��Ys�W��>�A&��5:O�6�SW�[�ݚ0����qnx��4��匘�I ̵��ߛ�eq�g)��<$s���:!&Nr�0&�b㗜bA�����)���*-d0>a,�c)͹�{������a���\0�S�g9�*nF��1c3�e���ʲ����,��M7fψ�8�c��g�&,���y[���Z�c7��ψ`��-X��cLFq�#-�#m�N�ϭGH��ۖ�t��W�a\Z���>p��[�L�Y���\"��4�ӧ)�Cu�]##��\"�aĆ�-��S>��cq�\"i��Z�\0��0k\Z���������`wt�@�v���b;/\"�F\nb�U�F���e��c8İv`Z��/��cp܍�D�WHɚōF�FZ��\0���(��t�Ɩ��Z�\Zo�+5MDkA���F�����S�E�X��c �ko�m�m���x�\0��,Y�(!a\Zk\Z*EZ�k�<T�_��4�1W��0XaM�5B7�F.,i�cq�b�ō�5S�b�G�ō#K�(��x�7�c8�b��u�\Z!�x���\n�`��V��b�ƚ�.�`q`)�U��e���}�`�*�_JУQ4�%�D�L��(\0��\"�t\0E\n���P�fywYF\ZƏ���S�(�aŘa�f\"`�e�Wt�H9N:\rD�B���H�ql�>�Rr�D����18�mH܌�U\0�FjW�YD������%M�q��#��6:H|`�Nu����`��B��a�^�s11\'M�f���f�~{,1��P�3D�f�f!>����LFZ`���&.xb.��NL5#�+x�Ĭ��ik\'V7A$Ĭ�0ϖ�\Z���kц�\0Mw`r���A�P�	�X�N1�1��4�Z� UĮL`�1s8Sp�_�)�\0�PIL	�1+4��=��g�9b�l�X����D�z��t�$��ǫ����1�s�l��X��g�X����b����c5�Ɏ�5��V	gb�Y��X�!Ѹ׏��1�����Q�n+��\rr��3��4�����E��jF�^��ƚ�N\"U��yt�Gh��Q���,Gv�5��|��c+f����\Zà��X�Ƣ�(�hrTw���F�����8�f)/?�2ںD��v��l���X�5zc��u�Q���.=�j�^9��X��>זZ���Q�pV�icI�7�Y3bV����8�ōsF��5�/6��z�,Q�c�\0$�X�.!��1��F�B�.S��K�pچ)Ĭ\Z��khE\\#	ڵ0�~���8�\Zp\\�7z�51�|\n����c5$j����C�cbS\ZTƗ6�:x���c5x�R/3\Z��ŋ���*���:xq\"V�`\"��P,,�U�LS�)��Ģ\n��V�����Z�Em�bb�����.�P���8�\r9�i�&�#35�dYfmqdg�Z\'.�@$�f�f���`c�{1q$�8�e%�&,�\'���h�SP�,r�>��c\0�,b#��?��rϟ6�ft��%d�M�\\X�)�I�X��:s)� b!�ԥe>��֢\'��^X�}�3B���Y�f��EDs����r,M\0ϩb��2Ɍ�ԉ8D�{������O3��+&�3D�U���g��$X���6��q��eDsqRr�FzI��k,NWH�0�6hb&ˌ�Y9�Jbi���9yc;�\"�	\\h�Ź�\'3��+�l#,����f�ԐF(�T���L�:\'�X�rA�&����:a�,�>3Xr�\rY���K�7L�k���_�7��,���\Z��bX��%��k��zj��r�����C1�M�=�dm����E��ww�5\Z�v��W���\0\\j~7�ԍJ�XB��ͨF��kj=�ӈ���v5ˤe��:F���4�`{\rs_}��j���H���,V�˩�8�Ai�-bb�%�r�S�l^ �8�oc&l\Z��x\n����1��r\n����2�62�Bȱ��+=��,t\\j.�+^>��%���\',,f�5�\\ZcEj��0!pX���o�]y3bV�2���\rF��ŏU�ъa#���O�$N�[��2Q�b��Qb�Z���1c-��\"�温F\r7r��#\Z�`qF��c�ЩZLX�`k�b�DX�5	��q[��3�f2�cQq1�n \nb�p���V�y-���3��&*��`���Qb��\nc{*`��+�T��� �b/Ɋ���`��ƁV��s �5h>V0�!1��c_�ݟ)�q�bb�B%�ъ�I�L�b�#��\0WD츩�`q(\"R���u�#�mN�!�ɂi��8�^Ss�&�T�0:�`��*T���C��k0���g�[ASy1�I�Qq�|���se�x����j_�)�L\ň�Ns�jc(�C��N���&1��񣱂qI`ϳ8�w`�Y�1�1�\\a>�\\A�%�`̵�\'�X��!��h�+<B�Ş���$��3�Xc�OvdjFk����r�Yg�0I����#����A�|��Ń2c5)q1:���2̋�9˦2qf)���6*N_	\"Vt1�q�.�L)����3�0ıc63=�� ����͌�e,e�Y����<����9tc�c����Ջ�P�S\Z9�:�HIGH�-�F��Q���k�Hw�q�o�����\0�.,t��>\Z���x�!d�V�1h�W��x�\r��1cp��+x�W0Z@���D7��}7Ln7�6\'Q��DtL]�\\XL^WM�tk��F�S<\"�펗��\Z:&*��GEn\",ރ<rǻ63Z���\\j��`�ŅY\Z\\k\Z��4�%��g3R5_�`�%�_�H��Lo�׎�,[NXƣRƹ��L\\8�༴X\Z�t,l��JZ�Di�Qi��B�q�5�#oe��eT���A�V���b�c�$b��5J�S��Dïv��q\n�TƱ��NBX�`���:+P>�.,./-#X���X�}�1Q\0Vղwj��-��:eZ�%�	LULL�ZP�V��mp%\n�\n�8�L\0�p\0nz��a���X\Zs��\00��È�iLN!\n��**�a�E�yyUVfja_�Ĉ��eq��1Q0)A11��nU��q*O�V)�ĠfU���<���aRV3Q+8G�U�LB�I���yaf$�t�	b�H�g}����\'ܘa?ĩX�H�M����%N%L�=�ϖY���c��k5�B�^�Db�9�!Xį�X1��\Z���a�*�1����dP�%���ˡ\Z���%+=3�T���\'$�X��#29�Ma]�´�)��\n��,b��ĦzV|�ؐqhZD��&$�ԑ:eX+]�\r\\��\'/��ds�ZZ�=2���f�iΦ\'~̌�c,��L�_�lr���qc��\0ܺ1�\\����61X��sg�(�a�����ι���$H��:H�jq�]!��5�n1nF����^]#�dm�2���j3Y	\Z���y7��j�a����~����4b�a\\�l�=��j=�Lo��c��a�{�2}d`r���\\�ş�&4P����Q�o�#�N�JfA[�O�0j�1���Qp3�����0f�zj=F��\n��cIF�ƈ�tŜ`�y7\\�ƃjDZ�o3�1cq�ť�:DJH�׾M.�\"S0���]��X��ƹj0������T���M!S��댖/-��9�����\'M�y$HԵ�������k#^:�f�k��$m�m)B�&�j�2�YI�:i��U��5cr�b�.	��4�\Z�t��b��u���~�\"r,��0^I�sZ���SXg�0#�؎�7��b����Pk�\n���0\Z����N)�\r\n���\\��(��^����R���u1Os���.��o�%C�>P�s1�. `	D�1g\n�33���n�	���L���I昕d�\0�O,#,�j9tLk��\\b�}wb�\n��)��LI$J�HZ�^�j�:�x�(Vg��fv`Z���͚�s���d�g��I�.	9�͌�k?��C�\'�5���!�k��s�%����M�:V<�����N����]��S���+#4\\e%��s���FedN�\\db���J1����0r��ݩ\Z�ߙ��敊�1jl�`ϗ<��ku<�D�ͬmL,1X�����s08�l���s:o݌0�4�I�e�:C8�f0�C|����ys�S�qk3�+�pŉcY���1����O�5��,����\'��X�9�g��c��rJ��8��/(�Nuˤ��$t����7���Ѯcq����N�����.�3���t��;,+q��5M6���5ۭ^[�Ԏ�+M.����Ԋe�h��rߎq�FlZ��%h!�r��B3,X��6\0���7�55��X:3 ��BaZ��,t\\i�K�A�\Z�ϣ63[�!1#Uɼl�|`�\r�fxd.:FV�s5��mk\0=�\n�$Ltt������!�1b���Ӧ��ѷX�k6c/_Vҕ�S���ll_�R�+�G�����6�8V�|h`j\r�m7O�V0��&7�,:i�����~\0QZ�\rE�\0�P1�n2�=���߹a�ZFҧ�/��7�!��Z������������%#j�AC����a�,H�]�U���2R����4���r���\n��\0^�.�z �\0Y�@v�I���O�d�Sy�Ĭο+�i�T�q+�\n��\rF*��O>;/0c�h>L\nS������ũ�\"��!�>Ss�X�`Ru����Pcs���}�+8ǕRH�eq����-k�}��*&)����c�j5T�b3IY��j������.%dX�v\ZN-��d�/�_���㉍����c4���3��(�I�flX�9�l+\0�Fh} ��bsg_�r�٬m:v\\�جT�`\00fY�V<�$Y�ZPRc՞�ɑ��`�\Z��X�~q�^F���D�~U��Q���j.�q\"�9�p�N�,˝J�c�!�`���͌_�g�f�\\�:g��\\���\0�\\��p��,bs��Q���nr3c��6,[|��ˢ#�g�7�����Q�Ǜ�-cq��ƫ�㒯.���5#q���}[��\Z�\'�]�l���?�q�Xs\Z��U�����>�aX�aŒ\n�C\\�Y��e�t�Leb4�D��\Z�.+X��U��ˠa��|�\\E��;9�uɸb�&��F��j*���j\"R�a>��c�Y�[�v�;``�6�j�e�g�o���11����Qv�\\P�V�M\Z�m�m��ֻ�b�}�5�z&:��i��cQ�::x��ŋ�4�\Zz)b�cP��^!���_�Xƣ�X�5��ሸi��\rg��\Z�WM�b.:1�5B��-+Ez��b�2��i��3\ZX,J�ٖhk\"��},U�v����r\\#�L�j����q\"���,&55��AǨ�\nߌ�ؘ�ʯ�A������P���ݒƥ Sm�I�t�1C%0����@��h\0\r0����ɇ-�W��-�������S��5$�=�08�Cxf���1���(ɀa8b,�Z��`���I�Yf��=����00bq�x��cWq�Ȳ3M4��YJ��0�0��e1�>����Y��]�\\e�9��ѹ\Z�3拉,*R��V���T1\'يc��:c:�\\s��͐��fx�a=��\'�l����6�g�1������)`�8���m�xq	F�1(�F�5v�y,��g,U��\n��R3�Na�L�\'����W[5����l���VR`��1�Ba��1;����\\������{jD�q,��S�3c4͈W�1�͜b�9��f�0t�cY8S\'�=E��ՊŎ^ZTәc��a�ŉc��?V,r�#y�<rt�[�I�7���t��b�o��\r�H��w�Fčt�F-Fcx�����n=��y�G%�7\Z�l��C�s] ��a\Z�q��ٖp^ٵk8�1Z�n/�\rr�Z�5����X;gts,\\+�n\"�֔#��r�ٍ\Z���is&�t�Xj2�z5��ů��\'�E�`�,�r�+��x�\'M�3���X�J�Х��V��_���t��ћ\ZFquj\rF_kcqS\n�j&,F��ߋ640�����1�Z��\"���(����q���Ϯ�\Z;(�Y�����5\Z�x�K��FL�\ZX݋�X|��m�o<x���=B:Da��(5�?Ɩ/5ƱS�Ԧ*7\nԫ��`ac�OTa~�&/��ŉLn.�b�&Cr�{s\\~�������t���^!u\nQz�Q+x���1�i1e@;��@\0��m qh֬�&W��d�S4�c��\n4�`�}\"��5�R�u٩�q���uD�A��p(g�XLfgM4\\jF8�S/�F��DL\0ę���Y��Xgu��\\$s�tݬnC`fq�fԭ@�\n��Ԕbg�g��i^�!�cv���,�LE,B��*NL\'Q�jU�=rj����&%f�i��t�����4��	F7k\Z�O��fl.	���+	�Ɍ�]����h�&8�*Ls@�AvK�L��9O�Y9�n�5�9U�+(�D���G>-�,c�5�O�UD�.,+3���L�jȔ;dʘ����/WH3�._�JA�Y�1�W��W��Sl2c\0���ԍ��8�1Fz���t�623��%g��\'6,s��i�㛗��/=�W�:�bn�b�f�y�s�q��:q��:q��^[���F�q��5#�g�r�t�~Zv��>~��ǫS����7c�g�c1��&�!d�V�}ݱ�[�e�.4��(�)E�D ����u��\0\"��L�mr.?��B`\Z��n�Z�t�ob���\Z�`��5�+X�c\\���HHc\\���ptcۏ�,n/f�C����X�x�ƗƮ��,tcX�Z�#U�+A��F�,|7�F��ٛ�7��0�\Z���LsF��\"�X�ڱcq�֕��\\�e���ر�Y��o6���f�g���V3R5�F�ro��/�,mcg���x�%��L�\ri�Ilaj-y�E��Z�/��ٖHϦ�6�6r1CL��a\Z�_\r��f\rxΚ�c65�1�7=mqeY�1��1M�܈{:@$.��:x�i=����Ȟ˂��eL+m�Y�\"�B`�s�lI�*���t�3�09��)�X&!�qL5LD��xr\\MN��^����jupZ1: �j�L�~�\Z ǔ�a��sϝ��	�K�� 9�����.��3��\0sC���fs�1q�ro\ZM��Ι��{\"&� �Lf�Y�Lf�F\'����Q�a9.D�(C�b��\Z��yg�V�X�{丨�Vg�1O���&٢O�8�N~|KR�^��6tg�FzeY5c�4�3���1���+)�(�)������>e:�DΙ�cɩ\Z�Μ�J��,؂T����/��ԭ�g�oU��ǲ��U�\0R�k<L�!Ħ!Ū�JX�Ϯ��z�;k�\'w:.y&���:f���T0�\0PCHDOvzR��J�.1�W�8&���Lc��i���q���v�˞\'L�ba�`��5��:�X�X��K��\\����},q�%:�#��X�q��Vp���9`�N����f,p�!��-���7Y��!�F�n\"-�5�����v�9�}|}�t����z,����_�����cXGԅ���wtőb�ֹ�7��qk�AL����\r�b+�Q���Y�1S�`�eټE��ӽ%j/~�4Db@�0�����_��Z������7����I*��C\n����D����	5J�_���*�F�M4��h��:S,��o�X��3\rFv�H�l�v7����b�\Z:��L* �I:�o4�ۦ��a0H,�\0[��`��c���Ar�I#l��{s�V�N(����L�\\)�����lf�����h�C��3�\"��5��h���S�ЍrY��X�a@W�\r�Ջ\n��q���c�e�8ŀ)��sL%^鍯��Z���;�����*�sK�����	;���֦/�����{��P�P4� �K1t��D�൥ �~L1�`&������yyFY�9���V�.���0fVFmJ�k&|ت��9r0�=m�o�p\'R�b�d\\�L0�k�R��FX9�c��=\Z��qY�>�􉌕_@j`%�!�+3Q�R3�y��5�w�Y�WMpL1h�b���ß�mH�,�Z)0fc��Q�NtCs�!���8,����T+�t�N���F:f���s����#r3>�Fzg劘T W#\0���5�����;5\Z���U�ί&k=\'���	�y|�f�8G�gԎs\r6u0F( ���IӴ+%n�J����8}h��&�Qk�FpEĬ�����4���)0�}[��9�\Z�q�̱�#3�x�I0͉�ߺ#3�3ӝ�f��:����YK��+��<ӨG9����>u,�㗖]2b��r��W:��Cyu�1v���t���g���\Zt���X��Ď�7������������3�q�X���n���q��O{j��_�R=d�B/�&�4�G<wF�3bX�&l\n��bǺbśH�}�:AL<&r��o�&�_ytL2C�����mE7\\F�rJ͍�H�|qn7�����[m��L�`LF�[���Хu�Z�q\Z��Fۋ�R�ZӢb+p��ia1N-L#ݨ4��_����Q���¹vk�ͣ�~��rt�\ZX�M��:D��Pc4͋\Z��P�0V��#P�iw\\V�p��,K\ZٖcQ�����!��4z���5k���i)cT�*B5�7�q�E���1W�ȑ��h��bq�T�,t��LZ�0��,]%�E���[�1�Uia\r>�#�&\rD�I��M�g0>\0\0��kL\\g�Ŧ�B`�(i��Xs0P3M�5E\nk)j j`I��{O��m�S�g<kP�`t�C�՚�� wLD���%���ͩ����*��9��0�)>��2�AS���*3SlTO�f����E��%��9�	bc���CL����~W�R,N�ⴚ3Q�8�1*{��Q�޻1�S/���t�;-m\\-$J�+	% �$��e�c��*Ne��� *�=�Q�7��i�b�6�:�H!>�%gI���b9�3-�xqD+�a\'	L1f5؂W�j39��5��>2IO�m6��Fvs�긌��3N���1�����D�|棪�r�x�	�9�e�$�f��\'�#�aS�%�ds�ݬVffmϱ\'�lbVY��tg\n�9�9����a�(s��ǖN7�+��N���ܹ�1��lj�y9�>����q�#�3�j:x�:��t�wY5\Z:O��cN�G1�oD��1�nF�u����G_�3[�f�j,]dV��7\"ƣ[��7�I��%:�VD)���-,k��wݛ\nޛ&\"�nD���p ō}3���d��F�&������M�ct�\\�ApTơZ���L5�Qw�%o�H�|���1�`74���׎���k�&%Xɩ�\Z��w�a��\Z�k�q�ߎ�͉[�:���b��Z��!�U�e�V�3�d������o���:�\r����Ռ�߳8�XX�kV��0RF�����L�Ů�I�j��c�b�Ƣi�i��j$��MF�ӤM��X��ۘ�\"�m*�I�-%We�����❔t��=ټ�u�2�ц�E��\\���ŕk�4Ɩ�۲�i\rUN��5�wKj%,Lj)1���q�����\"��������(��Ө�q .�ga5&S�T\r��h�$����%��/�p1�T�:\0�u����0M����P\n匦�3��|�	�8a=�r9qM�`wf�D�%k����3�f��*3X���y��bcf#;%J��\Z�?�q+7��bjI��<CR7��8��V{X�`$��+>Ҙ�>Q�jE��4�63�J�=&c(�@�qY��\n^a�1f�3�Lz��N �e*����ȱ��լj����T�w�`�V+5ɜf�~E�u�V��\nĳ�`W�����?�k��ȱ�)q�t�N�g����d�#�J�vpc��f����K)�P�$������N�`ϒȱ��\Z�jJ�˗egnl�5%�LJ��d��bX�Xı�fF<��l���c9J�S���Yp��l+��������;����1c�z����t�Y��o�����x���\Z�o�1�=�\'�q�=�Y��c�F�5��-X��\\V��鳬�#P���cE��Tx�Aa*��4���,���F��\rQ0�b���\Z��*�5�|� �9�Q��Sv���)�b`b�N&b6�KF���9�p7 ڔS��Z��i[��b�Ze�Z�\0UV1걨�ZwU@R��j7��acl�8���0���-)\Z�n�Ub/V�����\0WDÉLU��(�e��c�h�3Z���ŷ>�z�\rF#qc�e\Z��,KFT��H���6�\n�� |��$�o�	��lo&Y4�V�Zhcx���50����0̓H/d\nT���(*�Z&)��ËS�J�lvX��&7[�X�M�b`�� )���9z��0C1\\a3����Y���dgeR�Q*`.�@Vo�\\f�t�D	���D���$�o��f�9\0ɇ��e�3j���\03<�,�s+V�ddD*�*1أ8#4♨�`ϗ�dYZ��є�f08�M�2c3�Lf�R�9�3��Q�b��#?�ӎ,D�\r���>Ss��	�iD�D�I$f���a�5T��jF�2\'LN(ʳ�V�$�T��\0��R�m�ȼ���4���)�1Z�%K#<A�c���p0�e��(�H2h��S����8�Y� ��S���٬b��^�H��&#Y�jF\'���e�.%Ϥ���a���}$I�!Ӝ�3g�*ĳc7�r�c���R�ά��9�X���8��͟\n��n}�y9�;�1g����u���[|�s\Z���s����1�w�u���-���n�}v���9�\"WH�l#PH��\"5�9k��X�q�Vq���E�5LLWD11cq�cx�3�X��k\\6k0k���ᑍ\rr��X�;x�LX��0_f�a��z��ъ��7�A#�q��Fl���\r�>4���b,�o�,�,fՆ:W&q�(��mȱ�;5�a�����o��i�L����m&��M�7?�$�1dXo���\0�l\Z�1W�R%&\Z�z�cR�&4�����u�1cI�����h�b�o1r��c]��c8�o�1i0\"8�\\X�%dX׿&�O���/�����q�ƣ���X�E��Os���l�E��qML\r�0\\	i�<f+i���F��0401\\1�`�F�i1�C��������m�C309�b�\'��Q�\0�1��X�n a�i�\0L0�<�10O���ba�K�g�_)>S:��p.3s?�Y��H�1CC#��Y��\'�4��+\n030O)��Yn@�b��i�K�X�P�aRp�J�����H33Z���Mti�\'�Xg\nP�r0*�t�c�+5��\0�������)���Jb�3#=$��F�z3R3��Y��r�\\1ϋ+h�)8r�Ĭ��\\`��f�a�8E�.+���\'v/�Rb�F%�fb��\\a:�L4˻8cu���6��G9f�D�8����3<�0J�J�=�1�,gf�jD�X��)��CM�Jc3����3\\g���ˁ���g��,BD;��-�\Z�4籉�3���t�A��؟�02LJ�b���T�,�+Ռ\r���xԌ�3PĬyi��R�)���cT���sK>��g�ŉc��21峕�\\&3e�㗖X�bG�Y��8�,X��럖y�9Xŋ\Z�F��F�tt��6��m�4���������$j#v�㷋S��~7��V��Wh���:�+�W��-x�:��V�m�H{l\0@,gѹ�j5�#&lb�@��,��m\r00Xǚ7���DN&+��UU�5[��y�n	��b,O�	cq����F�}Rı��č����k �F�\'�qvoL�p�!ă����ޙ�W j.���O\Z,J�6q��cశ/*��Ek���(�_�*,L^m�]�E�{\r�Y�%��ҙe`ŕQ�ۓq!�����d�*ߌ�3cY&2H\Z���N��m��|A���GH���Z��ƙek0J�4�yTo>�:��6�P:,.M~��1,�/��\0?P�NJ/�h�D�5*�[�c�`q���H��\0��؊	Ĩ�>�d[�1_�O$ygp\'����wS�~�|��?�����|��b�}0�L,E�I#6��Y���j��O!�s��&id�nvk�ٴ;veM�T8�\0� �m�\nD9�b�37�R5�4��T>41X՗2�AL\\g�\rVBF8��dbc�+�֠���39��c=\n˟�����J��̴�LS��\'�#��U�\\�{���x���|%l¥o�YN��,�mcu�l9҈\nV�N1@�{��i_�-��h �#=�Ψ�L�G�Ďx����I�3�����O\\6f�-03�85�qo5b�{�	9a��<��Bc՚Dٕ&0�,��\0�6±J�c���*u쉉Lu��8$N��?���eϤ�s�ˏL�壝J�:��8�3c<�	�o�\\��s�=~�K���s���\">9t���]y�j:W��-:F��?Z��:��g�Q�5#n�9F���ז�>Mȶ:�aȱ9h�}Q�\Z�t�yi�V�Lt��,\n�R��K{7�P�7���,J�)@�t�s�\\LXLk��1��tn&�o�:ў��Jg\0Utd�L\n��1�Z��r�k��,J��2�t�Q���^�&ɃP:F��^)c=6��Q��5īG�0+u�c���n3�:scĭ��X�ѼX֜�Ll4�Xbǣvь|�ت �Uq\Z���H`b�5�41�d�a1��*�\r)���Q��8i1��ak���X�M)��`t\\)Z���d,h@�ñ����E����5��0-`�3j���<�K���Q�\r��WE�eUh0+�P(\0���SM��\0a��Ř&�v0\n`K\\KPfԔԆh� P��`�33�c9�~�iD�$��� c3��#4�`����H��\0B�TT\r�c�J�Z���0s��[���eR}I�+��_4��1%0��	9c���ѐ�\n�b��_���D��c��7-Ȍ�T�逸3&3Ra:d��Os|��j1��R��c\"`.	9%J�8�-fj#u��ڱ�~\\���\0�T�럖}\Z�b}.4��$�Lȕ�d�100=���y��\\�ΚC-8�<T0I�df�z��T�&)�I�6Y6�f��4���g�F*TLe91g�g�\"Fzc/�͎,˟P��Yq��|����1��|q��,9�3ы������.�\\�<��b�|�\Z�ï-��C�-�q���p�ώ�.��\'֛�:x�?]8n3jF�v�Vđ�G0�[1|y7���Ɩ4��ZF�>L1v�X#x�G2ƹt�9�V�2&\"�j�\rEnl,,!�\rZLX������QP�X�S�ղ��X�&q�j���?����\\��MF��3cl�T0�\0�4�@\0A�tt�V�L\0WDj�ư11st�:x��6\r���DV�,k�1�JS�z�3�o#X��bƑ�L0��j=S�c������\Z�FV�����kݨ���(`a��J��8c��5�&\0���k\"4i�A�a�p�\0\\��<�1�b������\n`\nE�V�h;�.�Dn�a�.&& �*�����P��}��f2���Ϣ%M0(\Z�Z*a:΁�O�e��ffqMC\n�\0\00�}ٴ�&l�mg�c�H�#u��0���Ե��� ��N�#l��W<(j�X�3+#�|��`k�CvY�T��D�Eg�i�˫T��X\n�Eöf%�e�19�w:����)�5��<BVj|�LD����Q1rA�,�ը�gI��.3)�M�0�݅c�\\c�ڍ&�b��=�H�JU[(��`��~Y�|�aWa)��.A�Ϻ�S�BaT��aqC��^Z��[(1��=+3x1c=#,�~�3��K>��>YK�i��9q�ϓ5�<��[ώ	I�����y1ӕ�\\����1OVb�H�ז��p��X�:F�#8tk�����1�ɸӤh�\'����::�Us[F���VƼW��i�qc4\"�:�`(��E���\Z���������PV�L����UX/�x�0v�jz��`���,V�+#\n,o�cq��0�0o�,f��r�[Q��3\Z#kŶ���oL��T@n7����FME��?e�Q��q�`�`��Ջ�L�i���Ѩ�E\\hՋ��;1�P��*��b4�7���]B��\rBX�TR\Z�ش�5�����CNx�F\"���z�Zl&�C�\n7�-��D���)�a��bˋ�,iZ���0o�ʵ1#�T�L)J�G��0\\Eտꚸ���.( �b&\0H\0�*`�..�P*L�&��&�\"}&၀���`b��L�E�e��/+˚b1����\\\r,��LZc8&3S�\\@@T����3y�6���C\0�b��1�M?�0\\,vA�q�GI���Y���3�2�Qq�����:H�����ez1i�`��yM�F�FR�L�n�3�Ԍ��iY�퀬�eK!�bp쵪ƹ2�@\0�1ıX	�`��q�N�3�����/=1��Ȗ�9Z�1ͬl�أ<�2��vf�#8�$��x���3ҟL�O��cu�<\0f�sgc�j18}5#=%b ŋ�f�zJLDb��.z$�}��a�\'.��ώr�c,�F,�ly����k��9�_ő��1b�W9�\\�s��z`�cQ��ט�n=�t�5u��t���㿏��1��dV�tnO���n�n��,��1ݱ��,i�.	�\Z�S���L�U��f��d�3T�XQ�E0XLj/thX-6�:xΌخ���M�(b,7�P�F�\Z���+i�I\rALE���a����X͍&3���q\rE��``,a�ŕ��p[\Z���(�A�5�cqS\0�:�93a#t��Cq\Z�Ŋ��`׏���X�c�؂�W���QV&�K�\0a���j?�hi\nUP2L%j.�XŬb��X�b���l(\n\0\0&�GH�p��q���\n\0\0a��`a����j-��][]]K\r[\rK4վF���CKCS�1(\0\0��`(&�>S�*c���`�p\0�0\n#4fy&3jȢ���W?)��H̘�J$Ό�6���1�:\r��b���J�Q�0I\\b��yL\rH�42��HV1���Y�6��_�5+2H�If���(����s� ��&2��	1�T�S,�	+!#\n�0VS0%�Fd�k^����D����#!�(1ң\"ye�żC���\0����&�Q �6��Ĵ�Q(f��Ό؝D�e�+���.}2�3����Xs����g���_����T�)s���?(c�+��t�X�9WHu���N��m�7��::H�;���fF�di���c}Z��OV&\r�׌f�cMưQ����cP7�Kƹ3���I����Lo\0�X\nc^8J�:���+a\\X�F�hX�U,t��1�g\"�FU*��Ō�S�����x4�\0ںF�bƌL��A(�`5\Z�)�ɀ\0b�cQ7C#�bcI�E\Z+5�U�i��-�\Z\nij6F⬫��\r .��O�8�:X)�J�эEF�t�L�	�0j<��&%h0��00\0C\0�0���`P�b`b�Q\r��1��0b|�\\���\00@C(�Hͬ�3�^���p��P�<�\Z���q*R���j�ĔJʱ��$�\"�����TD��E�Ĭʱ�3]Qds�1�@��s��\0����5�����e0I�J��ɀbHH���҄�LfFk(��$�y+|��$���+�\\rD��0��?k#r2(�1�1��ȔFLCc�t^`��Agv\\f�YD0f��D���ͦ��&̳c5�Ib��\"����f\\��cw��bX�c�矗s��51�\\�q���s�X�0��\'*���7���!�\Zn4t����\r3v��:I����5����H�?ad�͊�#P��\Zi�\Z�cCX\0\0\ncP���6�2\nV���pQ�ͬ1�1c\0�X\r��I�����1Z��4�ذV�LV��+�d��U0E��F��\\Z\\@�X1�[�����\0i�����Tш���\Zm�i\Z���6�+Hю�L\0�e�YZ�kH�+���b��5*�,�0 ŕ��g\Z��f�YS�\n0 ō&4����.\05S�DĖ\n�\"���\na��0\0\01J\n0\0�0\0@M5Df����qk� `�3h\"�d���3j����f�E��\\*.23AAE���,���:@�f}��@U���|�dnF��J�FQ\00O)�s0qS���%�(�!F+[\rHąd�C*��P��s��Q�C\\b�\"3WLf���8�mX�*I�Qq�0%��b8�6܂3LP�1Vh�`��j�5�VYd@0fR�j{\"c2͌�\'&lc�X�2̹Y��9��\"t���&:O�Lf�K��.r��R�������i�#N���m�N��_#_�h[���V��O��ƣ٥���חhܓ�5��5�M4{��/�J�����!�Z�L�	�.\r5c�X�S0���m�v��:3b�R�`�b,&7�F(�k�\\\Z�,m�a��H�P�Ƣ�4׎����E�a,^ZHں���,i1�X��UA����j4��^3S��;��Q�E�LV�S��3Z���TƄ�@n#P�5Ɩ0,+��0�D\Z�SLmQQeLi�0 �����D���q�����,&�O�XԪ(`\n7**��S	�n<�������*�&�8��S�b.����)��!����h�TQ1Rf��dFg�1�оFg�g�3��!��(	,�b���-N-EA��1X���ds�K\"uR��Z���²��E��\'6U��\\jDk\'CYJ��a�&3k,�Rf�E���CQe���0�1��o�X�@���Y�dL\0I�C�9�Lt�\'�c1PFz\\II���$��7�&\'L�0�2�V<�YF�&	$�eq�(�k��N+ ��Dc	1+*�S\n���#LK5����3�,g�FY�lf�93Y�1Yė+�ıc,N�q����+��q�f���.}99˕�r���3��]!�6�;st��q��8t���F+br۷+]#(v��Qc�k:FKy�t�R6�2��ƣ\\J�$*�F�P�\\@V�m��f�,i0@R\Z�#P��]�h�!�c����0���b�bƆ��[s�q�\Z���I��r\r\"��i1�3�J�a@4��V�R�[��X�oǘ�:.3��}-dE���\n08���n:j&6`\n	�r\Z�����&:g�+\rr��c���\\LP�n#Qשcp�Z�K�ѕn&\nbňK1Vh,h��j94�U`�3cDL\Z����#V�ԡ�(`�\rh.������ތE��b����/��<�\\n�h/3>��Ap\00C�,�\'�\"��g#?����D�_#&R�������%��Z\'6i��b�b!��̮\"�\" ͫ��_��7�.3j+8qB��`�`��\\bԢ S�32�59aq�/�b3*�1` s0�Vc��ԍ�Ɋ38�&k\0Vfjx�0\0�٬�L@�L�F�bL[Y�`0>�2�&+�ԥ�D�s��Q�ƙ��*�3ш�K�Ys��7���I�LVFzgU�If���1�2�GQqC�k�I��̧Q��Z��OC9�X��R��0fY���Le�e�\'$��r������9�ß�t�$Ly�����O㏓��]G*N�����9��X�y\\oO�^c�:ô�57ώѣ�i���u�:E��ՊҺF\\��˧��Qln��j �\"��\nacQ�,�E�X*����\01�j,oƿ�a[��````|^!Б�o��@1���G[�ьņ:���\r>�0ki�[��b�p�H,fƙĊ��U0ų��7?�WO�汋\Z�#dƢ��Uk6�\nc[#N�7�8�tT8�XYZ�5�a��51&#�X)�W0H�,jUŦ�0ƼgD�,m��1��C�������i1�5�>�bX�MY��*\nb��Lh�rYE��0�0,YU1�t���q1����1Z00S\Z�0N&LP���t)�t���0;\ZB`lt�QL�t�nw0��/S_��\0��OԮ_���a��\\18��@��\\1/DL\0\0�\\d�\0%�K$�u$1�gv�g�R�\0�}�hj�OpNK�T>\n���L�u$\\s�k\Z:จbT�b�&�b$��f��Q�)�dY�b$��Y��A8��s���=q\'dJ��,aB��\'ELr����ĩJ�@��L*m��)�8D�ds�Sē��+J�9��1*I�ԜD�%��S\nn`��h�l�0��qJ`b8�c7�\rȸ��L@5\\�XMX�Q�``�d�,s����,2q	��aŃ2�����f�1�b���J�w<Lfrb���bϬ�yq����Z�1���9K8�%����^n�s�*���ۘ�q�\'ncn��|�<t����v��?���s\Zo�(w��?�V�V:p�l�1��c+�MH������,,�F��V�6\\AZ`-%�F�k8[Մ8�S�cM�11�W����\\�n�>��2��b�LS;��{�pXLXэ\"�ѸÛX�6�2����4k?�B�骊b��F�:9�0V�b`��5���C����\Zo�k\r�\n�c8���#�i��`��8���a�v�Tƃ�lbƠ��m�STŅ\"�j��x��X�ō��͉ci�\r�qf!�U�b�4���`�F.�ߛ7��3�5)O��zhb�b�Ę�Ę!�����Ǭ����`&	�(�\0\"\0������1V���AS�@�Z��DL1qC���\'K�p˳6����3�z�91��ͬ�>�fЖpfWC����q��]�G;�uo\Z�c\'a*3h��@�\n�����p�\Z��g6��0A�̱�i��!<@1�4c.&6�	��B�=Y��q1��j��0bچ3�#\n�[��%:\"�~Ss�X�	��2�����g1*j�1�5#r3L��1q��zE��9�T�%ff�dLr�j�����F!��%cyZ�����Ħ�F#��ԍ1\'ISt�A�_�>X}���e��Lrs�2��ɚ�3L2���7���K}a��6cV8yj��W�Y�u�w>�9O���29�r�X6j+��-��t�����㣢�h�9j4�X�:E:���jߊ��y�u��Zō��,Z�+G�Y���4��\\\n�*E�P��M��7b/P��H�L(E���V4��d���S\\�q8��lK�Dk�e�lb���k\0�k8�Lt�p���^ڥ�UDXK��GD8�X\Z�se��g:�c65��V�@�@�Z�*�6�t�>LWh���А{L��{+R��NY���@u��e�����Q�V�\\�V0��0���8k����B�����>�V��\\U���,i���q1����5(�Bຘ��ւ�}T]��+��b�M]j���y��,��]�\n���`f(��j�������\0�0�\0{�h�ieKD-A$��9�O��&��afs�3ѩTN�P@�d+���	���QQ$0gEdff\"y��#;�4����3QY����	��6��\0�	����k�>&��f�q�dC\0C�gTe�<դ)�`��T�8�D\\^!D���fmqY��YX%�$�Z�6�L�ba#��-��3jR���ꡅg��W�զ�gw51u�\\b�¦,�ҧFBD����Y�E�YE\\�8��%Y锬��Tr���s��،\"q(�*)�y3S�9�՚�j9��¾Y�S�e&3b��s�F1#��l�p��g�)b��sr�0疯?L�LWW;\Z��dj:;r�n��t�NcN�.��� χ-׻�i���5\"���׏������Ә�~-X�:F�\"sv��00��f�.9+J1�*+q<.�N��l���\"|����ڵ]�o\n�\\008�A[ıӻ,5�,S�������5�f�K��%��3�&\r|��+�0��Q�F�	�B�J�FOm�pbb�j`�:Ej��%~15�Xc�EëX�F`�e��qqj�\n�1bjp�1,u��R$��5������-��hƱb}�8�X�,��L��\Z�F��*E��1��X4��t�ݛ��H.m&�w��dƥZ��*�qX�SAK�\r��F��GHg\01CPE�t>6]uAqC�0��P7\\@���ᥘ�\\���\\��b\Zba�`w�>���Iꀖ��aHb�\'%1P��r0b|���NF&�<e���ͤ\\}LMg���2�R	�|�s�k\Zedb��A1O��&�b�;�T1�N�E�fo%ƤepI�+8��\'t�8��5e��s��E��ݬi{�1YJ��N:�bт3G?)А�\Z��\n��a+42PbV�1�:{�H��&-eq�������\'Eb�f#3�6�jF�\"3�۸Vi�s1;9���Lf���9M�m~7�,.z��3��J�\0!�옖���ǕT��H9q+D�ؑV��0O&zg�9�a�)��ϓ6\'Q�Y�e��_�?&3�H���|:�Y���ϧ)s��zc�%æ\\�Yr�U�k\"�H�{v�6�WHۤC�j~:x�Gh��cn��q�Ѷ���j�e7�|�!�Z�F{^N�]|}�$�.�*��&5\Z�+B����Ů ���-`����`{L��PX�����3��\Z�[�6�\Z�����*�� �rϑ�+H�C\Zʦ��:tgc�,n4E���6���i�㧌޽�3cJ�b/b�f,j9�ݼ���\nX������*/ؤ{�,���F�T�*�7q^��͎��ŋ\Z{4�R5h��0�P1Z���,f��2�XѨbƓ�b�2YP��\rF\\��厑8sћ~��p��X��ŕQ����vɯB����,L�d��<��lV���0����8Ɛ�J=��!��a�t\\�L@Z��\\@��`j`@&��\0�8�	)��}��\n)�����d��$�JQ���g#��̵\"!���Lٴ�f��\'�#6��qf.��S\nFfk�d1�����x���f��g��|�O�%�Ь��;��3�:5#\\�W\ZM7J���D�pIf��5�$g�Ǝ(���4fx����1<���A����t$T�����l��rVB�+����1�3;�u\0!?�)�8g��)q�����c�\'FA0fzw\\J�2vJ�Z�\nW���A�ϔ�\rHF9�uF08�P����Y��Xg��)��S!��|���\'�U+��u@�TB�\\��tg�>�a�鞡���,g&lgӓ4��^U�\0e0�3�����9?�W9�إ�r�}���9���r�XZê���q�4�Ӗ맋��<y��Z����57��\\ېj\Z��c~>��ԭ:�Nѯ�H�5����`��c^��4��17���K�?��_c�b���(0L\Z�Ywk4���r�g�j0�Z·�3�V���ԪcG2P�كQ��U�7�n�3ZFDŕ���n�\"�{�	�ƢkűӋ&;�\05tK��U��0_���/#�3��a��51j*��]��#ד8�q?���k�d���X�6�6�0j\'LRı�-1�ӳq0��.5�Bc����\0\0�c=ڔj��\Z���K\Z�e^-0\Z�>�\n�}A`5x��*LP�䲊֡C�&b��,1��W	�n1�Z����)�[���`N&ĂrQM0]H\Z��)�i�F�i��	��ZL�1R��@.��0f|�\nY�9��sm�P�0;3T���=I��ͨ����%pfgԑ���f�mg��QQ1k�O��c6���ͪR	3ZbH�9�XԄ�3��f�LC����gt�\\�VF��\0\'�RYKYþ�0( k�4q��e�g��` `	9L�Vw�\\s>���X��\0�r1��V{^Ь�����=U�QS�4$X��ӷf02�\0�%g٬`0Iǟ&)�S\'�Ĩ�Ü��5#R2�h@�0��W���3����E�,p���q�į��	����1Oz��r�ю��f��I��f�+�S�)��$1�\\5,1����p��3�5��Χ��q���#����Xs���zsŌZ�+�c]�m��ӗGH��5?<[9u�}ڟ�������j/�*�7#Q������鍺xj�:dbHd0�7@UmcQj�jd���x��!�R�x����ٜ�Si�\"�:E�\0� ���Ա�\Z��Q��&:j`r�nD�UXLX��\Z#uU�ZLu�F0��R�\Z\"��pŅ��?�i�����\ZT^(BX�FƐ�d���Y�tX�j���,rF�٥\\�\0��T\"k����3�61�׺����\\	��X��,iZ2�]��H�Lb����\"���5*�� {,0�����\rJ�JXX�3�����PU1�Th�����0P\0(1���XF�\0Q��\Z�d�(P�QPL0\0�pAJ1)R���0\0��C\n�SZ�\0:O�E�H1����pc�P�>��M1��Dԟ��Q�MDE8�?����Ԍ]sR�$`�d�&$�\0`f�r��`+35��#[�e���LC�Efs�a��3��H��\'�PA:J�#�B!��X򘈭gFd��;ls�f�2����r0>PI�VI�WFedb��{�Fj��YV ��f��7#>�E�Vv�dc�TD��������=$��9�?m6��q`�	�	>��a;9�S?9�ԃ���Q;��`�\'aI�Q��ιt�}�2�lUI�ў�t��͌�>YK.8�2�>�v9Z��s��}��G)���19K�NNS�=�k+�X�����\0#��#��]cQ��6�kF���]�#mDe��n5�5\'��˫q�Z�o�j8�H�t��ƣ�=���ֲ	Y�,h�cJ�ЧC �\0�`��NٷGh�ٌ$^,1(��a�Pj61�W�QJ噁��j\Z�1іZ�Tơ��^-`65�|�7QF�o�%f�J2�����[���\"��jV�	��lo�#+^͡�rL\\8�E�Lo�����cqH�1bp��.7�������`Xԭ#guE��\Z��F�g��3cp��kj�e8�k��5iZ����X͍&\"r^%E��U�t��4W�bᰘ� Zƣq5\\�.%�c\r�\0��E�+��5�.5����� 	Ū��a�rP5�cQ�7���q�)0[���ALE��=�v�DM�\\:�\"(��f``P/b\0�������	>q�b1>w�eVf�q�\"���}@ú.\0�\"b}	jvVj&�g�&D����	�Ry��s7���X�3YFI������d��T�3)Y�0�@�51�+x�UC�6���Df�đ+���NRFw\\h��(�5ep�%����PC��ͷ �����}�eq����c�������ê�J���\"&*O�Jũ�وϖ���F΢Y�+�R��@��*OK���\\��F>#4�\n�\0\00I�\\J�XJ���``h����5 ��=@�@�ʇǺ`Wy���?&,b�����Y�lK���/,�ώS�V�b�8�yf�Z����9ˇQ�9��c�rr銰�+\'�H�u�Hu��G7X��t�j,�զm����X�q��Z���qZ����\Z��U�!+�7#�.���LLi){�����U4�牊&���:��)�#h� ��^=F������WH��,X�K6�\'���ɸ\Z�ڦ,]ϣ01+�cƊ��F�4d�V�Qcr����6lK\ZӞ�]�M���\0>�Ln5��CkB��\rx��k�/$u�xg�����?uV�1y^!1��`\\[�x��\rF1�1�KUE^%�\0�:n,��F��Y�7f1b��\nF�l뉀*���`d�j%�o��&\'9��o5Y�Z�J!�.|�E��,���\r\\&/��S\ZX�r�\"�0L����\0\\YB��a�~�/\\��_�q2y�s~�����\Z��X�q��.7�	q��n&�,����v��I��1?R`���o��\0�eR�B\0Dg�\0qj$�%�쵝Od��f�����]g���:�Y�K5�P���\0��)Y�+��0K����L����mz�0�\n��\0\'LX�2���3�6�#;L��� Z\'l�Rx�����\"���3�g�s�6Yʹ����&8�U��X���`h�ff��25#��LKNb`3�t�\'�����m0w��8ͣqU�3�<Z�&���*�%df��-WD��9��\'s�����*1C4`(��r�	\\�ڿ��L��@����2��Vze�:T�ɚ��ɚ�s��#nS�1ӕrb�c��=/N^Yn��9ή63\\�Ǧ�\':�V2�X��?���O�q��-�ç-<sj,u������Ѯ�5����_-��a�j��u���t帚�[�L�(�\0j)��+����b �������Ճ��v`;f*�!��5�ȱ��ѡ�Po����k}Q��S���rjĴ�sGIT����gIVlmq�!ZLmLn�,|�Q�t��H�b��t@S�1ek�\Z�M�\0|gL��my!�S���(�C�kX�7�7�63f7��#R�*���L41�U\ZX����H���b���a�],]k��s�T�~�8�!p;�.=bc|ZYZ���.7�8�/��Py�X� rɩF�\\]/�W���R(\0�{`\0\\��적��z�;�������X\0q��C��&�\0���&&���sf�AC��V&y,�H�ബ�9�΀\0b)8���KQ�\\Rf;�Hc:�+R3��T��I��u�P�Z����R�81�X˜��5#R\0��=*l�s1�q��0NW�Q���I!\\����P�L	�(̳��S�3\n���=���8��Q����S��19�G0���,�Zr1�c=jG>)�5�)���AL�=,�eXc�kYjF�b��N�b�!�6�Y�p+	݊��tD\\	1q��qnDe:!Q��aS�P��A\'dJ�,1�X�FQ\'_v,�ɚ��u�,�H��,��q�;��\\��a���:+����W)���79���e�\\k�_�����\'^c�q�s��F�:��\0��-B:�:B�N��n![��f��rj5\Z��7`��˻\\��q�V�\0������������@�a���6���`PB�	�7���3}Y�i�\n�%@U�ǫDj�\nD8�0n�Xe�cײb�V��l��V�4,&5*���Ur�1�1�i���\Z�u�I\Z�fÈc�1�7IbX߲J´\n``�#qx�U>�9��e8`a#�MÝ��4�m�-��LX��J������0���n��1fƥ=�UV��P1V\'�ƥ^!\Z[��Y�1���͊��`�ƣ�A��`qj�@��Nݕ��\0U�H�63�`e��R��H\r\Z*�f5��h���@\0O�K@���|h`	��1\\R�\0%@���JLB��N �\0�N-EDAN$C L 4�Vu\'�\'��\"a��\Z�\0a۲���#*�33ywD�8�:Q&�q��mJ��\0O)��BG9V�:K*�F%���?��:�5#�s7�5#R\n�����>Ff��\\f��a($�:28�3y7 ��D�Lȝ3�!���TFj1�Y7#.-eX>W8�*��O�q-O~c	���8�)�1�D���d���KY�h��+�D�y�g�Ds�m[��N� +3��L{�Q:&| �$�$��㫠�1A3�P\0��5������J�H�#4O,��,q��C>1唱�_�X��&=��a��6)\\��b��r�.��S���8��UΑ�X��חH�e�N��>:F�������#�|��wGLn8��5M�j��V��M#^9�C\\�>�1�=YfŤL( 0�\Z��T�*���ɨc~3�&:��\0R�@���pj11�j�,8�=��ߎ�u�Yj2F��f��X`�E�ƥ]��A|s�\"X��h�ůD\r[�0iV,5~��Oã63b�\0����t�%\"��+(��D�;s̈́]�V��U���E��۔5碢� ��Ɵ��#f��u�U�F�[���Ut���Flk�\0��[U�U�u��\n��ubk!]#�&��g�Ch0�(ن���];�要��,P�(S�@*\Z\Z�j5@4,�C�`@[\rKT�1a�\0�b�\n���3>Q�<ő���k�A��2r��B���	�:\'$MLFH�\0�f|�g,u�\Z�x�ĵQp%�WR����d�����jE�+]p�-���1f��uDJ\Z2$����L�܂a@���P�\0g�*3TA\'W9��Y�!q���s�J��X\0fx�RU1�)�5#���4m���03LDS�@�J�5�1已�#?h�&!��0��-gaT�RU�(�C\"|��T\00��,3S1�>�Q�Jg��<!�q�o�R����)�˦{c��|�ι�y1N���d�sM�0�X��M�\0�=0�>��V:X�b��Hv����:���tn:��!k�ptt���k\Z�N�+q�R5�o���4���k�Xn:J�g�4����1�}]�T��L.~�,i�h0JA~�0!C\Z�[��2�������A��n�/����&)]���WX�X��,XϨ�����!�т�&�B��\Z�x�Ɨ,apt��1Wcбe],�D(�}�U�1]sc�8�E�ܪSH�i�+Q�cq4��+p1k���flY�(�P^���\Z��Ɔ�E�,LAbX�3���b��ԭqK(WfЮF)��0S\Z����K��8��M�1L5ceXǪ���K�^ˀ�P��E�SV&c�h�y\\c���5�X�����1t�0��`Q�Q�)�b b�;�	�.\Z��)���@0408�\0�0\0�LLMNF\Z�!�M:��09����܌S��&\Z�J�jt�(�lY��\\C\rO��P�9 .�.��J�x�#�0\'r@0bgH�\Z���*q&��\\M+� Ŧ\'-S�橩$����(k�X��|�F���1�N!q������%	\\��L����j��D�`N%0E��Pg\r�(q2犊9�L��ˈjB2�T��\\C�άMzO.�#6����H�:b��`�H���W��T��\n҅;$�.1k3QQ#29�(�\"r�0 SC���df��A��\\p�`�3s2܂1`{&���Ê0I���X������zL�I��X��!1\\g$�#���\\�gFq�9���×�9O�	��Ϧk���G*�r��_V/1�����q�2�N���ߍ���v�ͨ�չ���6�{�\Z�n~+P�j.������jE��955���k\Zn5��*�P�on�\0�\Z�i��W�O�C8�]0�n#^3������\0}@�5c-��W #4\n�sX�Q���F�1��\'�/9ѩA�LTU���Abf:,K���XJ�_�\Z\Z��CA���A�*�,WFP0WB�\'��W�k����\\�=�,n%���[�\n�]T�D�,��\Z:7)�!�\n�M�c8�ɂ�	bʫ�b��E�����!c�M�͇�����E�1ubwYWZiO�N�) k����X������K�_c\'�����.���8�g&(���+p;����NVt�=��|�����`\' ^,�\rK\\M$MI��\0�ϖ��H�͋����\0�9�f!�*N�	���:�\"a5��(R�^�$�v���)��Q���S��b:�	�6�{�bZ��/_RF\\�n�!�\Z�6)�݊��15�%Y�̘�	�;f���V&ide����&i�jͪ Y�Y\\`�	�-ء�<�\njEa�9�!�Y�ș�\n��Ξ�.+���#=Q��*}�0qL�\'-�}�sc�M�ƹ�b4�J\0\n��0fg>1Vjk��� LDc�p�uɪD`9��(����5��&!��0g��+5i�>��>YDlX�9�~3X��Uα݄c�b�㗓-r�׾v%s����b�˟Q����p�U���b�Hv��tu���H�v��X��?�t�x�7\'��n4�e3�܍H�Z�*�b��,j\Z���Z�5��%�[g=�\\0060��j7q@	��XoxɃ\n��ULLOc����CT�H�*��3��WH�qεŋ+I�`b�/f�`���+Y�Ll�`ߌ�X�<`��,k�8�_�ŵ�0@�1]|g\n՛�b׶N�f�֒��:��,�Ѱ�}L1��}���\Z�옲����q��3U�\r�p#\n�,n&�g�L�ŕ�45U�\0���1ej9a�i�&$f򫉋�	�R����U��mVU�*����Y�\Z.*Ї	�Fj�V��u�qc�5�O-�\"S���մŔ�1u@��>�T�\\E�0(�ULAp��\\0E�Z1\nL¡��K��κ������D\"�fg�\\d��\0\n�.*n!q2�Έ�q&&)��9�`�5�Y���\Z�dĵCC\0-�����q�����2jF�g��A�&Y	j.2�Q�6�̅�L��NY�<�e�j@�՛DgI\n��1P�F*��8$�DΫ ���\\d�F\"ó��&	8�1P�O)�1dsϪ6{33��R��0�Ř�$�3�d�9g�����)����#2��FzDݓ\n����\r�Q�nf��+F(�����0;Pa��$�J�{��HBc3ĥ��:�#>Za��6}Y��J��m��:Ĺ��g�������q�b�br�+�s�G>���.��X�V7j5ˤa�.ܵ#t���ƶ�t���㛤#��j:cQ����-�\Zj娽��1V�1c>ME��Y.4�q-F�U�b���GF�?a0>�Pb�U����4���ůQcC������Q1��9��*X\\E�ň{,7)�G��5\Z0�}\0�a�x���~������\Zd�bvQz	��f%k@���R4^�c�cm3g��]�X�ҵ�5��ۺ�q@�3e���s���^2ǈYK-����i�ﰧ����&ߌ�	c�q,�*�}��ÕulPN@��\"��LI[�sj �aZdXX���8ŋ� D��c�!��R�ݡPE\"���&7+�ye~��Y��K����\Z���t���j�]3渱qAJ��@\\\0�}@Ө5r\'��vS����j��ā�~������տcE�K�d��SU�W��0��`�N�������Б=&�\r>D=�I��\Z��e���&fpr���,�{����e�\0@�B��J����ԖPTN-07�����\0P�&c(�F�s�Ư�\\b�����p�Q���j{+&��L��X܉@nQ��݅�ɉk3����	ł{1���0���>F�k�N��{���Y\\b�Q*�0\ZY�9yLL�{7 �n�\n��S�Q\'��:A�-(�nm$LA&y�3R�g,19��\\J��0Ĝ���:�L1嶗�V�g;F�A\n��J�fJ��0��IZ?9ѩ5�O6�\0`ap�S����Ԯ��3Y�\\��s������]�:�s�:�Ǔ�z�gN�t��c��%q�bĬN_n}3\\珇*�\\��Ǧz_�;/0��>���H�|�����Go�!c��7MGF�>���d��|��5\Z�~!�Uv٬ũ5ĵ��ȋ\Zi��p�,fƸ�P�0=������j,����p�݀���bq��+�c���8�=�����\'�µ�7�T��T*R��V��ߌ�tͦlj0�xZb7Ά��0�\Z�4k\0���W�*��J�c�.3�\rf��+���`�5�qb�U���\0�f��[��KpUB8�V���W<x�jR�!�b�D�1����7��72��+`!��b��1�Z�ḋ^��{7ZX�/�$�8�k=\Z�U�Tò����[��cZ��1�n<�k���q&\"�`�)D�~@�7R-�jV�S�QTCl>S��v1j���r/�R��B�\Z�M�|��a��\\����߸��a�\"�|��\n��&a�v�T�8�\naq�dL.=E�����\'���7:�as����|�C�1WQ1~��R�8�0���I�gDԵ5Fjm�1�t�c�\\\nC�&b\"Qdr��t�5���ĵ��N)�aŁ�T�]2[��\\`/�a�srԍȚteشM�f�&}a$KS}W;`�bb3j�Fpff��da�f���j\nQ*���Y�1��mq�C\n�W:����M�g	\\C��pO�zSٜKX����A�)�5�c�i�U�a��-G:} �A��T��\0�+3���c�j?���z�J���0��Nf	<���;S\\��H�����&��8���\r�3;l�Wݓ��q!� _�g���d��@�g��+=F\'.��Ϝ�N�c�g>���8s��e�>3Y�>��l��9�1bW-g��+T�Y�~Q�ltŮ~Y8u��ME����Ѹ�}�F��~.����ۤ#�7Ѯ]\Z����~/-7\'ƚ�ŮV4�h�[H׊ƤiT�qt����ג�ц\rL,\n�����-����p9��C\nZ�ߌ�MK\rtd���\0��V���4�� �����bs1��-\"�\n�uE1�ZF�1[�\'	�b�\"5k�j��6MX{��\'�:xΌ�GFD�@Xt�u0 jV��f��,��Anc�f�����8�1VPh���ԭvF���;,�g�эǖ��fƾ{ �G��ʰj����y\rr�:�+Wi�kQ3�7|�#6*��a4�@��$|�*��H��ċ�Ly�qF���\n\0��8�H)�k�`�]EL��ү\0.f��c�`.w2\'OUU��羠r08��0\\�)`@>E��g�M.t��Ǿ��\0\Z});���I�$s�)\Z���0�\\bԥH	U\'��k+�	3Z�Ȳ9�GU�O��_���Pd�A��f���bedb�&m�\"�dš�K�1�Y�d���3�:V;���h\"�C�L����\'���NY%e<��\\Ƥs�g�jL���3�{�2o(#W�0�\'�\"t���9��F�fQ0J�Q\'��Z�Ik	ݐ�aO�c�j*uYͪ$��a�J���\0\r\r��e���Ċ|�$�\\�	�*�yUl�s�˫#3�.w���ltc���sr�٣���u+��f�9OW:�X�\Z�G��:G��:r�:��㧋�j:�n����ov�m���\"�֛��5�j5\r�\ZF�p���ZǻMbQ�U�W&�o�m���Bb��\0�h�j/+�\0fP���v��������U�)B�j�\08�pQ��7J�}��(S=\0�X+h(�y�5\ZF�>5X���YS\n�����J�ݤ6�bo	�,V��;��-�\rG�ԫ��5��ı����c?�&7�Jb�C��t�1ehl��E�}j\'}R�lk�X��	�kY�G�����kC�)A1ej�&5+q�Y䘗��L_�5�i@\r+��Ⱥ�.��\0�ʠ.�>�4�u\r�u��a߸R\0�\0	���	ņ�v�PS�C��\0ST�M\\B�PK���S�&��\0@{Ѣ}jͦ&���S��9fg�UT�q�PJ�\"iqâpgH�S�^��+:B���]ZƏ�m��=�I��-f�����a��!��ϖ�R�Ô��Xԉ��>��@�1-E��b�8���,4��A�ͼ@T�d�@C\r�\'ߚ�6��p싎s��X��!S�ĵ��L)�1Dg٦-g�2J�9��۩���R O��2�d@���333�-�#5�SaP��2�V�W�N(��=R��U�F|�s��,��t�2��,Vjq.v#��)͚�^Nt�sU���9us�}9�\\�k6,d�����t��2�u��O��5c8t�u�Ÿ���-�Q��\"���Z�cQ��jF�?Ƣ���f�cUϣX��`l\rFMF�Q�b�ų���ň\n�R����k\Z7�S��q@6ո7�PXGO{`^&=@00\\\'�5�4f`h`s۞���1?j�cQ��,j��a\n�\0E=ڈ�;����Ee�)cP���wK��ap�Ѩ5\Zƥ^̴P�*�\rr�i$2�F+���|��.	�Ǭ5�Ka޹�cQ?�ibʩ���J�J᎑,��Q�\Z&5*�5��x��bV�a+\\��aE�+S�)��T�앜T��V��kDU�2�t�x�i\r7\\50XL]X���1���s�^Z�qLE�*.�P!��P?኷�a��.��\\���\r`J�.�.���=��F�9)��blL8�0�Ű�CK��\0�j��bi��(bq``�\0�&��\0���haJ��(0��0#��)�Q5�j�(\\a2����E`ז�,L�\0� �7�LgS@0���ĳh |����V-9�\'n���٬jDU��b�:��ͩB\0��Z�]tL����ź�s-�X��~(��}JǢ)x��q�S�\\f���Fj�`�S���wy:bjBY8�qS?�����N�8�O�Ʉc�q��\Z��S��fW*�	ٚDeN�!��9���3X��S�7��`������Vk8�q�dQ2�Ai<���\Z��\\J�c���k��`n^���.*Nl�*m숕��n`�(b9���Xc�ۥJ��9������b��5lt�11�l�񞓣�C���s�)�Y��/-o��Z�9G˝f��d�u�aʳV9z����/�uo�H�ôt��<K�j:�m�:���ʺG�q���\\����~Ms>4�j�5Y�\r���Qy\\y�k�J��Q�,#T�mx�fk65�O�\"���٨ԫJ�JaX}�aĪ��ѱ��oV,Q�e\"m�7�7Cx��\0QLj&#��:s�c\Z��\0\\۔�Z(c�#Z#��Q9x�c5��7DX��n���J��W�0\0�jT�iH���#���9حw��=�Q��@�1�V���|�#��5��Rؘ��,LƢ�ee\\�8��6��08�X���J�\rP�r�,a��5[��͍��FP�S�\0��KL�\0�5�aqꦋ*b�R�j`G`���,��hԭ\\�&%�~��1<���Ԧ.k(b���8�J��\0 ��_��.��z/��H�`\Z�fa��!a�-@��\"��*{�,�ӿc\0�l�\r.10ԾF\'���Ե�Oa$���\n�C�����4/-Y�����f�E�S{.Y�b����ň�L\0	��6����0N�?\n͠�q��ݩF&fs1� �R~reJ�8��-g��\0����O��1j�Έ)�X��*��f�>_��ڑd���ZL�I�k���m�e�K���G�ֽ\"ې���d�qa��u��-a4b��M`HԌG�D�Z�R��#(B���R�W7?)��HԌ��6O�\r�C��1�=�`�\0q�-��Tq��Ѹ&9�A0>0�@\"I�P����dZ��y�q�a���c�k>�]2ϔn�J�5�\'���f���F8�>��)�Y�/-{�V��h�Y�r�\\���n5���R,u��\nt�����F�~6�#Q�3��x���6�?���n�ş�|:s�˻r5?\Zk���\rH�-{*�K�<Jb�hB7yj�Z�M�7�c\"`�\0�w0X5�V�]vLE�\\^F b�����/#�{h�)���;�*���u��L�р��L#~3wj͍GE�Z�1�����\r�/f��0X�,jU�\Z5������f�lƣ�a���o���7Ll�@1I+pX����,�bq�0��:� ��cQ���\ZM~�c�-D5\\\"w�/,�l��c�\ZU����c]���Q���\rJ��e,f��&2�D��-�	�j�f4�w겨�/C1�V��1u��R�ŉܰư�1�˹M�C>����Q:`)�\n ����ˁ�<�w���0N/@�Y��Ł����RL�W��=�����`��&\'��a�5p�\"}F���_+����Q��ĵ&�\\gRWq0�KL5��T뀧1���u11-N)q!8k��3���%URST`���W��P��ꖃN,�71�Y��uYs��jF�p�U��L������%Y��Cِ�\\r���(��r��S�(\03<`�ũ8�Ũ��5������q��PN��b��	��`b�����g�j�Y�n�&�T ��+5�D9�*�!��+���1�k��`PeSs\0��L@��b�=Y�[�I�|�\0u�0$���p�-HԎs�:N���:�ݎ��1bt�7�g6/�5���Ϩ0��a�s�k.>_���?V3\\�G*�NS��lb�����v����\\�xӤn~:äGf�Z�|�F���LX�q.�4�eɨ�*�\"��\rx�j4�A�sx�V3X�5Ů4ߌ�3cS�LC�C>�\n���+QZS�t�a�������P8����11ћ�: HSQj\Z��U5o�;\0�+5,Tir�\0���/e�����\Z��ƹ���cBX��M�Lg\ZX�\rb�Z��l�6�P�Z����jKh��Z�.�Z1P\\=�R�ѼF�}Y��n\'�fŕS\ZţDߛB�X�ء�HQ�\\0n&��f�ь���][1�Z��0�095(����U��1�[0֮wL\\_��b���bX����TE�U5U�U�t9��a&�{\0��Ę�H��j�	�چ�ȸ}\"�	�\nh a���H�!�L�}B��q�&��r\\\\f�K�Ϧy��Sd!����jȺ^�\03��js��t��7���3\\Y�73��\"� ��%�*ͩ�A%19&	+�X��&��j�F�j�!�^�����T�1���:\Z��`b��yL�R&3��X\'4L��\0L�c��TD�bf�Y\Z�4UJ°rݑ&��d#ML.F��df�f�1T�,�-�&�A8�I���*3�x��閈&}���P��I��Lgv��+��\0��\0\'�iJ�{압0���=�8�Ĝ?�	���ly��Y��>�2�ts�Y��3Y���͛��,?�,���G.����_�9Nr�e�Ɋ��c\':�N~Zo��f��{��:�+	<z[�t����n:x��5c8h��#��i�/��o1u�����Kj.7�MF�X���k\n�m\Z���cQwi�ZD\0U���j,a�7���*`�P�r�X�;m�@�}����v�\Z���}���Xǻ5W�\r���V7��MC�B��\n�\r�0��X�:FW��Q�F�Q���QN����֑;f��B��MaiK��3b����iP+�qN!P����,yLTD�����U� 0jU�㢢�Ԣ4O���!�|����\ZLj<�T�/.���$��� ����b�cR�(���Q?��,j&��RƑ���Ŕ�1�W�@3_T����)��` .-�L][��ً�b�Xc�/�תbb���a��1 8�^)LJ46v�4�=z�a�\Zb�f�����\0^�bm�����5p�B�1p���,�O�w���~��^���ľ~���7�Թ츀���D��f��\0�ĵ1�gA0�	3B����CXλ\n!�\Zr���+6�ͦ\0W�-0�DI$Mb|��dI�z��{%�NlR�+��4T��چ����t��t�&�Vk���kL��\0�H ͩ�jb0133�X���*��33��90\0�z��F!�N�Y�V�F�b��M��\0ĲͥwD4�@{�8(�8׼�!YJ`����u1�f��8DŤAW��beq�i\\����:c�{�����ɞ��f�3�˝�f�w�Φ9Ξ�V�9a����N~P�X�~[�t�r����X�c?���]!�GH��{;H�t���6��C�����q�Ә�7�7\'�F��>4�e͹�b����/���g�ԍF��\\k\n�\0C�a��qp�0j6�!+\\[X�o�p���͍Fxz�2�F\nb�&\'c���\\�q��M\n�ɉ������Q�Ȱt��\n��F\n���쪱�\n��)�q`ߌ�+663�F���¸�Wځ v���\'&��k���L빉��ɘ��qݨE\\YW��u˹��Jm�w����ޝ��*b�R������Tk�l#cV�DƏy1N��=vj_X�bK-�bU�LkN~�.����\0��kR�t\\]>t1�T�)��Tj&��A,֢{P͋J/��ъ�.�*�0��(�)�����	��p÷�LF�c�������b���b��\0��/�\r�&/�sɋ����d�\"bS��|!q0���a���\\L5��_>�&X�Ɂq�򸟨±0���u�b~��&\'�gO&$���dT���0��L�MM>�C~�p;�j�Z�v�15�151��R�t\\E�b��F^�H����R2.d�q���!��Ʌ�(�f��6�1�Zf����u�dg%T�L���ݜ1���Qx���q�NF\"v�h�����c���XCR�AS���\\JEY1��ԟe�*Ln����Ffo�Y\Z������F+�ŧzf���Y)p+��2�\n�6�3�:{!#�f:蘀�V\\�fo�6j2��`l`i��^�~S���9���\n�\0E9��\0��Č��\0�	8\"V%��LU�$M>Ll:�33Y,�����5#1�2�cɚ�Ovq�Ś���3�3ɛ�|�ό����]|��F#��,X�9yg=ٰ�~ZC�b��d�c69O�8���X��y��t����7\"3��7˧�_,?��h�\Z��7�U�9�5\Z`��Y��:Oƚ�kj5�Q��H��lj5X����G�`�xa<��Pâ\r�:��\Z��ű�f�!_h-U`�m>��Ѧ����({\nrN�,_��>|B�1�1���٤i砘���\"�ңK*��2Z�*\Z���1��X����H�^��\"R��,��y�iej��lQ�ҙ��\Z�F��n!��U�\Z6�*��[��F�f��flGX�!�\0˲�b��0�۱��;�z�l�E�jYC�h��F�n���jt�X��I����q��CZ/%ŔU��b꘧@,LƢX�M�Vl[�~E�s���0��U�Əp��S�]L_|��\\O�U��p2���N遺���K0;i��0���\\5}�\r0\rM�].M_sN�iš�\Z�J���0@�\0T7L^����`͢Aj��B�-A	�c:�����\0���1>S#r&r�o��b\'&���lZDAE�Ĉg��jq(���mH�L��Ԉ�M9�LM�N��3Y��i��a��ډ�2�z�h�����F��9F5iM�M>4;w�w*_�\n�Α�Ƌ\"�ƟjѲ�>�XŬ�l��>��aM,A���$���3�c����醙 }*H��,�I�DDٔN�a�[\"�&,�33Q~��9k:6#���|�{�\0��\0��WtD����=A�)Y�k	�bf\'�����f�	���*����k3_�X�/�=3.}9�\\���Q��9��J���u�����X�~N61W�2B:x���H��w��5�㳤�\Z�ќ5צm��t�N[�C�|\'�Q���n���Mōh�1��H�g�f���덂�j��ȉ�@U�ޖ�Mx�j�%������\n�X��1V8��ƕ��\0;�2\n�4�DԮ#�60h����X��q��.��8��t�ƹ{�E�ɖִQ~��R��R�F�cR�J\rD�͌��_�2��~�!+I��;�hQ�0`�,b���1cU��v�e�pS\Z\\�L]>�9d\nܨ(�ya�>Y��t /�sWDkM@�H,5�ct�|��\"��I��*�j[�7\n�5��\0\08�us\r.S\ZՌ�Qt���\'�����C5�D5�}\0��<s���8�31�1z�\"&��(����ת!\"�Jz��M$5�sQp��h&���A�����F�>d\\2�(\\�\0��O��UD�@�ٴL�B�@�Pͩf%�L�V�q�գ�D�P	�`��k6�SFj�>��Dx���9�#թ��A�	8�hwdOn�X�N��	��Ov<�OU�#�덙�$Ж�VN����\'�E�o�%�mL��?)�ò7#<�N���!�h���\"0����u(u����t�v�+�е16�aL��a�\"na�Vgd�ښ}2�q)Ӻ�����)�c5�#\r4��b�x��fR�zO�\'�����g&k5����ŋ>1S��C��ӛ��,Tr�����y��zr�q��Ǘ^�1O�\\��C���O瓴n:F��Ɲ�F��ɸ�p�#MFx�ō�Q��in5ʴ�V���\Z��o�-;��Ѐ���tX�X�[��ay\"��F\na��FY5\"��`b�\0�?s Xht��,1�v@��B���Y�dH�ؽLjUER��E��0��%a�F�S\Z(�����Ҫ�rj#K�sDƀn&�f�lh��=ڔ!E�*��1�����V��S\Z��藕u�Ǥ�Ł�\0��$4/���꺱:j�5*�Ё��At[��bc�&3��o�b���ƥ=���`m�jQwPqW�4��E)��s��bǒ���LQ1D�q@��o�����a��b���������C��4O�����v�@�O�D�,q	h���\Z�zt]0M�\0���j_��ha�-q4��b�0;�F)�TDK��.\'�a|�r5��1MLCO��1�Ĵ156gDf����A/U����q-!1�\\��Y\Z�53M0�����S?�3��Zhb�,@\'��r����ɹ\nʡ\\�@f�d��E�-@4DI�隩3P������p/�\"D����6p�LT������q�%nFS\Z1�\0t\\KCe�4�0\0�0+<�j���9��:3T�M@�A}�+���Mc���X}�������t�jF�%Vf�vX��c:̳X������T�њ�L��1;�����&�玮}0�:�f*8λ3�˕f���×Qι�i5���y#q��O��H�gX�t��t�f��ყ-7��m:�6�-5�n�X׳M�Α0�E��Hԭk��F �1~�(q`�B��m5��6�2\0Ha� ���n7\\�\"���\0�Ȇ5�(�i�`���@P0e0o�\Z�QM@��F�g�%��F�5� 8�>u1J��D����Ԩ���ܫ�X㈸�M����24.ڵ\0YZ�i\Z61p�@9�b��%��&��X�P=�]1uW�qeTj`w�t:�yeb^Z�d� ]0F�_tU�\0;�)E����Q��g\r0�5*ḸP\0�&&,ynZ��,SSP�QD@6L41t��a��*0��.�&\Z`�iq����a��%\r.?��i��\\	��a�������_C\r=���P���T��S���5��c3����=��L�\0� ��if3k+\"-�Q/A���q*�Z���3>B���5�*k\0a���mgK*b%�\"���	3��\\��񌚑��\0���k�bI�2��(&#!͓p�U�>�cxU`��F\Z�nF�\0��9�0���CR3�L�0p\\f��S��z��L�\0I����	8@8L��ƨ\ZP\0�q`��3Y�\n�\n�\0f~E�+L�Zͩ�\"L�\0��mde���s�HJ�F:F>��\']\\��ss���9�q�&1.5���:������æ*F���\\�nZ�H��u�����t�;x�\rEu��7\Z�ê�ۍ5�r��q1�Q������p\\bs躺Y���5=/�����[M,��~���֣�ݩVt���]k[�&mb��I���]M/��i3�⚾�]5��]�V�M\\�溺�i�y�is�CWK���S�=$M_Ԭ��yLU4k�y_Vm5I���j٫�f���}u4�%�ѭ^x�j�x\Zߥ��SK��4�~�t�H�{#5nb��j<�L�OK��i���i��\0WMK��W�11�D����\0�\Z��3�:[M][���֣�њ��5�K�Ԧ��躲�Mi��_�r����j��]4�j\Z�亚����]<|�Vj�Wɝ4�r4���u���M[���ԾY,��f�*��5����M[��K����xsѣZ�)�)SZ�_�ڷ}7M=-�,Md��:?F���4��r]4�NƗ��5:4�.Mi��jކ���&�~�֧E�4�^�i�|Y���4�S��j��# _��\"U�j�V�)�����4���ՙ�Y����i���K�M[�M=%����M/��V�5\r4�CM.M5o�����K�M[�i�馟��������SV���=jz.u4�~�/G�s����_��\0Ӓ/�g�gu]\'�Օ.p��K�i����jzOѧ��Rԙ��SK�u-Oֆ�^�{4�K>�S���V�{����i���R����JΥ��jO�H��>S8V��.��M]_֔�jY��;v4ԟ%�mO��&����3���5?F���&����t�a�s�2ޚ����s�U��cM/�����4Խ��ͩ2��K��٬�_hgWY�*�YVZ��v�u�H�+��>X���K�5�R|��\Ziw�\Zj^����f��zu������X�+�gʢ���[��t��&���]MK]f�>�j%�i��Ji��v4Թ4���Oֳ�\Zk����F�i����솧�}24Չ�i�F�~�5/85}$�L%�^���gSK��տ�SOIri��]]O�N�O���ַ*L���%��)�gRfg�f�P=��s�IèZ�?��Rt��Z�:���3��f����ʲ��K5e���\\�7��pr�͉q銑�{�$�u�^]!ז��7#������k�Qcq?�H�Q�t�5��>7��豇l�#Y���m}�L�8�SC�S�AC��#�M��r,g:g�lc�\'ES��} e��\0�u����`q�+�p\ZѸ��\'�X:�!�`: |�/�qJW��2�\0�c�M��q�\Z���O�Эʰ` *�BUn#]Lj]8�\Z\\�\Z��K��H��R�,*�*����0�S��!Q~L�-%����&.&ځ����Z�c誷����b��(\"���qJ5Y�Lg�w�,E�\r]y��Qp�\r���]������10��t�)��1$�]p�(�9���6Z�/|�l_�k%�X��%��j����D:��1p��R9��`i.?�C#U0�B�~���������bD��aH0�A\'۲�k�`c����i�\"�\'Ά���(.14�LD�\r\'�c.�\ZƱ��L:vJH\"�{&#<����M\n��4CS��pf|��Z���x�������}���BiĈ��TO��L�IG9ͼl�01+:�F� R�d)ŉk7s��G9����S�08���P���9恡����9�MED�ԃ�%o�\n�!������d\r\nV&�XCW Z�A:�A��\\jF}��z�XC0��ɡ��}�g+52��F��I��Σ�L1�?�+��8Gv�S�\\����.}9�%˦\\�)r銱��F���7aחH��F�~8K��Ӵa�R��u�H�P�X�R�Q1��5+Y�Q�:�\Z��խoW��\n.�u��M�4P5V%�V7�v��D�����֩��#CCh\Za�z\'�U�����遡�i�h��b���,O�5�����^)tk$�b���AtM��z��\ZoҬq&�ꞔ�L\r0�G�\"o���yj:�\\��k�����dԡ�t%0�㧡�����8�T�M��Ǖ�,�RƱ�\0Y��E��24j�MjY�qF�nVt�z`i�x�Wt�c�LL1mU6��c�\0SQVt`օ��~�����Ҟ��4E�b��ͤƣ�J��cq6���6�mR�\"߱�R��gD�L^%}Pk�0��u�T]4K4[5um6��Cz]�i�L7�4/�����\r0�OZ]L_ܦ����#S�����������������k����&�������I�%ɦ%ɫ��>�Z`zS��\r@�D�]�J���jX��Y���y��ų{��z�h���h�k���F���^&�L�CFg�3U����Ց��W	�t��i���J�j\'��v���f�	�r��`i�3h�>w85�\rzC4�K��|hϠ��4eu��Q8�5�f�I�%$c=Z���(�\r\rJͮ��^�2��]��h.���\0��jL�8	�fg3[�>�OAf�6���T5}i��\'sB�\0��l�t76�3�(�:��&�\'�L\\w�i���׺�D�Yfm�oL�ML\r4�����de�jFf�ޙ��j����� \\F�����,�Mщ���mI�XF&}��Y��uج���̳��Ε�r�ϧ>��*�s��y9t�<q�����n���S����Ѿ]0��+N�3q���:D�6�5Z��n5\ZjUƯ��jV�,�4,L�8���zzɫ��\r4�4���S���]4�4����<�\r5��nt�L���G�2ƖJif���)���6]4�uM5��\Z֧Kz�����W��3MK�M4�д��M_֍N�X�u�(��\0�SV�4ճOIf�~�����54�-�kVֵ5e[M]?]WMK-M_�Z������]s��\Z����5�.?�M?Pi����jiy{,��Q٭OK�����j�?Z�kQ�h�f����5�_��N�.\Z�t�I�-�j�pj�?Q�\\5:5P֥��jǝT�����>q5�ճOE�i�4ոYMO�7:M_�.����Z�[��i���WK�SSK��\Z~��S�V�MX�\0�����=YM.\r_Kq&������_Kp�j\\li�n�5.M_Ѧ���䳣KͭMX�5t�K���Zl5l�,�K��V�\Z��i�n\r=i��j~�5P&���i��i�����i��cSR멫�q�\0\r4��\0��~��R��V�4�55.15uF��jix�jj^���M\'��}�MI�4��\'�K��zK������SK�M.\r=��K���Ը5�����Xk3�\n�ϕ��?Z{\Zi���z5.?��O�\Zj�\ZjY��p�ͩ�剩��\0S�j^�z].�K4��5�/8���O���f\Z��u4�F����3zMO�f��~�w4���R�D��5�O�_�jj\\nǥԟ8��qc��jR�4��ծ���)]�^��1z]��i���M/������oCMf|�u��O�Ff��ϕ��5�R��SZ��X54��i�qY\Zi��%�7����z&����\0SM?F�~�����MI����^^W?mʞ��B^�KM]_�&���M5,�O�j�����>Q�t�/L��Y�\\\Zz,�tXif�~��4��|�梚nT�(4�33s�\ZǤ�.�]�4�_/�jzK�Jjqb�3:��6�ͨ��1R��ftb�s�*8K6��9Vk�˟Lt�.U����X��dJGG^Zn+6�m�7u��d���3S��uj+�cۋ��^�E��i�G�ZJ�J������jb.�C`����.�UWbA*ƚ���i.%��1�r�\0�S�H]�qYZ�]SS@��`;�,Lj&���Ɓ�����4CLn\'�}5*��o���tM�`�5��c����cV5�:�l`\Z����/&�\r]��*��cq93q,jY\Z����v�,��&��P�͆�Ҭ5�!��44t���f��l�\Z��Q�\0פ��^��ՌysMjU����\rC�gF�&\rl1�O�cq1�R�U�EՉΓWT�\r�h\0���(������.��g�վI��_�]SD�j�hY���uC`	�	�A4=�(�	�=�A6���C,SD]�ԸU�ό�Xiw�� �D�`���&��h\Z�4;����jZ�84�X�,�,�f��R�L��f��Ѧ���c6�lL0f�5N��,oF�S���3jb�y4�h�1z0�D6.��ԉz*Z�^���VfkR5#\r4�F�CJ��	V͡���\Z�lC]�LN(�ͩ��e��}cr3Ħ��wY`\0�)lJ�;C`�A��hlh��9Q���c�\r�F�\\�4=��!�)�06	|�،��k5L\r�l0]���\Z�#��[6�YO��Ś�lU�ؘ��%��H���Vm�Y�L���6�,ڌ���R��e��o�#}����盕a�:a��W*�#y#p�+q�E�ät����jV�%i��t��F����+R�r���D�D�jV�UM�b���f��͆���/����]�i���lM-~.���kQ��cR�Nҿ\Z��˝��m�l�gib���4��,�m[�����a��jtH��m/����KCK]5o�Q6�s��k���K\r,�ir|4�ᴲ�mj<�X��m���rO���6R�ᴿC�G�1ĵ�]��������.5�>\ZY��^&�V�SKX�KUڷ���j�6.�.�yc�+5�����o���4�oa:j�Y�Ζ��\r,�m,��R�VڝD���m[4Տ)�z��]#�ٲ\Z���j�t��K�ؚ[R������yR|Y�[F�Kf���K6\ZY���F��juiml5c�c�\r~�1��G�ҟ�_�q�E�ƽ-�ig�K���M�����OѰյ�jY���S�غ_#Sik��Y��O�2X�����z���W!����>��k��>���=��_I�g�=�=��|=��a꟣������k,=R��m-H�4ԳM�r\ZZ\Z���մ�jY���[\r��|4�a��\rK\r?\\՟i>]�����wS�3�I&Wb�Z^��-/F��\r,�ig�K>\ZY������jY����KM���6.�|M�>t��S�3Z5$��.Wa��j~��z�������R���i���K�~���ͳz5m.\Z���_�FnuY���S�C7�m~3��iii�/m4��Y��Y�ԟ!��?�Wc;X�,�csY���x�\r,�ig��g�jL��-����gcK>\Z_�|M&q6.��K>\Z���i�S�����\Z����φ�|%,ؚ^f��l4��k3<sM�^��M/�O���6.ԵM[Cj~���]s�vkcZ��[�ų�5o��m/�|4�f����D�D�.\"�MF�j3i�q#�˟�������Y��W.���\\�s�NN}T�NN=1�ĉ+�K�n7��k��h����r�+Q.��+W�r������Z�ƢwkWZ��cFy��1{���-i�x偦�j��4�L���\Zj\\\Zj����f���5n:�i��.��yCR�:j<�uM]n<��Y��5=-����\\ji��jǗ��Κ�kZ�����i�����cM��44��4ոntZߏ�kꔕ���Ξ�4���[�hi��Ɩ���i�G�5����ut��4�����e���55c��]+�y^R�ūI�;[Mo���MKM4�4��7:M.M.=\r5c�\rjv�	��?F��u<���(�Y_�΍-�=/����kZ�\Zj\\\Zip�z[%4�oѧ�SH�M5��\0�ɛN���:�~���p�j���ip֮��SK�i���\Z��Q�kS���WK�M.�OE��\\hJ�~��j��t�����y��PX�F�U�\r?Q�i�Pj���\rk�����ש���OE�u�O������W��r����(�O�.��M5?F���i��i����4���I���4�Y���MK4ճM,=����i���O�Q���~�SMO���|���i��ѥ����jipj�p��\\.���zO�\Z��O�Z�zg�TOڴ���MO����3蔶m4�\Ziq���i��j�qau/Q�ի7����u,��L��54�͛٥��:�_cMO�G%�X���9\\)���mjipj�Y���C7�ؗ	��1�i�n\r4�4��`j^�3��>��3jj~��\"�������.64ԟ#c7���t��I�K�=%�z]/#M?I���i�>Q���K��ϝ���.M?_�j�y\Zix.�~�OD�D�S��i�ދ�������i�둤��\r_Lyy�VV�5�|��Կf/F����4���K4��4�����q�i�ϒ^����>���ij٦���4�4��E*�����\0�֧�|MK��gY��i�f�����M,��2���{*TgҝY��-�SSYb�r���=Pbwfщ�X��X��s�����Y�9՛Xc�q��Y�~Y�r�tl��t��gI[�C����9{�+mD�F�����W\r��Q�]�t�(���,�_�_Kp���E�@�6�\ZR�L\r4\r���\r�����\0hԱ�gY��4\r04�Ѩ�Z�,iu�#І����,�X���t��h�h��&�nƂ��\r�6�ԫ����\r���sS\Z���*X�MŞ�ŵ�F�g]ST4[����a��/�V/D��qS���[��J͍e��1]�jUMh4F\rJ*���_s@�-����<횱�L[�&��S��[Z���Ś�f���mkWCW�MtĲQWL\ZгLL[�S�(c_�V��o�mL[5uo9M_E�}M!���S@�L8��`h��.�&��f��SLCт轓S �\r���K5S҆���h�i�z(h��4&M���j\\���ɨ��ھY�O��R恵��.�i��h3��ҝ�@�/?�ڕ/*55Y\rP�-/@��&�e��$�V������RؘqK�\Z�M�����D�%ME�D�&w�o��bnj��~˵�P�5��b%�]��&ƨhY��.WX�9�����dzjr�kX�5M�04��Q��\"Zbb�.&��������|����zb3{0M04L\re��\Z$�\'��3��\0MD=�m1��YZ���+8�zf�N	���с����l��ɩ��Fg�!�s�)�\\���\0�36ũkv�k�,��3.v�n�.U-b\\��W9�ΰ��7��nV�9i�I[�D��.������R��L:JԭD����5+Z�R���k��yƸkW��4h\Z�t/��|�4/�����оf��4/����5Z��ԫ*�5֛��ͬ֯�j�г@�4/��Q<��\Z�nw]U��җ�оf�f��4[泡bi�c��Ś-�馗��K�h_3E��gAm�F���U�f��5t�i�_3T�f�ǔ��c�M�f���j�4��[��B�sB���V�����]5m5�V���|�R�sF��w]fƯ����4.E�V��ԫi*�;��gB�6��h_3M/����S\Z��y�����M�i��4[�פ/�Zi��4.w5uo�5:[�j�;�;���;�%�_H�ͯJ_3At/���&�~�tܦ#_���sAbv�6��][�i��N慚�й��nw_A��;���s�\\�z��As�z������s�\\���/��|�4���K�jif�XzI��j~����}V��t�O��j�|�/��s��_3P�������\\�i�|��h�<�R��f�R�u��Y�|�4�lޕ/�^��tоa�>\\���թo�Z����ӹ�_3B��ٽ	s�j��������ʹ�k�_4љ�,Վs38٭�4K�3j_5�/���;�z�΂��4����33��ڗ;�����%�Z��溥�4.wM�j�|��K�j_5�-K���K�j�2Q.w4[���&y���79�nwKН��nw4.w4K�hbh_3B�t�Y��u�R�B��;���M4�k�O��,b���3>S�7�mg�P�h_3B��if�sC�h\Z���pf|�>�ϔν��=Y�ͦ��2Ŭ�3ϓ����Ŭ�2Ŭ���9�ΰŬ�2�Y���+5��#1�&�%n5��+Q�nV��nV�q.���[R��V�Zյ*�\Z5�[�\0Z�umut�]U��WE�N��w4?S��~�y6�w4?S���;���}M���;��\\�>���N��w6\r~�u�U��Z�)��ukq�;��[��C�;ɡs��h~�u��N�h~��3F�\0S:�z����6)���`~�y]�~�yM��+�?S������ڝ\"ǔ��5ժ���z�����j��Sb���ME�N�S���:J���Z�V�S�ke��l��j���й���N������U��L����t�J����-oW�;ɪ~�y4O��j/�w��O��-ʋ���X���5��N�h~�y�4?S��5~Q����)�W����l��}M�<�\Z�S����M��J�ݩ��9ߺ���t?S�����t֥_���5���>&5��}�,_��&�������;�R��N��w�U��N���N�j��wE�S�5��w4?S����W��w]C�;�΃�;����M��h~��(����/�sE�yn|<��.&/�\0IO���7�L���k��S�\0���w�4?S��j���M����b�����N��w]�~�t����v��l��&��w�T��N�럹����\0�=A?�s0O����\'�\0I\\1\'�\0g���?^[��`��-�?S����wM	���C�;ϩ�~�s`~�t��wgD�N��w>)���C�;�u5�I��b^��;Ϫ�K��wM�~�;]���������R�yM����͂O�ƾ���\0�w_�yg�3�Ϫʸ���jO��5�~�sC�;ʡ��ٽEO��·�w4?S��O��>��mOז���;���cS`���c)�H��w�cE���w6�cSQ����i����;���wgb�;��s��ϔ�&�?��W�6��w�f�b|���MjFS�)�����O��j��w4?S����³>^[��;u?S�7�?^[�:���?S��-���h���}����g9nX3��ٽ	���ث����?S����-�����D��6ϔά��O��>�����������N�����\0S9L������%g�;�:�s���������WM?S��?S�h\\�&�3:����=����Zͳze%�FfvgY�&{�b�fe�Y�K�����X�b��˝��%��X�fVen%�V���V�}[��Z��Z���֭�M,KR��mj�rԭj�.����k��m}�4,���4�M,гB��i��6\Z_3M,�K�h�&��m�oV\'�i[��ٶ1V�4�M,оf�_3MX�t��|��֖hY���доk�K=\"�S�c�bs[Mv�+ՋM����M/��4�5umgH�֒�Vkz�j��j�3M,���5cʗGH򴵂��mj���[5R�5m�ض֦����4֭-nR�],�if�~�sQ�<�U�kV��-6\Z�j��4ֽ-�5t�M-gB�^�i|�M,��N殬ysMjt�;�c�a5�$�j�΍[kM,���4��],�����K�I���5�[_F���_���͆�l�i��гB�B�M,�i|�M,��ir�\r[��4�N���N��W�����|ߖ���Oߖ����7i�t��o�~\Z~�������i>S����N����;����Z饚ig��M-4-t-4,оk�f�Zl枠�����4��\Z���Y���i��hY�Y�Yl5-�J��͝�.m5�|�VK���k��K5�/�����|���if�_3ak7�u�R���Y���F��s�2����i��ik��2Jũg���M-�ЖΚ��5t�k��٬ڗZ��b|�u�3e�t�lj��j�3M,�.�SY�\Z�贽A-�4�M,�KM4�]W//;�Z���ބ�=�4��M-t��M/��Y���N�ޙ��i�4��Y�f��T�Mf|�ͭj3e�u�f�mK54�M,�K4���if����@�HZz�MK���fY�2��6��l��6ƥ��j3u�lZ��,Z�,Z�beγj1*5�+R�ܭ5m�ֵܫ+Q-��Q-J�mi�ԭ5mj�����.���uK_J�z4��i���K=\ZZ�4��K4��4�\Zik���z4�M,�ig�V<��Κ�5�j<��Ե��zM-54�\Zi��M-}\ZZz5c�Z�5:k���K=\ZY�t�ѥ�ig���z]_�s�֣�`��H�tմ��Y��i���_�S���ף�Q䞛�/����z5l�ig�OԬ���5�kq�i�ڿ����y&�:_ѭjY���,���ߤ��F�����&�:_��t��-4�ږ\Z�y��-~�Yճѧ��V<�Z���5�E��W���[Zik���F��ѧ�SOUF��R��֣�Me���5>��YSK4��ѥ��-=\Z~�ѥ��,�ig�O�i�Rj���5}�����٧�}�~�ѧ��ig�OѦ�i�ɦ�z4�ѥ��,�K=\Z~�F�z4�ѥ��,�ig�K=\ZY��z4�M,�ig�K=\ZY���F�z4��,�ig�O������?I�u?I�5?F���&���&�꟥�ig�KOF�z4��ii����ig�KM]f|ү�g�d֙�)4������I�ީg�K]4�ѥ�����O�>�-4ԟ%�oI����K=&����g�E�c��֖ϣO�z4�MO��^���4�ѫ�=\Z��/k��=\Z�z4�\Z��K�zI�]]b|�u�S���t��ig�R�4�ѧ����.�zO�7�Զ}.�z4�ѥ����i�~^s��r��e���K�K=\ZY���I���K4��F��%��?�OL�g�K=\ZZi���OѦ�>K+Q�_K�ϔ�zf�R�I���O��4�I���ѥ��KM4��K=\ZZi���p�����������m�5&Y��fY�fe�Y���-Mfe�Ybe�Y��;Yf%�RV����]%%jڕ��[��j��[jV��jUն�|�ҭ��������V�������K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�Z�.k:jU�s_K�Ǘ4�+W�=3��=\Z_3ѥ�=\Z_3ѥ�=\Z�ys_mN������g�K�zM/������/������Z�jtԭǕj^��\0\\��Η��i|�F���i|�F��S�����ֿ\\��s��g�����/������?\\�vj����5�<�Y�j�ѫ|�K��=\Z_3ѧ��4�sjv���}\Z_3ѧ��gM~������i|�F��k;5c˛^�����_�i�4���5|��Z_3ѥ�=\Z~���վmz4�s_I��=.��i�����-�OK��=.���j��u�~���j<�U�|�F����_3��|�F���i|�F���������s��-=�=\Z_5�j�5�\r/���4����K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K�z4�i�����j_4�i|�ѥ����������z������������/������/������?\\�F�>|�=+�;��O�4�i|�K��=&��7_IlO�3�6��}\Z_3�i|���~��{4�i�����/������%�_L�3��uY�.k�\\���_6}\Z_3ѧ���g˙��_5�Η��i|��i��ϵ����K�z4�g�R�H����9O���ףS�͛��|�ѥ�=\Z_3ѥ�=\Z��g��?\\��7��sK�j_6=.���i|�F���i��z5���ԫ�.k�mc�͟L�|�ѥ�=&����_3ѥ�=&���jO�4�%�枙����/������/������f|�䳥��澚ԟ.x%�-f���t�g�K�z4�g�K�z4�g�K�z4�g�K�z4�g�K枍K�����ѥ��Ծl�5-=\"[6��ͩ��:�3,ښ����ͳk6��h���k��','image/jpeg'),(13,'','image/jpeg'),(14,'','image/jpeg'),(15,'����\0JFIF\0\0\0\0\0\0��\0�Photoshop 3.0\08BIM\0\0\0\0\0�g\0hSvV10trBK02ClEozQ-G(\0bFBMD01000abe03000033110000712600005e270000d328000091380000eb460000c04900002f4b00001c4d0000eb620000��ICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ �\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0�-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0�\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0�\0\0\0gXYZ\0\0�\0\0\0bXYZ\0\0�\0\0\0rTRC\0\0�\0\0\0@gTRC\0\0�\0\0\0@bTRC\0\0�\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0text\0\0\0\0FB\0\0XYZ \0\0\0\0\0\0��\0\0\0\0\0�-XYZ \0\0\0\0\0\0\0\03\0\0�XYZ \0\0\0\0\0\0o�\0\08�\0\0�XYZ \0\0\0\0\0\0b�\0\0��\0\0�XYZ \0\0\0\0\0\0$�\0\0�\0\0��curv\0\0\0\0\0\0\0\Z\0\0\0��c�k�?Q4!�)�2;�FQw]�kpz���|�i�}���0����\0C\0		\n\n	\r\r\"##!  %*5-%\'2(  .?/279<<<$-BFA:F5;<9��\0C\n\n\n9& &99999999999999999999999999999999999999999999999999��\0��\0\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\0\0\0\0��J�BI	$$��BI	$;�0f�L����ֆLѠ��TFk�G�&�H���!�6s\0�nSX&t�	$$��BI	$$��C��!��!��!��!x�<�Ɛ�j-����]�d�0�Z�����2����oekV�xq�>���nr5���򧇏�Ϛ��B?#�B?#�B?\r?nw>h���W;�]�٥#%\rO_�����<��#<E���oSs�s�B1��ѯ+_�g�J��d�Žz����ߦy���^(8��q���JQ�+�7k�ڄ���7�s����\'��	Ֆ�F��掊WV��sJP�[,��S��;Γ�\">�ο����\Z�W8ݘ\Za���|�R7�V����4�_�ӭu<$|���a�=gϷ���l�:c���\\&�k�\\n\'��Y3l[Lcw���K)��tu#ɽ�z޸RHVԾ�I��I�I�I!+\nQ`�F���E%��>��Y�����r�\Z%�=�Kv�w���]��̯%���^�9z���*�2Ǝv��E���%�Rնܖ�\\��;:s��IЖT���8�m0\Z/��{Q�TBaxa���f�\Zl���z���źu��ͣ+���&wokY��V���P*8�HƎ~����{Pܵ0��%�jKK$�$�\"��E���������f���^�[D�mLvܳ���FmCd���xd��|�����dΝmG3h���&855�Jճd�ͽ;��@6\r7R�t���J�����na�$V�q_�w�B����\"D|?��wC���Zׅ��w/R2��V�\\����RR窴�h兢��iP��G�����_#;m���&��tZ\n�\r�����ug;�j��Q$�}pΞf�YG�z�ܽ0�]������Q���M���r��2�����䲦3}��s7�d��b��\"���x	���g������������O����a��jk饲�h%���w/Ky��IEO��,��i��ty�/Nw�HYGU\\�L�:6�6��>7�x�T�`:Vw�i{�Ф�\r����sZ%I��\\���Y�Y�Tm\n�	���w����u���=P���,���s�ZM�ߞ�+�Z\"�=rΖf�L��_�{Kӛ��U�q5OC?F����b�Gs�j��[Y��[Q�N�3�@�����|˒�	E���̙���*�!���ogw\r�F���\r�\Z����$]������(uɵ�u�f�#��tw�;��(�q)WyG6�������ݖ������s��V�h^΍���!��lP�����w%V	�������˺���u�u�kU2f�o�&��.V�v�J��\\hh@�\\EԺ��dk��43��n;�\n�%\Z�+(\\Qݩ���8�vܴ斤�wG7K7[��=F3��fj��2��av,Es4��c<&��[g<���9Ew���B6im/MV����my��t1}.-�2S�ڹ�t�����hg�k<�����V�Q���ML,zs��r�+!\n4���=�7��3�L�4������ᑨQ�aYJ�qV���b���iN�\Zf	�8pK��^�Szw�˵�wγ��3�g����}=\r����M��,2�L�j���}7�Q�~�U�q�.K�9��ږU��9�2>S��躟O3���ӔϠ��88/B[h4ߚ�Z�k��`O&��c�H��z��۟�\Z�v�j�Yj�������3�Q���r�G�{y�m\\+$�\Z̭D}G,V�˚Uv����ΪN�G��E��*���W�.�Nճ0�����]��B�r�#M4��y=����h6��X\n3=w��hw䶸��u\'$R��j[�L��%���í]I�f���d�QV2�N�O+�糡+z���tC��綈[KvB��sY�/�%Ϡ�c<���g���b܁.WM�l/#n�\0��>{��\\��$�lzg�ߣ��ie�N��i-���R��Wc��n�픥�d�,A����nR��M���\\��ѕ��3t�Y8 ��6������\\�xI������l&Źrʴ���kS/bg���5:�]q�Cqv�[��	N؜�v��&�_�h�m�A��$Җ*��M�Ǐ�8�dp�֋����et�>[������g A��E�+|enЗ*�����wT��oC\\��GM�/�dt�����q�)~ܯqY�H�,�\nV�\nf�D��ۍ�Ճ�g9�=��a�ҡ����9mu]�j��+�X���C�ʓL\\7��5��:�%\n�cmb�Gu��C]T� Qy\Z;]Ǒ��������9μ�+bdK�T�$KJ:�;8�\\:�VgPA(�;��E�������=�*��K��r���cF�d����ZѺ��,��t��2�\Z-�%;h5�3tXBH~�6OB^���R�����4��{:jHvr��q\'��-����˥�]��q\\yV��5ZԸ�m�%�}W����ZVZ[XCe\\��q\"5�к涗�l�k���_%\n��yYQmk��1o)��o��4���Ϧ	�s�%zC��;uȽ����>���멭���L�.;�4|�9����Yb�k:Le�n^��%�2ރ��-b�I��Ml�+��&�@r�0�pJS1r�ƍ4�r�7˝Z�����^���f~����)���蔜�DZ����^~�Z�Z�	w�9\"�KӞ��ο=��T��K�P�\"�����A���nMUf��*�N)DԲ��Y�袺*�Χ������Y2K)\'Z���L�z�xM�ծ��L�ܮ��\"w�\Z̝�=2Aq駭��sb��ʒEZ���K˷e�\r�#\r��)�Secv�:֕��j���ډd�\r9�Z*u�\\��[��f%���ԁd�%�(u����{g��X���RnZ����כH7�t�;\\�]l�mK\\D���%K�\Z�X�z�ptk\ZC].�@�T��e��N��ށ�Hg�d�7VTSb���*?W`��\0\\zf<�>�z�~�l���˖m�����s����*�\"�V\\��u�Z�����a;K�*ڶT)�b߄���7bg��ȷ\rj�������V�&��nm�bo���je<��Yϣ��{�ꬮ�x�{��f[�6w�1�}���j�RpW�{!^�3K6:���2��V�]��\\�-\\�]-jΐ�\n7�e���K |$�|/��Qn\"^ު���=���?C��{=�x��ϣ�6\'Є|͵��|���k<ؽ�!���?*������*�Z}>Y�\Z{q?�HR< ~�������E�K5����=1����6�{�\0���Jnvy��ޭ%�\'9yC��CV\\%���ɓQ�Q�K���\\v�zy�m�x�����L���Ξo�?>�Fv<��G��C�?7s0��y�/����B��徾�2��3|o_\'������Y��Τ��������R���1g3!Ii���w�N�^�ՒI+�6���*��Kg;Ĩ�;�d�s�%/BZ�+��@��y��m]N�-�K;��;$Y$\'y܏z_���i�w��Y����Sm@�����\03\0\0\0\0\0\0\012 !3\"5A#4B$0%CE@P`��\0\0\0�\0�qFR����\rD�Z\n�F;:�@*i�c�ꁢ���!��u=<�&���<�4�0�����ҫY�R��S��j�c��I&���Ϋ5$e\r\rAC%\rDq�CQ�����\0��<����h詳�&��s��\0TY�r���h��j\ZEG#�Z��~��J� �מH)����k���5+e�-7�i�x��9�z�_e����>(#�������r�.RE�H�I)\"�$\\����r�.RE�H�I)\"��厪i�mz��;���CM��Vg�\Z穳r��%�j3rqDT�m�a���)���A���\0\n��lj���H �0�jڭVGEJ�?\"��c�]��%�?��/)\"�$\\����r�.RE�H�I)\"�$\\����r�.RE�H�8�%�\\�K��rQ�J%�D��%:X#i4�\Z5�\ZƍqF)e�:���zdօH�v�L`3�O1�UR45��5�������T\r�S�hTD��T����іz����~�S���H��U�kF�`J�6yZR��Ze=T�\nKB�B��J���v�}���4N�!e�eQ����.^44q:j�%\Z��\0:��)�!�\"�-�̪���\'ڪ=�����=��rc�%��_b{m-_9i49m\nJ��ڵY\ni8f�[�gl�p�A�p�T���Y� Vw�TC�Q6��������\r�Q�衴�i-	�\Zw�z�n�MMQMOGn�OAO����\0i�.ԍ�8 �\n�n�*�}�����d�=���U�?՞^��ym�h깻LM��}���	��G�ض�8cd{��9�)#\"�hg��ۭ����,mĈ�\'��x��eO	=�jDR�R�x᥂�������%�Y��E�>�L����7MjH��nr��y���*z�a*��\'���f+RN	Z&pMh��S9��P�4%hT��q�[�}eQUM5��ZUs�o,4�T�N��%)N�.`�C�ӛ�?�ߚQ�X-YCj<@֌�W�WEi���Z\'$_UuOhHqT��tN\r���S�}Y7�\0+��@l���>���TI�-���]Oh#��Ր���X�V+�gY�v\\V\\T��!��m�YSwS�O����j[)�^E�	f�u&��#��L�O�-�Ԇ�LN�qLج=?�{(��+�j�\r�>����j[)�_Q�8�L�����W��\"`\\h��Fɪ3wn����W��{#�G�>�\'���E6����7��M�l���?e2n�Hԛ����o��v\ny�(嘤{�ST<o����|��Qh�d��?>r�\0]�\n0�6�4��)�K�/>���\ncg�=��\Z��O��&��8]�]&yo�ʂN�<ʹ!�U����%l�(�\0F/�3����F�Ke>Eb��=A:�n��b�M�i��M��d;��0�ʫ���HT�c�O7����U�YY�7 HO�-����5�HL1�#\"rM�ȘS����{���K�J_%6�vߙ<�&�M:	1!�E�Xyȵ~�;�W��������2�J/\ZeE�S��?��o�ľe4��5���g��O��j-Ҩ��Jm�m��6��7p�\Z��<�\'�����<u�M���?H�-òe�/(��?���\"_�?��q�H#L*HЎi�P�>�T*o-6����O�Fޡ�E��/UGo�BcG�+�m�(t���_j���7_��T([�R1����C����[�P�����T;z\'�\n\rߴ	�)=MIw�{�B�\'b=ϲ-f�6�*/\ZЭ_l�\'O�/k�C�ѵd��:!̤���P�E�E\n���o-Yމ�p2�W������x���\nl0MهB�\n�m&�\n��Ȱ�U�����n���\0�\n�qk�0����i��|�lĻ*rN�y�G��y\\;S�.�}��~Juh�X[k��N��d·ё�6T[b�~��Q�~*�>:��/+�d:��C�cɑ n�ا�ώh6�-��Q��W��e6��\'�k�\'�t��8�fQ��i��d�{!��mЪ=���S�m���O�?�!M��?b�b�;wø6�q�7Tyi|��m:&�M�z��KX񔟩ߵ 1�L)�|���&�u�e6�U&��.�?�����ݿ��ջ#��.��I�a�t��PkQ��Z�m:&�M�5.�ɸu��~�1�voN=���Hu�[I�B�4\'�ewdC��O�u�?�ë�c���lnn� rUa���*�Tyh���&��6�Jm����Mlb��`̙���I�:���S#о�K��O�$۸�Ӊ>��`D_+�e8�Y�O�E�ZO!jɶ��m��(����\\:��4��a�qQ���.����K�-i����|�e��2M��#N�#������b���2�,�ԊS����m��O�I7C#+Yا�p�)�#M<+��s�)d3���u12�b\\�(�#w	��)�SUD��>4S\0��B������4��6(�:��ق\0lf�K�l\Z�S�M=:�\n����VM��R���Ŷ��1c\'.�n�*P�B�xP2e�!b�|\r��ΣX1(��V!f�`�>�Y��fgAf��E�Q�_�ٕ0�~�0��,.��cg��K�=Y6��I������p�ȅۥ����Q�T���\\[d{��Pgmù�����31T��b�U\'�Ud��\"(j�IR<WOs�~�xZF��=.�L�oD�)�!�_!<H��Y0\nx�/,0hh��*2gh͓�\0���Xgřb��&O�&q2f�,,2y\"�Xf�8�,�]b�Y��i��SM��F�\r��j�7�d�o��e?������c���\0�A�\\ޔ4����\\�+���Jb�.r.V,\n�&`�]�$�3�T�+�b\\�H���DX\\�*__���i��ٚq��ի���elG�T[�VM��M��\"��Xy�g�2>bP�d-����:��X��u���tz�K�.Ѳ�澧i������R8ߊq�j����wM�:�c{*��SQo-Y��7Q`#�����wC��6bX]���H�Ћ�f�m�YS(�k�v�e�E��ꋇ0bm0Gݫ�5�#���&�|�՝5��۳H��-��5�\0��a@�������1�ٸ��2d5;\r2��!S��Ĝ�<D�1ŝ|\nm�:m/�r�������uC��Os(t@�5�Wl]a�С,�}A��VU������wE��k(�N�&T��lh(w�_=���2n�Q�\n�k����Z\"���k���r�kt}����\n6����\"���H�+�ug�3��y���WL��_��B�l��.�t{�<n��HgMs*��!?��*8��M~}J�!d̻��;�/��h���3!lʚ3�x��:k��֡�V:d��dɍ�f�ю[��(T��8mo�8�3��ZB2�\0N�xiU�$��Ll���M���G\\��DYN�^)\r��4d̟�{ ,Յ�_��#S��x�D>�N,I�t�)�@e(�)�e$c�d�f�Hv��ү�\n=ݖFu�YI��L&�b�4ŉ�VX�-{��\\���^󖬾ˮ.�vU\"ؐ��\\�qt��8� @��:�h`��vҫ�\n=ɯ��z\n$:�\'Q�/\0p�tL�d{.~�_(w�����u�����d��׶�ЦU1��.�5��\\�l|lT����;���A,ʣa\'e���Έ���TX�ne.��s�W�Z[?Rյ�_/�b��¢J�=D���]�^\Z�1L�N\n\"�3��];^l�GX��O�d���f������Q��fB8�4m$��tK�v\\��ؽ��j�|��N�\\Bũ�MI��rH��\nmYԃ�G�@I�5��3z��?�C�W�\r(r�g\'akK1:d.Q�!��yk�о=P��ME������N�#U��6d=�/�U�$ą��l�4�a�`�6�	*8\\	�u9vvc(�i*)�\0�C`�X,�ɟd�n�ܛW��~�\'��&��dҊ�vy�b����:�9����N��+��,�n�SɂwwvPS����P��$��U$�wf�����pkѢt�,��-Ι>���py��W4�N��r��\"�.\"b��2�&��2!��Κ�d}�b�к�|]�)�c�Lِ����M|���1f>�UA�o����}��]B턄��~�v7z�d��n���BH	5�ج�S�`��\r�RU>#��๦\\_T��C�p1\'�m���:I�s���}�[�QE���أ��Ӌ��df|��F�$�E<.SLL\"��n�F�@K+��|o��Rn9d|W�Z=��H��!*z��nÙ|t;��H���G��[S\"U��&R>%`�~��/d��\\HSt�#���8ؖ�����q�\\�>���;�SܨiF8��.!����{���2-ِ��*fG�[ӂ�@>����gY�\Z�cs�R�)�2vd@��HM3�$L��:�X�Q���;�C��cs��?a~򦺏{����E��츋;.\"~�O�Yк<]f|�#�gtn̊VB}�D��_�Al�&dLi��S�+�+���tB�=̨�-/D����bU�Àz(��z&E�Eٯm.E#2���X�ӊh��	�L�KI-D�ٕQ-\rMP�KSNK�GTs��_�-5UJj\n�\"�ʞh�a:Y�hj����b��f���)ij���k��^����Z�*���\'��p���Pٕ\n+�\"����B�\'����������)�j:�ʎ*k��=娣�2=țಬ�v9P�Dɺ�7�D���},KG��L�v�~�A�߇H$VUhK��*������m�gqh�j;t�8��ʱ���d�<}ʏ�i<6p�YR�,Us;�T��T\rM:��+*�9b�7E��Q�q����\\S��ux&鄪`V<�KSi�#�S�\0bȴɚ*�<��k�8����a��R	�[��IN<�c�_q���ئ�����U��cEQ�{\"�6\Z�5m�U�ܼsYU1M�kYTԿݧ�P������T���QGs\'e��,���������es)%�7~a���|h�c���NU��j�OiU��5WP�&�p���U����։;Z.��L5��u�5�A�$є�*��A�j��%t�;��<V�Dg)�vX��S��tB�\0q�).n�:�}o��=�Kd�j��������u|�\ruV}�|t/�P��YC�f9#��#9��H�rΫ*�Sٕ\'UOEQ%]�_�h�����5_��\0���[^�*�C�\'���#�\0!<9�y�B*�>6#��Ro��HT�b�����-�W�}:��x+6ތ�[���\0�R���?9��3�k>i$���̦�I\"���i���ϰ���?��oFr*�#����l�B,�i�Y��3Yր�\\V㏼S�uog�g\\���x>���C�\'ʤ?F?�+`i��-EM*����+����:�-\Z�#������\ZzY*)�����#i ����su<�+E�8��6�`��UEE}T�I_=,t��R��)�p���Kbs�g{^g��˝�1�ڳ�i�$kNB����Zr�Z�T���uV������Z���&A#f%,lH�G�\0*�ɮn��6��.���\0VL���G��m�����\0$\0\0\0\0\0\0\0\0\0\0 0@!\"P`��\0?�\0(�쬭KP\r�����y����#h��b&ȡ��8��v��9Ɏ��nk�N�b�/Uz��^��S~:\':�Mvߌ�|�^G��������m�xG�՞��#S\0�x2WYy:-�xJ1jn�3 ��HLɨB�5lM�V(h:L�9oS&�p:&-C��j�-F\r�u��d�Y,�K%xY[y�����VVV���h����\0\"\0\0\0\0\0\0\0\0\0\0 0@!1AP��\0?�\0��&M�I1H�dۥ�&L�%\"?L���6662\"?\Z1���[���CS���Jߞ���T��1��R�Dm�Y\"*|/�DH��+�踚S�)�Q��5S�ڶF�Q�_��J�1�?�c��$j%�50`��	TQ���J6��&Y�dɱ��7f]\"$y��bjc�_�H����|!TH��S��5.D�Lt�T���>D�O�������R���$`b�ԙ#N��b8\\˥�zW����1H��.�G�I���*\\�C���f�����-H��ؗ���ʣ�_�>Q��Q��\'Q���\0B\0\n\0\0\0\0\0!1 0AQq\"a���2BRr�#3@bs����4P����c�C`���\0\0\0?�\0��%�%��F�9��0�>�\rA�-9b���p\nM#\n�)�y���J��-S�+Es�8~�8�M������x!�ajp?h\'Sk:��_�N5\"��Wr�u\"fV����oӋ�;�[v{�Q�ݝ�<K���U�C����S�}&�_�Kt.��՚!�Y*�ܯ�4��I�����R�Z��f/\'Tu3L��B�\0n��o�:/f�Rt�۞�n	��~rB�O�?�yJ��\0	xp�\0i�(����&��� �����~a7�\\��?PΗ�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o�Η�o��\'��|�GmQKOP�*M����bs�����h�=\n��>����C��\'���rxnW�\n\Z$�Bc��\n�:w�I�7�����Uf�ׯ8�4>k���M?C<Bc��x��a�\n��b^�M���7GO\Z?��	#��T��.}73�|n�w@{�Sg�*��+:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k:_�k2�+z޷��z޷��\\JʢʢʢʢʢmN�x�MӺZ��[I�9\"�����2�4}���P*�J騴t�\r�n����	��\n��8�����q����o�e�T\'PELN4�o�W*>G%��Dd��\'��T&=�Ź�^�c�X��y(p�}g8��5L4�&��a��;���,ܽe�-��f��o[���G��>\n,cn��M,~����s1�#ܿ쿶�����]��R�)�0��P�SM˷XBuMΧ��Ѯz�7���>�:���t����$�t}���/�M�U6}��o��w���X\r���r�ﮏW�$;)��n�g�U*8InJ�kh�-�Ǌ跲v\0��B�&7�ϼ˸\\�UK��$��h�4�$o%2�D��^������k���C�\Z�L�wF������\0�?v��3|�<Z��-��	��o��)��vBp��\n�7.��~j���	�}*e;���Ǥ��ڢ�0�8D6e:�4u{�Ju�M��Q�7�*��L*��o��%�����ª�Pa-y��)��U�:�m�t��z��j��`~�H��P����&3��2�#{?Uk��J\ZN�y�zӾ��@�>��^/_����*�0K�c�Ѳ�c�o��\0�oF���m7tj��[�7|��FeS~�̺#�����L��J�PD~©T�wC�\'t��3�eQI��z���߼+���Qv������ʺ\':�7��\0�M�Fc�eV���}����ֺ]P��v\r�\n�O����\0©4��21� ߒ���\0���\0Q��@�V���z�\r�\r�.��\0R���]��K�x��|�@쀔ޮ1�>��u{�u��XQ�Xlr:���u���F�ѵ�X9Y�iG�#m�+�Y�-�lz6؉�Sl�E�P���֧z�u#r�ChE�H�N�@�(r��wrS�?P�G\rcOP���*8���)���EM�[7\\�\r�o:�N�G��9#d�䀳�z����A�\Z���\Z��g}���i���E9��g۬v&�i\\��u���u;*rN���h�w4,��\r�T�-��c�]����eDm�m�N�ԍ�T�D�w\r���,��i;�K�H��A\r��XvF���v��eDlqTP�rE;�\n�P5��,v&��QGc\n�Qk�,���,�N慓�^5(썬�7cy�.��J$�`��?�6i��H��Cach���(�͔�5�L�����1$S�����v%�G`]�aB�c�lw$Q@o*���)���I��a�QMG�:�T\r`���9X�l4p����gR@�c�%Fܢ�j<kŰ��S9X�Tj�\"��YX[;��P]�G\ry����o��@����9�!�aاs[��\0]����(��f��!M�,�,5 �nУ`(�+r�<���b.�D\"B��6d�\\�G�d�w4�aEB*3Q�c5dQ��B���ަ�QE^�f��t��\n.S*�;3�bN�F�\"B:��SgҸWj�G)�����S(�qޢȕ�(�vQ��S�ⅷ;m��F��bm\n*-�\Z���x�[�z�+#����D�x/YO[.(�WUd_>k����������I�1�B�ٱmN�v��^����G\\r��4,��v�6Fʠ�]��J�g^,�%SGb�`9YS�c5�@)��\'7�a��F��v�@Y!��!�ʜ��IA�;3��*X&̶��U��F��5���ua�&����c��h�;����(�B��cZw!\n�efk=�!��j\0�R�l0���<Qn�}�\Z2S�#���ꝁ)�_%��é:���.K��nѩ%��v�m:�B6���k�6p�-L�\rP5\n\Z�f�\'GjF��r�Xqԕ;��9X\\��P\'Tk�݆j��YZN�\Z��c��-Q`���[����td5F��6�{+0��T;R6GX��4�ؕ0� w[y�^#X�&Q;,����j�K�cf���W�5!ث�����pA�;� ��F�+2�+ڽ�c��K�RMT�+��	G\\���̔��r�M��qAT�u�Q(�uM���C���w,�\n��]\'�����u���j�-���Xu��\Z��vѨH�]%+��Q��\rSsw��e۳\Z��F�Q�I�(�\'bvw�x�\rȖ��z�=����M�I���š��\'fvWTqEcf6T�M�\\⋯4�W��)��u��Q��-o9B���$�ׁt�(�IN���M��2�F�����9�oj�L�u��KMN_�ruGV�tbc�-)�˩��S��/����O�:�	ܯ����&6�$�z�)�\0��E̩O�a\n���?�:�Z�$0�\0�FWd;��Z\r .��S�c�!U�iø�\0�Q����fu�RT�uH�AϏg^�KLJs�q�࿶���\'@a��٦G�{�tϼU�Sk:��}��)��n�%��\\2��n�ѹ=\Z���1l�L�`TK\\A�|8�\\��&J?vU?t���!����7�U��&�KLx�����ѝ�S\0�t�e>�H�y�h�O��S��xq�Z��\0��cī��}��v�e:���ko\n��tY�G\\�2	�w�Pf�Q�����}�q���}RкT�*��Ǥ���s��}�D�(U�����޺(ߤ�rz5R)���WE;�\r�/x��Y��*7.��s����8]/�!UuH�Ɂ��tǊ\"�︰��mi�A��4�a^[#�_=@z��9ރ�TV�}�q���(�����T����cѪ	�]V֦_�D�k���mu)�g B��= �7L�����eW���ѳ�l��wR�L����mr>�+�:P���_/�SN�v�������(\Z��N�Ҡ���y\nn��4���\\�{r�OKQ��l�7jR�\n�V�-��_5E�=�*��\nuwQ{�t��zC�ȕ�Zxī�ECQ��Ц>P�\r�(sk:��J���.���r�J��ICO���?��ۇ#k�+��*����ʏ��н��*<��\n���r�]�_&M$H*�����Qe����:���q:�o>\n��\"�Y\Z=\"���Wp+H�&w ꁿ6] �+�T{��5Tj�S����5�\ZsϴJ�n�P�T�ª}���zn�Yv;�H?�T���>�mw%���}뗕}��{��T�ZKZ���ݕS�U?�t~h�삺Q��u&�|3OuF�y8�I��V��ҩ{�۩��0?������Ul�!\'�Q��k�8(kI7\Z�;:Po����jUa���/7�]��}�U>�~k�O�G޹�+�*�\0Ԣ�I�7ƠS�v�+����:\Z�\\��v�Wt�pE��N�D�t�|�S�r.����0�CZ��S��%�I��z!:���]�\Z*?����h����z}V���nWkGbѱ���O�����u��(Vo\"�2�\ZKh�� ��]�M}�K��}|ք��a4S�F~hV���B5ᗈ��4�\r�&w���؃�S��ȧ�,d?X�-�pv���\0+\0\0\0\0\0!1 AaQq0���������@P`��\0\0\0?!�\0��_��\0���S)%��E��FA1��XXH�e���Ά�n	j�C{�S�)��XgEt�e8��BjV}��K�\0�?��:>�_��Lz��G���Q��2\0[I4x�@S�?�U.�_�\'�<�3:(xq>o�7n\\�v�ݟ.\\�r��tU�J���,������`�/���������n��n�����D\0����Ge������B��w�}e�\0�n̹��ۻnm۷nݠO��Ϝ�c���\n��\0���\0����\0�����ڣOch6<��M=��C�4��*�gڋ(����3�� �|�f�6��䏟�jzOLa4�}��7�\r� E;Lc[�Y!���Ŕy��H��긮��P&��knu������_��� �����b���S����/9�����f>e��B���c�T;�{\'y��bŅ�6\nL1q.4k5��\0C������\'�?��M��G�Y*�R���2�\r��PD�P%ODD6J��긍�=�]�]��3��\nXTa��ڣ��k�sR�<ս\";ZA��1y�QsAaa���X�<��61��\0A�Fhˏ䃿(0N�6�o����C��W1ݻ[�b@;��ui>M#	x_رРW�����\r����Ye�\\O�sKIZfB���ݍ�i��\0�Vz(���JY�<lj�&����G�p��	k�\\}�w���jh���a2%��D�1@Ž��Tߔ�8=`�.HQ�s=�e@�|�jD^��5B���?C$c@��<$M\n��\n��X8��|�8\n-��t[�\r;�p�(�$+o��@��|,ʇ�>���=�`5��\"L�c�.)C&���f�m��\n���Oݚ\Z{ �qt���}҈�e{~&B�>1 |*��	�rkc�`��C�CiA�L݉�\'�$��B��RGY<я�#� m���D<qdS̮@$\r��4d�H܈�\0��g��Ψ}��S�\\R{e!=��ç�ƨw,�!��g��\r$V����g��߅W��z��/i\rd+؝u�*0+�->  ��>��x,�R��`�폳>�B�-��5Zū� CS�X2CXf�w�!|��y�+��VaOuw�G�q`��d�L����N�F�\rGN\0���;�26�6��`��5��+�&xH��݄}@��~n��5�(ǲ��C���7�������9��w�̐�0c�9�f�[eq��(C(�	�-d��EP	�\0��hr�)�V�|�A8\'lu(�!Ф��S�lh\"�N:g�p��-��J~��\\b�a3�΋h(���4!h�L`_�= ��F�)�����E���%�E��!�o�$I�\'8�#)Q���h��L�L�f������\'�\'R��\"�����\r>(���fWF����<�{bx�>1\0`2F�� t.�J�h�9j��ܚ��K�_\n\"l�a�p��p��F��)�8a����96�b���4![&�l����D=�<�eO<��\0��n(��0�¦ԱJ #�L��)���U0X؀��_�d/	���L����2�ć�$5�r���&M�o�̉-�0���A�c\r�|�	���S$�0�FL+�Pl���ݡ�$))~�\"ڱ����($\Zخv��ȇ���(��6<��ZY\n02�E�;�Sx��@쫡���d�*������\'p��� <*�#P���cb������c ��7@mW\'M1�2�/\Z�1�0\0��E��\'�2\r��heac1Á�g�Y�����(5�H��)B��gw�~H�����H�)`7�how����ζ������A�9T�,��+�6� � �^\n$0e��ބ�z��3����b��%��5�6�ZA|0	��Á0�ܤn��$���aJES*�\r�k#O\na�`S	(��kȂG�Ἴ�W\'s�v%�$S��P���\r}�\n�0�(��\r�}4L��Q�+7sB��5��BrU0񀎃��W��A�K�;(��I�3�aDػ���OS�|)�3@5��D[\r��Z�N�����p��G3����&\rkh�A���d�7��I��$l���m�W!Ͳ����)��y�=CA�N��ly���;��j\\r�Z	�@-�����8l���}\"x\0�d��\r)�j��&�\ZS-#�V�@1��vm�v��;�k�\r�0� X�;���a�e���V�Aljo\"~��X�\\�nKM[����t�`�%��~��ԛ\\!�ġ&K��hb��a1����l\r�T#���$��@X�Ir|KF�)�G~h-��)�x�ȍ�h�FHe�LQ��`�l��C�CnoCc�0����.���A���Y��i�������C}��,&Z�\Z=�����J�ll��,�B��4*3����zb�i��W��\r��f�9لvL�W��b-������e@�0l�YGQ�AP2�� ��ƾ\n�M�l���z�5�\'V�#ʕ�D�F)\r\"�;��5c���C������E�]$�)Ssl�&74��S�vՈ�v�n�ve�2�5�XPX���+�<��ȹSn���\r\Z�r4B�Hf����Tw�ٰJ���P;X�~�ǩDa]�(d�j�2\\(�ʊ���FbMhm���>�5O�3#VR��!���)���	-��	Cyq��p��x����r��p�2=#�`��a�j��BT��U��U �6Pv_!om�@;!l��8��J�[.�@��T8n�1Q`Б�K/[�W��@ypQ�CC�2�b��b�YB�M���-A��l����B>K�B���iC��H��f�e�}�(E�k�\'�f]p�Z�,Ӄ]\r�̛��i���B�bYp�����Dĸ�dP�EnX�A��uz�\0�eΆ�+Q�!��=��	�p�.\\�[]����`%\n\Z�0����aw\\vd�zs�c1�Yd=�ߣ��[���6m%PsJ����F�c[�@���`��yآbr�b��OF�jcb7��ˮo�]����V�2��&A�(��Fh���*��0%��p�R��J�&�~��R(f�?R!�0�F�\0}	����A�c�����d%�`�?���WFV��r�E��Ep�	Ͼ�u��+J��(y�t~�X�%&�\'\r�ִi�E�\'�����;@����3��(V��́D;��F��дw�;�L�Ҋ�;(�b���j~��l���o����\n^��d�Ōbz�{��~��o/�.�M���?�Q�?��c\nO5��m�J�-V+.����\r��Q��e�5�R6n�]Ijpj_:?�{C���M�Nۊ�����8��{I�7�i\"�|�[�C?�Zw�O	���:o�d5�zЦ�8�WC�k�N�9F���~�wG�\0��-��\\�0���E6z!�W�`��4w6P��1��?�Ié���9~/sqA�Լ���U�����U�������D�\0MU���6��F\n�񨢡(����8�|�!��?������L���k��yVS�K���Y�]@�����2A������Bi���L���.laU4��:�[�؃�y�*����?Y���.^��A=`�@|�����\0��h~�Pd�J-~�1\0\r��d\'�^���m�N��y�`2|�u�� fX�G�قV�_�`z�h-	K���)\Z�4�|-~�6�C���q��2%���\0\0\0\0\0\0\0\0\0\0\0\0�\0�\0 �\0\0\0\0\0\0\0\00@\0\04k�4��8b�000���&yi\0�-��L �N�G�\r@��+�P:`�\n�����\r2�?�t�\\<,�Y#��`;��C����>�3t�~«4i��+J<<a��H�A2>�>�4]�E�e\'�]6K<�~�ҠH�\"���,�M5ʋ\rE�G�ƌc	��X��q].i�Y��:`�GKp���E��,�W�gR�-��Pː��k�Š>�?�Sfqj\r�p����8Aoۤ�A�\Z>��W�\'2b\\*,`�*\Z�B,e�+\r�`+�mE���\\�$�/�1X�fn8�\0�l�Mjn��T>�\"u�HN�B�h3� �x���͜�:t|1W�-�E_zì5H���Q������=���T۞�D����\0e�)�Ŵ; <�a�����t@��^�����\nL�c��Z��;���r-(S���,b�J�h![<�L��1��/��~�AYC7�O��5��~z��ɂ���(�>Y��d�R���M����a2�B!�$=U\'P�6*T]L��������(탄�5\'x�F��(�m)H�b����\0�@.���C��������a���\r�ѝ��9e�����C�s Ā��Z�W�\Z�ty�\0.�!6w�=\":K�Y<C	����k�����&<3G��=g��\0�}�+�<S�>�\0@O�W����\0\0\0\0\0\0\0\0\0\0\0 !01@AP��\0?�\0w?9\Zd�Ǔ&���MLfD{:�d\n�g���R��I�ky��6�a�������9����SO/S�O�lXp}G���d8�a��1�SL=\"�X�\ZcL=u�ކ�}���\r��ٽ�7�f��l]�<����#E}�aE ���y���ɒ`�b������Ǯ�W����~͚�8��o�*-�͊�|���\ncc��z�F���F0��k�rb@���0�9\nH @�b��2�E��)6d	��\Z|���d\n(z\nS�	���Ƌɜ�p�Bde=<�~@��б3i�$!O�!�$�/y<��v��nnjc1�̙1��p��h�+��\0\0\0\0\0\0\0\0\0 1A!0@PQ��\0?�\0sm�����0���/�������\\��l��\rB�彾[[�0��	���a������-Iy6�;y��G�0^N\'���N3.D�>Lu��/����\'7�u������Mۘ�Ó��~�����nX��jy\0nq�~�wm��o!ǻn]5˘���HD�\r-�\r��A���l����8��+nd�kQ�oo�m��K�H/��^<�bw8�5����l�j�0��8uǙ2L�Mqg#HC&�i���ܐ��]0����y�uoQǧ�FY�����\r��}�9L���^���/x-�9K|c��|ɒ8�mZe`;���^��wC\\�+B�n�ʾK�\"z�Լ:O\r�\ZM����W�����n\r�Z��c�����3q�	��80�)�C8����DM��H�_䇃\\�����;�a[-���e��l�~q�fH��:�G\'q��\0)\0\0\0\0\0!1AQq a������P��@`��\0\0\0?�\0�����kV�Z�g\r�a�[ܚ�̟,�y�`\ZH�*�=���^1���Q�F�$�A��M���Av��Q��7��\0����4��{#0�}�[=\r-�vB��\"�NXa�	8w���	��(R�Q7�D`V��\'��h��v��P�%�h����\0���\0�lٳf͚0lٳf͘tH�[�/���|�h�Oj�}\rd<�<Q:��	H��	b2�8(�a�X���\"⇸�S���a�9Hht�Pm�7��p��YF������)���A�~D��,����4l�F�\Z3)��ADHOs�kH�O��\0���-�\0�j������P&/��dF=h!R�,|%=��m?	�c�e�6>r�h�+/�	�<_\n .�����,T��,X�	��`RO�y�1�vh�c�E��I�U+��h�fܬ��!��݉�1�;�򉒍�D2�~k�jW,Ñ7ܘ���\0!�~��L�f����7����N�D�d$���v\0���R��5`/��߫�B{A�px?�p�@O#�!\0��\0�L):�hh\r�DO�xL����M�Xh�13q�#�#���Jk�G41|��3��\0���A]�G���ĉ�?`j�4�Na\nDB����=�2��~o��&��G�U����3��/�\07���O�ʑ���l�|<H�k�W�/F!f\"��I�c�|��p�#����	dV0پ�\'��ɤ\0?{�A�\0Y\"Dh� ��3�Z�4BW�(vO ^��\\�\0)�A�vmmG�ؿ���Ǐ3�(�~����w��qdm�b�	��$@�	?�e�Oڂ��kO�W�vT��;�ϊ7^T6h��};n�0`�w��j3�������~��U�F�[yHi�Huz׊<^86�A֤��1�#ID�3G��$]�����~B�.�x���`2YО4��_D�^9<&ݫ8\Z(��e�H��)؍_9ywh��T�&6�������T�q�1�z^(�<�����Y�p\"\n9@!�hU@��,d��mH����\0�q>x�y�C�2�IxƎ�DH��QV쓉�L!��Ch�_�9H,�\r�1�$ĥ�q����1\'z�<bIߜ\"\n��M�W~�W	G�]��ф�yp���b��8�����D#��6G�\'���,���e`5��pBw\"g��\Zo\n7�܅�\"��q�n�q��{�������v���n��8�|�N4\"*�$�x�B���dK�Vm϶Fsb�9\rX��h�2\"�\0�!�8��=���?�_��?n���������O���dFR)��ViƋ�$&�G2W��O\0�hp��6�Д�dy�Lk|C4���j0NYa	�8<sļ_k���>s���<͆������{����D���^�&q^\0�bc�f.�S�,��\'u��i�~�lm#���S`��$8NQ#c�ڽ���n��ׁz���&��_�䷍@v�׎	�Q�I���ʐ��a�9Ŋ8���dX���v�W�n�Yx�[8�M��O�]��L�VS�q(K��r��Sx�w�X��\0������6p}���3��c$�F���	�#�u#<��\0��7G�,�z�����!���u\n�༯ُ��b����#��_	é}��^q����μU���4�.��_�^;џ��ڞ83ڱ���!І�k�4��MOr�8N���c���\"�k�a�wS��l4���H56;����H{N���>R�p�\0}$���I�Ϳ�6Z����F�FGk`���K�WU��J%`��\0\\��E��_�^X\"���Ԏ�ú^�#�&Pď��^>�w��:}�	vE�|��&@��C���/?�������%�\0x�\0��Ta������z��n��F��/Dk3�a�{^_�\\=\r�3�㝅�f]���;:��\0�\0��.P�r���_�j�a�l\n�����䞜�T��8ru��Ă���e��|�G~�����@�7�;�ׂ%F�	�n1�d?x�q!��6�JYx^�d=	�2�4\0�]ߒȽ�h��D�k=,���4�\"x��2�\0���t`�nyxx8~��O�.��S_P<��<!!k�����ݔd�,��b�)�8�q/�%=)<p�~,�ՔH�!P�V3)���|ۏ�8��f��؎\0������ۋJ^��,���\0�pK���v���Ό�/i{�$���;�@�{-��cj�Mװ)ak\Z�fl��x=8�O���w�� ��DC���CZ�	E�4�ޅ*R*\"@\0�;�H��f�P�4����<�}�ޭ3S�\ra5��N�Y���Ctz�n\03!琖Fe]����}���;x)X��\n.k�y���d��&]�`A\r�ؤ��6u��rǰ��d䘦�1E��p�;&{��\0��`D��ӚAN�2��������ޥ��8[]�&	:Q���P\'�&s�J=drM�5�V�6� ���q��~�?��Et`s?c�6��\0����s\ZJ�N�g��D��=�7��~!�:�.6�e��R@�8�=`\0\"�p�6�)Y~M��L#��p��;�n��.9�NE��+R}���P�����7�ލ0�x$��D2�\r�öG���\"��\0O!a��]A��������>��j >�m7����O�ۘ^�D��8a;��y�y�u6�+n81��&��D{\\Z��{��G�W�\nuIOt���	� 2x�`�؁���e�fm�IY��V��	�m��Ju��G�Ƌ���i^K(��{�6xp\"qv�c��v%���8=�,$qa�I�m�K,m���^#������9�������!�g���.�TS�B+Os1B��tc�gC��v=���Y���m|����;��e�S���v�\r�&Ye$�4�����`��Jv߮��d�^����.ھ˅���lK��e����~���o.g���\'=Ұ�KŹ�\r��w:Dx�\'Sp^���|a9�w(7X�M*L����Da���K9��^[~����y!�qO�\n8���45��~I��3��R���\r��8̊%H��@ώO$�,̄`�^�z\"/u!�a#��O�y\n[�(>K$�h$a<�\n�\n��K��>1��:��������V��x\"�gR�xwU%36�s�W��8ׂ\'�.�|#:1{�X}ǅ��K�:C����H�E�0��Oh.Z��>���[=��3n�`�/2%��8�C+:D!��lVB2i�Cl�\ZQ�L̅u���U��~�^Ȇψ���(��z�^�W��1�\r��v�ڶ�۽�+�3^���ET3��΄h$�� @�q_9�l�	���S��@1�S��řFݏ8tLRP�^`�-�z�F�豣T�b��0Kμ��EᣣɖO,u���ޗ�.��\'�S�e�p��#��z3�� ���>��:��3�s�~���c���=g�0�4�M�(�t�,���%��\"r�Z���R�ŝ�/iw��D�-x9��B�qպS��n>�qq�E�-��A(�������G�8m�|$W�\'x�z��<p�Jx��Y]ha�\r}������8;�ZR�m҉݆�Xm��ӈn��$���no���WO;s���d\rC\n�Be�^�Z�K~���M�n�����8��ލ��Z�Q��D\ZV�o�|qo[�	�o�#}k�>b3�sܐ��9#�\'iV�`�.KF���M�G���``1w��7�.��_	�N��\0�z�!��n�)p��<(!^��w~%���\"-.�\nv��\0e	v�í��6�6�F�H葞2g�.\r	�ػ�kn�GA,���,���b;p�8��ް�?q�(�A�\0�>-��!�\'0$�������,�g�kx6&R��(��~�Kj)��\n�q��H(�\'����`P��W-��~�\Z�����F)/8Έ6� _�\0�\\D� ��(�C�n��>�<|�-3��\0q�.�f|wf1@��B�#ҘI�#�`�\01���fv�W�e�E��N��j&�d�s;���K�S�k���KnA���\Zȋ4F��n� �g��qyx�����d�%�K����\"�\n�^�!n�A���|�F�&��\'P}Ry̓�:�v�n��-^��T+Rl��B�V��<Y<cO�<:�Md�V?����B��o%/��m#\Z6V���	s��[21���o<�b�!n��a�xl�x��(�<R�3�\ZvT;da�:a�A�lYM;����*X�C�y�#� �IցN�H����I����c������Rf�+u%��P�nۅ�[�w�\Z�����PtN��U\\!����g���p!e{��^Q�(?/�υdGQ!<6j����rȴ�)zC�>	��w>ֵˑ���:U��	 �	_ݎ���ġ=����k�X������]8����Nt6n�\0�0�E�/�.���}�a�\r���¢;rE��)$��.��-�����!���la`���]���4�>,KﲗF�C��!+�8a� Me\ZXl��Gw��R}9���}�C�wu�pbL�G±r��W�l�gն� ��%�$��������q�iϙ$4�^N��WIZ�XG��vN{[� �\"��3�z#�(:��ݿ�X<D5�yq\Z��\\��&ѡE������n�غa�d��映N�.�F8VB?k�_�z��1�/���e�\0������iy�,q|�N���Fx3��؁=c;����?�����F�b7��c>��~�}�������۠>B��p�c\\46�^�4�����?W2K�e��s�v�<0�7�$`n<\"�\\�õ	�X��>\'n\\xy!�DWV. �=m�֯�d����\0Tr��0��\Z�?,h����}��G���G��2�ż+��i��W��Ň\Z	�-AO*���H��\0/�u�=���/��FZ�L��W�@9��p`�+A���/���o!��m��zp����B7�?H0B�p!��7e���1d���Ć��@+�U/Ιo�Ȣ�C��\Z<��%��x@������yv��h�a����0k�\0r�L� #��i}Z\n��\0>\0 ��@k\'�w�R��\'7���\r��Ӿ_�hYLf�{�Uo���E5;�G�����Ձ�\'���\'ÿAϥ1���k��\0�������H#,}�q(�%�Y�Ml��D8oo�C�3��\r︲_Ϛ��(S�\rR\0 �zF/�C#��>��Կt����SW�@�IǾYP|�=c���C\r��㟻MK�ϧ�-D/�3ߑ�<!4�9ۉ\r��	��?���-�z�/}�qH�OE�1O���\0��N�xѪ\\C�ud��4~���� �t���\nl~���x���\0���t��5d¬�X݃,3��&�J}�3���� ���P�xզ�������{�(>\Z%�M�ϒ<=��@s��\Z#���)J���D(ױ���L}�چ��t�=P��\0:����QN��U�>�BH]C�-mwBxdɽ��v�t��x^H��8��UN}����|��Dp���\0���<�����y�\0��oL&|���O��/џ�?�M�;�o��','image/jpeg');
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
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
-- Temporary view structure for view `listar_fichas_empresa`
--

DROP TABLE IF EXISTS `listar_fichas_empresa`;
/*!50001 DROP VIEW IF EXISTS `listar_fichas_empresa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listar_fichas_empresa` AS SELECT 
 1 AS `publicacion_id`,
 1 AS `descripcion`,
 1 AS `fecha_alta`,
 1 AS `fecha_publicacion`,
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (95,17,'asdasdsa','dsadadsadsadsadsadsa','2015-09-02',0,1),(96,17,'borrado adsdasdasdsad','asdadsadasdaa','2015-09-02',0,1),(97,17,'1234','asdasdsdsads','2015-09-02',0,1),(98,16,'saddsasadsadsads','sadsadsasadsadsa\nasdasdasdsadasdsa','2015-09-02',0,0),(99,16,'uno','asdsadsddasds','2015-09-02',0,0),(100,16,'tres','asddadasdd','2015-09-02',0,0),(101,16,'dos','dasdsadasdad','2015-09-02',0,0),(102,16,'cuatro','asdadadadsa\n','2015-09-02',0,0),(103,16,'dos','sasadsadasdsadadadsa','2015-09-02',0,0),(104,17,'uno','asdasdsadsadsada','2015-09-03',0,0),(105,17,'dos qwe','asdasdadsa','2015-09-03',0,0),(106,17,'tres','sadasdasds','2015-09-03',0,0),(107,16,'asdasd','asdsadsadsadsad\nsadasdasdsad\nadsdadasdsad','2015-09-03',0,0),(108,16,'slato de linea','asdsadadsadasd<br />\nsdsdsdsadasdsa<br />\n123<br />\nsadsadsadasds','2015-09-03',0,0),(109,16,'pruebaaaaaaaaaaaaaaaaaaa','sdaasdasdasdasdasd<br />\nasdasdsadsadsad<br />\nasdasdsadsasdasdsad','2015-09-03',0,0),(110,16,'Prueba 1111111111111111111','sdasdadasdadad<br />\nadadadadadadadadadas<br />\ndadadadsadadada<br />\nadsdsadasdsad','2015-09-03',0,0),(111,16,'oc','asdasdsdsadadadsadasada<br />\nsadasdsasad<br />\nasdasdasdsadsadsadsadsadsa','2015-09-03',0,0),(112,17,'asdasd','asdasdadasdaddas','2015-09-04',0,0),(113,17,'asdasdasd','asdasdads',NULL,0,0),(114,17,'asdasdasd','asdasdads',NULL,0,0),(116,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(117,17,'XSS','[removed]<br />\nalert&#40;\'\'&#41;;<br />\n[removed]','2015-09-04',0,0),(118,17,'asdas','dasdsdasdasdsadsadsa','2015-09-05',0,0),(119,17,'asdsadadsd','asdasdsadasdsadsad','2015-09-05',0,0),(120,17,'asdasdasd','sadaasdsadsadsdassda','2015-09-05',0,0),(121,16,'mensjae 1','asdasdsada<br />\nsaddsadsda','2015-09-05',0,0),(122,16,'mensaje 2','sadadssad<br />\nasdsadsadasd<br />\n12313123112312123123','2015-09-05',0,0),(123,16,'pruebaaaaa','asdasdadsads','2015-09-05',0,0),(124,16,'mensaje 4','asdasdsad<br />\nasdadasadas','2015-09-05',0,0),(125,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(126,17,'<adadadsasasadsa','dsadsadsasaddasdas','2015-09-05',0,0),(127,17,'dadadsasasadsa','dsadsadsasaddasdas<br />\nasdasdsadd','2015-09-05',0,1),(128,17,'prueba de borrador 1','dadadsadsadssdasds',NULL,0,0),(129,17,'otro borrador','dqwqweqwe\nasdadadada\notro borrador',NULL,0,0),(130,17,'BORRADOR','ADSADADSAD\nSADSADSASDSAD\nDSADSADSA',NULL,0,0),(131,17,'borr con curr adjuntado','asdadsd',NULL,0,0),(132,17,'borr con curr adjuntado','asdadsd',NULL,0,0),(133,17,'Borrador con curriculum adjuntado','asdadsasdasadas',NULL,0,1),(145,16,'sdasdasdsa','daddsadadadadasdsads',NULL,0,0),(146,16,'pruebba 12312312312312','adssadsadad\nad\nad\nsa\na\nsad\nsa',NULL,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_borrador`
--

LOCK TABLES `mensaje_borrador` WRITE;
/*!40000 ALTER TABLE `mensaje_borrador` DISABLE KEYS */;
INSERT INTO `mensaje_borrador` VALUES (1,17,68,'2015-08-31'),(2,17,69,'2015-08-31'),(3,17,70,'2015-09-01'),(4,17,71,'2015-09-01'),(5,17,72,'2015-09-01'),(6,17,115,'2015-09-04'),(7,17,128,'2015-09-06'),(8,17,129,'2015-09-06'),(9,17,130,'2015-09-06'),(10,17,131,'2015-09-06'),(11,17,132,'2015-09-06'),(12,17,133,'2015-09-06'),(13,16,134,'2015-09-06'),(14,16,135,'2015-09-06'),(15,16,136,'2015-09-06'),(16,16,137,'2015-09-06'),(17,16,138,'2015-09-06'),(18,16,139,'2015-09-06'),(19,16,140,'2015-09-06'),(20,16,141,'2015-09-06'),(21,16,142,'2015-09-06'),(22,16,143,'2015-09-06'),(23,16,144,'2015-09-06'),(24,16,145,'2015-09-06'),(25,16,146,'2015-09-06');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_eliminado`
--

LOCK TABLES `mensaje_eliminado` WRITE;
/*!40000 ALTER TABLE `mensaje_eliminado` DISABLE KEYS */;
INSERT INTO `mensaje_eliminado` VALUES (60,17,95,1),(61,19,95,0),(62,17,96,1),(63,16,96,0),(64,17,97,0),(65,19,97,0),(66,16,98,1),(67,17,98,1),(68,16,99,1),(69,17,99,1),(70,16,100,1),(71,17,100,1),(72,16,101,1),(73,17,101,1),(74,16,102,1),(75,17,102,1),(76,16,103,1),(77,17,103,1),(78,17,104,1),(79,20,104,0),(80,17,105,1),(81,22,105,0),(82,17,106,1),(83,20,106,0),(84,16,107,1),(85,17,107,1),(86,16,108,1),(87,19,108,0),(88,16,109,1),(89,17,109,1),(90,16,110,1),(91,16,110,1),(92,16,111,1),(93,16,111,1),(94,17,112,1),(95,17,112,1),(96,17,116,1),(97,17,116,1),(98,17,117,1),(99,17,117,1),(100,17,118,0),(101,19,118,0),(102,17,119,1),(103,20,119,0),(104,17,120,1),(105,22,120,0),(106,16,121,1),(107,17,121,0),(108,16,122,1),(109,17,122,0),(110,16,123,1),(111,17,123,0),(112,16,124,1),(113,17,124,1),(114,17,125,1),(115,16,125,1),(116,17,126,1),(117,16,126,1),(118,17,127,1),(119,16,127,0);
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
INSERT INTO `persona` VALUES (10,'Miguel Angel','Castillo Cornejo','M','1992-03-09'),(11,'Jose Manuel','Poveda','M','2015-04-08'),(12,'Rene Mauricio','Cruz Hernandez','M','1969-12-31'),(13,'Idalia del Socorro','Mairena','M','2015-12-08'),(15,'Alfredo Heberto','Martinez Acuña','M','1969-12-31'),(16,'Jose Manuel','Poveda','M','2015-08-06');
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
  `usuario_id` int(11) DEFAULT NULL,
  `descripcion` tinytext,
  `fecha_publicacion` date DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `imagen` mediumblob,
  `tipo` varchar(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`publicacion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_carrera`
--

LOCK TABLES `publicacion_carrera` WRITE;
/*!40000 ALTER TABLE `publicacion_carrera` DISABLE KEYS */;
INSERT INTO `publicacion_carrera` VALUES (1,14,4,NULL),(2,15,1,NULL),(3,15,3,NULL);
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
INSERT INTO `publicador` VALUES (1,11,3,18),(2,16,4,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociedad`
--

LOCK TABLES `sociedad` WRITE;
/*!40000 ALTER TABLE `sociedad` DISABLE KEYS */;
INSERT INTO `sociedad` VALUES (1,'Sociedad Anonima'),(2,'Sociedad Civil'),(3,'Sociedad Colectiva'),(4,'Sociedad en Comandita'),(5,'Uniones de empresas');
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
INSERT INTO `usuario` VALUES (16,'uni_norte@gmail.com','ck6P/c/tw4OAYFcSxgH5uQmwRU2VrNcH8pnmTSTempE=','2015-09-06 14:58:06',1,'perfil_16.png'),(17,'mikedosce1992@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-09-06 15:12:07',0,'perfil_17.png'),(18,'jm_mpvedar@gmail.com','4wzfjuRclzWROBvJJYqsW00ybMBTdXAvk/NIEP7vb5k=','2015-08-05 13:12:13',1,'profile_image_18.png'),(19,'rene_mauricio@gmail.com','iTKvJj9mjPzHlSNM8HaFPOGre8fPZvfRUStlXgRxPlM=',NULL,0,'male.jpeg'),(20,'idalia@gmail.com','JnyzyASnZLzDi9MsmqxpL61k4XuiDbCvpcxdEVrdtwg=',NULL,0,'male.jpeg'),(21,'idalia@gmail.com','ygFzcasYfpUp5I2PzNq5WnMeP0kEFLPH1h+bAOLVqfQ=',NULL,0,'female.jpeg'),(22,'alfredo@gmail.com','xIr9M0GP1cpl4sFjMyO/geQCKneNRDFjJvUfFXgQ/3Q=',NULL,0,'male.jpeg'),(23,'jm_poveda@gmail.com','fFJRohBIq2R8JCLh3sMO+Urc09+eHKP/kfQrzo0UHFI=','2015-08-24 21:17:22',1,'perfil_23.jpeg'),(24,'aalfs@gmail.com','chjP5pzd7/Vmps9k32XpUvtvuzJgCO664TjkwEuNwS4=','2015-09-04 14:33:26',1,NULL);
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
-- Final view structure for view `listar_fichas_empresa`
--

/*!50001 DROP VIEW IF EXISTS `listar_fichas_empresa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listar_fichas_empresa` AS select `publicacion`.`publicacion_id` AS `publicacion_id`,`publicacion`.`descripcion` AS `descripcion`,`publicacion`.`fecha_alta` AS `fecha_alta`,`publicacion`.`fecha_publicacion` AS `fecha_publicacion`,`publicacion`.`imagen` AS `imagen`,`publicacion`.`tipo` AS `tipo`,`usuario`.`usuario_id` AS `usuario_id`,`ficha`.`ficha_id` AS `ficha_id`,`ficha`.`cargo` AS `cargo`,`ficha`.`ubicacion` AS `ubicacion`,`ficha`.`cantidad` AS `cantidad`,`ficha`.`jefe` AS `jefe`,`ficha`.`a_cargo` AS `a_cargo`,`ficha`.`finalidad` AS `finalidad`,`ficha`.`funciones` AS `funciones`,`ficha`.`requisitos` AS `requisitos`,`ficha`.`experiencia` AS `experiencia`,`ficha`.`competencia` AS `competencia` from ((`usuario` join `publicacion`) join `ficha`) where ((`usuario`.`usuario_id` = `publicacion`.`usuario_id`) and (`ficha`.`publicacion_id` = `publicacion`.`publicacion_id`)) */;
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

-- Dump completed on 2015-09-06 15:38:35