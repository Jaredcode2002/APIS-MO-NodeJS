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
INSERT INTO `tbl_ciudad` VALUES (1,'TEGUCIGALPA','A'),(2,'COMAYAGUA','A'),(3,'SAN PEDRO SULA','A'),(4,'LA CEIBA','A'),(5,'CHOLUTECA','A'),(6,'PUERTO CORTES','A'),(7,'EL PROGRESO','A'),(8,'CHOLOMA','A'),(9,'TELA','A'),(10,'JUTICALPA','A'),(11,'DANLI','A'),(12,'LA LIMA','A'),(13,'SANTA ROSA','A'),(14,'SIGUATEPEQUE','A'),(15,'CATACAMAS','A'),(16,'TOCOA','A'),(17,'OLANCHITO','A'),(18,'DISTRITO CENTRAL','A'),(19,'SANTA BARBARA','A'),(20,'YORO','A'),(21,'NACAOME','A'),(22,'GRACIAS','A'),(23,'LA ESPERANZA','A'),(24,'YUSCARAN','A'),(25,'TRUJILLO','A'),(26,'PUERTO LEMPIRA','A'),(27,'OCOTEPEQUE','A'),(28,'LA PAZ','A'),(29,'PATUCA','A'),(30,'CHAMELECON','A'),(31,'LAS VEGAS','A'),(32,'EL PORVENIR','A'),(33,'SANTA CRUZ','A'),(34,'MARCALA','A'),(35,'COMAYAGUELA','A'),(36,'JUTIAPA','A'),(37,'OMOA','A'),(38,'LA CAMPA','A'),(39,'GUAIMACA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0716198622345','PEDRO','AGUILERA',1,'2023-01-02','BARRIO LA LOMITA','99076543','',33),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',4),('0801200019999','JARED DAVID','SALGADO ORTIZ',1,'2002-07-22','BARRIO LA MERY DE FLORES','99004455','',34),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000,'A'),(2,'2023-08-20 17:35:02',6000,'A'),(3,'2023-11-09 05:30:49',14000,'A'),(4,'2023-11-10 14:52:11',15000,'A'),(5,'2023-11-10 16:27:37',110,'A'),(6,'2023-11-23 03:14:07',14111,'A'),(7,'2023-11-26 01:23:14',10000,'A'),(8,'2023-11-26 17:53:51',1000,'A'),(9,'2023-11-26 18:22:08',100,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000),(3,3,1,6,2,14000),(10,8,1,200,14,1000),(11,9,1,1,14,100);
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
INSERT INTO `tbl_departamento` VALUES (1,'ATLANTIDA','A'),(2,'COLON','A'),(3,'COMAYAGUA','A'),(4,'COPAN','A'),(5,'CORTES','A'),(6,'CHOLUTECA','A'),(7,'EL PARAISO','A'),(8,'FRANCISCO MORAZAN','A'),(9,'GRACIAS A DIOS','A'),(10,'INTIBUCA','A'),(11,'ISLAS DE LA BAHIA','A'),(12,'LA PAZ','A'),(13,'LEMPIRA','A'),(14,'OCOTEPEQUE','A'),(15,'OLANCHO','A'),(16,'SANTA BARBARA','A'),(17,'VALLE','A'),(18,'YORO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',0,0.05),(2,'A',0.15,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(45,'ERICK','RAMIREZ','99088762',1,1,'0801200001115','2024-02-16','1899-11-30','2012-06-04','Activo'),(46,'EMPLEADO','FINAL','99008762',1,1,'0801201019999','2023-11-26',NULL,'2023-03-09','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(32,'2023-11-25 06:00:00','0716198622345',1),(33,'2023-11-25 06:00:00','0801200019999',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(26,32,'MIOPIA','KAREN AGUILERA','KAREN AGUILERA','NINGUNO','1','1','1','1','1','1','1','1','1','1','0','1','2023-11-25','2024-11-26'),(27,33,'MIOPIA','ERICK','HEIDY','NINGUNO','2','1','2','1','2','1','2','1','2','1','1','1','2023-11-25','2024-11-26'),(28,33,'NADA','SEYDI','MICHAEL','NADA','6','4','6','4','6','4','6','4','6','4','6','4','2023-11-25','2024-11-26');
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
INSERT INTO `tbl_garantia` VALUES (1,'GARANTIA POR AJUSTES',3,1,'A'),(2,'GARANTIA DE CALIDAD',3,1,'A'),(3,'GARANTIA NORMAL',5,1,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'MASCULINO','A'),(2,'FEMENINO','A'),(6,'BINARIO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(3,3,91),(7,14,297);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100,NULL),(2,2,1,1,'2023-08-20 01:54:08',1,NULL),(3,2,1,1,'2023-08-20 16:36:57',1,NULL),(4,1,1,1,'2023-08-20 06:00:00',5,NULL),(25,2,13,NULL,'2023-11-26 16:12:31',1,NULL),(26,2,9,NULL,'2023-11-26 16:15:14',1,NULL),(27,2,2,NULL,'2023-11-26 16:27:38',1,NULL),(28,2,13,NULL,'2023-11-26 16:27:38',1,NULL),(29,2,2,NULL,'2023-11-26 16:31:27',1,NULL),(30,1,14,1,'2023-11-26 06:00:00',200,NULL),(31,4,4,1,'2023-11-26 23:56:48',2,'ROBO'),(32,4,4,1,'2023-11-26 23:57:48',2,'ROBO XS'),(33,4,4,1,'2023-11-26 23:59:25',10,'ROBO'),(34,4,4,1,'2023-11-27 00:03:43',100,'ROBADOS'),(35,3,3,1,'2023-11-27 00:05:29',12,'HOLA'),(36,4,4,1,'2023-11-27 00:09:01',2,'HAHA'),(37,2,14,NULL,'2023-11-26 18:10:22',1,NULL),(38,1,14,1,'2023-11-26 06:00:00',1,NULL),(39,2,14,NULL,'2023-11-26 18:36:10',1,NULL),(40,4,14,1,'2023-11-27 00:44:03',2,'ROBO'),(41,3,14,1,'2023-11-27 00:44:33',100,'COMPRA');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (10,'TRANSITION',2000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'ELINE','A'),(6,'INFORMATICA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(6,5,'ELINE PLUS',2023,'A'),(7,6,'INFORMATICAJ9',2023,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-08-19 17:49:40',1,1,'Login','Inicio de sesión '),(13,'2023-08-19 17:52:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 18:03:43',1,1,'Login','Inicio de sesión '),(15,'2023-08-19 18:03:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(16,'2023-08-19 18:08:08',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 18:08:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(18,'2023-08-19 18:08:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(19,'2023-08-19 18:11:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(20,'2023-08-19 18:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(21,'2023-08-19 18:13:49',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(22,'2023-08-19 18:14:19',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(23,'2023-08-19 18:14:29',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(24,'2023-08-19 18:14:52',NULL,9,'Salir','Se salio de Lista de Empleados'),(25,'2023-08-19 18:17:21',0,2,'Usuario nuevo','Se agrego un nuevo usuario'),(26,'2023-08-19 18:18:33',2,1,'Login','Inicio de sesión '),(27,'2023-08-19 18:21:30',1,1,'Login','Inicio de sesión '),(28,'2023-08-19 18:21:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 18:21:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(30,'2023-08-19 18:23:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(31,'2023-08-19 18:26:03',1,1,'Login','Inicio de sesión '),(32,'2023-08-19 18:26:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(33,'2023-08-19 19:43:49',1,1,'Login','Inicio de sesión '),(34,'2023-08-19 19:47:33',1,1,'Login','Inicio de sesión '),(35,'2023-08-19 19:49:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(36,'2023-08-19 19:55:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(37,'2023-08-19 21:05:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(38,'2023-08-19 21:05:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 21:05:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(40,'2023-08-19 21:46:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 21:47:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(42,'2023-08-19 21:47:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(43,'2023-08-19 21:47:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(44,'2023-08-19 21:47:53',1,1,'Login','Inicio de sesión '),(45,'2023-08-19 21:47:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(46,'2023-08-19 22:36:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-19 22:44:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(48,'2023-08-19 23:25:10',1,1,'Login','Inicio de sesión '),(49,'2023-08-19 23:25:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 00:30:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(51,'2023-08-20 01:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(52,'2023-08-20 01:21:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(53,'2023-08-20 11:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 11:43:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(55,'2023-08-20 11:43:45',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(56,'2023-08-20 11:43:56',1,5,'Salir','El usuario salió de la pantalla de citas'),(57,'2023-08-20 11:43:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 11:44:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(59,'2023-08-20 12:22:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(60,'2023-08-20 13:42:23',1,1,'Login','Inicio de sesión '),(61,'2023-08-20 13:42:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(62,'2023-08-20 14:55:56',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 14:55:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(64,'2023-08-20 15:45:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(65,'2023-08-21 11:44:37',1,1,'Login','Inicio de sesión '),(66,'2023-08-21 11:44:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(67,'2023-08-21 12:02:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(68,'2023-08-21 12:23:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(69,'2023-08-21 12:33:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(70,'2023-08-21 12:35:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(71,'2023-08-21 13:24:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(72,'2023-08-21 13:24:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(73,'2023-08-21 13:28:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(74,'2023-08-21 13:39:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(75,'2023-08-21 13:40:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(76,'2023-08-21 13:40:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(77,'2023-08-21 23:30:21',1,1,'Login','Inicio de sesión '),(78,'2023-08-22 21:32:23',1,1,'Login','Inicio de sesión '),(79,'2023-08-22 21:32:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(80,'2023-08-22 21:32:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(81,'2023-08-22 21:32:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(82,'2023-08-23 01:06:43',1,1,'Login','Inicio de sesión '),(83,'2023-09-27 23:16:28',1,1,'Login','Inicio de sesión '),(84,'2023-09-27 23:16:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(88,'2023-09-27 23:22:15',1,1,'Login','Inicio de sesión '),(89,'2023-09-27 23:24:41',1,1,'Login','Inicio de sesión '),(90,'2023-09-27 23:28:34',1,1,'Login','Inicio de sesión '),(91,'2023-09-27 23:28:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(101,'2023-10-11 22:21:31',1,1,'Login','Inicio de sesión '),(102,'2023-10-11 22:21:36',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(103,'2023-10-11 22:24:16',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(104,'2023-10-11 22:31:28',1,1,'Login','Inicio de sesión '),(105,'2023-10-11 22:31:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(106,'2023-10-11 22:34:47',1,1,'Login','Inicio de sesión '),(107,'2023-10-11 22:36:08',1,1,'Login','Inicio de sesión '),(108,'2023-10-11 22:36:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(109,'2023-10-11 22:36:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(110,'2023-10-11 22:38:39',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(111,'2023-10-11 22:39:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(112,'2023-10-11 22:41:18',3,1,'Login','Inicio de sesión '),(113,'2023-10-11 22:49:59',3,1,'Login','Inicio de sesión '),(114,'2023-10-11 22:50:07',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-11 22:50:12',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(116,'2023-10-11 22:50:45',3,1,'Login','Inicio de sesión '),(117,'2023-10-11 22:50:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(118,'2023-10-11 22:52:16',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(119,'2023-10-11 22:52:20',1,1,'Login','Inicio de sesión '),(120,'2023-10-11 22:52:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-11 22:52:38',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-11 22:52:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(123,'2023-10-11 22:53:42',3,1,'Login','Inicio de sesión '),(124,'2023-10-11 22:53:45',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(125,'2023-10-11 22:53:48',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(126,'2023-10-11 22:56:30',1,1,'Login','Inicio de sesión '),(127,'2023-10-11 22:56:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(128,'2023-10-11 22:56:55',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(129,'2023-10-11 22:56:58',NULL,9,'Salir','Se salio de Lista de Empleados'),(130,'2023-10-11 22:58:44',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(131,'2023-10-11 23:00:45',4,1,'Login','Inicio de sesión '),(132,'2023-10-11 23:00:49',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-11 23:00:55',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-11 23:00:58',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(135,'2023-10-11 23:01:01',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(136,'2023-10-11 23:01:04',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(137,'2023-10-11 23:01:08',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(138,'2023-10-11 23:01:11',1,1,'Login','Inicio de sesión '),(139,'2023-10-11 23:01:14',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(140,'2023-10-11 23:01:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(141,'2023-10-11 23:01:35',4,1,'Login','Inicio de sesión '),(142,'2023-10-11 23:01:38',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(143,'2023-10-11 23:02:11',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(144,'2023-10-11 23:02:20',4,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(145,'2023-10-11 23:02:37',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(146,'2023-10-13 22:05:10',1,1,'Login','Inicio de sesión '),(147,'2023-10-13 22:28:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(148,'2023-10-14 00:42:28',1,1,'Login','Inicio de sesión '),(149,'2023-10-14 11:08:43',1,1,'Login','Inicio de sesión '),(150,'2023-10-14 13:17:05',1,1,'Login','Inicio de sesión '),(151,'2023-10-14 14:41:09',1,1,'Login','Inicio de sesión '),(152,'2023-10-14 22:03:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(153,'2023-10-14 22:03:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(154,'2023-10-14 23:23:47',1,1,'Login','Inicio de sesión '),(155,'2023-10-15 00:19:56',1,1,'Login','Inicio de sesión '),(156,'2023-10-15 00:29:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-15 00:49:08',1,1,'Login','Inicio de sesión '),(158,'2023-10-15 00:50:33',1,1,'Login','Inicio de sesión '),(159,'2023-10-15 08:55:12',1,1,'Login','Inicio de sesión '),(160,'2023-10-15 14:51:10',1,1,'Login','Inicio de sesión '),(161,'2023-10-15 14:55:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(162,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(163,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(164,'2023-10-15 15:04:47',1,1,'Login','Inicio de sesión '),(165,'2023-10-15 15:05:31',1,1,'Login','Inicio de sesión '),(166,'2023-10-15 15:50:19',1,1,'Login','Inicio de sesión '),(167,'2023-10-15 21:27:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(168,'2023-10-15 21:30:11',1,5,'Registro','El usuario registró una nueva cita'),(169,'2023-10-15 21:31:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(170,'2023-10-17 22:33:18',1,1,'Login','Inicio de sesión '),(171,'2023-10-17 22:33:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(172,'2023-10-17 22:33:33',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(173,'2023-10-17 22:34:41',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(174,'2023-10-17 22:36:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(175,'2023-10-17 22:37:22',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(176,'2023-10-17 23:01:18',1,1,'Login','Inicio de sesión '),(177,'2023-10-17 23:01:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(178,'2023-10-17 23:02:11',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(179,'2023-10-17 23:02:47',5,1,'Login','Inicio de sesión '),(180,'2023-10-17 23:28:46',5,1,'Login','Inicio de sesión '),(181,'2023-10-17 23:29:29',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(182,'2023-10-17 23:32:14',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(183,'2023-10-17 23:42:28',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(184,'2023-10-17 23:43:09',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(185,'2023-10-17 23:43:20',1,1,'Login','Inicio de sesión '),(186,'2023-10-17 23:43:25',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(187,'2023-10-17 23:44:12',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(188,'2023-10-17 23:44:33',1,1,'Login','Inicio de sesión '),(189,'2023-10-17 23:44:38',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(190,'2023-10-17 23:45:51',1,11,'Modificación','El usuario modificó la contraseña'),(191,'2023-10-18 20:01:14',5,1,'Login','Inicio de sesión '),(192,'2023-10-18 20:05:32',1,1,'Login','Inicio de sesión '),(193,'2023-10-18 20:05:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(194,'2023-10-18 21:28:08',1,1,'Login','Inicio de sesión '),(195,'2023-10-18 21:28:13',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(196,'2023-10-18 21:28:52',1,11,'Modificación','El usuario modificó la contraseña'),(197,'2023-10-18 21:29:01',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(198,'2023-10-18 21:29:08',1,1,'Login','Inicio de sesión '),(199,'2023-10-19 10:23:15',5,1,'Login','Inicio de sesión '),(200,'2023-10-19 10:23:20',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(201,'2023-10-19 10:24:16',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(202,'2023-10-19 10:32:30',1,1,'Login','Inicio de sesión '),(203,'2023-10-19 10:32:36',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(204,'2023-10-19 10:33:50',5,1,'Login','Inicio de sesión '),(205,'2023-10-19 10:34:04',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-19 10:35:05',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(207,'2023-10-19 10:35:28',5,1,'Login','Inicio de sesión '),(208,'2023-10-19 10:35:31',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(209,'2023-10-19 10:36:24',5,11,'Modificación','El usuario modificó la contraseña'),(210,'2023-10-19 10:36:34',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(211,'2023-10-19 10:36:58',5,1,'Login','Inicio de sesión '),(212,'2023-10-19 10:52:47',5,1,'Login','Inicio de sesión '),(213,'2023-10-19 10:53:09',1,1,'Login','Inicio de sesión '),(214,'2023-10-19 10:53:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(215,'2023-10-19 10:53:23',NULL,9,'Salir','Se salio de Lista de Empleados'),(216,'2023-10-19 11:02:44',6,1,'Login','Inicio de sesión '),(217,'2023-10-19 11:11:20',1,1,'Login','Inicio de sesión '),(218,'2023-10-19 11:11:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(219,'2023-10-19 11:21:06',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(220,'2023-10-19 11:25:05',5,1,'Login','Inicio de sesión '),(221,'2023-10-19 11:25:09',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(222,'2023-10-19 18:09:09',1,1,'Login','Inicio de sesión '),(223,'2023-10-19 18:09:26',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(224,'2023-10-19 20:34:53',1,1,'Login','Inicio de sesión '),(225,'2023-10-19 20:36:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(226,'2023-10-19 20:37:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(227,'2023-10-19 22:20:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(228,'2023-10-19 23:04:53',1,1,'Login','Inicio de sesión '),(229,'2023-10-19 23:04:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(230,'2023-10-19 23:09:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(231,'2023-10-19 23:09:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(232,'2023-10-19 23:26:04',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(233,'2023-10-19 23:32:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(234,'2023-10-19 23:33:12',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(235,'2023-10-19 23:41:08',NULL,9,'Salir','Se salio de Lista de Empleados'),(236,'2023-10-19 23:43:04',1,1,'Login','Inicio de sesión '),(237,'2023-10-19 23:43:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(238,'2023-10-19 23:44:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(239,'2023-10-19 23:45:46',1,1,'Login','Inicio de sesión '),(240,'2023-10-19 23:45:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(241,'2023-10-19 23:46:58',1,1,'Login','Inicio de sesión '),(242,'2023-10-19 23:46:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(243,'2023-10-19 23:47:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(244,'2023-10-19 23:50:48',1,1,'Login','Inicio de sesión '),(245,'2023-10-19 23:50:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(246,'2023-10-19 23:51:24',5,1,'Login','Inicio de sesión '),(247,'2023-10-19 23:52:48',1,1,'Login','Inicio de sesión '),(248,'2023-10-19 23:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(249,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(250,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(251,'2023-10-20 16:29:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(252,'2023-10-20 16:29:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(253,'2023-10-20 16:31:47',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(254,'2023-10-20 16:48:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(255,'2023-10-20 17:03:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(256,'2023-10-20 17:03:43',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(257,'2023-10-20 17:03:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(258,'2023-10-20 17:04:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(259,'2023-10-20 17:09:34',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(260,'2023-10-20 17:10:05',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(261,'2023-10-20 20:15:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(262,'2023-10-20 20:17:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(263,'2023-10-20 20:18:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(264,'2023-10-20 20:19:13',1,1,'Login','Inicio de sesión '),(265,'2023-10-20 20:19:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(266,'2023-10-20 20:20:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(267,'2023-10-20 20:21:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(268,'2023-10-20 20:23:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(269,'2023-10-20 20:23:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(270,'2023-10-20 20:23:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(271,'2023-10-20 20:31:29',1,1,'Login','Inicio de sesión '),(272,'2023-10-20 20:31:31',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(273,'2023-10-20 20:33:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(274,'2023-10-20 20:33:21',1,1,'Login','Inicio de sesión '),(275,'2023-10-20 20:33:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(276,'2023-10-20 20:38:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(277,'2023-10-20 20:51:33',9,1,'Login','Inicio de sesión '),(278,'2023-10-20 20:51:40',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-20 20:51:45',9,11,'Modificación','El usuario modificó los datos del perfil'),(280,'2023-10-20 20:53:23',9,1,'Login','Inicio de sesión '),(281,'2023-10-20 20:53:28',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(282,'2023-10-20 20:53:41',9,11,'Modificación','El usuario modificó las preguntas de seguridad'),(283,'2023-10-20 20:55:51',9,11,'Modificación','El usuario modificó la contraseña'),(284,'2023-10-20 20:55:55',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(285,'2023-10-20 20:56:26',9,1,'Login','Inicio de sesión '),(286,'2023-10-20 21:06:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(287,'2023-10-20 21:15:54',9,1,'Login','Inicio de sesión '),(288,'2023-10-20 21:16:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(289,'2023-10-20 21:16:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(290,'2023-10-20 21:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(291,'2023-10-20 21:16:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-10-20 21:30:18',1,1,'Login','Inicio de sesión '),(293,'2023-10-20 21:30:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(294,'2023-10-20 21:33:52',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 21:33:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-20 21:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(297,'2023-10-20 21:39:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-20 21:42:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(299,'2023-10-20 21:42:58',1,1,'Login','Inicio de sesión '),(300,'2023-10-20 21:43:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(301,'2023-10-20 21:43:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(302,'2023-10-20 21:44:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(303,'2023-10-20 21:45:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(304,'2023-10-20 21:49:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(305,'2023-10-20 22:09:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-10-21 07:31:04',1,1,'Login','Inicio de sesión '),(307,'2023-10-21 07:31:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(308,'2023-10-21 07:40:03',1,1,'Login','Inicio de sesión '),(309,'2023-10-21 07:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(310,'2023-10-21 07:44:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(311,'2023-10-21 07:44:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(312,'2023-10-21 07:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(313,'2023-10-21 07:46:36',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(314,'2023-10-21 07:53:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(315,'2023-10-22 08:19:26',1,1,'Login','Inicio de sesión '),(316,'2023-10-22 08:19:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-10-22 09:19:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(318,'2023-10-22 09:26:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(319,'2023-10-22 10:53:33',1,1,'Login','Inicio de sesión '),(320,'2023-10-22 14:33:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-10-22 14:36:44',1,1,'Login','Inicio de sesión '),(322,'2023-10-22 14:36:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(323,'2023-10-22 14:37:46',9,1,'Login','Inicio de sesión '),(324,'2023-10-22 15:00:29',1,1,'Login','Inicio de sesión '),(325,'2023-10-22 15:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(326,'2023-10-22 15:15:58',1,1,'Login','Inicio de sesión '),(327,'2023-10-22 15:17:15',1,1,'Login','Inicio de sesión '),(328,'2023-10-22 16:03:41',1,1,'Login','Inicio de sesión '),(329,'2023-10-22 16:30:25',1,1,'Login','Inicio de sesión '),(330,'2023-10-22 16:50:12',1,1,'Login','Inicio de sesión '),(331,'2023-10-22 16:50:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(332,'2023-10-22 16:50:26',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(333,'2023-10-22 16:50:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(334,'2023-10-22 16:52:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(335,'2023-10-22 16:52:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(336,'2023-10-22 16:53:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(337,'2023-10-22 16:53:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(338,'2023-10-22 21:31:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(339,'2023-10-22 21:31:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(340,'2023-10-22 21:32:34',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(341,'2023-10-22 21:36:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(342,'2023-10-22 21:38:39',1,1,'Login','Inicio de sesión '),(343,'2023-10-22 21:38:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(344,'2023-10-22 21:39:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(345,'2023-10-22 21:44:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(346,'2023-10-22 21:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(347,'2023-10-22 22:57:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(348,'2023-10-24 21:27:02',1,1,'Login','Inicio de sesión '),(349,'2023-10-24 21:28:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(350,'2023-10-24 21:28:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(351,'2023-10-24 21:32:21',1,1,'Login','Inicio de sesión '),(352,'2023-10-24 21:32:29',1,1,'Login','Inicio de sesión '),(353,'2023-10-24 21:32:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(354,'2023-10-24 21:39:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-10-24 22:04:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(356,'2023-10-24 22:19:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-10-24 22:29:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(358,'2023-10-26 21:55:44',1,1,'Login','Inicio de sesión '),(359,'2023-10-26 22:02:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(360,'2023-10-26 22:07:00',1,1,'Login','Inicio de sesión '),(361,'2023-10-26 22:07:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-10-26 22:12:35',1,1,'Login','Inicio de sesión '),(363,'2023-10-26 22:12:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(364,'2023-10-26 22:17:01',5,1,'Login','Inicio de sesión '),(365,'2023-10-26 22:19:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-26 22:19:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(367,'2023-10-26 22:30:19',1,1,'Login','Inicio de sesión '),(368,'2023-10-27 00:17:06',5,1,'Login','Inicio de sesión '),(369,'2023-10-27 18:52:02',1,1,'Login','Inicio de sesión '),(370,'2023-10-27 18:52:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(371,'2023-10-27 18:56:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-10-27 19:18:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(373,'2023-10-27 19:19:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-10-27 19:41:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-10-28 21:49:47',1,1,'Login','Inicio de sesión '),(376,'2023-10-28 21:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-10-28 21:54:14',11,1,'Login','Inicio de sesión '),(378,'2023-10-28 21:54:19',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(379,'2023-10-28 21:55:09',11,11,'Modificación','El usuario modificó la contraseña'),(380,'2023-10-28 21:55:26',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(381,'2023-10-28 21:55:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(382,'2023-10-28 23:52:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(383,'2023-10-28 23:59:47',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(384,'2023-10-29 00:05:37',1,1,'Login','Inicio de sesión '),(385,'2023-10-29 00:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-30 18:48:30',1,1,'Login','Inicio de sesión '),(387,'2023-10-30 18:48:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(388,'2023-10-30 18:49:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(389,'2023-10-30 21:13:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(390,'2023-10-30 22:04:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(391,'2023-10-30 22:05:35',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(392,'2023-10-30 22:06:01',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(393,'2023-10-30 22:14:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(394,'2023-10-30 22:21:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(395,'2023-10-30 22:24:32',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(396,'2023-10-30 22:24:55',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(397,'2023-10-30 22:33:03',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(398,'2023-10-30 22:33:17',11,1,'Login','Inicio de sesión '),(399,'2023-10-30 22:33:26',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(400,'2023-10-30 22:34:36',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(401,'2023-10-30 22:34:54',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(402,'2023-10-30 22:35:24',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(403,'2023-10-30 22:35:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(404,'2023-10-30 22:35:48',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(405,'2023-10-30 22:36:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(406,'2023-10-30 22:36:43',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(407,'2023-10-30 22:42:29',1,1,'Login','Inicio de sesión '),(408,'2023-10-30 22:52:53',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(409,'2023-10-30 22:53:13',11,1,'Login','Inicio de sesión '),(410,'2023-10-31 19:40:17',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-10-31 19:40:40',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-10-31 19:41:14',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(413,'2023-10-31 19:44:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-10-31 19:49:31',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(415,'2023-10-31 21:13:25',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-10-31 21:15:04',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(417,'2023-10-31 21:25:20',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(418,'2023-10-31 21:32:43',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(419,'2023-10-31 21:33:00',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(420,'2023-10-31 21:33:23',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-10-31 21:33:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(422,'2023-10-31 21:37:28',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(423,'2023-10-31 21:43:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-10-31 21:51:09',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(425,'2023-10-31 21:52:47',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(426,'2023-10-31 21:53:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(427,'2023-11-01 16:18:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-01 16:20:53',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(429,'2023-11-01 16:20:55',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-01 16:21:23',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(431,'2023-11-01 16:23:02',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-01 16:25:06',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(433,'2023-11-01 16:26:38',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-01 16:28:16',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(435,'2023-11-01 16:28:39',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(436,'2023-11-01 16:29:38',1,1,'Login','Inicio de sesión '),(437,'2023-11-01 16:29:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(438,'2023-11-01 16:30:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(439,'2023-11-01 16:32:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(440,'2023-11-01 16:33:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(441,'2023-11-01 16:44:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-11-01 16:44:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(443,'2023-11-01 21:32:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-11-01 21:46:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(445,'2023-11-01 23:17:41',NULL,9,'Salir','Se salio de Lista de Empleados'),(446,'2023-11-01 23:23:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(447,'2023-11-01 23:34:13',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(448,'2023-11-01 23:34:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(449,'2023-11-02 17:55:44',1,1,'Login','Inicio de sesión '),(450,'2023-11-02 17:55:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-02 17:56:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(452,'2023-11-02 20:34:35',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(453,'2023-11-02 20:35:17',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(454,'2023-11-02 20:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-02 20:39:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(456,'2023-11-02 20:39:30',1,1,'Login','Inicio de sesión '),(457,'2023-11-02 20:39:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(458,'2023-11-02 20:41:23',1,1,'Login','Inicio de sesión '),(459,'2023-11-02 20:41:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(460,'2023-11-02 20:46:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(461,'2023-11-02 20:56:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(462,'2023-11-02 20:56:54',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(463,'2023-11-02 21:02:48',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(464,'2023-11-02 21:07:47',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(465,'2023-11-02 21:07:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(466,'2023-11-02 21:08:28',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(467,'2023-11-02 21:09:38',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(468,'2023-11-02 21:17:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(469,'2023-11-02 21:29:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(470,'2023-11-02 21:29:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(471,'2023-11-02 21:30:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(472,'2023-11-02 21:40:27',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(473,'2023-11-02 21:43:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(474,'2023-11-02 22:08:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(475,'2023-11-02 22:09:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(476,'2023-11-02 22:15:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-11-02 22:18:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(478,'2023-11-02 22:20:43',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(479,'2023-11-02 22:31:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(480,'2023-11-02 22:31:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(481,'2023-11-02 22:32:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(482,'2023-11-02 22:34:14',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(483,'2023-11-02 22:36:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(484,'2023-11-02 22:36:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(485,'2023-11-02 22:38:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(486,'2023-11-02 22:47:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(487,'2023-11-02 22:48:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(488,'2023-11-02 22:48:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(489,'2023-11-02 22:48:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(490,'2023-11-02 22:50:32',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(491,'2023-11-02 23:03:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(492,'2023-11-02 23:03:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(493,'2023-11-02 23:28:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(494,'2023-11-02 23:29:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(495,'2023-11-02 23:53:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(496,'2023-11-02 23:57:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(497,'2023-11-03 00:09:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(498,'2023-11-03 00:42:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(499,'2023-11-03 00:45:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(500,'2023-11-03 00:46:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(501,'2023-11-03 00:51:42',NULL,9,'Salir','Se salio de Lista de Empleados'),(502,'2023-11-03 01:05:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(503,'2023-11-03 01:05:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-03 01:41:21',1,1,'Login','Inicio de sesión '),(505,'2023-11-03 01:41:32',1,1,'Login','Inicio de sesión '),(506,'2023-11-03 01:41:49',1,1,'Login','Inicio de sesión '),(507,'2023-11-03 01:42:15',1,1,'Login','Inicio de sesión '),(508,'2023-11-03 16:40:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(509,'2023-11-03 16:45:51',1,1,'Login','Inicio de sesión '),(510,'2023-11-03 16:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-11-03 16:52:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(512,'2023-11-03 16:53:11',1,1,'Login','Inicio de sesión '),(513,'2023-11-03 17:48:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(514,'2023-11-03 17:50:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-11-03 17:50:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(516,'2023-11-03 17:50:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(517,'2023-11-03 17:51:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(518,'2023-11-03 19:53:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-11-03 19:54:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(520,'2023-11-03 20:19:53',1,1,'Login','Inicio de sesión '),(521,'2023-11-03 20:19:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(522,'2023-11-03 20:46:32',1,1,'Login','Inicio de sesión '),(523,'2023-11-03 22:18:03',1,1,'Login','Inicio de sesión '),(524,'2023-11-03 22:42:38',1,1,'Login','Inicio de sesión '),(525,'2023-11-03 22:42:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(526,'2023-11-03 22:43:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(527,'2023-11-03 22:51:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(528,'2023-11-03 22:51:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(529,'2023-11-04 08:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-11-04 08:16:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(531,'2023-11-04 08:19:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(532,'2023-11-04 08:19:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(533,'2023-11-04 09:27:57',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(534,'2023-11-04 09:28:04',1,1,'Login','Inicio de sesión '),(535,'2023-11-04 09:28:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(536,'2023-11-04 09:28:36',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(537,'2023-11-04 10:21:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(538,'2023-11-04 10:22:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(539,'2023-11-04 14:22:05',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(540,'2023-11-04 14:59:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(541,'2023-11-04 15:00:03',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(542,'2023-11-04 20:09:01',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(543,'2023-11-04 20:36:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(544,'2023-11-04 20:36:59',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(545,'2023-11-04 20:37:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(546,'2023-11-04 21:43:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(547,'2023-11-04 21:45:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(548,'2023-11-04 21:45:48',11,1,'Login','Inicio de sesión '),(549,'2023-11-04 21:47:23',11,1,'Login','Inicio de sesión '),(550,'2023-11-04 21:48:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-11-04 21:51:21',9,1,'Login','Inicio de sesión '),(552,'2023-11-04 22:00:40',11,1,'Login','Inicio de sesión '),(553,'2023-11-04 22:00:50',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-04 22:02:21',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(555,'2023-11-04 22:12:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-11-04 22:12:35',11,1,'Login','Inicio de sesión '),(557,'2023-11-04 22:17:44',9,1,'Login','Inicio de sesión '),(558,'2023-11-04 22:25:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(559,'2023-11-04 22:26:20',11,1,'Login','Inicio de sesión '),(560,'2023-11-04 22:43:52',1,1,'Login','Inicio de sesión '),(561,'2023-11-04 22:46:39',11,1,'Login','Inicio de sesión '),(562,'2023-11-04 23:22:36',9,1,'Login','Inicio de sesión '),(563,'2023-11-04 23:45:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(564,'2023-11-04 23:52:19',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(565,'2023-11-04 23:56:03',11,5,'Salir','El usuario salió de la pantalla de citas'),(566,'2023-11-04 23:56:35',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(567,'2023-11-04 23:59:03',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(568,'2023-11-05 00:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(569,'2023-11-05 01:16:03',1,1,'Login','Inicio de sesión '),(570,'2023-11-05 01:16:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-11-05 01:24:09',11,1,'Login','Inicio de sesión '),(572,'2023-11-05 01:29:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(573,'2023-11-06 12:05:08',1,1,'Login','Inicio de sesión '),(574,'2023-11-06 12:05:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(575,'2023-11-06 18:36:47',1,1,'Login','Inicio de sesión '),(576,'2023-11-06 18:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(577,'2023-11-06 18:41:24',1,1,'Login','Inicio de sesión '),(578,'2023-11-06 18:41:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(579,'2023-11-06 18:42:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(580,'2023-11-06 18:42:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(581,'2023-11-06 22:17:55',1,1,'Login','Inicio de sesión '),(582,'2023-11-06 22:17:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-11-06 22:18:17',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(584,'2023-11-08 21:49:47',1,1,'Login','Inicio de sesión '),(585,'2023-11-08 21:49:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(586,'2023-11-08 21:50:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-11-08 22:30:07',1,1,'Login','Inicio de sesión '),(588,'2023-11-08 22:30:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(589,'2023-11-08 22:31:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(590,'2023-11-08 22:31:49',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(591,'2023-11-08 22:44:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(592,'2023-11-08 22:44:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(593,'2023-11-08 22:45:22',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(594,'2023-11-08 22:55:43',1,11,'Modificación','El usuario modificó la contraseña'),(595,'2023-11-08 22:55:53',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(596,'2023-11-08 22:56:09',1,1,'Login','Inicio de sesión '),(597,'2023-11-08 23:04:33',1,5,'Registro','El usuario registró una nueva cita'),(598,'2023-11-08 23:06:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(599,'2023-11-08 23:07:27',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(600,'2023-11-08 23:07:52',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(601,'2023-11-08 23:08:16',11,1,'Login','Inicio de sesión '),(602,'2023-11-08 23:08:20',1,1,'Login','Inicio de sesión '),(603,'2023-11-08 23:08:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(604,'2023-11-08 23:08:56',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(605,'2023-11-08 23:09:21',11,1,'Login','Inicio de sesión '),(606,'2023-11-08 23:10:39',11,8,'Configuración','Se ingreso a la pantalla de Configuración'),(607,'2023-11-08 23:21:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(608,'2023-11-08 23:21:34',11,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(609,'2023-11-08 23:21:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(610,'2023-11-08 23:22:04',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(611,'2023-11-08 23:22:18',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(612,'2023-11-08 23:26:14',11,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(613,'2023-11-08 23:26:36',12,1,'Login','Inicio de sesión '),(614,'2023-11-08 23:26:46',1,1,'Login','Inicio de sesión '),(615,'2023-11-08 23:27:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-11-08 23:27:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(617,'2023-11-08 23:29:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(618,'2023-11-08 23:29:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(619,'2023-11-08 23:29:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(620,'2023-11-08 23:33:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(621,'2023-11-08 23:40:08',1,1,'Login','Inicio de sesión '),(622,'2023-11-08 23:40:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(623,'2023-11-08 23:40:31',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(624,'2023-11-08 23:43:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(625,'2023-11-08 23:51:36',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(626,'2023-11-08 23:53:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(627,'2023-11-08 23:54:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(628,'2023-11-08 23:56:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(629,'2023-11-08 23:59:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(630,'2023-11-09 00:22:54',1,1,'Login','Inicio de sesión '),(631,'2023-11-09 00:23:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(632,'2023-11-09 00:23:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(633,'2023-11-09 00:23:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(634,'2023-11-09 00:23:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(635,'2023-11-09 00:24:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(636,'2023-11-09 00:25:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(637,'2023-11-09 00:32:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(638,'2023-11-09 00:33:25',1,1,'Login','Inicio de sesión '),(639,'2023-11-09 00:33:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(640,'2023-11-09 00:34:27',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(641,'2023-11-09 00:34:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(642,'2023-11-09 00:49:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(643,'2023-11-09 00:50:08',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(644,'2023-11-09 00:50:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(645,'2023-11-09 00:53:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(646,'2023-11-09 00:56:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(647,'2023-11-09 00:56:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(648,'2023-11-09 00:56:36',NULL,9,'Salir','Se salio de Lista de Empleados'),(649,'2023-11-09 00:59:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(650,'2023-11-09 00:59:38',NULL,9,'Salir','Se salio de Lista de Empleados'),(651,'2023-11-09 01:06:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(652,'2023-11-09 12:33:57',1,1,'Login','Inicio de sesión '),(653,'2023-11-09 12:34:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(654,'2023-11-09 12:34:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(655,'2023-11-09 12:34:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(656,'2023-11-10 08:29:17',1,1,'Login','Inicio de sesión '),(657,'2023-11-10 08:29:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(658,'2023-11-10 08:29:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(659,'2023-11-10 08:29:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(660,'2023-11-10 08:30:01',NULL,9,'Salir','Se salio de Lista de Empleados'),(661,'2023-11-10 08:32:00',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(662,'2023-11-10 08:33:37',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(663,'2023-11-10 08:35:07',1,1,'Login','Inicio de sesión '),(664,'2023-11-10 08:35:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(665,'2023-11-10 08:35:16',NULL,9,'Salir','Se salio de Lista de Empleados'),(666,'2023-11-10 08:38:24',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(667,'2023-11-10 08:38:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(668,'2023-11-10 08:43:06',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(669,'2023-11-10 08:44:10',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(670,'2023-11-10 08:44:24',16,1,'Login','Inicio de sesión '),(671,'2023-11-10 08:49:06',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(672,'2023-11-10 09:26:03',16,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(673,'2023-11-10 09:43:18',16,5,'Registro','El usuario registró una nueva cita'),(674,'2023-11-10 09:48:43',16,5,'Registro','El usuario registró una nueva cita'),(675,'2023-11-10 09:53:44',16,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-11-10 09:57:02',16,5,'Actualizar Cita','El usuario actuzalizó una cita'),(677,'2023-11-10 09:58:52',16,5,'Borrar Cita','El usuario eliminó una cita'),(678,'2023-11-10 10:03:03',16,5,'Salir','El usuario salió de la pantalla de citas'),(679,'2023-11-10 10:03:53',16,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(680,'2023-11-10 10:04:18',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(681,'2023-11-10 11:06:22',16,9,'Salir','Se salio de la pantalla Registro de Empleado'),(682,'2023-11-10 11:07:01',16,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(683,'2023-11-10 11:10:43',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(684,'2023-11-13 07:37:24',1,1,'Login','Inicio de sesión '),(685,'2023-11-13 07:39:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(686,'2023-11-13 07:41:36',1,1,'Login','Inicio de sesión '),(687,'2023-11-13 07:41:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(688,'2023-11-13 07:42:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(689,'2023-11-13 07:43:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(690,'2023-11-13 07:44:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(691,'2023-11-13 07:44:36',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(692,'2023-11-13 07:44:53',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(693,'2023-11-13 07:49:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(694,'2023-11-13 08:02:46',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(695,'2023-11-13 08:03:07',1,1,'Login','Inicio de sesión '),(696,'2023-11-13 08:03:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(697,'2023-11-13 08:03:35',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(698,'2023-11-13 08:07:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(699,'2023-11-13 08:11:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(700,'2023-11-13 08:17:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(701,'2023-11-13 08:20:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(702,'2023-11-13 09:33:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(703,'2023-11-13 09:42:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(704,'2023-11-13 09:50:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(705,'2023-11-13 09:54:05',NULL,9,'Salir','Se salio de Lista de Empleados'),(706,'2023-11-13 10:28:24',NULL,9,'Salir','Se salio de Lista de Empleados'),(707,'2023-11-13 10:30:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(708,'2023-11-13 10:31:59',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(709,'2023-11-13 10:45:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(710,'2023-11-13 10:54:04',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(711,'2023-11-13 10:54:20',NULL,9,'Salir','Se salio de Lista de Empleados'),(712,'2023-11-13 11:37:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-11-13 11:38:08',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(714,'2023-11-13 16:46:04',1,1,'Login','Inicio de sesión '),(715,'2023-11-13 18:46:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(716,'2023-11-13 18:46:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(717,'2023-11-13 18:46:50',NULL,9,'Salir','Se salio de Lista de Empleados'),(718,'2023-11-13 18:50:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(719,'2023-11-13 18:50:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(720,'2023-11-13 19:25:59',1,1,'Login','Inicio de sesión '),(721,'2023-11-13 19:38:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(722,'2023-11-13 21:21:51',1,1,'Login','Inicio de sesión '),(723,'2023-11-13 22:15:43',1,1,'Login','Inicio de sesión '),(724,'2023-11-13 22:24:20',1,1,'Login','Inicio de sesión '),(725,'2023-11-13 22:24:20',1,1,'Login','Inicio de sesión '),(726,'2023-11-14 22:00:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(727,'2023-11-14 22:11:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(728,'2023-11-17 14:38:24',1,1,'Login','Inicio de sesión '),(729,'2023-11-17 14:40:06',1,1,'Login','Inicio de sesión '),(730,'2023-11-17 14:40:47',1,1,'Login','Inicio de sesión '),(731,'2023-11-17 14:43:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(732,'2023-11-17 14:45:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-11-17 15:02:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(734,'2023-11-17 15:36:34',1,1,'Login','Inicio de sesión '),(735,'2023-11-17 15:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(736,'2023-11-17 15:41:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(737,'2023-11-17 15:41:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(738,'2023-11-17 15:41:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(739,'2023-11-17 16:04:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(740,'2023-11-17 16:20:10',1,1,'Login','Inicio de sesión '),(741,'2023-11-17 16:26:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(742,'2023-11-17 17:18:06',1,1,'Login','Inicio de sesión '),(743,'2023-11-17 17:36:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(744,'2023-11-17 18:34:47',1,1,'Login','Inicio de sesión '),(745,'2023-11-17 18:48:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(746,'2023-11-17 19:17:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(747,'2023-11-17 19:18:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(748,'2023-11-17 19:18:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(749,'2023-11-17 19:26:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-11-17 19:27:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(751,'2023-11-17 19:27:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(752,'2023-11-17 19:28:03',1,5,'Salir','El usuario salió de la pantalla de citas'),(753,'2023-11-17 19:28:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(754,'2023-11-17 19:28:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(755,'2023-11-17 19:31:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(756,'2023-11-17 19:49:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(757,'2023-11-17 19:49:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(758,'2023-11-17 19:49:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-11-17 19:50:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(760,'2023-11-20 21:30:09',1,1,'Login','Inicio de sesión '),(761,'2023-11-20 21:32:26',1,1,'Login','Inicio de sesión '),(762,'2023-11-20 21:42:22',1,1,'Login','Inicio de sesión '),(763,'2023-11-20 21:42:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(764,'2023-11-20 21:44:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(765,'2023-11-20 21:47:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(766,'2023-11-20 21:49:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-11-20 21:49:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(768,'2023-11-20 21:49:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(769,'2023-11-20 22:24:49',1,1,'Login','Inicio de sesión '),(770,'2023-11-20 22:39:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(771,'2023-11-20 23:09:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(772,'2023-11-20 23:09:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(773,'2023-11-20 23:12:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(774,'2023-11-21 21:20:18',1,1,'Login','Inicio de sesión '),(775,'2023-11-21 21:41:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-11-21 21:41:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(777,'2023-11-21 21:53:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(778,'2023-11-21 21:56:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(779,'2023-11-21 21:56:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(780,'2023-11-21 21:57:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(781,'2023-11-21 22:01:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-11-21 22:03:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(783,'2023-11-21 22:03:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(784,'2023-11-22 20:09:16',1,1,'Login','Inicio de sesión '),(785,'2023-11-22 20:10:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(786,'2023-11-22 20:11:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(787,'2023-11-22 20:11:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(788,'2023-11-22 20:11:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(789,'2023-11-22 20:11:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-11-22 20:11:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(791,'2023-11-22 20:11:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(792,'2023-11-22 20:20:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(793,'2023-11-22 20:21:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(794,'2023-11-22 20:22:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(795,'2023-11-22 20:22:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(796,'2023-11-22 20:22:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(797,'2023-11-22 20:23:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(798,'2023-11-22 20:23:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(799,'2023-11-22 20:23:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(800,'2023-11-22 20:23:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(801,'2023-11-22 20:24:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(802,'2023-11-22 20:42:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(803,'2023-11-22 20:42:08',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(804,'2023-11-22 21:06:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(805,'2023-11-22 21:06:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(806,'2023-11-23 15:43:33',1,1,'Login','Inicio de sesión '),(807,'2023-11-23 15:45:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(808,'2023-11-23 15:45:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(809,'2023-11-23 15:46:27',1,5,'Salir','El usuario salió de la pantalla de citas'),(810,'2023-11-23 15:46:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(811,'2023-11-23 15:46:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(812,'2023-11-23 16:21:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(813,'2023-11-23 16:36:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(814,'2023-11-23 16:36:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(815,'2023-11-23 16:59:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(816,'2023-11-23 17:10:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(817,'2023-11-23 17:10:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(818,'2023-11-23 17:10:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(819,'2023-11-23 17:27:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(820,'2023-11-23 17:27:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(821,'2023-11-23 17:28:03',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(822,'2023-11-23 17:30:14',NULL,9,'Salir','Se salio de Lista de Empleados'),(823,'2023-11-23 17:44:54',1,1,'Login','Inicio de sesión '),(824,'2023-11-23 17:44:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(825,'2023-11-23 17:44:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(826,'2023-11-23 17:45:12',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(827,'2023-11-23 17:45:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(828,'2023-11-23 17:46:10',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(829,'2023-11-23 17:47:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(830,'2023-11-23 17:47:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(831,'2023-11-23 17:47:32',18,1,'Login','Inicio de sesión '),(832,'2023-11-23 17:48:50',18,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(833,'2023-11-23 20:14:37',1,1,'Login','Inicio de sesión '),(834,'2023-11-23 20:15:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(835,'2023-11-23 20:17:46',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(836,'2023-11-23 20:18:31',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(837,'2023-11-23 20:19:28',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(838,'2023-11-23 20:19:31',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(839,'2023-11-23 20:19:37',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(840,'2023-11-23 20:22:11',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(841,'2023-11-23 20:43:03',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(842,'2023-11-23 20:43:08',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(843,'2023-11-23 20:43:13',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(844,'2023-11-23 20:46:13',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(845,'2023-11-23 20:46:18',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(846,'2023-11-23 20:48:47',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(847,'2023-11-23 20:59:57',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(848,'2023-11-23 21:01:41',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(849,'2023-11-23 21:10:16',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(850,'2023-11-23 21:10:37',1,1,'Login','Inicio de sesión '),(851,'2023-11-23 21:13:52',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(852,'2023-11-23 21:14:05',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(853,'2023-11-23 21:19:24',1,1,'Login','Inicio de sesión '),(854,'2023-11-23 21:34:02',1,1,'Login','Inicio de sesión '),(855,'2023-11-23 21:37:30',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(856,'2023-11-23 21:46:23',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(857,'2023-11-23 22:34:32',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(858,'2023-11-23 22:40:12',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(859,'2023-11-23 22:41:31',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(860,'2023-11-23 22:42:31',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(861,'2023-11-23 22:42:35',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(862,'2023-11-23 22:42:44',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(863,'2023-11-23 22:44:17',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(864,'2023-11-23 22:49:18',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(865,'2023-11-23 22:49:36',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(866,'2023-11-23 22:52:07',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(867,'2023-11-23 23:05:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(868,'2023-11-23 23:05:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(869,'2023-11-23 23:05:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(870,'2023-11-23 23:06:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(871,'2023-11-23 23:11:20',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(872,'2023-11-23 23:11:29',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(873,'2023-11-23 23:11:46',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(874,'2023-11-23 23:15:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(875,'2023-11-23 23:25:04',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(876,'2023-11-23 23:39:05',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(877,'2023-11-24 00:14:54',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(878,'2023-11-24 00:15:06',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(879,'2023-11-24 18:01:26',1,1,'Login','Inicio de sesión '),(880,'2023-11-24 18:03:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(881,'2023-11-24 18:04:55',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(882,'2023-11-24 18:08:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(883,'2023-11-24 18:08:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(884,'2023-11-24 18:16:58',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(885,'2023-11-24 18:17:06',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(886,'2023-11-24 18:17:16',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(887,'2023-11-24 18:19:58',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(888,'2023-11-24 18:20:57',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(889,'2023-11-24 18:31:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(890,'2023-11-24 18:31:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(891,'2023-11-24 18:32:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(892,'2023-11-24 18:33:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(893,'2023-11-24 18:41:19',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(894,'2023-11-24 18:41:24',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(895,'2023-11-24 18:41:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(896,'2023-11-24 18:47:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(897,'2023-11-24 18:48:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(898,'2023-11-24 19:07:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(899,'2023-11-24 19:12:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(900,'2023-11-24 19:12:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(901,'2023-11-24 19:17:56',1,1,'Login','Inicio de sesión '),(902,'2023-11-24 19:19:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(903,'2023-11-24 19:19:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(904,'2023-11-24 19:20:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(905,'2023-11-24 19:23:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(906,'2023-11-24 19:28:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(907,'2023-11-24 19:32:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(908,'2023-11-24 19:35:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(909,'2023-11-24 19:37:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(910,'2023-11-24 19:39:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(911,'2023-11-24 19:44:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(912,'2023-11-24 19:47:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(913,'2023-11-24 19:47:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(914,'2023-11-24 19:48:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(915,'2023-11-24 19:49:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(916,'2023-11-24 19:49:25',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(917,'2023-11-24 19:52:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(918,'2023-11-24 19:53:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(919,'2023-11-24 19:55:20',1,5,'Salir','El usuario salió de la pantalla de citas'),(920,'2023-11-24 19:55:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(921,'2023-11-24 19:57:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(922,'2023-11-24 19:58:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(923,'2023-11-24 19:58:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(924,'2023-11-24 20:06:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(925,'2023-11-24 20:06:25',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(926,'2023-11-24 20:06:32',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(927,'2023-11-24 20:06:36',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(928,'2023-11-24 20:06:40',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(929,'2023-11-24 20:06:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(930,'2023-11-24 20:10:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(931,'2023-11-24 20:10:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(932,'2023-11-24 20:17:33',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(933,'2023-11-24 20:17:45',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(934,'2023-11-24 20:17:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(935,'2023-11-24 20:19:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(936,'2023-11-24 20:20:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(937,'2023-11-24 20:44:28',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(938,'2023-11-24 21:06:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(939,'2023-11-24 21:17:02',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(940,'2023-11-24 21:21:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(941,'2023-11-24 21:21:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(942,'2023-11-24 21:26:56',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(943,'2023-11-24 21:27:36',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(944,'2023-11-24 21:29:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(945,'2023-11-24 21:29:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(946,'2023-11-24 21:31:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(947,'2023-11-24 21:32:38',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(948,'2023-11-24 21:47:53',NULL,9,'Salir','Se salio de Lista de Empleados'),(949,'2023-11-24 21:50:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(950,'2023-11-24 22:11:14',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(951,'2023-11-24 22:11:17',NULL,9,'Salir','Se salio de Lista de Empleados'),(952,'2023-11-24 22:11:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(953,'2023-11-24 22:11:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(954,'2023-11-24 22:14:06',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(955,'2023-11-24 22:14:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(956,'2023-11-24 22:16:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(957,'2023-11-24 22:17:29',NULL,9,'Salir','Se salio de Lista de Empleados'),(958,'2023-11-24 22:17:38',NULL,9,'Salir','Se salio de Lista de Empleados'),(959,'2023-11-24 22:18:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(960,'2023-11-24 22:28:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(961,'2023-11-24 22:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(962,'2023-11-24 23:09:03',NULL,9,'Salir','Se salio de Lista de Empleados'),(963,'2023-11-24 23:11:51',NULL,9,'Salir','Se salio de Lista de Empleados'),(964,'2023-11-24 23:12:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(965,'2023-11-24 23:12:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(966,'2023-11-24 23:12:24',NULL,9,'Salir','Se salio de Lista de Empleados'),(967,'2023-11-24 23:13:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(968,'2023-11-24 23:14:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(969,'2023-11-24 23:15:31',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(970,'2023-11-24 23:15:43',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(971,'2023-11-24 23:39:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(972,'2023-11-24 23:40:27',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(973,'2023-11-24 23:43:12',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(974,'2023-11-24 23:43:21',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(975,'2023-11-25 00:08:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(976,'2023-11-25 00:12:54',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(977,'2023-11-25 00:13:20',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(978,'2023-11-25 00:13:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(979,'2023-11-25 00:13:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(980,'2023-11-25 00:18:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(981,'2023-11-25 00:18:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(982,'2023-11-25 00:18:34',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(983,'2023-11-25 00:18:56',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(984,'2023-11-25 00:18:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(985,'2023-11-25 00:18:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(986,'2023-11-25 00:19:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(987,'2023-11-25 00:21:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(988,'2023-11-25 00:22:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(989,'2023-11-25 00:22:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(990,'2023-11-25 00:22:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(991,'2023-11-25 00:22:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(992,'2023-11-25 00:22:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(993,'2023-11-25 00:22:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(994,'2023-11-25 00:25:36',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(995,'2023-11-25 00:26:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(996,'2023-11-25 00:26:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(997,'2023-11-25 00:26:16',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(998,'2023-11-25 00:26:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(999,'2023-11-25 00:29:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1000,'2023-11-25 00:29:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1001,'2023-11-25 00:30:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1002,'2023-11-25 00:30:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1003,'2023-11-25 00:31:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1004,'2023-11-25 00:31:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1005,'2023-11-25 00:33:49',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1006,'2023-11-25 00:35:10',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1007,'2023-11-25 01:09:56',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1008,'2023-11-25 01:10:35',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(1009,'2023-11-25 01:12:11',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1010,'2023-11-25 01:12:50',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(1011,'2023-11-25 01:13:23',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(1012,'2023-11-25 01:13:48',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1013,'2023-11-25 01:19:55',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1014,'2023-11-25 01:34:12',1,1,'Login','Inicio de sesión '),(1015,'2023-11-25 01:37:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1016,'2023-11-25 01:39:20',NULL,9,'Salir','Se salio de Lista de Empleados'),(1017,'2023-11-25 01:39:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1018,'2023-11-25 01:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1019,'2023-11-25 01:42:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1020,'2023-11-25 01:43:11',NULL,9,'Salir','Se salio de Lista de Empleados'),(1021,'2023-11-25 01:43:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1022,'2023-11-25 01:46:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1023,'2023-11-25 17:28:27',1,1,'Login','Inicio de sesión '),(1024,'2023-11-25 17:28:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1025,'2023-11-25 17:30:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1026,'2023-11-25 17:31:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1027,'2023-11-25 17:40:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1028,'2023-11-25 17:41:45',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1029,'2023-11-25 17:48:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1030,'2023-11-25 17:59:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1031,'2023-11-25 17:59:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1032,'2023-11-25 18:00:30',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1033,'2023-11-25 18:00:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1034,'2023-11-25 18:00:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1035,'2023-11-25 18:01:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1036,'2023-11-25 18:01:47',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1037,'2023-11-25 18:32:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1038,'2023-11-25 18:32:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1039,'2023-11-25 19:26:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1040,'2023-11-25 19:35:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1041,'2023-11-25 19:35:02',1,5,'Salir','El usuario salió de la pantalla de citas'),(1042,'2023-11-25 19:35:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1043,'2023-11-25 19:35:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1044,'2023-11-25 19:35:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1045,'2023-11-25 19:48:52',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1046,'2023-11-25 19:50:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1047,'2023-11-25 19:51:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1048,'2023-11-25 19:51:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1049,'2023-11-25 19:51:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1050,'2023-11-25 19:51:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1051,'2023-11-25 19:51:25',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1052,'2023-11-25 20:37:07',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1053,'2023-11-25 21:01:13',1,1,'Login','Inicio de sesión '),(1054,'2023-11-25 21:01:15',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1055,'2023-11-25 21:01:17',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1056,'2023-11-25 21:02:06',0,3,'Salir','Se salio de la Lista de Proveedores'),(1057,'2023-11-25 21:04:00',1,1,'Login','Inicio de sesión '),(1058,'2023-11-25 21:04:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1059,'2023-11-25 21:04:05',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1060,'2023-11-25 21:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1061,'2023-11-25 21:27:57',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1062,'2023-11-25 22:01:10',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1063,'2023-11-25 22:04:01',1,1,'Login','Inicio de sesión '),(1064,'2023-11-25 22:04:02',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1065,'2023-11-25 22:04:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1066,'2023-11-25 22:04:06',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1067,'2023-11-25 22:04:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1068,'2023-11-25 22:04:12',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1069,'2023-11-25 22:27:41',1,1,'Login','Inicio de sesión '),(1070,'2023-11-25 22:30:10',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1071,'2023-11-25 22:30:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1072,'2023-11-25 22:31:09',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1073,'2023-11-25 22:31:14',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1074,'2023-11-25 22:31:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1075,'2023-11-25 22:31:44',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1076,'2023-11-25 22:32:36',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1077,'2023-11-25 22:33:00',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1078,'2023-11-25 22:33:27',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1079,'2023-11-25 22:33:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1080,'2023-11-25 23:04:57',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1081,'2023-11-25 23:05:20',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1082,'2023-11-25 23:05:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1083,'2023-11-25 23:05:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1084,'2023-11-25 23:06:05',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1085,'2023-11-25 23:06:47',NULL,2,'Salir','Se salio de Lista de Empleados'),(1086,'2023-11-25 23:10:27',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1087,'2023-11-25 23:10:30',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1088,'2023-11-25 23:10:31',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1089,'2023-11-25 23:18:39',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1090,'2023-11-25 23:19:36',NULL,2,'Salir','Se salio de Lista de Empleados'),(1091,'2023-11-25 23:22:19',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1092,'2023-11-25 23:29:08',21,1,'Login','Inicio de sesión '),(1093,'2023-11-25 23:29:22',21,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1094,'2023-11-25 23:29:24',21,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1095,'2023-11-25 23:29:27',21,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1096,'2023-11-25 23:32:14',21,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1097,'2023-11-25 23:32:45',21,5,'Salir','El usuario salió de la pantalla de citas'),(1098,'2023-11-25 23:32:49',21,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(1099,'2023-11-25 23:33:54',21,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(1100,'2023-11-25 23:34:40',1,1,'Login','Inicio de sesión '),(1101,'2023-11-25 23:34:42',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1102,'2023-11-25 23:34:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1103,'2023-11-25 23:34:46',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1104,'2023-11-25 23:34:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1105,'2023-11-25 23:35:01',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1106,'2023-11-26 09:14:48',1,1,'Login','Inicio de sesión '),(1107,'2023-11-26 09:25:27',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1108,'2023-11-26 09:26:22',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1109,'2023-11-26 09:26:23',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1110,'2023-11-26 09:26:25',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1111,'2023-11-26 09:26:35',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1112,'2023-11-26 09:26:56',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1113,'2023-11-26 09:26:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1114,'2023-11-26 09:31:29',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1115,'2023-11-26 09:40:24',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1116,'2023-11-26 09:40:29',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1117,'2023-11-26 09:40:31',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1118,'2023-11-26 09:48:36',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1119,'2023-11-26 09:49:47',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1120,'2023-11-26 09:50:05',NULL,2,'Salir','Se salio de Lista de Empleados'),(1121,'2023-11-26 09:56:18',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1122,'2023-11-26 10:09:30',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1123,'2023-11-26 10:12:00',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1124,'2023-11-26 10:17:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1125,'2023-11-26 10:17:55',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1126,'2023-11-26 10:17:56',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1127,'2023-11-26 10:17:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1128,'2023-11-26 10:17:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1129,'2023-11-26 10:24:02',1,1,'Login','Inicio de sesión '),(1130,'2023-11-26 10:37:17',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1131,'2023-11-26 10:37:33',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1132,'2023-11-26 10:51:17',1,1,'Login','Inicio de sesión '),(1133,'2023-11-26 10:51:26',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1134,'2023-11-26 10:53:56',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1135,'2023-11-26 11:01:34',NULL,2,'Salir','Se salio de Lista de Empleados'),(1136,'2023-11-26 11:01:41',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1137,'2023-11-26 11:01:42',NULL,2,'Salir','Se salio de Lista de Empleados'),(1138,'2023-11-26 11:02:10',NULL,2,'Salir','Se salio de Lista de Empleados'),(1139,'2023-11-26 11:02:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1140,'2023-11-26 11:04:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1141,'2023-11-26 11:05:06',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1142,'2023-11-26 11:05:39',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1143,'2023-11-26 11:06:01',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1144,'2023-11-26 11:07:46',22,1,'Login','Inicio de sesión '),(1145,'2023-11-26 11:07:54',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1146,'2023-11-26 11:07:56',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1147,'2023-11-26 11:08:00',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1148,'2023-11-26 11:08:01',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1149,'2023-11-26 11:08:45',1,1,'Login','Inicio de sesión '),(1150,'2023-11-26 11:08:48',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1151,'2023-11-26 11:09:07',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1152,'2023-11-26 11:09:09',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1153,'2023-11-26 11:13:15',22,1,'Login','Inicio de sesión '),(1154,'2023-11-26 11:14:58',22,1,'Login','Inicio de sesión '),(1155,'2023-11-26 11:15:08',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1156,'2023-11-26 11:15:11',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1157,'2023-11-26 11:22:09',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1158,'2023-11-26 11:22:57',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1159,'2023-11-26 11:23:04',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1160,'2023-11-26 11:23:06',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1161,'2023-11-26 11:25:04',22,1,'Login','Inicio de sesión '),(1162,'2023-11-26 11:28:04',22,1,'Login','Inicio de sesión '),(1163,'2023-11-26 11:30:43',22,1,'Login','Inicio de sesión '),(1164,'2023-11-26 11:31:03',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1165,'2023-11-26 11:31:31',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1166,'2023-11-26 11:31:55',22,1,'Login','Inicio de sesión '),(1167,'2023-11-26 11:38:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1168,'2023-11-26 11:40:28',1,5,'Salir','El usuario salió de la pantalla de citas'),(1169,'2023-11-26 11:40:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1170,'2023-11-26 11:41:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(1171,'2023-11-26 11:41:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1172,'2023-11-26 11:41:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(1173,'2023-11-26 11:41:59',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1174,'2023-11-26 11:42:01',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1175,'2023-11-26 11:47:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1176,'2023-11-26 11:47:37',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1177,'2023-11-26 12:02:55',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1178,'2023-11-26 12:03:18',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1179,'2023-11-26 12:08:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1180,'2023-11-26 12:08:48',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1181,'2023-11-26 12:09:55',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1182,'2023-11-26 12:09:57',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1183,'2023-11-26 12:13:49',1,1,'Login','Inicio de sesión '),(1184,'2023-11-26 12:13:51',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1185,'2023-11-26 12:13:52',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1186,'2023-11-26 12:13:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1187,'2023-11-26 12:20:34',1,1,'Login','Inicio de sesión '),(1188,'2023-11-26 12:20:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1189,'2023-11-26 12:21:40',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1190,'2023-11-26 12:34:06',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1191,'2023-11-26 12:35:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1192,'2023-11-26 12:35:40',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1193,'2023-11-26 12:43:36',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1194,'2023-11-26 12:43:39',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1195,'2023-11-26 12:52:48',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1196,'2023-11-26 12:56:59',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1197,'2023-11-26 12:57:01',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1198,'2023-11-26 13:25:33',NULL,2,'Salir','Se salio de Lista de Empleados'),(1199,'2023-11-26 13:25:49',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1200,'2023-11-26 13:26:52',NULL,2,'Salir','Se salio de Lista de Empleados'),(1201,'2023-11-26 13:32:46',23,1,'Login','Inicio de sesión '),(1202,'2023-11-26 13:32:54',23,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1203,'2023-11-26 13:37:48',23,1,'Login','Inicio de sesión '),(1204,'2023-11-26 13:38:07',23,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1205,'2023-11-26 13:39:21',23,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1206,'2023-11-26 13:41:08',23,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1207,'2023-11-26 13:41:49',23,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1208,'2023-11-26 13:42:12',23,1,'Login','Inicio de sesión '),(1209,'2023-11-26 13:45:46',23,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1210,'2023-11-26 13:47:32',23,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1211,'2023-11-26 13:47:41',23,5,'Salir','El usuario salió de la pantalla de citas'),(1212,'2023-11-26 13:48:50',1,1,'Login','Inicio de sesión '),(1213,'2023-11-26 13:48:51',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1214,'2023-11-26 13:49:20',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1215,'2023-11-26 13:49:35',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1216,'2023-11-26 13:50:30',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL),(64,1,'$2b$10$xAUmbBskeXsZGfsohOU9helQf59J/LtbtvapefustdWspsfkSuN1G','ADMIN',NULL,NULL,NULL),(65,18,'$2b$10$dVgGAG7Vr4/Fv3UrLVf2g.Lpd22xGhsOYYMWLLr2XKjkUO0eKpVt6','DEPTINFORMATICA',NULL,NULL,NULL),(66,18,'$2b$10$p8NQFxl1LkmoH0MeURIvROXsfKnbOrJ.KWlndOxLQSpVXImRK16BC','DEPTINFORMATICA',NULL,NULL,NULL),(67,19,NULL,NULL,NULL,NULL,NULL),(68,20,NULL,NULL,NULL,NULL,NULL),(69,21,'$2b$10$Ypio5Ia9vAIe88JdVgNvkOI1LuSrFxmOcwuxXVKAvCWEL7ZNsSKKm','MARCOSOLIS',NULL,NULL,NULL),(70,21,'$2b$10$8Ci5DlGiAfcQQqBlqbnZVeW5F72gKQ5LjCkrA3PRDsnLSdZvjdBsS','MARCOSOLIS',NULL,NULL,NULL),(71,22,'$2b$10$1a1.0ntQNiIdyFoLut/ad.i8l53RWquOLg9LTpoLpShb0z6la03hK','ERCIKPR',NULL,NULL,NULL),(72,22,'$2b$10$r2eZAf4nc6YUoZwGZoaAd.GU1cuQFgHZyXNLT.hHb9NbscHPs978e','ERCIKPR',NULL,NULL,NULL),(73,22,'$2b$10$4WEy9KQi/lfFElSB2subKe.6yR/x84JEzWEGQ2zmKaPbs8OBnRDIq','ERCIKPR',NULL,NULL,NULL),(74,22,'$2b$10$cJV/WYXcY/46M9P6Oj9LNuicBBVKoyvyXuMJSXPUUyb7e.NqrVXoC','ERCIKPR',NULL,NULL,NULL),(75,23,'$2b$10$vMbxpaByLiG1DNeO16FLseZnkAozONrLIx2nSt1TVEPtgvjN.7.kG','USUARIOFINAL',NULL,NULL,NULL),(76,23,'$2b$10$xh4/tEA7HNXsiyvvZcqWAe.cdgS0RaMB2hokmO1txNM/C7PhAdbBq','USUARIOFINAL',NULL,NULL,NULL),(77,23,'$2b$10$edec416yAA8G3mQak8jLcOURn58V.PaMLOgcfk5oq5vPe9bq9g/46','USUARIOFINAL',NULL,NULL,NULL),(78,23,'$2b$10$dvtE86fLZ1f8S3JcAemH0OnCgSKLRs7EV/glbquNMTRrcJJEBXA3q','USUARIOFINAL',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','2',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿CUAL ES TU COLOR FAVORITO?','Jared',NULL,NULL,NULL),(2,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo',NULL,NULL,NULL),(3,'¿CUAL ES EL NOMBRE DWE TU ABUELO PATERNO?','Erick',NULL,NULL,NULL),(4,'¿COMO SE LLAMABA TU PRIMERA MASCOTA?','ERICKK','2023-03-15',NULL,NULL),(5,'¿A DONDE TE GUSTRAIA VIAJAR?','Moisa','2023-03-21',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL),(1,18,'MORADO','DEPTINFORMATICA','2023-11-23',NULL,NULL),(2,18,'OLIMPIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(5,18,'COLOMBIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(4,18,'GOKU','DEPTINFORMATICA','2023-11-23',NULL,NULL),(3,18,'NICOLAS','DEPTINFORMATICA','2023-11-23',NULL,NULL),(1,21,'GRIS','MARCO ANTONIO','2023-11-26',NULL,NULL),(3,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(5,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(4,21,'ROJO','MARCO ANTONIO','2023-11-26',NULL,NULL),(1,22,'AZUL','ERCIKPR','2023-11-26',NULL,NULL),(2,22,'BARCELONA','ERCIKPR','2023-11-26',NULL,NULL),(1,23,'AZUL','USUARIOFINAL','2023-11-26',NULL,NULL),(2,23,'OLIMPIA','USUARIOFINAL','2023-11-26',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','A',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'ASESOR DE VENTAS','Acceso a modulo de ventas e inventario','A',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'TECNICO','El que da mantenimiento a los server','I',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','A',NULL,'2023-11-05 03:43:23',NULL,NULL),(11,'GERENTE','GERENTE DE TIENDAS','A',NULL,'2023-11-25 05:40:26',NULL,NULL),(14,'PRUEBA','PRUEBA','A',NULL,'2023-11-26 17:21:52',NULL,NULL),(15,'ROL FINAL','ROL FINAL','A',NULL,'2023-11-26 19:39:02',NULL,NULL);
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
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Inactivo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(22,'ERCIKPR','ERCIKPR','Activo','$2b$10$MKuko2F9DSpF1wTqeY1VRewcE4HQMGr3TECXMuZOWBtMOxpgi2oN6',1,NULL,0,0,'2024-02-24','erickpavon544@gmail.com',45,NULL,'2023-11-26',NULL,'2023-11-26'),(23,'USUARIOFINAL','USUARIOFINAL','Activo','$2b$10$V/Y0W3c9AjtL9O01MQq3GO/dt/DZ5NximP4H/XzFYSLYCUoH4JO7G',1,NULL,0,0,'2024-02-24','karenaguilera2105@gmail.com',46,NULL,'2023-11-26',NULL,'2023-11-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (19,NULL,3,'2023-11-26 15:19:49','Pendiente',1000,61392),(20,NULL,4,'2023-11-26 16:13:04','Pendiente',1000,2256),(21,16,4,'2023-11-26 16:15:20','Pendiente',1000,7340),(22,16,4,'2023-11-26 16:24:54','Pendiente',5000,2340),(23,16,4,'2023-11-26 16:25:55','Pagado',2340,0),(24,NULL,4,'2023-11-26 16:28:01','Pendiente',3000,2896),(25,NULL,4,'2023-11-26 16:28:28','Pagado',2896,0),(26,20,4,'2023-11-26 18:10:28','Pendiente',2000,220),(27,20,4,'2023-11-26 18:21:18','Pagado',220,0),(28,21,4,'2023-11-26 18:36:15','Pendiente',3000,256);
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
INSERT INTO `tbl_pais` VALUES (1,'HONDURAS','A'),(2,'COSTA RICA','A'),(3,'ESTADOS UNIDOS','A'),(4,'MEXICO','A'),(5,'PANAMA','A'),(6,'ESPAÑA','A'),(7,'ITALIA','A');
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','n',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL),(2,8,'n','n','n','n',NULL,NULL,NULL,NULL),(3,8,'n','n','n','n',NULL,NULL,NULL,NULL),(4,8,'n','n','n','n',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'n','n','n','n',NULL,NULL,NULL,NULL),(8,8,'n','n','n','n',NULL,NULL,NULL,NULL),(9,8,'n','n','n','n',NULL,NULL,NULL,NULL),(2,9,'n','n','n','n',NULL,NULL,NULL,NULL),(3,9,'n','n','n','n',NULL,NULL,NULL,NULL),(4,9,'n','n','n','n',NULL,NULL,NULL,NULL),(5,9,'n','n','n','n',NULL,NULL,NULL,NULL),(6,9,'n','n','n','n',NULL,NULL,NULL,NULL),(7,9,'n','n','n','n',NULL,NULL,NULL,NULL),(8,9,'n','n','n','n',NULL,NULL,NULL,NULL),(9,9,'n','n','n','n',NULL,NULL,NULL,NULL),(2,10,'n','n','n','n',NULL,NULL,NULL,NULL),(3,10,'n','n','n','n',NULL,NULL,NULL,NULL),(4,10,'n','n','n','n',NULL,NULL,NULL,NULL),(5,10,'n','n','n','n',NULL,NULL,NULL,NULL),(6,10,'n','n','n','n',NULL,NULL,NULL,NULL),(7,10,'n','n','n','n',NULL,NULL,NULL,NULL),(8,10,'n','n','n','n',NULL,NULL,NULL,NULL),(9,10,'n','n','n','n',NULL,NULL,NULL,NULL),(2,11,'n','n','n','n',NULL,NULL,NULL,NULL),(3,11,'n','n','n','n',NULL,NULL,NULL,NULL),(4,11,'n','n','n','n',NULL,NULL,NULL,NULL),(5,11,'n','n','n','n',NULL,NULL,NULL,NULL),(6,11,'n','n','n','n',NULL,NULL,NULL,NULL),(7,11,'n','n','n','n',NULL,NULL,NULL,NULL),(8,11,'n','n','n','n',NULL,NULL,NULL,NULL),(9,11,'n','n','n','n',NULL,NULL,NULL,NULL),(2,12,'n','n','n','n',NULL,NULL,NULL,NULL),(3,12,'n','n','n','n',NULL,NULL,NULL,NULL),(4,12,'n','n','n','n',NULL,NULL,NULL,NULL),(5,12,'n','n','n','n',NULL,NULL,NULL,NULL),(6,12,'n','n','n','n',NULL,NULL,NULL,NULL),(7,12,'n','n','n','n',NULL,NULL,NULL,NULL),(8,12,'n','n','n','n',NULL,NULL,NULL,NULL),(9,12,'n','n','n','n',NULL,NULL,NULL,NULL),(2,13,'n','n','n','n',NULL,NULL,NULL,NULL),(3,13,'n','n','n','n',NULL,NULL,NULL,NULL),(4,13,'n','n','n','n',NULL,NULL,NULL,NULL),(5,13,'n','n','n','n',NULL,NULL,NULL,NULL),(6,13,'n','n','n','n',NULL,NULL,NULL,NULL),(7,13,'n','n','n','n',NULL,NULL,NULL,NULL),(8,13,'n','n','n','n',NULL,NULL,NULL,NULL),(9,13,'n','n','n','n',NULL,NULL,NULL,NULL),(2,14,'s','s','s','s',NULL,NULL,NULL,NULL),(3,14,'s','s','s','s',NULL,NULL,NULL,NULL),(4,14,'s','s','s','s',NULL,NULL,NULL,NULL),(5,14,'s','s','s','s',NULL,NULL,NULL,NULL),(6,14,'n','n','n','n',NULL,NULL,NULL,NULL),(7,14,'s','s','s','s',NULL,NULL,NULL,NULL),(8,14,'s','s','s','s',NULL,NULL,NULL,NULL),(9,14,'s','s','s','s',NULL,NULL,NULL,NULL),(2,15,'s','s','s','s',NULL,NULL,NULL,NULL),(3,15,'n','n','s','s',NULL,NULL,NULL,NULL),(4,15,'n','n','n','s',NULL,NULL,NULL,NULL),(5,15,'n','n','n','n',NULL,NULL,NULL,NULL),(6,15,'n','n','n','n',NULL,NULL,NULL,NULL),(7,15,'n','s','n','s',NULL,NULL,NULL,NULL),(8,15,'n','n','n','n',NULL,NULL,NULL,NULL),(9,15,'s','n','n','s',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'CALVIN KELIN','A'),(3,3,3000,10,80,'MODERNOS','I'),(4,4,550,100,500,'LENTES ','I'),(9,5,14000,2,23,'FACHERITOS','A'),(13,6,2000,2,12,'HOLA ELINE','A'),(14,7,2000,1,200,'AROS AZULES Y BLANCOS','A');
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25','A',0.12,'PAQUETAZOS'),(2,'2023-10-13','2023-10-25','A',0.4,'PROMO BACK SCHOOL');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','JUAN GOMEZ',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','96235694','erickpavon544@gmail.com','A'),(2,'INVERSIONES CZ','CARMEN VILLAREAL',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10'),(9,'0715190022222','CITA JSJAJAJ','2024-11-17'),(10,NULL,'CITA MIOPIA','0000-00-00'),(11,'0801200010887','CITA NADA','2024-11-20'),(12,NULL,'CITA MIOPIA','0000-00-00'),(13,'0715199922344','CITA ASTGMATISMO LEVE','2024-11-22'),(14,'0801199322341','CITA MIOPIA','2024-11-23'),(15,'0805198844444','CITA HOLA NOSE','2024-11-23'),(16,NULL,'CITA NADA','0000-00-00'),(17,NULL,'CITA ASTGNATISMO','0000-00-00'),(18,'0208200101153','CITA NADA','2024-11-24'),(19,NULL,'CITA NADA','0000-00-00'),(20,NULL,'CITA NADA','0000-00-00'),(21,'0815199700655','CITA NADA','2024-11-25'),(22,'0817199945555','CITA NADA','2024-11-25'),(23,'0809188856666','CITA NADA','2024-11-25'),(24,'0716198622345','CITA MIOPIA','2024-11-26'),(25,'0801200019999','CITA MIOPIA','2024-11-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'PASEO LIQUIDAMBAR','20282862','A'),(2,8,18,'CALLE PEATONAL','99584100','A'),(3,3,32,'CENTRO DE COMAYAGUA','22306587','A'),(4,1,4,'PARQUE LA AURORA','22115596','A'),(5,5,30,'LAS MINITAS','22346712','A'),(6,5,5,'VILLA VIEJA','23182862','A'),(7,1,48,'EL CARRIZAL','98761212','A');
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
INSERT INTO `tbl_tipomovimiento` VALUES (5,'ANULADO'),(1,'ENTRADA'),(3,'ENTRADA EXTRAORDINARIA'),(2,'SALIDA'),(4,'SALIDA EXTRAORDINARIA');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'EFECTIVO','A'),(2,'TARJETA DE DEBITO','A'),(3,'TARJETA DE CREDITO','A'),(4,'CONTADO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MzE2NjIiLCJpYXQiOjE3MDA1NDA0NzQsImV4cCI6MTcwMDU0MDc3NH0.xhhCb0cDAf_LRy8CV6t2biCOIxg9WwLSY0Gl1exTp7k'),(2,22,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyNDgxODIiLCJpYXQiOjE3MDEwMTg4MDgsImV4cCI6MTcwMTAxOTEwOH0.3yZ6As2DO8LGVNPC2CuyGPck3qvzquKlJbeI3FOMMu4'),(3,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5Mzg3MjAiLCJpYXQiOjE3MDEwMjczMDQsImV4cCI6MTcwMTAyNzYwNH0.rc5f_OcmgcBCBe5IO92G9o_FlRzpzanJAlMxaBPUmjs');
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
  `Estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (16,'2023-11-26 16:12:31','0000-00-00','0000-00-00','0802200101153',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3256,'A'),(17,'2023-11-26 16:15:14','0000-00-00','0000-00-00','0716198622345',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',8340,'A'),(18,'2023-11-26 16:27:38','0000-00-00','0000-00-00','0801199411205',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5896,'A'),(19,'2023-11-26 16:31:27','0000-00-00','0000-00-00','0716198622345',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2640,'A'),(20,'2023-11-26 18:10:22','0000-00-00','0000-00-00','0801200019999',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2220,'A'),(21,'2023-11-26 18:36:10','0000-00-00','0000-00-00','0801200019999',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3256,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456),(9,9,1,1,2,2,900,1,500,1450000,174000,1276000),(10,10,1,1,1,2,1000,1,1,3000,360,2640),(11,11,1,1,2,4,495,1,1,2495,299.4,2195.6),(12,12,1,1,1,4,550,1,1,2550,306,2244),(13,13,1,1,1,4,550,2,1,2350,282,2068),(14,14,2,2,2,13,1800,8,1,71800,28720,43080),(15,15,3,1,2,2,900,8,1,70900,8508,62392),(16,16,3,1,2,13,1700,10,1,3700,444,3256),(17,17,2,2,2,9,11900,10,1,13900,5560,8340),(18,18,3,1,1,2,1000,10,1,3000,360,2640),(19,18,2,1,2,13,1700,10,1,3700,444,3256),(20,19,2,1,1,2,1000,10,1,3000,360,2640),(21,20,3,2,2,14,1700,10,1,3700,1480,2220),(22,21,3,1,2,14,1700,10,1,3700,444,3256);
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
INSERT INTO `tbl_ciudad` VALUES (1,'TEGUCIGALPA','A'),(2,'COMAYAGUA','A'),(3,'SAN PEDRO SULA','A'),(4,'LA CEIBA','A'),(5,'CHOLUTECA','A'),(6,'PUERTO CORTES','A'),(7,'EL PROGRESO','A'),(8,'CHOLOMA','A'),(9,'TELA','A'),(10,'JUTICALPA','A'),(11,'DANLI','A'),(12,'LA LIMA','A'),(13,'SANTA ROSA','A'),(14,'SIGUATEPEQUE','A'),(15,'CATACAMAS','A'),(16,'TOCOA','A'),(17,'OLANCHITO','A'),(18,'DISTRITO CENTRAL','A'),(19,'SANTA BARBARA','A'),(20,'YORO','A'),(21,'NACAOME','A'),(22,'GRACIAS','A'),(23,'LA ESPERANZA','A'),(24,'YUSCARAN','A'),(25,'TRUJILLO','A'),(26,'PUERTO LEMPIRA','A'),(27,'OCOTEPEQUE','A'),(28,'LA PAZ','A'),(29,'PATUCA','A'),(30,'CHAMELECON','A'),(31,'LAS VEGAS','A'),(32,'EL PORVENIR','A'),(33,'SANTA CRUZ','A'),(34,'MARCALA','A'),(35,'COMAYAGUELA','A'),(36,'JUTIAPA','A'),(37,'OMOA','A'),(38,'LA CAMPA','A'),(39,'GUAIMACA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0716198622345','PEDRO','AGUILERA',1,'2023-01-02','BARRIO LA LOMITA','99076543','',33),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',4),('0801200019999','JARED DAVID','SALGADO ORTIZ',1,'2002-07-22','BARRIO LA MERY DE FLORES','99004455','',34),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000,'A'),(2,'2023-08-20 17:35:02',6000,'A'),(3,'2023-11-09 05:30:49',14000,'A'),(4,'2023-11-10 14:52:11',15000,'A'),(5,'2023-11-10 16:27:37',110,'A'),(6,'2023-11-23 03:14:07',14111,'A'),(7,'2023-11-26 01:23:14',10000,'A'),(8,'2023-11-26 17:53:51',1000,'A'),(9,'2023-11-26 18:22:08',100,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000),(3,3,1,6,2,14000),(10,8,1,200,14,1000),(11,9,1,1,14,100);
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
INSERT INTO `tbl_departamento` VALUES (1,'ATLANTIDA','A'),(2,'COLON','A'),(3,'COMAYAGUA','A'),(4,'COPAN','A'),(5,'CORTES','A'),(6,'CHOLUTECA','A'),(7,'EL PARAISO','A'),(8,'FRANCISCO MORAZAN','A'),(9,'GRACIAS A DIOS','A'),(10,'INTIBUCA','A'),(11,'ISLAS DE LA BAHIA','A'),(12,'LA PAZ','A'),(13,'LEMPIRA','A'),(14,'OCOTEPEQUE','A'),(15,'OLANCHO','A'),(16,'SANTA BARBARA','A'),(17,'VALLE','A'),(18,'YORO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',0,0.05),(2,'A',0.15,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(45,'ERICK','RAMIREZ','99088762',1,1,'0801200001115','2024-02-16','1899-11-30','2012-06-04','Activo'),(46,'EMPLEADO','FINAL','99008762',1,1,'0801201019999','2023-11-26',NULL,'2023-03-09','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(32,'2023-11-25 06:00:00','0716198622345',1),(33,'2023-11-25 06:00:00','0801200019999',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(26,32,'MIOPIA','KAREN AGUILERA','KAREN AGUILERA','NINGUNO','1','1','1','1','1','1','1','1','1','1','0','1','2023-11-25','2024-11-26'),(27,33,'MIOPIA','ERICK','HEIDY','NINGUNO','2','1','2','1','2','1','2','1','2','1','1','1','2023-11-25','2024-11-26'),(28,33,'NADA','SEYDI','MICHAEL','NADA','6','4','6','4','6','4','6','4','6','4','6','4','2023-11-25','2024-11-26');
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
INSERT INTO `tbl_garantia` VALUES (1,'GARANTIA POR AJUSTES',3,1,'A'),(2,'GARANTIA DE CALIDAD',3,1,'A'),(3,'GARANTIA NORMAL',5,1,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'MASCULINO','A'),(2,'FEMENINO','A'),(6,'BINARIO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(3,3,91),(7,14,297);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100,NULL),(2,2,1,1,'2023-08-20 01:54:08',1,NULL),(3,2,1,1,'2023-08-20 16:36:57',1,NULL),(4,1,1,1,'2023-08-20 06:00:00',5,NULL),(25,2,13,NULL,'2023-11-26 16:12:31',1,NULL),(26,2,9,NULL,'2023-11-26 16:15:14',1,NULL),(27,2,2,NULL,'2023-11-26 16:27:38',1,NULL),(28,2,13,NULL,'2023-11-26 16:27:38',1,NULL),(29,2,2,NULL,'2023-11-26 16:31:27',1,NULL),(30,1,14,1,'2023-11-26 06:00:00',200,NULL),(31,4,4,1,'2023-11-26 23:56:48',2,'ROBO'),(32,4,4,1,'2023-11-26 23:57:48',2,'ROBO XS'),(33,4,4,1,'2023-11-26 23:59:25',10,'ROBO'),(34,4,4,1,'2023-11-27 00:03:43',100,'ROBADOS'),(35,3,3,1,'2023-11-27 00:05:29',12,'HOLA'),(36,4,4,1,'2023-11-27 00:09:01',2,'HAHA'),(37,2,14,NULL,'2023-11-26 18:10:22',1,NULL),(38,1,14,1,'2023-11-26 06:00:00',1,NULL),(39,2,14,NULL,'2023-11-26 18:36:10',1,NULL),(40,4,14,1,'2023-11-27 00:44:03',2,'ROBO'),(41,3,14,1,'2023-11-27 00:44:33',100,'COMPRA');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (10,'TRANSITION',2000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'ELINE','A'),(6,'INFORMATICA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(6,5,'ELINE PLUS',2023,'A'),(7,6,'INFORMATICAJ9',2023,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-08-19 17:49:40',1,1,'Login','Inicio de sesión '),(13,'2023-08-19 17:52:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 18:03:43',1,1,'Login','Inicio de sesión '),(15,'2023-08-19 18:03:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(16,'2023-08-19 18:08:08',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 18:08:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(18,'2023-08-19 18:08:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(19,'2023-08-19 18:11:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(20,'2023-08-19 18:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(21,'2023-08-19 18:13:49',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(22,'2023-08-19 18:14:19',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(23,'2023-08-19 18:14:29',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(24,'2023-08-19 18:14:52',NULL,9,'Salir','Se salio de Lista de Empleados'),(25,'2023-08-19 18:17:21',0,2,'Usuario nuevo','Se agrego un nuevo usuario'),(26,'2023-08-19 18:18:33',2,1,'Login','Inicio de sesión '),(27,'2023-08-19 18:21:30',1,1,'Login','Inicio de sesión '),(28,'2023-08-19 18:21:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 18:21:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(30,'2023-08-19 18:23:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(31,'2023-08-19 18:26:03',1,1,'Login','Inicio de sesión '),(32,'2023-08-19 18:26:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(33,'2023-08-19 19:43:49',1,1,'Login','Inicio de sesión '),(34,'2023-08-19 19:47:33',1,1,'Login','Inicio de sesión '),(35,'2023-08-19 19:49:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(36,'2023-08-19 19:55:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(37,'2023-08-19 21:05:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(38,'2023-08-19 21:05:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 21:05:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(40,'2023-08-19 21:46:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 21:47:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(42,'2023-08-19 21:47:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(43,'2023-08-19 21:47:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(44,'2023-08-19 21:47:53',1,1,'Login','Inicio de sesión '),(45,'2023-08-19 21:47:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(46,'2023-08-19 22:36:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-19 22:44:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(48,'2023-08-19 23:25:10',1,1,'Login','Inicio de sesión '),(49,'2023-08-19 23:25:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 00:30:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(51,'2023-08-20 01:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(52,'2023-08-20 01:21:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(53,'2023-08-20 11:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 11:43:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(55,'2023-08-20 11:43:45',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(56,'2023-08-20 11:43:56',1,5,'Salir','El usuario salió de la pantalla de citas'),(57,'2023-08-20 11:43:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 11:44:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(59,'2023-08-20 12:22:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(60,'2023-08-20 13:42:23',1,1,'Login','Inicio de sesión '),(61,'2023-08-20 13:42:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(62,'2023-08-20 14:55:56',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 14:55:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(64,'2023-08-20 15:45:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(65,'2023-08-21 11:44:37',1,1,'Login','Inicio de sesión '),(66,'2023-08-21 11:44:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(67,'2023-08-21 12:02:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(68,'2023-08-21 12:23:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(69,'2023-08-21 12:33:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(70,'2023-08-21 12:35:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(71,'2023-08-21 13:24:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(72,'2023-08-21 13:24:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(73,'2023-08-21 13:28:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(74,'2023-08-21 13:39:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(75,'2023-08-21 13:40:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(76,'2023-08-21 13:40:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(77,'2023-08-21 23:30:21',1,1,'Login','Inicio de sesión '),(78,'2023-08-22 21:32:23',1,1,'Login','Inicio de sesión '),(79,'2023-08-22 21:32:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(80,'2023-08-22 21:32:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(81,'2023-08-22 21:32:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(82,'2023-08-23 01:06:43',1,1,'Login','Inicio de sesión '),(83,'2023-09-27 23:16:28',1,1,'Login','Inicio de sesión '),(84,'2023-09-27 23:16:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(88,'2023-09-27 23:22:15',1,1,'Login','Inicio de sesión '),(89,'2023-09-27 23:24:41',1,1,'Login','Inicio de sesión '),(90,'2023-09-27 23:28:34',1,1,'Login','Inicio de sesión '),(91,'2023-09-27 23:28:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(101,'2023-10-11 22:21:31',1,1,'Login','Inicio de sesión '),(102,'2023-10-11 22:21:36',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(103,'2023-10-11 22:24:16',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(104,'2023-10-11 22:31:28',1,1,'Login','Inicio de sesión '),(105,'2023-10-11 22:31:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(106,'2023-10-11 22:34:47',1,1,'Login','Inicio de sesión '),(107,'2023-10-11 22:36:08',1,1,'Login','Inicio de sesión '),(108,'2023-10-11 22:36:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(109,'2023-10-11 22:36:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(110,'2023-10-11 22:38:39',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(111,'2023-10-11 22:39:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(112,'2023-10-11 22:41:18',3,1,'Login','Inicio de sesión '),(113,'2023-10-11 22:49:59',3,1,'Login','Inicio de sesión '),(114,'2023-10-11 22:50:07',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-11 22:50:12',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(116,'2023-10-11 22:50:45',3,1,'Login','Inicio de sesión '),(117,'2023-10-11 22:50:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(118,'2023-10-11 22:52:16',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(119,'2023-10-11 22:52:20',1,1,'Login','Inicio de sesión '),(120,'2023-10-11 22:52:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-11 22:52:38',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-11 22:52:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(123,'2023-10-11 22:53:42',3,1,'Login','Inicio de sesión '),(124,'2023-10-11 22:53:45',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(125,'2023-10-11 22:53:48',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(126,'2023-10-11 22:56:30',1,1,'Login','Inicio de sesión '),(127,'2023-10-11 22:56:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(128,'2023-10-11 22:56:55',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(129,'2023-10-11 22:56:58',NULL,9,'Salir','Se salio de Lista de Empleados'),(130,'2023-10-11 22:58:44',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(131,'2023-10-11 23:00:45',4,1,'Login','Inicio de sesión '),(132,'2023-10-11 23:00:49',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-11 23:00:55',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-11 23:00:58',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(135,'2023-10-11 23:01:01',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(136,'2023-10-11 23:01:04',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(137,'2023-10-11 23:01:08',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(138,'2023-10-11 23:01:11',1,1,'Login','Inicio de sesión '),(139,'2023-10-11 23:01:14',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(140,'2023-10-11 23:01:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(141,'2023-10-11 23:01:35',4,1,'Login','Inicio de sesión '),(142,'2023-10-11 23:01:38',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(143,'2023-10-11 23:02:11',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(144,'2023-10-11 23:02:20',4,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(145,'2023-10-11 23:02:37',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(146,'2023-10-13 22:05:10',1,1,'Login','Inicio de sesión '),(147,'2023-10-13 22:28:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(148,'2023-10-14 00:42:28',1,1,'Login','Inicio de sesión '),(149,'2023-10-14 11:08:43',1,1,'Login','Inicio de sesión '),(150,'2023-10-14 13:17:05',1,1,'Login','Inicio de sesión '),(151,'2023-10-14 14:41:09',1,1,'Login','Inicio de sesión '),(152,'2023-10-14 22:03:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(153,'2023-10-14 22:03:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(154,'2023-10-14 23:23:47',1,1,'Login','Inicio de sesión '),(155,'2023-10-15 00:19:56',1,1,'Login','Inicio de sesión '),(156,'2023-10-15 00:29:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-15 00:49:08',1,1,'Login','Inicio de sesión '),(158,'2023-10-15 00:50:33',1,1,'Login','Inicio de sesión '),(159,'2023-10-15 08:55:12',1,1,'Login','Inicio de sesión '),(160,'2023-10-15 14:51:10',1,1,'Login','Inicio de sesión '),(161,'2023-10-15 14:55:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(162,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(163,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(164,'2023-10-15 15:04:47',1,1,'Login','Inicio de sesión '),(165,'2023-10-15 15:05:31',1,1,'Login','Inicio de sesión '),(166,'2023-10-15 15:50:19',1,1,'Login','Inicio de sesión '),(167,'2023-10-15 21:27:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(168,'2023-10-15 21:30:11',1,5,'Registro','El usuario registró una nueva cita'),(169,'2023-10-15 21:31:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(170,'2023-10-17 22:33:18',1,1,'Login','Inicio de sesión '),(171,'2023-10-17 22:33:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(172,'2023-10-17 22:33:33',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(173,'2023-10-17 22:34:41',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(174,'2023-10-17 22:36:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(175,'2023-10-17 22:37:22',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(176,'2023-10-17 23:01:18',1,1,'Login','Inicio de sesión '),(177,'2023-10-17 23:01:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(178,'2023-10-17 23:02:11',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(179,'2023-10-17 23:02:47',5,1,'Login','Inicio de sesión '),(180,'2023-10-17 23:28:46',5,1,'Login','Inicio de sesión '),(181,'2023-10-17 23:29:29',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(182,'2023-10-17 23:32:14',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(183,'2023-10-17 23:42:28',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(184,'2023-10-17 23:43:09',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(185,'2023-10-17 23:43:20',1,1,'Login','Inicio de sesión '),(186,'2023-10-17 23:43:25',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(187,'2023-10-17 23:44:12',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(188,'2023-10-17 23:44:33',1,1,'Login','Inicio de sesión '),(189,'2023-10-17 23:44:38',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(190,'2023-10-17 23:45:51',1,11,'Modificación','El usuario modificó la contraseña'),(191,'2023-10-18 20:01:14',5,1,'Login','Inicio de sesión '),(192,'2023-10-18 20:05:32',1,1,'Login','Inicio de sesión '),(193,'2023-10-18 20:05:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(194,'2023-10-18 21:28:08',1,1,'Login','Inicio de sesión '),(195,'2023-10-18 21:28:13',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(196,'2023-10-18 21:28:52',1,11,'Modificación','El usuario modificó la contraseña'),(197,'2023-10-18 21:29:01',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(198,'2023-10-18 21:29:08',1,1,'Login','Inicio de sesión '),(199,'2023-10-19 10:23:15',5,1,'Login','Inicio de sesión '),(200,'2023-10-19 10:23:20',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(201,'2023-10-19 10:24:16',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(202,'2023-10-19 10:32:30',1,1,'Login','Inicio de sesión '),(203,'2023-10-19 10:32:36',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(204,'2023-10-19 10:33:50',5,1,'Login','Inicio de sesión '),(205,'2023-10-19 10:34:04',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-19 10:35:05',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(207,'2023-10-19 10:35:28',5,1,'Login','Inicio de sesión '),(208,'2023-10-19 10:35:31',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(209,'2023-10-19 10:36:24',5,11,'Modificación','El usuario modificó la contraseña'),(210,'2023-10-19 10:36:34',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(211,'2023-10-19 10:36:58',5,1,'Login','Inicio de sesión '),(212,'2023-10-19 10:52:47',5,1,'Login','Inicio de sesión '),(213,'2023-10-19 10:53:09',1,1,'Login','Inicio de sesión '),(214,'2023-10-19 10:53:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(215,'2023-10-19 10:53:23',NULL,9,'Salir','Se salio de Lista de Empleados'),(216,'2023-10-19 11:02:44',6,1,'Login','Inicio de sesión '),(217,'2023-10-19 11:11:20',1,1,'Login','Inicio de sesión '),(218,'2023-10-19 11:11:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(219,'2023-10-19 11:21:06',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(220,'2023-10-19 11:25:05',5,1,'Login','Inicio de sesión '),(221,'2023-10-19 11:25:09',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(222,'2023-10-19 18:09:09',1,1,'Login','Inicio de sesión '),(223,'2023-10-19 18:09:26',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(224,'2023-10-19 20:34:53',1,1,'Login','Inicio de sesión '),(225,'2023-10-19 20:36:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(226,'2023-10-19 20:37:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(227,'2023-10-19 22:20:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(228,'2023-10-19 23:04:53',1,1,'Login','Inicio de sesión '),(229,'2023-10-19 23:04:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(230,'2023-10-19 23:09:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(231,'2023-10-19 23:09:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(232,'2023-10-19 23:26:04',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(233,'2023-10-19 23:32:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(234,'2023-10-19 23:33:12',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(235,'2023-10-19 23:41:08',NULL,9,'Salir','Se salio de Lista de Empleados'),(236,'2023-10-19 23:43:04',1,1,'Login','Inicio de sesión '),(237,'2023-10-19 23:43:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(238,'2023-10-19 23:44:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(239,'2023-10-19 23:45:46',1,1,'Login','Inicio de sesión '),(240,'2023-10-19 23:45:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(241,'2023-10-19 23:46:58',1,1,'Login','Inicio de sesión '),(242,'2023-10-19 23:46:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(243,'2023-10-19 23:47:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(244,'2023-10-19 23:50:48',1,1,'Login','Inicio de sesión '),(245,'2023-10-19 23:50:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(246,'2023-10-19 23:51:24',5,1,'Login','Inicio de sesión '),(247,'2023-10-19 23:52:48',1,1,'Login','Inicio de sesión '),(248,'2023-10-19 23:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(249,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(250,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(251,'2023-10-20 16:29:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(252,'2023-10-20 16:29:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(253,'2023-10-20 16:31:47',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(254,'2023-10-20 16:48:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(255,'2023-10-20 17:03:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(256,'2023-10-20 17:03:43',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(257,'2023-10-20 17:03:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(258,'2023-10-20 17:04:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(259,'2023-10-20 17:09:34',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(260,'2023-10-20 17:10:05',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(261,'2023-10-20 20:15:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(262,'2023-10-20 20:17:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(263,'2023-10-20 20:18:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(264,'2023-10-20 20:19:13',1,1,'Login','Inicio de sesión '),(265,'2023-10-20 20:19:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(266,'2023-10-20 20:20:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(267,'2023-10-20 20:21:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(268,'2023-10-20 20:23:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(269,'2023-10-20 20:23:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(270,'2023-10-20 20:23:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(271,'2023-10-20 20:31:29',1,1,'Login','Inicio de sesión '),(272,'2023-10-20 20:31:31',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(273,'2023-10-20 20:33:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(274,'2023-10-20 20:33:21',1,1,'Login','Inicio de sesión '),(275,'2023-10-20 20:33:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(276,'2023-10-20 20:38:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(277,'2023-10-20 20:51:33',9,1,'Login','Inicio de sesión '),(278,'2023-10-20 20:51:40',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-20 20:51:45',9,11,'Modificación','El usuario modificó los datos del perfil'),(280,'2023-10-20 20:53:23',9,1,'Login','Inicio de sesión '),(281,'2023-10-20 20:53:28',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(282,'2023-10-20 20:53:41',9,11,'Modificación','El usuario modificó las preguntas de seguridad'),(283,'2023-10-20 20:55:51',9,11,'Modificación','El usuario modificó la contraseña'),(284,'2023-10-20 20:55:55',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(285,'2023-10-20 20:56:26',9,1,'Login','Inicio de sesión '),(286,'2023-10-20 21:06:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(287,'2023-10-20 21:15:54',9,1,'Login','Inicio de sesión '),(288,'2023-10-20 21:16:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(289,'2023-10-20 21:16:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(290,'2023-10-20 21:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(291,'2023-10-20 21:16:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-10-20 21:30:18',1,1,'Login','Inicio de sesión '),(293,'2023-10-20 21:30:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(294,'2023-10-20 21:33:52',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 21:33:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-20 21:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(297,'2023-10-20 21:39:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-20 21:42:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(299,'2023-10-20 21:42:58',1,1,'Login','Inicio de sesión '),(300,'2023-10-20 21:43:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(301,'2023-10-20 21:43:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(302,'2023-10-20 21:44:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(303,'2023-10-20 21:45:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(304,'2023-10-20 21:49:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(305,'2023-10-20 22:09:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-10-21 07:31:04',1,1,'Login','Inicio de sesión '),(307,'2023-10-21 07:31:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(308,'2023-10-21 07:40:03',1,1,'Login','Inicio de sesión '),(309,'2023-10-21 07:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(310,'2023-10-21 07:44:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(311,'2023-10-21 07:44:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(312,'2023-10-21 07:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(313,'2023-10-21 07:46:36',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(314,'2023-10-21 07:53:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(315,'2023-10-22 08:19:26',1,1,'Login','Inicio de sesión '),(316,'2023-10-22 08:19:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-10-22 09:19:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(318,'2023-10-22 09:26:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(319,'2023-10-22 10:53:33',1,1,'Login','Inicio de sesión '),(320,'2023-10-22 14:33:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-10-22 14:36:44',1,1,'Login','Inicio de sesión '),(322,'2023-10-22 14:36:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(323,'2023-10-22 14:37:46',9,1,'Login','Inicio de sesión '),(324,'2023-10-22 15:00:29',1,1,'Login','Inicio de sesión '),(325,'2023-10-22 15:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(326,'2023-10-22 15:15:58',1,1,'Login','Inicio de sesión '),(327,'2023-10-22 15:17:15',1,1,'Login','Inicio de sesión '),(328,'2023-10-22 16:03:41',1,1,'Login','Inicio de sesión '),(329,'2023-10-22 16:30:25',1,1,'Login','Inicio de sesión '),(330,'2023-10-22 16:50:12',1,1,'Login','Inicio de sesión '),(331,'2023-10-22 16:50:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(332,'2023-10-22 16:50:26',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(333,'2023-10-22 16:50:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(334,'2023-10-22 16:52:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(335,'2023-10-22 16:52:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(336,'2023-10-22 16:53:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(337,'2023-10-22 16:53:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(338,'2023-10-22 21:31:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(339,'2023-10-22 21:31:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(340,'2023-10-22 21:32:34',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(341,'2023-10-22 21:36:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(342,'2023-10-22 21:38:39',1,1,'Login','Inicio de sesión '),(343,'2023-10-22 21:38:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(344,'2023-10-22 21:39:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(345,'2023-10-22 21:44:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(346,'2023-10-22 21:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(347,'2023-10-22 22:57:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(348,'2023-10-24 21:27:02',1,1,'Login','Inicio de sesión '),(349,'2023-10-24 21:28:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(350,'2023-10-24 21:28:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(351,'2023-10-24 21:32:21',1,1,'Login','Inicio de sesión '),(352,'2023-10-24 21:32:29',1,1,'Login','Inicio de sesión '),(353,'2023-10-24 21:32:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(354,'2023-10-24 21:39:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-10-24 22:04:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(356,'2023-10-24 22:19:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-10-24 22:29:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(358,'2023-10-26 21:55:44',1,1,'Login','Inicio de sesión '),(359,'2023-10-26 22:02:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(360,'2023-10-26 22:07:00',1,1,'Login','Inicio de sesión '),(361,'2023-10-26 22:07:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-10-26 22:12:35',1,1,'Login','Inicio de sesión '),(363,'2023-10-26 22:12:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(364,'2023-10-26 22:17:01',5,1,'Login','Inicio de sesión '),(365,'2023-10-26 22:19:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-26 22:19:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(367,'2023-10-26 22:30:19',1,1,'Login','Inicio de sesión '),(368,'2023-10-27 00:17:06',5,1,'Login','Inicio de sesión '),(369,'2023-10-27 18:52:02',1,1,'Login','Inicio de sesión '),(370,'2023-10-27 18:52:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(371,'2023-10-27 18:56:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-10-27 19:18:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(373,'2023-10-27 19:19:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-10-27 19:41:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-10-28 21:49:47',1,1,'Login','Inicio de sesión '),(376,'2023-10-28 21:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-10-28 21:54:14',11,1,'Login','Inicio de sesión '),(378,'2023-10-28 21:54:19',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(379,'2023-10-28 21:55:09',11,11,'Modificación','El usuario modificó la contraseña'),(380,'2023-10-28 21:55:26',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(381,'2023-10-28 21:55:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(382,'2023-10-28 23:52:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(383,'2023-10-28 23:59:47',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(384,'2023-10-29 00:05:37',1,1,'Login','Inicio de sesión '),(385,'2023-10-29 00:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-30 18:48:30',1,1,'Login','Inicio de sesión '),(387,'2023-10-30 18:48:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(388,'2023-10-30 18:49:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(389,'2023-10-30 21:13:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(390,'2023-10-30 22:04:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(391,'2023-10-30 22:05:35',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(392,'2023-10-30 22:06:01',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(393,'2023-10-30 22:14:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(394,'2023-10-30 22:21:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(395,'2023-10-30 22:24:32',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(396,'2023-10-30 22:24:55',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(397,'2023-10-30 22:33:03',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(398,'2023-10-30 22:33:17',11,1,'Login','Inicio de sesión '),(399,'2023-10-30 22:33:26',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(400,'2023-10-30 22:34:36',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(401,'2023-10-30 22:34:54',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(402,'2023-10-30 22:35:24',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(403,'2023-10-30 22:35:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(404,'2023-10-30 22:35:48',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(405,'2023-10-30 22:36:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(406,'2023-10-30 22:36:43',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(407,'2023-10-30 22:42:29',1,1,'Login','Inicio de sesión '),(408,'2023-10-30 22:52:53',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(409,'2023-10-30 22:53:13',11,1,'Login','Inicio de sesión '),(410,'2023-10-31 19:40:17',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-10-31 19:40:40',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-10-31 19:41:14',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(413,'2023-10-31 19:44:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-10-31 19:49:31',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(415,'2023-10-31 21:13:25',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-10-31 21:15:04',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(417,'2023-10-31 21:25:20',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(418,'2023-10-31 21:32:43',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(419,'2023-10-31 21:33:00',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(420,'2023-10-31 21:33:23',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-10-31 21:33:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(422,'2023-10-31 21:37:28',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(423,'2023-10-31 21:43:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-10-31 21:51:09',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(425,'2023-10-31 21:52:47',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(426,'2023-10-31 21:53:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(427,'2023-11-01 16:18:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-01 16:20:53',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(429,'2023-11-01 16:20:55',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-01 16:21:23',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(431,'2023-11-01 16:23:02',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-01 16:25:06',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(433,'2023-11-01 16:26:38',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-01 16:28:16',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(435,'2023-11-01 16:28:39',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(436,'2023-11-01 16:29:38',1,1,'Login','Inicio de sesión '),(437,'2023-11-01 16:29:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(438,'2023-11-01 16:30:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(439,'2023-11-01 16:32:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(440,'2023-11-01 16:33:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(441,'2023-11-01 16:44:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-11-01 16:44:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(443,'2023-11-01 21:32:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-11-01 21:46:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(445,'2023-11-01 23:17:41',NULL,9,'Salir','Se salio de Lista de Empleados'),(446,'2023-11-01 23:23:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(447,'2023-11-01 23:34:13',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(448,'2023-11-01 23:34:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(449,'2023-11-02 17:55:44',1,1,'Login','Inicio de sesión '),(450,'2023-11-02 17:55:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-02 17:56:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(452,'2023-11-02 20:34:35',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(453,'2023-11-02 20:35:17',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(454,'2023-11-02 20:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-02 20:39:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(456,'2023-11-02 20:39:30',1,1,'Login','Inicio de sesión '),(457,'2023-11-02 20:39:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(458,'2023-11-02 20:41:23',1,1,'Login','Inicio de sesión '),(459,'2023-11-02 20:41:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(460,'2023-11-02 20:46:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(461,'2023-11-02 20:56:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(462,'2023-11-02 20:56:54',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(463,'2023-11-02 21:02:48',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(464,'2023-11-02 21:07:47',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(465,'2023-11-02 21:07:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(466,'2023-11-02 21:08:28',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(467,'2023-11-02 21:09:38',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(468,'2023-11-02 21:17:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(469,'2023-11-02 21:29:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(470,'2023-11-02 21:29:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(471,'2023-11-02 21:30:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(472,'2023-11-02 21:40:27',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(473,'2023-11-02 21:43:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(474,'2023-11-02 22:08:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(475,'2023-11-02 22:09:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(476,'2023-11-02 22:15:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-11-02 22:18:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(478,'2023-11-02 22:20:43',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(479,'2023-11-02 22:31:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(480,'2023-11-02 22:31:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(481,'2023-11-02 22:32:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(482,'2023-11-02 22:34:14',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(483,'2023-11-02 22:36:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(484,'2023-11-02 22:36:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(485,'2023-11-02 22:38:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(486,'2023-11-02 22:47:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(487,'2023-11-02 22:48:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(488,'2023-11-02 22:48:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(489,'2023-11-02 22:48:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(490,'2023-11-02 22:50:32',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(491,'2023-11-02 23:03:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(492,'2023-11-02 23:03:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(493,'2023-11-02 23:28:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(494,'2023-11-02 23:29:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(495,'2023-11-02 23:53:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(496,'2023-11-02 23:57:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(497,'2023-11-03 00:09:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(498,'2023-11-03 00:42:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(499,'2023-11-03 00:45:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(500,'2023-11-03 00:46:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(501,'2023-11-03 00:51:42',NULL,9,'Salir','Se salio de Lista de Empleados'),(502,'2023-11-03 01:05:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(503,'2023-11-03 01:05:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-03 01:41:21',1,1,'Login','Inicio de sesión '),(505,'2023-11-03 01:41:32',1,1,'Login','Inicio de sesión '),(506,'2023-11-03 01:41:49',1,1,'Login','Inicio de sesión '),(507,'2023-11-03 01:42:15',1,1,'Login','Inicio de sesión '),(508,'2023-11-03 16:40:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(509,'2023-11-03 16:45:51',1,1,'Login','Inicio de sesión '),(510,'2023-11-03 16:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-11-03 16:52:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(512,'2023-11-03 16:53:11',1,1,'Login','Inicio de sesión '),(513,'2023-11-03 17:48:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(514,'2023-11-03 17:50:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-11-03 17:50:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(516,'2023-11-03 17:50:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(517,'2023-11-03 17:51:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(518,'2023-11-03 19:53:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-11-03 19:54:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(520,'2023-11-03 20:19:53',1,1,'Login','Inicio de sesión '),(521,'2023-11-03 20:19:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(522,'2023-11-03 20:46:32',1,1,'Login','Inicio de sesión '),(523,'2023-11-03 22:18:03',1,1,'Login','Inicio de sesión '),(524,'2023-11-03 22:42:38',1,1,'Login','Inicio de sesión '),(525,'2023-11-03 22:42:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(526,'2023-11-03 22:43:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(527,'2023-11-03 22:51:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(528,'2023-11-03 22:51:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(529,'2023-11-04 08:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-11-04 08:16:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(531,'2023-11-04 08:19:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(532,'2023-11-04 08:19:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(533,'2023-11-04 09:27:57',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(534,'2023-11-04 09:28:04',1,1,'Login','Inicio de sesión '),(535,'2023-11-04 09:28:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(536,'2023-11-04 09:28:36',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(537,'2023-11-04 10:21:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(538,'2023-11-04 10:22:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(539,'2023-11-04 14:22:05',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(540,'2023-11-04 14:59:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(541,'2023-11-04 15:00:03',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(542,'2023-11-04 20:09:01',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(543,'2023-11-04 20:36:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(544,'2023-11-04 20:36:59',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(545,'2023-11-04 20:37:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(546,'2023-11-04 21:43:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(547,'2023-11-04 21:45:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(548,'2023-11-04 21:45:48',11,1,'Login','Inicio de sesión '),(549,'2023-11-04 21:47:23',11,1,'Login','Inicio de sesión '),(550,'2023-11-04 21:48:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-11-04 21:51:21',9,1,'Login','Inicio de sesión '),(552,'2023-11-04 22:00:40',11,1,'Login','Inicio de sesión '),(553,'2023-11-04 22:00:50',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-04 22:02:21',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(555,'2023-11-04 22:12:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-11-04 22:12:35',11,1,'Login','Inicio de sesión '),(557,'2023-11-04 22:17:44',9,1,'Login','Inicio de sesión '),(558,'2023-11-04 22:25:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(559,'2023-11-04 22:26:20',11,1,'Login','Inicio de sesión '),(560,'2023-11-04 22:43:52',1,1,'Login','Inicio de sesión '),(561,'2023-11-04 22:46:39',11,1,'Login','Inicio de sesión '),(562,'2023-11-04 23:22:36',9,1,'Login','Inicio de sesión '),(563,'2023-11-04 23:45:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(564,'2023-11-04 23:52:19',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(565,'2023-11-04 23:56:03',11,5,'Salir','El usuario salió de la pantalla de citas'),(566,'2023-11-04 23:56:35',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(567,'2023-11-04 23:59:03',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(568,'2023-11-05 00:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(569,'2023-11-05 01:16:03',1,1,'Login','Inicio de sesión '),(570,'2023-11-05 01:16:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-11-05 01:24:09',11,1,'Login','Inicio de sesión '),(572,'2023-11-05 01:29:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(573,'2023-11-06 12:05:08',1,1,'Login','Inicio de sesión '),(574,'2023-11-06 12:05:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(575,'2023-11-06 18:36:47',1,1,'Login','Inicio de sesión '),(576,'2023-11-06 18:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(577,'2023-11-06 18:41:24',1,1,'Login','Inicio de sesión '),(578,'2023-11-06 18:41:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(579,'2023-11-06 18:42:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(580,'2023-11-06 18:42:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(581,'2023-11-06 22:17:55',1,1,'Login','Inicio de sesión '),(582,'2023-11-06 22:17:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-11-06 22:18:17',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(584,'2023-11-08 21:49:47',1,1,'Login','Inicio de sesión '),(585,'2023-11-08 21:49:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(586,'2023-11-08 21:50:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-11-08 22:30:07',1,1,'Login','Inicio de sesión '),(588,'2023-11-08 22:30:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(589,'2023-11-08 22:31:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(590,'2023-11-08 22:31:49',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(591,'2023-11-08 22:44:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(592,'2023-11-08 22:44:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(593,'2023-11-08 22:45:22',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(594,'2023-11-08 22:55:43',1,11,'Modificación','El usuario modificó la contraseña'),(595,'2023-11-08 22:55:53',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(596,'2023-11-08 22:56:09',1,1,'Login','Inicio de sesión '),(597,'2023-11-08 23:04:33',1,5,'Registro','El usuario registró una nueva cita'),(598,'2023-11-08 23:06:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(599,'2023-11-08 23:07:27',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(600,'2023-11-08 23:07:52',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(601,'2023-11-08 23:08:16',11,1,'Login','Inicio de sesión '),(602,'2023-11-08 23:08:20',1,1,'Login','Inicio de sesión '),(603,'2023-11-08 23:08:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(604,'2023-11-08 23:08:56',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(605,'2023-11-08 23:09:21',11,1,'Login','Inicio de sesión '),(606,'2023-11-08 23:10:39',11,8,'Configuración','Se ingreso a la pantalla de Configuración'),(607,'2023-11-08 23:21:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(608,'2023-11-08 23:21:34',11,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(609,'2023-11-08 23:21:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(610,'2023-11-08 23:22:04',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(611,'2023-11-08 23:22:18',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(612,'2023-11-08 23:26:14',11,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(613,'2023-11-08 23:26:36',12,1,'Login','Inicio de sesión '),(614,'2023-11-08 23:26:46',1,1,'Login','Inicio de sesión '),(615,'2023-11-08 23:27:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-11-08 23:27:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(617,'2023-11-08 23:29:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(618,'2023-11-08 23:29:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(619,'2023-11-08 23:29:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(620,'2023-11-08 23:33:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(621,'2023-11-08 23:40:08',1,1,'Login','Inicio de sesión '),(622,'2023-11-08 23:40:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(623,'2023-11-08 23:40:31',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(624,'2023-11-08 23:43:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(625,'2023-11-08 23:51:36',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(626,'2023-11-08 23:53:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(627,'2023-11-08 23:54:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(628,'2023-11-08 23:56:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(629,'2023-11-08 23:59:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(630,'2023-11-09 00:22:54',1,1,'Login','Inicio de sesión '),(631,'2023-11-09 00:23:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(632,'2023-11-09 00:23:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(633,'2023-11-09 00:23:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(634,'2023-11-09 00:23:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(635,'2023-11-09 00:24:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(636,'2023-11-09 00:25:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(637,'2023-11-09 00:32:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(638,'2023-11-09 00:33:25',1,1,'Login','Inicio de sesión '),(639,'2023-11-09 00:33:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(640,'2023-11-09 00:34:27',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(641,'2023-11-09 00:34:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(642,'2023-11-09 00:49:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(643,'2023-11-09 00:50:08',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(644,'2023-11-09 00:50:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(645,'2023-11-09 00:53:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(646,'2023-11-09 00:56:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(647,'2023-11-09 00:56:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(648,'2023-11-09 00:56:36',NULL,9,'Salir','Se salio de Lista de Empleados'),(649,'2023-11-09 00:59:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(650,'2023-11-09 00:59:38',NULL,9,'Salir','Se salio de Lista de Empleados'),(651,'2023-11-09 01:06:34',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(652,'2023-11-09 12:33:57',1,1,'Login','Inicio de sesión '),(653,'2023-11-09 12:34:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(654,'2023-11-09 12:34:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(655,'2023-11-09 12:34:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(656,'2023-11-10 08:29:17',1,1,'Login','Inicio de sesión '),(657,'2023-11-10 08:29:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(658,'2023-11-10 08:29:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(659,'2023-11-10 08:29:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(660,'2023-11-10 08:30:01',NULL,9,'Salir','Se salio de Lista de Empleados'),(661,'2023-11-10 08:32:00',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(662,'2023-11-10 08:33:37',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(663,'2023-11-10 08:35:07',1,1,'Login','Inicio de sesión '),(664,'2023-11-10 08:35:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(665,'2023-11-10 08:35:16',NULL,9,'Salir','Se salio de Lista de Empleados'),(666,'2023-11-10 08:38:24',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(667,'2023-11-10 08:38:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(668,'2023-11-10 08:43:06',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(669,'2023-11-10 08:44:10',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(670,'2023-11-10 08:44:24',16,1,'Login','Inicio de sesión '),(671,'2023-11-10 08:49:06',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(672,'2023-11-10 09:26:03',16,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(673,'2023-11-10 09:43:18',16,5,'Registro','El usuario registró una nueva cita'),(674,'2023-11-10 09:48:43',16,5,'Registro','El usuario registró una nueva cita'),(675,'2023-11-10 09:53:44',16,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-11-10 09:57:02',16,5,'Actualizar Cita','El usuario actuzalizó una cita'),(677,'2023-11-10 09:58:52',16,5,'Borrar Cita','El usuario eliminó una cita'),(678,'2023-11-10 10:03:03',16,5,'Salir','El usuario salió de la pantalla de citas'),(679,'2023-11-10 10:03:53',16,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(680,'2023-11-10 10:04:18',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(681,'2023-11-10 11:06:22',16,9,'Salir','Se salio de la pantalla Registro de Empleado'),(682,'2023-11-10 11:07:01',16,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(683,'2023-11-10 11:10:43',16,8,'Configuración','Se ingreso a la pantalla de Configuración'),(684,'2023-11-13 07:37:24',1,1,'Login','Inicio de sesión '),(685,'2023-11-13 07:39:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(686,'2023-11-13 07:41:36',1,1,'Login','Inicio de sesión '),(687,'2023-11-13 07:41:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(688,'2023-11-13 07:42:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(689,'2023-11-13 07:43:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(690,'2023-11-13 07:44:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(691,'2023-11-13 07:44:36',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(692,'2023-11-13 07:44:53',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(693,'2023-11-13 07:49:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(694,'2023-11-13 08:02:46',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(695,'2023-11-13 08:03:07',1,1,'Login','Inicio de sesión '),(696,'2023-11-13 08:03:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(697,'2023-11-13 08:03:35',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(698,'2023-11-13 08:07:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(699,'2023-11-13 08:11:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(700,'2023-11-13 08:17:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(701,'2023-11-13 08:20:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(702,'2023-11-13 09:33:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(703,'2023-11-13 09:42:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(704,'2023-11-13 09:50:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(705,'2023-11-13 09:54:05',NULL,9,'Salir','Se salio de Lista de Empleados'),(706,'2023-11-13 10:28:24',NULL,9,'Salir','Se salio de Lista de Empleados'),(707,'2023-11-13 10:30:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(708,'2023-11-13 10:31:59',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(709,'2023-11-13 10:45:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(710,'2023-11-13 10:54:04',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(711,'2023-11-13 10:54:20',NULL,9,'Salir','Se salio de Lista de Empleados'),(712,'2023-11-13 11:37:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-11-13 11:38:08',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(714,'2023-11-13 16:46:04',1,1,'Login','Inicio de sesión '),(715,'2023-11-13 18:46:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(716,'2023-11-13 18:46:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(717,'2023-11-13 18:46:50',NULL,9,'Salir','Se salio de Lista de Empleados'),(718,'2023-11-13 18:50:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(719,'2023-11-13 18:50:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(720,'2023-11-13 19:25:59',1,1,'Login','Inicio de sesión '),(721,'2023-11-13 19:38:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(722,'2023-11-13 21:21:51',1,1,'Login','Inicio de sesión '),(723,'2023-11-13 22:15:43',1,1,'Login','Inicio de sesión '),(724,'2023-11-13 22:24:20',1,1,'Login','Inicio de sesión '),(725,'2023-11-13 22:24:20',1,1,'Login','Inicio de sesión '),(726,'2023-11-14 22:00:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(727,'2023-11-14 22:11:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(728,'2023-11-17 14:38:24',1,1,'Login','Inicio de sesión '),(729,'2023-11-17 14:40:06',1,1,'Login','Inicio de sesión '),(730,'2023-11-17 14:40:47',1,1,'Login','Inicio de sesión '),(731,'2023-11-17 14:43:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(732,'2023-11-17 14:45:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-11-17 15:02:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(734,'2023-11-17 15:36:34',1,1,'Login','Inicio de sesión '),(735,'2023-11-17 15:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(736,'2023-11-17 15:41:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(737,'2023-11-17 15:41:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(738,'2023-11-17 15:41:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(739,'2023-11-17 16:04:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(740,'2023-11-17 16:20:10',1,1,'Login','Inicio de sesión '),(741,'2023-11-17 16:26:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(742,'2023-11-17 17:18:06',1,1,'Login','Inicio de sesión '),(743,'2023-11-17 17:36:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(744,'2023-11-17 18:34:47',1,1,'Login','Inicio de sesión '),(745,'2023-11-17 18:48:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(746,'2023-11-17 19:17:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(747,'2023-11-17 19:18:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(748,'2023-11-17 19:18:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(749,'2023-11-17 19:26:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-11-17 19:27:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(751,'2023-11-17 19:27:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(752,'2023-11-17 19:28:03',1,5,'Salir','El usuario salió de la pantalla de citas'),(753,'2023-11-17 19:28:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(754,'2023-11-17 19:28:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(755,'2023-11-17 19:31:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(756,'2023-11-17 19:49:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(757,'2023-11-17 19:49:37',1,5,'Salir','El usuario salió de la pantalla de citas'),(758,'2023-11-17 19:49:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-11-17 19:50:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(760,'2023-11-20 21:30:09',1,1,'Login','Inicio de sesión '),(761,'2023-11-20 21:32:26',1,1,'Login','Inicio de sesión '),(762,'2023-11-20 21:42:22',1,1,'Login','Inicio de sesión '),(763,'2023-11-20 21:42:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(764,'2023-11-20 21:44:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(765,'2023-11-20 21:47:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(766,'2023-11-20 21:49:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-11-20 21:49:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(768,'2023-11-20 21:49:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(769,'2023-11-20 22:24:49',1,1,'Login','Inicio de sesión '),(770,'2023-11-20 22:39:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(771,'2023-11-20 23:09:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(772,'2023-11-20 23:09:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(773,'2023-11-20 23:12:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(774,'2023-11-21 21:20:18',1,1,'Login','Inicio de sesión '),(775,'2023-11-21 21:41:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-11-21 21:41:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(777,'2023-11-21 21:53:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(778,'2023-11-21 21:56:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(779,'2023-11-21 21:56:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(780,'2023-11-21 21:57:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(781,'2023-11-21 22:01:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-11-21 22:03:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(783,'2023-11-21 22:03:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(784,'2023-11-22 20:09:16',1,1,'Login','Inicio de sesión '),(785,'2023-11-22 20:10:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(786,'2023-11-22 20:11:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(787,'2023-11-22 20:11:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(788,'2023-11-22 20:11:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(789,'2023-11-22 20:11:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-11-22 20:11:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(791,'2023-11-22 20:11:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(792,'2023-11-22 20:20:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(793,'2023-11-22 20:21:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(794,'2023-11-22 20:22:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(795,'2023-11-22 20:22:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(796,'2023-11-22 20:22:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(797,'2023-11-22 20:23:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(798,'2023-11-22 20:23:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(799,'2023-11-22 20:23:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(800,'2023-11-22 20:23:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(801,'2023-11-22 20:24:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(802,'2023-11-22 20:42:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(803,'2023-11-22 20:42:08',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(804,'2023-11-22 21:06:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(805,'2023-11-22 21:06:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(806,'2023-11-23 15:43:33',1,1,'Login','Inicio de sesión '),(807,'2023-11-23 15:45:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(808,'2023-11-23 15:45:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(809,'2023-11-23 15:46:27',1,5,'Salir','El usuario salió de la pantalla de citas'),(810,'2023-11-23 15:46:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(811,'2023-11-23 15:46:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(812,'2023-11-23 16:21:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(813,'2023-11-23 16:36:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(814,'2023-11-23 16:36:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(815,'2023-11-23 16:59:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(816,'2023-11-23 17:10:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(817,'2023-11-23 17:10:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(818,'2023-11-23 17:10:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(819,'2023-11-23 17:27:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(820,'2023-11-23 17:27:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(821,'2023-11-23 17:28:03',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(822,'2023-11-23 17:30:14',NULL,9,'Salir','Se salio de Lista de Empleados'),(823,'2023-11-23 17:44:54',1,1,'Login','Inicio de sesión '),(824,'2023-11-23 17:44:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(825,'2023-11-23 17:44:58',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(826,'2023-11-23 17:45:12',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(827,'2023-11-23 17:45:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(828,'2023-11-23 17:46:10',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(829,'2023-11-23 17:47:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(830,'2023-11-23 17:47:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(831,'2023-11-23 17:47:32',18,1,'Login','Inicio de sesión '),(832,'2023-11-23 17:48:50',18,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(833,'2023-11-23 20:14:37',1,1,'Login','Inicio de sesión '),(834,'2023-11-23 20:15:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(835,'2023-11-23 20:17:46',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(836,'2023-11-23 20:18:31',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(837,'2023-11-23 20:19:28',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(838,'2023-11-23 20:19:31',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(839,'2023-11-23 20:19:37',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(840,'2023-11-23 20:22:11',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(841,'2023-11-23 20:43:03',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(842,'2023-11-23 20:43:08',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(843,'2023-11-23 20:43:13',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(844,'2023-11-23 20:46:13',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(845,'2023-11-23 20:46:18',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(846,'2023-11-23 20:48:47',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(847,'2023-11-23 20:59:57',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(848,'2023-11-23 21:01:41',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(849,'2023-11-23 21:10:16',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(850,'2023-11-23 21:10:37',1,1,'Login','Inicio de sesión '),(851,'2023-11-23 21:13:52',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(852,'2023-11-23 21:14:05',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(853,'2023-11-23 21:19:24',1,1,'Login','Inicio de sesión '),(854,'2023-11-23 21:34:02',1,1,'Login','Inicio de sesión '),(855,'2023-11-23 21:37:30',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(856,'2023-11-23 21:46:23',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(857,'2023-11-23 22:34:32',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(858,'2023-11-23 22:40:12',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(859,'2023-11-23 22:41:31',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(860,'2023-11-23 22:42:31',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(861,'2023-11-23 22:42:35',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(862,'2023-11-23 22:42:44',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(863,'2023-11-23 22:44:17',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(864,'2023-11-23 22:49:18',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(865,'2023-11-23 22:49:36',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(866,'2023-11-23 22:52:07',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(867,'2023-11-23 23:05:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(868,'2023-11-23 23:05:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(869,'2023-11-23 23:05:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(870,'2023-11-23 23:06:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(871,'2023-11-23 23:11:20',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(872,'2023-11-23 23:11:29',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(873,'2023-11-23 23:11:46',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(874,'2023-11-23 23:15:22',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(875,'2023-11-23 23:25:04',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(876,'2023-11-23 23:39:05',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(877,'2023-11-24 00:14:54',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(878,'2023-11-24 00:15:06',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(879,'2023-11-24 18:01:26',1,1,'Login','Inicio de sesión '),(880,'2023-11-24 18:03:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(881,'2023-11-24 18:04:55',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(882,'2023-11-24 18:08:37',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(883,'2023-11-24 18:08:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(884,'2023-11-24 18:16:58',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(885,'2023-11-24 18:17:06',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(886,'2023-11-24 18:17:16',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(887,'2023-11-24 18:19:58',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(888,'2023-11-24 18:20:57',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(889,'2023-11-24 18:31:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(890,'2023-11-24 18:31:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(891,'2023-11-24 18:32:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(892,'2023-11-24 18:33:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(893,'2023-11-24 18:41:19',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(894,'2023-11-24 18:41:24',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(895,'2023-11-24 18:41:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(896,'2023-11-24 18:47:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(897,'2023-11-24 18:48:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(898,'2023-11-24 19:07:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(899,'2023-11-24 19:12:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(900,'2023-11-24 19:12:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(901,'2023-11-24 19:17:56',1,1,'Login','Inicio de sesión '),(902,'2023-11-24 19:19:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(903,'2023-11-24 19:19:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(904,'2023-11-24 19:20:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(905,'2023-11-24 19:23:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(906,'2023-11-24 19:28:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(907,'2023-11-24 19:32:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(908,'2023-11-24 19:35:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(909,'2023-11-24 19:37:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(910,'2023-11-24 19:39:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(911,'2023-11-24 19:44:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(912,'2023-11-24 19:47:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(913,'2023-11-24 19:47:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(914,'2023-11-24 19:48:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(915,'2023-11-24 19:49:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(916,'2023-11-24 19:49:25',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(917,'2023-11-24 19:52:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(918,'2023-11-24 19:53:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(919,'2023-11-24 19:55:20',1,5,'Salir','El usuario salió de la pantalla de citas'),(920,'2023-11-24 19:55:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(921,'2023-11-24 19:57:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(922,'2023-11-24 19:58:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(923,'2023-11-24 19:58:12',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(924,'2023-11-24 20:06:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(925,'2023-11-24 20:06:25',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(926,'2023-11-24 20:06:32',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(927,'2023-11-24 20:06:36',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(928,'2023-11-24 20:06:40',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(929,'2023-11-24 20:06:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(930,'2023-11-24 20:10:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(931,'2023-11-24 20:10:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(932,'2023-11-24 20:17:33',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(933,'2023-11-24 20:17:45',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(934,'2023-11-24 20:17:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(935,'2023-11-24 20:19:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(936,'2023-11-24 20:20:46',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(937,'2023-11-24 20:44:28',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(938,'2023-11-24 21:06:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(939,'2023-11-24 21:17:02',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(940,'2023-11-24 21:21:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(941,'2023-11-24 21:21:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(942,'2023-11-24 21:26:56',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(943,'2023-11-24 21:27:36',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(944,'2023-11-24 21:29:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(945,'2023-11-24 21:29:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(946,'2023-11-24 21:31:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(947,'2023-11-24 21:32:38',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(948,'2023-11-24 21:47:53',NULL,9,'Salir','Se salio de Lista de Empleados'),(949,'2023-11-24 21:50:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(950,'2023-11-24 22:11:14',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(951,'2023-11-24 22:11:17',NULL,9,'Salir','Se salio de Lista de Empleados'),(952,'2023-11-24 22:11:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(953,'2023-11-24 22:11:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(954,'2023-11-24 22:14:06',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(955,'2023-11-24 22:14:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(956,'2023-11-24 22:16:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(957,'2023-11-24 22:17:29',NULL,9,'Salir','Se salio de Lista de Empleados'),(958,'2023-11-24 22:17:38',NULL,9,'Salir','Se salio de Lista de Empleados'),(959,'2023-11-24 22:18:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(960,'2023-11-24 22:28:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(961,'2023-11-24 22:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(962,'2023-11-24 23:09:03',NULL,9,'Salir','Se salio de Lista de Empleados'),(963,'2023-11-24 23:11:51',NULL,9,'Salir','Se salio de Lista de Empleados'),(964,'2023-11-24 23:12:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(965,'2023-11-24 23:12:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(966,'2023-11-24 23:12:24',NULL,9,'Salir','Se salio de Lista de Empleados'),(967,'2023-11-24 23:13:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(968,'2023-11-24 23:14:03',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(969,'2023-11-24 23:15:31',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(970,'2023-11-24 23:15:43',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(971,'2023-11-24 23:39:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(972,'2023-11-24 23:40:27',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(973,'2023-11-24 23:43:12',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(974,'2023-11-24 23:43:21',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(975,'2023-11-25 00:08:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(976,'2023-11-25 00:12:54',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(977,'2023-11-25 00:13:20',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(978,'2023-11-25 00:13:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(979,'2023-11-25 00:13:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(980,'2023-11-25 00:18:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(981,'2023-11-25 00:18:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(982,'2023-11-25 00:18:34',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(983,'2023-11-25 00:18:56',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(984,'2023-11-25 00:18:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(985,'2023-11-25 00:18:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(986,'2023-11-25 00:19:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(987,'2023-11-25 00:21:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(988,'2023-11-25 00:22:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(989,'2023-11-25 00:22:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(990,'2023-11-25 00:22:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(991,'2023-11-25 00:22:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(992,'2023-11-25 00:22:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(993,'2023-11-25 00:22:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(994,'2023-11-25 00:25:36',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(995,'2023-11-25 00:26:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(996,'2023-11-25 00:26:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(997,'2023-11-25 00:26:16',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(998,'2023-11-25 00:26:39',NULL,9,'Salir','Se salio de Lista de Empleados'),(999,'2023-11-25 00:29:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1000,'2023-11-25 00:29:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1001,'2023-11-25 00:30:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1002,'2023-11-25 00:30:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1003,'2023-11-25 00:31:40',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1004,'2023-11-25 00:31:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1005,'2023-11-25 00:33:49',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1006,'2023-11-25 00:35:10',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1007,'2023-11-25 01:09:56',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1008,'2023-11-25 01:10:35',1,4,'Salir ','El ususario salio de la pantalla Lista de Clientes'),(1009,'2023-11-25 01:12:11',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1010,'2023-11-25 01:12:50',1,4,'Registro de clientes','El usuario registro un nuevo cliente'),(1011,'2023-11-25 01:13:23',1,4,'Registro de Expedien','El usuario registro un nuevo Expediente'),(1012,'2023-11-25 01:13:48',1,4,'Registro de Diagnost','El usuario registro un nuevo Diagnostico'),(1013,'2023-11-25 01:19:55',1,4,'Salir','El usuario salio de la pantalla de Lista de Expediente'),(1014,'2023-11-25 01:34:12',1,1,'Login','Inicio de sesión '),(1015,'2023-11-25 01:37:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1016,'2023-11-25 01:39:20',NULL,9,'Salir','Se salio de Lista de Empleados'),(1017,'2023-11-25 01:39:25',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1018,'2023-11-25 01:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1019,'2023-11-25 01:42:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1020,'2023-11-25 01:43:11',NULL,9,'Salir','Se salio de Lista de Empleados'),(1021,'2023-11-25 01:43:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1022,'2023-11-25 01:46:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1023,'2023-11-25 17:28:27',1,1,'Login','Inicio de sesión '),(1024,'2023-11-25 17:28:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1025,'2023-11-25 17:30:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1026,'2023-11-25 17:31:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1027,'2023-11-25 17:40:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1028,'2023-11-25 17:41:45',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1029,'2023-11-25 17:48:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1030,'2023-11-25 17:59:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1031,'2023-11-25 17:59:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1032,'2023-11-25 18:00:30',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1033,'2023-11-25 18:00:42',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1034,'2023-11-25 18:00:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1035,'2023-11-25 18:01:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1036,'2023-11-25 18:01:47',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1037,'2023-11-25 18:32:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1038,'2023-11-25 18:32:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1039,'2023-11-25 19:26:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1040,'2023-11-25 19:35:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1041,'2023-11-25 19:35:02',1,5,'Salir','El usuario salió de la pantalla de citas'),(1042,'2023-11-25 19:35:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1043,'2023-11-25 19:35:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1044,'2023-11-25 19:35:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1045,'2023-11-25 19:48:52',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1046,'2023-11-25 19:50:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(1047,'2023-11-25 19:51:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1048,'2023-11-25 19:51:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1049,'2023-11-25 19:51:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1050,'2023-11-25 19:51:23',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1051,'2023-11-25 19:51:25',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1052,'2023-11-25 20:37:07',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1053,'2023-11-25 21:01:13',1,1,'Login','Inicio de sesión '),(1054,'2023-11-25 21:01:15',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1055,'2023-11-25 21:01:17',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1056,'2023-11-25 21:02:06',0,3,'Salir','Se salio de la Lista de Proveedores'),(1057,'2023-11-25 21:04:00',1,1,'Login','Inicio de sesión '),(1058,'2023-11-25 21:04:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1059,'2023-11-25 21:04:05',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1060,'2023-11-25 21:25:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1061,'2023-11-25 21:27:57',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1062,'2023-11-25 22:01:10',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(1063,'2023-11-25 22:04:01',1,1,'Login','Inicio de sesión '),(1064,'2023-11-25 22:04:02',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1065,'2023-11-25 22:04:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1066,'2023-11-25 22:04:06',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1067,'2023-11-25 22:04:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1068,'2023-11-25 22:04:12',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1069,'2023-11-25 22:27:41',1,1,'Login','Inicio de sesión '),(1070,'2023-11-25 22:30:10',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1071,'2023-11-25 22:30:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1072,'2023-11-25 22:31:09',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1073,'2023-11-25 22:31:14',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1074,'2023-11-25 22:31:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1075,'2023-11-25 22:31:44',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1076,'2023-11-25 22:32:36',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1077,'2023-11-25 22:33:00',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1078,'2023-11-25 22:33:27',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1079,'2023-11-25 22:33:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1080,'2023-11-25 23:04:57',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1081,'2023-11-25 23:05:20',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1082,'2023-11-25 23:05:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1083,'2023-11-25 23:05:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1084,'2023-11-25 23:06:05',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1085,'2023-11-25 23:06:47',NULL,2,'Salir','Se salio de Lista de Empleados'),(1086,'2023-11-25 23:10:27',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1087,'2023-11-25 23:10:30',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1088,'2023-11-25 23:10:31',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1089,'2023-11-25 23:18:39',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1090,'2023-11-25 23:19:36',NULL,2,'Salir','Se salio de Lista de Empleados'),(1091,'2023-11-25 23:22:19',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1092,'2023-11-25 23:29:08',21,1,'Login','Inicio de sesión '),(1093,'2023-11-25 23:29:22',21,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1094,'2023-11-25 23:29:24',21,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1095,'2023-11-25 23:29:27',21,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1096,'2023-11-25 23:32:14',21,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1097,'2023-11-25 23:32:45',21,5,'Salir','El usuario salió de la pantalla de citas'),(1098,'2023-11-25 23:32:49',21,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(1099,'2023-11-25 23:33:54',21,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(1100,'2023-11-25 23:34:40',1,1,'Login','Inicio de sesión '),(1101,'2023-11-25 23:34:42',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1102,'2023-11-25 23:34:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1103,'2023-11-25 23:34:46',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1104,'2023-11-25 23:34:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1105,'2023-11-25 23:35:01',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1106,'2023-11-26 09:14:48',1,1,'Login','Inicio de sesión '),(1107,'2023-11-26 09:25:27',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1108,'2023-11-26 09:26:22',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1109,'2023-11-26 09:26:23',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1110,'2023-11-26 09:26:25',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1111,'2023-11-26 09:26:35',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1112,'2023-11-26 09:26:56',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1113,'2023-11-26 09:26:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1114,'2023-11-26 09:31:29',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1115,'2023-11-26 09:40:24',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1116,'2023-11-26 09:40:29',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1117,'2023-11-26 09:40:31',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1118,'2023-11-26 09:48:36',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1119,'2023-11-26 09:49:47',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1120,'2023-11-26 09:50:05',NULL,2,'Salir','Se salio de Lista de Empleados'),(1121,'2023-11-26 09:56:18',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1122,'2023-11-26 10:09:30',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1123,'2023-11-26 10:12:00',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1124,'2023-11-26 10:17:49',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1125,'2023-11-26 10:17:55',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1126,'2023-11-26 10:17:56',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1127,'2023-11-26 10:17:57',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1128,'2023-11-26 10:17:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1129,'2023-11-26 10:24:02',1,1,'Login','Inicio de sesión '),(1130,'2023-11-26 10:37:17',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1131,'2023-11-26 10:37:33',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1132,'2023-11-26 10:51:17',1,1,'Login','Inicio de sesión '),(1133,'2023-11-26 10:51:26',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1134,'2023-11-26 10:53:56',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1135,'2023-11-26 11:01:34',NULL,2,'Salir','Se salio de Lista de Empleados'),(1136,'2023-11-26 11:01:41',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1137,'2023-11-26 11:01:42',NULL,2,'Salir','Se salio de Lista de Empleados'),(1138,'2023-11-26 11:02:10',NULL,2,'Salir','Se salio de Lista de Empleados'),(1139,'2023-11-26 11:02:18',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1140,'2023-11-26 11:04:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1141,'2023-11-26 11:05:06',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1142,'2023-11-26 11:05:39',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1143,'2023-11-26 11:06:01',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1144,'2023-11-26 11:07:46',22,1,'Login','Inicio de sesión '),(1145,'2023-11-26 11:07:54',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1146,'2023-11-26 11:07:56',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1147,'2023-11-26 11:08:00',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1148,'2023-11-26 11:08:01',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1149,'2023-11-26 11:08:45',1,1,'Login','Inicio de sesión '),(1150,'2023-11-26 11:08:48',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1151,'2023-11-26 11:09:07',22,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1152,'2023-11-26 11:09:09',22,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1153,'2023-11-26 11:13:15',22,1,'Login','Inicio de sesión '),(1154,'2023-11-26 11:14:58',22,1,'Login','Inicio de sesión '),(1155,'2023-11-26 11:15:08',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1156,'2023-11-26 11:15:11',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1157,'2023-11-26 11:22:09',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1158,'2023-11-26 11:22:57',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1159,'2023-11-26 11:23:04',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(1160,'2023-11-26 11:23:06',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1161,'2023-11-26 11:25:04',22,1,'Login','Inicio de sesión '),(1162,'2023-11-26 11:28:04',22,1,'Login','Inicio de sesión '),(1163,'2023-11-26 11:30:43',22,1,'Login','Inicio de sesión '),(1164,'2023-11-26 11:31:03',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1165,'2023-11-26 11:31:31',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1166,'2023-11-26 11:31:55',22,1,'Login','Inicio de sesión '),(1167,'2023-11-26 11:38:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1168,'2023-11-26 11:40:28',1,5,'Salir','El usuario salió de la pantalla de citas'),(1169,'2023-11-26 11:40:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1170,'2023-11-26 11:41:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(1171,'2023-11-26 11:41:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1172,'2023-11-26 11:41:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(1173,'2023-11-26 11:41:59',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1174,'2023-11-26 11:42:01',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1175,'2023-11-26 11:47:34',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1176,'2023-11-26 11:47:37',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1177,'2023-11-26 12:02:55',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1178,'2023-11-26 12:03:18',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1179,'2023-11-26 12:08:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1180,'2023-11-26 12:08:48',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1181,'2023-11-26 12:09:55',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1182,'2023-11-26 12:09:57',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1183,'2023-11-26 12:13:49',1,1,'Login','Inicio de sesión '),(1184,'2023-11-26 12:13:51',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1185,'2023-11-26 12:13:52',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1186,'2023-11-26 12:13:53',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1187,'2023-11-26 12:20:34',1,1,'Login','Inicio de sesión '),(1188,'2023-11-26 12:20:37',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1189,'2023-11-26 12:21:40',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1190,'2023-11-26 12:34:06',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1191,'2023-11-26 12:35:36',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1192,'2023-11-26 12:35:40',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1193,'2023-11-26 12:43:36',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1194,'2023-11-26 12:43:39',1,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1195,'2023-11-26 12:52:48',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1196,'2023-11-26 12:56:59',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1197,'2023-11-26 12:57:01',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1198,'2023-11-26 13:25:33',NULL,2,'Salir','Se salio de Lista de Empleados'),(1199,'2023-11-26 13:25:49',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1200,'2023-11-26 13:26:52',NULL,2,'Salir','Se salio de Lista de Empleados'),(1201,'2023-11-26 13:32:46',23,1,'Login','Inicio de sesión '),(1202,'2023-11-26 13:32:54',23,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1203,'2023-11-26 13:37:48',23,1,'Login','Inicio de sesión '),(1204,'2023-11-26 13:38:07',23,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1205,'2023-11-26 13:39:21',23,2,'Salir','Se salio de la pantalla Registro de Empleado'),(1206,'2023-11-26 13:41:08',23,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1207,'2023-11-26 13:41:49',23,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1208,'2023-11-26 13:42:12',23,1,'Login','Inicio de sesión '),(1209,'2023-11-26 13:45:46',23,3,'Ingresar','El usuario ingreso a la Pantalla de Inventario'),(1210,'2023-11-26 13:47:32',23,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(1211,'2023-11-26 13:47:41',23,5,'Salir','El usuario salió de la pantalla de citas'),(1212,'2023-11-26 13:48:50',1,1,'Login','Inicio de sesión '),(1213,'2023-11-26 13:48:51',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios'),(1214,'2023-11-26 13:49:20',1,2,'Actualizacion','El usuario realizo actualizaciones en Usuario'),(1215,'2023-11-26 13:49:35',1,8,'Ingreso','Se ingreso a la pantalla de Configuración'),(1216,'2023-11-26 13:50:30',1,2,'Ingreso','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL),(64,1,'$2b$10$xAUmbBskeXsZGfsohOU9helQf59J/LtbtvapefustdWspsfkSuN1G','ADMIN',NULL,NULL,NULL),(65,18,'$2b$10$dVgGAG7Vr4/Fv3UrLVf2g.Lpd22xGhsOYYMWLLr2XKjkUO0eKpVt6','DEPTINFORMATICA',NULL,NULL,NULL),(66,18,'$2b$10$p8NQFxl1LkmoH0MeURIvROXsfKnbOrJ.KWlndOxLQSpVXImRK16BC','DEPTINFORMATICA',NULL,NULL,NULL),(67,19,NULL,NULL,NULL,NULL,NULL),(68,20,NULL,NULL,NULL,NULL,NULL),(69,21,'$2b$10$Ypio5Ia9vAIe88JdVgNvkOI1LuSrFxmOcwuxXVKAvCWEL7ZNsSKKm','MARCOSOLIS',NULL,NULL,NULL),(70,21,'$2b$10$8Ci5DlGiAfcQQqBlqbnZVeW5F72gKQ5LjCkrA3PRDsnLSdZvjdBsS','MARCOSOLIS',NULL,NULL,NULL),(71,22,'$2b$10$1a1.0ntQNiIdyFoLut/ad.i8l53RWquOLg9LTpoLpShb0z6la03hK','ERCIKPR',NULL,NULL,NULL),(72,22,'$2b$10$r2eZAf4nc6YUoZwGZoaAd.GU1cuQFgHZyXNLT.hHb9NbscHPs978e','ERCIKPR',NULL,NULL,NULL),(73,22,'$2b$10$4WEy9KQi/lfFElSB2subKe.6yR/x84JEzWEGQ2zmKaPbs8OBnRDIq','ERCIKPR',NULL,NULL,NULL),(74,22,'$2b$10$cJV/WYXcY/46M9P6Oj9LNuicBBVKoyvyXuMJSXPUUyb7e.NqrVXoC','ERCIKPR',NULL,NULL,NULL),(75,23,'$2b$10$vMbxpaByLiG1DNeO16FLseZnkAozONrLIx2nSt1TVEPtgvjN.7.kG','USUARIOFINAL',NULL,NULL,NULL),(76,23,'$2b$10$xh4/tEA7HNXsiyvvZcqWAe.cdgS0RaMB2hokmO1txNM/C7PhAdbBq','USUARIOFINAL',NULL,NULL,NULL),(77,23,'$2b$10$edec416yAA8G3mQak8jLcOURn58V.PaMLOgcfk5oq5vPe9bq9g/46','USUARIOFINAL',NULL,NULL,NULL),(78,23,'$2b$10$dvtE86fLZ1f8S3JcAemH0OnCgSKLRs7EV/glbquNMTRrcJJEBXA3q','USUARIOFINAL',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','2',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿CUAL ES TU COLOR FAVORITO?','Jared',NULL,NULL,NULL),(2,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo',NULL,NULL,NULL),(3,'¿CUAL ES EL NOMBRE DWE TU ABUELO PATERNO?','Erick',NULL,NULL,NULL),(4,'¿COMO SE LLAMABA TU PRIMERA MASCOTA?','ERICKK','2023-03-15',NULL,NULL),(5,'¿A DONDE TE GUSTRAIA VIAJAR?','Moisa','2023-03-21',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL),(1,18,'MORADO','DEPTINFORMATICA','2023-11-23',NULL,NULL),(2,18,'OLIMPIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(5,18,'COLOMBIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(4,18,'GOKU','DEPTINFORMATICA','2023-11-23',NULL,NULL),(3,18,'NICOLAS','DEPTINFORMATICA','2023-11-23',NULL,NULL),(1,21,'GRIS','MARCO ANTONIO','2023-11-26',NULL,NULL),(3,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(5,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(4,21,'ROJO','MARCO ANTONIO','2023-11-26',NULL,NULL),(1,22,'AZUL','ERCIKPR','2023-11-26',NULL,NULL),(2,22,'BARCELONA','ERCIKPR','2023-11-26',NULL,NULL),(1,23,'AZUL','USUARIOFINAL','2023-11-26',NULL,NULL),(2,23,'OLIMPIA','USUARIOFINAL','2023-11-26',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','A',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'ASESOR DE VENTAS','Acceso a modulo de ventas e inventario','A',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'TECNICO','El que da mantenimiento a los server','I',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','A',NULL,'2023-11-05 03:43:23',NULL,NULL),(11,'GERENTE','GERENTE DE TIENDAS','A',NULL,'2023-11-25 05:40:26',NULL,NULL),(14,'PRUEBA','PRUEBA','A',NULL,'2023-11-26 17:21:52',NULL,NULL),(15,'ROL FINAL','ROL FINAL','A',NULL,'2023-11-26 19:39:02',NULL,NULL);
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
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Inactivo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(22,'ERCIKPR','ERCIKPR','Activo','$2b$10$MKuko2F9DSpF1wTqeY1VRewcE4HQMGr3TECXMuZOWBtMOxpgi2oN6',1,NULL,0,0,'2024-02-24','erickpavon544@gmail.com',45,NULL,'2023-11-26',NULL,'2023-11-26'),(23,'USUARIOFINAL','USUARIOFINAL','Activo','$2b$10$V/Y0W3c9AjtL9O01MQq3GO/dt/DZ5NximP4H/XzFYSLYCUoH4JO7G',1,NULL,0,0,'2024-02-24','karenaguilera2105@gmail.com',46,NULL,'2023-11-26',NULL,'2023-11-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (19,NULL,3,'2023-11-26 15:19:49','Pendiente',1000,61392),(20,NULL,4,'2023-11-26 16:13:04','Pendiente',1000,2256),(21,16,4,'2023-11-26 16:15:20','Pendiente',1000,7340),(22,16,4,'2023-11-26 16:24:54','Pendiente',5000,2340),(23,16,4,'2023-11-26 16:25:55','Pagado',2340,0),(24,NULL,4,'2023-11-26 16:28:01','Pendiente',3000,2896),(25,NULL,4,'2023-11-26 16:28:28','Pagado',2896,0),(26,20,4,'2023-11-26 18:10:28','Pendiente',2000,220),(27,20,4,'2023-11-26 18:21:18','Pagado',220,0),(28,21,4,'2023-11-26 18:36:15','Pendiente',3000,256);
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
INSERT INTO `tbl_pais` VALUES (1,'HONDURAS','A'),(2,'COSTA RICA','A'),(3,'ESTADOS UNIDOS','A'),(4,'MEXICO','A'),(5,'PANAMA','A'),(6,'ESPAÑA','A'),(7,'ITALIA','A');
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','n',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL),(2,8,'n','n','n','n',NULL,NULL,NULL,NULL),(3,8,'n','n','n','n',NULL,NULL,NULL,NULL),(4,8,'n','n','n','n',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'n','n','n','n',NULL,NULL,NULL,NULL),(8,8,'n','n','n','n',NULL,NULL,NULL,NULL),(9,8,'n','n','n','n',NULL,NULL,NULL,NULL),(2,9,'n','n','n','n',NULL,NULL,NULL,NULL),(3,9,'n','n','n','n',NULL,NULL,NULL,NULL),(4,9,'n','n','n','n',NULL,NULL,NULL,NULL),(5,9,'n','n','n','n',NULL,NULL,NULL,NULL),(6,9,'n','n','n','n',NULL,NULL,NULL,NULL),(7,9,'n','n','n','n',NULL,NULL,NULL,NULL),(8,9,'n','n','n','n',NULL,NULL,NULL,NULL),(9,9,'n','n','n','n',NULL,NULL,NULL,NULL),(2,10,'n','n','n','n',NULL,NULL,NULL,NULL),(3,10,'n','n','n','n',NULL,NULL,NULL,NULL),(4,10,'n','n','n','n',NULL,NULL,NULL,NULL),(5,10,'n','n','n','n',NULL,NULL,NULL,NULL),(6,10,'n','n','n','n',NULL,NULL,NULL,NULL),(7,10,'n','n','n','n',NULL,NULL,NULL,NULL),(8,10,'n','n','n','n',NULL,NULL,NULL,NULL),(9,10,'n','n','n','n',NULL,NULL,NULL,NULL),(2,11,'n','n','n','n',NULL,NULL,NULL,NULL),(3,11,'n','n','n','n',NULL,NULL,NULL,NULL),(4,11,'n','n','n','n',NULL,NULL,NULL,NULL),(5,11,'n','n','n','n',NULL,NULL,NULL,NULL),(6,11,'n','n','n','n',NULL,NULL,NULL,NULL),(7,11,'n','n','n','n',NULL,NULL,NULL,NULL),(8,11,'n','n','n','n',NULL,NULL,NULL,NULL),(9,11,'n','n','n','n',NULL,NULL,NULL,NULL),(2,12,'n','n','n','n',NULL,NULL,NULL,NULL),(3,12,'n','n','n','n',NULL,NULL,NULL,NULL),(4,12,'n','n','n','n',NULL,NULL,NULL,NULL),(5,12,'n','n','n','n',NULL,NULL,NULL,NULL),(6,12,'n','n','n','n',NULL,NULL,NULL,NULL),(7,12,'n','n','n','n',NULL,NULL,NULL,NULL),(8,12,'n','n','n','n',NULL,NULL,NULL,NULL),(9,12,'n','n','n','n',NULL,NULL,NULL,NULL),(2,13,'n','n','n','n',NULL,NULL,NULL,NULL),(3,13,'n','n','n','n',NULL,NULL,NULL,NULL),(4,13,'n','n','n','n',NULL,NULL,NULL,NULL),(5,13,'n','n','n','n',NULL,NULL,NULL,NULL),(6,13,'n','n','n','n',NULL,NULL,NULL,NULL),(7,13,'n','n','n','n',NULL,NULL,NULL,NULL),(8,13,'n','n','n','n',NULL,NULL,NULL,NULL),(9,13,'n','n','n','n',NULL,NULL,NULL,NULL),(2,14,'s','s','s','s',NULL,NULL,NULL,NULL),(3,14,'s','s','s','s',NULL,NULL,NULL,NULL),(4,14,'s','s','s','s',NULL,NULL,NULL,NULL),(5,14,'s','s','s','s',NULL,NULL,NULL,NULL),(6,14,'n','n','n','n',NULL,NULL,NULL,NULL),(7,14,'s','s','s','s',NULL,NULL,NULL,NULL),(8,14,'s','s','s','s',NULL,NULL,NULL,NULL),(9,14,'s','s','s','s',NULL,NULL,NULL,NULL),(2,15,'s','s','s','s',NULL,NULL,NULL,NULL),(3,15,'n','n','s','s',NULL,NULL,NULL,NULL),(4,15,'n','n','n','s',NULL,NULL,NULL,NULL),(5,15,'n','n','n','n',NULL,NULL,NULL,NULL),(6,15,'n','n','n','n',NULL,NULL,NULL,NULL),(7,15,'n','s','n','s',NULL,NULL,NULL,NULL),(8,15,'n','n','n','n',NULL,NULL,NULL,NULL),(9,15,'s','n','n','s',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'CALVIN KELIN','A'),(3,3,3000,10,80,'MODERNOS','I'),(4,4,550,100,500,'LENTES ','I'),(9,5,14000,2,23,'FACHERITOS','A'),(13,6,2000,2,12,'HOLA ELINE','A'),(14,7,2000,1,200,'AROS AZULES Y BLANCOS','A');
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25','A',0.12,'PAQUETAZOS'),(2,'2023-10-13','2023-10-25','A',0.4,'PROMO BACK SCHOOL');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','JUAN GOMEZ',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','96235694','erickpavon544@gmail.com','A'),(2,'INVERSIONES CZ','CARMEN VILLAREAL',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10'),(9,'0715190022222','CITA JSJAJAJ','2024-11-17'),(10,NULL,'CITA MIOPIA','0000-00-00'),(11,'0801200010887','CITA NADA','2024-11-20'),(12,NULL,'CITA MIOPIA','0000-00-00'),(13,'0715199922344','CITA ASTGMATISMO LEVE','2024-11-22'),(14,'0801199322341','CITA MIOPIA','2024-11-23'),(15,'0805198844444','CITA HOLA NOSE','2024-11-23'),(16,NULL,'CITA NADA','0000-00-00'),(17,NULL,'CITA ASTGNATISMO','0000-00-00'),(18,'0208200101153','CITA NADA','2024-11-24'),(19,NULL,'CITA NADA','0000-00-00'),(20,NULL,'CITA NADA','0000-00-00'),(21,'0815199700655','CITA NADA','2024-11-25'),(22,'0817199945555','CITA NADA','2024-11-25'),(23,'0809188856666','CITA NADA','2024-11-25'),(24,'0716198622345','CITA MIOPIA','2024-11-26'),(25,'0801200019999','CITA MIOPIA','2024-11-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'PASEO LIQUIDAMBAR','20282862','A'),(2,8,18,'CALLE PEATONAL','99584100','A'),(3,3,32,'CENTRO DE COMAYAGUA','22306587','A'),(4,1,4,'PARQUE LA AURORA','22115596','A'),(5,5,30,'LAS MINITAS','22346712','A'),(6,5,5,'VILLA VIEJA','23182862','A'),(7,1,48,'EL CARRIZAL','98761212','A');
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
INSERT INTO `tbl_tipomovimiento` VALUES (5,'ANULADO'),(1,'ENTRADA'),(3,'ENTRADA EXTRAORDINARIA'),(2,'SALIDA'),(4,'SALIDA EXTRAORDINARIA');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'EFECTIVO','A'),(2,'TARJETA DE DEBITO','A'),(3,'TARJETA DE CREDITO','A'),(4,'CONTADO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MzE2NjIiLCJpYXQiOjE3MDA1NDA0NzQsImV4cCI6MTcwMDU0MDc3NH0.xhhCb0cDAf_LRy8CV6t2biCOIxg9WwLSY0Gl1exTp7k'),(2,22,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyNDgxODIiLCJpYXQiOjE3MDEwMTg4MDgsImV4cCI6MTcwMTAxOTEwOH0.3yZ6As2DO8LGVNPC2CuyGPck3qvzquKlJbeI3FOMMu4'),(3,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5Mzg3MjAiLCJpYXQiOjE3MDEwMjczMDQsImV4cCI6MTcwMTAyNzYwNH0.rc5f_OcmgcBCBe5IO92G9o_FlRzpzanJAlMxaBPUmjs');
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
  `Estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (16,'2023-11-26 16:12:31','0000-00-00','0000-00-00','0802200101153',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3256,'A'),(17,'2023-11-26 16:15:14','0000-00-00','0000-00-00','0716198622345',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',8340,'A'),(18,'2023-11-26 16:27:38','0000-00-00','0000-00-00','0801199411205',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5896,'A'),(19,'2023-11-26 16:31:27','0000-00-00','0000-00-00','0716198622345',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2640,'A'),(20,'2023-11-26 18:10:22','0000-00-00','0000-00-00','0801200019999',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2220,'A'),(21,'2023-11-26 18:36:10','0000-00-00','0000-00-00','0801200019999',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3256,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456),(9,9,1,1,2,2,900,1,500,1450000,174000,1276000),(10,10,1,1,1,2,1000,1,1,3000,360,2640),(11,11,1,1,2,4,495,1,1,2495,299.4,2195.6),(12,12,1,1,1,4,550,1,1,2550,306,2244),(13,13,1,1,1,4,550,2,1,2350,282,2068),(14,14,2,2,2,13,1800,8,1,71800,28720,43080),(15,15,3,1,2,2,900,8,1,70900,8508,62392),(16,16,3,1,2,13,1700,10,1,3700,444,3256),(17,17,2,2,2,9,11900,10,1,13900,5560,8340),(18,18,3,1,1,2,1000,10,1,3000,360,2640),(19,18,2,1,2,13,1700,10,1,3700,444,3256),(20,19,2,1,1,2,1000,10,1,3000,360,2640),(21,20,3,2,2,14,1700,10,1,3700,1480,2220),(22,21,3,1,2,14,1700,10,1,3700,444,3256);
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

-- Dump completed on 2023-11-26 13:52:36
