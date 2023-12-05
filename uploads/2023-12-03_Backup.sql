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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0714199923455','MARIA','MARTINEZ',2,'2023-09-12','BELLA VISTA','99087365','',38),('0716198622345','PEDRO','AGUILERA',1,'2023-01-02','BARRIO LA LOMITA','99076543','',33),('0716199923444','MULTIOPTICAS','MULTIOPTICAS',2,'2023-05-31','PASEO LIQUIDAMBAR','90088655','',37),('0801199332424','CLIENTE','FINAL',2,'2022-10-11','BARRIO LAS BRISAS','99663436','cliente@gmail.com',35),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',4),('0801200019999','JARED DAVID','SALGADO ORTIZ',1,'2002-07-22','BARRIO LA MERY DE FLORES','99004455','',34),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',9),('0817200019999','MARIA','GONZALES',2,'2023-03-06','MEXICO','99076535','empresa@gmail.com',36);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000,'A'),(2,'2023-08-20 17:35:02',6000,'A'),(3,'2023-11-09 05:30:49',14000,'A'),(4,'2023-11-10 14:52:11',15000,'A'),(5,'2023-11-10 16:27:37',110,'A'),(6,'2023-11-23 03:14:07',14111,'A'),(7,'2023-11-26 01:23:14',10000,'A'),(8,'2023-11-26 17:53:51',1000,'I'),(9,'2023-11-26 18:22:08',100,'I'),(10,'2023-11-26 20:38:20',1100.25,'I'),(11,'2023-12-02 01:47:49',1000,'I'),(12,'2023-12-04 00:53:28',2000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (15,12,33,200,17,2000);
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'A'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'I'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'A'),(45,'ERICK','RAMIREZ','99088762',1,1,'0801200001115','2024-02-16','1899-11-30','2012-06-04','A'),(46,'EMPLEADO','FINAL','99008762',1,1,'0801201019999','2023-11-26',NULL,'2023-03-09','A'),(47,'MARIO','CASCO','99007625',2,1,'0801199223455','2023-11-30',NULL,'1999-02-02','A'),(48,'MARIO','ROSALES','99076655',4,1,'0715199988776','2023-12-02',NULL,'2023-05-17','A'),(49,'JARED','ORTIZ','90076535',1,1,'0715199888763','2023-11-28',NULL,'2023-08-08','A'),(50,'HEIDY','ZELAYA','99006533',2,2,'0801200010888','2023-12-03',NULL,'2023-07-03','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(32,'2023-11-25 06:00:00','0716198622345',1),(33,'2023-11-25 06:00:00','0801200019999',1),(34,'2023-11-25 06:00:00','0801199332424',1),(35,'2023-11-30 06:00:00','0716199923444',1),(36,'2023-12-03 06:00:00','0714199923455',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(26,32,'MIOPIA','KAREN AGUILERA','KAREN AGUILERA','NINGUNO','1','1','1','1','1','1','1','1','1','1','0','1','2023-11-25','2024-11-26'),(27,33,'MIOPIA','ERICK','HEIDY','NINGUNO','2','1','2','1','2','1','2','1','2','1','1','1','2023-11-25','2024-11-26'),(28,33,'NADA','SEYDI','MICHAEL','NADA','6','4','6','4','6','4','6','4','6','4','6','4','2023-11-25','2024-11-26'),(29,34,'MIOPIA','JUANA','JUAN','NINGUNO','2','1','2','1','2','1','2','1','2','1','2','1','2023-11-25','2024-11-26'),(30,35,'MULTIOPTICAS','HONDURAS','TEGUS','NINGUNO','2','1','2','1','1','1','2','1','2','1','2','1','2023-11-30','2024-12-01'),(31,36,'MIOPIA','ERICK','ERICK','NINGUNO','2','-1','2','1','2','1','2','1','1','1','2','1','2023-12-03','2024-12-03');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'GARANTIA POR AJUSTES',3,'A'),(2,'GARANTIA DE CALIDAD',3,'A'),(3,'GARANTIA NORMAL',5,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(3,3,91),(7,14,194),(8,15,98),(9,16,0),(10,17,199);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (56,2,15,1,'2023-12-03 03:37:04',1,NULL),(57,2,13,1,'2023-12-03 21:50:12',1,NULL),(58,1,17,1,'2023-12-04 06:00:00',200,NULL),(59,2,17,1,'2023-12-04 00:59:07',1,NULL),(60,2,14,1,'2023-12-04 00:59:07',1,NULL);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardexcompra`
--

DROP TABLE IF EXISTS `tbl_kardexcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardexcompra` (
  `idKardex` int(11) DEFAULT NULL,
  `idCompra` int(11) DEFAULT NULL,
  KEY `idKardex` (`idKardex`),
  KEY `idCompra` (`idCompra`),
  CONSTRAINT `tbl_kardexcompra_ibfk_1` FOREIGN KEY (`idKardex`) REFERENCES `tbl_kardex` (`IdKardex`),
  CONSTRAINT `tbl_kardexcompra_ibfk_2` FOREIGN KEY (`idCompra`) REFERENCES `tbl_compra` (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardexcompra`
--

LOCK TABLES `tbl_kardexcompra` WRITE;
/*!40000 ALTER TABLE `tbl_kardexcompra` DISABLE KEYS */;
INSERT INTO `tbl_kardexcompra` VALUES (58,12);
/*!40000 ALTER TABLE `tbl_kardexcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardexventa`
--

DROP TABLE IF EXISTS `tbl_kardexventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardexventa` (
  `idKardex` int(11) DEFAULT NULL,
  `idVenta` int(11) DEFAULT NULL,
  KEY `idKardex` (`idKardex`),
  KEY `idVenta` (`idVenta`),
  CONSTRAINT `tbl_kardexventa_ibfk_1` FOREIGN KEY (`idKardex`) REFERENCES `tbl_kardex` (`IdKardex`),
  CONSTRAINT `tbl_kardexventa_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `tbl_venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardexventa`
--

LOCK TABLES `tbl_kardexventa` WRITE;
/*!40000 ALTER TABLE `tbl_kardexventa` DISABLE KEYS */;
INSERT INTO `tbl_kardexventa` VALUES (56,26),(57,27),(59,28),(60,28);
/*!40000 ALTER TABLE `tbl_kardexventa` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (10,'TRANSITION',2000,'A'),(11,'MONOFOCAL',2000,'A'),(12,'BIFOCALES',1000,'A'),(13,'HOLA',1000,'A'),(14,'ANTIREFLEJOS 3D',4000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'ELINE','A'),(6,'INFORMATICA','A'),(7,'MARCA FINAL','A'),(8,'COCO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(6,5,'ELINE PLUS',2023,'A'),(7,6,'INFORMATICAJ9',2023,'A'),(8,7,'MODELO FINAL',2023,'A'),(9,NULL,'NADA',2020,'A'),(10,NULL,'ELINE HOLA',2022,'A'),(11,NULL,'HOLIS',2020,'A'),(12,NULL,'HOLAA',2020,'A'),(13,8,'COCO BALEADA',2023,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-12-01 13:38:06',1,1,'Login','Inicio de sesión '),(2,'2023-12-01 17:38:40',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(3,'2023-12-01 17:39:40',NULL,2,'Salir','Se salio de Lista de Empleados'),(4,'2023-12-01 18:04:26',NULL,2,'Salir','Se salio de Lista de Empleados'),(5,'2023-12-01 21:29:36',1,5,'Salir','El usuario salió de la pantalla de citas'),(6,'2023-12-02 10:01:49',1,1,'Login','Inicio de sesión '),(7,'2023-12-02 10:25:38',NULL,2,'Salir','Se salio de Lista de Empleados'),(8,'2023-12-02 15:21:13',1,1,'Login','Inicio de sesión '),(9,'2023-12-02 20:23:07',1,1,'Login','Inicio de sesión '),(10,'2023-12-02 20:25:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(11,'2023-12-02 20:41:46',NULL,2,'Salir','Se salio de Lista de Empleados'),(12,'2023-12-02 20:44:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(13,'2023-12-02 21:02:39',1,1,'Login','Inicio de sesión '),(14,'2023-12-02 21:12:46',1,1,'Login','Inicio de sesión '),(15,'2023-12-02 21:20:01',1,1,'Login','Inicio de sesión '),(16,'2023-12-02 21:24:31',1,1,'Login','Inicio de sesión '),(17,'2023-12-02 21:25:23',NULL,2,'Salir','Se salio de Lista de Empleados'),(18,'2023-12-02 21:26:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(19,'2023-12-02 21:26:56',NULL,2,'Salir','Se salio de Lista de Empleados'),(20,'2023-12-02 21:27:03',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(21,'2023-12-02 21:29:34',1,1,'Login','Inicio de sesión '),(22,'2023-12-02 21:36:05',1,1,'Login','Inicio de sesión '),(23,'2023-12-02 21:45:13',25,1,'Login','Inicio de sesión '),(24,'2023-12-03 15:48:23',1,1,'Login','Inicio de sesión '),(25,'2023-12-03 17:37:24',1,1,'Login','Inicio de sesión '),(26,'2023-12-03 17:48:52',1,1,'Login','Inicio de sesión '),(27,'2023-12-03 18:27:03',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(28,'2023-12-03 18:27:17',NULL,2,'Salir','Se salio de Lista de Empleados'),(29,'2023-12-03 18:32:48',26,1,'Login','Inicio de sesión '),(30,'2023-12-03 18:36:47',26,1,'Login','Inicio de sesión '),(31,'2023-12-03 18:38:34',1,1,'Login','Inicio de sesión '),(32,'2023-12-03 18:41:13',1,5,'Salir','El usuario salió de la pantalla de citas'),(33,'2023-12-03 18:41:55',1,5,'Salir','El usuario salió de la pantalla de citas'),(34,'2023-12-03 18:43:21',1,5,'Salir','El usuario salió de la pantalla de citas');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL),(64,1,'$2b$10$xAUmbBskeXsZGfsohOU9helQf59J/LtbtvapefustdWspsfkSuN1G','ADMIN',NULL,NULL,NULL),(65,18,'$2b$10$dVgGAG7Vr4/Fv3UrLVf2g.Lpd22xGhsOYYMWLLr2XKjkUO0eKpVt6','DEPTINFORMATICA',NULL,NULL,NULL),(66,18,'$2b$10$p8NQFxl1LkmoH0MeURIvROXsfKnbOrJ.KWlndOxLQSpVXImRK16BC','DEPTINFORMATICA',NULL,NULL,NULL),(67,19,NULL,NULL,NULL,NULL,NULL),(68,20,NULL,NULL,NULL,NULL,NULL),(69,21,'$2b$10$Ypio5Ia9vAIe88JdVgNvkOI1LuSrFxmOcwuxXVKAvCWEL7ZNsSKKm','MARCOSOLIS',NULL,NULL,NULL),(70,21,'$2b$10$8Ci5DlGiAfcQQqBlqbnZVeW5F72gKQ5LjCkrA3PRDsnLSdZvjdBsS','MARCOSOLIS',NULL,NULL,NULL),(71,22,'$2b$10$1a1.0ntQNiIdyFoLut/ad.i8l53RWquOLg9LTpoLpShb0z6la03hK','ERCIKPR',NULL,NULL,NULL),(72,22,'$2b$10$r2eZAf4nc6YUoZwGZoaAd.GU1cuQFgHZyXNLT.hHb9NbscHPs978e','ERCIKPR',NULL,NULL,NULL),(73,22,'$2b$10$4WEy9KQi/lfFElSB2subKe.6yR/x84JEzWEGQ2zmKaPbs8OBnRDIq','ERCIKPR',NULL,NULL,NULL),(74,22,'$2b$10$cJV/WYXcY/46M9P6Oj9LNuicBBVKoyvyXuMJSXPUUyb7e.NqrVXoC','ERCIKPR',NULL,NULL,NULL),(75,23,'$2b$10$vMbxpaByLiG1DNeO16FLseZnkAozONrLIx2nSt1TVEPtgvjN.7.kG','USUARIOFINAL',NULL,NULL,NULL),(76,23,'$2b$10$xh4/tEA7HNXsiyvvZcqWAe.cdgS0RaMB2hokmO1txNM/C7PhAdbBq','USUARIOFINAL',NULL,NULL,NULL),(77,23,'$2b$10$edec416yAA8G3mQak8jLcOURn58V.PaMLOgcfk5oq5vPe9bq9g/46','USUARIOFINAL',NULL,NULL,NULL),(78,23,'$2b$10$dvtE86fLZ1f8S3JcAemH0OnCgSKLRs7EV/glbquNMTRrcJJEBXA3q','USUARIOFINAL',NULL,NULL,NULL),(79,24,'$2b$10$/rYfyPTpRHZWixDk0PH4uu8p3ypoDlHMLmty850b/5L436IYiZYAy','MARIOCASCO',NULL,NULL,NULL),(80,25,'$2b$10$y/FoY/zZFpxuOkZLWQkTx.MRdc90ntTrIWKeUhecixQv4Mv6JmFFK','JAREDLOCO',NULL,NULL,NULL),(81,25,'$2b$10$M1Tqzm25U6i/NFU/J.v/tOb39RyBeLovD1XB4mz1tc25O/Lj015d6','JAREDLOCO',NULL,NULL,NULL),(82,26,'$2b$10$iNd8OzbyjwmiElbw2orjkOnXAAqqOYMObnvuAWQo.p0tAnKWcwZv6','HEIDYPAMELA',NULL,NULL,NULL),(83,26,'$2b$10$y/JUwvpF746ImauiM0w9h.L1lY6ltBpzIkBbIdQLsae5fsH2WK4Jm','HEIDYPAMELA',NULL,NULL,NULL),(84,26,'$2b$10$8YjpYzcCG.ooqPoM/toLy.3NsNX6exUDmkgXAMTfaAwOt/GOaBv1u','HEIDYPAMELA',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','1',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticashn504@gmail.com ',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL),(15,1,'ADMIN_CORREO_PASS','hlnc bxyg ahpg ngfs',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL),(1,18,'MORADO','DEPTINFORMATICA','2023-11-23',NULL,NULL),(2,18,'OLIMPIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(5,18,'COLOMBIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(4,18,'GOKU','DEPTINFORMATICA','2023-11-23',NULL,NULL),(3,18,'NICOLAS','DEPTINFORMATICA','2023-11-23',NULL,NULL),(1,21,'GRIS','MARCO ANTONIO','2023-11-26',NULL,NULL),(3,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(5,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(4,21,'ROJO','MARCO ANTONIO','2023-11-26',NULL,NULL),(1,22,'AZUL','ERCIKPR','2023-11-26',NULL,NULL),(2,22,'BARCELONA','ERCIKPR','2023-11-26',NULL,NULL),(1,23,'AZUL','USUARIOFINAL','2023-11-26',NULL,NULL),(2,23,'OLIMPIA','USUARIOFINAL','2023-11-26',NULL,NULL),(2,24,'REAL MADRID','MARIOCASCO','2023-12-01',NULL,NULL),(3,24,'JUAN','MARIOCASCO','2023-12-01',NULL,NULL),(1,25,'VERDE','JAREDLOCO','2023-12-03',NULL,NULL),(2,25,'NO TENGO','JAREDLOCO','2023-12-03',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Inactivo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(22,'ERCIKPR','ERCIKPR','Activo','$2b$10$MKuko2F9DSpF1wTqeY1VRewcE4HQMGr3TECXMuZOWBtMOxpgi2oN6',1,NULL,0,0,'2024-02-24','erickpavon544@gmail.com',45,NULL,'2023-11-26',NULL,'2023-11-26'),(23,'USUARIOFINAL','USUARIOFINAL','Activo','$2b$10$V/Y0W3c9AjtL9O01MQq3GO/dt/DZ5NximP4H/XzFYSLYCUoH4JO7G',1,NULL,0,0,'2024-02-24','karenaguilera2105@gmail.com',46,NULL,'2023-11-26',NULL,'2023-11-26'),(24,'MARIOCASCO','MARIOCASCO','Nuevo','$2b$10$dvVJJAY/FyyDe3Mv4b0RdOI6mDx.77xvlyb/Oub3ihEhzL1TfmTce',1,NULL,0,0,'2024-02-28','karenaguilera201422@gmail.com',47,NULL,'2023-11-30',NULL,'2023-11-30'),(25,'JAREDLOCO','JAREDLOCO','Activo','$2b$10$4qPkN82DrNN2lDREpVPEO.JUR8eKog9vLUzd2jGGe5M3L25D31D1W',2,NULL,0,0,'2024-03-01','jaredsor02@gmail.com',49,NULL,'2023-12-02',NULL,'2023-12-02'),(26,'HEIDYPAMELA','HEIDYPAMELA','Activo','$2b$10$DDCEOjRs5VauL3HQ9fcRw.y/dGHsdvij6WnR.imQtf8pSiSsJd3te',8,NULL,0,0,'2024-03-02','pamela24duron@gmail.com',50,NULL,'2023-12-03',NULL,'2023-12-03');
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
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Citas','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Compras','Pagina de gestion de compras','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (35,26,4,'2023-12-03 03:37:10','Pendiente',100,780.88),(36,26,4,'2023-12-03 03:38:56','Pagado',780.88,0),(37,27,4,'2023-12-03 21:50:20','Pendiente',200,3320),(38,28,4,'2023-12-04 00:59:15','Pendiente',7000,920),(39,28,4,'2023-12-04 01:00:35','Pagado',920,0);
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','n',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'n','n','n','n',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'n','n','n','n',NULL,NULL,NULL,NULL),(2,8,'n','n','n','n',NULL,NULL,NULL,NULL),(3,8,'n','n','n','n',NULL,NULL,NULL,NULL),(4,8,'n','n','n','s',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'n','n','n','n',NULL,NULL,NULL,NULL),(8,8,'n','n','n','n',NULL,NULL,NULL,NULL),(9,8,'s','n','n','s',NULL,NULL,NULL,NULL),(2,9,'n','n','n','n',NULL,NULL,NULL,NULL),(3,9,'n','n','n','n',NULL,NULL,NULL,NULL),(4,9,'n','n','n','n',NULL,NULL,NULL,NULL),(5,9,'n','n','n','n',NULL,NULL,NULL,NULL),(6,9,'n','n','n','n',NULL,NULL,NULL,NULL),(7,9,'n','n','n','n',NULL,NULL,NULL,NULL),(8,9,'n','n','n','n',NULL,NULL,NULL,NULL),(9,9,'n','n','n','n',NULL,NULL,NULL,NULL),(2,10,'n','n','n','n',NULL,NULL,NULL,NULL),(3,10,'n','n','n','n',NULL,NULL,NULL,NULL),(4,10,'n','n','n','n',NULL,NULL,NULL,NULL),(5,10,'n','n','n','n',NULL,NULL,NULL,NULL),(6,10,'n','n','n','n',NULL,NULL,NULL,NULL),(7,10,'n','n','n','n',NULL,NULL,NULL,NULL),(8,10,'n','n','n','n',NULL,NULL,NULL,NULL),(9,10,'n','n','n','n',NULL,NULL,NULL,NULL),(2,11,'n','n','n','n',NULL,NULL,NULL,NULL),(3,11,'n','n','n','n',NULL,NULL,NULL,NULL),(4,11,'n','n','n','n',NULL,NULL,NULL,NULL),(5,11,'n','n','n','n',NULL,NULL,NULL,NULL),(6,11,'n','n','n','n',NULL,NULL,NULL,NULL),(7,11,'n','n','n','n',NULL,NULL,NULL,NULL),(8,11,'n','n','n','n',NULL,NULL,NULL,NULL),(9,11,'n','n','n','n',NULL,NULL,NULL,NULL),(2,12,'n','n','n','n',NULL,NULL,NULL,NULL),(3,12,'n','n','n','n',NULL,NULL,NULL,NULL),(4,12,'n','n','n','n',NULL,NULL,NULL,NULL),(5,12,'n','n','n','n',NULL,NULL,NULL,NULL),(6,12,'n','n','n','n',NULL,NULL,NULL,NULL),(7,12,'n','n','n','n',NULL,NULL,NULL,NULL),(8,12,'n','n','n','n',NULL,NULL,NULL,NULL),(9,12,'n','n','n','n',NULL,NULL,NULL,NULL),(2,13,'n','n','n','n',NULL,NULL,NULL,NULL),(3,13,'n','n','n','n',NULL,NULL,NULL,NULL),(4,13,'n','n','n','n',NULL,NULL,NULL,NULL),(5,13,'n','n','n','n',NULL,NULL,NULL,NULL),(6,13,'n','n','n','n',NULL,NULL,NULL,NULL),(7,13,'n','n','n','n',NULL,NULL,NULL,NULL),(8,13,'n','n','n','n',NULL,NULL,NULL,NULL),(9,13,'n','n','n','n',NULL,NULL,NULL,NULL),(2,14,'s','s','s','s',NULL,NULL,NULL,NULL),(3,14,'s','s','s','s',NULL,NULL,NULL,NULL),(4,14,'s','s','s','s',NULL,NULL,NULL,NULL),(5,14,'s','s','s','s',NULL,NULL,NULL,NULL),(6,14,'n','n','n','n',NULL,NULL,NULL,NULL),(7,14,'s','s','s','s',NULL,NULL,NULL,NULL),(8,14,'s','s','s','s',NULL,NULL,NULL,NULL),(9,14,'s','s','s','s',NULL,NULL,NULL,NULL),(2,15,'s','s','s','s',NULL,NULL,NULL,NULL),(3,15,'n','n','s','s',NULL,NULL,NULL,NULL),(4,15,'n','n','n','s',NULL,NULL,NULL,NULL),(5,15,'n','n','n','n',NULL,NULL,NULL,NULL),(6,15,'n','n','n','n',NULL,NULL,NULL,NULL),(7,15,'n','s','n','s',NULL,NULL,NULL,NULL),(8,15,'n','n','n','n',NULL,NULL,NULL,NULL),(9,15,'s','n','n','s',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'CALVIN KELIN','A'),(3,3,3000,10,80,'MODERNOS','I'),(4,4,550,100,500,'LENTES ','I'),(9,5,14000,2,23,'FACHERITOS','A'),(13,6,2000,2,12,'HOLA ELINE','A'),(14,7,2000,1,200,'AROS AZULES Y BLANCOS','A'),(15,8,1,1,100,'PRODUCTO PARA LA CLASE DE EVALUACION FINAL','A'),(16,NULL,1000,1,100,'COCO BALEADA ROJO AZUL Y VERDE','A'),(17,13,1000,1,100,'ROJOA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','JUAN GOMEZ',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','96235694','erickpavon544@gmail.com','A'),(2,'INVERSIONES CZ','CARMEN VILLAREAL',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','A'),(33,'PROVEEDOR FINAL','JUAN',1,35,'LENTES BONITOS','BARRIO LA GRANJA','990837373','karenaguilera201422@gmail.com','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10'),(9,'0715190022222','CITA JSJAJAJ','2024-11-17'),(10,NULL,'CITA MIOPIA','0000-00-00'),(11,'0801200010887','CITA NADA','2024-11-20'),(12,NULL,'CITA MIOPIA','0000-00-00'),(13,'0715199922344','CITA ASTGMATISMO LEVE','2024-11-22'),(14,'0801199322341','CITA MIOPIA','2024-11-23'),(15,'0805198844444','CITA HOLA NOSE','2024-11-23'),(16,NULL,'CITA NADA','0000-00-00'),(17,NULL,'CITA ASTGNATISMO','0000-00-00'),(18,'0208200101153','CITA NADA','2024-11-24'),(19,NULL,'CITA NADA','0000-00-00'),(20,NULL,'CITA NADA','0000-00-00'),(21,'0815199700655','CITA NADA','2024-11-25'),(22,'0817199945555','CITA NADA','2024-11-25'),(23,'0809188856666','CITA NADA','2024-11-25'),(24,'0716198622345','CITA MIOPIA','2024-11-26'),(25,'0801200019999','CITA MIOPIA','2024-11-26'),(26,'0801199332424','CITA MIOPIA','2024-11-26'),(27,'0801199411205','HOLIS','2024-08-21'),(28,'0716199923444','CITA MULTIOPTICAS','2024-12-01'),(29,'0714199923455','CITA MIOPIA','2024-12-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MzE2NjIiLCJpYXQiOjE3MDA1NDA0NzQsImV4cCI6MTcwMDU0MDc3NH0.xhhCb0cDAf_LRy8CV6t2biCOIxg9WwLSY0Gl1exTp7k'),(2,22,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyNDgxODIiLCJpYXQiOjE3MDEwMTg4MDgsImV4cCI6MTcwMTAxOTEwOH0.3yZ6As2DO8LGVNPC2CuyGPck3qvzquKlJbeI3FOMMu4'),(3,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5Mzg3MjAiLCJpYXQiOjE3MDEwMjczMDQsImV4cCI6MTcwMTAyNzYwNH0.rc5f_OcmgcBCBe5IO92G9o_FlRzpzanJAlMxaBPUmjs'),(4,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDQwODEiLCJpYXQiOjE3MDE0MDQyMjQsImV4cCI6MTcwMTQwNDUyNH0.KVP8kx9COKb3nSLTdoOgp2NOryLaEx72gqUMq1QixUA'),(5,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI4OTA0NDIiLCJpYXQiOjE3MDE0MDQ4OTcsImV4cCI6MTcwMTQwNTE5N30.oYTAd1kzsTGu9V8P08r2riLD9cMO_gtKoRtrv8-uFqE'),(6,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NzY1NjUiLCJpYXQiOjE3MDE0MDUwNjQsImV4cCI6MTcwMTQwNTM2NH0.zScwVGsxuj7HUzwHK6FvHOBaoYQgYjtmx6pBNJoRefI'),(7,24,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1MDQwNDkiLCJpYXQiOjE3MDE0NTg0NDIsImV4cCI6MTcwMTQ1ODc0Mn0.YSO8rIbJBpPLvBvMO7Od1HcvphgbCKkbAeXD9dQkNLM'),(8,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5NTMxODMiLCJpYXQiOjE3MDE0NTg1MDAsImV4cCI6MTcwMTQ1ODgwMH0.vAZLts4tA2BP7wLLP3l6C_iymHmhuvRXOsZjcUi__24'),(9,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5MjE5ODciLCJpYXQiOjE3MDE0NTg3MzcsImV4cCI6MTcwMTQ1OTAzN30.3ibkzzBvrhOvGZavznNAvusa5mLBMUp2IDK2qUK6eCw'),(10,26,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1Nzk4NzciLCJpYXQiOjE3MDE2NTAwOTYsImV4cCI6MTcwMTY1MDM5Nn0.QbVfn8xEp0lLPqiOfwvdlJ1GHoDbf6UyfjidMRKVcIM');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (26,'2023-12-03 03:37:04','0000-00-00','0000-00-00','0716199923444',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',880.88,'A'),(27,'2023-12-03 21:50:12','0000-00-00','0000-00-00','0716199923444',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3520,'A'),(28,'2023-12-04 00:59:07','0000-00-00','0000-00-00','0714199923455',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',7920,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (27,26,3,1,1,15,1,13,1,1001,120.12,880.88),(28,27,3,1,1,13,2000,10,1,4000,480,3520),(29,28,3,1,1,17,1000,14,1,5000,600,4400),(30,28,2,1,1,14,2000,11,1,4000,480,3520);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0714199923455','MARIA','MARTINEZ',2,'2023-09-12','BELLA VISTA','99087365','',38),('0716198622345','PEDRO','AGUILERA',1,'2023-01-02','BARRIO LA LOMITA','99076543','',33),('0716199923444','MULTIOPTICAS','MULTIOPTICAS',2,'2023-05-31','PASEO LIQUIDAMBAR','90088655','',37),('0801199332424','CLIENTE','FINAL',2,'2022-10-11','BARRIO LAS BRISAS','99663436','cliente@gmail.com',35),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',4),('0801200019999','JARED DAVID','SALGADO ORTIZ',1,'2002-07-22','BARRIO LA MERY DE FLORES','99004455','',34),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',9),('0817200019999','MARIA','GONZALES',2,'2023-03-06','MEXICO','99076535','empresa@gmail.com',36);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000,'A'),(2,'2023-08-20 17:35:02',6000,'A'),(3,'2023-11-09 05:30:49',14000,'A'),(4,'2023-11-10 14:52:11',15000,'A'),(5,'2023-11-10 16:27:37',110,'A'),(6,'2023-11-23 03:14:07',14111,'A'),(7,'2023-11-26 01:23:14',10000,'A'),(8,'2023-11-26 17:53:51',1000,'I'),(9,'2023-11-26 18:22:08',100,'I'),(10,'2023-11-26 20:38:20',1100.25,'I'),(11,'2023-12-02 01:47:49',1000,'I'),(12,'2023-12-04 00:53:28',2000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (15,12,33,200,17,2000);
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'A'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'I'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'A'),(45,'ERICK','RAMIREZ','99088762',1,1,'0801200001115','2024-02-16','1899-11-30','2012-06-04','A'),(46,'EMPLEADO','FINAL','99008762',1,1,'0801201019999','2023-11-26',NULL,'2023-03-09','A'),(47,'MARIO','CASCO','99007625',2,1,'0801199223455','2023-11-30',NULL,'1999-02-02','A'),(48,'MARIO','ROSALES','99076655',4,1,'0715199988776','2023-12-02',NULL,'2023-05-17','A'),(49,'JARED','ORTIZ','90076535',1,1,'0715199888763','2023-11-28',NULL,'2023-08-08','A'),(50,'HEIDY','ZELAYA','99006533',2,2,'0801200010888','2023-12-03',NULL,'2023-07-03','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(32,'2023-11-25 06:00:00','0716198622345',1),(33,'2023-11-25 06:00:00','0801200019999',1),(34,'2023-11-25 06:00:00','0801199332424',1),(35,'2023-11-30 06:00:00','0716199923444',1),(36,'2023-12-03 06:00:00','0714199923455',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(26,32,'MIOPIA','KAREN AGUILERA','KAREN AGUILERA','NINGUNO','1','1','1','1','1','1','1','1','1','1','0','1','2023-11-25','2024-11-26'),(27,33,'MIOPIA','ERICK','HEIDY','NINGUNO','2','1','2','1','2','1','2','1','2','1','1','1','2023-11-25','2024-11-26'),(28,33,'NADA','SEYDI','MICHAEL','NADA','6','4','6','4','6','4','6','4','6','4','6','4','2023-11-25','2024-11-26'),(29,34,'MIOPIA','JUANA','JUAN','NINGUNO','2','1','2','1','2','1','2','1','2','1','2','1','2023-11-25','2024-11-26'),(30,35,'MULTIOPTICAS','HONDURAS','TEGUS','NINGUNO','2','1','2','1','1','1','2','1','2','1','2','1','2023-11-30','2024-12-01'),(31,36,'MIOPIA','ERICK','ERICK','NINGUNO','2','-1','2','1','2','1','2','1','1','1','2','1','2023-12-03','2024-12-03');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'GARANTIA POR AJUSTES',3,'A'),(2,'GARANTIA DE CALIDAD',3,'A'),(3,'GARANTIA NORMAL',5,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(3,3,91),(7,14,194),(8,15,98),(9,16,0),(10,17,199);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (56,2,15,1,'2023-12-03 03:37:04',1,NULL),(57,2,13,1,'2023-12-03 21:50:12',1,NULL),(58,1,17,1,'2023-12-04 06:00:00',200,NULL),(59,2,17,1,'2023-12-04 00:59:07',1,NULL),(60,2,14,1,'2023-12-04 00:59:07',1,NULL);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardexcompra`
--

DROP TABLE IF EXISTS `tbl_kardexcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardexcompra` (
  `idKardex` int(11) DEFAULT NULL,
  `idCompra` int(11) DEFAULT NULL,
  KEY `idKardex` (`idKardex`),
  KEY `idCompra` (`idCompra`),
  CONSTRAINT `tbl_kardexcompra_ibfk_1` FOREIGN KEY (`idKardex`) REFERENCES `tbl_kardex` (`IdKardex`),
  CONSTRAINT `tbl_kardexcompra_ibfk_2` FOREIGN KEY (`idCompra`) REFERENCES `tbl_compra` (`IdCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardexcompra`
--

LOCK TABLES `tbl_kardexcompra` WRITE;
/*!40000 ALTER TABLE `tbl_kardexcompra` DISABLE KEYS */;
INSERT INTO `tbl_kardexcompra` VALUES (58,12);
/*!40000 ALTER TABLE `tbl_kardexcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardexventa`
--

DROP TABLE IF EXISTS `tbl_kardexventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardexventa` (
  `idKardex` int(11) DEFAULT NULL,
  `idVenta` int(11) DEFAULT NULL,
  KEY `idKardex` (`idKardex`),
  KEY `idVenta` (`idVenta`),
  CONSTRAINT `tbl_kardexventa_ibfk_1` FOREIGN KEY (`idKardex`) REFERENCES `tbl_kardex` (`IdKardex`),
  CONSTRAINT `tbl_kardexventa_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `tbl_venta` (`IdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardexventa`
--

LOCK TABLES `tbl_kardexventa` WRITE;
/*!40000 ALTER TABLE `tbl_kardexventa` DISABLE KEYS */;
INSERT INTO `tbl_kardexventa` VALUES (56,26),(57,27),(59,28),(60,28);
/*!40000 ALTER TABLE `tbl_kardexventa` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (10,'TRANSITION',2000,'A'),(11,'MONOFOCAL',2000,'A'),(12,'BIFOCALES',1000,'A'),(13,'HOLA',1000,'A'),(14,'ANTIREFLEJOS 3D',4000,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'ELINE','A'),(6,'INFORMATICA','A'),(7,'MARCA FINAL','A'),(8,'COCO','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(6,5,'ELINE PLUS',2023,'A'),(7,6,'INFORMATICAJ9',2023,'A'),(8,7,'MODELO FINAL',2023,'A'),(9,NULL,'NADA',2020,'A'),(10,NULL,'ELINE HOLA',2022,'A'),(11,NULL,'HOLIS',2020,'A'),(12,NULL,'HOLAA',2020,'A'),(13,8,'COCO BALEADA',2023,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-12-01 13:38:06',1,1,'Login','Inicio de sesión '),(2,'2023-12-01 17:38:40',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(3,'2023-12-01 17:39:40',NULL,2,'Salir','Se salio de Lista de Empleados'),(4,'2023-12-01 18:04:26',NULL,2,'Salir','Se salio de Lista de Empleados'),(5,'2023-12-01 21:29:36',1,5,'Salir','El usuario salió de la pantalla de citas'),(6,'2023-12-02 10:01:49',1,1,'Login','Inicio de sesión '),(7,'2023-12-02 10:25:38',NULL,2,'Salir','Se salio de Lista de Empleados'),(8,'2023-12-02 15:21:13',1,1,'Login','Inicio de sesión '),(9,'2023-12-02 20:23:07',1,1,'Login','Inicio de sesión '),(10,'2023-12-02 20:25:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(11,'2023-12-02 20:41:46',NULL,2,'Salir','Se salio de Lista de Empleados'),(12,'2023-12-02 20:44:23',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(13,'2023-12-02 21:02:39',1,1,'Login','Inicio de sesión '),(14,'2023-12-02 21:12:46',1,1,'Login','Inicio de sesión '),(15,'2023-12-02 21:20:01',1,1,'Login','Inicio de sesión '),(16,'2023-12-02 21:24:31',1,1,'Login','Inicio de sesión '),(17,'2023-12-02 21:25:23',NULL,2,'Salir','Se salio de Lista de Empleados'),(18,'2023-12-02 21:26:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(19,'2023-12-02 21:26:56',NULL,2,'Salir','Se salio de Lista de Empleados'),(20,'2023-12-02 21:27:03',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(21,'2023-12-02 21:29:34',1,1,'Login','Inicio de sesión '),(22,'2023-12-02 21:36:05',1,1,'Login','Inicio de sesión '),(23,'2023-12-02 21:45:13',25,1,'Login','Inicio de sesión '),(24,'2023-12-03 15:48:23',1,1,'Login','Inicio de sesión '),(25,'2023-12-03 17:37:24',1,1,'Login','Inicio de sesión '),(26,'2023-12-03 17:48:52',1,1,'Login','Inicio de sesión '),(27,'2023-12-03 18:27:03',1,2,'Salir','Se salio de la pantalla Registro de Empleado'),(28,'2023-12-03 18:27:17',NULL,2,'Salir','Se salio de Lista de Empleados'),(29,'2023-12-03 18:32:48',26,1,'Login','Inicio de sesión '),(30,'2023-12-03 18:36:47',26,1,'Login','Inicio de sesión '),(31,'2023-12-03 18:38:34',1,1,'Login','Inicio de sesión '),(32,'2023-12-03 18:41:13',1,5,'Salir','El usuario salió de la pantalla de citas'),(33,'2023-12-03 18:41:55',1,5,'Salir','El usuario salió de la pantalla de citas'),(34,'2023-12-03 18:43:21',1,5,'Salir','El usuario salió de la pantalla de citas');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL),(64,1,'$2b$10$xAUmbBskeXsZGfsohOU9helQf59J/LtbtvapefustdWspsfkSuN1G','ADMIN',NULL,NULL,NULL),(65,18,'$2b$10$dVgGAG7Vr4/Fv3UrLVf2g.Lpd22xGhsOYYMWLLr2XKjkUO0eKpVt6','DEPTINFORMATICA',NULL,NULL,NULL),(66,18,'$2b$10$p8NQFxl1LkmoH0MeURIvROXsfKnbOrJ.KWlndOxLQSpVXImRK16BC','DEPTINFORMATICA',NULL,NULL,NULL),(67,19,NULL,NULL,NULL,NULL,NULL),(68,20,NULL,NULL,NULL,NULL,NULL),(69,21,'$2b$10$Ypio5Ia9vAIe88JdVgNvkOI1LuSrFxmOcwuxXVKAvCWEL7ZNsSKKm','MARCOSOLIS',NULL,NULL,NULL),(70,21,'$2b$10$8Ci5DlGiAfcQQqBlqbnZVeW5F72gKQ5LjCkrA3PRDsnLSdZvjdBsS','MARCOSOLIS',NULL,NULL,NULL),(71,22,'$2b$10$1a1.0ntQNiIdyFoLut/ad.i8l53RWquOLg9LTpoLpShb0z6la03hK','ERCIKPR',NULL,NULL,NULL),(72,22,'$2b$10$r2eZAf4nc6YUoZwGZoaAd.GU1cuQFgHZyXNLT.hHb9NbscHPs978e','ERCIKPR',NULL,NULL,NULL),(73,22,'$2b$10$4WEy9KQi/lfFElSB2subKe.6yR/x84JEzWEGQ2zmKaPbs8OBnRDIq','ERCIKPR',NULL,NULL,NULL),(74,22,'$2b$10$cJV/WYXcY/46M9P6Oj9LNuicBBVKoyvyXuMJSXPUUyb7e.NqrVXoC','ERCIKPR',NULL,NULL,NULL),(75,23,'$2b$10$vMbxpaByLiG1DNeO16FLseZnkAozONrLIx2nSt1TVEPtgvjN.7.kG','USUARIOFINAL',NULL,NULL,NULL),(76,23,'$2b$10$xh4/tEA7HNXsiyvvZcqWAe.cdgS0RaMB2hokmO1txNM/C7PhAdbBq','USUARIOFINAL',NULL,NULL,NULL),(77,23,'$2b$10$edec416yAA8G3mQak8jLcOURn58V.PaMLOgcfk5oq5vPe9bq9g/46','USUARIOFINAL',NULL,NULL,NULL),(78,23,'$2b$10$dvtE86fLZ1f8S3JcAemH0OnCgSKLRs7EV/glbquNMTRrcJJEBXA3q','USUARIOFINAL',NULL,NULL,NULL),(79,24,'$2b$10$/rYfyPTpRHZWixDk0PH4uu8p3ypoDlHMLmty850b/5L436IYiZYAy','MARIOCASCO',NULL,NULL,NULL),(80,25,'$2b$10$y/FoY/zZFpxuOkZLWQkTx.MRdc90ntTrIWKeUhecixQv4Mv6JmFFK','JAREDLOCO',NULL,NULL,NULL),(81,25,'$2b$10$M1Tqzm25U6i/NFU/J.v/tOb39RyBeLovD1XB4mz1tc25O/Lj015d6','JAREDLOCO',NULL,NULL,NULL),(82,26,'$2b$10$iNd8OzbyjwmiElbw2orjkOnXAAqqOYMObnvuAWQo.p0tAnKWcwZv6','HEIDYPAMELA',NULL,NULL,NULL),(83,26,'$2b$10$y/JUwvpF746ImauiM0w9h.L1lY6ltBpzIkBbIdQLsae5fsH2WK4Jm','HEIDYPAMELA',NULL,NULL,NULL),(84,26,'$2b$10$8YjpYzcCG.ooqPoM/toLy.3NsNX6exUDmkgXAMTfaAwOt/GOaBv1u','HEIDYPAMELA',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','1',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticashn504@gmail.com ',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','no',NULL,NULL,NULL,NULL),(15,1,'ADMIN_CORREO_PASS','hlnc bxyg ahpg ngfs',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL),(1,18,'MORADO','DEPTINFORMATICA','2023-11-23',NULL,NULL),(2,18,'OLIMPIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(5,18,'COLOMBIA','DEPTINFORMATICA','2023-11-23',NULL,NULL),(4,18,'GOKU','DEPTINFORMATICA','2023-11-23',NULL,NULL),(3,18,'NICOLAS','DEPTINFORMATICA','2023-11-23',NULL,NULL),(1,21,'GRIS','MARCO ANTONIO','2023-11-26',NULL,NULL),(3,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(5,21,'EL FRANCES','MARCO ANTONIO','2023-11-26',NULL,NULL),(4,21,'ROJO','MARCO ANTONIO','2023-11-26',NULL,NULL),(1,22,'AZUL','ERCIKPR','2023-11-26',NULL,NULL),(2,22,'BARCELONA','ERCIKPR','2023-11-26',NULL,NULL),(1,23,'AZUL','USUARIOFINAL','2023-11-26',NULL,NULL),(2,23,'OLIMPIA','USUARIOFINAL','2023-11-26',NULL,NULL),(2,24,'REAL MADRID','MARIOCASCO','2023-12-01',NULL,NULL),(3,24,'JUAN','MARIOCASCO','2023-12-01',NULL,NULL),(1,25,'VERDE','JAREDLOCO','2023-12-03',NULL,NULL),(2,25,'NO TENGO','JAREDLOCO','2023-12-03',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Inactivo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(22,'ERCIKPR','ERCIKPR','Activo','$2b$10$MKuko2F9DSpF1wTqeY1VRewcE4HQMGr3TECXMuZOWBtMOxpgi2oN6',1,NULL,0,0,'2024-02-24','erickpavon544@gmail.com',45,NULL,'2023-11-26',NULL,'2023-11-26'),(23,'USUARIOFINAL','USUARIOFINAL','Activo','$2b$10$V/Y0W3c9AjtL9O01MQq3GO/dt/DZ5NximP4H/XzFYSLYCUoH4JO7G',1,NULL,0,0,'2024-02-24','karenaguilera2105@gmail.com',46,NULL,'2023-11-26',NULL,'2023-11-26'),(24,'MARIOCASCO','MARIOCASCO','Nuevo','$2b$10$dvVJJAY/FyyDe3Mv4b0RdOI6mDx.77xvlyb/Oub3ihEhzL1TfmTce',1,NULL,0,0,'2024-02-28','karenaguilera201422@gmail.com',47,NULL,'2023-11-30',NULL,'2023-11-30'),(25,'JAREDLOCO','JAREDLOCO','Activo','$2b$10$4qPkN82DrNN2lDREpVPEO.JUR8eKog9vLUzd2jGGe5M3L25D31D1W',2,NULL,0,0,'2024-03-01','jaredsor02@gmail.com',49,NULL,'2023-12-02',NULL,'2023-12-02'),(26,'HEIDYPAMELA','HEIDYPAMELA','Activo','$2b$10$DDCEOjRs5VauL3HQ9fcRw.y/dGHsdvij6WnR.imQtf8pSiSsJd3te',8,NULL,0,0,'2024-03-02','pamela24duron@gmail.com',50,NULL,'2023-12-03',NULL,'2023-12-03');
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
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Citas','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Compras','Pagina de gestion de compras','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (35,26,4,'2023-12-03 03:37:10','Pendiente',100,780.88),(36,26,4,'2023-12-03 03:38:56','Pagado',780.88,0),(37,27,4,'2023-12-03 21:50:20','Pendiente',200,3320),(38,28,4,'2023-12-04 00:59:15','Pendiente',7000,920),(39,28,4,'2023-12-04 01:00:35','Pagado',920,0);
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'n','n','n','n',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'n','n','n','n',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'n','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'n','n','n','n',NULL,NULL,NULL,NULL),(2,8,'n','n','n','n',NULL,NULL,NULL,NULL),(3,8,'n','n','n','n',NULL,NULL,NULL,NULL),(4,8,'n','n','n','s',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'n','n','n','n',NULL,NULL,NULL,NULL),(8,8,'n','n','n','n',NULL,NULL,NULL,NULL),(9,8,'s','n','n','s',NULL,NULL,NULL,NULL),(2,9,'n','n','n','n',NULL,NULL,NULL,NULL),(3,9,'n','n','n','n',NULL,NULL,NULL,NULL),(4,9,'n','n','n','n',NULL,NULL,NULL,NULL),(5,9,'n','n','n','n',NULL,NULL,NULL,NULL),(6,9,'n','n','n','n',NULL,NULL,NULL,NULL),(7,9,'n','n','n','n',NULL,NULL,NULL,NULL),(8,9,'n','n','n','n',NULL,NULL,NULL,NULL),(9,9,'n','n','n','n',NULL,NULL,NULL,NULL),(2,10,'n','n','n','n',NULL,NULL,NULL,NULL),(3,10,'n','n','n','n',NULL,NULL,NULL,NULL),(4,10,'n','n','n','n',NULL,NULL,NULL,NULL),(5,10,'n','n','n','n',NULL,NULL,NULL,NULL),(6,10,'n','n','n','n',NULL,NULL,NULL,NULL),(7,10,'n','n','n','n',NULL,NULL,NULL,NULL),(8,10,'n','n','n','n',NULL,NULL,NULL,NULL),(9,10,'n','n','n','n',NULL,NULL,NULL,NULL),(2,11,'n','n','n','n',NULL,NULL,NULL,NULL),(3,11,'n','n','n','n',NULL,NULL,NULL,NULL),(4,11,'n','n','n','n',NULL,NULL,NULL,NULL),(5,11,'n','n','n','n',NULL,NULL,NULL,NULL),(6,11,'n','n','n','n',NULL,NULL,NULL,NULL),(7,11,'n','n','n','n',NULL,NULL,NULL,NULL),(8,11,'n','n','n','n',NULL,NULL,NULL,NULL),(9,11,'n','n','n','n',NULL,NULL,NULL,NULL),(2,12,'n','n','n','n',NULL,NULL,NULL,NULL),(3,12,'n','n','n','n',NULL,NULL,NULL,NULL),(4,12,'n','n','n','n',NULL,NULL,NULL,NULL),(5,12,'n','n','n','n',NULL,NULL,NULL,NULL),(6,12,'n','n','n','n',NULL,NULL,NULL,NULL),(7,12,'n','n','n','n',NULL,NULL,NULL,NULL),(8,12,'n','n','n','n',NULL,NULL,NULL,NULL),(9,12,'n','n','n','n',NULL,NULL,NULL,NULL),(2,13,'n','n','n','n',NULL,NULL,NULL,NULL),(3,13,'n','n','n','n',NULL,NULL,NULL,NULL),(4,13,'n','n','n','n',NULL,NULL,NULL,NULL),(5,13,'n','n','n','n',NULL,NULL,NULL,NULL),(6,13,'n','n','n','n',NULL,NULL,NULL,NULL),(7,13,'n','n','n','n',NULL,NULL,NULL,NULL),(8,13,'n','n','n','n',NULL,NULL,NULL,NULL),(9,13,'n','n','n','n',NULL,NULL,NULL,NULL),(2,14,'s','s','s','s',NULL,NULL,NULL,NULL),(3,14,'s','s','s','s',NULL,NULL,NULL,NULL),(4,14,'s','s','s','s',NULL,NULL,NULL,NULL),(5,14,'s','s','s','s',NULL,NULL,NULL,NULL),(6,14,'n','n','n','n',NULL,NULL,NULL,NULL),(7,14,'s','s','s','s',NULL,NULL,NULL,NULL),(8,14,'s','s','s','s',NULL,NULL,NULL,NULL),(9,14,'s','s','s','s',NULL,NULL,NULL,NULL),(2,15,'s','s','s','s',NULL,NULL,NULL,NULL),(3,15,'n','n','s','s',NULL,NULL,NULL,NULL),(4,15,'n','n','n','s',NULL,NULL,NULL,NULL),(5,15,'n','n','n','n',NULL,NULL,NULL,NULL),(6,15,'n','n','n','n',NULL,NULL,NULL,NULL),(7,15,'n','s','n','s',NULL,NULL,NULL,NULL),(8,15,'n','n','n','n',NULL,NULL,NULL,NULL),(9,15,'s','n','n','s',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'CALVIN KELIN','A'),(3,3,3000,10,80,'MODERNOS','I'),(4,4,550,100,500,'LENTES ','I'),(9,5,14000,2,23,'FACHERITOS','A'),(13,6,2000,2,12,'HOLA ELINE','A'),(14,7,2000,1,200,'AROS AZULES Y BLANCOS','A'),(15,8,1,1,100,'PRODUCTO PARA LA CLASE DE EVALUACION FINAL','A'),(16,NULL,1000,1,100,'COCO BALEADA ROJO AZUL Y VERDE','A'),(17,13,1000,1,100,'ROJOA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','JUAN GOMEZ',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','96235694','erickpavon544@gmail.com','A'),(2,'INVERSIONES CZ','CARMEN VILLAREAL',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','A'),(33,'PROVEEDOR FINAL','JUAN',1,35,'LENTES BONITOS','BARRIO LA GRANJA','990837373','karenaguilera201422@gmail.com','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10'),(9,'0715190022222','CITA JSJAJAJ','2024-11-17'),(10,NULL,'CITA MIOPIA','0000-00-00'),(11,'0801200010887','CITA NADA','2024-11-20'),(12,NULL,'CITA MIOPIA','0000-00-00'),(13,'0715199922344','CITA ASTGMATISMO LEVE','2024-11-22'),(14,'0801199322341','CITA MIOPIA','2024-11-23'),(15,'0805198844444','CITA HOLA NOSE','2024-11-23'),(16,NULL,'CITA NADA','0000-00-00'),(17,NULL,'CITA ASTGNATISMO','0000-00-00'),(18,'0208200101153','CITA NADA','2024-11-24'),(19,NULL,'CITA NADA','0000-00-00'),(20,NULL,'CITA NADA','0000-00-00'),(21,'0815199700655','CITA NADA','2024-11-25'),(22,'0817199945555','CITA NADA','2024-11-25'),(23,'0809188856666','CITA NADA','2024-11-25'),(24,'0716198622345','CITA MIOPIA','2024-11-26'),(25,'0801200019999','CITA MIOPIA','2024-11-26'),(26,'0801199332424','CITA MIOPIA','2024-11-26'),(27,'0801199411205','HOLIS','2024-08-21'),(28,'0716199923444','CITA MULTIOPTICAS','2024-12-01'),(29,'0714199923455','CITA MIOPIA','2024-12-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MzE2NjIiLCJpYXQiOjE3MDA1NDA0NzQsImV4cCI6MTcwMDU0MDc3NH0.xhhCb0cDAf_LRy8CV6t2biCOIxg9WwLSY0Gl1exTp7k'),(2,22,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyNDgxODIiLCJpYXQiOjE3MDEwMTg4MDgsImV4cCI6MTcwMTAxOTEwOH0.3yZ6As2DO8LGVNPC2CuyGPck3qvzquKlJbeI3FOMMu4'),(3,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5Mzg3MjAiLCJpYXQiOjE3MDEwMjczMDQsImV4cCI6MTcwMTAyNzYwNH0.rc5f_OcmgcBCBe5IO92G9o_FlRzpzanJAlMxaBPUmjs'),(4,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDQwODEiLCJpYXQiOjE3MDE0MDQyMjQsImV4cCI6MTcwMTQwNDUyNH0.KVP8kx9COKb3nSLTdoOgp2NOryLaEx72gqUMq1QixUA'),(5,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI4OTA0NDIiLCJpYXQiOjE3MDE0MDQ4OTcsImV4cCI6MTcwMTQwNTE5N30.oYTAd1kzsTGu9V8P08r2riLD9cMO_gtKoRtrv8-uFqE'),(6,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NzY1NjUiLCJpYXQiOjE3MDE0MDUwNjQsImV4cCI6MTcwMTQwNTM2NH0.zScwVGsxuj7HUzwHK6FvHOBaoYQgYjtmx6pBNJoRefI'),(7,24,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1MDQwNDkiLCJpYXQiOjE3MDE0NTg0NDIsImV4cCI6MTcwMTQ1ODc0Mn0.YSO8rIbJBpPLvBvMO7Od1HcvphgbCKkbAeXD9dQkNLM'),(8,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5NTMxODMiLCJpYXQiOjE3MDE0NTg1MDAsImV4cCI6MTcwMTQ1ODgwMH0.vAZLts4tA2BP7wLLP3l6C_iymHmhuvRXOsZjcUi__24'),(9,23,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5MjE5ODciLCJpYXQiOjE3MDE0NTg3MzcsImV4cCI6MTcwMTQ1OTAzN30.3ibkzzBvrhOvGZavznNAvusa5mLBMUp2IDK2qUK6eCw'),(10,26,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI1Nzk4NzciLCJpYXQiOjE3MDE2NTAwOTYsImV4cCI6MTcwMTY1MDM5Nn0.QbVfn8xEp0lLPqiOfwvdlJ1GHoDbf6UyfjidMRKVcIM');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (26,'2023-12-03 03:37:04','0000-00-00','0000-00-00','0716199923444',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',880.88,'A'),(27,'2023-12-03 21:50:12','0000-00-00','0000-00-00','0716199923444',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3520,'A'),(28,'2023-12-04 00:59:07','0000-00-00','0000-00-00','0714199923455',1,' ','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',7920,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (27,26,3,1,1,15,1,13,1,1001,120.12,880.88),(28,27,3,1,1,13,2000,10,1,4000,480,3520),(29,28,3,1,1,17,1000,14,1,5000,600,4400),(30,28,2,1,1,14,2000,11,1,4000,480,3520);
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

-- Dump completed on 2023-12-03 19:02:18
