-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: bd_colegio
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula` (
  `id_aula` int(5) NOT NULL AUTO_INCREMENT,
  `numero_aula` int(5) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `fecha_registrado` date NOT NULL,
  `usuario` int(10) NOT NULL,
  `estado_a` varchar(20) NOT NULL,
  `estado_activo` varchar(20) NOT NULL,
  `descripcion_aula` varchar(40) NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,1,'AULA 1','2011-04-20',2,'Activo','Activo',''),(2,2,'AULA 2','2011-04-20',2,'Activo','Activo',''),(3,3,'LABORATORIO 1','2011-04-20',2,'Activo','Activo','');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_agregado`
--

DROP TABLE IF EXISTS `aula_agregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_agregado` (
  `id_agregado` int(10) NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `fecha_agregado` date NOT NULL,
  `hora_agregado` time NOT NULL,
  `id_usuario` int(5) NOT NULL,
  PRIMARY KEY (`id_agregado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_agregado`
--

LOCK TABLES `aula_agregado` WRITE;
/*!40000 ALTER TABLE `aula_agregado` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_agregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_agregado_detallado`
--

DROP TABLE IF EXISTS `aula_agregado_detallado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_agregado_detallado` (
  `id_agregado_detallado` int(10) NOT NULL AUTO_INCREMENT,
  `id_agregado` int(11) NOT NULL,
  `id_aula_asignado` int(11) NOT NULL,
  `id_inventario` int(5) DEFAULT NULL,
  `inicial` varchar(10) NOT NULL,
  `codigozona` varchar(20) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha_asignado` date NOT NULL,
  `estado_activo_aula` varchar(20) NOT NULL,
  `id_usuario_asignado` int(11) NOT NULL,
  PRIMARY KEY (`id_agregado_detallado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_agregado_detallado`
--

LOCK TABLES `aula_agregado_detallado` WRITE;
/*!40000 ALTER TABLE `aula_agregado_detallado` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_agregado_detallado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_agregado_movido`
--

DROP TABLE IF EXISTS `aula_agregado_movido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_agregado_movido` (
  `id_aula_agregado_movido` int(11) NOT NULL AUTO_INCREMENT,
  `id_aula_asignado` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `codigo_pro` varchar(50) DEFAULT NULL,
  `fecha_asignado` date NOT NULL,
  `id_usuario_asignado` int(11) NOT NULL,
  `fecha_final` date DEFAULT NULL,
  `id_usuario_final` int(11) DEFAULT NULL,
  `estado_movido` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_aula_agregado_movido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_agregado_movido`
--

LOCK TABLES `aula_agregado_movido` WRITE;
/*!40000 ALTER TABLE `aula_agregado_movido` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_agregado_movido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_historial`
--

DROP TABLE IF EXISTS `aula_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_historial` (
  `id_aula_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `fecha_registrado` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `id_aula_modificado` int(11) NOT NULL,
  `estado_historial` varchar(30) NOT NULL,
  PRIMARY KEY (`id_aula_historial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_historial`
--

LOCK TABLES `aula_historial` WRITE;
/*!40000 ALTER TABLE `aula_historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_temporal`
--

DROP TABLE IF EXISTS `aula_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_temporal` (
  `id_aula_temporal` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(15) DEFAULT NULL,
  `id_inventario` int(5) DEFAULT NULL,
  `inicial` varchar(10) NOT NULL,
  `codigozona` varchar(20) NOT NULL,
  `codigo_pro` varchar(50) DEFAULT NULL,
  `nombre_pro` varchar(30) DEFAULT NULL,
  `cantidad` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_aula_temporal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_temporal`
--

LOCK TABLES `aula_temporal` WRITE;
/*!40000 ALTER TABLE `aula_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autorizados`
--

DROP TABLE IF EXISTS `autorizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autorizados` (
  `id_autorizados` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `fecha_registrado` date NOT NULL,
  `gestion` int(11) NOT NULL,
  `estado_autorizado` varchar(20) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_autorizados`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorizados`
--

LOCK TABLES `autorizados` WRITE;
/*!40000 ALTER TABLE `autorizados` DISABLE KEYS */;
INSERT INTO `autorizados` VALUES (1,1,'2011-01-06',2011,'Activo',2),(3,2,'2011-07-26',2011,'Activo',1);
/*!40000 ALTER TABLE `autorizados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beca`
--

DROP TABLE IF EXISTS `beca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beca` (
  `id_beca` int(5) NOT NULL AUTO_INCREMENT,
  `beca` varchar(40) NOT NULL,
  `descuento` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_beca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beca`
--

LOCK TABLES `beca` WRITE;
/*!40000 ALTER TABLE `beca` DISABLE KEYS */;
INSERT INTO `beca` VALUES (1,'Ninguna',0),(2,'Media Beca',50),(3,'Beca Completa',100);
/*!40000 ALTER TABLE `beca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigoinventario`
--

DROP TABLE IF EXISTS `codigoinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigoinventario` (
  `id_codigoinventario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_codigo` varchar(20) NOT NULL,
  `inicial` varchar(5) NOT NULL,
  `codigozona` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_registrado` date NOT NULL,
  `usuario` int(11) NOT NULL,
  `estado_codigo` varchar(20) NOT NULL,
  PRIMARY KEY (`id_codigoinventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigoinventario`
--

LOCK TABLES `codigoinventario` WRITE;
/*!40000 ALTER TABLE `codigoinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `codigoinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `compra` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `fecha_compra` date NOT NULL,
  `hora_compra` time NOT NULL,
  `num_factura` int(11) NOT NULL,
  PRIMARY KEY (`id_compra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id_curso` int(5) NOT NULL AUTO_INCREMENT,
  `id_grado` int(5) NOT NULL,
  `paralelo` varchar(2) NOT NULL,
  `nivel` varchar(10) NOT NULL,
  `estado` varchar(10) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,1,'A','Primario','Activo'),(2,2,'A','Primario','Activo'),(3,1,'B','Primario','Activo'),(4,1,'C','Primario','Activo'),(5,2,'B','Primario','Activo'),(6,3,'A','Primario','Activo'),(7,4,'A','Primario','Activo'),(8,5,'A','Primario','Activo'),(9,6,'A','Primario','Activo'),(10,1,'A','Secundario','Activo'),(11,2,'A','Secundario','Activo'),(12,1,'F','Secundario','Activo'),(13,1,'F','Primario','Activo'),(14,6,'A','Secundario','Activo');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_aula`
--

DROP TABLE IF EXISTS `detalle_aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_aula` (
  `id_detalle_aula` int(11) NOT NULL AUTO_INCREMENT,
  `id_aula` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `cantidad` int(20) NOT NULL,
  `cantidad_reparo` int(5) NOT NULL,
  `fecha_registrado` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_detalle_aula`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_aula`
--

LOCK TABLES `detalle_aula` WRITE;
/*!40000 ALTER TABLE `detalle_aula` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `id_detalle_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `codigo` int(50) NOT NULL,
  `inicial` varchar(10) NOT NULL,
  `codigozona` varchar(20) NOT NULL,
  `codigo_pro` int(40) DEFAULT NULL,
  `cantidad_compra` int(11) NOT NULL,
  `descripcion_inv` text NOT NULL,
  `precio_compra` double NOT NULL,
  `subtotal` double NOT NULL,
  `estado_reparo` varchar(20) NOT NULL,
  `estado_asig` varchar(5) NOT NULL,
  `id_aula_asignado` int(11) DEFAULT NULL,
  `estado_inventario` varchar(30) NOT NULL,
  `estado_activo` varchar(20) NOT NULL,
  `gestion_inv` int(10) NOT NULL,
  PRIMARY KEY (`id_detalle_compra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra_bajas`
--

DROP TABLE IF EXISTS `detalle_compra_bajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra_bajas` (
  `detalle_compra_bajas` int(11) NOT NULL AUTO_INCREMENT,
  `id_detalle_compra` int(11) NOT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `id_usuario_baja` int(11) DEFAULT NULL,
  `fecha_baja` date NOT NULL,
  `hora_baja` time NOT NULL,
  `gestion_baja` int(11) NOT NULL,
  PRIMARY KEY (`detalle_compra_bajas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra_bajas`
--

LOCK TABLES `detalle_compra_bajas` WRITE;
/*!40000 ALTER TABLE `detalle_compra_bajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra_bajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_mensualidad`
--

DROP TABLE IF EXISTS `detalle_mensualidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_mensualidad` (
  `id_detalle_mensualidad` int(11) NOT NULL AUTO_INCREMENT,
  `id_mensualidad` int(11) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  `costo` int(11) NOT NULL,
  `gestion` int(4) NOT NULL,
  `fecha_registrado` date NOT NULL,
  PRIMARY KEY (`id_detalle_mensualidad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_mensualidad`
--

LOCK TABLES `detalle_mensualidad` WRITE;
/*!40000 ALTER TABLE `detalle_mensualidad` DISABLE KEYS */;
INSERT INTO `detalle_mensualidad` VALUES (1,2,'primario',180,2011,'2011-01-06'),(2,3,'secundario',285,2011,'2011-01-06'),(3,2,'primario',180,2011,'2011-07-26'),(4,3,'secundario',285,2011,'2011-07-26');
/*!40000 ALTER TABLE `detalle_mensualidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_proveedor`
--

DROP TABLE IF EXISTS `detalle_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_proveedor` (
  `id_detalle_proveedor` int(5) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(5) NOT NULL,
  `codigo` int(50) NOT NULL,
  `nombre_pro` varchar(50) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `cantidad_compra` int(20) NOT NULL,
  `fecha_compra` date NOT NULL,
  `id_usuario` int(5) NOT NULL,
  `estado_pro` varchar(10) NOT NULL,
  PRIMARY KEY (`id_detalle_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_proveedor`
--

LOCK TABLES `detalle_proveedor` WRITE;
/*!40000 ALTER TABLE `detalle_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estancia3`
--

DROP TABLE IF EXISTS `estancia3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estancia3` (
  `id_estancia` int(5) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(5) NOT NULL,
  `usuario_reg` int(7) NOT NULL,
  `fecha_reg` date NOT NULL,
  `gestion` int(5) NOT NULL,
  `apellidop` varchar(50) DEFAULT NULL,
  `apellidom` varchar(50) DEFAULT NULL,
  `hora_salida` time NOT NULL,
  `fecha_salida` date DEFAULT NULL,
  `gestion_salida` int(6) DEFAULT NULL,
  `estado` varchar(23) NOT NULL,
  PRIMARY KEY (`id_estancia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estancia3`
--

LOCK TABLES `estancia3` WRITE;
/*!40000 ALTER TABLE `estancia3` DISABLE KEYS */;
INSERT INTO `estancia3` VALUES (1,1,2,'2011-07-26',2011,'','','00:00:00','0000-00-00',NULL,'Activo'),(2,2,1,'2011-07-26',2011,NULL,NULL,'22:15:26',NULL,NULL,'Activo');
/*!40000 ALTER TABLE `estancia3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int(5) NOT NULL AUTO_INCREMENT,
  `id_persona` int(5) NOT NULL,
  `id_curso` int(5) NOT NULL,
  `id_beca` int(5) NOT NULL,
  `beca` varchar(15) NOT NULL,
  `descripcion_beca` text NOT NULL,
  `usuario_reg` int(5) NOT NULL,
  `fecha_registrado` date NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `gestion1` int(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id_foto` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria` (
  `id_galeria` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `archivo` varchar(50) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_galeria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria`
--

LOCK TABLES `galeria` WRITE;
/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion`
--

DROP TABLE IF EXISTS `gestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestion` (
  `id_gestion` int(5) NOT NULL AUTO_INCREMENT,
  `gestion` int(5) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_gestion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion`
--

LOCK TABLES `gestion` WRITE;
/*!40000 ALTER TABLE `gestion` DISABLE KEYS */;
INSERT INTO `gestion` VALUES (1,2011,'2011-07-26','00:15:30');
/*!40000 ALTER TABLE `gestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `id_grado` int(5) NOT NULL AUTO_INCREMENT,
  `curso` int(2) NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `descripcion` varchar(15) NOT NULL,
  PRIMARY KEY (`id_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,1,'ro','Primero'),(2,2,'do','Segundo'),(3,3,'ro','Tercero'),(4,4,'to','Cuarto'),(5,5,'to','Quinto'),(6,6,'to','Sexto');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `id_institucion` int(5) NOT NULL AUTO_INCREMENT,
  `n_autorizacion` varchar(40) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nit` int(30) NOT NULL,
  PRIMARY KEY (`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,'223456557','colegio particular mixto boliv',12345678);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `nombre_pro` varchar(50) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `precio_unidad` double NOT NULL,
  `cantidad_compra` int(5) NOT NULL,
  `cantidad_stock` int(6) NOT NULL,
  `id_usuario` int(5) NOT NULL,
  `estado_i` varchar(10) NOT NULL,
  PRIMARY KEY (`id_inventario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_temporal`
--

DROP TABLE IF EXISTS `inventario_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_temporal` (
  `id_inventario_temporal` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(15) DEFAULT NULL,
  `id_proveedor` int(5) DEFAULT NULL,
  `ci` int(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(50) DEFAULT NULL,
  `apellido_m` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(50) DEFAULT NULL,
  `comercial` varchar(50) DEFAULT NULL,
  `id_inventario` int(5) DEFAULT NULL,
  `codigo` int(50) DEFAULT NULL,
  `id_codigoinventario` int(11) DEFAULT NULL,
  `codigo_pro` int(50) DEFAULT NULL,
  `n_factura` varchar(50) DEFAULT NULL,
  `nit` varchar(40) NOT NULL,
  `n_autorizacion` int(30) DEFAULT NULL,
  `nombre_pro` varchar(30) DEFAULT NULL,
  `cantidad_compra` int(15) DEFAULT NULL,
  `descripcion_inv` text,
  `precio_compra` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`id_inventario_temporal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_temporal`
--

LOCK TABLES `inventario_temporal` WRITE;
/*!40000 ALTER TABLE `inventario_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensualidad`
--

DROP TABLE IF EXISTS `mensualidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensualidad` (
  `id_mensualidad` int(5) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(10) NOT NULL,
  `costo` decimal(8,2) DEFAULT NULL,
  `gestion` int(8) NOT NULL,
  PRIMARY KEY (`id_mensualidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensualidad`
--

LOCK TABLES `mensualidad` WRITE;
/*!40000 ALTER TABLE `mensualidad` DISABLE KEYS */;
INSERT INTO `mensualidad` VALUES (2,'primario',180.00,2011),(3,'secundario',285.00,2011);
/*!40000 ALTER TABLE `mensualidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensualidad_agregado`
--

DROP TABLE IF EXISTS `mensualidad_agregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensualidad_agregado` (
  `id_mensualidad_agregado` int(5) NOT NULL AUTO_INCREMENT,
  `id_mes` int(5) NOT NULL,
  `mes` varchar(30) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `fecha_asignado` date NOT NULL,
  `gestion_asignado` int(6) NOT NULL,
  `usuario` int(5) NOT NULL,
  `estado_asignado` varchar(10) NOT NULL,
  PRIMARY KEY (`id_mensualidad_agregado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensualidad_agregado`
--

LOCK TABLES `mensualidad_agregado` WRITE;
/*!40000 ALTER TABLE `mensualidad_agregado` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensualidad_agregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensualidad_pagado`
--

DROP TABLE IF EXISTS `mensualidad_pagado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensualidad_pagado` (
  `id_mensualidad_pagado` int(5) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(5) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `nit` int(30) DEFAULT NULL,
  `n_factura` int(30) NOT NULL,
  `costo_total` decimal(8,2) DEFAULT NULL,
  `fecha_pagado` date NOT NULL,
  `hora_pagado` time NOT NULL,
  `usuario_recibido` int(11) NOT NULL,
  `administrador_pagado` int(11) NOT NULL,
  PRIMARY KEY (`id_mensualidad_pagado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensualidad_pagado`
--

LOCK TABLES `mensualidad_pagado` WRITE;
/*!40000 ALTER TABLE `mensualidad_pagado` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensualidad_pagado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensualidad_pagado_detalle`
--

DROP TABLE IF EXISTS `mensualidad_pagado_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensualidad_pagado_detalle` (
  `id_mensualidad_pagado_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_mensualidad_pagado` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `nivel` varchar(10) NOT NULL,
  `id_beca` int(11) NOT NULL,
  `mes` varchar(30) NOT NULL,
  `precio` double(8,2) NOT NULL,
  `descuento` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  PRIMARY KEY (`id_mensualidad_pagado_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensualidad_pagado_detalle`
--

LOCK TABLES `mensualidad_pagado_detalle` WRITE;
/*!40000 ALTER TABLE `mensualidad_pagado_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensualidad_pagado_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mes` (
  `id_mes` int(5) NOT NULL AUTO_INCREMENT,
  `mes` varchar(30) NOT NULL,
  `estado_mes` varchar(10) NOT NULL,
  `estado_temporal` varchar(10) NOT NULL,
  `estado_gargado` varchar(10) NOT NULL,
  PRIMARY KEY (`id_mes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'ENERO','Anulado','Activo','Activo'),(2,'FEBRERO','Activo','Activo','Activo'),(3,'MARZO','Activo','Activo','Activo'),(4,'ABRIL','Activo','Activo','Activo'),(5,'MAYO','Activo','Activo','Activo'),(6,'JUNIO','Activo','Activo','Activo'),(7,'JULIO','Activo','Activo','Activo'),(8,'AGOSTO','Activo','Activo','Activo'),(9,'SEPTIEMBRE','Activo','Activo','Activo'),(10,'OCTUBRE','Activo','Activo','Activo'),(11,'NOVIEMBRE','Activo','Activo','Activo'),(12,'DICIEMBRE','Anulado','Activo','Activo');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meses`
--

DROP TABLE IF EXISTS `meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meses` (
  `id_meses` int(5) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(5) NOT NULL,
  `id_mensualidad` int(5) NOT NULL,
  `enero` decimal(8,2) DEFAULT NULL,
  `d_enero` decimal(8,2) DEFAULT NULL,
  `nivel_enero` varchar(4) DEFAULT NULL,
  `beca_enero` int(11) DEFAULT NULL,
  `pago_enero` varchar(5) DEFAULT NULL,
  `estado_enero` varchar(20) DEFAULT NULL,
  `febrero` decimal(8,2) DEFAULT NULL,
  `d_febrero` decimal(8,2) DEFAULT NULL,
  `nivel_febrero` varchar(4) DEFAULT NULL,
  `beca_febrero` int(11) DEFAULT NULL,
  `pago_febrero` varchar(5) DEFAULT NULL,
  `estado_febrero` varchar(20) DEFAULT NULL,
  `marzo` decimal(8,2) DEFAULT NULL,
  `d_marzo` decimal(8,2) DEFAULT NULL,
  `nivel_marzo` varchar(4) DEFAULT NULL,
  `beca_marzo` int(11) DEFAULT NULL,
  `pago_marzo` varchar(5) DEFAULT NULL,
  `estado_marzo` varchar(20) DEFAULT NULL,
  `abril` decimal(8,2) DEFAULT NULL,
  `d_abril` decimal(8,2) DEFAULT NULL,
  `nivel_abril` varchar(4) DEFAULT NULL,
  `beca_abril` int(11) DEFAULT NULL,
  `pago_abril` varchar(5) DEFAULT NULL,
  `estado_abril` varchar(20) DEFAULT NULL,
  `mayo` decimal(8,2) DEFAULT NULL,
  `d_mayo` decimal(8,2) DEFAULT NULL,
  `nivel_mayo` varchar(4) DEFAULT NULL,
  `beca_mayo` int(11) DEFAULT NULL,
  `pago_mayo` varchar(5) DEFAULT NULL,
  `estado_mayo` varchar(20) DEFAULT NULL,
  `junio` decimal(8,2) DEFAULT NULL,
  `d_junio` decimal(8,2) DEFAULT NULL,
  `nivel_junio` varchar(4) DEFAULT NULL,
  `beca_junio` int(11) DEFAULT NULL,
  `pago_junio` varchar(5) DEFAULT NULL,
  `estado_junio` varchar(20) DEFAULT NULL,
  `julio` decimal(8,2) DEFAULT NULL,
  `d_julio` decimal(8,2) DEFAULT NULL,
  `nivel_julio` varchar(4) DEFAULT NULL,
  `beca_julio` int(11) DEFAULT NULL,
  `pago_julio` varchar(5) DEFAULT NULL,
  `estado_julio` varchar(20) DEFAULT NULL,
  `agosto` decimal(8,2) DEFAULT NULL,
  `d_agosto` decimal(8,2) DEFAULT NULL,
  `nivel_agosto` varchar(4) DEFAULT NULL,
  `beca_agosto` int(11) DEFAULT NULL,
  `pago_agosto` varchar(5) DEFAULT NULL,
  `estado_agosto` varchar(20) DEFAULT NULL,
  `septiembre` decimal(8,2) DEFAULT NULL,
  `d_septiembre` decimal(8,2) DEFAULT NULL,
  `nivel_septiembre` varchar(4) DEFAULT NULL,
  `beca_septiembre` int(11) DEFAULT NULL,
  `pago_septiembre` varchar(5) DEFAULT NULL,
  `estado_septiembre` varchar(20) DEFAULT NULL,
  `octubre` decimal(8,2) DEFAULT NULL,
  `d_octubre` decimal(8,2) DEFAULT NULL,
  `nivel_octubre` varchar(4) DEFAULT NULL,
  `beca_octubre` int(11) DEFAULT NULL,
  `pago_octubre` varchar(5) DEFAULT NULL,
  `estado_octubre` varchar(20) DEFAULT NULL,
  `noviembre` decimal(8,2) DEFAULT NULL,
  `d_noviembre` decimal(8,2) DEFAULT NULL,
  `nivel_noviembre` varchar(4) DEFAULT NULL,
  `beca_noviembre` int(11) DEFAULT NULL,
  `pago_noviembre` varchar(5) DEFAULT NULL,
  `estado_noviembre` varchar(20) DEFAULT NULL,
  `diciembre` decimal(8,2) DEFAULT NULL,
  `d_diciembre` decimal(8,2) DEFAULT NULL,
  `nivel_diciembre` varchar(4) DEFAULT NULL,
  `beca_diciembre` int(11) DEFAULT NULL,
  `pago_diciembre` varchar(5) DEFAULT NULL,
  `estado_diciembre` varchar(20) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `gestion3` int(5) NOT NULL,
  PRIMARY KEY (`id_meses`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meses`
--

LOCK TABLES `meses` WRITE;
/*!40000 ALTER TABLE `meses` DISABLE KEYS */;
/*!40000 ALTER TABLE `meses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cajero`
--

DROP TABLE IF EXISTS `pago_cajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cajero` (
  `id_pago_cajero` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `recaudacion` double(8,2) NOT NULL,
  `saldo` double NOT NULL,
  `total` double NOT NULL,
  `fecha_cancelacion` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pago_cajero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cajero`
--

LOCK TABLES `pago_cajero` WRITE;
/*!40000 ALTER TABLE `pago_cajero` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cajero_administrador`
--

DROP TABLE IF EXISTS `pago_cajero_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cajero_administrador` (
  `id_pago_cajero_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `id_pago_cajero` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `recaudacion` double(8,2) NOT NULL,
  `saldo_anterior` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `total_pagar` double(8,2) NOT NULL,
  `saldo_actual` double(8,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `hora_pago` time NOT NULL,
  `id_administrador_persona` int(11) NOT NULL,
  PRIMARY KEY (`id_pago_cajero_administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cajero_administrador`
--

LOCK TABLES `pago_cajero_administrador` WRITE;
/*!40000 ALTER TABLE `pago_cajero_administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cajero_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_cajero_temporal`
--

DROP TABLE IF EXISTS `pago_cajero_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_cajero_temporal` (
  `id_pago_cajero_temporal` int(11) NOT NULL AUTO_INCREMENT,
  `id_pago_cajero` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `recaudacion` double(8,2) NOT NULL,
  `saldo_anterior` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `total_pagar` double NOT NULL,
  `saldo_actual` double(8,2) NOT NULL,
  PRIMARY KEY (`id_pago_cajero_temporal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_cajero_temporal`
--

LOCK TABLES `pago_cajero_temporal` WRITE;
/*!40000 ALTER TABLE `pago_cajero_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_cajero_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_temporal`
--

DROP TABLE IF EXISTS `pago_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_temporal` (
  `id_pago_temporal` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `nivel` varchar(10) DEFAULT NULL,
  `id_beca` int(11) DEFAULT NULL,
  `mes` varchar(30) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `subtotal` int(20) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `nit` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `n_factura` int(11) DEFAULT NULL,
  `n_autorizacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pago_temporal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_temporal`
--

LOCK TABLES `pago_temporal` WRITE;
/*!40000 ALTER TABLE `pago_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_temporal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_temporal_adelanto`
--

DROP TABLE IF EXISTS `pago_temporal_adelanto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_temporal_adelanto` (
  `id_pago_temporal_adelanto` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `nivel` varchar(10) DEFAULT NULL,
  `id_beca` int(11) DEFAULT NULL,
  `mes` varchar(30) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `descuento` decimal(8,2) NOT NULL,
  `subtotal` int(20) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `fecha_pago` date NOT NULL,
  `nit` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `n_factura` int(11) DEFAULT NULL,
  `n_autorizacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pago_temporal_adelanto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_temporal_adelanto`
--

LOCK TABLES `pago_temporal_adelanto` WRITE;
/*!40000 ALTER TABLE `pago_temporal_adelanto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_temporal_adelanto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `ci` int(15) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_p` varchar(50) NOT NULL,
  `apellido_m` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `usuario_reg` int(5) NOT NULL,
  `fecha_reg` date NOT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `hora` time NOT NULL,
  `gestion` int(6) NOT NULL,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,7125792,'WALTER','JANCO','LACA','BARRIO NUEVO',76819653,'walter_33@hotmail.com','1987-07-10','Masculino','BOLIVIA','TARIJA','SOLTERO','GRAN CHACO','YACUIBA',2,'2011-07-26','0000-00-00 00:00:00','10:10:10',2011,''),(2,2147483647,'EDWIN','PACO','CABEZAS','BARRIO NUEVO',6834273,'edwin_paco@hotmail.com','1994-03-25','MASCULINO','BOLIVIA','TARIJA','SOLTERO','','',1,'2011-07-26','0000-00-00 00:00:00','00:15:34',2011,'');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(5) NOT NULL AUTO_INCREMENT,
  `id_persona` int(5) NOT NULL,
  `comercial` varchar(50) NOT NULL,
  `nit` int(20) NOT NULL,
  `estado_prov` varchar(18) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparar_inventario`
--

DROP TABLE IF EXISTS `reparar_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reparar_inventario` (
  `id_reparar_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventario` int(11) NOT NULL,
  `codigo_pro` varchar(50) NOT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `fecha_reparo` date DEFAULT NULL,
  `id_usuario_reparo` int(11) DEFAULT NULL,
  `fecha_final_reparo` date DEFAULT NULL,
  `id_usuario_final_reparo` int(11) DEFAULT NULL,
  `estado_reparo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_reparar_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparar_inventario`
--

LOCK TABLES `reparar_inventario` WRITE;
/*!40000 ALTER TABLE `reparar_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `reparar_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Cajero'),(3,'Secretaria');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutor` (
  `id_tutor` int(5) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(5) NOT NULL,
  `ci_tutor` int(15) NOT NULL,
  `nombre_tutor` varchar(50) NOT NULL,
  `apellido_p_tutor` varchar(50) NOT NULL,
  `apellido_m_tutor` varchar(50) NOT NULL,
  `direccion_tutor` varchar(50) NOT NULL,
  `telefono_tutor` int(15) NOT NULL,
  `sexo_tutor` varchar(10) NOT NULL,
  `ocupacion_tutor` varchar(50) NOT NULL,
  `parentesco` varchar(50) NOT NULL,
  `gestion2` int(7) NOT NULL,
  PRIMARY KEY (`id_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(25) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `usuario_registrado` date NOT NULL,
  `apellidop` varchar(50) NOT NULL,
  `apellidom` varchar(1) NOT NULL,
  `clave_2` varchar(100) NOT NULL,
  `archivo` varchar(50) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `autorizados` varchar(50) NOT NULL,
  `gestion_autorizado` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrador','2011-07-26','JANCO','L','admin','','','Activo','SI',0),(2,2,'paco1','5bb605225a59a803ade55984028f4a4c','Administrador','0000-00-00','PACO','C','paco1','','','Activo','SI',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_temporal`
--

DROP TABLE IF EXISTS `usuario_temporal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_temporal` (
  `id_usuario_temporal` int(15) NOT NULL AUTO_INCREMENT,
  `ci` int(15) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(50) DEFAULT NULL,
  `apellido_m` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(15) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `usuario_reg` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_temporal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_temporal`
--

LOCK TABLES `usuario_temporal` WRITE;
/*!40000 ALTER TABLE `usuario_temporal` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_temporal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-03  0:26:25
