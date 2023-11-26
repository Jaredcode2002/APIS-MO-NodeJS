-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: proyectomultioptica
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `proyectomultioptica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyectomultioptica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `proyectomultioptica`;

--
-- Table structure for table `tbl_ciudad`
--

DROP TABLE IF EXISTS `tbl_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ciudad` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (1,'Tegucigalpa','A'),(2,'Comayagua','A'),(3,'San Pedro Sula','A'),(4,'La Ceiba','A'),(5,'Choluteca','A'),(6,'Puerto Cortes','A'),(7,'El Progreso','A'),(8,'Choloma','A'),(9,'Tela','A'),(10,'Juticalpa','A'),(11,'Danli','A'),(12,'La Lima','A'),(13,'Santa Rosa de Copan','A'),(14,'Siguatepeque','A'),(15,'Catacamas','A'),(16,'Tocoa','A'),(17,'Olanchito','A'),(18,'Distrito Central','A'),(19,'Santa Barbara','A'),(20,'Yoro','A'),(21,'Nacaome','A'),(22,'Gracias','A'),(23,'La Esperanza','A'),(24,'Yuscaran','A'),(25,'Trujillo','A'),(26,'Puerto Lempira','A'),(27,'Ocotepeque','A'),(28,'La Paz','A'),(29,'Patuca','A'),(30,'Chamelecon','A'),(31,'Las Vegas','A'),(32,'El Porvenir','A'),(33,'Santa cruz de Yojoa','A'),(34,'Marcala','A'),(35,'Comayagüela ','A'),(36,'Jutiapa','A'),(37,'Omoa Amapala','A'),(38,'La Campa','A'),(39,'Guaimaca','A'),(40,'Talanga','A'),(41,'Bonito Oriental','A'),(42,'Minas de Oro','A'),(43,'Jesus de Otoro','A'),(44,'Teupasenti','A'),(45,'Brus Laguna','A'),(46,'San Jose de Colinas','A'),(47,'La Masique','A'),(48,'Ajuterique','A');
/*!40000 ALTER TABLE `tbl_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `idCliente` varchar(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonoCliente` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT '',
  `COD_CLIENTE` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `COD_CLIENTE` (`COD_CLIENTE`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0205197200225','HEIDY','PEREZ',2,'2023-10-02','CARRIZAL','98756412','karen@gmail.com',1),('0208200101112','JUANA','LOPEZ',2,'2023-10-28','MATEO','98456321','seydi.lara@unah.hn',4),('0208200101152','KAREN','LOPEZ',2,'2023-08-28','NOCE','98562031','jlainez@gmail.com',2),('0801197300054','SEYDI','LARA',2,'2023-11-22','MATEO','31845696','lara@gmail.com',3);
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCompra` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalCompra` float DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compradetalle`
--

DROP TABLE IF EXISTS `tbl_compradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compradetalle` (
  `IdCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompra` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `costoCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompraDetalle`),
  KEY `IdCompra` (`IdCompra`),
  KEY `IdProveedor` (`IdProveedor`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tbl_compradetalle_ibfk_1` FOREIGN KEY (`IdCompra`) REFERENCES `tbl_compra` (`IdCompra`),
  CONSTRAINT `tbl_compradetalle_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `tbl_proveedor` (`IdProveedor`),
  CONSTRAINT `tbl_compradetalle_ibfk_3` FOREIGN KEY (`idProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamento`
--

DROP TABLE IF EXISTS `tbl_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departamento` (
  `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida','A'),(2,'Colón','A'),(3,'Comayagua','A'),(4,'Copán','A'),(5,'Cortés','A'),(6,'Choluteca','A'),(7,'El Paraíso','A'),(8,'Francisco Morazán','A'),(9,'Gracias a Dios','A'),(10,'Intibucá','A'),(11,'Islas de la Bahía','A'),(12,'La Paz','A'),(13,'Lempira','A'),(14,'Ocotepeque','A'),(15,'Olancho','A'),(16,'Santa Bárbara','A'),(17,'Valle','A'),(18,'Yoro','A');
/*!40000 ALTER TABLE `tbl_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descuento`
--

DROP TABLE IF EXISTS `tbl_descuento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descuento` (
  `IdDescuento` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descPorcentEmpleado` float DEFAULT NULL,
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',0.1,NULL),(2,'A',0.25,NULL),(3,'A',1,NULL);
/*!40000 ALTER TABLE `tbl_descuento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefonoEmpleado` varchar(12) DEFAULT NULL,
  `IdSucursal` int(11) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `numeroIdentidad` varchar(15) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaSalida` date DEFAULT NULL,
  `fechaCumpleanos` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'JOHANA','LARA','98561236',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'JOHANA','FUENTES','31944498',1,2,'0208200101152',NULL,NULL,NULL,'Activo'),(4,'JOHANA','LARA','9856321',1,2,'0801198500225',NULL,NULL,NULL,'Activo'),(5,'ERICK','RAMON','98756452',2,1,'0801197500221','2023-11-25','0000-00-00','2023-10-30','Inactivo');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expediente`
--

DROP TABLE IF EXISTS `tbl_expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expediente` (
  `IdExpediente` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `IdCliente` varchar(15) DEFAULT NULL,
  `IdEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdExpediente`),
  UNIQUE KEY `IdCliente` (`IdCliente`),
  KEY `IdEmpleado` (`IdEmpleado`),
  CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`IdEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-10-27 06:00:00','0208200101152',1),(7,'2023-11-15 05:02:42','0801197300054',1),(9,'2023-11-24 06:00:00','0205197200225',1);
/*!40000 ALTER TABLE `tbl_expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expedientedetalle`
--

DROP TABLE IF EXISTS `tbl_expedientedetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expedientedetalle` (
  `IdExpedienteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdExpediente` int(11) DEFAULT NULL,
  `diagnostico` varchar(200) NOT NULL,
  `Optometrista` varchar(50) NOT NULL,
  `AsesorVenta` varchar(50) NOT NULL,
  `Antecedentes` varchar(200) NOT NULL,
  `ODEsfera` varchar(10) NOT NULL,
  `OIEsfera` varchar(10) NOT NULL,
  `ODCilindro` varchar(10) NOT NULL,
  `OICilindro` varchar(10) NOT NULL,
  `ODEje` varchar(10) NOT NULL,
  `OIEje` varchar(10) NOT NULL,
  `ODAdicion` varchar(10) NOT NULL,
  `OIAdicion` varchar(10) NOT NULL,
  `ODAltura` varchar(10) NOT NULL,
  `OIAltura` varchar(10) NOT NULL,
  `ODDistanciaPupilar` varchar(10) NOT NULL,
  `OIDistanciaPupilar` varchar(10) NOT NULL,
  `fechaConsulta` date DEFAULT NULL,
  `fechaExpiracion` date DEFAULT NULL,
  PRIMARY KEY (`IdExpedienteDetalle`),
  KEY `IdExpediente` (`IdExpediente`),
  CONSTRAINT `tbl_expedientedetalle_ibfk_1` FOREIGN KEY (`IdExpediente`) REFERENCES `tbl_expediente` (`IdExpediente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,NULL,'NINGUNA','YOJA','YOJA','NOCE','1','','','','','','','','','','','','2023-09-25','2024-09-26'),(2,NULL,'NINGUNA','HOLA','HOLA','NADA','','','','','','','','','','','','','2023-10-27','2024-10-28'),(3,1,'NINGUNA','NADA','NADA','HOLA','','','','','','','','','','','','','2023-10-27','2024-10-28'),(4,1,'MIOPIA','HOLA','HOLA','NOCE','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(5,1,'CEGUERA','HOLA','HOLA','HOLA','2','','','','','','','','','','','','2023-11-13','2024-11-13'),(6,1,'ASABER','HOLA','NADA','NOXCE','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(7,1,'HAHAH','HAHA','HAHA','HAHA','11','','','','','','','','','','','','2023-11-13','2024-11-13'),(8,1,'NOCE','NOCE','NOCE','NOCE','0','','','','','','','','','','','','2023-11-13','2024-11-13'),(9,1,'HAHAHA','HAHA','HAHAHAHAH','HAHAHAHA','0','','','','','','','','','','','','2023-11-13','2024-11-13'),(10,1,'JAJAJAJA','JAJAJA','JAJAJA','JAJAJJAA','-2','','','','','','','','','','','','2023-11-13','2024-11-13'),(11,1,'SASASASA','SASSA','SASA','SASAS','-1','','','','','','','','','','','','2023-11-13','2024-11-13'),(12,1,'VALA','VALA','VALA','VALA','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(13,1,'HANA','HANA','HANA','HANA','-2','','','','','','','','','','','','2023-11-13','2024-11-13'),(14,1,'PERRO','PERRO','PERRO','PERRO','-1','','','','','','','','','','','','2023-11-13','2024-11-13'),(15,1,'ADA','ADA','ADA','ADA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(16,1,'ADA','ADA','ADA','ADA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(17,1,'ASA','ASAA','ASA','ASA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(18,1,'QWEER','QWER','QWER','QWER','-1','','','','','','','','','','','','2023-11-14','2024-11-14'),(19,NULL,'ASDF','ASDF','ASDF','ASDF','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(20,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(21,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(22,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(23,NULL,'HJKL','HJKL','HJKL','HJKL','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(24,NULL,'BNMJ','BNM','BNM','BNM','3','','','','','','','','','','','','2023-11-14','2024-11-14'),(25,NULL,'BNMB','NMB','NMB','B NM','3','','','','','','','','','','','','2023-11-14','2024-11-14'),(26,NULL,'GHJKL','GHJK','GHJK','GHJK','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(27,1,'TUYITYU','TYUI','TYUT','TYUUI','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(28,NULL,'SDGDS','GADF','ASFD','SDGFS','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(29,NULL,'DFHDFH','QWEEW','WEWRR','DGDFG','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(30,NULL,'DFHDF','GHJK','DHDFH','DFHFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(31,NULL,'DERFGYEDRF','HJDG','ERDFB','FGHFX','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(32,NULL,'EDGTDCV','ASDFG','DFGDFGH','HJKYTYU','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(33,NULL,'QRERTT','FGH','GHGH','HJHJK','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(34,NULL,'RRGJNHJHV','BNVFDHGB','DHFDGHJFJ','VBMNFGHJYH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(35,NULL,'WWEERT','GHJK','FGHJK','FVHHJ','-1','','','','','','','','','','','','2023-11-14','2024-11-14'),(36,7,'SDFGDF','GHJK','FFHGH','BDFG','-2','','','','','','','','','','','','2023-11-14','2024-11-14'),(37,7,'FGJFG','ASDDFF','FJFGHJ','FHJGFH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(38,9,'HAHA','HAJDSD','SDSD','DFGF','1','','','','','','','','','','','','2023-11-24','2024-11-24');
/*!40000 ALTER TABLE `tbl_expedientedetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_garantia`
--

DROP TABLE IF EXISTS `tbl_garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_garantia` (
  `IdGarantia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `mesesGarantia` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_garantia_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'NADA',5,1,'A'),(3,'HOLA',0,2,'A');
/*!40000 ALTER TABLE `tbl_garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genero` (
  `IdGenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino','A'),(2,'Femenino','A');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventario` (
  `IdInventario` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdInventario`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_inventario_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,-1),(2,2,-2);
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardex`
--

DROP TABLE IF EXISTS `tbl_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardex` (
  `IdKardex` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoMovimiento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `fechaYHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,2,2,NULL,'2022-11-26 01:40:17',1,NULL),(2,2,2,NULL,'2023-10-25 01:40:28',1,NULL),(3,2,2,NULL,'2023-11-26 01:40:42',1,NULL),(4,5,2,1,'2023-11-26 01:40:56',1,NULL),(5,5,2,1,'2002-11-26 01:41:00',1,NULL),(6,2,2,NULL,'2023-11-26 01:45:54',1,NULL),(7,2,2,NULL,'2023-11-26 01:47:44',2,NULL),(8,2,1,NULL,'2002-11-26 01:47:44',4,NULL),(9,4,4,1,'2023-11-26 09:34:55',1,'LOQUESEA'),(10,3,3,1,'2023-11-26 09:35:12',100,'ASABER'),(11,4,4,1,'2023-11-26 09:36:09',1,'GJHKIK'),(12,5,2,1,'2023-11-26 03:46:37',2,NULL),(13,5,1,1,'2023-11-26 03:46:37',4,NULL),(14,2,1,NULL,'2023-11-26 06:46:45',1,NULL);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lente`
--

DROP TABLE IF EXISTS `tbl_lente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lente` (
  `IdLente` int(11) NOT NULL AUTO_INCREMENT,
  `lente` varchar(35) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'MAJOYDAN',100,'Activo');
/*!40000 ALTER TABLE `tbl_lente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'LARA','A'),(2,'KAREN','A');
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modelo`
--

DROP TABLE IF EXISTS `tbl_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modelo` (
  `IdModelo` int(11) NOT NULL AUTO_INCREMENT,
  `idMarca` int(11) DEFAULT NULL,
  `detalle` varchar(40) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdModelo`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `tbl_modelo_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `tbl_marca` (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'IA-200',2000,'A'),(2,2,'KA-200',2023,'A');
/*!40000 ALTER TABLE `tbl_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_bitacora`
--

DROP TABLE IF EXISTS `tbl_ms_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_bitacora` (
  `IdBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Objeto` int(11) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdBitacora`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Objeto` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(3,'2023-08-19 17:19:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(4,'2023-08-19 17:19:52',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-09-26 00:15:01',1,1,'Login','Inicio de sesión '),(13,'2023-09-26 00:15:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(14,'2023-09-26 00:15:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(15,'2023-09-26 00:21:35',1,1,'Login','Inicio de sesión '),(16,'2023-09-26 00:24:27',1,1,'Login','Inicio de sesión '),(17,'2023-09-26 00:29:09',1,1,'Login','Inicio de sesión '),(18,'2023-09-26 00:43:34',1,1,'Login','Inicio de sesión '),(19,'2023-09-26 00:43:47',1,1,'Login','Inicio de sesión '),(20,'2023-09-26 00:44:18',1,1,'Login','Inicio de sesión '),(21,'2023-09-26 00:44:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(22,'2023-09-26 00:44:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(23,'2023-09-26 00:45:27',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(24,'2023-09-26 00:45:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(25,'2023-09-26 00:45:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(26,'2023-09-26 00:57:37',1,1,'Login','Inicio de sesión '),(27,'2023-10-11 23:00:24',1,1,'Login','Inicio de sesión '),(28,'2023-10-11 23:00:31',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(29,'2023-10-11 23:00:33',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(30,'2023-10-11 23:00:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(31,'2023-10-11 23:00:38',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(32,'2023-10-11 23:02:28',1,1,'Login','Inicio de sesión '),(33,'2023-10-11 23:02:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(34,'2023-10-11 23:03:08',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(35,'2023-10-11 23:04:25',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(36,'2023-10-11 23:04:27',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(37,'2023-10-11 23:04:46',2,1,'Login','Inicio de sesión '),(38,'2023-10-11 23:04:49',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(39,'2023-10-11 23:05:47',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(40,'2023-10-11 23:05:48',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-10-11 23:07:28',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(42,'2023-10-11 23:07:48',2,1,'Login','Inicio de sesión '),(43,'2023-10-11 23:07:50',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(44,'2023-10-11 23:11:14',2,1,'Login','Inicio de sesión '),(45,'2023-10-11 23:11:17',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(46,'2023-10-11 23:11:28',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(47,'2023-10-11 23:11:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(48,'2023-10-11 23:11:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(49,'2023-10-11 23:12:02',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(50,'2023-10-11 23:12:22',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(51,'2023-10-11 23:12:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(52,'2023-10-11 23:16:06',2,1,'Login','Inicio de sesión '),(53,'2023-10-11 23:16:08',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(54,'2023-10-11 23:23:13',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(55,'2023-10-11 23:23:15',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(56,'2023-10-11 23:26:02',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(57,'2023-10-11 23:30:30',1,1,'Login','Inicio de sesión '),(58,'2023-10-11 23:30:32',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(59,'2023-10-11 23:30:49',1,11,'Moficacion','El usuario modifico la contraseña'),(60,'2023-10-11 23:31:04',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(61,'2023-10-11 23:33:39',2,1,'Login','Inicio de sesión '),(62,'2023-10-11 23:33:42',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(63,'2023-10-11 23:35:04',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(64,'2023-10-11 23:35:07',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(65,'2023-10-11 23:35:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(66,'2023-10-11 23:38:47',3,1,'Login','Inicio de sesión '),(67,'2023-10-11 23:39:14',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(68,'2023-10-11 23:39:49',3,11,'Moficacion','El usuario modifico la contraseña'),(69,'2023-10-11 23:40:13',3,11,'Moficacion','El usuario modifico la contraseña'),(70,'2023-10-11 23:40:19',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(71,'2023-10-11 23:40:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(72,'2023-10-11 23:42:31',3,1,'Login','Inicio de sesión '),(73,'2023-10-11 23:42:33',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(74,'2023-10-11 23:44:18',3,1,'Login','Inicio de sesión '),(75,'2023-10-11 23:44:21',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(76,'2023-10-11 23:47:46',3,1,'Login','Inicio de sesión '),(77,'2023-10-11 23:47:48',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(78,'2023-10-11 23:48:15',3,1,'Login','Inicio de sesión '),(79,'2023-10-11 23:48:17',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(80,'2023-10-11 23:49:26',3,1,'Login','Inicio de sesión '),(81,'2023-10-11 23:49:28',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(82,'2023-10-11 23:51:08',1,1,'Login','Inicio de sesión '),(83,'2023-10-11 23:51:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(84,'2023-10-11 23:51:43',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(85,'2023-10-11 23:51:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(86,'2023-10-11 23:59:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(87,'2023-10-12 00:01:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(88,'2023-10-12 00:03:24',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(89,'2023-10-12 00:03:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(90,'2023-10-12 00:05:18',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(91,'2023-10-12 00:06:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(92,'2023-10-12 00:06:22',1,1,'Login','Inicio de sesión '),(93,'2023-10-12 00:06:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(94,'2023-10-12 00:08:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(95,'2023-10-12 00:08:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(96,'2023-10-12 00:09:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(97,'2023-10-12 00:11:43',1,1,'Login','Inicio de sesión '),(98,'2023-10-12 00:11:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(99,'2023-10-12 00:16:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(100,'2023-10-12 00:19:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(101,'2023-10-12 22:25:36',3,1,'Login','Inicio de sesión '),(102,'2023-10-12 22:25:40',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(103,'2023-10-12 22:46:13',3,1,'Login','Inicio de sesión '),(104,'2023-10-12 22:46:15',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(105,'2023-10-13 09:57:50',1,1,'Login','Inicio de sesión '),(106,'2023-10-13 09:57:53',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(107,'2023-10-13 09:59:30',1,1,'Login','Inicio de sesión '),(108,'2023-10-13 09:59:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(109,'2023-10-13 10:04:53',1,1,'Login','Inicio de sesión '),(110,'2023-10-13 10:04:56',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(111,'2023-10-13 10:09:38',1,1,'Login','Inicio de sesión '),(112,'2023-10-13 10:09:41',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(113,'2023-10-13 10:10:33',1,1,'Login','Inicio de sesión '),(114,'2023-10-13 10:10:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-13 10:12:02',1,1,'Login','Inicio de sesión '),(116,'2023-10-13 10:13:30',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(117,'2023-10-13 10:14:27',1,1,'Login','Inicio de sesión '),(118,'2023-10-13 10:14:29',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(119,'2023-10-13 10:14:54',1,1,'Login','Inicio de sesión '),(120,'2023-10-13 10:14:56',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-13 10:31:47',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-13 10:43:23',3,1,'Login','Inicio de sesión '),(123,'2023-10-13 10:43:25',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(124,'2023-10-13 10:43:31',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(125,'2023-10-13 10:43:54',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(126,'2023-10-13 10:44:05',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(127,'2023-10-13 10:54:01',3,1,'Login','Inicio de sesión '),(128,'2023-10-13 10:54:04',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(129,'2023-10-13 11:14:21',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(130,'2023-10-13 11:14:23',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(131,'2023-10-13 11:18:41',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(132,'2023-10-13 11:18:43',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-13 11:20:35',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-13 11:20:47',3,1,'Login','Inicio de sesión '),(135,'2023-10-13 11:20:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(136,'2023-10-13 11:34:32',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(137,'2023-10-13 12:06:39',1,1,'Login','Inicio de sesión '),(138,'2023-10-13 12:06:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(139,'2023-10-13 12:38:37',1,1,'Login','Inicio de sesión '),(140,'2023-10-13 12:38:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(141,'2023-10-13 12:43:39',1,1,'Login','Inicio de sesión '),(142,'2023-10-13 12:43:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(143,'2023-10-13 13:09:10',1,1,'Login','Inicio de sesión '),(144,'2023-10-13 13:09:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(145,'2023-10-13 13:11:45',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(146,'2023-10-13 13:11:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(147,'2023-10-13 13:28:59',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(148,'2023-10-13 13:29:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(149,'2023-10-13 13:38:48',1,1,'Login','Inicio de sesión '),(150,'2023-10-13 13:38:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(151,'2023-10-13 13:50:11',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(152,'2023-10-13 13:50:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(153,'2023-10-13 14:10:26',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(154,'2023-10-13 14:10:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(155,'2023-10-13 16:10:33',1,1,'Login','Inicio de sesión '),(156,'2023-10-13 16:10:34',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-13 16:20:28',1,1,'Login','Inicio de sesión '),(158,'2023-10-13 16:20:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(159,'2023-10-13 16:24:48',1,1,'Login','Inicio de sesión '),(160,'2023-10-13 16:24:49',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(161,'2023-10-13 16:25:40',1,1,'Login','Inicio de sesión '),(162,'2023-10-13 16:25:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(163,'2023-10-13 16:27:02',1,1,'Login','Inicio de sesión '),(164,'2023-10-13 16:27:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(165,'2023-10-13 16:34:33',1,1,'Login','Inicio de sesión '),(166,'2023-10-13 16:34:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(167,'2023-10-13 16:59:38',1,1,'Login','Inicio de sesión '),(168,'2023-10-13 16:59:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(169,'2023-10-13 17:20:49',1,1,'Login','Inicio de sesión '),(170,'2023-10-13 17:20:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(171,'2023-10-13 17:23:08',1,1,'Login','Inicio de sesión '),(172,'2023-10-13 17:23:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(173,'2023-10-13 18:06:41',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(174,'2023-10-13 19:12:02',3,1,'Login','Inicio de sesión '),(175,'2023-10-13 19:12:04',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(176,'2023-10-13 19:12:11',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(177,'2023-10-13 19:12:29',1,1,'Login','Inicio de sesión '),(178,'2023-10-13 19:12:31',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(179,'2023-10-13 19:20:58',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(180,'2023-10-13 19:21:09',3,1,'Login','Inicio de sesión '),(181,'2023-10-13 19:21:11',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(182,'2023-10-13 19:22:04',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(183,'2023-10-13 19:22:20',1,1,'Login','Inicio de sesión '),(184,'2023-10-13 19:22:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(185,'2023-10-13 19:27:22',1,1,'Login','Inicio de sesión '),(186,'2023-10-13 19:27:24',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(187,'2023-10-13 19:27:36',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(188,'2023-10-13 19:28:51',3,1,'Login','Inicio de sesión '),(189,'2023-10-13 19:29:11',1,1,'Login','Inicio de sesión '),(190,'2023-10-13 19:29:16',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(191,'2023-10-13 19:29:19',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(192,'2023-10-13 19:36:23',1,1,'Login','Inicio de sesión '),(193,'2023-10-13 19:36:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(194,'2023-10-14 16:28:39',1,1,'Login','Inicio de sesión '),(195,'2023-10-14 16:29:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(196,'2023-10-14 16:30:53',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(197,'2023-10-14 16:31:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(198,'2023-10-14 16:32:56',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(199,'2023-10-14 16:33:34',1,5,'Salir','El usuario salió de la pantalla de citas'),(200,'2023-10-14 16:34:08',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(201,'2023-10-14 16:34:58',1,1,'Login','Inicio de sesión '),(202,'2023-10-14 16:36:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(203,'2023-10-14 16:59:09',1,11,'Moficación','El usuario modificó los datos del perfil'),(204,'2023-10-14 17:00:08',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(205,'2023-10-14 17:00:16',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-14 17:27:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(207,'2023-10-14 17:27:24',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(208,'2023-10-14 17:37:45',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(209,'2023-10-14 17:38:21',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(210,'2023-10-14 17:38:28',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(211,'2023-10-14 17:40:05',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(212,'2023-10-14 17:40:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(213,'2023-10-14 17:41:05',1,1,'Login','Inicio de sesión '),(214,'2023-10-14 17:41:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(215,'2023-10-14 17:44:00',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(216,'2023-10-14 17:49:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(217,'2023-10-14 17:49:14',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(218,'2023-10-14 17:49:33',3,1,'Login','Inicio de sesión '),(219,'2023-10-14 17:49:36',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(220,'2023-10-14 17:49:45',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(221,'2023-10-14 17:50:03',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(222,'2023-10-14 17:54:13',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(223,'2023-10-14 17:59:57',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(224,'2023-10-14 18:01:37',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(225,'2023-10-14 18:02:39',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(226,'2023-10-14 18:02:55',3,1,'Login','Inicio de sesión '),(227,'2023-10-14 18:03:00',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(228,'2023-10-14 18:03:02',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(229,'2023-10-14 18:03:19',1,1,'Login','Inicio de sesión '),(230,'2023-10-14 18:03:21',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(231,'2023-10-14 18:03:33',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(232,'2023-10-14 18:13:30',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(233,'2023-10-14 18:17:27',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(234,'2023-10-14 18:17:45',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(235,'2023-10-14 18:18:05',3,1,'Login','Inicio de sesión '),(236,'2023-10-14 18:18:09',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(237,'2023-10-14 18:18:23',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(238,'2023-10-14 18:18:36',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(239,'2023-10-14 18:28:03',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(240,'2023-10-14 18:28:25',1,1,'Login','Inicio de sesión '),(241,'2023-10-14 18:28:30',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(242,'2023-10-14 18:28:35',1,11,'Modificación','El usuario modificó los datos del perfil'),(243,'2023-10-14 18:31:18',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(244,'2023-10-14 18:31:18',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(245,'2023-10-14 18:31:18',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(246,'2023-10-14 18:39:03',1,11,'Modificación','El usuario modificó los datos del perfil'),(247,'2023-10-14 18:39:20',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(248,'2023-10-14 18:39:32',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(249,'2023-10-14 18:39:36',1,11,'Modificación','El usuario modificó los datos del perfil'),(250,'2023-10-14 18:41:13',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(251,'2023-10-14 18:41:15',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(252,'2023-10-14 18:41:18',1,11,'Modificación','El usuario modificó los datos del perfil'),(253,'2023-10-14 18:42:55',3,1,'Login','Inicio de sesión '),(254,'2023-10-14 18:42:59',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(255,'2023-10-14 18:43:01',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(256,'2023-10-14 18:43:20',1,1,'Login','Inicio de sesión '),(257,'2023-10-14 18:43:22',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(258,'2023-10-14 18:58:19',3,1,'Login','Inicio de sesión '),(259,'2023-10-14 18:58:21',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(260,'2023-10-14 19:03:07',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(261,'2023-10-14 19:03:53',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(262,'2023-10-14 19:05:07',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(263,'2023-10-14 19:05:43',3,11,'Modificación','El usuario modificó la contraseña'),(264,'2023-10-14 19:07:28',3,11,'Modificación','El usuario modificó la contraseña'),(265,'2023-10-14 19:07:32',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(266,'2023-10-14 19:08:03',1,1,'Login','Inicio de sesión '),(267,'2023-10-14 19:08:31',3,1,'Login','Inicio de sesión '),(268,'2023-10-14 19:08:51',1,1,'Login','Inicio de sesión '),(269,'2023-10-14 19:08:58',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(270,'2023-10-14 19:37:14',1,11,'Modificación','El usuario modificó los datos del perfil'),(271,'2023-10-14 19:38:09',1,1,'Login','Inicio de sesión '),(272,'2023-10-14 19:38:14',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(273,'2023-10-14 19:38:50',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(274,'2023-10-14 19:38:54',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(275,'2023-10-14 19:40:05',1,11,'Modificación','El usuario modificó la contraseña'),(276,'2023-10-14 19:40:15',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(277,'2023-10-14 19:40:36',3,1,'Login','Inicio de sesión '),(278,'2023-10-14 19:40:39',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-14 19:40:55',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(280,'2023-10-14 19:40:58',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(281,'2023-10-14 19:41:09',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(282,'2023-10-14 19:41:11',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(283,'2023-10-14 19:41:31',1,1,'Login','Inicio de sesión '),(284,'2023-10-14 19:41:34',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(285,'2023-10-14 19:41:40',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(286,'2023-10-14 19:59:22',3,1,'Login','Inicio de sesión '),(287,'2023-10-14 19:59:25',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(288,'2023-10-14 20:02:47',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(289,'2023-10-14 20:03:00',3,1,'Login','Inicio de sesión '),(290,'2023-10-14 20:03:02',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(291,'2023-10-14 20:04:39',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(292,'2023-10-14 20:04:42',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(293,'2023-10-14 20:04:55',3,11,'Modificación','El usuario modificó los datos del perfil'),(294,'2023-10-20 20:54:58',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 20:55:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-21 09:56:20',1,1,'Login','Inicio de sesión '),(297,'2023-10-21 09:56:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-21 10:52:42',1,1,'Login','Inicio de sesión '),(299,'2023-10-21 10:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(300,'2023-10-21 10:52:59',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(301,'2023-10-21 10:56:37',3,1,'Login','Inicio de sesión '),(302,'2023-10-21 10:56:40',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(303,'2023-10-21 10:57:00',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(304,'2023-10-21 10:57:09',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(305,'2023-10-21 10:57:16',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(306,'2023-10-21 10:57:26',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(307,'2023-10-21 11:02:43',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(308,'2023-10-21 11:12:46',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(309,'2023-10-21 11:12:47',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(310,'2023-10-21 22:14:52',1,1,'Login','Inicio de sesión '),(311,'2023-10-21 22:14:56',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(312,'2023-10-21 22:21:26',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(313,'2023-10-21 22:21:29',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(314,'2023-10-21 22:21:44',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(315,'2023-10-21 22:23:11',1,1,'Login','Inicio de sesión '),(316,'2023-10-21 22:23:21',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(317,'2023-10-21 23:16:56',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(318,'2023-10-21 23:16:59',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(319,'2023-10-21 23:17:20',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(320,'2023-10-21 23:17:23',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(321,'2023-10-21 23:17:29',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(322,'2023-10-21 23:17:53',1,1,'Login','Inicio de sesión '),(323,'2023-10-21 23:17:55',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(324,'2023-10-21 23:17:57',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(325,'2023-10-21 23:18:01',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(326,'2023-10-21 23:18:18',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(327,'2023-10-21 23:18:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(328,'2023-10-21 23:19:33',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(329,'2023-10-21 23:20:22',1,1,'Login','Inicio de sesión '),(330,'2023-10-21 23:20:28',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(331,'2023-10-22 00:13:05',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(332,'2023-10-22 00:13:27',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(333,'2023-10-22 00:13:40',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(334,'2023-10-22 00:13:52',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(335,'2023-10-22 00:18:45',1,1,'Login','Inicio de sesión '),(336,'2023-10-22 00:18:48',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(337,'2023-10-22 00:19:01',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(338,'2023-10-22 00:19:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(339,'2023-10-22 00:29:09',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(340,'2023-10-22 00:29:12',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(341,'2023-10-22 00:29:28',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(342,'2023-10-22 00:29:36',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(343,'2023-10-22 00:31:15',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(344,'2023-10-22 00:31:31',1,1,'Login','Inicio de sesión '),(345,'2023-10-22 00:31:33',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(346,'2023-10-22 00:38:25',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(347,'2023-10-22 00:38:35',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(348,'2023-10-22 00:43:54',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(349,'2023-10-22 00:44:06',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(350,'2023-10-22 00:48:43',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(351,'2023-10-22 00:48:53',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(352,'2023-10-22 00:49:41',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(353,'2023-10-22 00:49:47',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(354,'2023-10-22 00:52:14',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(355,'2023-10-22 00:52:22',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(356,'2023-10-22 00:54:06',1,11,'Modificación','El usuario modificó la contraseña'),(357,'2023-10-22 01:02:43',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(358,'2023-10-22 01:09:37',1,1,'Login','Inicio de sesión '),(359,'2023-10-22 01:09:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(360,'2023-10-22 11:57:17',3,1,'Login','Inicio de sesión '),(361,'2023-10-22 11:57:21',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(362,'2023-10-22 11:57:36',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(363,'2023-10-22 11:57:38',3,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(364,'2023-10-22 12:01:16',1,1,'Login','Inicio de sesión '),(365,'2023-10-22 12:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-22 12:24:07',1,1,'Login','Inicio de sesión '),(367,'2023-10-22 12:24:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(368,'2023-10-22 12:30:58',1,1,'Login','Inicio de sesión '),(369,'2023-10-22 12:31:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(370,'2023-10-27 10:30:07',3,1,'Login','Inicio de sesión '),(371,'2023-10-27 10:32:02',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(372,'2023-10-27 10:32:53',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(373,'2023-10-27 10:33:00',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(374,'2023-10-27 10:43:06',3,11,'Modificación','El usuario modificó la contraseña'),(375,'2023-10-27 10:46:31',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(376,'2023-10-27 10:55:16',1,1,'Login','Inicio de sesión '),(377,'2023-10-27 10:55:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(378,'2023-10-28 12:50:03',1,1,'Login','Inicio de sesión '),(379,'2023-10-28 12:52:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(380,'2023-10-28 13:09:10',1,1,'Login','Inicio de sesión '),(381,'2023-10-28 13:09:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(382,'2023-10-28 13:19:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(383,'2023-10-28 13:19:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(384,'2023-10-28 13:19:27',1,5,'Borrar Cita','El usuario eliminó una cita'),(385,'2023-10-28 13:19:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-28 13:22:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(387,'2023-10-28 13:23:06',1,5,'Registro','El usuario registró una nueva cita'),(388,'2023-10-28 13:23:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(389,'2023-10-28 13:23:56',1,5,'Registro','El usuario registró una nueva cita'),(390,'2023-10-28 13:24:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(391,'2023-10-28 13:24:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(392,'2023-10-28 13:24:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(393,'2023-10-31 11:41:33',1,1,'Login','Inicio de sesión '),(394,'2023-10-31 11:44:40',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(395,'2023-10-31 11:45:50',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(396,'2023-10-31 11:48:05',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(397,'2023-10-31 11:56:09',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(398,'2023-10-31 11:56:51',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(399,'2023-10-31 14:14:23',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(400,'2023-10-31 14:17:19',3,1,'Login','Inicio de sesión '),(401,'2023-10-31 14:19:27',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(402,'2023-10-31 14:20:10',3,11,'Modificación','El usuario modificó la contraseña'),(403,'2023-10-31 14:26:29',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(404,'2023-10-31 14:26:49',1,1,'Login','Inicio de sesión '),(405,'2023-11-02 11:06:50',1,1,'Login','Inicio de sesión '),(406,'2023-11-02 11:40:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(407,'2023-11-02 11:55:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(408,'2023-11-02 11:56:16',1,5,'Borrar Cita','El usuario eliminó una cita'),(409,'2023-11-02 11:56:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(410,'2023-11-02 11:56:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(411,'2023-11-02 11:59:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-11-02 12:03:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(413,'2023-11-02 12:03:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-11-02 12:09:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(415,'2023-11-04 10:12:27',1,1,'Login','Inicio de sesión '),(416,'2023-11-04 10:12:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(417,'2023-11-04 11:21:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(418,'2023-11-04 11:22:08',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(419,'2023-11-04 11:23:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(420,'2023-11-04 11:24:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-11-04 11:24:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(422,'2023-11-04 11:24:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(423,'2023-11-04 11:25:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(424,'2023-11-04 11:26:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(425,'2023-11-04 11:27:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(426,'2023-11-04 11:28:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(427,'2023-11-04 11:29:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-04 11:30:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(429,'2023-11-04 11:30:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-04 11:31:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(431,'2023-11-04 11:34:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-04 11:34:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(433,'2023-11-04 11:35:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-04 11:37:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(435,'2023-11-04 11:39:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(436,'2023-11-04 11:39:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(437,'2023-11-04 11:43:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(438,'2023-11-04 18:38:28',1,1,'Login','Inicio de sesión '),(439,'2023-11-04 18:38:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(440,'2023-11-05 09:37:48',1,1,'Login','Inicio de sesión '),(441,'2023-11-05 09:37:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(442,'2023-11-05 09:39:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(443,'2023-11-05 09:39:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(444,'2023-11-05 09:39:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(445,'2023-11-05 11:22:17',1,1,'Login','Inicio de sesión '),(446,'2023-11-05 11:22:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(447,'2023-11-05 18:16:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(448,'2023-11-05 18:17:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(449,'2023-11-05 18:17:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(450,'2023-11-05 18:17:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-05 18:18:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(452,'2023-11-05 18:18:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(453,'2023-11-05 18:18:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(454,'2023-11-05 18:18:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-05 18:18:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(456,'2023-11-05 18:18:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(457,'2023-11-05 18:19:14',1,5,'Borrar Cita','El usuario eliminó una cita'),(458,'2023-11-05 18:19:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(459,'2023-11-05 18:21:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(460,'2023-11-05 18:21:08',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(461,'2023-11-05 18:21:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(462,'2023-11-05 18:23:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(463,'2023-11-05 18:37:02',1,1,'Login','Inicio de sesión '),(464,'2023-11-05 18:37:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(465,'2023-11-05 18:37:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(466,'2023-11-05 18:37:30',1,5,'Registro','El usuario registró una nueva cita'),(467,'2023-11-05 18:37:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(468,'2023-11-05 18:38:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(469,'2023-11-05 18:38:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(470,'2023-11-13 12:45:31',1,1,'Login','Inicio de sesión '),(471,'2023-11-13 12:45:33',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(472,'2023-11-13 12:47:00',1,1,'Login','Inicio de sesión '),(473,'2023-11-13 12:47:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(474,'2023-11-13 12:47:45',1,1,'Login','Inicio de sesión '),(475,'2023-11-13 12:47:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(476,'2023-11-13 12:48:46',1,1,'Login','Inicio de sesión '),(477,'2023-11-13 12:48:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(478,'2023-11-13 19:36:09',1,1,'Login','Inicio de sesión '),(479,'2023-11-13 19:36:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(480,'2023-11-13 19:36:30',1,1,'Login','Inicio de sesión '),(481,'2023-11-13 19:36:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(482,'2023-11-13 19:39:07',1,1,'Login','Inicio de sesión '),(483,'2023-11-13 19:39:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(484,'2023-11-13 19:40:36',1,1,'Login','Inicio de sesión '),(485,'2023-11-13 19:40:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(486,'2023-11-13 19:42:40',1,1,'Login','Inicio de sesión '),(487,'2023-11-13 19:42:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(488,'2023-11-13 19:44:46',1,1,'Login','Inicio de sesión '),(489,'2023-11-13 19:44:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(490,'2023-11-13 19:46:26',1,1,'Login','Inicio de sesión '),(491,'2023-11-13 19:46:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(492,'2023-11-13 19:51:21',1,1,'Login','Inicio de sesión '),(493,'2023-11-13 19:51:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(494,'2023-11-13 19:55:10',1,1,'Login','Inicio de sesión '),(495,'2023-11-13 19:55:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(496,'2023-11-13 19:56:52',1,1,'Login','Inicio de sesión '),(497,'2023-11-13 19:56:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(498,'2023-11-13 19:57:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(499,'2023-11-13 20:00:59',1,5,'Salir','El usuario salió de la pantalla de citas'),(500,'2023-11-13 20:01:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(501,'2023-11-13 20:01:58',1,5,'Salir','El usuario salió de la pantalla de citas'),(502,'2023-11-13 20:01:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(503,'2023-11-13 20:05:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-13 20:05:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(505,'2023-11-13 20:12:59',1,1,'Login','Inicio de sesión '),(506,'2023-11-13 20:13:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(507,'2023-11-13 20:17:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(508,'2023-11-13 20:17:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(509,'2023-11-13 20:17:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(510,'2023-11-13 20:17:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(511,'2023-11-13 20:18:28',1,5,'Salir','El usuario salió de la pantalla de citas'),(512,'2023-11-13 20:18:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(513,'2023-11-13 20:19:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(514,'2023-11-13 20:19:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(515,'2023-11-13 20:20:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(516,'2023-11-13 20:20:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(517,'2023-11-13 20:34:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(518,'2023-11-13 20:34:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(519,'2023-11-13 20:35:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(520,'2023-11-13 20:35:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(521,'2023-11-13 20:37:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(522,'2023-11-13 20:38:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(523,'2023-11-13 20:40:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(524,'2023-11-13 20:40:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(525,'2023-11-13 20:40:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(526,'2023-11-13 20:40:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(527,'2023-11-13 20:40:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(528,'2023-11-13 20:40:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(529,'2023-11-13 20:40:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(530,'2023-11-13 20:41:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(531,'2023-11-13 20:51:14',1,5,'Registro','El usuario registró una nueva cita'),(532,'2023-11-13 20:51:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(533,'2023-11-13 20:51:58',1,5,'Registro','El usuario registró una nueva cita'),(534,'2023-11-13 20:52:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(535,'2023-11-13 21:25:22',1,5,'Registro','El usuario registró una nueva cita'),(536,'2023-11-13 21:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(537,'2023-11-13 21:26:07',1,5,'Registro','El usuario registró una nueva cita'),(538,'2023-11-13 21:26:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(539,'2023-11-13 21:28:58',1,5,'Registro','El usuario registró una nueva cita'),(540,'2023-11-13 21:32:44',1,5,'Registro','El usuario registró una nueva cita'),(541,'2023-11-13 21:33:38',1,5,'Registro','El usuario registró una nueva cita'),(542,'2023-11-13 21:40:04',1,5,'Registro','El usuario registró una nueva cita'),(543,'2023-11-13 21:43:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(544,'2023-11-13 21:44:02',1,5,'Registro','El usuario registró una nueva cita'),(545,'2023-11-13 21:44:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(546,'2023-11-13 21:45:05',1,5,'Registro','El usuario registró una nueva cita'),(547,'2023-11-13 21:56:56',1,5,'Registro','El usuario registró una nueva cita'),(548,'2023-11-14 21:31:48',1,1,'Login','Inicio de sesión '),(549,'2023-11-14 21:31:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(550,'2023-11-14 21:50:13',1,5,'Registro','El usuario registró una nueva cita'),(551,'2023-11-14 21:50:29',1,5,'Registro','El usuario registró una nueva cita'),(552,'2023-11-14 21:50:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(553,'2023-11-14 21:50:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-14 21:52:40',1,5,'Registro','El usuario registró una nueva cita'),(555,'2023-11-14 21:53:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(556,'2023-11-14 21:53:45',1,5,'Borrar Cita','El usuario eliminó una cita'),(557,'2023-11-14 21:53:48',1,5,'Borrar Cita','El usuario eliminó una cita'),(558,'2023-11-14 21:53:50',1,5,'Borrar Cita','El usuario eliminó una cita'),(559,'2023-11-14 21:53:53',1,5,'Borrar Cita','El usuario eliminó una cita'),(560,'2023-11-14 21:53:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(561,'2023-11-14 21:53:58',1,5,'Borrar Cita','El usuario eliminó una cita'),(562,'2023-11-14 21:54:00',1,5,'Borrar Cita','El usuario eliminó una cita'),(563,'2023-11-14 21:54:03',1,5,'Borrar Cita','El usuario eliminó una cita'),(564,'2023-11-14 21:54:06',1,5,'Borrar Cita','El usuario eliminó una cita'),(565,'2023-11-14 21:54:08',1,5,'Borrar Cita','El usuario eliminó una cita'),(566,'2023-11-14 21:54:10',1,5,'Borrar Cita','El usuario eliminó una cita'),(567,'2023-11-14 21:54:12',1,5,'Borrar Cita','El usuario eliminó una cita'),(568,'2023-11-14 21:54:14',1,5,'Borrar Cita','El usuario eliminó una cita'),(569,'2023-11-14 21:54:18',1,5,'Borrar Cita','El usuario eliminó una cita'),(570,'2023-11-14 21:54:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(571,'2023-11-14 21:54:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(572,'2023-11-14 21:54:25',1,5,'Borrar Cita','El usuario eliminó una cita'),(573,'2023-11-14 21:54:27',1,5,'Borrar Cita','El usuario eliminó una cita'),(574,'2023-11-14 21:55:13',1,5,'Registro','El usuario registró una nueva cita'),(575,'2023-11-14 21:59:28',1,1,'Login','Inicio de sesión '),(576,'2023-11-14 21:59:29',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(577,'2023-11-14 21:59:33',1,5,'Borrar Cita','El usuario eliminó una cita'),(578,'2023-11-14 22:00:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(579,'2023-11-14 22:01:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(580,'2023-11-14 22:04:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(581,'2023-11-14 22:04:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(582,'2023-11-14 22:05:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(583,'2023-11-14 22:12:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(584,'2023-11-14 22:32:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(585,'2023-11-14 22:32:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(586,'2023-11-14 22:48:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(587,'2023-11-14 22:52:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(588,'2023-11-14 22:52:22',1,5,'Borrar Cita','El usuario eliminó una cita'),(589,'2023-11-14 23:01:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(590,'2023-11-14 23:01:54',1,5,'Borrar Cita','El usuario eliminó una cita'),(591,'2023-11-14 23:01:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(592,'2023-11-14 23:04:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(593,'2023-11-14 23:25:16',1,5,'Registro','El usuario registró una nueva cita'),(594,'2023-11-14 23:25:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(595,'2023-11-14 23:25:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(596,'2023-11-14 23:35:19',1,1,'Login','Inicio de sesión '),(597,'2023-11-14 23:35:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(598,'2023-11-14 23:51:09',1,5,'Salir','El usuario salió de la pantalla de citas'),(599,'2023-11-14 23:51:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(600,'2023-11-17 12:30:27',1,1,'Login','Inicio de sesión '),(601,'2023-11-17 12:30:29',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(602,'2023-11-17 12:44:22',1,1,'Login','Inicio de sesión '),(603,'2023-11-17 12:44:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(604,'2023-11-17 12:52:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(605,'2023-11-17 12:52:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(606,'2023-11-17 12:54:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(607,'2023-11-17 12:54:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(608,'2023-11-17 12:54:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(609,'2023-11-17 12:54:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(610,'2023-11-17 12:59:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(611,'2023-11-17 12:59:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(612,'2023-11-17 12:59:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(613,'2023-11-17 13:00:00',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(614,'2023-11-17 13:00:17',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(615,'2023-11-17 13:01:06',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(616,'2023-11-17 13:04:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(617,'2023-11-17 13:04:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(618,'2023-11-17 13:38:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(619,'2023-11-17 13:38:51',1,5,'Salir','El usuario salió de la pantalla de citas'),(620,'2023-11-17 13:38:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(621,'2023-11-17 13:39:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(622,'2023-11-17 13:39:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(623,'2023-11-17 13:40:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(624,'2023-11-17 13:40:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(625,'2023-11-17 13:40:45',1,1,'Login','Inicio de sesión '),(626,'2023-11-17 13:40:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(627,'2023-11-17 13:42:51',1,1,'Login','Inicio de sesión '),(628,'2023-11-17 13:42:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(629,'2023-11-17 13:49:58',1,5,'Salir','El usuario salió de la pantalla de citas'),(630,'2023-11-17 13:49:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(631,'2023-11-17 14:29:01',1,1,'Login','Inicio de sesión '),(632,'2023-11-17 14:29:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(633,'2023-11-23 10:15:07',1,1,'Login','Inicio de sesión '),(634,'2023-11-23 10:19:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(635,'2023-11-23 10:25:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(636,'2023-11-23 10:25:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(637,'2023-11-23 10:45:26',1,1,'Login','Inicio de sesión '),(638,'2023-11-23 10:45:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(639,'2023-11-23 10:47:43',1,1,'Login','Inicio de sesión '),(640,'2023-11-23 10:47:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(641,'2023-11-23 10:48:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(642,'2023-11-23 10:48:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(643,'2023-11-23 10:48:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(644,'2023-11-23 10:51:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(645,'2023-11-23 10:56:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(646,'2023-11-23 10:57:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(647,'2023-11-23 11:00:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(648,'2023-11-23 11:01:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(649,'2023-11-23 11:01:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(650,'2023-11-23 11:01:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(651,'2023-11-23 11:01:33',1,1,'Login','Inicio de sesión '),(652,'2023-11-23 11:01:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(653,'2023-11-23 11:04:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(654,'2023-11-23 11:04:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(655,'2023-11-23 11:04:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(656,'2023-11-23 11:06:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(657,'2023-11-23 11:06:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(658,'2023-11-23 11:06:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(659,'2023-11-23 11:07:06',1,1,'Login','Inicio de sesión '),(660,'2023-11-23 11:07:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(661,'2023-11-23 11:12:46',1,1,'Login','Inicio de sesión '),(662,'2023-11-23 11:12:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(663,'2023-11-23 11:13:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(664,'2023-11-23 11:13:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(665,'2023-11-23 11:13:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(666,'2023-11-23 11:14:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(667,'2023-11-23 11:14:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(668,'2023-11-23 11:15:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(669,'2023-11-23 11:16:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(670,'2023-11-23 11:17:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(671,'2023-11-23 11:17:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(672,'2023-11-23 11:35:45',1,5,'Salir','El usuario salió de la pantalla de citas'),(673,'2023-11-23 11:35:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(674,'2023-11-23 11:36:08',1,1,'Login','Inicio de sesión '),(675,'2023-11-23 11:36:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-11-23 11:36:48',1,5,'Salir','El usuario salió de la pantalla de citas'),(677,'2023-11-23 11:36:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(678,'2023-11-23 11:40:48',1,5,'Salir','El usuario salió de la pantalla de citas'),(679,'2023-11-23 11:40:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(680,'2023-11-23 11:42:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(681,'2023-11-23 11:42:42',1,5,'Salir','El usuario salió de la pantalla de citas'),(682,'2023-11-23 11:42:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(683,'2023-11-23 11:45:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(684,'2023-11-23 11:45:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(685,'2023-11-23 11:46:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(686,'2023-11-23 11:46:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(687,'2023-11-23 11:47:58',1,1,'Login','Inicio de sesión '),(688,'2023-11-23 11:48:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(689,'2023-11-23 11:49:43',1,1,'Login','Inicio de sesión '),(690,'2023-11-23 11:49:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(691,'2023-11-23 11:52:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(692,'2023-11-23 11:52:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(693,'2023-11-23 11:55:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(694,'2023-11-23 11:55:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(695,'2023-11-23 11:55:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(696,'2023-11-23 11:56:11',1,1,'Login','Inicio de sesión '),(697,'2023-11-23 11:56:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(698,'2023-11-23 11:56:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(699,'2023-11-23 11:56:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(700,'2023-11-23 11:58:58',1,1,'Login','Inicio de sesión '),(701,'2023-11-23 11:58:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(702,'2023-11-23 11:59:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(703,'2023-11-23 11:59:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(704,'2023-11-23 12:00:03',1,1,'Login','Inicio de sesión '),(705,'2023-11-23 12:00:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(706,'2023-11-23 12:01:21',1,1,'Login','Inicio de sesión '),(707,'2023-11-23 12:01:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(708,'2023-11-23 12:07:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(709,'2023-11-23 12:07:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(710,'2023-11-23 12:13:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(711,'2023-11-23 12:13:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(712,'2023-11-23 12:13:59',1,5,'Salir','El usuario salió de la pantalla de citas'),(713,'2023-11-23 12:14:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(714,'2023-11-23 12:15:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(715,'2023-11-23 12:15:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(716,'2023-11-23 12:15:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(717,'2023-11-23 12:15:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(718,'2023-11-23 12:16:12',1,5,'Salir','El usuario salió de la pantalla de citas'),(719,'2023-11-23 12:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(720,'2023-11-23 12:18:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(721,'2023-11-23 12:18:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(722,'2023-11-23 12:18:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(723,'2023-11-23 12:18:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(724,'2023-11-23 12:18:53',1,5,'Salir','El usuario salió de la pantalla de citas'),(725,'2023-11-23 12:18:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(726,'2023-11-23 12:20:12',1,5,'Salir','El usuario salió de la pantalla de citas'),(727,'2023-11-23 12:20:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(728,'2023-11-23 12:30:14',1,1,'Login','Inicio de sesión '),(729,'2023-11-23 12:30:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(730,'2023-11-23 13:25:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(731,'2023-11-23 13:26:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(732,'2023-11-23 13:26:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-11-23 13:26:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(734,'2023-11-23 13:36:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(735,'2023-11-23 13:38:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(736,'2023-11-23 13:38:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(737,'2023-11-23 13:39:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(738,'2023-11-23 13:39:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(739,'2023-11-23 14:13:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(740,'2023-11-24 18:04:15',1,1,'Login','Inicio de sesión '),(741,'2023-11-24 18:04:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(742,'2023-11-24 18:05:24',1,5,'Registro','El usuario registró una nueva cita'),(743,'2023-11-24 18:08:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(744,'2023-11-24 18:09:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(745,'2023-11-24 18:10:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(746,'2023-11-24 18:14:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(747,'2023-11-24 18:14:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(748,'2023-11-24 18:20:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(749,'2023-11-24 18:20:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-11-24 18:20:13',1,5,'Salir','El usuario salió de la pantalla de citas'),(751,'2023-11-24 18:21:09',1,1,'Login','Inicio de sesión '),(752,'2023-11-24 18:24:53',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(753,'2023-11-24 18:24:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(754,'2023-11-24 18:58:57',1,1,'Login','Inicio de sesión '),(755,'2023-11-24 18:59:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(756,'2023-11-24 18:59:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(757,'2023-11-24 19:00:41',1,1,'Login','Inicio de sesión '),(758,'2023-11-24 19:00:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-11-24 19:02:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-11-24 19:02:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(761,'2023-11-24 19:02:49',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(762,'2023-11-24 19:02:51',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(763,'2023-11-24 19:02:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(764,'2023-11-24 19:03:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(765,'2023-11-24 19:03:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(766,'2023-11-24 19:03:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(767,'2023-11-24 19:03:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(768,'2023-11-24 19:04:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(769,'2023-11-24 19:05:26',1,1,'Login','Inicio de sesión '),(770,'2023-11-24 19:05:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(771,'2023-11-24 19:05:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(772,'2023-11-24 19:06:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(773,'2023-11-24 19:06:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(774,'2023-11-24 19:09:34',1,1,'Login','Inicio de sesión '),(775,'2023-11-24 19:09:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-11-24 19:29:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(777,'2023-11-24 19:29:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(778,'2023-11-24 19:47:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(779,'2023-11-24 19:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(780,'2023-11-24 22:53:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(781,'2023-11-24 22:54:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-11-24 23:10:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(783,'2023-11-24 23:11:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(784,'2023-11-24 23:29:29',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(785,'2023-11-24 23:29:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(786,'2023-11-24 23:32:00',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(787,'2023-11-24 23:33:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(788,'2023-11-24 23:33:40',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(789,'2023-11-24 23:45:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-11-24 23:45:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(791,'2023-11-24 23:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(792,'2023-11-24 23:45:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(793,'2023-11-24 23:46:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(794,'2023-11-25 00:10:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(795,'2023-11-25 00:34:23',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(796,'2023-11-25 00:36:18',1,1,'Login','Inicio de sesión '),(797,'2023-11-25 00:36:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(798,'2023-11-25 00:37:04',1,1,'Login','Inicio de sesión '),(799,'2023-11-25 00:37:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(800,'2023-11-25 00:40:34',1,1,'Login','Inicio de sesión '),(801,'2023-11-25 00:40:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(802,'2023-11-25 00:47:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(803,'2023-11-25 00:55:31',1,1,'Login','Inicio de sesión '),(804,'2023-11-25 00:55:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(805,'2023-11-25 00:58:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(806,'2023-11-25 01:01:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(807,'2023-11-25 01:03:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(808,'2023-11-25 01:04:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(809,'2023-11-25 01:11:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(810,'2023-11-25 01:11:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(811,'2023-11-25 01:14:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(812,'2023-11-25 01:14:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(813,'2023-11-25 01:16:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(814,'2023-11-25 01:19:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(815,'2023-11-25 01:21:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(816,'2023-11-25 01:28:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(817,'2023-11-25 01:28:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(818,'2023-11-25 01:28:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(819,'2023-11-25 01:29:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(820,'2023-11-25 01:29:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(821,'2023-11-25 01:36:41',1,1,'Login','Inicio de sesión '),(822,'2023-11-25 01:36:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(823,'2023-11-25 01:39:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(824,'2023-11-25 01:40:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(825,'2023-11-25 01:41:07',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(826,'2023-11-25 01:47:35',1,1,'Login','Inicio de sesión '),(827,'2023-11-25 01:47:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(828,'2023-11-25 12:19:07',1,1,'Login','Inicio de sesión '),(829,'2023-11-25 12:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(830,'2023-11-25 12:21:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(831,'2023-11-25 12:21:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(832,'2023-11-25 12:21:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(833,'2023-11-25 12:21:51',1,5,'Registro','El usuario registró una nueva cita'),(834,'2023-11-25 12:25:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(835,'2023-11-25 12:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(836,'2023-11-25 12:26:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(837,'2023-11-25 12:26:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(838,'2023-11-25 12:26:46',1,5,'Salir','El usuario salió de la pantalla de citas'),(839,'2023-11-25 17:11:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(840,'2023-11-25 17:11:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(841,'2023-11-25 17:12:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(842,'2023-11-25 17:12:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(843,'2023-11-25 17:13:25',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(844,'2023-11-25 19:33:40',1,1,'Login','Inicio de sesión '),(845,'2023-11-25 19:33:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(846,'2023-11-25 19:33:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(847,'2023-11-25 19:36:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(848,'2023-11-25 19:37:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(849,'2023-11-25 19:37:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(850,'2023-11-25 19:39:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(851,'2023-11-25 19:41:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(852,'2023-11-25 19:41:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(853,'2023-11-25 19:43:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(854,'2023-11-25 20:03:34',1,1,'Login','Inicio de sesión '),(855,'2023-11-25 20:21:54',1,1,'Login','Inicio de sesión '),(856,'2023-11-25 20:22:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(857,'2023-11-25 20:41:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(858,'2023-11-25 20:41:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(859,'2023-11-25 20:41:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(860,'2023-11-25 21:28:51',1,1,'Login','Inicio de sesión '),(861,'2023-11-25 21:28:56',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(862,'2023-11-25 21:38:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(863,'2023-11-25 21:46:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(864,'2023-11-25 21:56:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(865,'2023-11-25 21:58:02',1,1,'Login','Inicio de sesión '),(866,'2023-11-25 21:58:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(867,'2023-11-25 22:02:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(868,'2023-11-25 22:12:55',1,1,'Login','Inicio de sesión '),(869,'2023-11-25 22:12:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(870,'2023-11-25 22:15:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(871,'2023-11-25 22:15:29',1,1,'Login','Inicio de sesión '),(872,'2023-11-25 22:15:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(873,'2023-11-25 23:03:15',1,1,'Login','Inicio de sesión '),(874,'2023-11-25 23:03:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(875,'2023-11-25 23:59:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(876,'2023-11-26 00:05:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(877,'2023-11-26 00:05:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(878,'2023-11-26 00:19:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(879,'2023-11-26 00:19:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(880,'2023-11-26 00:19:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(881,'2023-11-26 00:22:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(882,'2023-11-26 00:31:24',1,1,'Login','Inicio de sesión '),(883,'2023-11-26 00:31:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(884,'2023-11-26 00:34:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(885,'2023-11-26 00:37:33',1,1,'Login','Inicio de sesión '),(886,'2023-11-26 00:43:21',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(887,'2023-11-26 00:52:23',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(888,'2023-11-26 00:52:28',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(889,'2023-11-26 00:52:33',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios');
/*!40000 ALTER TABLE `tbl_ms_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_hist_contrasenia`
--

DROP TABLE IF EXISTS `tbl_ms_hist_contrasenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_hist_contrasenia` (
  `Id_Historial` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Contrasenia` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Historial`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,1,'$2b$10$KkuROv2.OC6qLmZVLsz8H.R.hNyT26kKdfwtzb.989xJIiAUdwPjG','ADMIN',NULL,NULL,NULL),(20,1,'$2b$10$Z86oQU5nFqFO1GNNbpf7C.rKNf5iinqQSX1pUWtf5j7LQz9PDgGV2','ADMIN',NULL,NULL,NULL),(21,3,'$2b$10$LT5CCIjkz7oLR2DMDrOXlO2Zqe3/8l.ZLAToiZ0BIICzvwXjQAUvC','LOCAL',NULL,NULL,NULL),(22,3,'$2b$10$s6yo2AX2iY4WwAjfoRHSye7mlErAiUqFyixyTNaVcX654xvOg4VLW','HOST',NULL,NULL,NULL),(23,3,'$2b$10$vCGwdVeny6hRI6ZnowoWW.VYfIvayOoJx4Ug/Rgct6TIY8jipVnFe','HOST',NULL,NULL,NULL),(24,1,'$2b$10$2.9qMH6IrwW7BG7H2B9gj.qRO4dzLmB6L2lzdTczEi69RCtuk7kV.','ADMIN',NULL,NULL,NULL),(25,3,'$2b$10$aP66C56UtijhmPNgYb/nW.M.e59/RcGn4DfyaMjZpFWwMUM4lWgdy','HOST',NULL,NULL,NULL),(26,3,'$2b$10$hPvCFHJ5Bo6.B0w.VPtWe.OJjtrCJ5u6eDgzbA6r/zu.9qNBwqqyy','HOST',NULL,NULL,NULL),(27,1,'$2b$10$bLjd4DViUgMGORujpaQDrOI1PfkrWOjCu1FtyL5i6OVI7X1/BScE6','ADMIN',NULL,NULL,NULL),(28,1,'$2b$10$I3a712cBorSAP8Gi9SxWeecPmIyHZmjFkyj9xYd8WUKyfAxbxAEoS','ADMIN',NULL,NULL,NULL),(29,3,'$2b$10$h5GTKGdMxcIqcAsZzSLmV.0qmOEcOp4dPTKtR.a2H2WkeH6OK.lNG','HOST',NULL,NULL,NULL),(30,3,'$2b$10$ZW3qzxPlqEwXQQul6j3M4.Vd69PLamD6/POi4tju0YtbyvCvR.39O','HOST',NULL,NULL,NULL),(31,3,'$2b$10$.BOYAhsPL4lF004gp.4CWeQiGHotDnEEA/08Nz4SxDyONk/auetVi','HOST',NULL,NULL,NULL),(32,3,'$2b$10$2cr/UTFfcvo2RYGw8i/dfeo.lolInfHPjKN9aOnKg7LPHpMU53rjm','HOST',NULL,NULL,NULL),(33,3,'$2b$10$cIdBJc0ONxAf66tADKFpu.4t4X0GpaUhqs7fHsdf9Ls4NR7H4SZPy','HOST',NULL,NULL,NULL),(34,1,'$2b$10$bIXOUmbUVt7CYCSsRJy9D.vKJpcHPEGpt24hbXbUrtUUKOJzRlUqq','ADMIN',NULL,NULL,NULL),(35,3,'$2b$10$biphoSR8e/F/TSrn3bDflOeU1/xxVbrdEfwPCH1mHSvZWSORhwBQe','HOST',NULL,NULL,NULL),(36,3,'$2b$10$z3ufpRzh.QQLiVMDyoDYl.BRfKCp5lRCSIVYcdJJzEcI27ut5FA1O','HOST',NULL,NULL,NULL),(37,3,'$2b$10$b3fuhoLxS9D0oYfExXTt6uGiuTMLs0MCrtr99flaEBdKsCTlMVmnm','HOST',NULL,NULL,NULL),(38,3,'$2b$10$ZVZBqSrzX486X14EDFrOU.Yhy7UdLBuF0CIUZ/S0CdU/WpUmZC6iW','HOST',NULL,NULL,NULL),(39,3,'$2b$10$IR4gPv7lsyodKU4qSUkomOaK54nJVBYkrvEOT/ILfANhyY1HHtbde','HOST',NULL,NULL,NULL),(40,3,'$2b$10$dWm9zT.7hgYlaR523Wv4UeX7p8VzRn9XLzgie4xwXMBvW7GODht2C','HOST',NULL,NULL,NULL),(41,3,'$2b$10$BKBMDVPR.BIR3ZUn2BnsSunBNI2gdtpH6cPmOLAgybF70Wkj0HsA.','HOST',NULL,NULL,NULL),(42,3,'$2b$10$JZSoFB1g9hg/QJNGOSpV2OmOfJod0mZnYXaBZlhgPgAV57xI7x/Jm','HOST',NULL,NULL,NULL),(43,3,'$2b$10$B4L3YchvzZgJl1D.qpwP3OADiYgbYh8H5W2Z8m3m9L9djtVj64eKC','HOST',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_parametros`
--

DROP TABLE IF EXISTS `tbl_ms_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_parametros` (
  `Id_Parametro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Parametro` varchar(59) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Parametro`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿CUAL ES TU COLOR FAVORITO?','Jared','2023-03-15','JOHANA','2023-11-26'),(2,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo','2023-03-15','JOHANA','2023-11-26'),(3,'¿CUAL ES TU AUTO FAVORITO?','Erick','2023-03-15','JOHANA','2023-11-26'),(4,'¿QUIERES VIAJAR HOY?','ERICKK','2023-03-15','JOHANA','2023-11-26'),(22,'¿CUAL ES EL NOMBRE DE TU ABUELO?','JOHANA','2023-10-22','JOHANA','2023-11-26');
/*!40000 ALTER TABLE `tbl_ms_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas_usuario` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Respuesta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Pregunta` (`Id_Pregunta`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,3,'AZUL','HOST','2023-10-31',NULL,NULL),(2,3,'NOCE','HOST','2023-10-31',NULL,NULL),(3,3,'NADA','HOST','2023-10-31',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`),
  UNIQUE KEY `Descripcion` (`Descripcion`),
  UNIQUE KEY `Rol` (`Rol`),
  UNIQUE KEY `Descripcion_2` (`Descripcion`),
  UNIQUE KEY `Rol_2` (`Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 04:04:01',NULL,NULL,'Activo'),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 05:01:31',NULL,NULL,'Activo');
/*!40000 ALTER TABLE `tbl_ms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(15) DEFAULT NULL,
  `Nombre_Usuario` varchar(100) DEFAULT NULL,
  `Estado_Usuario` varchar(100) DEFAULT 'Nuevo',
  `Contrasenia` varchar(100) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Fecha_Ultima_Conexion` date DEFAULT NULL,
  `Preguntas_Contestadas` int(11) DEFAULT 0,
  `Primer_Ingreso` int(11) DEFAULT 0,
  `Fecha_Vencimiento` date DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMINI','ADMIN','Activo','$2b$10$7Wtw6sQt9ihyz0NyTIubs.86YtCi3b7gAiNVTrlGqkrhQMp.adPI2',1,'2023-02-02',1,1,'2023-11-17','johanalara2606@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08','Activo'),(3,'HOST','HOST','Activo','$2b$10$OAseS5MaJItyDv77SpQwtulVEMn8JaFlaNTfC2ieDWHVvosNJFDKS',2,NULL,0,0,'2024-02-23','seydi.lara@unah.hn',4,NULL,'2023-10-11',NULL,'2023-10-11','Activo');
/*!40000 ALTER TABLE `tbl_ms_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos` (
  `Id_Objeto` int(11) NOT NULL,
  `Objeto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Tipo_Objeto` varchar(15) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos`
--

LOCK TABLES `tbl_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos` DISABLE KEYS */;
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Compras','Pagina de gestion de compras','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pago` (
  `IdPago` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdTipoPago` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(15) DEFAULT NULL,
  `saldoAbono` float DEFAULT NULL,
  `saldoRestante` float DEFAULT NULL,
  PRIMARY KEY (`IdPago`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdTipoPago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,5,2,'2022-08-16 03:48:02','Activo',200,300),(2,5,1,'2023-11-26 04:01:06','Pendiente',10,290),(3,5,3,'2023-11-26 06:48:37','Pendiente',100,200),(4,5,3,'2023-11-26 06:48:45','Pendiente',100,200),(5,5,3,'2023-11-26 06:48:58','Pendiente',250,50),(6,5,3,'2023-11-26 06:49:48','Pagado',300,0);
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pais`
--

DROP TABLE IF EXISTS `tbl_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pais` (
  `IdPais` int(11) NOT NULL AUTO_INCREMENT,
  `Pais` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (1,'Honduras','A'),(2,'Costa Rica','A'),(3,'Estados Unidos','A'),(4,'Mexico','A'),(5,'Panama ','A'),(6,'España','A'),(7,'Italia','A');
/*!40000 ALTER TABLE `tbl_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `Id_Objeto` int(11) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Permiso_Insercion` char(1) DEFAULT NULL,
  `Permiso_Eliminacion` char(1) DEFAULT NULL,
  `Permiso_Actualizacion` char(1) DEFAULT NULL,
  `Permiso_Consultar` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Objeto` (`Id_Objeto`),
  KEY `Id_Rol` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','s',NULL,NULL,NULL,NULL),(4,2,'n','s','n','n',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `IdModelo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidadMin` int(11) DEFAULT NULL,
  `cantidadMax` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,200,5,100,'DDDDDDDDDDDD','A'),(2,2,200,100,200,'SEPA','A');
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productopromocion`
--

DROP TABLE IF EXISTS `tbl_productopromocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productopromocion` (
  `IdProductoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductoPromocion`),
  UNIQUE KEY `IdProducto` (`IdProducto`),
  KEY `IdPromocion` (`IdPromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_productopromocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocion`
--

DROP TABLE IF EXISTS `tbl_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocion` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicial` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-11-01','2023-11-30','A',0.15,'DESCUENTO'),(2,'2023-11-01','2023-12-09','A',0,'PROMO');
/*!40000 ALTER TABLE `tbl_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocionmarca`
--

DROP TABLE IF EXISTS `tbl_promocionmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocionmarca` (
  `IdPromocionMarca` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `IdModelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPromocionMarca`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdMarca` (`IdMarca`),
  KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_promocionmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `CiaProveedora` varchar(50) DEFAULT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Productos` varchar(200) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'HCH','YO',1,31,'SEPA','COLON','98654232','jlainez@gmail.com','Activo');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recordatorio`
--

DROP TABLE IF EXISTS `tbl_recordatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recordatorio` (
  `IdRecordatorio` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` varchar(15) DEFAULT NULL,
  `Nota` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdRecordatorio`),
  KEY `IdCliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (27,'0801197300054','FGHH','2024-11-14'),(30,'0208200101152','ASABER','2024-11-14');
/*!40000 ALTER TABLE `tbl_recordatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sucursal`
--

DROP TABLE IF EXISTS `tbl_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `IdDepartamento` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862','A'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','A');
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipomovimiento`
--

DROP TABLE IF EXISTS `tbl_tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipomovimiento` (
  `IdTipoMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (5,'Anulado'),(1,'Entrada'),(3,'Entrada Extraordinaria'),(2,'Salida'),(4,'Salida Extraordinaria');
/*!40000 ALTER TABLE `tbl_tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopago`
--

DROP TABLE IF EXISTS `tbl_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipopago` (
  `IdTipoPago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo','A'),(2,'Tarjeta de debito','A'),(3,'Tarjeta de credito','A');
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_token` (
  `IdToken` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `NombreToken` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdToken`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MTY1MzgiLCJpYXQiOjE2OTcwODg1MTQsImV4cCI6MTY5NzA4ODgxNH0.iwIx-IVawHlvE_DjOI7ZTqXnxkDyhEJ_ts6SZdImFEA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0NjY2MjMiLCJpYXQiOjE2OTc5NjE2NDQsImV4cCI6MTY5Nzk2MTk0NH0.A2q6YF_IVrhBDf2lRIjrXxMEikXXU4QTGunxTkaJlgA'),(3,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNTc5NjYiLCJpYXQiOjE2OTg0NTEzOTUsImV4cCI6MTY5ODQ1MTY5NX0.Y4t3gAJFAchPIZ4gf1mlx7piDQhDcjF2yybW9Yw_t1I'),(4,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIwNzY4NjYiLCJpYXQiOjE2OTg0NTE4NzIsImV4cCI6MTY5ODQ1MjE3Mn0.evcK05mxZWmnhQrSndEhnpt_nxHKa5fy6DftZXMDlbk'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxNzIwNTEiLCJpYXQiOjE2OTg0NTE5OTcsImV4cCI6MTY5ODQ1MjI5N30._Lfzs_T4VpjrUvx7LR1wZT55qmO3-G5L8wZSRuXIpXM'),(6,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzODI2MDIiLCJpYXQiOjE2OTg0NTM1MTksImV4cCI6MTY5ODQ1MzgxOX0.s_OSr6wRYiBWtMQS4JE1dsnY1WUxNumIBJcgZ1xuXv8'),(7,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMzIwMzQiLCJpYXQiOjE2OTg0NTM1NjMsImV4cCI6MTY5ODQ1Mzg2M30.rCooI3CG-wesawiNsL2eBgknejXH1sHmM5r_n3HZzOM'),(8,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxODYzODkiLCJpYXQiOjE2OTg0NTM4NzUsImV4cCI6MTY5ODQ1NDE3NX0.-4xA87d4Y_dT55wwnFBqXM-mLUMs6vie3F0EUFKdf70'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxNTI0OTEiLCJpYXQiOjE2OTg0NTQyMDEsImV4cCI6MTY5ODQ1NDUwMX0.rH32WmyiaPKTjUk4znEmx9umvFSwKgxl7PSj0xw2Tyw'),(10,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NTc3ODgiLCJpYXQiOjE2OTg0NTUyMjIsImV4cCI6MTY5ODQ1NTUyMn0.URdY1Sw32Niy4nYS0XXNzBF0LXwNET_MRasf_JX8oGo'),(11,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMjM1NDkiLCJpYXQiOjE2OTg0NTU3MjQsImV4cCI6MTY5ODQ1NjAyNH0.rN9JtQhp-lSvJG9sIAV8FXIQDp7AqgXHZ1d130VA7ZQ'),(12,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1MzI1NzciLCJpYXQiOjE2OTg0NTU4NDYsImV4cCI6MTY5ODQ1NjE0Nn0.dAbNomVehhlhZGhwcGPZ0WO81mL-GagcFUr6Jks87Vk'),(13,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDU4MTIiLCJpYXQiOjE2OTg3ODg2NDAsImV4cCI6MTY5ODc4ODk0MH0.qjhjT_5kcB7AL6vc3EaTgqgsVkidBxo3YkLU-PHFKro');
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta`
--

DROP TABLE IF EXISTS `tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechaEntrega` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `IdCliente` varchar(15) NOT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `RTN` varchar(20) DEFAULT '08019020229809',
  `NumeroCAI` varchar(100) DEFAULT 'EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',
  `valorVenta` float DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-11-26 01:40:17','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'I'),(2,'2023-11-26 01:40:28','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'I'),(3,'2023-11-26 01:40:42','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'A'),(4,'2023-11-26 01:45:54','0000-00-00','0000-00-00','0801197300054',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',280,'A'),(5,'2023-11-26 01:47:44','0000-00-00','0000-00-00','0801197300054',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1680,'I'),(6,'2023-11-26 06:46:45','0000-00-00','0000-00-00','0205197200225',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',280,'A');
/*!40000 ALTER TABLE `tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventadetalle`
--

DROP TABLE IF EXISTS `tbl_ventadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ventadetalle` (
  `IdVentaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdGarantia` int(11) NOT NULL,
  `IdPromocion` int(11) DEFAULT NULL,
  `IdDescuento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `precioAro` float DEFAULT NULL,
  `IdLente` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `rebaja` float DEFAULT NULL,
  `totalVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVentaDetalle`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdGarantia` (`IdGarantia`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdDescuento` (`IdDescuento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `fk_ventaD_Lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,1,2,180,1,1,280,42,238),(2,2,1,1,1,2,180,1,1,280,42,238),(3,3,1,1,1,2,180,1,1,280,42,238),(4,4,3,2,1,2,180,1,1,280,0,280),(5,5,3,2,1,2,180,1,2,560,0,560),(6,5,3,2,1,1,180,1,4,1120,0,1120),(7,6,3,2,1,1,180,1,1,280,0,280);
/*!40000 ALTER TABLE `tbl_ventadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectomultioptica'
--

--
-- Current Database: `proyectomultioptica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyectomultioptica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `proyectomultioptica`;

--
-- Table structure for table `tbl_ciudad`
--

DROP TABLE IF EXISTS `tbl_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ciudad` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (1,'Tegucigalpa','A'),(2,'Comayagua','A'),(3,'San Pedro Sula','A'),(4,'La Ceiba','A'),(5,'Choluteca','A'),(6,'Puerto Cortes','A'),(7,'El Progreso','A'),(8,'Choloma','A'),(9,'Tela','A'),(10,'Juticalpa','A'),(11,'Danli','A'),(12,'La Lima','A'),(13,'Santa Rosa de Copan','A'),(14,'Siguatepeque','A'),(15,'Catacamas','A'),(16,'Tocoa','A'),(17,'Olanchito','A'),(18,'Distrito Central','A'),(19,'Santa Barbara','A'),(20,'Yoro','A'),(21,'Nacaome','A'),(22,'Gracias','A'),(23,'La Esperanza','A'),(24,'Yuscaran','A'),(25,'Trujillo','A'),(26,'Puerto Lempira','A'),(27,'Ocotepeque','A'),(28,'La Paz','A'),(29,'Patuca','A'),(30,'Chamelecon','A'),(31,'Las Vegas','A'),(32,'El Porvenir','A'),(33,'Santa cruz de Yojoa','A'),(34,'Marcala','A'),(35,'Comayagüela ','A'),(36,'Jutiapa','A'),(37,'Omoa Amapala','A'),(38,'La Campa','A'),(39,'Guaimaca','A'),(40,'Talanga','A'),(41,'Bonito Oriental','A'),(42,'Minas de Oro','A'),(43,'Jesus de Otoro','A'),(44,'Teupasenti','A'),(45,'Brus Laguna','A'),(46,'San Jose de Colinas','A'),(47,'La Masique','A'),(48,'Ajuterique','A');
/*!40000 ALTER TABLE `tbl_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `idCliente` varchar(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonoCliente` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT '',
  `COD_CLIENTE` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `COD_CLIENTE` (`COD_CLIENTE`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0205197200225','HEIDY','PEREZ',2,'2023-10-02','CARRIZAL','98756412','karen@gmail.com',1),('0208200101112','JUANA','LOPEZ',2,'2023-10-28','MATEO','98456321','seydi.lara@unah.hn',4),('0208200101152','KAREN','LOPEZ',2,'2023-08-28','NOCE','98562031','jlainez@gmail.com',2),('0801197300054','SEYDI','LARA',2,'2023-11-22','MATEO','31845696','lara@gmail.com',3);
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCompra` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalCompra` float DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compradetalle`
--

DROP TABLE IF EXISTS `tbl_compradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compradetalle` (
  `IdCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompra` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `costoCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompraDetalle`),
  KEY `IdCompra` (`IdCompra`),
  KEY `IdProveedor` (`IdProveedor`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tbl_compradetalle_ibfk_1` FOREIGN KEY (`IdCompra`) REFERENCES `tbl_compra` (`IdCompra`),
  CONSTRAINT `tbl_compradetalle_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `tbl_proveedor` (`IdProveedor`),
  CONSTRAINT `tbl_compradetalle_ibfk_3` FOREIGN KEY (`idProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamento`
--

DROP TABLE IF EXISTS `tbl_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departamento` (
  `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida','A'),(2,'Colón','A'),(3,'Comayagua','A'),(4,'Copán','A'),(5,'Cortés','A'),(6,'Choluteca','A'),(7,'El Paraíso','A'),(8,'Francisco Morazán','A'),(9,'Gracias a Dios','A'),(10,'Intibucá','A'),(11,'Islas de la Bahía','A'),(12,'La Paz','A'),(13,'Lempira','A'),(14,'Ocotepeque','A'),(15,'Olancho','A'),(16,'Santa Bárbara','A'),(17,'Valle','A'),(18,'Yoro','A');
/*!40000 ALTER TABLE `tbl_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descuento`
--

DROP TABLE IF EXISTS `tbl_descuento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descuento` (
  `IdDescuento` int(11) NOT NULL AUTO_INCREMENT,
  `estado` char(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descPorcentEmpleado` float DEFAULT NULL,
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',0.1,NULL),(2,'A',0.25,NULL),(3,'A',1,NULL);
/*!40000 ALTER TABLE `tbl_descuento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefonoEmpleado` varchar(12) DEFAULT NULL,
  `IdSucursal` int(11) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `numeroIdentidad` varchar(15) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaSalida` date DEFAULT NULL,
  `fechaCumpleanos` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'JOHANA','LARA','98561236',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'JOHANA','FUENTES','31944498',1,2,'0208200101152',NULL,NULL,NULL,'Activo'),(4,'JOHANA','LARA','9856321',1,2,'0801198500225',NULL,NULL,NULL,'Activo'),(5,'ERICK','RAMON','98756452',2,1,'0801197500221','2023-11-25','0000-00-00','2023-10-30','Inactivo');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expediente`
--

DROP TABLE IF EXISTS `tbl_expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expediente` (
  `IdExpediente` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `IdCliente` varchar(15) DEFAULT NULL,
  `IdEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdExpediente`),
  UNIQUE KEY `IdCliente` (`IdCliente`),
  KEY `IdEmpleado` (`IdEmpleado`),
  CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`IdEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-10-27 06:00:00','0208200101152',1),(7,'2023-11-15 05:02:42','0801197300054',1),(9,'2023-11-24 06:00:00','0205197200225',1);
/*!40000 ALTER TABLE `tbl_expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expedientedetalle`
--

DROP TABLE IF EXISTS `tbl_expedientedetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expedientedetalle` (
  `IdExpedienteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdExpediente` int(11) DEFAULT NULL,
  `diagnostico` varchar(200) NOT NULL,
  `Optometrista` varchar(50) NOT NULL,
  `AsesorVenta` varchar(50) NOT NULL,
  `Antecedentes` varchar(200) NOT NULL,
  `ODEsfera` varchar(10) NOT NULL,
  `OIEsfera` varchar(10) NOT NULL,
  `ODCilindro` varchar(10) NOT NULL,
  `OICilindro` varchar(10) NOT NULL,
  `ODEje` varchar(10) NOT NULL,
  `OIEje` varchar(10) NOT NULL,
  `ODAdicion` varchar(10) NOT NULL,
  `OIAdicion` varchar(10) NOT NULL,
  `ODAltura` varchar(10) NOT NULL,
  `OIAltura` varchar(10) NOT NULL,
  `ODDistanciaPupilar` varchar(10) NOT NULL,
  `OIDistanciaPupilar` varchar(10) NOT NULL,
  `fechaConsulta` date DEFAULT NULL,
  `fechaExpiracion` date DEFAULT NULL,
  PRIMARY KEY (`IdExpedienteDetalle`),
  KEY `IdExpediente` (`IdExpediente`),
  CONSTRAINT `tbl_expedientedetalle_ibfk_1` FOREIGN KEY (`IdExpediente`) REFERENCES `tbl_expediente` (`IdExpediente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,NULL,'NINGUNA','YOJA','YOJA','NOCE','1','','','','','','','','','','','','2023-09-25','2024-09-26'),(2,NULL,'NINGUNA','HOLA','HOLA','NADA','','','','','','','','','','','','','2023-10-27','2024-10-28'),(3,1,'NINGUNA','NADA','NADA','HOLA','','','','','','','','','','','','','2023-10-27','2024-10-28'),(4,1,'MIOPIA','HOLA','HOLA','NOCE','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(5,1,'CEGUERA','HOLA','HOLA','HOLA','2','','','','','','','','','','','','2023-11-13','2024-11-13'),(6,1,'ASABER','HOLA','NADA','NOXCE','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(7,1,'HAHAH','HAHA','HAHA','HAHA','11','','','','','','','','','','','','2023-11-13','2024-11-13'),(8,1,'NOCE','NOCE','NOCE','NOCE','0','','','','','','','','','','','','2023-11-13','2024-11-13'),(9,1,'HAHAHA','HAHA','HAHAHAHAH','HAHAHAHA','0','','','','','','','','','','','','2023-11-13','2024-11-13'),(10,1,'JAJAJAJA','JAJAJA','JAJAJA','JAJAJJAA','-2','','','','','','','','','','','','2023-11-13','2024-11-13'),(11,1,'SASASASA','SASSA','SASA','SASAS','-1','','','','','','','','','','','','2023-11-13','2024-11-13'),(12,1,'VALA','VALA','VALA','VALA','1','','','','','','','','','','','','2023-11-13','2024-11-13'),(13,1,'HANA','HANA','HANA','HANA','-2','','','','','','','','','','','','2023-11-13','2024-11-13'),(14,1,'PERRO','PERRO','PERRO','PERRO','-1','','','','','','','','','','','','2023-11-13','2024-11-13'),(15,1,'ADA','ADA','ADA','ADA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(16,1,'ADA','ADA','ADA','ADA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(17,1,'ASA','ASAA','ASA','ASA','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(18,1,'QWEER','QWER','QWER','QWER','-1','','','','','','','','','','','','2023-11-14','2024-11-14'),(19,NULL,'ASDF','ASDF','ASDF','ASDF','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(20,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(21,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(22,NULL,'DFGH','DFGH','DFGH','DFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(23,NULL,'HJKL','HJKL','HJKL','HJKL','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(24,NULL,'BNMJ','BNM','BNM','BNM','3','','','','','','','','','','','','2023-11-14','2024-11-14'),(25,NULL,'BNMB','NMB','NMB','B NM','3','','','','','','','','','','','','2023-11-14','2024-11-14'),(26,NULL,'GHJKL','GHJK','GHJK','GHJK','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(27,1,'TUYITYU','TYUI','TYUT','TYUUI','2','','','','','','','','','','','','2023-11-14','2024-11-14'),(28,NULL,'SDGDS','GADF','ASFD','SDGFS','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(29,NULL,'DFHDFH','QWEEW','WEWRR','DGDFG','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(30,NULL,'DFHDF','GHJK','DHDFH','DFHFGH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(31,NULL,'DERFGYEDRF','HJDG','ERDFB','FGHFX','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(32,NULL,'EDGTDCV','ASDFG','DFGDFGH','HJKYTYU','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(33,NULL,'QRERTT','FGH','GHGH','HJHJK','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(34,NULL,'RRGJNHJHV','BNVFDHGB','DHFDGHJFJ','VBMNFGHJYH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(35,NULL,'WWEERT','GHJK','FGHJK','FVHHJ','-1','','','','','','','','','','','','2023-11-14','2024-11-14'),(36,7,'SDFGDF','GHJK','FFHGH','BDFG','-2','','','','','','','','','','','','2023-11-14','2024-11-14'),(37,7,'FGJFG','ASDDFF','FJFGHJ','FHJGFH','1','','','','','','','','','','','','2023-11-14','2024-11-14'),(38,9,'HAHA','HAJDSD','SDSD','DFGF','1','','','','','','','','','','','','2023-11-24','2024-11-24');
/*!40000 ALTER TABLE `tbl_expedientedetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_garantia`
--

DROP TABLE IF EXISTS `tbl_garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_garantia` (
  `IdGarantia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `mesesGarantia` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_garantia_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'NADA',5,1,'A'),(3,'HOLA',0,2,'A');
/*!40000 ALTER TABLE `tbl_garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genero` (
  `IdGenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino','A'),(2,'Femenino','A');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventario` (
  `IdInventario` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdInventario`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_inventario_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,-1),(2,2,-2);
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardex`
--

DROP TABLE IF EXISTS `tbl_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardex` (
  `IdKardex` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoMovimiento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `fechaYHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,2,2,NULL,'2022-11-26 01:40:17',1,NULL),(2,2,2,NULL,'2023-10-25 01:40:28',1,NULL),(3,2,2,NULL,'2023-11-26 01:40:42',1,NULL),(4,5,2,1,'2023-11-26 01:40:56',1,NULL),(5,5,2,1,'2002-11-26 01:41:00',1,NULL),(6,2,2,NULL,'2023-11-26 01:45:54',1,NULL),(7,2,2,NULL,'2023-11-26 01:47:44',2,NULL),(8,2,1,NULL,'2002-11-26 01:47:44',4,NULL),(9,4,4,1,'2023-11-26 09:34:55',1,'LOQUESEA'),(10,3,3,1,'2023-11-26 09:35:12',100,'ASABER'),(11,4,4,1,'2023-11-26 09:36:09',1,'GJHKIK'),(12,5,2,1,'2023-11-26 03:46:37',2,NULL),(13,5,1,1,'2023-11-26 03:46:37',4,NULL),(14,2,1,NULL,'2023-11-26 06:46:45',1,NULL);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lente`
--

DROP TABLE IF EXISTS `tbl_lente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lente` (
  `IdLente` int(11) NOT NULL AUTO_INCREMENT,
  `lente` varchar(35) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'MAJOYDAN',100,'Activo');
/*!40000 ALTER TABLE `tbl_lente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'LARA','A'),(2,'KAREN','A');
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modelo`
--

DROP TABLE IF EXISTS `tbl_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modelo` (
  `IdModelo` int(11) NOT NULL AUTO_INCREMENT,
  `idMarca` int(11) DEFAULT NULL,
  `detalle` varchar(40) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdModelo`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `tbl_modelo_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `tbl_marca` (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'IA-200',2000,'A'),(2,2,'KA-200',2023,'A');
/*!40000 ALTER TABLE `tbl_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_bitacora`
--

DROP TABLE IF EXISTS `tbl_ms_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_bitacora` (
  `IdBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Objeto` int(11) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdBitacora`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Objeto` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=890 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(3,'2023-08-19 17:19:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(4,'2023-08-19 17:19:52',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-09-26 00:15:01',1,1,'Login','Inicio de sesión '),(13,'2023-09-26 00:15:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(14,'2023-09-26 00:15:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(15,'2023-09-26 00:21:35',1,1,'Login','Inicio de sesión '),(16,'2023-09-26 00:24:27',1,1,'Login','Inicio de sesión '),(17,'2023-09-26 00:29:09',1,1,'Login','Inicio de sesión '),(18,'2023-09-26 00:43:34',1,1,'Login','Inicio de sesión '),(19,'2023-09-26 00:43:47',1,1,'Login','Inicio de sesión '),(20,'2023-09-26 00:44:18',1,1,'Login','Inicio de sesión '),(21,'2023-09-26 00:44:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(22,'2023-09-26 00:44:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(23,'2023-09-26 00:45:27',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(24,'2023-09-26 00:45:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(25,'2023-09-26 00:45:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(26,'2023-09-26 00:57:37',1,1,'Login','Inicio de sesión '),(27,'2023-10-11 23:00:24',1,1,'Login','Inicio de sesión '),(28,'2023-10-11 23:00:31',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(29,'2023-10-11 23:00:33',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(30,'2023-10-11 23:00:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(31,'2023-10-11 23:00:38',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(32,'2023-10-11 23:02:28',1,1,'Login','Inicio de sesión '),(33,'2023-10-11 23:02:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(34,'2023-10-11 23:03:08',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(35,'2023-10-11 23:04:25',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(36,'2023-10-11 23:04:27',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(37,'2023-10-11 23:04:46',2,1,'Login','Inicio de sesión '),(38,'2023-10-11 23:04:49',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(39,'2023-10-11 23:05:47',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(40,'2023-10-11 23:05:48',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-10-11 23:07:28',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(42,'2023-10-11 23:07:48',2,1,'Login','Inicio de sesión '),(43,'2023-10-11 23:07:50',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(44,'2023-10-11 23:11:14',2,1,'Login','Inicio de sesión '),(45,'2023-10-11 23:11:17',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(46,'2023-10-11 23:11:28',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(47,'2023-10-11 23:11:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(48,'2023-10-11 23:11:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(49,'2023-10-11 23:12:02',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(50,'2023-10-11 23:12:22',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(51,'2023-10-11 23:12:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(52,'2023-10-11 23:16:06',2,1,'Login','Inicio de sesión '),(53,'2023-10-11 23:16:08',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(54,'2023-10-11 23:23:13',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(55,'2023-10-11 23:23:15',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(56,'2023-10-11 23:26:02',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(57,'2023-10-11 23:30:30',1,1,'Login','Inicio de sesión '),(58,'2023-10-11 23:30:32',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(59,'2023-10-11 23:30:49',1,11,'Moficacion','El usuario modifico la contraseña'),(60,'2023-10-11 23:31:04',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(61,'2023-10-11 23:33:39',2,1,'Login','Inicio de sesión '),(62,'2023-10-11 23:33:42',2,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(63,'2023-10-11 23:35:04',2,11,'Salir de perfil','El usuario salio de Mi Perfil'),(64,'2023-10-11 23:35:07',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(65,'2023-10-11 23:35:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(66,'2023-10-11 23:38:47',3,1,'Login','Inicio de sesión '),(67,'2023-10-11 23:39:14',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(68,'2023-10-11 23:39:49',3,11,'Moficacion','El usuario modifico la contraseña'),(69,'2023-10-11 23:40:13',3,11,'Moficacion','El usuario modifico la contraseña'),(70,'2023-10-11 23:40:19',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(71,'2023-10-11 23:40:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(72,'2023-10-11 23:42:31',3,1,'Login','Inicio de sesión '),(73,'2023-10-11 23:42:33',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(74,'2023-10-11 23:44:18',3,1,'Login','Inicio de sesión '),(75,'2023-10-11 23:44:21',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(76,'2023-10-11 23:47:46',3,1,'Login','Inicio de sesión '),(77,'2023-10-11 23:47:48',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(78,'2023-10-11 23:48:15',3,1,'Login','Inicio de sesión '),(79,'2023-10-11 23:48:17',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(80,'2023-10-11 23:49:26',3,1,'Login','Inicio de sesión '),(81,'2023-10-11 23:49:28',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(82,'2023-10-11 23:51:08',1,1,'Login','Inicio de sesión '),(83,'2023-10-11 23:51:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(84,'2023-10-11 23:51:43',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(85,'2023-10-11 23:51:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(86,'2023-10-11 23:59:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(87,'2023-10-12 00:01:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(88,'2023-10-12 00:03:24',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(89,'2023-10-12 00:03:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(90,'2023-10-12 00:05:18',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(91,'2023-10-12 00:06:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(92,'2023-10-12 00:06:22',1,1,'Login','Inicio de sesión '),(93,'2023-10-12 00:06:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(94,'2023-10-12 00:08:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(95,'2023-10-12 00:08:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(96,'2023-10-12 00:09:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(97,'2023-10-12 00:11:43',1,1,'Login','Inicio de sesión '),(98,'2023-10-12 00:11:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(99,'2023-10-12 00:16:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(100,'2023-10-12 00:19:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(101,'2023-10-12 22:25:36',3,1,'Login','Inicio de sesión '),(102,'2023-10-12 22:25:40',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(103,'2023-10-12 22:46:13',3,1,'Login','Inicio de sesión '),(104,'2023-10-12 22:46:15',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(105,'2023-10-13 09:57:50',1,1,'Login','Inicio de sesión '),(106,'2023-10-13 09:57:53',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(107,'2023-10-13 09:59:30',1,1,'Login','Inicio de sesión '),(108,'2023-10-13 09:59:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(109,'2023-10-13 10:04:53',1,1,'Login','Inicio de sesión '),(110,'2023-10-13 10:04:56',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(111,'2023-10-13 10:09:38',1,1,'Login','Inicio de sesión '),(112,'2023-10-13 10:09:41',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(113,'2023-10-13 10:10:33',1,1,'Login','Inicio de sesión '),(114,'2023-10-13 10:10:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-13 10:12:02',1,1,'Login','Inicio de sesión '),(116,'2023-10-13 10:13:30',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(117,'2023-10-13 10:14:27',1,1,'Login','Inicio de sesión '),(118,'2023-10-13 10:14:29',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(119,'2023-10-13 10:14:54',1,1,'Login','Inicio de sesión '),(120,'2023-10-13 10:14:56',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-13 10:31:47',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-13 10:43:23',3,1,'Login','Inicio de sesión '),(123,'2023-10-13 10:43:25',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(124,'2023-10-13 10:43:31',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(125,'2023-10-13 10:43:54',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(126,'2023-10-13 10:44:05',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(127,'2023-10-13 10:54:01',3,1,'Login','Inicio de sesión '),(128,'2023-10-13 10:54:04',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(129,'2023-10-13 11:14:21',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(130,'2023-10-13 11:14:23',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(131,'2023-10-13 11:18:41',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(132,'2023-10-13 11:18:43',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-13 11:20:35',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-13 11:20:47',3,1,'Login','Inicio de sesión '),(135,'2023-10-13 11:20:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(136,'2023-10-13 11:34:32',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(137,'2023-10-13 12:06:39',1,1,'Login','Inicio de sesión '),(138,'2023-10-13 12:06:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(139,'2023-10-13 12:38:37',1,1,'Login','Inicio de sesión '),(140,'2023-10-13 12:38:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(141,'2023-10-13 12:43:39',1,1,'Login','Inicio de sesión '),(142,'2023-10-13 12:43:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(143,'2023-10-13 13:09:10',1,1,'Login','Inicio de sesión '),(144,'2023-10-13 13:09:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(145,'2023-10-13 13:11:45',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(146,'2023-10-13 13:11:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(147,'2023-10-13 13:28:59',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(148,'2023-10-13 13:29:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(149,'2023-10-13 13:38:48',1,1,'Login','Inicio de sesión '),(150,'2023-10-13 13:38:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(151,'2023-10-13 13:50:11',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(152,'2023-10-13 13:50:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(153,'2023-10-13 14:10:26',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(154,'2023-10-13 14:10:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(155,'2023-10-13 16:10:33',1,1,'Login','Inicio de sesión '),(156,'2023-10-13 16:10:34',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-13 16:20:28',1,1,'Login','Inicio de sesión '),(158,'2023-10-13 16:20:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(159,'2023-10-13 16:24:48',1,1,'Login','Inicio de sesión '),(160,'2023-10-13 16:24:49',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(161,'2023-10-13 16:25:40',1,1,'Login','Inicio de sesión '),(162,'2023-10-13 16:25:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(163,'2023-10-13 16:27:02',1,1,'Login','Inicio de sesión '),(164,'2023-10-13 16:27:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(165,'2023-10-13 16:34:33',1,1,'Login','Inicio de sesión '),(166,'2023-10-13 16:34:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(167,'2023-10-13 16:59:38',1,1,'Login','Inicio de sesión '),(168,'2023-10-13 16:59:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(169,'2023-10-13 17:20:49',1,1,'Login','Inicio de sesión '),(170,'2023-10-13 17:20:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(171,'2023-10-13 17:23:08',1,1,'Login','Inicio de sesión '),(172,'2023-10-13 17:23:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(173,'2023-10-13 18:06:41',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(174,'2023-10-13 19:12:02',3,1,'Login','Inicio de sesión '),(175,'2023-10-13 19:12:04',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(176,'2023-10-13 19:12:11',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(177,'2023-10-13 19:12:29',1,1,'Login','Inicio de sesión '),(178,'2023-10-13 19:12:31',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(179,'2023-10-13 19:20:58',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(180,'2023-10-13 19:21:09',3,1,'Login','Inicio de sesión '),(181,'2023-10-13 19:21:11',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(182,'2023-10-13 19:22:04',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(183,'2023-10-13 19:22:20',1,1,'Login','Inicio de sesión '),(184,'2023-10-13 19:22:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(185,'2023-10-13 19:27:22',1,1,'Login','Inicio de sesión '),(186,'2023-10-13 19:27:24',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(187,'2023-10-13 19:27:36',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(188,'2023-10-13 19:28:51',3,1,'Login','Inicio de sesión '),(189,'2023-10-13 19:29:11',1,1,'Login','Inicio de sesión '),(190,'2023-10-13 19:29:16',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(191,'2023-10-13 19:29:19',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(192,'2023-10-13 19:36:23',1,1,'Login','Inicio de sesión '),(193,'2023-10-13 19:36:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(194,'2023-10-14 16:28:39',1,1,'Login','Inicio de sesión '),(195,'2023-10-14 16:29:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(196,'2023-10-14 16:30:53',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(197,'2023-10-14 16:31:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(198,'2023-10-14 16:32:56',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(199,'2023-10-14 16:33:34',1,5,'Salir','El usuario salió de la pantalla de citas'),(200,'2023-10-14 16:34:08',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(201,'2023-10-14 16:34:58',1,1,'Login','Inicio de sesión '),(202,'2023-10-14 16:36:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(203,'2023-10-14 16:59:09',1,11,'Moficación','El usuario modificó los datos del perfil'),(204,'2023-10-14 17:00:08',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(205,'2023-10-14 17:00:16',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-14 17:27:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(207,'2023-10-14 17:27:24',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(208,'2023-10-14 17:37:45',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(209,'2023-10-14 17:38:21',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(210,'2023-10-14 17:38:28',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(211,'2023-10-14 17:40:05',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(212,'2023-10-14 17:40:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(213,'2023-10-14 17:41:05',1,1,'Login','Inicio de sesión '),(214,'2023-10-14 17:41:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(215,'2023-10-14 17:44:00',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(216,'2023-10-14 17:49:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(217,'2023-10-14 17:49:14',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(218,'2023-10-14 17:49:33',3,1,'Login','Inicio de sesión '),(219,'2023-10-14 17:49:36',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(220,'2023-10-14 17:49:45',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(221,'2023-10-14 17:50:03',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(222,'2023-10-14 17:54:13',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(223,'2023-10-14 17:59:57',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(224,'2023-10-14 18:01:37',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(225,'2023-10-14 18:02:39',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(226,'2023-10-14 18:02:55',3,1,'Login','Inicio de sesión '),(227,'2023-10-14 18:03:00',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(228,'2023-10-14 18:03:02',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(229,'2023-10-14 18:03:19',1,1,'Login','Inicio de sesión '),(230,'2023-10-14 18:03:21',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(231,'2023-10-14 18:03:33',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(232,'2023-10-14 18:13:30',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(233,'2023-10-14 18:17:27',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(234,'2023-10-14 18:17:45',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(235,'2023-10-14 18:18:05',3,1,'Login','Inicio de sesión '),(236,'2023-10-14 18:18:09',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(237,'2023-10-14 18:18:23',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(238,'2023-10-14 18:18:36',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(239,'2023-10-14 18:28:03',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(240,'2023-10-14 18:28:25',1,1,'Login','Inicio de sesión '),(241,'2023-10-14 18:28:30',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(242,'2023-10-14 18:28:35',1,11,'Modificación','El usuario modificó los datos del perfil'),(243,'2023-10-14 18:31:18',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(244,'2023-10-14 18:31:18',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(245,'2023-10-14 18:31:18',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(246,'2023-10-14 18:39:03',1,11,'Modificación','El usuario modificó los datos del perfil'),(247,'2023-10-14 18:39:20',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(248,'2023-10-14 18:39:32',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(249,'2023-10-14 18:39:36',1,11,'Modificación','El usuario modificó los datos del perfil'),(250,'2023-10-14 18:41:13',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(251,'2023-10-14 18:41:15',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(252,'2023-10-14 18:41:18',1,11,'Modificación','El usuario modificó los datos del perfil'),(253,'2023-10-14 18:42:55',3,1,'Login','Inicio de sesión '),(254,'2023-10-14 18:42:59',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(255,'2023-10-14 18:43:01',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(256,'2023-10-14 18:43:20',1,1,'Login','Inicio de sesión '),(257,'2023-10-14 18:43:22',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(258,'2023-10-14 18:58:19',3,1,'Login','Inicio de sesión '),(259,'2023-10-14 18:58:21',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(260,'2023-10-14 19:03:07',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(261,'2023-10-14 19:03:53',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(262,'2023-10-14 19:05:07',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(263,'2023-10-14 19:05:43',3,11,'Modificación','El usuario modificó la contraseña'),(264,'2023-10-14 19:07:28',3,11,'Modificación','El usuario modificó la contraseña'),(265,'2023-10-14 19:07:32',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(266,'2023-10-14 19:08:03',1,1,'Login','Inicio de sesión '),(267,'2023-10-14 19:08:31',3,1,'Login','Inicio de sesión '),(268,'2023-10-14 19:08:51',1,1,'Login','Inicio de sesión '),(269,'2023-10-14 19:08:58',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(270,'2023-10-14 19:37:14',1,11,'Modificación','El usuario modificó los datos del perfil'),(271,'2023-10-14 19:38:09',1,1,'Login','Inicio de sesión '),(272,'2023-10-14 19:38:14',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(273,'2023-10-14 19:38:50',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(274,'2023-10-14 19:38:54',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(275,'2023-10-14 19:40:05',1,11,'Modificación','El usuario modificó la contraseña'),(276,'2023-10-14 19:40:15',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(277,'2023-10-14 19:40:36',3,1,'Login','Inicio de sesión '),(278,'2023-10-14 19:40:39',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-14 19:40:55',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(280,'2023-10-14 19:40:58',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(281,'2023-10-14 19:41:09',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(282,'2023-10-14 19:41:11',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(283,'2023-10-14 19:41:31',1,1,'Login','Inicio de sesión '),(284,'2023-10-14 19:41:34',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(285,'2023-10-14 19:41:40',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(286,'2023-10-14 19:59:22',3,1,'Login','Inicio de sesión '),(287,'2023-10-14 19:59:25',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(288,'2023-10-14 20:02:47',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(289,'2023-10-14 20:03:00',3,1,'Login','Inicio de sesión '),(290,'2023-10-14 20:03:02',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(291,'2023-10-14 20:04:39',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(292,'2023-10-14 20:04:42',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(293,'2023-10-14 20:04:55',3,11,'Modificación','El usuario modificó los datos del perfil'),(294,'2023-10-20 20:54:58',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 20:55:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-21 09:56:20',1,1,'Login','Inicio de sesión '),(297,'2023-10-21 09:56:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-21 10:52:42',1,1,'Login','Inicio de sesión '),(299,'2023-10-21 10:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(300,'2023-10-21 10:52:59',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(301,'2023-10-21 10:56:37',3,1,'Login','Inicio de sesión '),(302,'2023-10-21 10:56:40',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(303,'2023-10-21 10:57:00',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(304,'2023-10-21 10:57:09',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(305,'2023-10-21 10:57:16',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(306,'2023-10-21 10:57:26',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(307,'2023-10-21 11:02:43',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(308,'2023-10-21 11:12:46',3,11,'Modificación','El usuario modificó las preguntas de seguridad'),(309,'2023-10-21 11:12:47',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(310,'2023-10-21 22:14:52',1,1,'Login','Inicio de sesión '),(311,'2023-10-21 22:14:56',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(312,'2023-10-21 22:21:26',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(313,'2023-10-21 22:21:29',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(314,'2023-10-21 22:21:44',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(315,'2023-10-21 22:23:11',1,1,'Login','Inicio de sesión '),(316,'2023-10-21 22:23:21',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(317,'2023-10-21 23:16:56',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(318,'2023-10-21 23:16:59',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(319,'2023-10-21 23:17:20',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(320,'2023-10-21 23:17:23',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(321,'2023-10-21 23:17:29',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(322,'2023-10-21 23:17:53',1,1,'Login','Inicio de sesión '),(323,'2023-10-21 23:17:55',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(324,'2023-10-21 23:17:57',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(325,'2023-10-21 23:18:01',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(326,'2023-10-21 23:18:18',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(327,'2023-10-21 23:18:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(328,'2023-10-21 23:19:33',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(329,'2023-10-21 23:20:22',1,1,'Login','Inicio de sesión '),(330,'2023-10-21 23:20:28',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(331,'2023-10-22 00:13:05',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(332,'2023-10-22 00:13:27',1,11,'Modificación','El usuario modificó las preguntas de seguridad'),(333,'2023-10-22 00:13:40',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(334,'2023-10-22 00:13:52',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(335,'2023-10-22 00:18:45',1,1,'Login','Inicio de sesión '),(336,'2023-10-22 00:18:48',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(337,'2023-10-22 00:19:01',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(338,'2023-10-22 00:19:08',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(339,'2023-10-22 00:29:09',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(340,'2023-10-22 00:29:12',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(341,'2023-10-22 00:29:28',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(342,'2023-10-22 00:29:36',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(343,'2023-10-22 00:31:15',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(344,'2023-10-22 00:31:31',1,1,'Login','Inicio de sesión '),(345,'2023-10-22 00:31:33',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(346,'2023-10-22 00:38:25',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(347,'2023-10-22 00:38:35',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(348,'2023-10-22 00:43:54',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(349,'2023-10-22 00:44:06',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(350,'2023-10-22 00:48:43',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(351,'2023-10-22 00:48:53',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(352,'2023-10-22 00:49:41',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(353,'2023-10-22 00:49:47',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(354,'2023-10-22 00:52:14',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(355,'2023-10-22 00:52:22',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(356,'2023-10-22 00:54:06',1,11,'Modificación','El usuario modificó la contraseña'),(357,'2023-10-22 01:02:43',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(358,'2023-10-22 01:09:37',1,1,'Login','Inicio de sesión '),(359,'2023-10-22 01:09:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(360,'2023-10-22 11:57:17',3,1,'Login','Inicio de sesión '),(361,'2023-10-22 11:57:21',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(362,'2023-10-22 11:57:36',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(363,'2023-10-22 11:57:38',3,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(364,'2023-10-22 12:01:16',1,1,'Login','Inicio de sesión '),(365,'2023-10-22 12:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-22 12:24:07',1,1,'Login','Inicio de sesión '),(367,'2023-10-22 12:24:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(368,'2023-10-22 12:30:58',1,1,'Login','Inicio de sesión '),(369,'2023-10-22 12:31:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(370,'2023-10-27 10:30:07',3,1,'Login','Inicio de sesión '),(371,'2023-10-27 10:32:02',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(372,'2023-10-27 10:32:53',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(373,'2023-10-27 10:33:00',3,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(374,'2023-10-27 10:43:06',3,11,'Modificación','El usuario modificó la contraseña'),(375,'2023-10-27 10:46:31',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(376,'2023-10-27 10:55:16',1,1,'Login','Inicio de sesión '),(377,'2023-10-27 10:55:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(378,'2023-10-28 12:50:03',1,1,'Login','Inicio de sesión '),(379,'2023-10-28 12:52:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(380,'2023-10-28 13:09:10',1,1,'Login','Inicio de sesión '),(381,'2023-10-28 13:09:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(382,'2023-10-28 13:19:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(383,'2023-10-28 13:19:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(384,'2023-10-28 13:19:27',1,5,'Borrar Cita','El usuario eliminó una cita'),(385,'2023-10-28 13:19:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-28 13:22:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(387,'2023-10-28 13:23:06',1,5,'Registro','El usuario registró una nueva cita'),(388,'2023-10-28 13:23:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(389,'2023-10-28 13:23:56',1,5,'Registro','El usuario registró una nueva cita'),(390,'2023-10-28 13:24:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(391,'2023-10-28 13:24:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(392,'2023-10-28 13:24:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(393,'2023-10-31 11:41:33',1,1,'Login','Inicio de sesión '),(394,'2023-10-31 11:44:40',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(395,'2023-10-31 11:45:50',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(396,'2023-10-31 11:48:05',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(397,'2023-10-31 11:56:09',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(398,'2023-10-31 11:56:51',1,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(399,'2023-10-31 14:14:23',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(400,'2023-10-31 14:17:19',3,1,'Login','Inicio de sesión '),(401,'2023-10-31 14:19:27',3,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(402,'2023-10-31 14:20:10',3,11,'Modificación','El usuario modificó la contraseña'),(403,'2023-10-31 14:26:29',3,11,'Salir de perfil','El usuario salió de Mi Perfil'),(404,'2023-10-31 14:26:49',1,1,'Login','Inicio de sesión '),(405,'2023-11-02 11:06:50',1,1,'Login','Inicio de sesión '),(406,'2023-11-02 11:40:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(407,'2023-11-02 11:55:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(408,'2023-11-02 11:56:16',1,5,'Borrar Cita','El usuario eliminó una cita'),(409,'2023-11-02 11:56:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(410,'2023-11-02 11:56:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(411,'2023-11-02 11:59:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-11-02 12:03:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(413,'2023-11-02 12:03:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-11-02 12:09:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(415,'2023-11-04 10:12:27',1,1,'Login','Inicio de sesión '),(416,'2023-11-04 10:12:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(417,'2023-11-04 11:21:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(418,'2023-11-04 11:22:08',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(419,'2023-11-04 11:23:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(420,'2023-11-04 11:24:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-11-04 11:24:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(422,'2023-11-04 11:24:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(423,'2023-11-04 11:25:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(424,'2023-11-04 11:26:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(425,'2023-11-04 11:27:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(426,'2023-11-04 11:28:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(427,'2023-11-04 11:29:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-04 11:30:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(429,'2023-11-04 11:30:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-04 11:31:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(431,'2023-11-04 11:34:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-04 11:34:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(433,'2023-11-04 11:35:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-04 11:37:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(435,'2023-11-04 11:39:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(436,'2023-11-04 11:39:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(437,'2023-11-04 11:43:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(438,'2023-11-04 18:38:28',1,1,'Login','Inicio de sesión '),(439,'2023-11-04 18:38:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(440,'2023-11-05 09:37:48',1,1,'Login','Inicio de sesión '),(441,'2023-11-05 09:37:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(442,'2023-11-05 09:39:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(443,'2023-11-05 09:39:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(444,'2023-11-05 09:39:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(445,'2023-11-05 11:22:17',1,1,'Login','Inicio de sesión '),(446,'2023-11-05 11:22:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(447,'2023-11-05 18:16:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(448,'2023-11-05 18:17:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(449,'2023-11-05 18:17:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(450,'2023-11-05 18:17:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-05 18:18:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(452,'2023-11-05 18:18:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(453,'2023-11-05 18:18:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(454,'2023-11-05 18:18:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-05 18:18:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(456,'2023-11-05 18:18:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(457,'2023-11-05 18:19:14',1,5,'Borrar Cita','El usuario eliminó una cita'),(458,'2023-11-05 18:19:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(459,'2023-11-05 18:21:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(460,'2023-11-05 18:21:08',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(461,'2023-11-05 18:21:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(462,'2023-11-05 18:23:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(463,'2023-11-05 18:37:02',1,1,'Login','Inicio de sesión '),(464,'2023-11-05 18:37:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(465,'2023-11-05 18:37:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(466,'2023-11-05 18:37:30',1,5,'Registro','El usuario registró una nueva cita'),(467,'2023-11-05 18:37:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(468,'2023-11-05 18:38:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(469,'2023-11-05 18:38:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(470,'2023-11-13 12:45:31',1,1,'Login','Inicio de sesión '),(471,'2023-11-13 12:45:33',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(472,'2023-11-13 12:47:00',1,1,'Login','Inicio de sesión '),(473,'2023-11-13 12:47:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(474,'2023-11-13 12:47:45',1,1,'Login','Inicio de sesión '),(475,'2023-11-13 12:47:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(476,'2023-11-13 12:48:46',1,1,'Login','Inicio de sesión '),(477,'2023-11-13 12:48:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(478,'2023-11-13 19:36:09',1,1,'Login','Inicio de sesión '),(479,'2023-11-13 19:36:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(480,'2023-11-13 19:36:30',1,1,'Login','Inicio de sesión '),(481,'2023-11-13 19:36:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(482,'2023-11-13 19:39:07',1,1,'Login','Inicio de sesión '),(483,'2023-11-13 19:39:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(484,'2023-11-13 19:40:36',1,1,'Login','Inicio de sesión '),(485,'2023-11-13 19:40:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(486,'2023-11-13 19:42:40',1,1,'Login','Inicio de sesión '),(487,'2023-11-13 19:42:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(488,'2023-11-13 19:44:46',1,1,'Login','Inicio de sesión '),(489,'2023-11-13 19:44:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(490,'2023-11-13 19:46:26',1,1,'Login','Inicio de sesión '),(491,'2023-11-13 19:46:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(492,'2023-11-13 19:51:21',1,1,'Login','Inicio de sesión '),(493,'2023-11-13 19:51:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(494,'2023-11-13 19:55:10',1,1,'Login','Inicio de sesión '),(495,'2023-11-13 19:55:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(496,'2023-11-13 19:56:52',1,1,'Login','Inicio de sesión '),(497,'2023-11-13 19:56:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(498,'2023-11-13 19:57:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(499,'2023-11-13 20:00:59',1,5,'Salir','El usuario salió de la pantalla de citas'),(500,'2023-11-13 20:01:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(501,'2023-11-13 20:01:58',1,5,'Salir','El usuario salió de la pantalla de citas'),(502,'2023-11-13 20:01:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(503,'2023-11-13 20:05:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-13 20:05:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(505,'2023-11-13 20:12:59',1,1,'Login','Inicio de sesión '),(506,'2023-11-13 20:13:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(507,'2023-11-13 20:17:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(508,'2023-11-13 20:17:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(509,'2023-11-13 20:17:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(510,'2023-11-13 20:17:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(511,'2023-11-13 20:18:28',1,5,'Salir','El usuario salió de la pantalla de citas'),(512,'2023-11-13 20:18:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(513,'2023-11-13 20:19:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(514,'2023-11-13 20:19:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(515,'2023-11-13 20:20:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(516,'2023-11-13 20:20:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(517,'2023-11-13 20:34:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(518,'2023-11-13 20:34:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(519,'2023-11-13 20:35:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(520,'2023-11-13 20:35:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(521,'2023-11-13 20:37:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(522,'2023-11-13 20:38:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(523,'2023-11-13 20:40:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(524,'2023-11-13 20:40:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(525,'2023-11-13 20:40:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(526,'2023-11-13 20:40:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(527,'2023-11-13 20:40:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(528,'2023-11-13 20:40:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(529,'2023-11-13 20:40:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(530,'2023-11-13 20:41:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(531,'2023-11-13 20:51:14',1,5,'Registro','El usuario registró una nueva cita'),(532,'2023-11-13 20:51:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(533,'2023-11-13 20:51:58',1,5,'Registro','El usuario registró una nueva cita'),(534,'2023-11-13 20:52:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(535,'2023-11-13 21:25:22',1,5,'Registro','El usuario registró una nueva cita'),(536,'2023-11-13 21:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(537,'2023-11-13 21:26:07',1,5,'Registro','El usuario registró una nueva cita'),(538,'2023-11-13 21:26:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(539,'2023-11-13 21:28:58',1,5,'Registro','El usuario registró una nueva cita'),(540,'2023-11-13 21:32:44',1,5,'Registro','El usuario registró una nueva cita'),(541,'2023-11-13 21:33:38',1,5,'Registro','El usuario registró una nueva cita'),(542,'2023-11-13 21:40:04',1,5,'Registro','El usuario registró una nueva cita'),(543,'2023-11-13 21:43:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(544,'2023-11-13 21:44:02',1,5,'Registro','El usuario registró una nueva cita'),(545,'2023-11-13 21:44:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(546,'2023-11-13 21:45:05',1,5,'Registro','El usuario registró una nueva cita'),(547,'2023-11-13 21:56:56',1,5,'Registro','El usuario registró una nueva cita'),(548,'2023-11-14 21:31:48',1,1,'Login','Inicio de sesión '),(549,'2023-11-14 21:31:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(550,'2023-11-14 21:50:13',1,5,'Registro','El usuario registró una nueva cita'),(551,'2023-11-14 21:50:29',1,5,'Registro','El usuario registró una nueva cita'),(552,'2023-11-14 21:50:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(553,'2023-11-14 21:50:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-14 21:52:40',1,5,'Registro','El usuario registró una nueva cita'),(555,'2023-11-14 21:53:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(556,'2023-11-14 21:53:45',1,5,'Borrar Cita','El usuario eliminó una cita'),(557,'2023-11-14 21:53:48',1,5,'Borrar Cita','El usuario eliminó una cita'),(558,'2023-11-14 21:53:50',1,5,'Borrar Cita','El usuario eliminó una cita'),(559,'2023-11-14 21:53:53',1,5,'Borrar Cita','El usuario eliminó una cita'),(560,'2023-11-14 21:53:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(561,'2023-11-14 21:53:58',1,5,'Borrar Cita','El usuario eliminó una cita'),(562,'2023-11-14 21:54:00',1,5,'Borrar Cita','El usuario eliminó una cita'),(563,'2023-11-14 21:54:03',1,5,'Borrar Cita','El usuario eliminó una cita'),(564,'2023-11-14 21:54:06',1,5,'Borrar Cita','El usuario eliminó una cita'),(565,'2023-11-14 21:54:08',1,5,'Borrar Cita','El usuario eliminó una cita'),(566,'2023-11-14 21:54:10',1,5,'Borrar Cita','El usuario eliminó una cita'),(567,'2023-11-14 21:54:12',1,5,'Borrar Cita','El usuario eliminó una cita'),(568,'2023-11-14 21:54:14',1,5,'Borrar Cita','El usuario eliminó una cita'),(569,'2023-11-14 21:54:18',1,5,'Borrar Cita','El usuario eliminó una cita'),(570,'2023-11-14 21:54:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(571,'2023-11-14 21:54:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(572,'2023-11-14 21:54:25',1,5,'Borrar Cita','El usuario eliminó una cita'),(573,'2023-11-14 21:54:27',1,5,'Borrar Cita','El usuario eliminó una cita'),(574,'2023-11-14 21:55:13',1,5,'Registro','El usuario registró una nueva cita'),(575,'2023-11-14 21:59:28',1,1,'Login','Inicio de sesión '),(576,'2023-11-14 21:59:29',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(577,'2023-11-14 21:59:33',1,5,'Borrar Cita','El usuario eliminó una cita'),(578,'2023-11-14 22:00:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(579,'2023-11-14 22:01:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(580,'2023-11-14 22:04:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(581,'2023-11-14 22:04:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(582,'2023-11-14 22:05:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(583,'2023-11-14 22:12:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(584,'2023-11-14 22:32:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(585,'2023-11-14 22:32:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(586,'2023-11-14 22:48:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(587,'2023-11-14 22:52:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(588,'2023-11-14 22:52:22',1,5,'Borrar Cita','El usuario eliminó una cita'),(589,'2023-11-14 23:01:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(590,'2023-11-14 23:01:54',1,5,'Borrar Cita','El usuario eliminó una cita'),(591,'2023-11-14 23:01:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(592,'2023-11-14 23:04:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(593,'2023-11-14 23:25:16',1,5,'Registro','El usuario registró una nueva cita'),(594,'2023-11-14 23:25:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(595,'2023-11-14 23:25:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(596,'2023-11-14 23:35:19',1,1,'Login','Inicio de sesión '),(597,'2023-11-14 23:35:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(598,'2023-11-14 23:51:09',1,5,'Salir','El usuario salió de la pantalla de citas'),(599,'2023-11-14 23:51:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(600,'2023-11-17 12:30:27',1,1,'Login','Inicio de sesión '),(601,'2023-11-17 12:30:29',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(602,'2023-11-17 12:44:22',1,1,'Login','Inicio de sesión '),(603,'2023-11-17 12:44:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(604,'2023-11-17 12:52:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(605,'2023-11-17 12:52:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(606,'2023-11-17 12:54:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(607,'2023-11-17 12:54:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(608,'2023-11-17 12:54:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(609,'2023-11-17 12:54:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(610,'2023-11-17 12:59:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(611,'2023-11-17 12:59:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(612,'2023-11-17 12:59:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(613,'2023-11-17 13:00:00',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(614,'2023-11-17 13:00:17',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(615,'2023-11-17 13:01:06',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(616,'2023-11-17 13:04:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(617,'2023-11-17 13:04:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(618,'2023-11-17 13:38:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(619,'2023-11-17 13:38:51',1,5,'Salir','El usuario salió de la pantalla de citas'),(620,'2023-11-17 13:38:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(621,'2023-11-17 13:39:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(622,'2023-11-17 13:39:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(623,'2023-11-17 13:40:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(624,'2023-11-17 13:40:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(625,'2023-11-17 13:40:45',1,1,'Login','Inicio de sesión '),(626,'2023-11-17 13:40:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(627,'2023-11-17 13:42:51',1,1,'Login','Inicio de sesión '),(628,'2023-11-17 13:42:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(629,'2023-11-17 13:49:58',1,5,'Salir','El usuario salió de la pantalla de citas'),(630,'2023-11-17 13:49:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(631,'2023-11-17 14:29:01',1,1,'Login','Inicio de sesión '),(632,'2023-11-17 14:29:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(633,'2023-11-23 10:15:07',1,1,'Login','Inicio de sesión '),(634,'2023-11-23 10:19:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(635,'2023-11-23 10:25:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(636,'2023-11-23 10:25:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(637,'2023-11-23 10:45:26',1,1,'Login','Inicio de sesión '),(638,'2023-11-23 10:45:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(639,'2023-11-23 10:47:43',1,1,'Login','Inicio de sesión '),(640,'2023-11-23 10:47:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(641,'2023-11-23 10:48:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(642,'2023-11-23 10:48:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(643,'2023-11-23 10:48:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(644,'2023-11-23 10:51:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(645,'2023-11-23 10:56:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(646,'2023-11-23 10:57:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(647,'2023-11-23 11:00:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(648,'2023-11-23 11:01:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(649,'2023-11-23 11:01:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(650,'2023-11-23 11:01:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(651,'2023-11-23 11:01:33',1,1,'Login','Inicio de sesión '),(652,'2023-11-23 11:01:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(653,'2023-11-23 11:04:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(654,'2023-11-23 11:04:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(655,'2023-11-23 11:04:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(656,'2023-11-23 11:06:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(657,'2023-11-23 11:06:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(658,'2023-11-23 11:06:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(659,'2023-11-23 11:07:06',1,1,'Login','Inicio de sesión '),(660,'2023-11-23 11:07:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(661,'2023-11-23 11:12:46',1,1,'Login','Inicio de sesión '),(662,'2023-11-23 11:12:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(663,'2023-11-23 11:13:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(664,'2023-11-23 11:13:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(665,'2023-11-23 11:13:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(666,'2023-11-23 11:14:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(667,'2023-11-23 11:14:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(668,'2023-11-23 11:15:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(669,'2023-11-23 11:16:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(670,'2023-11-23 11:17:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(671,'2023-11-23 11:17:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(672,'2023-11-23 11:35:45',1,5,'Salir','El usuario salió de la pantalla de citas'),(673,'2023-11-23 11:35:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(674,'2023-11-23 11:36:08',1,1,'Login','Inicio de sesión '),(675,'2023-11-23 11:36:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-11-23 11:36:48',1,5,'Salir','El usuario salió de la pantalla de citas'),(677,'2023-11-23 11:36:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(678,'2023-11-23 11:40:48',1,5,'Salir','El usuario salió de la pantalla de citas'),(679,'2023-11-23 11:40:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(680,'2023-11-23 11:42:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(681,'2023-11-23 11:42:42',1,5,'Salir','El usuario salió de la pantalla de citas'),(682,'2023-11-23 11:42:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(683,'2023-11-23 11:45:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(684,'2023-11-23 11:45:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(685,'2023-11-23 11:46:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(686,'2023-11-23 11:46:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(687,'2023-11-23 11:47:58',1,1,'Login','Inicio de sesión '),(688,'2023-11-23 11:48:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(689,'2023-11-23 11:49:43',1,1,'Login','Inicio de sesión '),(690,'2023-11-23 11:49:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(691,'2023-11-23 11:52:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(692,'2023-11-23 11:52:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(693,'2023-11-23 11:55:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(694,'2023-11-23 11:55:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(695,'2023-11-23 11:55:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(696,'2023-11-23 11:56:11',1,1,'Login','Inicio de sesión '),(697,'2023-11-23 11:56:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(698,'2023-11-23 11:56:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(699,'2023-11-23 11:56:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(700,'2023-11-23 11:58:58',1,1,'Login','Inicio de sesión '),(701,'2023-11-23 11:58:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(702,'2023-11-23 11:59:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(703,'2023-11-23 11:59:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(704,'2023-11-23 12:00:03',1,1,'Login','Inicio de sesión '),(705,'2023-11-23 12:00:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(706,'2023-11-23 12:01:21',1,1,'Login','Inicio de sesión '),(707,'2023-11-23 12:01:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(708,'2023-11-23 12:07:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(709,'2023-11-23 12:07:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(710,'2023-11-23 12:13:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(711,'2023-11-23 12:13:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(712,'2023-11-23 12:13:59',1,5,'Salir','El usuario salió de la pantalla de citas'),(713,'2023-11-23 12:14:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(714,'2023-11-23 12:15:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(715,'2023-11-23 12:15:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(716,'2023-11-23 12:15:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(717,'2023-11-23 12:15:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(718,'2023-11-23 12:16:12',1,5,'Salir','El usuario salió de la pantalla de citas'),(719,'2023-11-23 12:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(720,'2023-11-23 12:18:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(721,'2023-11-23 12:18:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(722,'2023-11-23 12:18:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(723,'2023-11-23 12:18:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(724,'2023-11-23 12:18:53',1,5,'Salir','El usuario salió de la pantalla de citas'),(725,'2023-11-23 12:18:53',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(726,'2023-11-23 12:20:12',1,5,'Salir','El usuario salió de la pantalla de citas'),(727,'2023-11-23 12:20:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(728,'2023-11-23 12:30:14',1,1,'Login','Inicio de sesión '),(729,'2023-11-23 12:30:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(730,'2023-11-23 13:25:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(731,'2023-11-23 13:26:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(732,'2023-11-23 13:26:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-11-23 13:26:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(734,'2023-11-23 13:36:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(735,'2023-11-23 13:38:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(736,'2023-11-23 13:38:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(737,'2023-11-23 13:39:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(738,'2023-11-23 13:39:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(739,'2023-11-23 14:13:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(740,'2023-11-24 18:04:15',1,1,'Login','Inicio de sesión '),(741,'2023-11-24 18:04:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(742,'2023-11-24 18:05:24',1,5,'Registro','El usuario registró una nueva cita'),(743,'2023-11-24 18:08:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(744,'2023-11-24 18:09:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(745,'2023-11-24 18:10:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(746,'2023-11-24 18:14:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(747,'2023-11-24 18:14:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(748,'2023-11-24 18:20:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(749,'2023-11-24 18:20:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-11-24 18:20:13',1,5,'Salir','El usuario salió de la pantalla de citas'),(751,'2023-11-24 18:21:09',1,1,'Login','Inicio de sesión '),(752,'2023-11-24 18:24:53',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(753,'2023-11-24 18:24:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(754,'2023-11-24 18:58:57',1,1,'Login','Inicio de sesión '),(755,'2023-11-24 18:59:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(756,'2023-11-24 18:59:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(757,'2023-11-24 19:00:41',1,1,'Login','Inicio de sesión '),(758,'2023-11-24 19:00:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-11-24 19:02:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-11-24 19:02:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(761,'2023-11-24 19:02:49',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(762,'2023-11-24 19:02:51',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(763,'2023-11-24 19:02:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(764,'2023-11-24 19:03:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(765,'2023-11-24 19:03:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(766,'2023-11-24 19:03:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(767,'2023-11-24 19:03:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(768,'2023-11-24 19:04:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(769,'2023-11-24 19:05:26',1,1,'Login','Inicio de sesión '),(770,'2023-11-24 19:05:39',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(771,'2023-11-24 19:05:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(772,'2023-11-24 19:06:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(773,'2023-11-24 19:06:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(774,'2023-11-24 19:09:34',1,1,'Login','Inicio de sesión '),(775,'2023-11-24 19:09:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-11-24 19:29:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(777,'2023-11-24 19:29:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(778,'2023-11-24 19:47:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(779,'2023-11-24 19:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(780,'2023-11-24 22:53:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(781,'2023-11-24 22:54:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-11-24 23:10:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(783,'2023-11-24 23:11:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(784,'2023-11-24 23:29:29',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(785,'2023-11-24 23:29:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(786,'2023-11-24 23:32:00',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(787,'2023-11-24 23:33:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(788,'2023-11-24 23:33:40',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(789,'2023-11-24 23:45:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-11-24 23:45:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(791,'2023-11-24 23:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(792,'2023-11-24 23:45:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(793,'2023-11-24 23:46:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(794,'2023-11-25 00:10:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(795,'2023-11-25 00:34:23',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(796,'2023-11-25 00:36:18',1,1,'Login','Inicio de sesión '),(797,'2023-11-25 00:36:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(798,'2023-11-25 00:37:04',1,1,'Login','Inicio de sesión '),(799,'2023-11-25 00:37:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(800,'2023-11-25 00:40:34',1,1,'Login','Inicio de sesión '),(801,'2023-11-25 00:40:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(802,'2023-11-25 00:47:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(803,'2023-11-25 00:55:31',1,1,'Login','Inicio de sesión '),(804,'2023-11-25 00:55:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(805,'2023-11-25 00:58:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(806,'2023-11-25 01:01:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(807,'2023-11-25 01:03:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(808,'2023-11-25 01:04:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(809,'2023-11-25 01:11:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(810,'2023-11-25 01:11:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(811,'2023-11-25 01:14:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(812,'2023-11-25 01:14:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(813,'2023-11-25 01:16:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(814,'2023-11-25 01:19:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(815,'2023-11-25 01:21:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(816,'2023-11-25 01:28:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(817,'2023-11-25 01:28:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(818,'2023-11-25 01:28:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(819,'2023-11-25 01:29:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(820,'2023-11-25 01:29:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(821,'2023-11-25 01:36:41',1,1,'Login','Inicio de sesión '),(822,'2023-11-25 01:36:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(823,'2023-11-25 01:39:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(824,'2023-11-25 01:40:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(825,'2023-11-25 01:41:07',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(826,'2023-11-25 01:47:35',1,1,'Login','Inicio de sesión '),(827,'2023-11-25 01:47:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(828,'2023-11-25 12:19:07',1,1,'Login','Inicio de sesión '),(829,'2023-11-25 12:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(830,'2023-11-25 12:21:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(831,'2023-11-25 12:21:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(832,'2023-11-25 12:21:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(833,'2023-11-25 12:21:51',1,5,'Registro','El usuario registró una nueva cita'),(834,'2023-11-25 12:25:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(835,'2023-11-25 12:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(836,'2023-11-25 12:26:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(837,'2023-11-25 12:26:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(838,'2023-11-25 12:26:46',1,5,'Salir','El usuario salió de la pantalla de citas'),(839,'2023-11-25 17:11:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(840,'2023-11-25 17:11:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(841,'2023-11-25 17:12:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(842,'2023-11-25 17:12:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(843,'2023-11-25 17:13:25',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(844,'2023-11-25 19:33:40',1,1,'Login','Inicio de sesión '),(845,'2023-11-25 19:33:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(846,'2023-11-25 19:33:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(847,'2023-11-25 19:36:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(848,'2023-11-25 19:37:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(849,'2023-11-25 19:37:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(850,'2023-11-25 19:39:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(851,'2023-11-25 19:41:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(852,'2023-11-25 19:41:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(853,'2023-11-25 19:43:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(854,'2023-11-25 20:03:34',1,1,'Login','Inicio de sesión '),(855,'2023-11-25 20:21:54',1,1,'Login','Inicio de sesión '),(856,'2023-11-25 20:22:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(857,'2023-11-25 20:41:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(858,'2023-11-25 20:41:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(859,'2023-11-25 20:41:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(860,'2023-11-25 21:28:51',1,1,'Login','Inicio de sesión '),(861,'2023-11-25 21:28:56',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(862,'2023-11-25 21:38:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(863,'2023-11-25 21:46:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(864,'2023-11-25 21:56:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(865,'2023-11-25 21:58:02',1,1,'Login','Inicio de sesión '),(866,'2023-11-25 21:58:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(867,'2023-11-25 22:02:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(868,'2023-11-25 22:12:55',1,1,'Login','Inicio de sesión '),(869,'2023-11-25 22:12:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(870,'2023-11-25 22:15:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(871,'2023-11-25 22:15:29',1,1,'Login','Inicio de sesión '),(872,'2023-11-25 22:15:30',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(873,'2023-11-25 23:03:15',1,1,'Login','Inicio de sesión '),(874,'2023-11-25 23:03:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(875,'2023-11-25 23:59:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(876,'2023-11-26 00:05:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(877,'2023-11-26 00:05:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(878,'2023-11-26 00:19:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(879,'2023-11-26 00:19:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(880,'2023-11-26 00:19:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(881,'2023-11-26 00:22:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(882,'2023-11-26 00:31:24',1,1,'Login','Inicio de sesión '),(883,'2023-11-26 00:31:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(884,'2023-11-26 00:34:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(885,'2023-11-26 00:37:33',1,1,'Login','Inicio de sesión '),(886,'2023-11-26 00:43:21',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(887,'2023-11-26 00:52:23',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(888,'2023-11-26 00:52:28',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(889,'2023-11-26 00:52:33',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios');
/*!40000 ALTER TABLE `tbl_ms_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_hist_contrasenia`
--

DROP TABLE IF EXISTS `tbl_ms_hist_contrasenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_hist_contrasenia` (
  `Id_Historial` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Contrasenia` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Historial`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,1,'$2b$10$KkuROv2.OC6qLmZVLsz8H.R.hNyT26kKdfwtzb.989xJIiAUdwPjG','ADMIN',NULL,NULL,NULL),(20,1,'$2b$10$Z86oQU5nFqFO1GNNbpf7C.rKNf5iinqQSX1pUWtf5j7LQz9PDgGV2','ADMIN',NULL,NULL,NULL),(21,3,'$2b$10$LT5CCIjkz7oLR2DMDrOXlO2Zqe3/8l.ZLAToiZ0BIICzvwXjQAUvC','LOCAL',NULL,NULL,NULL),(22,3,'$2b$10$s6yo2AX2iY4WwAjfoRHSye7mlErAiUqFyixyTNaVcX654xvOg4VLW','HOST',NULL,NULL,NULL),(23,3,'$2b$10$vCGwdVeny6hRI6ZnowoWW.VYfIvayOoJx4Ug/Rgct6TIY8jipVnFe','HOST',NULL,NULL,NULL),(24,1,'$2b$10$2.9qMH6IrwW7BG7H2B9gj.qRO4dzLmB6L2lzdTczEi69RCtuk7kV.','ADMIN',NULL,NULL,NULL),(25,3,'$2b$10$aP66C56UtijhmPNgYb/nW.M.e59/RcGn4DfyaMjZpFWwMUM4lWgdy','HOST',NULL,NULL,NULL),(26,3,'$2b$10$hPvCFHJ5Bo6.B0w.VPtWe.OJjtrCJ5u6eDgzbA6r/zu.9qNBwqqyy','HOST',NULL,NULL,NULL),(27,1,'$2b$10$bLjd4DViUgMGORujpaQDrOI1PfkrWOjCu1FtyL5i6OVI7X1/BScE6','ADMIN',NULL,NULL,NULL),(28,1,'$2b$10$I3a712cBorSAP8Gi9SxWeecPmIyHZmjFkyj9xYd8WUKyfAxbxAEoS','ADMIN',NULL,NULL,NULL),(29,3,'$2b$10$h5GTKGdMxcIqcAsZzSLmV.0qmOEcOp4dPTKtR.a2H2WkeH6OK.lNG','HOST',NULL,NULL,NULL),(30,3,'$2b$10$ZW3qzxPlqEwXQQul6j3M4.Vd69PLamD6/POi4tju0YtbyvCvR.39O','HOST',NULL,NULL,NULL),(31,3,'$2b$10$.BOYAhsPL4lF004gp.4CWeQiGHotDnEEA/08Nz4SxDyONk/auetVi','HOST',NULL,NULL,NULL),(32,3,'$2b$10$2cr/UTFfcvo2RYGw8i/dfeo.lolInfHPjKN9aOnKg7LPHpMU53rjm','HOST',NULL,NULL,NULL),(33,3,'$2b$10$cIdBJc0ONxAf66tADKFpu.4t4X0GpaUhqs7fHsdf9Ls4NR7H4SZPy','HOST',NULL,NULL,NULL),(34,1,'$2b$10$bIXOUmbUVt7CYCSsRJy9D.vKJpcHPEGpt24hbXbUrtUUKOJzRlUqq','ADMIN',NULL,NULL,NULL),(35,3,'$2b$10$biphoSR8e/F/TSrn3bDflOeU1/xxVbrdEfwPCH1mHSvZWSORhwBQe','HOST',NULL,NULL,NULL),(36,3,'$2b$10$z3ufpRzh.QQLiVMDyoDYl.BRfKCp5lRCSIVYcdJJzEcI27ut5FA1O','HOST',NULL,NULL,NULL),(37,3,'$2b$10$b3fuhoLxS9D0oYfExXTt6uGiuTMLs0MCrtr99flaEBdKsCTlMVmnm','HOST',NULL,NULL,NULL),(38,3,'$2b$10$ZVZBqSrzX486X14EDFrOU.Yhy7UdLBuF0CIUZ/S0CdU/WpUmZC6iW','HOST',NULL,NULL,NULL),(39,3,'$2b$10$IR4gPv7lsyodKU4qSUkomOaK54nJVBYkrvEOT/ILfANhyY1HHtbde','HOST',NULL,NULL,NULL),(40,3,'$2b$10$dWm9zT.7hgYlaR523Wv4UeX7p8VzRn9XLzgie4xwXMBvW7GODht2C','HOST',NULL,NULL,NULL),(41,3,'$2b$10$BKBMDVPR.BIR3ZUn2BnsSunBNI2gdtpH6cPmOLAgybF70Wkj0HsA.','HOST',NULL,NULL,NULL),(42,3,'$2b$10$JZSoFB1g9hg/QJNGOSpV2OmOfJod0mZnYXaBZlhgPgAV57xI7x/Jm','HOST',NULL,NULL,NULL),(43,3,'$2b$10$B4L3YchvzZgJl1D.qpwP3OADiYgbYh8H5W2Z8m3m9L9djtVj64eKC','HOST',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_parametros`
--

DROP TABLE IF EXISTS `tbl_ms_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_parametros` (
  `Id_Parametro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Parametro` varchar(59) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Parametro`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿CUAL ES TU COLOR FAVORITO?','Jared','2023-03-15','JOHANA','2023-11-26'),(2,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo','2023-03-15','JOHANA','2023-11-26'),(3,'¿CUAL ES TU AUTO FAVORITO?','Erick','2023-03-15','JOHANA','2023-11-26'),(4,'¿QUIERES VIAJAR HOY?','ERICKK','2023-03-15','JOHANA','2023-11-26'),(22,'¿CUAL ES EL NOMBRE DE TU ABUELO?','JOHANA','2023-10-22','JOHANA','2023-11-26');
/*!40000 ALTER TABLE `tbl_ms_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas_usuario` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Respuesta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Pregunta` (`Id_Pregunta`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,3,'AZUL','HOST','2023-10-31',NULL,NULL),(2,3,'NOCE','HOST','2023-10-31',NULL,NULL),(3,3,'NADA','HOST','2023-10-31',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`),
  UNIQUE KEY `Descripcion` (`Descripcion`),
  UNIQUE KEY `Rol` (`Rol`),
  UNIQUE KEY `Descripcion_2` (`Descripcion`),
  UNIQUE KEY `Rol_2` (`Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 04:04:01',NULL,NULL,'Activo'),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 05:01:31',NULL,NULL,'Activo');
/*!40000 ALTER TABLE `tbl_ms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(15) DEFAULT NULL,
  `Nombre_Usuario` varchar(100) DEFAULT NULL,
  `Estado_Usuario` varchar(100) DEFAULT 'Nuevo',
  `Contrasenia` varchar(100) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Fecha_Ultima_Conexion` date DEFAULT NULL,
  `Preguntas_Contestadas` int(11) DEFAULT 0,
  `Primer_Ingreso` int(11) DEFAULT 0,
  `Fecha_Vencimiento` date DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMINI','ADMIN','Activo','$2b$10$7Wtw6sQt9ihyz0NyTIubs.86YtCi3b7gAiNVTrlGqkrhQMp.adPI2',1,'2023-02-02',1,1,'2023-11-17','johanalara2606@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08','Activo'),(3,'HOST','HOST','Activo','$2b$10$OAseS5MaJItyDv77SpQwtulVEMn8JaFlaNTfC2ieDWHVvosNJFDKS',2,NULL,0,0,'2024-02-23','seydi.lara@unah.hn',4,NULL,'2023-10-11',NULL,'2023-10-11','Activo');
/*!40000 ALTER TABLE `tbl_ms_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos` (
  `Id_Objeto` int(11) NOT NULL,
  `Objeto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Tipo_Objeto` varchar(15) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos`
--

LOCK TABLES `tbl_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos` DISABLE KEYS */;
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Compras','Pagina de gestion de compras','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pago` (
  `IdPago` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdTipoPago` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(15) DEFAULT NULL,
  `saldoAbono` float DEFAULT NULL,
  `saldoRestante` float DEFAULT NULL,
  PRIMARY KEY (`IdPago`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdTipoPago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,5,2,'2022-08-16 03:48:02','Activo',200,300),(2,5,1,'2023-11-26 04:01:06','Pendiente',10,290),(3,5,3,'2023-11-26 06:48:37','Pendiente',100,200),(4,5,3,'2023-11-26 06:48:45','Pendiente',100,200),(5,5,3,'2023-11-26 06:48:58','Pendiente',250,50),(6,5,3,'2023-11-26 06:49:48','Pagado',300,0);
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pais`
--

DROP TABLE IF EXISTS `tbl_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pais` (
  `IdPais` int(11) NOT NULL AUTO_INCREMENT,
  `Pais` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (1,'Honduras','A'),(2,'Costa Rica','A'),(3,'Estados Unidos','A'),(4,'Mexico','A'),(5,'Panama ','A'),(6,'España','A'),(7,'Italia','A');
/*!40000 ALTER TABLE `tbl_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `Id_Objeto` int(11) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Permiso_Insercion` char(1) DEFAULT NULL,
  `Permiso_Eliminacion` char(1) DEFAULT NULL,
  `Permiso_Actualizacion` char(1) DEFAULT NULL,
  `Permiso_Consultar` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Objeto` (`Id_Objeto`),
  KEY `Id_Rol` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','s',NULL,NULL,NULL,NULL),(4,2,'n','s','n','n',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `IdModelo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidadMin` int(11) DEFAULT NULL,
  `cantidadMax` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,200,5,100,'DDDDDDDDDDDD','A'),(2,2,200,100,200,'SEPA','A');
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productopromocion`
--

DROP TABLE IF EXISTS `tbl_productopromocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productopromocion` (
  `IdProductoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductoPromocion`),
  UNIQUE KEY `IdProducto` (`IdProducto`),
  KEY `IdPromocion` (`IdPromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_productopromocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocion`
--

DROP TABLE IF EXISTS `tbl_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocion` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicial` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-11-01','2023-11-30','A',0.15,'DESCUENTO'),(2,'2023-11-01','2023-12-09','A',0,'PROMO');
/*!40000 ALTER TABLE `tbl_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocionmarca`
--

DROP TABLE IF EXISTS `tbl_promocionmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocionmarca` (
  `IdPromocionMarca` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `IdModelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPromocionMarca`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdMarca` (`IdMarca`),
  KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_promocionmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `CiaProveedora` varchar(50) DEFAULT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Productos` varchar(200) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'HCH','YO',1,31,'SEPA','COLON','98654232','jlainez@gmail.com','Activo');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recordatorio`
--

DROP TABLE IF EXISTS `tbl_recordatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recordatorio` (
  `IdRecordatorio` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` varchar(15) DEFAULT NULL,
  `Nota` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdRecordatorio`),
  KEY `IdCliente` (`IdCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (27,'0801197300054','FGHH','2024-11-14'),(30,'0208200101152','ASABER','2024-11-14');
/*!40000 ALTER TABLE `tbl_recordatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sucursal`
--

DROP TABLE IF EXISTS `tbl_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `IdDepartamento` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862','A'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','A');
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipomovimiento`
--

DROP TABLE IF EXISTS `tbl_tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipomovimiento` (
  `IdTipoMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (5,'Anulado'),(1,'Entrada'),(3,'Entrada Extraordinaria'),(2,'Salida'),(4,'Salida Extraordinaria');
/*!40000 ALTER TABLE `tbl_tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopago`
--

DROP TABLE IF EXISTS `tbl_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipopago` (
  `IdTipoPago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo','A'),(2,'Tarjeta de debito','A'),(3,'Tarjeta de credito','A');
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_token` (
  `IdToken` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `NombreToken` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdToken`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MTY1MzgiLCJpYXQiOjE2OTcwODg1MTQsImV4cCI6MTY5NzA4ODgxNH0.iwIx-IVawHlvE_DjOI7ZTqXnxkDyhEJ_ts6SZdImFEA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0NjY2MjMiLCJpYXQiOjE2OTc5NjE2NDQsImV4cCI6MTY5Nzk2MTk0NH0.A2q6YF_IVrhBDf2lRIjrXxMEikXXU4QTGunxTkaJlgA'),(3,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNTc5NjYiLCJpYXQiOjE2OTg0NTEzOTUsImV4cCI6MTY5ODQ1MTY5NX0.Y4t3gAJFAchPIZ4gf1mlx7piDQhDcjF2yybW9Yw_t1I'),(4,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIwNzY4NjYiLCJpYXQiOjE2OTg0NTE4NzIsImV4cCI6MTY5ODQ1MjE3Mn0.evcK05mxZWmnhQrSndEhnpt_nxHKa5fy6DftZXMDlbk'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxNzIwNTEiLCJpYXQiOjE2OTg0NTE5OTcsImV4cCI6MTY5ODQ1MjI5N30._Lfzs_T4VpjrUvx7LR1wZT55qmO3-G5L8wZSRuXIpXM'),(6,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzODI2MDIiLCJpYXQiOjE2OTg0NTM1MTksImV4cCI6MTY5ODQ1MzgxOX0.s_OSr6wRYiBWtMQS4JE1dsnY1WUxNumIBJcgZ1xuXv8'),(7,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMzIwMzQiLCJpYXQiOjE2OTg0NTM1NjMsImV4cCI6MTY5ODQ1Mzg2M30.rCooI3CG-wesawiNsL2eBgknejXH1sHmM5r_n3HZzOM'),(8,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxODYzODkiLCJpYXQiOjE2OTg0NTM4NzUsImV4cCI6MTY5ODQ1NDE3NX0.-4xA87d4Y_dT55wwnFBqXM-mLUMs6vie3F0EUFKdf70'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIxNTI0OTEiLCJpYXQiOjE2OTg0NTQyMDEsImV4cCI6MTY5ODQ1NDUwMX0.rH32WmyiaPKTjUk4znEmx9umvFSwKgxl7PSj0xw2Tyw'),(10,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NTc3ODgiLCJpYXQiOjE2OTg0NTUyMjIsImV4cCI6MTY5ODQ1NTUyMn0.URdY1Sw32Niy4nYS0XXNzBF0LXwNET_MRasf_JX8oGo'),(11,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMjM1NDkiLCJpYXQiOjE2OTg0NTU3MjQsImV4cCI6MTY5ODQ1NjAyNH0.rN9JtQhp-lSvJG9sIAV8FXIQDp7AqgXHZ1d130VA7ZQ'),(12,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1MzI1NzciLCJpYXQiOjE2OTg0NTU4NDYsImV4cCI6MTY5ODQ1NjE0Nn0.dAbNomVehhlhZGhwcGPZ0WO81mL-GagcFUr6Jks87Vk'),(13,3,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDU4MTIiLCJpYXQiOjE2OTg3ODg2NDAsImV4cCI6MTY5ODc4ODk0MH0.qjhjT_5kcB7AL6vc3EaTgqgsVkidBxo3YkLU-PHFKro');
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta`
--

DROP TABLE IF EXISTS `tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechaEntrega` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `IdCliente` varchar(15) NOT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `RTN` varchar(20) DEFAULT '08019020229809',
  `NumeroCAI` varchar(100) DEFAULT 'EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',
  `valorVenta` float DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-11-26 01:40:17','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'I'),(2,'2023-11-26 01:40:28','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'I'),(3,'2023-11-26 01:40:42','0000-00-00','0000-00-00','0208200101112',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',238,'A'),(4,'2023-11-26 01:45:54','0000-00-00','0000-00-00','0801197300054',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',280,'A'),(5,'2023-11-26 01:47:44','0000-00-00','0000-00-00','0801197300054',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1680,'I'),(6,'2023-11-26 06:46:45','0000-00-00','0000-00-00','0205197200225',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',280,'A');
/*!40000 ALTER TABLE `tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventadetalle`
--

DROP TABLE IF EXISTS `tbl_ventadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ventadetalle` (
  `IdVentaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdGarantia` int(11) NOT NULL,
  `IdPromocion` int(11) DEFAULT NULL,
  `IdDescuento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `precioAro` float DEFAULT NULL,
  `IdLente` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `rebaja` float DEFAULT NULL,
  `totalVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVentaDetalle`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdGarantia` (`IdGarantia`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdDescuento` (`IdDescuento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `fk_ventaD_Lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,1,2,180,1,1,280,42,238),(2,2,1,1,1,2,180,1,1,280,42,238),(3,3,1,1,1,2,180,1,1,280,42,238),(4,4,3,2,1,2,180,1,1,280,0,280),(5,5,3,2,1,2,180,1,2,560,0,560),(6,5,3,2,1,1,180,1,4,1120,0,1120),(7,6,3,2,1,1,180,1,1,280,0,280);
/*!40000 ALTER TABLE `tbl_ventadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectomultioptica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-26  0:52:38
