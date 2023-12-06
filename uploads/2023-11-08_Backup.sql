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
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (48,'Ajuterique'),(41,'Bonito Oriental'),(45,'Brus Laguna'),(15,'Catacamas'),(30,'Chamelecon'),(8,'Choloma'),(5,'Choluteca'),(2,'Comayagua'),(35,'Comayagüela '),(11,'Danli'),(18,'Distrito Central'),(32,'El Porvenir'),(7,'El Progreso'),(22,'Gracias'),(39,'Guaimaca'),(43,'Jesus de Otoro'),(36,'Jutiapa'),(10,'Juticalpa'),(38,'La Campa'),(4,'La Ceiba'),(23,'La Esperanza'),(12,'La Lima'),(47,'La Masique'),(28,'La Paz'),(31,'Las Vegas'),(34,'Marcala'),(42,'Minas de Oro'),(21,'Nacaome'),(27,'Ocotepeque'),(17,'Olanchito'),(37,'Omoa Amapala'),(29,'Patuca'),(6,'Puerto Cortes'),(26,'Puerto Lempira'),(46,'San Jose de Colinas'),(3,'San Pedro Sula'),(19,'Santa Barbara'),(33,'Santa cruz de Yojoa'),(13,'Santa Rosa de Copan'),(14,'Siguatepeque'),(40,'Talanga'),(1,'Tegucigalpa'),(9,'Tela'),(44,'Teupasenti'),(16,'Tocoa'),(25,'Trujillo'),(20,'Yoro'),(24,'Yuscaran');
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
  `correoElectronico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0801199411202','MANUEL','SALGADO',1,'2023-10-25','CARRIZAL','89561472','manu@gmail.com'),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com'),('0801199411207','PRUEBA','PROBANDO',1,'2023-10-24','BUENAS NUEVAS','98741120','sabu@gmail.com'),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com');
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
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000),(2,'2023-08-20 17:35:02',6000);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000);
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
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida'),(6,'Choluteca'),(2,'Colón'),(3,'Comayagua'),(4,'Copán'),(5,'Cortés'),(7,'El Paraíso'),(8,'Francisco Morazán'),(9,'Gracias a Dios'),(10,'Intibucá'),(11,'Islas de la Bahía'),(12,'La Paz'),(13,'Lempira'),(14,'Ocotepeque'),(15,'Olancho'),(16,'Santa Bárbara'),(17,'Valle'),(18,'Yoro');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_descuento` VALUES (1,1,0,0.05),(2,1,0.1,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(4,'ELVIS','GODOY','99287403',1,1,'0802200101154',NULL,NULL,NULL,'Activo'),(5,'JUAN','RODRIGUEZ','99762137',1,1,'0801199802042',NULL,NULL,NULL,'Activo'),(7,'TEST','TEST','99884415',1,2,'0802200101153',NULL,NULL,NULL,'Inactivo'),(12,'MICKY','MOUSE','11223344',2,1,'0801199999994',NULL,NULL,NULL,'Inactivo'),(13,'HEIDY','ZELAYA','98451254',1,2,'0801199801456',NULL,NULL,NULL,'Activo'),(15,'ELVIN','SANTOS','11223344',1,1,'0801199002359','2023-11-15','0000-00-00','2001-11-03','Activo'),(16,'KAREN','AGUILERA','99287403',2,2,'0801199411204','2023-11-13','0000-00-00','2023-11-24','Inactivo'),(17,'ERICK','PAVON','96235694',1,1,'0801200001152',NULL,NULL,NULL,'Activo'),(19,'ERIKA','AMADOR','88131255',2,2,'0801199809821','2023-11-06','2023-11-13','2023-11-23','Inactivo'),(20,'ROSA IDALIA','GARCIA GIRON','99876543',1,2,'0801200201145','2023-11-06','0000-00-00','1992-11-02','Activo'),(22,'JOSE','ORTEGA','98635492',5,1,'0801200001111','2023-11-15','0000-00-00','2023-11-23','Activo'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Activo'),(24,'PRUEBA','PROBANDO','99806756',6,1,'0801200004536','2023-11-04','0000-00-00','2022-07-22','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(3,'2023-10-15 06:00:00','0801199411207',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(3,NULL,'dengue','ROSA','ERICK','PRESION BAJA','2','-2','2','-2','-2','-2','2','-1','-2','0','1','1','2023-08-19','2024-08-20'),(4,3,'NINGUNA','MESSI','RONALDO','ASMATICO','1','1','2','2','2','2','1','1','3','3','1','1','2023-10-15','2024-10-15');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_garantia` VALUES (1,'Garantia por ajustes',3,1,1),(2,'Garantia de calidad',3,1,1),(3,'shshsh',5,1,0);
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
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino'),(2,'Femenino');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,96);
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
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100),(2,2,1,1,'2023-08-20 01:54:08',1),(3,2,1,1,'2023-08-20 16:36:57',1),(4,1,1,1,'2023-08-20 06:00:00',5),(5,2,1,1,'2023-10-14 17:09:41',2),(6,2,1,1,'2023-10-14 17:23:52',1),(7,2,1,1,'2023-10-14 20:08:38',1),(8,2,1,1,'2023-10-15 03:59:18',1),(9,2,1,1,'2023-10-15 04:04:20',2);
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
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Transition',2000),(2,'Bifocales',1800),(3,'www',14000),(4,'Hola',NULL);
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
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN'),(2,'TOMMY HERNANDEZ');
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
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001),(2,1,'CK-2000',2001);
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
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(3,'2023-08-19 17:19:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(4,'2023-08-19 17:19:52',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-08-19 17:49:40',1,1,'Login','Inicio de sesión '),(13,'2023-08-19 17:52:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 18:03:43',1,1,'Login','Inicio de sesión '),(15,'2023-08-19 18:03:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(16,'2023-08-19 18:08:08',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 18:08:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(18,'2023-08-19 18:08:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(19,'2023-08-19 18:11:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(20,'2023-08-19 18:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(21,'2023-08-19 18:13:49',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(22,'2023-08-19 18:14:19',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(23,'2023-08-19 18:14:29',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(24,'2023-08-19 18:14:52',NULL,9,'Salir','Se salio de Lista de Empleados'),(25,'2023-08-19 18:17:21',0,2,'Usuario nuevo','Se agrego un nuevo usuario'),(26,'2023-08-19 18:18:33',2,1,'Login','Inicio de sesión '),(27,'2023-08-19 18:21:30',1,1,'Login','Inicio de sesión '),(28,'2023-08-19 18:21:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 18:21:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(30,'2023-08-19 18:23:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(31,'2023-08-19 18:26:03',1,1,'Login','Inicio de sesión '),(32,'2023-08-19 18:26:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(33,'2023-08-19 19:43:49',1,1,'Login','Inicio de sesión '),(34,'2023-08-19 19:47:33',1,1,'Login','Inicio de sesión '),(35,'2023-08-19 19:49:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(36,'2023-08-19 19:55:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(37,'2023-08-19 21:05:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(38,'2023-08-19 21:05:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 21:05:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(40,'2023-08-19 21:46:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 21:47:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(42,'2023-08-19 21:47:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(43,'2023-08-19 21:47:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(44,'2023-08-19 21:47:53',1,1,'Login','Inicio de sesión '),(45,'2023-08-19 21:47:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(46,'2023-08-19 22:36:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-19 22:44:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(48,'2023-08-19 23:25:10',1,1,'Login','Inicio de sesión '),(49,'2023-08-19 23:25:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 00:30:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(51,'2023-08-20 01:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(52,'2023-08-20 01:21:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(53,'2023-08-20 11:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 11:43:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(55,'2023-08-20 11:43:45',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(56,'2023-08-20 11:43:56',1,5,'Salir','El usuario salió de la pantalla de citas'),(57,'2023-08-20 11:43:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 11:44:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(59,'2023-08-20 12:22:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(60,'2023-08-20 13:42:23',1,1,'Login','Inicio de sesión '),(61,'2023-08-20 13:42:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(62,'2023-08-20 14:55:56',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 14:55:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(64,'2023-08-20 15:45:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(65,'2023-08-21 11:44:37',1,1,'Login','Inicio de sesión '),(66,'2023-08-21 11:44:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(67,'2023-08-21 12:02:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(68,'2023-08-21 12:23:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(69,'2023-08-21 12:33:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(70,'2023-08-21 12:35:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(71,'2023-08-21 13:24:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(72,'2023-08-21 13:24:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(73,'2023-08-21 13:28:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(74,'2023-08-21 13:39:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(75,'2023-08-21 13:40:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(76,'2023-08-21 13:40:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(77,'2023-08-21 23:30:21',1,1,'Login','Inicio de sesión '),(78,'2023-08-22 21:32:23',1,1,'Login','Inicio de sesión '),(79,'2023-08-22 21:32:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(80,'2023-08-22 21:32:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(81,'2023-08-22 21:32:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(82,'2023-08-23 01:06:43',1,1,'Login','Inicio de sesión '),(83,'2023-09-27 23:16:28',1,1,'Login','Inicio de sesión '),(84,'2023-09-27 23:16:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(85,'2023-09-27 23:17:39',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(86,'2023-09-27 23:18:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(87,'2023-09-27 23:18:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(88,'2023-09-27 23:22:15',1,1,'Login','Inicio de sesión '),(89,'2023-09-27 23:24:41',1,1,'Login','Inicio de sesión '),(90,'2023-09-27 23:28:34',1,1,'Login','Inicio de sesión '),(91,'2023-09-27 23:28:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(92,'2023-09-27 23:29:23',1,1,'Login','Inicio de sesión '),(93,'2023-09-27 23:29:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(94,'2023-10-11 22:13:49',1,1,'Login','Inicio de sesión '),(95,'2023-10-11 22:14:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(96,'2023-10-11 22:14:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(97,'2023-10-11 22:15:11',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(98,'2023-10-11 22:19:18',1,1,'Login','Inicio de sesión '),(99,'2023-10-11 22:19:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(100,'2023-10-11 22:20:17',1,1,'Login','Inicio de sesión '),(101,'2023-10-11 22:21:31',1,1,'Login','Inicio de sesión '),(102,'2023-10-11 22:21:36',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(103,'2023-10-11 22:24:16',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(104,'2023-10-11 22:31:28',1,1,'Login','Inicio de sesión '),(105,'2023-10-11 22:31:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(106,'2023-10-11 22:34:47',1,1,'Login','Inicio de sesión '),(107,'2023-10-11 22:36:08',1,1,'Login','Inicio de sesión '),(108,'2023-10-11 22:36:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(109,'2023-10-11 22:36:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(110,'2023-10-11 22:38:39',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(111,'2023-10-11 22:39:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(112,'2023-10-11 22:41:18',3,1,'Login','Inicio de sesión '),(113,'2023-10-11 22:49:59',3,1,'Login','Inicio de sesión '),(114,'2023-10-11 22:50:07',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-11 22:50:12',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(116,'2023-10-11 22:50:45',3,1,'Login','Inicio de sesión '),(117,'2023-10-11 22:50:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(118,'2023-10-11 22:52:16',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(119,'2023-10-11 22:52:20',1,1,'Login','Inicio de sesión '),(120,'2023-10-11 22:52:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-11 22:52:38',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-11 22:52:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(123,'2023-10-11 22:53:42',3,1,'Login','Inicio de sesión '),(124,'2023-10-11 22:53:45',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(125,'2023-10-11 22:53:48',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(126,'2023-10-11 22:56:30',1,1,'Login','Inicio de sesión '),(127,'2023-10-11 22:56:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(128,'2023-10-11 22:56:55',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(129,'2023-10-11 22:56:58',NULL,9,'Salir','Se salio de Lista de Empleados'),(130,'2023-10-11 22:58:44',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(131,'2023-10-11 23:00:45',4,1,'Login','Inicio de sesión '),(132,'2023-10-11 23:00:49',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-11 23:00:55',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-11 23:00:58',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(135,'2023-10-11 23:01:01',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(136,'2023-10-11 23:01:04',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(137,'2023-10-11 23:01:08',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(138,'2023-10-11 23:01:11',1,1,'Login','Inicio de sesión '),(139,'2023-10-11 23:01:14',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(140,'2023-10-11 23:01:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(141,'2023-10-11 23:01:35',4,1,'Login','Inicio de sesión '),(142,'2023-10-11 23:01:38',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(143,'2023-10-11 23:02:11',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(144,'2023-10-11 23:02:20',4,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(145,'2023-10-11 23:02:37',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(146,'2023-10-13 22:05:10',1,1,'Login','Inicio de sesión '),(147,'2023-10-13 22:28:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(148,'2023-10-14 00:42:28',1,1,'Login','Inicio de sesión '),(149,'2023-10-14 11:08:43',1,1,'Login','Inicio de sesión '),(150,'2023-10-14 13:17:05',1,1,'Login','Inicio de sesión '),(151,'2023-10-14 14:41:09',1,1,'Login','Inicio de sesión '),(152,'2023-10-14 22:03:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(153,'2023-10-14 22:03:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(154,'2023-10-14 23:23:47',1,1,'Login','Inicio de sesión '),(155,'2023-10-15 00:19:56',1,1,'Login','Inicio de sesión '),(156,'2023-10-15 00:29:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-15 00:49:08',1,1,'Login','Inicio de sesión '),(158,'2023-10-15 00:50:33',1,1,'Login','Inicio de sesión '),(159,'2023-10-15 08:55:12',1,1,'Login','Inicio de sesión '),(160,'2023-10-15 14:51:10',1,1,'Login','Inicio de sesión '),(161,'2023-10-15 14:55:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(162,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(163,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(164,'2023-10-15 15:04:47',1,1,'Login','Inicio de sesión '),(165,'2023-10-15 15:05:31',1,1,'Login','Inicio de sesión '),(166,'2023-10-15 15:50:19',1,1,'Login','Inicio de sesión '),(167,'2023-10-15 21:27:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(168,'2023-10-15 21:30:11',1,5,'Registro','El usuario registró una nueva cita'),(169,'2023-10-15 21:31:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(170,'2023-10-17 22:33:18',1,1,'Login','Inicio de sesión '),(171,'2023-10-17 22:33:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(172,'2023-10-17 22:33:33',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(173,'2023-10-17 22:34:41',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(174,'2023-10-17 22:36:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(175,'2023-10-17 22:37:22',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(176,'2023-10-17 23:01:18',1,1,'Login','Inicio de sesión '),(177,'2023-10-17 23:01:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(178,'2023-10-17 23:02:11',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(179,'2023-10-17 23:02:47',5,1,'Login','Inicio de sesión '),(180,'2023-10-17 23:28:46',5,1,'Login','Inicio de sesión '),(181,'2023-10-17 23:29:29',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(182,'2023-10-17 23:32:14',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(183,'2023-10-17 23:42:28',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(184,'2023-10-17 23:43:09',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(185,'2023-10-17 23:43:20',1,1,'Login','Inicio de sesión '),(186,'2023-10-17 23:43:25',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(187,'2023-10-17 23:44:12',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(188,'2023-10-17 23:44:33',1,1,'Login','Inicio de sesión '),(189,'2023-10-17 23:44:38',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(190,'2023-10-17 23:45:51',1,11,'Modificación','El usuario modificó la contraseña'),(191,'2023-10-18 20:01:14',5,1,'Login','Inicio de sesión '),(192,'2023-10-18 20:05:32',1,1,'Login','Inicio de sesión '),(193,'2023-10-18 20:05:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(194,'2023-10-18 21:28:08',1,1,'Login','Inicio de sesión '),(195,'2023-10-18 21:28:13',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(196,'2023-10-18 21:28:52',1,11,'Modificación','El usuario modificó la contraseña'),(197,'2023-10-18 21:29:01',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(198,'2023-10-18 21:29:08',1,1,'Login','Inicio de sesión '),(199,'2023-10-19 10:23:15',5,1,'Login','Inicio de sesión '),(200,'2023-10-19 10:23:20',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(201,'2023-10-19 10:24:16',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(202,'2023-10-19 10:32:30',1,1,'Login','Inicio de sesión '),(203,'2023-10-19 10:32:36',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(204,'2023-10-19 10:33:50',5,1,'Login','Inicio de sesión '),(205,'2023-10-19 10:34:04',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-19 10:35:05',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(207,'2023-10-19 10:35:28',5,1,'Login','Inicio de sesión '),(208,'2023-10-19 10:35:31',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(209,'2023-10-19 10:36:24',5,11,'Modificación','El usuario modificó la contraseña'),(210,'2023-10-19 10:36:34',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(211,'2023-10-19 10:36:58',5,1,'Login','Inicio de sesión '),(212,'2023-10-19 10:52:47',5,1,'Login','Inicio de sesión '),(213,'2023-10-19 10:53:09',1,1,'Login','Inicio de sesión '),(214,'2023-10-19 10:53:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(215,'2023-10-19 10:53:23',NULL,9,'Salir','Se salio de Lista de Empleados'),(216,'2023-10-19 11:02:44',6,1,'Login','Inicio de sesión '),(217,'2023-10-19 11:11:20',1,1,'Login','Inicio de sesión '),(218,'2023-10-19 11:11:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(219,'2023-10-19 11:21:06',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(220,'2023-10-19 11:25:05',5,1,'Login','Inicio de sesión '),(221,'2023-10-19 11:25:09',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(222,'2023-10-19 18:09:09',1,1,'Login','Inicio de sesión '),(223,'2023-10-19 18:09:26',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(224,'2023-10-19 20:34:53',1,1,'Login','Inicio de sesión '),(225,'2023-10-19 20:36:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(226,'2023-10-19 20:37:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(227,'2023-10-19 22:20:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(228,'2023-10-19 23:04:53',1,1,'Login','Inicio de sesión '),(229,'2023-10-19 23:04:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(230,'2023-10-19 23:09:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(231,'2023-10-19 23:09:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(232,'2023-10-19 23:26:04',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(233,'2023-10-19 23:32:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(234,'2023-10-19 23:33:12',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(235,'2023-10-19 23:41:08',NULL,9,'Salir','Se salio de Lista de Empleados'),(236,'2023-10-19 23:43:04',1,1,'Login','Inicio de sesión '),(237,'2023-10-19 23:43:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(238,'2023-10-19 23:44:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(239,'2023-10-19 23:45:46',1,1,'Login','Inicio de sesión '),(240,'2023-10-19 23:45:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(241,'2023-10-19 23:46:58',1,1,'Login','Inicio de sesión '),(242,'2023-10-19 23:46:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(243,'2023-10-19 23:47:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(244,'2023-10-19 23:50:48',1,1,'Login','Inicio de sesión '),(245,'2023-10-19 23:50:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(246,'2023-10-19 23:51:24',5,1,'Login','Inicio de sesión '),(247,'2023-10-19 23:52:48',1,1,'Login','Inicio de sesión '),(248,'2023-10-19 23:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(249,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(250,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(251,'2023-10-20 16:29:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(252,'2023-10-20 16:29:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(253,'2023-10-20 16:31:47',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(254,'2023-10-20 16:48:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(255,'2023-10-20 17:03:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(256,'2023-10-20 17:03:43',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(257,'2023-10-20 17:03:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(258,'2023-10-20 17:04:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(259,'2023-10-20 17:09:34',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(260,'2023-10-20 17:10:05',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(261,'2023-10-20 20:15:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(262,'2023-10-20 20:17:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(263,'2023-10-20 20:18:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(264,'2023-10-20 20:19:13',1,1,'Login','Inicio de sesión '),(265,'2023-10-20 20:19:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(266,'2023-10-20 20:20:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(267,'2023-10-20 20:21:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(268,'2023-10-20 20:23:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(269,'2023-10-20 20:23:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(270,'2023-10-20 20:23:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(271,'2023-10-20 20:31:29',1,1,'Login','Inicio de sesión '),(272,'2023-10-20 20:31:31',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(273,'2023-10-20 20:33:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(274,'2023-10-20 20:33:21',1,1,'Login','Inicio de sesión '),(275,'2023-10-20 20:33:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(276,'2023-10-20 20:38:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(277,'2023-10-20 20:51:33',9,1,'Login','Inicio de sesión '),(278,'2023-10-20 20:51:40',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-20 20:51:45',9,11,'Modificación','El usuario modificó los datos del perfil'),(280,'2023-10-20 20:53:23',9,1,'Login','Inicio de sesión '),(281,'2023-10-20 20:53:28',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(282,'2023-10-20 20:53:41',9,11,'Modificación','El usuario modificó las preguntas de seguridad'),(283,'2023-10-20 20:55:51',9,11,'Modificación','El usuario modificó la contraseña'),(284,'2023-10-20 20:55:55',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(285,'2023-10-20 20:56:26',9,1,'Login','Inicio de sesión '),(286,'2023-10-20 21:06:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(287,'2023-10-20 21:15:54',9,1,'Login','Inicio de sesión '),(288,'2023-10-20 21:16:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(289,'2023-10-20 21:16:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(290,'2023-10-20 21:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(291,'2023-10-20 21:16:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-10-20 21:30:18',1,1,'Login','Inicio de sesión '),(293,'2023-10-20 21:30:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(294,'2023-10-20 21:33:52',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 21:33:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-20 21:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(297,'2023-10-20 21:39:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-20 21:42:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(299,'2023-10-20 21:42:58',1,1,'Login','Inicio de sesión '),(300,'2023-10-20 21:43:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(301,'2023-10-20 21:43:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(302,'2023-10-20 21:44:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(303,'2023-10-20 21:45:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(304,'2023-10-20 21:49:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(305,'2023-10-20 22:09:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-10-21 07:31:04',1,1,'Login','Inicio de sesión '),(307,'2023-10-21 07:31:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(308,'2023-10-21 07:40:03',1,1,'Login','Inicio de sesión '),(309,'2023-10-21 07:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(310,'2023-10-21 07:44:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(311,'2023-10-21 07:44:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(312,'2023-10-21 07:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(313,'2023-10-21 07:46:36',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(314,'2023-10-21 07:53:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(315,'2023-10-22 08:19:26',1,1,'Login','Inicio de sesión '),(316,'2023-10-22 08:19:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-10-22 09:19:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(318,'2023-10-22 09:26:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(319,'2023-10-22 10:53:33',1,1,'Login','Inicio de sesión '),(320,'2023-10-22 14:33:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-10-22 14:36:44',1,1,'Login','Inicio de sesión '),(322,'2023-10-22 14:36:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(323,'2023-10-22 14:37:46',9,1,'Login','Inicio de sesión '),(324,'2023-10-22 15:00:29',1,1,'Login','Inicio de sesión '),(325,'2023-10-22 15:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(326,'2023-10-22 15:15:58',1,1,'Login','Inicio de sesión '),(327,'2023-10-22 15:17:15',1,1,'Login','Inicio de sesión '),(328,'2023-10-22 16:03:41',1,1,'Login','Inicio de sesión '),(329,'2023-10-22 16:30:25',1,1,'Login','Inicio de sesión '),(330,'2023-10-22 16:50:12',1,1,'Login','Inicio de sesión '),(331,'2023-10-22 16:50:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(332,'2023-10-22 16:50:26',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(333,'2023-10-22 16:50:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(334,'2023-10-22 16:52:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(335,'2023-10-22 16:52:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(336,'2023-10-22 16:53:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(337,'2023-10-22 16:53:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(338,'2023-10-22 21:31:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(339,'2023-10-22 21:31:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(340,'2023-10-22 21:32:34',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(341,'2023-10-22 21:36:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(342,'2023-10-22 21:38:39',1,1,'Login','Inicio de sesión '),(343,'2023-10-22 21:38:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(344,'2023-10-22 21:39:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(345,'2023-10-22 21:44:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(346,'2023-10-22 21:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(347,'2023-10-22 22:57:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(348,'2023-10-24 21:27:02',1,1,'Login','Inicio de sesión '),(349,'2023-10-24 21:28:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(350,'2023-10-24 21:28:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(351,'2023-10-24 21:32:21',1,1,'Login','Inicio de sesión '),(352,'2023-10-24 21:32:29',1,1,'Login','Inicio de sesión '),(353,'2023-10-24 21:32:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(354,'2023-10-24 21:39:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-10-24 22:04:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(356,'2023-10-24 22:19:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-10-24 22:29:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(358,'2023-10-26 21:55:44',1,1,'Login','Inicio de sesión '),(359,'2023-10-26 22:02:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(360,'2023-10-26 22:07:00',1,1,'Login','Inicio de sesión '),(361,'2023-10-26 22:07:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-10-26 22:12:35',1,1,'Login','Inicio de sesión '),(363,'2023-10-26 22:12:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(364,'2023-10-26 22:17:01',5,1,'Login','Inicio de sesión '),(365,'2023-10-26 22:19:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-26 22:19:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(367,'2023-10-26 22:30:19',1,1,'Login','Inicio de sesión '),(368,'2023-10-27 00:17:06',5,1,'Login','Inicio de sesión '),(369,'2023-10-27 18:52:02',1,1,'Login','Inicio de sesión '),(370,'2023-10-27 18:52:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(371,'2023-10-27 18:56:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-10-27 19:18:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(373,'2023-10-27 19:19:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-10-27 19:41:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-10-28 21:49:47',1,1,'Login','Inicio de sesión '),(376,'2023-10-28 21:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-10-28 21:54:14',11,1,'Login','Inicio de sesión '),(378,'2023-10-28 21:54:19',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(379,'2023-10-28 21:55:09',11,11,'Modificación','El usuario modificó la contraseña'),(380,'2023-10-28 21:55:26',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(381,'2023-10-28 21:55:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(382,'2023-10-28 23:52:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(383,'2023-10-28 23:59:47',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(384,'2023-10-29 00:05:37',1,1,'Login','Inicio de sesión '),(385,'2023-10-29 00:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-30 18:48:30',1,1,'Login','Inicio de sesión '),(387,'2023-10-30 18:48:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(388,'2023-10-30 18:49:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(389,'2023-10-30 21:13:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(390,'2023-10-30 22:04:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(391,'2023-10-30 22:05:35',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(392,'2023-10-30 22:06:01',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(393,'2023-10-30 22:14:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(394,'2023-10-30 22:21:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(395,'2023-10-30 22:24:32',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(396,'2023-10-30 22:24:55',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(397,'2023-10-30 22:33:03',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(398,'2023-10-30 22:33:17',11,1,'Login','Inicio de sesión '),(399,'2023-10-30 22:33:26',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(400,'2023-10-30 22:34:36',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(401,'2023-10-30 22:34:54',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(402,'2023-10-30 22:35:24',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(403,'2023-10-30 22:35:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(404,'2023-10-30 22:35:48',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(405,'2023-10-30 22:36:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(406,'2023-10-30 22:36:43',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(407,'2023-10-30 22:42:29',1,1,'Login','Inicio de sesión '),(408,'2023-10-30 22:52:53',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(409,'2023-10-30 22:53:13',11,1,'Login','Inicio de sesión '),(410,'2023-10-31 19:40:17',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-10-31 19:40:40',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-10-31 19:41:14',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(413,'2023-10-31 19:44:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-10-31 19:49:31',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(415,'2023-10-31 21:13:25',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-10-31 21:15:04',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(417,'2023-10-31 21:25:20',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(418,'2023-10-31 21:32:43',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(419,'2023-10-31 21:33:00',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(420,'2023-10-31 21:33:23',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-10-31 21:33:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(422,'2023-10-31 21:37:28',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(423,'2023-10-31 21:43:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-10-31 21:51:09',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(425,'2023-10-31 21:52:47',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(426,'2023-10-31 21:53:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(427,'2023-11-01 16:18:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-01 16:20:53',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(429,'2023-11-01 16:20:55',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-01 16:21:23',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(431,'2023-11-01 16:23:02',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-01 16:25:06',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(433,'2023-11-01 16:26:38',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-01 16:28:16',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(435,'2023-11-01 16:28:39',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(436,'2023-11-01 16:29:38',1,1,'Login','Inicio de sesión '),(437,'2023-11-01 16:29:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(438,'2023-11-01 16:30:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(439,'2023-11-01 16:32:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(440,'2023-11-01 16:33:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(441,'2023-11-01 16:44:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-11-01 16:44:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(443,'2023-11-01 21:32:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-11-01 21:46:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(445,'2023-11-01 23:17:41',NULL,9,'Salir','Se salio de Lista de Empleados'),(446,'2023-11-01 23:23:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(447,'2023-11-01 23:34:13',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(448,'2023-11-01 23:34:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(449,'2023-11-02 17:55:44',1,1,'Login','Inicio de sesión '),(450,'2023-11-02 17:55:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-02 17:56:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(452,'2023-11-02 20:34:35',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(453,'2023-11-02 20:35:17',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(454,'2023-11-02 20:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-02 20:39:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(456,'2023-11-02 20:39:30',1,1,'Login','Inicio de sesión '),(457,'2023-11-02 20:39:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(458,'2023-11-02 20:41:23',1,1,'Login','Inicio de sesión '),(459,'2023-11-02 20:41:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(460,'2023-11-02 20:46:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(461,'2023-11-02 20:56:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(462,'2023-11-02 20:56:54',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(463,'2023-11-02 21:02:48',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(464,'2023-11-02 21:07:47',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(465,'2023-11-02 21:07:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(466,'2023-11-02 21:08:28',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(467,'2023-11-02 21:09:38',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(468,'2023-11-02 21:17:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(469,'2023-11-02 21:29:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(470,'2023-11-02 21:29:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(471,'2023-11-02 21:30:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(472,'2023-11-02 21:40:27',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(473,'2023-11-02 21:43:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(474,'2023-11-02 22:08:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(475,'2023-11-02 22:09:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(476,'2023-11-02 22:15:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-11-02 22:18:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(478,'2023-11-02 22:20:43',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(479,'2023-11-02 22:31:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(480,'2023-11-02 22:31:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(481,'2023-11-02 22:32:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(482,'2023-11-02 22:34:14',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(483,'2023-11-02 22:36:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(484,'2023-11-02 22:36:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(485,'2023-11-02 22:38:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(486,'2023-11-02 22:47:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(487,'2023-11-02 22:48:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(488,'2023-11-02 22:48:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(489,'2023-11-02 22:48:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(490,'2023-11-02 22:50:32',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(491,'2023-11-02 23:03:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(492,'2023-11-02 23:03:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(493,'2023-11-02 23:28:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(494,'2023-11-02 23:29:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(495,'2023-11-02 23:53:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(496,'2023-11-02 23:57:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(497,'2023-11-03 00:09:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(498,'2023-11-03 00:42:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(499,'2023-11-03 00:45:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(500,'2023-11-03 00:46:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(501,'2023-11-03 00:51:42',NULL,9,'Salir','Se salio de Lista de Empleados'),(502,'2023-11-03 01:05:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(503,'2023-11-03 01:05:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-03 01:41:21',1,1,'Login','Inicio de sesión '),(505,'2023-11-03 01:41:32',1,1,'Login','Inicio de sesión '),(506,'2023-11-03 01:41:49',1,1,'Login','Inicio de sesión '),(507,'2023-11-03 01:42:15',1,1,'Login','Inicio de sesión '),(508,'2023-11-03 16:40:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(509,'2023-11-03 16:45:51',1,1,'Login','Inicio de sesión '),(510,'2023-11-03 16:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-11-03 16:52:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(512,'2023-11-03 16:53:11',1,1,'Login','Inicio de sesión '),(513,'2023-11-03 17:48:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(514,'2023-11-03 17:50:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-11-03 17:50:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(516,'2023-11-03 17:50:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(517,'2023-11-03 17:51:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(518,'2023-11-03 19:53:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-11-03 19:54:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(520,'2023-11-03 20:19:53',1,1,'Login','Inicio de sesión '),(521,'2023-11-03 20:19:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(522,'2023-11-03 20:46:32',1,1,'Login','Inicio de sesión '),(523,'2023-11-03 22:18:03',1,1,'Login','Inicio de sesión '),(524,'2023-11-03 22:42:38',1,1,'Login','Inicio de sesión '),(525,'2023-11-03 22:42:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(526,'2023-11-03 22:43:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(527,'2023-11-03 22:51:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(528,'2023-11-03 22:51:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(529,'2023-11-04 08:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-11-04 08:16:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(531,'2023-11-04 08:19:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(532,'2023-11-04 08:19:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(533,'2023-11-04 09:27:57',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(534,'2023-11-04 09:28:04',1,1,'Login','Inicio de sesión '),(535,'2023-11-04 09:28:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(536,'2023-11-04 09:28:36',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(537,'2023-11-04 10:21:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(538,'2023-11-04 10:22:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(539,'2023-11-04 14:22:05',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(540,'2023-11-04 14:59:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(541,'2023-11-04 15:00:03',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(542,'2023-11-04 20:09:01',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(543,'2023-11-04 20:36:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(544,'2023-11-04 20:36:59',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(545,'2023-11-04 20:37:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(546,'2023-11-04 21:43:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(547,'2023-11-04 21:45:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(548,'2023-11-04 21:45:48',11,1,'Login','Inicio de sesión '),(549,'2023-11-04 21:47:23',11,1,'Login','Inicio de sesión '),(550,'2023-11-04 21:48:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-11-04 21:51:21',9,1,'Login','Inicio de sesión '),(552,'2023-11-04 22:00:40',11,1,'Login','Inicio de sesión '),(553,'2023-11-04 22:00:50',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-04 22:02:21',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(555,'2023-11-04 22:12:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-11-04 22:12:35',11,1,'Login','Inicio de sesión '),(557,'2023-11-04 22:17:44',9,1,'Login','Inicio de sesión '),(558,'2023-11-04 22:25:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(559,'2023-11-04 22:26:20',11,1,'Login','Inicio de sesión '),(560,'2023-11-04 22:43:52',1,1,'Login','Inicio de sesión '),(561,'2023-11-04 22:46:39',11,1,'Login','Inicio de sesión '),(562,'2023-11-04 23:22:36',9,1,'Login','Inicio de sesión '),(563,'2023-11-04 23:45:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(564,'2023-11-04 23:52:19',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(565,'2023-11-04 23:56:03',11,5,'Salir','El usuario salió de la pantalla de citas'),(566,'2023-11-04 23:56:35',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(567,'2023-11-04 23:59:03',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(568,'2023-11-05 00:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(569,'2023-11-05 01:16:03',1,1,'Login','Inicio de sesión '),(570,'2023-11-05 01:16:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-11-05 01:24:09',11,1,'Login','Inicio de sesión '),(572,'2023-11-05 01:29:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(573,'2023-11-06 12:05:08',1,1,'Login','Inicio de sesión '),(574,'2023-11-06 12:05:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(575,'2023-11-06 18:36:47',1,1,'Login','Inicio de sesión '),(576,'2023-11-06 18:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(577,'2023-11-06 18:41:24',1,1,'Login','Inicio de sesión '),(578,'2023-11-06 18:41:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(579,'2023-11-06 18:42:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(580,'2023-11-06 18:42:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(581,'2023-11-06 22:17:55',1,1,'Login','Inicio de sesión '),(582,'2023-11-06 22:17:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-11-06 22:18:17',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(584,'2023-11-08 21:49:47',1,1,'Login','Inicio de sesión '),(585,'2023-11-08 21:49:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(586,'2023-11-08 21:50:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-11-08 22:30:07',1,1,'Login','Inicio de sesión '),(588,'2023-11-08 22:30:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿Cual es tu color Favorito?','Jared',NULL,NULL,NULL),(2,'¿Cual es tu equipo favorito?','Romeo',NULL,NULL,NULL),(3,'¿Cual es el nombre de tu abuelo paterno?','Erick',NULL,NULL,NULL),(4,'¿Como se llamaba tu primer mascota?','ERICKK','2023-03-15',NULL,NULL),(5,'¿A donde quieres viajar?','Moisa','2023-03-21',NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL);
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
  `estado` varchar(10) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','Activo',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario','Activo',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'Tecnico','El que da mantenimiento a los server','Inactivo',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','Activo',NULL,'2023-11-05 03:43:23',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$boRkMe4e95wryA2qrUqbGOzonpRvr1Ne3tperfFThc/nEKGFFEVwG',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Activo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(4,'ELVIS','ELVIS','Inactivo','$2b$10$4AzKNdCImN0j0Rsh2XN3XOSY3cmdkcLzO8GTGjTDOYbCZR.CQEmf6',1,NULL,0,0,'2024-01-09','elvis@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(5,'JUAN','JUAN','Nuevo','$2b$10$qNrvnEqzc/H1kH3ZtlkSTuJFkTO3J7q8bHAt8NbA/5JYqaXm1FfOS',2,NULL,0,0,'2024-01-15','juan@gmail.com',5,NULL,'2023-10-17',NULL,'2023-10-17'),(6,'OLVIN','OLVIN','Nuevo','$2b$10$uaN6CTNYSexxAaVwMIaBHec286LTMUWUZv7rdrPrq1JUldqqD0bUS',2,NULL,0,0,'2024-01-17','prueba@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(7,'ELIZA','ELIZA','Activo','$2b$10$yXXsfa27S58cxMruB8XdjO4.SKgKuZCIQFetewLCR/52WzE8wlDSu',2,NULL,0,0,'2024-01-28','eli@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(8,'TEST','TEST','Inactivo','$2b$10$0S0WFR97fc6Yly36YwBIs.tUZDSrtyzQLG0U2gIXdO7blRTO.otSu',1,NULL,0,0,'2024-01-17','test@gmail.com',7,NULL,'2023-10-19',NULL,'2023-10-19'),(9,'HEIDY','HEIDY','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',2,NULL,0,0,'2024-01-19','heidy@gmail.com',13,NULL,'2023-10-20',NULL,'2023-10-20'),(10,'KAGUILERA','KAGUILERA','Nuevo','$2b$10$Yio/a0B8Mor4wJk/wshgS.8AUl8Lm3KH8v8r2VlXV4Z30AR1Po4YO',1,NULL,0,0,'2024-01-20','karen@gmail.com',16,NULL,'2023-10-22',NULL,'2023-10-22'),(11,'SANTOS','SANTOS','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',8,NULL,0,0,'2024-01-28','santos@gmail.com',15,NULL,'2023-10-28',NULL,'2023-10-28');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,1,1,'2023-08-20 01:54:18','Pendiente',2500,289.6),(2,1,1,'2023-08-20 01:54:32','Pagado',289.6,0),(3,2,1,'2023-08-20 17:16:01','Pagado',2613.6,0),(4,4,4,'2023-10-14 17:10:03','Pendiente',5000,579.2),(5,4,2,'2023-10-14 17:10:31','Pagado',579.2,0),(6,5,4,'2023-10-14 17:25:20','Pagado',2728,0),(7,6,4,'2023-10-14 20:08:44','Pagado',2904,0),(8,7,4,'2023-10-15 03:59:34','Pagado',2904,0),(9,8,4,'2023-10-15 04:04:27','Pagado',5456,0);
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
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (2,'Costa Rica'),(6,'España'),(3,'Estados Unidos'),(1,'Honduras'),(7,'Italia'),(4,'Mexico'),(5,'Panama ');
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','s',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'n','s','n','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','s','s','s',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL),(2,8,'s','s','s','n',NULL,NULL,NULL,NULL),(3,8,'s','s','s','n',NULL,NULL,NULL,NULL),(4,8,'s','s','s','n',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'s','s','s','s',NULL,NULL,NULL,NULL),(8,8,'s','s','s','s',NULL,NULL,NULL,NULL),(9,8,'s','s','s','n',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25',1,0.12,'PaQuetazos'),(2,'2023-10-13','2023-10-25',1,0.4,'PromoNuevos');
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
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','Erick',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','+50496235694','erickpavon544@gmail.com'),(2,'Marcos & Cia','Marcos quien mas xd',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com'),(8,'UNAH3','Erick',2,48,'Aros de la gama mas economica y repuestos',' Tegucigalpa M.D.C','+504962356','erickpavon545@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15');
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
  `estado` varchar(10) DEFAULT NULL,
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
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'CERCA DE LA CURASAO','20282862','Inactivo'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','Inactivo'),(3,3,32,'ALCALDIA MUNICIPAL','22306587','Activo'),(4,1,4,'PARQUE LA AURORA','22115596','Inactivo'),(5,5,30,'SPS','22346712','Inactivo'),(6,5,5,'VILLA VIEJA-MERCADO','23182862','Inactivo'),(7,1,48,'GUAYA','98761212','Activo');
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
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (1,'Entrada'),(2,'Salida');
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
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (4,'De contado'),(1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
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
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 01:54:08','2023-08-17','2023-08-01','0802200101153',NULL,'12121212','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2789.6),(2,'2023-08-20 16:36:57','2023-08-13','2023-08-08','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2613.6),(3,'2023-10-14 06:52:35','2023-10-02','2023-11-02','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL),(4,'2023-10-14 17:09:41','2023-10-20','2023-10-04','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5579.2),(5,'2023-10-14 17:23:52','2023-10-25','2023-10-04','0802200101153',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2728),(6,'2023-10-14 20:08:38','2023-10-27','2023-10-05','0801199411205',NULL,'08012000011520','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904),(7,'2023-10-15 03:59:17','2023-10-19','2023-10-18','0801199411205',NULL,'080119990113621','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904),(8,'2023-10-15 04:04:20','2023-10-13','2023-10-16','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5456);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456);
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
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (48,'Ajuterique'),(41,'Bonito Oriental'),(45,'Brus Laguna'),(15,'Catacamas'),(30,'Chamelecon'),(8,'Choloma'),(5,'Choluteca'),(2,'Comayagua'),(35,'Comayagüela '),(11,'Danli'),(18,'Distrito Central'),(32,'El Porvenir'),(7,'El Progreso'),(22,'Gracias'),(39,'Guaimaca'),(43,'Jesus de Otoro'),(36,'Jutiapa'),(10,'Juticalpa'),(38,'La Campa'),(4,'La Ceiba'),(23,'La Esperanza'),(12,'La Lima'),(47,'La Masique'),(28,'La Paz'),(31,'Las Vegas'),(34,'Marcala'),(42,'Minas de Oro'),(21,'Nacaome'),(27,'Ocotepeque'),(17,'Olanchito'),(37,'Omoa Amapala'),(29,'Patuca'),(6,'Puerto Cortes'),(26,'Puerto Lempira'),(46,'San Jose de Colinas'),(3,'San Pedro Sula'),(19,'Santa Barbara'),(33,'Santa cruz de Yojoa'),(13,'Santa Rosa de Copan'),(14,'Siguatepeque'),(40,'Talanga'),(1,'Tegucigalpa'),(9,'Tela'),(44,'Teupasenti'),(16,'Tocoa'),(25,'Trujillo'),(20,'Yoro'),(24,'Yuscaran');
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
  `correoElectronico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0801199411202','MANUEL','SALGADO',1,'2023-10-25','CARRIZAL','89561472','manu@gmail.com'),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com'),('0801199411207','PRUEBA','PROBANDO',1,'2023-10-24','BUENAS NUEVAS','98741120','sabu@gmail.com'),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com');
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
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000),(2,'2023-08-20 17:35:02',6000);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000);
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
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida'),(6,'Choluteca'),(2,'Colón'),(3,'Comayagua'),(4,'Copán'),(5,'Cortés'),(7,'El Paraíso'),(8,'Francisco Morazán'),(9,'Gracias a Dios'),(10,'Intibucá'),(11,'Islas de la Bahía'),(12,'La Paz'),(13,'Lempira'),(14,'Ocotepeque'),(15,'Olancho'),(16,'Santa Bárbara'),(17,'Valle'),(18,'Yoro');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_descuento` VALUES (1,1,0,0.05),(2,1,0.1,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(4,'ELVIS','GODOY','99287403',1,1,'0802200101154',NULL,NULL,NULL,'Activo'),(5,'JUAN','RODRIGUEZ','99762137',1,1,'0801199802042',NULL,NULL,NULL,'Activo'),(7,'TEST','TEST','99884415',1,2,'0802200101153',NULL,NULL,NULL,'Inactivo'),(12,'MICKY','MOUSE','11223344',2,1,'0801199999994',NULL,NULL,NULL,'Inactivo'),(13,'HEIDY','ZELAYA','98451254',1,2,'0801199801456',NULL,NULL,NULL,'Activo'),(15,'ELVIN','SANTOS','11223344',1,1,'0801199002359','2023-11-15','0000-00-00','2001-11-03','Activo'),(16,'KAREN','AGUILERA','99287403',2,2,'0801199411204','2023-11-13','0000-00-00','2023-11-24','Inactivo'),(17,'ERICK','PAVON','96235694',1,1,'0801200001152',NULL,NULL,NULL,'Activo'),(19,'ERIKA','AMADOR','88131255',2,2,'0801199809821','2023-11-06','2023-11-13','2023-11-23','Inactivo'),(20,'ROSA IDALIA','GARCIA GIRON','99876543',1,2,'0801200201145','2023-11-06','0000-00-00','1992-11-02','Activo'),(22,'JOSE','ORTEGA','98635492',5,1,'0801200001111','2023-11-15','0000-00-00','2023-11-23','Activo'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Activo'),(24,'PRUEBA','PROBANDO','99806756',6,1,'0801200004536','2023-11-04','0000-00-00','2022-07-22','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(3,'2023-10-15 06:00:00','0801199411207',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(3,NULL,'dengue','ROSA','ERICK','PRESION BAJA','2','-2','2','-2','-2','-2','2','-1','-2','0','1','1','2023-08-19','2024-08-20'),(4,3,'NINGUNA','MESSI','RONALDO','ASMATICO','1','1','2','2','2','2','1','1','3','3','1','1','2023-10-15','2024-10-15');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_garantia` VALUES (1,'Garantia por ajustes',3,1,1),(2,'Garantia de calidad',3,1,1),(3,'shshsh',5,1,0);
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
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino'),(2,'Femenino');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,96);
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
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100),(2,2,1,1,'2023-08-20 01:54:08',1),(3,2,1,1,'2023-08-20 16:36:57',1),(4,1,1,1,'2023-08-20 06:00:00',5),(5,2,1,1,'2023-10-14 17:09:41',2),(6,2,1,1,'2023-10-14 17:23:52',1),(7,2,1,1,'2023-10-14 20:08:38',1),(8,2,1,1,'2023-10-15 03:59:18',1),(9,2,1,1,'2023-10-15 04:04:20',2);
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
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Transition',2000),(2,'Bifocales',1800),(3,'www',14000),(4,'Hola',NULL);
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
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN'),(2,'TOMMY HERNANDEZ');
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
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001),(2,1,'CK-2000',2001);
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
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:19:29',1,1,'Login','Inicio de sesión '),(2,'2023-08-19 17:19:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(3,'2023-08-19 17:19:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(4,'2023-08-19 17:19:52',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(5,'2023-08-19 17:20:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(6,'2023-08-19 17:20:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:22:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:24:04',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(9,'2023-08-19 17:32:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(10,'2023-08-19 17:32:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(11,'2023-08-19 17:33:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(12,'2023-08-19 17:49:40',1,1,'Login','Inicio de sesión '),(13,'2023-08-19 17:52:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 18:03:43',1,1,'Login','Inicio de sesión '),(15,'2023-08-19 18:03:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(16,'2023-08-19 18:08:08',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 18:08:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(18,'2023-08-19 18:08:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(19,'2023-08-19 18:11:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(20,'2023-08-19 18:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(21,'2023-08-19 18:13:49',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(22,'2023-08-19 18:14:19',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(23,'2023-08-19 18:14:29',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(24,'2023-08-19 18:14:52',NULL,9,'Salir','Se salio de Lista de Empleados'),(25,'2023-08-19 18:17:21',0,2,'Usuario nuevo','Se agrego un nuevo usuario'),(26,'2023-08-19 18:18:33',2,1,'Login','Inicio de sesión '),(27,'2023-08-19 18:21:30',1,1,'Login','Inicio de sesión '),(28,'2023-08-19 18:21:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 18:21:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(30,'2023-08-19 18:23:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(31,'2023-08-19 18:26:03',1,1,'Login','Inicio de sesión '),(32,'2023-08-19 18:26:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(33,'2023-08-19 19:43:49',1,1,'Login','Inicio de sesión '),(34,'2023-08-19 19:47:33',1,1,'Login','Inicio de sesión '),(35,'2023-08-19 19:49:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(36,'2023-08-19 19:55:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(37,'2023-08-19 21:05:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(38,'2023-08-19 21:05:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 21:05:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(40,'2023-08-19 21:46:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 21:47:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(42,'2023-08-19 21:47:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(43,'2023-08-19 21:47:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(44,'2023-08-19 21:47:53',1,1,'Login','Inicio de sesión '),(45,'2023-08-19 21:47:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(46,'2023-08-19 22:36:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-19 22:44:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(48,'2023-08-19 23:25:10',1,1,'Login','Inicio de sesión '),(49,'2023-08-19 23:25:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 00:30:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(51,'2023-08-20 01:21:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(52,'2023-08-20 01:21:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(53,'2023-08-20 11:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 11:43:23',1,5,'Borrar Cita','El usuario eliminó una cita'),(55,'2023-08-20 11:43:45',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(56,'2023-08-20 11:43:56',1,5,'Salir','El usuario salió de la pantalla de citas'),(57,'2023-08-20 11:43:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 11:44:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(59,'2023-08-20 12:22:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(60,'2023-08-20 13:42:23',1,1,'Login','Inicio de sesión '),(61,'2023-08-20 13:42:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(62,'2023-08-20 14:55:56',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 14:55:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(64,'2023-08-20 15:45:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(65,'2023-08-21 11:44:37',1,1,'Login','Inicio de sesión '),(66,'2023-08-21 11:44:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(67,'2023-08-21 12:02:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(68,'2023-08-21 12:23:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(69,'2023-08-21 12:33:48',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(70,'2023-08-21 12:35:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(71,'2023-08-21 13:24:38',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(72,'2023-08-21 13:24:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(73,'2023-08-21 13:28:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(74,'2023-08-21 13:39:00',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(75,'2023-08-21 13:40:41',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(76,'2023-08-21 13:40:46',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(77,'2023-08-21 23:30:21',1,1,'Login','Inicio de sesión '),(78,'2023-08-22 21:32:23',1,1,'Login','Inicio de sesión '),(79,'2023-08-22 21:32:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(80,'2023-08-22 21:32:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(81,'2023-08-22 21:32:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(82,'2023-08-23 01:06:43',1,1,'Login','Inicio de sesión '),(83,'2023-09-27 23:16:28',1,1,'Login','Inicio de sesión '),(84,'2023-09-27 23:16:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(85,'2023-09-27 23:17:39',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(86,'2023-09-27 23:18:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(87,'2023-09-27 23:18:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(88,'2023-09-27 23:22:15',1,1,'Login','Inicio de sesión '),(89,'2023-09-27 23:24:41',1,1,'Login','Inicio de sesión '),(90,'2023-09-27 23:28:34',1,1,'Login','Inicio de sesión '),(91,'2023-09-27 23:28:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(92,'2023-09-27 23:29:23',1,1,'Login','Inicio de sesión '),(93,'2023-09-27 23:29:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(94,'2023-10-11 22:13:49',1,1,'Login','Inicio de sesión '),(95,'2023-10-11 22:14:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(96,'2023-10-11 22:14:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(97,'2023-10-11 22:15:11',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(98,'2023-10-11 22:19:18',1,1,'Login','Inicio de sesión '),(99,'2023-10-11 22:19:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(100,'2023-10-11 22:20:17',1,1,'Login','Inicio de sesión '),(101,'2023-10-11 22:21:31',1,1,'Login','Inicio de sesión '),(102,'2023-10-11 22:21:36',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(103,'2023-10-11 22:24:16',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(104,'2023-10-11 22:31:28',1,1,'Login','Inicio de sesión '),(105,'2023-10-11 22:31:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(106,'2023-10-11 22:34:47',1,1,'Login','Inicio de sesión '),(107,'2023-10-11 22:36:08',1,1,'Login','Inicio de sesión '),(108,'2023-10-11 22:36:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(109,'2023-10-11 22:36:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(110,'2023-10-11 22:38:39',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(111,'2023-10-11 22:39:34',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(112,'2023-10-11 22:41:18',3,1,'Login','Inicio de sesión '),(113,'2023-10-11 22:49:59',3,1,'Login','Inicio de sesión '),(114,'2023-10-11 22:50:07',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(115,'2023-10-11 22:50:12',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(116,'2023-10-11 22:50:45',3,1,'Login','Inicio de sesión '),(117,'2023-10-11 22:50:49',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(118,'2023-10-11 22:52:16',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(119,'2023-10-11 22:52:20',1,1,'Login','Inicio de sesión '),(120,'2023-10-11 22:52:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(121,'2023-10-11 22:52:38',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(122,'2023-10-11 22:52:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(123,'2023-10-11 22:53:42',3,1,'Login','Inicio de sesión '),(124,'2023-10-11 22:53:45',3,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(125,'2023-10-11 22:53:48',3,11,'Salir de perfil','El usuario salio de Mi Perfil'),(126,'2023-10-11 22:56:30',1,1,'Login','Inicio de sesión '),(127,'2023-10-11 22:56:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(128,'2023-10-11 22:56:55',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(129,'2023-10-11 22:56:58',NULL,9,'Salir','Se salio de Lista de Empleados'),(130,'2023-10-11 22:58:44',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(131,'2023-10-11 23:00:45',4,1,'Login','Inicio de sesión '),(132,'2023-10-11 23:00:49',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(133,'2023-10-11 23:00:55',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(134,'2023-10-11 23:00:58',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(135,'2023-10-11 23:01:01',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(136,'2023-10-11 23:01:04',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(137,'2023-10-11 23:01:08',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(138,'2023-10-11 23:01:11',1,1,'Login','Inicio de sesión '),(139,'2023-10-11 23:01:14',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(140,'2023-10-11 23:01:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(141,'2023-10-11 23:01:35',4,1,'Login','Inicio de sesión '),(142,'2023-10-11 23:01:38',4,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(143,'2023-10-11 23:02:11',4,11,'Salir de perfil','El usuario salio de Mi Perfil'),(144,'2023-10-11 23:02:20',4,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(145,'2023-10-11 23:02:37',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(146,'2023-10-13 22:05:10',1,1,'Login','Inicio de sesión '),(147,'2023-10-13 22:28:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(148,'2023-10-14 00:42:28',1,1,'Login','Inicio de sesión '),(149,'2023-10-14 11:08:43',1,1,'Login','Inicio de sesión '),(150,'2023-10-14 13:17:05',1,1,'Login','Inicio de sesión '),(151,'2023-10-14 14:41:09',1,1,'Login','Inicio de sesión '),(152,'2023-10-14 22:03:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(153,'2023-10-14 22:03:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(154,'2023-10-14 23:23:47',1,1,'Login','Inicio de sesión '),(155,'2023-10-15 00:19:56',1,1,'Login','Inicio de sesión '),(156,'2023-10-15 00:29:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(157,'2023-10-15 00:49:08',1,1,'Login','Inicio de sesión '),(158,'2023-10-15 00:50:33',1,1,'Login','Inicio de sesión '),(159,'2023-10-15 08:55:12',1,1,'Login','Inicio de sesión '),(160,'2023-10-15 14:51:10',1,1,'Login','Inicio de sesión '),(161,'2023-10-15 14:55:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(162,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(163,'2023-10-15 14:55:07',1,1,'Login','Inicio de sesión '),(164,'2023-10-15 15:04:47',1,1,'Login','Inicio de sesión '),(165,'2023-10-15 15:05:31',1,1,'Login','Inicio de sesión '),(166,'2023-10-15 15:50:19',1,1,'Login','Inicio de sesión '),(167,'2023-10-15 21:27:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(168,'2023-10-15 21:30:11',1,5,'Registro','El usuario registró una nueva cita'),(169,'2023-10-15 21:31:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(170,'2023-10-17 22:33:18',1,1,'Login','Inicio de sesión '),(171,'2023-10-17 22:33:21',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(172,'2023-10-17 22:33:33',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(173,'2023-10-17 22:34:41',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(174,'2023-10-17 22:36:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(175,'2023-10-17 22:37:22',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(176,'2023-10-17 23:01:18',1,1,'Login','Inicio de sesión '),(177,'2023-10-17 23:01:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(178,'2023-10-17 23:02:11',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(179,'2023-10-17 23:02:47',5,1,'Login','Inicio de sesión '),(180,'2023-10-17 23:28:46',5,1,'Login','Inicio de sesión '),(181,'2023-10-17 23:29:29',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(182,'2023-10-17 23:32:14',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(183,'2023-10-17 23:42:28',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(184,'2023-10-17 23:43:09',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(185,'2023-10-17 23:43:20',1,1,'Login','Inicio de sesión '),(186,'2023-10-17 23:43:25',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(187,'2023-10-17 23:44:12',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(188,'2023-10-17 23:44:33',1,1,'Login','Inicio de sesión '),(189,'2023-10-17 23:44:38',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(190,'2023-10-17 23:45:51',1,11,'Modificación','El usuario modificó la contraseña'),(191,'2023-10-18 20:01:14',5,1,'Login','Inicio de sesión '),(192,'2023-10-18 20:05:32',1,1,'Login','Inicio de sesión '),(193,'2023-10-18 20:05:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(194,'2023-10-18 21:28:08',1,1,'Login','Inicio de sesión '),(195,'2023-10-18 21:28:13',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(196,'2023-10-18 21:28:52',1,11,'Modificación','El usuario modificó la contraseña'),(197,'2023-10-18 21:29:01',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(198,'2023-10-18 21:29:08',1,1,'Login','Inicio de sesión '),(199,'2023-10-19 10:23:15',5,1,'Login','Inicio de sesión '),(200,'2023-10-19 10:23:20',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(201,'2023-10-19 10:24:16',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(202,'2023-10-19 10:32:30',1,1,'Login','Inicio de sesión '),(203,'2023-10-19 10:32:36',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(204,'2023-10-19 10:33:50',5,1,'Login','Inicio de sesión '),(205,'2023-10-19 10:34:04',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(206,'2023-10-19 10:35:05',0,11,'Salir de perfil','El usuario salió de Mi Perfil'),(207,'2023-10-19 10:35:28',5,1,'Login','Inicio de sesión '),(208,'2023-10-19 10:35:31',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(209,'2023-10-19 10:36:24',5,11,'Modificación','El usuario modificó la contraseña'),(210,'2023-10-19 10:36:34',5,11,'Salir de perfil','El usuario salió de Mi Perfil'),(211,'2023-10-19 10:36:58',5,1,'Login','Inicio de sesión '),(212,'2023-10-19 10:52:47',5,1,'Login','Inicio de sesión '),(213,'2023-10-19 10:53:09',1,1,'Login','Inicio de sesión '),(214,'2023-10-19 10:53:11',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(215,'2023-10-19 10:53:23',NULL,9,'Salir','Se salio de Lista de Empleados'),(216,'2023-10-19 11:02:44',6,1,'Login','Inicio de sesión '),(217,'2023-10-19 11:11:20',1,1,'Login','Inicio de sesión '),(218,'2023-10-19 11:11:23',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(219,'2023-10-19 11:21:06',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(220,'2023-10-19 11:25:05',5,1,'Login','Inicio de sesión '),(221,'2023-10-19 11:25:09',5,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(222,'2023-10-19 18:09:09',1,1,'Login','Inicio de sesión '),(223,'2023-10-19 18:09:26',1,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(224,'2023-10-19 20:34:53',1,1,'Login','Inicio de sesión '),(225,'2023-10-19 20:36:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(226,'2023-10-19 20:37:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(227,'2023-10-19 22:20:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(228,'2023-10-19 23:04:53',1,1,'Login','Inicio de sesión '),(229,'2023-10-19 23:04:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(230,'2023-10-19 23:09:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(231,'2023-10-19 23:09:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(232,'2023-10-19 23:26:04',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(233,'2023-10-19 23:32:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(234,'2023-10-19 23:33:12',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(235,'2023-10-19 23:41:08',NULL,9,'Salir','Se salio de Lista de Empleados'),(236,'2023-10-19 23:43:04',1,1,'Login','Inicio de sesión '),(237,'2023-10-19 23:43:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(238,'2023-10-19 23:44:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(239,'2023-10-19 23:45:46',1,1,'Login','Inicio de sesión '),(240,'2023-10-19 23:45:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(241,'2023-10-19 23:46:58',1,1,'Login','Inicio de sesión '),(242,'2023-10-19 23:46:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(243,'2023-10-19 23:47:15',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(244,'2023-10-19 23:50:48',1,1,'Login','Inicio de sesión '),(245,'2023-10-19 23:50:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(246,'2023-10-19 23:51:24',5,1,'Login','Inicio de sesión '),(247,'2023-10-19 23:52:48',1,1,'Login','Inicio de sesión '),(248,'2023-10-19 23:52:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(249,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(250,'2023-10-20 16:26:54',1,1,'Login','Inicio de sesión '),(251,'2023-10-20 16:29:13',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(252,'2023-10-20 16:29:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(253,'2023-10-20 16:31:47',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(254,'2023-10-20 16:48:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(255,'2023-10-20 17:03:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(256,'2023-10-20 17:03:43',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(257,'2023-10-20 17:03:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(258,'2023-10-20 17:04:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(259,'2023-10-20 17:09:34',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(260,'2023-10-20 17:10:05',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(261,'2023-10-20 20:15:45',NULL,9,'Salir','Se salio de Lista de Empleados'),(262,'2023-10-20 20:17:43',NULL,9,'Salir','Se salio de Lista de Empleados'),(263,'2023-10-20 20:18:09',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(264,'2023-10-20 20:19:13',1,1,'Login','Inicio de sesión '),(265,'2023-10-20 20:19:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(266,'2023-10-20 20:20:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(267,'2023-10-20 20:21:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(268,'2023-10-20 20:23:44',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(269,'2023-10-20 20:23:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(270,'2023-10-20 20:23:50',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(271,'2023-10-20 20:31:29',1,1,'Login','Inicio de sesión '),(272,'2023-10-20 20:31:31',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(273,'2023-10-20 20:33:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(274,'2023-10-20 20:33:21',1,1,'Login','Inicio de sesión '),(275,'2023-10-20 20:33:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(276,'2023-10-20 20:38:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(277,'2023-10-20 20:51:33',9,1,'Login','Inicio de sesión '),(278,'2023-10-20 20:51:40',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(279,'2023-10-20 20:51:45',9,11,'Modificación','El usuario modificó los datos del perfil'),(280,'2023-10-20 20:53:23',9,1,'Login','Inicio de sesión '),(281,'2023-10-20 20:53:28',9,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(282,'2023-10-20 20:53:41',9,11,'Modificación','El usuario modificó las preguntas de seguridad'),(283,'2023-10-20 20:55:51',9,11,'Modificación','El usuario modificó la contraseña'),(284,'2023-10-20 20:55:55',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(285,'2023-10-20 20:56:26',9,1,'Login','Inicio de sesión '),(286,'2023-10-20 21:06:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(287,'2023-10-20 21:15:54',9,1,'Login','Inicio de sesión '),(288,'2023-10-20 21:16:10',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(289,'2023-10-20 21:16:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(290,'2023-10-20 21:16:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(291,'2023-10-20 21:16:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-10-20 21:30:18',1,1,'Login','Inicio de sesión '),(293,'2023-10-20 21:30:21',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(294,'2023-10-20 21:33:52',1,1,'Login','Inicio de sesión '),(295,'2023-10-20 21:33:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(296,'2023-10-20 21:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(297,'2023-10-20 21:39:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(298,'2023-10-20 21:42:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(299,'2023-10-20 21:42:58',1,1,'Login','Inicio de sesión '),(300,'2023-10-20 21:43:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(301,'2023-10-20 21:43:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(302,'2023-10-20 21:44:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(303,'2023-10-20 21:45:37',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(304,'2023-10-20 21:49:48',NULL,9,'Salir','Se salio de Lista de Empleados'),(305,'2023-10-20 22:09:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-10-21 07:31:04',1,1,'Login','Inicio de sesión '),(307,'2023-10-21 07:31:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(308,'2023-10-21 07:40:03',1,1,'Login','Inicio de sesión '),(309,'2023-10-21 07:40:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(310,'2023-10-21 07:44:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(311,'2023-10-21 07:44:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(312,'2023-10-21 07:44:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(313,'2023-10-21 07:46:36',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(314,'2023-10-21 07:53:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(315,'2023-10-22 08:19:26',1,1,'Login','Inicio de sesión '),(316,'2023-10-22 08:19:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-10-22 09:19:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(318,'2023-10-22 09:26:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(319,'2023-10-22 10:53:33',1,1,'Login','Inicio de sesión '),(320,'2023-10-22 14:33:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-10-22 14:36:44',1,1,'Login','Inicio de sesión '),(322,'2023-10-22 14:36:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(323,'2023-10-22 14:37:46',9,1,'Login','Inicio de sesión '),(324,'2023-10-22 15:00:29',1,1,'Login','Inicio de sesión '),(325,'2023-10-22 15:01:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(326,'2023-10-22 15:15:58',1,1,'Login','Inicio de sesión '),(327,'2023-10-22 15:17:15',1,1,'Login','Inicio de sesión '),(328,'2023-10-22 16:03:41',1,1,'Login','Inicio de sesión '),(329,'2023-10-22 16:30:25',1,1,'Login','Inicio de sesión '),(330,'2023-10-22 16:50:12',1,1,'Login','Inicio de sesión '),(331,'2023-10-22 16:50:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(332,'2023-10-22 16:50:26',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(333,'2023-10-22 16:50:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(334,'2023-10-22 16:52:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(335,'2023-10-22 16:52:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(336,'2023-10-22 16:53:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(337,'2023-10-22 16:53:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(338,'2023-10-22 21:31:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(339,'2023-10-22 21:31:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(340,'2023-10-22 21:32:34',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(341,'2023-10-22 21:36:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(342,'2023-10-22 21:38:39',1,1,'Login','Inicio de sesión '),(343,'2023-10-22 21:38:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(344,'2023-10-22 21:39:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(345,'2023-10-22 21:44:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(346,'2023-10-22 21:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(347,'2023-10-22 22:57:17',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(348,'2023-10-24 21:27:02',1,1,'Login','Inicio de sesión '),(349,'2023-10-24 21:28:05',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(350,'2023-10-24 21:28:18',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(351,'2023-10-24 21:32:21',1,1,'Login','Inicio de sesión '),(352,'2023-10-24 21:32:29',1,1,'Login','Inicio de sesión '),(353,'2023-10-24 21:32:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(354,'2023-10-24 21:39:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-10-24 22:04:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(356,'2023-10-24 22:19:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-10-24 22:29:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(358,'2023-10-26 21:55:44',1,1,'Login','Inicio de sesión '),(359,'2023-10-26 22:02:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(360,'2023-10-26 22:07:00',1,1,'Login','Inicio de sesión '),(361,'2023-10-26 22:07:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-10-26 22:12:35',1,1,'Login','Inicio de sesión '),(363,'2023-10-26 22:12:39',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(364,'2023-10-26 22:17:01',5,1,'Login','Inicio de sesión '),(365,'2023-10-26 22:19:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(366,'2023-10-26 22:19:05',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(367,'2023-10-26 22:30:19',1,1,'Login','Inicio de sesión '),(368,'2023-10-27 00:17:06',5,1,'Login','Inicio de sesión '),(369,'2023-10-27 18:52:02',1,1,'Login','Inicio de sesión '),(370,'2023-10-27 18:52:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(371,'2023-10-27 18:56:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-10-27 19:18:20',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(373,'2023-10-27 19:19:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-10-27 19:41:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-10-28 21:49:47',1,1,'Login','Inicio de sesión '),(376,'2023-10-28 21:49:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-10-28 21:54:14',11,1,'Login','Inicio de sesión '),(378,'2023-10-28 21:54:19',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(379,'2023-10-28 21:55:09',11,11,'Modificación','El usuario modificó la contraseña'),(380,'2023-10-28 21:55:26',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(381,'2023-10-28 21:55:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(382,'2023-10-28 23:52:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(383,'2023-10-28 23:59:47',1,11,'Salir de perfil','El usuario salió de Mi Perfil'),(384,'2023-10-29 00:05:37',1,1,'Login','Inicio de sesión '),(385,'2023-10-29 00:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-10-30 18:48:30',1,1,'Login','Inicio de sesión '),(387,'2023-10-30 18:48:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(388,'2023-10-30 18:49:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(389,'2023-10-30 21:13:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(390,'2023-10-30 22:04:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(391,'2023-10-30 22:05:35',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(392,'2023-10-30 22:06:01',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(393,'2023-10-30 22:14:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(394,'2023-10-30 22:21:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(395,'2023-10-30 22:24:32',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(396,'2023-10-30 22:24:55',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(397,'2023-10-30 22:33:03',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(398,'2023-10-30 22:33:17',11,1,'Login','Inicio de sesión '),(399,'2023-10-30 22:33:26',11,11,'Ingreso a Perfil','El usuario ingresó a Mi Perfil'),(400,'2023-10-30 22:34:36',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(401,'2023-10-30 22:34:54',11,11,'Registro','El usuario registró una nueva pregunta de seguridad'),(402,'2023-10-30 22:35:24',11,11,'Salir de perfil','El usuario salió de Mi Perfil'),(403,'2023-10-30 22:35:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(404,'2023-10-30 22:35:48',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(405,'2023-10-30 22:36:11',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(406,'2023-10-30 22:36:43',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(407,'2023-10-30 22:42:29',1,1,'Login','Inicio de sesión '),(408,'2023-10-30 22:52:53',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(409,'2023-10-30 22:53:13',11,1,'Login','Inicio de sesión '),(410,'2023-10-31 19:40:17',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-10-31 19:40:40',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-10-31 19:41:14',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(413,'2023-10-31 19:44:25',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-10-31 19:49:31',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(415,'2023-10-31 21:13:25',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-10-31 21:15:04',11,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(417,'2023-10-31 21:25:20',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(418,'2023-10-31 21:32:43',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(419,'2023-10-31 21:33:00',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(420,'2023-10-31 21:33:23',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(421,'2023-10-31 21:33:44',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(422,'2023-10-31 21:37:28',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(423,'2023-10-31 21:43:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-10-31 21:51:09',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(425,'2023-10-31 21:52:47',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(426,'2023-10-31 21:53:05',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(427,'2023-11-01 16:18:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-11-01 16:20:53',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(429,'2023-11-01 16:20:55',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(430,'2023-11-01 16:21:23',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(431,'2023-11-01 16:23:02',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(432,'2023-11-01 16:25:06',11,9,'Salir','Se salio de la pantalla Registro de Empleado'),(433,'2023-11-01 16:26:38',11,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(434,'2023-11-01 16:28:16',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(435,'2023-11-01 16:28:39',11,2,'Salir','Se salio de la pantalla Registro de Usuario'),(436,'2023-11-01 16:29:38',1,1,'Login','Inicio de sesión '),(437,'2023-11-01 16:29:44',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(438,'2023-11-01 16:30:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(439,'2023-11-01 16:32:48',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(440,'2023-11-01 16:33:10',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(441,'2023-11-01 16:44:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-11-01 16:44:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(443,'2023-11-01 21:32:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-11-01 21:46:08',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(445,'2023-11-01 23:17:41',NULL,9,'Salir','Se salio de Lista de Empleados'),(446,'2023-11-01 23:23:14',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(447,'2023-11-01 23:34:13',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(448,'2023-11-01 23:34:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(449,'2023-11-02 17:55:44',1,1,'Login','Inicio de sesión '),(450,'2023-11-02 17:55:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(451,'2023-11-02 17:56:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(452,'2023-11-02 20:34:35',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(453,'2023-11-02 20:35:17',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(454,'2023-11-02 20:38:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(455,'2023-11-02 20:39:10',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(456,'2023-11-02 20:39:30',1,1,'Login','Inicio de sesión '),(457,'2023-11-02 20:39:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(458,'2023-11-02 20:41:23',1,1,'Login','Inicio de sesión '),(459,'2023-11-02 20:41:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(460,'2023-11-02 20:46:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(461,'2023-11-02 20:56:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(462,'2023-11-02 20:56:54',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(463,'2023-11-02 21:02:48',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(464,'2023-11-02 21:07:47',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(465,'2023-11-02 21:07:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(466,'2023-11-02 21:08:28',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(467,'2023-11-02 21:09:38',1,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(468,'2023-11-02 21:17:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(469,'2023-11-02 21:29:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(470,'2023-11-02 21:29:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(471,'2023-11-02 21:30:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(472,'2023-11-02 21:40:27',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(473,'2023-11-02 21:43:51',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(474,'2023-11-02 22:08:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(475,'2023-11-02 22:09:33',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(476,'2023-11-02 22:15:25',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-11-02 22:18:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(478,'2023-11-02 22:20:43',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(479,'2023-11-02 22:31:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(480,'2023-11-02 22:31:52',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(481,'2023-11-02 22:32:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(482,'2023-11-02 22:34:14',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(483,'2023-11-02 22:36:16',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(484,'2023-11-02 22:36:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(485,'2023-11-02 22:38:58',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(486,'2023-11-02 22:47:01',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(487,'2023-11-02 22:48:31',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(488,'2023-11-02 22:48:46',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(489,'2023-11-02 22:48:57',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(490,'2023-11-02 22:50:32',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(491,'2023-11-02 23:03:41',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(492,'2023-11-02 23:03:54',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(493,'2023-11-02 23:28:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(494,'2023-11-02 23:29:34',NULL,9,'Salir','Se salio de Lista de Empleados'),(495,'2023-11-02 23:53:19',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(496,'2023-11-02 23:57:13',NULL,9,'Salir','Se salio de Lista de Empleados'),(497,'2023-11-03 00:09:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(498,'2023-11-03 00:42:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(499,'2023-11-03 00:45:59',NULL,9,'Salir','Se salio de Lista de Empleados'),(500,'2023-11-03 00:46:11',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(501,'2023-11-03 00:51:42',NULL,9,'Salir','Se salio de Lista de Empleados'),(502,'2023-11-03 01:05:23',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(503,'2023-11-03 01:05:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(504,'2023-11-03 01:41:21',1,1,'Login','Inicio de sesión '),(505,'2023-11-03 01:41:32',1,1,'Login','Inicio de sesión '),(506,'2023-11-03 01:41:49',1,1,'Login','Inicio de sesión '),(507,'2023-11-03 01:42:15',1,1,'Login','Inicio de sesión '),(508,'2023-11-03 16:40:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(509,'2023-11-03 16:45:51',1,1,'Login','Inicio de sesión '),(510,'2023-11-03 16:45:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-11-03 16:52:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(512,'2023-11-03 16:53:11',1,1,'Login','Inicio de sesión '),(513,'2023-11-03 17:48:37',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(514,'2023-11-03 17:50:32',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-11-03 17:50:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(516,'2023-11-03 17:50:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(517,'2023-11-03 17:51:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(518,'2023-11-03 19:53:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-11-03 19:54:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(520,'2023-11-03 20:19:53',1,1,'Login','Inicio de sesión '),(521,'2023-11-03 20:19:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(522,'2023-11-03 20:46:32',1,1,'Login','Inicio de sesión '),(523,'2023-11-03 22:18:03',1,1,'Login','Inicio de sesión '),(524,'2023-11-03 22:42:38',1,1,'Login','Inicio de sesión '),(525,'2023-11-03 22:42:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(526,'2023-11-03 22:43:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(527,'2023-11-03 22:51:24',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(528,'2023-11-03 22:51:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(529,'2023-11-04 08:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-11-04 08:16:22',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(531,'2023-11-04 08:19:09',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(532,'2023-11-04 08:19:30',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(533,'2023-11-04 09:27:57',0,9,'Salir','Se salio de la pantalla Registro de Empleado'),(534,'2023-11-04 09:28:04',1,1,'Login','Inicio de sesión '),(535,'2023-11-04 09:28:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(536,'2023-11-04 09:28:36',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(537,'2023-11-04 10:21:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(538,'2023-11-04 10:22:27',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(539,'2023-11-04 14:22:05',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(540,'2023-11-04 14:59:21',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(541,'2023-11-04 15:00:03',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(542,'2023-11-04 20:09:01',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(543,'2023-11-04 20:36:53',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(544,'2023-11-04 20:36:59',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(545,'2023-11-04 20:37:06',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(546,'2023-11-04 21:43:26',1,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(547,'2023-11-04 21:45:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(548,'2023-11-04 21:45:48',11,1,'Login','Inicio de sesión '),(549,'2023-11-04 21:47:23',11,1,'Login','Inicio de sesión '),(550,'2023-11-04 21:48:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-11-04 21:51:21',9,1,'Login','Inicio de sesión '),(552,'2023-11-04 22:00:40',11,1,'Login','Inicio de sesión '),(553,'2023-11-04 22:00:50',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(554,'2023-11-04 22:02:21',9,11,'Salir de perfil','El usuario salió de Mi Perfil'),(555,'2023-11-04 22:12:12',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-11-04 22:12:35',11,1,'Login','Inicio de sesión '),(557,'2023-11-04 22:17:44',9,1,'Login','Inicio de sesión '),(558,'2023-11-04 22:25:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(559,'2023-11-04 22:26:20',11,1,'Login','Inicio de sesión '),(560,'2023-11-04 22:43:52',1,1,'Login','Inicio de sesión '),(561,'2023-11-04 22:46:39',11,1,'Login','Inicio de sesión '),(562,'2023-11-04 23:22:36',9,1,'Login','Inicio de sesión '),(563,'2023-11-04 23:45:37',1,9,'Salir','Se salio de la pantalla Registro de Empleado'),(564,'2023-11-04 23:52:19',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(565,'2023-11-04 23:56:03',11,5,'Salir','El usuario salió de la pantalla de citas'),(566,'2023-11-04 23:56:35',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(567,'2023-11-04 23:59:03',11,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(568,'2023-11-05 00:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(569,'2023-11-05 01:16:03',1,1,'Login','Inicio de sesión '),(570,'2023-11-05 01:16:07',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-11-05 01:24:09',11,1,'Login','Inicio de sesión '),(572,'2023-11-05 01:29:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(573,'2023-11-06 12:05:08',1,1,'Login','Inicio de sesión '),(574,'2023-11-06 12:05:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(575,'2023-11-06 18:36:47',1,1,'Login','Inicio de sesión '),(576,'2023-11-06 18:36:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(577,'2023-11-06 18:41:24',1,1,'Login','Inicio de sesión '),(578,'2023-11-06 18:41:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(579,'2023-11-06 18:42:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(580,'2023-11-06 18:42:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(581,'2023-11-06 22:17:55',1,1,'Login','Inicio de sesión '),(582,'2023-11-06 22:17:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-11-06 22:18:17',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(584,'2023-11-08 21:49:47',1,1,'Login','Inicio de sesión '),(585,'2023-11-08 21:49:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(586,'2023-11-08 21:50:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-11-08 22:30:07',1,1,'Login','Inicio de sesión '),(588,'2023-11-08 22:30:09',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿Cual es tu color Favorito?','Jared',NULL,NULL,NULL),(2,'¿Cual es tu equipo favorito?','Romeo',NULL,NULL,NULL),(3,'¿Cual es el nombre de tu abuelo paterno?','Erick',NULL,NULL,NULL),(4,'¿Como se llamaba tu primer mascota?','ERICKK','2023-03-15',NULL,NULL),(5,'¿A donde quieres viajar?','Moisa','2023-03-21',NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL);
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
  `estado` varchar(10) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','Activo',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario','Activo',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'Tecnico','El que da mantenimiento a los server','Inactivo',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','Activo',NULL,'2023-11-05 03:43:23',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$boRkMe4e95wryA2qrUqbGOzonpRvr1Ne3tperfFThc/nEKGFFEVwG',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Activo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(4,'ELVIS','ELVIS','Inactivo','$2b$10$4AzKNdCImN0j0Rsh2XN3XOSY3cmdkcLzO8GTGjTDOYbCZR.CQEmf6',1,NULL,0,0,'2024-01-09','elvis@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(5,'JUAN','JUAN','Nuevo','$2b$10$qNrvnEqzc/H1kH3ZtlkSTuJFkTO3J7q8bHAt8NbA/5JYqaXm1FfOS',2,NULL,0,0,'2024-01-15','juan@gmail.com',5,NULL,'2023-10-17',NULL,'2023-10-17'),(6,'OLVIN','OLVIN','Nuevo','$2b$10$uaN6CTNYSexxAaVwMIaBHec286LTMUWUZv7rdrPrq1JUldqqD0bUS',2,NULL,0,0,'2024-01-17','prueba@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(7,'ELIZA','ELIZA','Activo','$2b$10$yXXsfa27S58cxMruB8XdjO4.SKgKuZCIQFetewLCR/52WzE8wlDSu',2,NULL,0,0,'2024-01-28','eli@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(8,'TEST','TEST','Inactivo','$2b$10$0S0WFR97fc6Yly36YwBIs.tUZDSrtyzQLG0U2gIXdO7blRTO.otSu',1,NULL,0,0,'2024-01-17','test@gmail.com',7,NULL,'2023-10-19',NULL,'2023-10-19'),(9,'HEIDY','HEIDY','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',2,NULL,0,0,'2024-01-19','heidy@gmail.com',13,NULL,'2023-10-20',NULL,'2023-10-20'),(10,'KAGUILERA','KAGUILERA','Nuevo','$2b$10$Yio/a0B8Mor4wJk/wshgS.8AUl8Lm3KH8v8r2VlXV4Z30AR1Po4YO',1,NULL,0,0,'2024-01-20','karen@gmail.com',16,NULL,'2023-10-22',NULL,'2023-10-22'),(11,'SANTOS','SANTOS','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',8,NULL,0,0,'2024-01-28','santos@gmail.com',15,NULL,'2023-10-28',NULL,'2023-10-28');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,1,1,'2023-08-20 01:54:18','Pendiente',2500,289.6),(2,1,1,'2023-08-20 01:54:32','Pagado',289.6,0),(3,2,1,'2023-08-20 17:16:01','Pagado',2613.6,0),(4,4,4,'2023-10-14 17:10:03','Pendiente',5000,579.2),(5,4,2,'2023-10-14 17:10:31','Pagado',579.2,0),(6,5,4,'2023-10-14 17:25:20','Pagado',2728,0),(7,6,4,'2023-10-14 20:08:44','Pagado',2904,0),(8,7,4,'2023-10-15 03:59:34','Pagado',2904,0),(9,8,4,'2023-10-15 04:04:27','Pagado',5456,0);
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
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (2,'Costa Rica'),(6,'España'),(3,'Estados Unidos'),(1,'Honduras'),(7,'Italia'),(4,'Mexico'),(5,'Panama ');
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
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','s',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'n','s','n','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'n','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','s','s','s',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL),(2,8,'s','s','s','n',NULL,NULL,NULL,NULL),(3,8,'s','s','s','n',NULL,NULL,NULL,NULL),(4,8,'s','s','s','n',NULL,NULL,NULL,NULL),(5,8,'n','n','n','n',NULL,NULL,NULL,NULL),(6,8,'n','n','n','n',NULL,NULL,NULL,NULL),(7,8,'s','s','s','s',NULL,NULL,NULL,NULL),(8,8,'s','s','s','s',NULL,NULL,NULL,NULL),(9,8,'s','s','s','n',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000');
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
  `estado` tinyint(1) DEFAULT NULL,
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25',1,0.12,'PaQuetazos'),(2,'2023-10-13','2023-10-25',1,0.4,'PromoNuevos');
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
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','Erick',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','+50496235694','erickpavon544@gmail.com'),(2,'Marcos & Cia','Marcos quien mas xd',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com'),(8,'UNAH3','Erick',2,48,'Aros de la gama mas economica y repuestos',' Tegucigalpa M.D.C','+504962356','erickpavon545@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15');
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
  `estado` varchar(10) DEFAULT NULL,
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
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'CERCA DE LA CURASAO','20282862','Inactivo'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','Inactivo'),(3,3,32,'ALCALDIA MUNICIPAL','22306587','Activo'),(4,1,4,'PARQUE LA AURORA','22115596','Inactivo'),(5,5,30,'SPS','22346712','Inactivo'),(6,5,5,'VILLA VIEJA-MERCADO','23182862','Inactivo'),(7,1,48,'GUAYA','98761212','Activo');
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
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (1,'Entrada'),(2,'Salida');
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
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (4,'De contado'),(1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
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
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 01:54:08','2023-08-17','2023-08-01','0802200101153',NULL,'12121212','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2789.6),(2,'2023-08-20 16:36:57','2023-08-13','2023-08-08','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2613.6),(3,'2023-10-14 06:52:35','2023-10-02','2023-11-02','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL),(4,'2023-10-14 17:09:41','2023-10-20','2023-10-04','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5579.2),(5,'2023-10-14 17:23:52','2023-10-25','2023-10-04','0802200101153',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2728),(6,'2023-10-14 20:08:38','2023-10-27','2023-10-05','0801199411205',NULL,'08012000011520','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904),(7,'2023-10-15 03:59:17','2023-10-19','2023-10-18','0801199411205',NULL,'080119990113621','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904),(8,'2023-10-15 04:04:20','2023-10-13','2023-10-16','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5456);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456);
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

-- Dump completed on 2023-11-08 22:30:18
