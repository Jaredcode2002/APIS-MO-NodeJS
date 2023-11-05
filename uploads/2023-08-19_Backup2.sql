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
INSERT INTO `tbl_cliente` VALUES ('0801200004525','HEIDY','DURON',1,'2023-09-06','BELLA VISTA','98552631','heidy@gmail.com'),('0801200201582','JARED','SALGADO',1,'0000-00-00','QUEZADA','99887790','jared@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-02 08:58:53',13000),(2,'2023-08-07 09:16:01',205),(3,'2023-08-07 09:16:42',0),(4,'2023-08-15 01:16:04',200),(5,'2023-08-15 23:34:53',100),(6,'2023-08-18 23:29:03',100),(7,'2023-08-18 23:33:49',0),(8,'2023-08-18 23:34:17',198);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,13,1,13000),(2,2,1,50,3,200),(3,2,1,2,1,5),(4,4,1,20,2,200),(5,5,1,1,1,100),(6,6,1,1,2,100),(7,8,1,100,2,99),(8,8,1,100,12,99);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.5,0.3),(2,1,3,2);
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
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'JOHANA','LARA','96235694',1,1,'0208200001152'),(50,'KAREN','LOPEZ','98562031',1,2,'1025198900256'),(54,'LIZY','PACO','97854630',1,1,'0208200112456'),(65,'JUAN','LAINEZ','12345678',1,1,'0801199900256'),(66,'HEIDY','LERO LERO','97896325',1,2,'0801200101151');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadoventa`
--

DROP TABLE IF EXISTS `tbl_estadoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estadoventa` (
  `IdEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`IdEstado`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadoventa`
--

LOCK TABLES `tbl_estadoventa` WRITE;
/*!40000 ALTER TABLE `tbl_estadoventa` DISABLE KEYS */;
INSERT INTO `tbl_estadoventa` VALUES (1,'Pagado'),(2,'Pendiente');
/*!40000 ALTER TABLE `tbl_estadoventa` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-02 05:28:14','0801200201582',1),(3,'2023-08-02 05:31:39','0801200004525',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'Ninguno','Scalici','Michael','Penales','1','1','1','1','1','1','2','2','2','2','2','2','2023-05-05','2024-03-03'),(23,3,'HANANI','HGJK','PAPI','MAMI','45','45','45','45','45','45','45','44','','','','','2023-08-09','2024-08-09'),(24,NULL,'NINGUNA','JOHANA','JOHJANA','NINGUNO','1','1','1','1','','','','','','','','','2023-08-17','2024-08-18');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia de fabricacion',5,1,1),(2,'Garantia de ajuste o comididad',5,2,1),(3,'Garantia de satisfaccion',3,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,-96),(2,12,94);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_kardex_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tbl_tipomovimiento` (`IdTipoMovimiento`),
  CONSTRAINT `tbl_kardex_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_kardex_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-15 01:55:14',20),(2,1,1,1,'2023-08-15 01:55:14',9),(3,1,3,1,'2023-08-15 01:55:14',50),(4,1,1,1,'2023-08-15 01:55:14',2),(5,1,2,1,'2023-08-15 01:55:14',20),(6,2,2,1,'2023-08-15 02:35:08',1),(7,2,1,0,'2023-08-15 02:45:39',100),(8,2,1,0,'2023-08-15 02:49:48',2),(9,2,12,0,'2023-08-15 02:53:40',1),(10,2,1,1,'2023-08-15 17:04:05',10),(11,2,12,1,'2023-08-15 17:14:54',1),(12,2,12,0,'2023-08-15 17:46:20',1),(13,2,12,1,'2023-08-15 22:53:44',1),(14,1,1,1,'2023-08-15 06:00:00',1),(15,2,2,2,'2023-08-16 22:31:35',1),(16,1,2,1,'2023-08-18 06:00:00',1),(17,1,2,1,'2023-08-18 06:00:00',100),(18,1,12,1,'2023-08-18 06:00:00',100),(19,2,12,1,'2023-08-18 23:38:17',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Lente Progresivo',3000),(2,'Lente Monofocal',3500),(3,'Lente AR',4000);
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
INSERT INTO `tbl_marca` VALUES (1,'Calvin Klein'),(2,'Tommy Hilfiger');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK1995',1995),(2,2,'TH7451',2014),(3,1,'CK2015',2015),(4,2,'SJLF-128',2001);
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
  KEY `Id_Objeto` (`Id_Objeto`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_2` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (380,'2023-08-07 03:48:18',0,5,'Borrar Cita','El usuario eliminó una cita'),(381,'2023-08-07 03:52:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(382,'2023-08-07 03:52:47',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(383,'2023-08-07 03:53:09',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(384,'2023-08-07 03:53:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(385,'2023-08-07 04:04:29',1,11,'Ingreso a Pefil','El usuario ingreso a Mi Perfil'),(386,'2023-08-07 04:10:11',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(387,'2023-08-07 04:10:59',1,11,'Moficacion','El usuario modifico su contraseña'),(388,'2023-08-07 04:11:40',1,11,'Moficacion','El usuario modifico sus preguntas'),(389,'2023-08-07 04:16:33',1,11,'Moficacion','El usuario modifico las preguntas de seguridad'),(390,'2023-08-07 04:19:43',1,11,'Moficacion','El usuario modifico la contraseña'),(391,'2023-08-07 04:22:19',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(392,'2023-08-09 15:52:30',1,1,'Login','Inicio de sesión '),(393,'2023-08-09 15:54:33',1,1,'Login','Inicio de sesión '),(394,'2023-08-09 15:56:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(395,'2023-08-09 16:02:14',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(396,'2023-08-09 16:02:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(397,'2023-08-09 16:02:39',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(398,'2023-08-09 16:11:40',1,1,'Login','Inicio de sesión '),(399,'2023-08-09 16:14:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(400,'2023-08-09 16:43:00',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(401,'2023-08-09 17:07:36',1,1,'Login','Inicio de sesión '),(402,'2023-08-09 17:12:28',1,5,'Borrar Cita','El usuario eliminó una cita'),(403,'2023-08-09 17:12:37',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(404,'2023-08-09 17:27:37',1,5,'Borrar Cita','El usuario eliminó una cita'),(405,'2023-08-09 17:27:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(406,'2023-08-09 17:47:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(407,'2023-08-09 17:53:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(408,'2023-08-09 18:11:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(409,'2023-08-09 18:19:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(410,'2023-08-09 18:20:24',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(411,'2023-08-09 18:25:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-08-09 18:29:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(413,'2023-08-09 18:29:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(414,'2023-08-09 18:35:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(415,'2023-08-09 18:43:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(416,'2023-08-09 18:45:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(417,'2023-08-09 18:45:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(418,'2023-08-09 18:47:42',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(419,'2023-08-09 19:06:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(420,'2023-08-09 19:13:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(421,'2023-08-09 19:21:01',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(422,'2023-08-09 19:29:10',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(423,'2023-08-09 19:37:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(424,'2023-08-09 19:38:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(425,'2023-08-09 19:40:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(426,'2023-08-09 20:00:40',1,1,'Login','Inicio de sesión '),(431,'2023-08-09 20:07:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(432,'2023-08-09 20:07:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(433,'2023-08-09 20:09:49',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(434,'2023-08-09 20:09:51',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(435,'2023-08-09 20:10:07',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(436,'2023-08-09 20:10:09',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(437,'2023-08-09 20:11:50',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(438,'2023-08-09 20:11:51',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(439,'2023-08-09 20:19:24',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(440,'2023-08-09 20:19:38',1,1,'Login','Inicio de sesión '),(441,'2023-08-09 20:19:40',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(442,'2023-08-09 20:44:46',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(443,'2023-08-09 21:04:20',1,1,'Login','Inicio de sesión '),(444,'2023-08-09 21:04:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(445,'2023-08-09 21:04:28',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(446,'2023-08-09 21:04:30',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(447,'2023-08-09 21:06:00',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(448,'2023-08-09 21:06:02',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(449,'2023-08-09 21:06:21',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(450,'2023-08-09 21:06:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(451,'2023-08-09 21:44:49',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(452,'2023-08-09 21:44:50',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(453,'2023-08-09 21:44:54',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(454,'2023-08-09 21:46:30',1,1,'Login','Inicio de sesión '),(455,'2023-08-09 21:46:33',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(456,'2023-08-09 21:47:32',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(457,'2023-08-09 21:47:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(458,'2023-08-09 21:48:29',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(459,'2023-08-09 21:48:46',1,1,'Login','Inicio de sesión '),(460,'2023-08-09 21:48:48',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(461,'2023-08-09 21:49:55',1,1,'Login','Inicio de sesión '),(462,'2023-08-09 21:49:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(463,'2023-08-09 21:50:07',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(464,'2023-08-09 21:50:11',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(465,'2023-08-09 21:51:40',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(466,'2023-08-09 21:51:41',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(467,'2023-08-09 21:51:54',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(468,'2023-08-09 21:51:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(469,'2023-08-09 21:52:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(470,'2023-08-09 21:52:18',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(471,'2023-08-09 21:52:23',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(472,'2023-08-09 21:52:24',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(473,'2023-08-09 21:52:33',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(474,'2023-08-09 21:52:35',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(475,'2023-08-09 21:52:42',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(476,'2023-08-09 21:52:58',1,1,'Login','Inicio de sesión '),(477,'2023-08-09 21:53:00',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(478,'2023-08-09 21:54:34',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(479,'2023-08-09 21:54:44',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(480,'2023-08-09 21:54:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(481,'2023-08-09 21:55:09',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(482,'2023-08-09 21:55:32',1,1,'Login','Inicio de sesión '),(483,'2023-08-09 21:55:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(484,'2023-08-09 21:55:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(485,'2023-08-09 21:56:16',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(486,'2023-08-14 09:38:49',1,1,'Login','Inicio de sesión '),(487,'2023-08-14 10:21:11',1,1,'Login','Inicio de sesión '),(488,'2023-08-14 10:21:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(489,'2023-08-14 10:22:44',1,1,'Login','Inicio de sesión '),(490,'2023-08-14 10:22:46',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(491,'2023-08-14 10:23:02',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(492,'2023-08-14 10:23:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(493,'2023-08-14 10:23:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(494,'2023-08-14 10:23:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(495,'2023-08-14 19:15:20',1,1,'Login','Inicio de sesión '),(496,'2023-08-14 19:15:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(497,'2023-08-14 19:29:53',1,1,'Login','Inicio de sesión '),(498,'2023-08-14 19:29:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(499,'2023-08-14 19:30:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(500,'2023-08-14 19:30:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(501,'2023-08-14 19:30:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(502,'2023-08-14 19:30:46',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(503,'2023-08-14 19:31:14',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(504,'2023-08-14 19:50:01',1,1,'Login','Inicio de sesión '),(505,'2023-08-14 20:55:26',1,1,'Login','Inicio de sesión '),(506,'2023-08-14 20:55:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(507,'2023-08-14 20:55:37',1,5,'Borrar Cita','El usuario eliminó una cita'),(508,'2023-08-14 20:55:44',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(509,'2023-08-14 20:57:52',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(510,'2023-08-14 20:58:13',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-08-14 20:59:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(512,'2023-08-14 20:59:55',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(513,'2023-08-14 21:15:50',1,1,'Login','Inicio de sesión '),(514,'2023-08-14 21:20:59',1,1,'Login','Inicio de sesión '),(515,'2023-08-14 21:30:15',1,1,'Login','Inicio de sesión '),(516,'2023-08-14 21:30:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(517,'2023-08-14 21:30:26',1,5,'Borrar Cita','El usuario eliminó una cita'),(518,'2023-08-14 21:30:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(519,'2023-08-14 21:30:45',1,1,'Login','Inicio de sesión '),(520,'2023-08-14 21:42:37',1,1,'Login','Inicio de sesión '),(521,'2023-08-15 10:56:41',1,1,'Login','Inicio de sesión '),(522,'2023-08-15 11:25:01',1,1,'Login','Inicio de sesión '),(523,'2023-08-15 11:25:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(524,'2023-08-15 11:25:13',1,5,'Borrar Cita','El usuario eliminó una cita'),(525,'2023-08-15 11:25:20',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(526,'2023-08-15 11:25:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(527,'2023-08-15 11:25:47',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(528,'2023-08-15 15:45:54',1,1,'Login','Inicio de sesión '),(529,'2023-08-15 15:45:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-08-15 16:01:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(531,'2023-08-15 16:03:34',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(532,'2023-08-15 16:07:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(533,'2023-08-15 16:08:03',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(534,'2023-08-15 16:25:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(535,'2023-08-15 16:28:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(536,'2023-08-15 16:29:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(537,'2023-08-15 16:35:02',NULL,9,'Salir','Se salio de Lista de Empleados'),(538,'2023-08-15 16:36:40',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(539,'2023-08-15 16:37:32',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(540,'2023-08-15 16:38:04',NULL,9,'Salir','Se salio de Lista de Empleados'),(541,'2023-08-15 16:38:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(542,'2023-08-15 16:38:14',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(543,'2023-08-15 16:38:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(544,'2023-08-15 16:38:19',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(545,'2023-08-15 16:40:24',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(546,'2023-08-15 16:40:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(547,'2023-08-15 16:42:15',1,1,'Login','Inicio de sesión '),(548,'2023-08-15 17:37:35',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(549,'2023-08-15 17:46:54',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(550,'2023-08-15 17:47:35',1,1,'Login','Inicio de sesión '),(551,'2023-08-15 17:47:35',1,1,'Login','Inicio de sesión '),(552,'2023-08-15 17:47:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(553,'2023-08-15 17:48:00',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(554,'2023-08-15 17:48:00',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(555,'2023-08-15 17:48:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(556,'2023-08-15 17:48:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(557,'2023-08-15 17:56:49',1,1,'Login','Inicio de sesión '),(558,'2023-08-15 17:56:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(559,'2023-08-15 17:56:53',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(560,'2023-08-15 17:57:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(561,'2023-08-15 18:10:00',1,1,'Login','Inicio de sesión '),(562,'2023-08-15 18:10:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(563,'2023-08-15 18:14:16',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(564,'2023-08-15 18:14:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(565,'2023-08-15 18:16:45',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(566,'2023-08-15 18:26:10',1,1,'Login','Inicio de sesión '),(567,'2023-08-16 16:11:41',1,1,'Login','Inicio de sesión '),(568,'2023-08-16 16:11:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(569,'2023-08-16 16:17:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(570,'2023-08-16 16:18:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(571,'2023-08-16 16:18:58',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(572,'2023-08-16 16:24:48',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(573,'2023-08-16 16:24:57',1,1,'Login','Inicio de sesión '),(574,'2023-08-16 16:27:14',2,1,'Login','Inicio de sesión '),(575,'2023-08-16 16:27:55',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(576,'2023-08-17 17:03:11',1,1,'Login','Inicio de sesión '),(577,'2023-08-17 17:03:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(578,'2023-08-17 17:04:00',NULL,9,'Salir','Se salio de Lista de Empleados'),(579,'2023-08-17 17:04:18',NULL,9,'Salir','Se salio de Lista de Empleados'),(580,'2023-08-17 17:05:05',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(581,'2023-08-17 18:03:56',1,1,'Login','Inicio de sesión '),(582,'2023-08-17 18:04:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(583,'2023-08-17 18:10:53',1,5,'Borrar Cita','El usuario eliminó una cita'),(584,'2023-08-17 18:11:04',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(585,'2023-08-17 18:11:32',1,5,'Borrar Cita','El usuario eliminó una cita'),(586,'2023-08-17 18:12:29',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(587,'2023-08-17 18:12:32',1,5,'Borrar Cita','El usuario eliminó una cita'),(588,'2023-08-17 18:14:38',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(589,'2023-08-17 18:14:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(590,'2023-08-17 18:15:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(591,'2023-08-17 18:15:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(592,'2023-08-17 18:15:42',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(593,'2023-08-17 18:16:00',1,1,'Login','Inicio de sesión '),(594,'2023-08-17 18:20:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(595,'2023-08-17 18:20:21',1,5,'Borrar Cita','El usuario eliminó una cita'),(596,'2023-08-17 18:20:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(597,'2023-08-17 18:20:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(598,'2023-08-17 18:21:58',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(599,'2023-08-17 18:21:59',1,5,'Borrar Cita','El usuario eliminó una cita'),(600,'2023-08-17 18:25:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(601,'2023-08-17 18:25:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(602,'2023-08-17 18:25:14',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(603,'2023-08-17 18:25:15',1,5,'Borrar Cita','El usuario eliminó una cita'),(604,'2023-08-17 18:40:26',1,1,'Login','Inicio de sesión '),(605,'2023-08-17 18:40:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(606,'2023-08-17 18:41:28',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(607,'2023-08-17 19:02:03',3,1,'Login','Inicio de sesión '),(608,'2023-08-17 19:06:08',1,1,'Login','Inicio de sesión '),(609,'2023-08-17 19:55:24',1,1,'Login','Inicio de sesión '),(610,'2023-08-17 19:55:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(611,'2023-08-17 19:57:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(613,'2023-08-17 20:02:40',1,1,'Login','Inicio de sesión '),(614,'2023-08-17 20:02:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(615,'2023-08-17 20:02:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-08-17 20:11:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(617,'2023-08-17 20:11:13',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(618,'2023-08-17 20:11:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(619,'2023-08-17 20:11:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(620,'2023-08-17 20:18:25',6,1,'Login','Inicio de sesión '),(621,'2023-08-17 20:18:43',6,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(622,'2023-08-17 20:19:08',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(623,'2023-08-17 20:20:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(624,'2023-08-17 20:20:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(625,'2023-08-17 20:21:12',1,1,'Login','Inicio de sesión '),(626,'2023-08-17 20:21:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(627,'2023-08-17 20:21:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(628,'2023-08-17 20:21:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(629,'2023-08-17 20:21:39',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(630,'2023-08-17 20:22:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(631,'2023-08-17 20:24:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(632,'2023-08-17 20:30:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(633,'2023-08-17 20:31:07',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(634,'2023-08-17 20:33:01',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(635,'2023-08-17 20:33:02',NULL,9,'Salir','Se salio de Lista de Empleados'),(636,'2023-08-17 20:33:25',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(637,'2023-08-17 20:33:31',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(638,'2023-08-17 20:33:38',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(639,'2023-08-17 20:34:16',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(640,'2023-08-17 20:34:27',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(641,'2023-08-17 20:37:43',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(642,'2023-08-17 20:37:56',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(643,'2023-08-17 20:38:12',NULL,9,'Salir','Se salio de Lista de Empleados'),(644,'2023-08-17 20:38:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(645,'2023-08-17 20:39:35',NULL,9,'Salir','Se salio de Lista de Empleados'),(646,'2023-08-17 20:39:37',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(647,'2023-08-17 20:39:46',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(648,'2023-08-17 20:41:45',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(649,'2023-08-17 20:47:42',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(650,'2023-08-17 20:47:50',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(651,'2023-08-17 20:47:54',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(652,'2023-08-17 20:47:57',NULL,9,'Salir','Se salio de Lista de Empleados'),(653,'2023-08-17 20:48:06',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(654,'2023-08-17 20:48:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(655,'2023-08-17 20:48:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(656,'2023-08-17 20:49:53',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(657,'2023-08-17 20:50:05',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(658,'2023-08-17 21:10:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(659,'2023-08-17 21:10:53',NULL,9,'Salir','Se salio de Lista de Empleados'),(660,'2023-08-17 22:04:02',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(661,'2023-08-17 22:04:04',1,5,'Borrar Cita','El usuario eliminó una cita'),(662,'2023-08-17 22:40:25',1,1,'Login','Inicio de sesión '),(663,'2023-08-17 22:40:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(664,'2023-08-17 22:40:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(665,'2023-08-17 22:40:35',1,5,'Borrar Cita','El usuario eliminó una cita'),(666,'2023-08-17 22:43:04',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(667,'2023-08-17 22:45:45',1,5,'Borrar Cita','El usuario eliminó una cita'),(668,'2023-08-17 22:51:25',1,1,'Login','Inicio de sesión '),(669,'2023-08-17 22:52:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(670,'2023-08-17 22:52:43',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(671,'2023-08-17 22:54:10',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(672,'2023-08-17 22:54:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(673,'2023-08-17 22:54:23',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(674,'2023-08-17 22:55:40',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(675,'2023-08-17 22:55:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(676,'2023-08-17 22:55:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(677,'2023-08-17 23:01:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(678,'2023-08-17 23:07:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(679,'2023-08-18 09:20:10',1,1,'Login','Inicio de sesión '),(680,'2023-08-18 09:20:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(681,'2023-08-18 09:23:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(682,'2023-08-18 09:23:44',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(683,'2023-08-18 09:23:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(684,'2023-08-18 09:24:10',1,1,'Login','Inicio de sesión '),(685,'2023-08-18 09:24:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(686,'2023-08-18 09:35:55',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(687,'2023-08-18 09:36:07',1,1,'Login','Inicio de sesión '),(688,'2023-08-18 09:36:15',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(690,'2023-08-18 09:38:47',1,1,'Login','Inicio de sesión '),(691,'2023-08-18 09:38:49',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(693,'2023-08-18 09:45:14',1,1,'Login','Inicio de sesión '),(694,'2023-08-18 09:48:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(695,'2023-08-18 09:54:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(696,'2023-08-18 09:54:42',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(697,'2023-08-18 09:55:52',1,11,'Moficacion','El usuario modifico la contraseña'),(698,'2023-08-18 09:56:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(699,'2023-08-18 10:04:57',1,1,'Login','Inicio de sesión '),(700,'2023-08-18 10:05:00',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(701,'2023-08-18 10:05:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(702,'2023-08-18 10:05:06',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(703,'2023-08-18 10:05:14',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(704,'2023-08-18 10:36:16',1,1,'Login','Inicio de sesión '),(705,'2023-08-18 10:36:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(706,'2023-08-18 10:36:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(707,'2023-08-18 10:56:14',1,1,'Login','Inicio de sesión '),(708,'2023-08-18 11:02:35',1,1,'Login','Inicio de sesión '),(709,'2023-08-18 11:08:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(710,'2023-08-18 11:08:24',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(711,'2023-08-18 11:29:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(712,'2023-08-18 11:29:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-08-18 11:29:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(714,'2023-08-18 11:29:27',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(715,'2023-08-18 11:29:29',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(716,'2023-08-18 11:29:32',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(717,'2023-08-18 11:29:35',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(718,'2023-08-18 11:47:49',8,1,'Login','Inicio de sesión '),(719,'2023-08-18 17:10:06',1,1,'Login','Inicio de sesión '),(720,'2023-08-18 17:10:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(721,'2023-08-18 17:12:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(722,'2023-08-18 17:12:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(723,'2023-08-18 17:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(724,'2023-08-18 17:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(725,'2023-08-18 17:13:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(726,'2023-08-18 17:13:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(727,'2023-08-18 17:13:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(728,'2023-08-18 17:13:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(729,'2023-08-18 17:13:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(730,'2023-08-18 17:15:16',1,5,'Salir','El usuario salió de la pantalla de citas'),(731,'2023-08-18 17:15:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(732,'2023-08-18 17:16:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-08-18 17:27:44',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(734,'2023-08-18 17:27:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(735,'2023-08-18 17:28:10',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(736,'2023-08-18 17:28:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(737,'2023-08-18 17:28:15',1,5,'Salir','El usuario salió de la pantalla de citas'),(738,'2023-08-18 17:28:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(739,'2023-08-18 17:42:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(740,'2023-08-18 17:42:57',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(741,'2023-08-18 17:46:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(742,'2023-08-18 17:46:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(743,'2023-08-18 17:46:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(744,'2023-08-18 17:46:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(745,'2023-08-18 17:46:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(746,'2023-08-18 17:46:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(747,'2023-08-18 17:49:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(748,'2023-08-18 18:02:24',1,1,'Login','Inicio de sesión '),(749,'2023-08-18 18:02:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(750,'2023-08-18 18:03:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(751,'2023-08-18 18:15:04',1,1,'Login','Inicio de sesión '),(752,'2023-08-18 18:15:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(753,'2023-08-18 18:15:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(754,'2023-08-18 18:15:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(755,'2023-08-18 18:15:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(756,'2023-08-18 18:16:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(757,'2023-08-18 18:17:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(758,'2023-08-18 18:17:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-08-18 18:17:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-08-18 18:18:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(761,'2023-08-18 18:18:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(762,'2023-08-18 18:26:22',1,1,'Login','Inicio de sesión '),(763,'2023-08-19 10:18:03',1,1,'Login','Inicio de sesión '),(764,'2023-08-19 10:18:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(765,'2023-08-19 11:30:17',1,1,'Login','Inicio de sesión '),(766,'2023-08-19 11:30:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-08-19 11:47:49',1,1,'Login','Inicio de sesión '),(768,'2023-08-19 11:47:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_hist_contrasenia_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$.gpIfPtrlTlqGG4jNTQgA.JeWY3sLBwpHRbCET1RgfyAzbBM.x8Pu','admin',NULL,NULL,NULL),(5,2,'$2b$10$CR7LPhqgw9wVoOA1ButW8uhBzO1aAtONm89peV24jcGxAxG2PfdN2','HANA',NULL,NULL,NULL),(6,0,'$2b$10$DBC1zgA2j.90xiQpcPeor.81CzX8qYq0luZLxl.KGmbx/TLFLN/VS','DDD',NULL,NULL,NULL),(7,1,'$2b$10$jtRO/o5G8FscwLarUqmXset/j7BRDPlnsVA2ii8NVQrqNLVDrV2r6','admin',NULL,NULL,NULL),(8,1,'$2b$10$kXSkGKXxlSiRNjnqXvazHucfN7.jP.Um4S0PbZAnLhexJPb5qnnJq','admin',NULL,NULL,NULL),(9,2,'$2b$10$S3D4psPq0YQ47JzLG/CCUeLeX/iE1JVuk8sSaGkn22/hZvzYXKmLK','SLARA',NULL,NULL,NULL),(10,4,'$2b$10$/YgO4dXzLoHobOedTXCRHOLnU1HjYX.Pooc2CL9Gx4lDncf/vcMui','JUANL',NULL,NULL,NULL),(11,5,'$2b$10$/iUravdYBApcVjc8ucebA.Kls1pnc5YAxOc.WxCHwSMvnJ4zAlznK','HUAN',NULL,NULL,NULL),(12,3,'$2b$10$ueGbrXwdqkjY95di2ZxKUeuEjAiJt/U8h4zEbtndxTEmEFazZ28rq','NOCE',NULL,NULL,NULL),(13,3,'$2b$10$uNNlyta5nYu2ZXuVi.Sp8O1DuGOqp0lSJ5SEKYrk6Onja.67J/j4O','NOCE',NULL,NULL,NULL),(14,6,'$2b$10$dXvz6zQD40sLVuw7Vy2ZROqcmLAcGz7jinHma6OKJYRdT9BVz.IIu','DDANIEL',NULL,NULL,NULL),(15,1,'$2b$10$Q0GkOGdYPsM3DnbXvLInneDKQzxqpV5ciQumfVRcO.7.Q/nn4yQAW','ADMIN',NULL,NULL,NULL),(16,1,'$2b$10$wkTf3MhoOH9W3YKh4ahTS.oXUituIot9L0xwkhePdsx/oH.aS1.Ni','ADMIN',NULL,NULL,NULL),(17,1,'$2b$10$bKjOF4.WTi8yIE3XTdyQ5uM1DHgq2strqGb08cx2fPjoVgiagbbm.','ADMIN',NULL,NULL,NULL),(18,1,'$2b$10$FvQSOr0fpZbQvEsWROOnRuqekC1N6t08n4y/IhFo9.d5r/1C1ZT.C','ADMIN',NULL,NULL,NULL),(19,1,'$2b$10$ryElWZTdIU601fRpKH2D1OgwkVXArHPzVL8ZHCDz77ZjwiO8jD9m2','ADMIN',NULL,NULL,NULL),(20,1,'$2b$10$ugXs1ARff/jP3TpBijWLt.gGXltpe3ixitvMKb2q1DuKfaVead846','ADMIN',NULL,NULL,NULL),(21,1,'$2b$10$2r7ZhUjd5/tnP3aEQrbiEuIChp.wjj0afkdekqrdJgfUq0M4K.D0q','ADMIN',NULL,NULL,NULL),(22,7,'$2b$10$F1kLNljGjrXPU3pUo6C/h.ouQ7qo2QgVi9Sd39mGUymzfbUrITabm','MARIAPEREZ',NULL,NULL,NULL),(23,8,'$2b$10$gXnm2f4LYZx1PRhJWeTeDe73/iNSIoK8ESo0CVtunZ4NsgGYxY0yu','JUANL',NULL,NULL,NULL),(24,9,'$2b$10$OXJL5phrcFkA9DyJ5RWd1.RoG3nX8DiH7Sqi.BLGX5NttfB7fINO6','PAMELA',NULL,NULL,NULL);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_parametros_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','2',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas` VALUES (15,'¿Quien le gana a todos?','Jared',NULL,NULL,NULL),(16,'Muchas gracias aficion esta es para vosotros','Romeo',NULL,NULL,NULL),(17,'Skate','Erick',NULL,NULL,NULL),(19,'Skate','ERICKK','2023-03-15',NULL,NULL),(31,'Primer Perro Boxer','Moisa','2023-03-21',NULL,NULL);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_1` FOREIGN KEY (`Id_Pregunta`) REFERENCES `tbl_ms_preguntas` (`Id_Pregunta`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (15,1,'goku','Erick',NULL,NULL,NULL),(15,2,'Dios','hana',NULL,NULL,NULL),(15,3,'ggg','NOCE',NULL,NULL,NULL),(19,3,'ggg','NOCE',NULL,NULL,NULL),(19,6,'Gestion','DAN',NULL,NULL,NULL),(19,1,'HOLA MUNDO','JOHANA',NULL,NULL,NULL),(17,8,'goku','JUAN',NULL,NULL,NULL),(16,8,'sss','JUAN',NULL,NULL,NULL),(16,7,'gggg','MARIA',NULL,NULL,NULL),(19,7,'ghhh','MARIA',NULL,NULL,NULL);
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
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 05:01:31',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Erick','ADMIN','Activo','$2b$10$ASGhwGq8yEnsozon1IH4De0NPSh3uHTh0cM0bPMP6q2AWOLZ51fG.',1,NULL,0,1,'2024-01-01','admin@gmail.com',1,'SISTEMA','2023-04-03',NULL,NULL),(2,'0208200001152','SLARA','Nuevo','$2b$10$sMa7YwTuybbkLxm3f8m6Yu7rYeLqP0hfhbOwfklnWFDq8BA1RIpW6',2,NULL,0,0,'2023-11-13','johalara@gmail.cm',NULL,NULL,NULL,NULL,NULL),(3,'SLARA','NOCE','Activo','$2b$10$sMa7YwTuybbkLxm3f8m6Yu7rYeLqP0hfhbOwfklnWFDq8BA1RIpW6',2,NULL,0,0,'2023-11-15','johana2606@gmail.com',NULL,NULL,NULL,NULL,NULL),(4,'JUANL','JUAN','Activo','$2b$10$eGfzoVjnLXei1/ZFLsVWT.1rWB2pl8Fn.Y1n1b1Tk63hPP82JMmia',2,NULL,0,0,'2023-11-15','jlainezz@gmail.com',60,NULL,'2023-08-17',NULL,'2023-08-17'),(5,'1','HUAN','Nuevo','$2b$10$ddxsUZsQC9QooqR2qxO8w.0Jd56IPIq/kW1olt2l6BCDzMETqPUCW',1,NULL,0,0,'2023-11-15','seydi@gmail.com',1,NULL,'2023-08-17',NULL,'2023-08-17'),(6,'DDANIEL','DAN','Activo','$2b$10$WfiYlfematzpdnefJCOQy.N6qEJoAgf5Q6tlci8LtirBcId7vjd6i',2,NULL,0,0,'2023-11-15','dan@gmail.com',61,NULL,'2023-08-17',NULL,'2023-08-17'),(7,'MARIAPEREZ','MARIA','Activo','$2b$10$oDcwywPbsXhoLLsHrT7x6uGSJdtsExkHw2vkTywy.5BbYoxs73AgW',2,NULL,0,0,'2023-11-16','maria@gmail.com',64,NULL,'2023-08-18',NULL,'2023-08-18'),(8,'JUANL','JUAN','Activo','$2b$10$ORsDIk4QkJOvteOA7NdBV.wcrU2y4rpcgj35QU.hdleDEJsx6QAUq',2,NULL,0,0,'2023-11-16','jlainez@gmail.com',65,NULL,'2023-08-18',NULL,'2023-08-18'),(9,'PAMELA','HEIDY','Nuevo','$2b$10$st8fVnX8D3Jur7E4pykKHODp7uWq5hLIwSbu1YYlQwCY/nccYeoIu',2,NULL,0,0,'2023-11-16','heidy@gmail.com',66,NULL,'2023-08-18',NULL,'2023-08-18');
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
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Reportes','Pagina de gestion de reportes','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL),(11,'Perfil','Pagina de gestion de perfil','gestion',NULL,NULL,NULL,NULL);
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
  KEY `IdTipoPago` (`IdTipoPago`),
  CONSTRAINT `tbl_pago_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_pago_ibfk_2` FOREIGN KEY (`IdTipoPago`) REFERENCES `tbl_tipopago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,11,1,'2023-08-16 22:31:42','Pendiente',4000,437),(2,11,1,'2023-08-16 22:32:03','Pendiente',400,37),(3,11,1,'2023-08-16 22:32:11','Pagado',37,0),(4,12,1,'2023-08-18 23:38:33','Pendiente',5000,1264),(5,12,1,'2023-08-18 23:38:50','Pagado',1264,0);
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
  KEY `Id_Rol` (`Id_Rol`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`),
  CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_ms_roles` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'n','n','n','s',NULL,NULL,NULL,NULL),(5,2,'s','n','n','n',NULL,NULL,NULL,NULL),(6,2,'s','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
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
  UNIQUE KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,4000,5,50,'Lentes bifocales'),(2,2,3200,3,35,'Lentes Monofocales'),(3,3,5000,5,55,'LENTES BIFOCALES'),(12,4,200,120,150,'johana');
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
  KEY `IdPromocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
INSERT INTO `tbl_productopromocion` VALUES (1,1,1),(2,1,2);
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-01-02','2023-01-10',1,0.13,'PromoLocos'),(2,'2023-08-24','2023-08-23',1,10,'lll   l');
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
  KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_promocionmarca_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_promocionmarca_ibfk_2` FOREIGN KEY (`IdMarca`) REFERENCES `tbl_marca` (`IdMarca`),
  CONSTRAINT `tbl_promocionmarca_ibfk_3` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
INSERT INTO `tbl_promocionmarca` VALUES (1,1,1,3);
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
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `tbl_pais` (`IdPais`),
  CONSTRAINT `tbl_proveedor_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAVision','Jared',4,11,'Productos de 5, 7 y 10','Cerca del cartel de sinaloa','22351142','unahs@gmail.com');
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
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `tbl_recordatorio_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (53,'0801200004525','REVISIONOJOS','2025-08-03'),(72,'0801200004525','JOLA','2023-09-01'),(89,'0801200201582','Reservación de cita - NINGUNA','2024-08-18');
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
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_sucursal_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `tbl_departamento` (`IdDepartamento`),
  CONSTRAINT `tbl_sucursal_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,1,48,'LAS TAPIAS MATEO','31945896');
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
INSERT INTO `tbl_tipopago` VALUES (4,'bg  '),(1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_token_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NjE5MTciLCJpYXQiOjE2ODkwNTMxMDAsImV4cCI6MTY4OTA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMzA5MTAiLCJpYXQiOjE2ODkwNTMyMjgsImV4cCI6MTY4OTA'),(3,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0OTE5ODUiLCJpYXQiOjE2ODkwNTQ2ODEsImV4cCI6MTY4OTA'),(4,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NjQ4MTciLCJpYXQiOjE2ODkwNTQ3NjcsImV4cCI6MTY4OTA'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDcxNjMiLCJpYXQiOjE2ODkwNTU4NDcsImV4cCI6MTY4OTA'),(6,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MjU1NTUiLCJpYXQiOjE2OTIzNzQ4MjIsImV4cCI6MTY5MjM3NTEyMn0.t4cqIy2F_fly4S9tapw-ZzsbwKQ3iWCez5G9T8Qq_uE'),(7,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0MTA3MDIiLCJpYXQiOjE2OTIzNzUxMDgsImV4cCI6MTY5MjM3NTQwOH0.OpjRWouvugM0Y5iLc7Um7wYzfzkQHnxGlB9HHycHQyA'),(8,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5OTk5NzAiLCJpYXQiOjE2OTIzNzUxODksImV4cCI6MTY5MjM3NTQ4OX0.eQmDj5h4lGWTbui1PPwh7lRnTTpe1w08Ni_g4AbTHAI'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0NTI1MjUiLCJpYXQiOjE2OTIzNzYyNjEsImV4cCI6MTY5MjM3NjU2MX0.WT9JH0biPBvQF6tOHNUcq0S1wZ4wuMnjFx2l8bYew_A');
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
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (5,'2023-08-15 17:04:05','2023-08-16','2023-08-31','0801200201582',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',28710),(6,'2023-08-15 17:14:54','2023-09-02','2023-08-31','0801200004525',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',226.2),(9,'2023-08-15 17:46:20','2023-09-09','2023-08-25','0801200201582',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',226.2),(10,'2023-08-15 22:53:44','2023-08-31','2023-08-31','0801200004525',54,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',147.9),(11,'2023-08-16 22:31:35','2023-09-09','2023-08-31','0801200004525',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',4437),(12,'2023-08-18 23:38:17','2023-09-01','2023-08-17','0801200201582',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6264);
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
  `IdLente` int(11) DEFAULT NULL,
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
  KEY `IdLente` (`IdLente`),
  CONSTRAINT `tbl_ventadetalle_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_ventadetalle_ibfk_2` FOREIGN KEY (`IdGarantia`) REFERENCES `tbl_garantia` (`IdGarantia`),
  CONSTRAINT `tbl_ventadetalle_ibfk_3` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_ventadetalle_ibfk_4` FOREIGN KEY (`IdDescuento`) REFERENCES `tbl_descuento` (`IdDescuento`),
  CONSTRAINT `tbl_ventadetalle_ibfk_5` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_ventadetalle_ibfk_6` FOREIGN KEY (`IdLente`) REFERENCES `tbl_lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,11,2,1,1,2,1600,2,1,5100,663,4437),(2,12,2,1,1,12,100,2,2,7200,936,6264);
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
INSERT INTO `tbl_cliente` VALUES ('0801200004525','HEIDY','DURON',1,'2023-09-06','BELLA VISTA','98552631','heidy@gmail.com'),('0801200201582','JARED','SALGADO',1,'0000-00-00','QUEZADA','99887790','jared@gmail.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-02 08:58:53',13000),(2,'2023-08-07 09:16:01',205),(3,'2023-08-07 09:16:42',0),(4,'2023-08-15 01:16:04',200),(5,'2023-08-15 23:34:53',100),(6,'2023-08-18 23:29:03',100),(7,'2023-08-18 23:33:49',0),(8,'2023-08-18 23:34:17',198);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,13,1,13000),(2,2,1,50,3,200),(3,2,1,2,1,5),(4,4,1,20,2,200),(5,5,1,1,1,100),(6,6,1,1,2,100),(7,8,1,100,2,99),(8,8,1,100,12,99);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.5,0.3),(2,1,3,2);
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
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'JOHANA','LARA','96235694',1,1,'0208200001152'),(50,'KAREN','LOPEZ','98562031',1,2,'1025198900256'),(54,'LIZY','PACO','97854630',1,1,'0208200112456'),(65,'JUAN','LAINEZ','12345678',1,1,'0801199900256'),(66,'HEIDY','LERO LERO','97896325',1,2,'0801200101151');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadoventa`
--

DROP TABLE IF EXISTS `tbl_estadoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estadoventa` (
  `IdEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`IdEstado`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadoventa`
--

LOCK TABLES `tbl_estadoventa` WRITE;
/*!40000 ALTER TABLE `tbl_estadoventa` DISABLE KEYS */;
INSERT INTO `tbl_estadoventa` VALUES (1,'Pagado'),(2,'Pendiente');
/*!40000 ALTER TABLE `tbl_estadoventa` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-02 05:28:14','0801200201582',1),(3,'2023-08-02 05:31:39','0801200004525',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'Ninguno','Scalici','Michael','Penales','1','1','1','1','1','1','2','2','2','2','2','2','2023-05-05','2024-03-03'),(23,3,'HANANI','HGJK','PAPI','MAMI','45','45','45','45','45','45','45','44','','','','','2023-08-09','2024-08-09'),(24,NULL,'NINGUNA','JOHANA','JOHJANA','NINGUNO','1','1','1','1','','','','','','','','','2023-08-17','2024-08-18');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia de fabricacion',5,1,1),(2,'Garantia de ajuste o comididad',5,2,1),(3,'Garantia de satisfaccion',3,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,-96),(2,12,94);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_kardex_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tbl_tipomovimiento` (`IdTipoMovimiento`),
  CONSTRAINT `tbl_kardex_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_kardex_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-15 01:55:14',20),(2,1,1,1,'2023-08-15 01:55:14',9),(3,1,3,1,'2023-08-15 01:55:14',50),(4,1,1,1,'2023-08-15 01:55:14',2),(5,1,2,1,'2023-08-15 01:55:14',20),(6,2,2,1,'2023-08-15 02:35:08',1),(7,2,1,0,'2023-08-15 02:45:39',100),(8,2,1,0,'2023-08-15 02:49:48',2),(9,2,12,0,'2023-08-15 02:53:40',1),(10,2,1,1,'2023-08-15 17:04:05',10),(11,2,12,1,'2023-08-15 17:14:54',1),(12,2,12,0,'2023-08-15 17:46:20',1),(13,2,12,1,'2023-08-15 22:53:44',1),(14,1,1,1,'2023-08-15 06:00:00',1),(15,2,2,2,'2023-08-16 22:31:35',1),(16,1,2,1,'2023-08-18 06:00:00',1),(17,1,2,1,'2023-08-18 06:00:00',100),(18,1,12,1,'2023-08-18 06:00:00',100),(19,2,12,1,'2023-08-18 23:38:17',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Lente Progresivo',3000),(2,'Lente Monofocal',3500),(3,'Lente AR',4000);
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
INSERT INTO `tbl_marca` VALUES (1,'Calvin Klein'),(2,'Tommy Hilfiger');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK1995',1995),(2,2,'TH7451',2014),(3,1,'CK2015',2015),(4,2,'SJLF-128',2001);
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
  KEY `Id_Objeto` (`Id_Objeto`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_2` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=769 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (380,'2023-08-07 03:48:18',0,5,'Borrar Cita','El usuario eliminó una cita'),(381,'2023-08-07 03:52:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(382,'2023-08-07 03:52:47',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(383,'2023-08-07 03:53:09',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(384,'2023-08-07 03:53:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(385,'2023-08-07 04:04:29',1,11,'Ingreso a Pefil','El usuario ingreso a Mi Perfil'),(386,'2023-08-07 04:10:11',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(387,'2023-08-07 04:10:59',1,11,'Moficacion','El usuario modifico su contraseña'),(388,'2023-08-07 04:11:40',1,11,'Moficacion','El usuario modifico sus preguntas'),(389,'2023-08-07 04:16:33',1,11,'Moficacion','El usuario modifico las preguntas de seguridad'),(390,'2023-08-07 04:19:43',1,11,'Moficacion','El usuario modifico la contraseña'),(391,'2023-08-07 04:22:19',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(392,'2023-08-09 15:52:30',1,1,'Login','Inicio de sesión '),(393,'2023-08-09 15:54:33',1,1,'Login','Inicio de sesión '),(394,'2023-08-09 15:56:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(395,'2023-08-09 16:02:14',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(396,'2023-08-09 16:02:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(397,'2023-08-09 16:02:39',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(398,'2023-08-09 16:11:40',1,1,'Login','Inicio de sesión '),(399,'2023-08-09 16:14:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(400,'2023-08-09 16:43:00',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(401,'2023-08-09 17:07:36',1,1,'Login','Inicio de sesión '),(402,'2023-08-09 17:12:28',1,5,'Borrar Cita','El usuario eliminó una cita'),(403,'2023-08-09 17:12:37',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(404,'2023-08-09 17:27:37',1,5,'Borrar Cita','El usuario eliminó una cita'),(405,'2023-08-09 17:27:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(406,'2023-08-09 17:47:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(407,'2023-08-09 17:53:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(408,'2023-08-09 18:11:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(409,'2023-08-09 18:19:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(410,'2023-08-09 18:20:24',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(411,'2023-08-09 18:25:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(412,'2023-08-09 18:29:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(413,'2023-08-09 18:29:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(414,'2023-08-09 18:35:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(415,'2023-08-09 18:43:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(416,'2023-08-09 18:45:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(417,'2023-08-09 18:45:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(418,'2023-08-09 18:47:42',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(419,'2023-08-09 19:06:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(420,'2023-08-09 19:13:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(421,'2023-08-09 19:21:01',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(422,'2023-08-09 19:29:10',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(423,'2023-08-09 19:37:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(424,'2023-08-09 19:38:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(425,'2023-08-09 19:40:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(426,'2023-08-09 20:00:40',1,1,'Login','Inicio de sesión '),(431,'2023-08-09 20:07:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(432,'2023-08-09 20:07:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(433,'2023-08-09 20:09:49',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(434,'2023-08-09 20:09:51',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(435,'2023-08-09 20:10:07',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(436,'2023-08-09 20:10:09',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(437,'2023-08-09 20:11:50',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(438,'2023-08-09 20:11:51',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(439,'2023-08-09 20:19:24',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(440,'2023-08-09 20:19:38',1,1,'Login','Inicio de sesión '),(441,'2023-08-09 20:19:40',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(442,'2023-08-09 20:44:46',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(443,'2023-08-09 21:04:20',1,1,'Login','Inicio de sesión '),(444,'2023-08-09 21:04:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(445,'2023-08-09 21:04:28',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(446,'2023-08-09 21:04:30',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(447,'2023-08-09 21:06:00',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(448,'2023-08-09 21:06:02',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(449,'2023-08-09 21:06:21',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(450,'2023-08-09 21:06:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(451,'2023-08-09 21:44:49',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(452,'2023-08-09 21:44:50',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(453,'2023-08-09 21:44:54',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(454,'2023-08-09 21:46:30',1,1,'Login','Inicio de sesión '),(455,'2023-08-09 21:46:33',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(456,'2023-08-09 21:47:32',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(457,'2023-08-09 21:47:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(458,'2023-08-09 21:48:29',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(459,'2023-08-09 21:48:46',1,1,'Login','Inicio de sesión '),(460,'2023-08-09 21:48:48',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(461,'2023-08-09 21:49:55',1,1,'Login','Inicio de sesión '),(462,'2023-08-09 21:49:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(463,'2023-08-09 21:50:07',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(464,'2023-08-09 21:50:11',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(465,'2023-08-09 21:51:40',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(466,'2023-08-09 21:51:41',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(467,'2023-08-09 21:51:54',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(468,'2023-08-09 21:51:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(469,'2023-08-09 21:52:17',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(470,'2023-08-09 21:52:18',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(471,'2023-08-09 21:52:23',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(472,'2023-08-09 21:52:24',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(473,'2023-08-09 21:52:33',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(474,'2023-08-09 21:52:35',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(475,'2023-08-09 21:52:42',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(476,'2023-08-09 21:52:58',1,1,'Login','Inicio de sesión '),(477,'2023-08-09 21:53:00',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(478,'2023-08-09 21:54:34',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(479,'2023-08-09 21:54:44',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(480,'2023-08-09 21:54:57',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(481,'2023-08-09 21:55:09',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(482,'2023-08-09 21:55:32',1,1,'Login','Inicio de sesión '),(483,'2023-08-09 21:55:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(484,'2023-08-09 21:55:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(485,'2023-08-09 21:56:16',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(486,'2023-08-14 09:38:49',1,1,'Login','Inicio de sesión '),(487,'2023-08-14 10:21:11',1,1,'Login','Inicio de sesión '),(488,'2023-08-14 10:21:22',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(489,'2023-08-14 10:22:44',1,1,'Login','Inicio de sesión '),(490,'2023-08-14 10:22:46',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(491,'2023-08-14 10:23:02',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(492,'2023-08-14 10:23:04',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(493,'2023-08-14 10:23:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(494,'2023-08-14 10:23:20',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(495,'2023-08-14 19:15:20',1,1,'Login','Inicio de sesión '),(496,'2023-08-14 19:15:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(497,'2023-08-14 19:29:53',1,1,'Login','Inicio de sesión '),(498,'2023-08-14 19:29:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(499,'2023-08-14 19:30:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(500,'2023-08-14 19:30:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(501,'2023-08-14 19:30:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(502,'2023-08-14 19:30:46',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(503,'2023-08-14 19:31:14',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(504,'2023-08-14 19:50:01',1,1,'Login','Inicio de sesión '),(505,'2023-08-14 20:55:26',1,1,'Login','Inicio de sesión '),(506,'2023-08-14 20:55:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(507,'2023-08-14 20:55:37',1,5,'Borrar Cita','El usuario eliminó una cita'),(508,'2023-08-14 20:55:44',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(509,'2023-08-14 20:57:52',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(510,'2023-08-14 20:58:13',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(511,'2023-08-14 20:59:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(512,'2023-08-14 20:59:55',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(513,'2023-08-14 21:15:50',1,1,'Login','Inicio de sesión '),(514,'2023-08-14 21:20:59',1,1,'Login','Inicio de sesión '),(515,'2023-08-14 21:30:15',1,1,'Login','Inicio de sesión '),(516,'2023-08-14 21:30:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(517,'2023-08-14 21:30:26',1,5,'Borrar Cita','El usuario eliminó una cita'),(518,'2023-08-14 21:30:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(519,'2023-08-14 21:30:45',1,1,'Login','Inicio de sesión '),(520,'2023-08-14 21:42:37',1,1,'Login','Inicio de sesión '),(521,'2023-08-15 10:56:41',1,1,'Login','Inicio de sesión '),(522,'2023-08-15 11:25:01',1,1,'Login','Inicio de sesión '),(523,'2023-08-15 11:25:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(524,'2023-08-15 11:25:13',1,5,'Borrar Cita','El usuario eliminó una cita'),(525,'2023-08-15 11:25:20',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(526,'2023-08-15 11:25:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(527,'2023-08-15 11:25:47',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(528,'2023-08-15 15:45:54',1,1,'Login','Inicio de sesión '),(529,'2023-08-15 15:45:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-08-15 16:01:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(531,'2023-08-15 16:03:34',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(532,'2023-08-15 16:07:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(533,'2023-08-15 16:08:03',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(534,'2023-08-15 16:25:22',NULL,9,'Salir','Se salio de Lista de Empleados'),(535,'2023-08-15 16:28:19',1,5,'Salir','El usuario salió de la pantalla de citas'),(536,'2023-08-15 16:29:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(537,'2023-08-15 16:35:02',NULL,9,'Salir','Se salio de Lista de Empleados'),(538,'2023-08-15 16:36:40',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(539,'2023-08-15 16:37:32',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(540,'2023-08-15 16:38:04',NULL,9,'Salir','Se salio de Lista de Empleados'),(541,'2023-08-15 16:38:10',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(542,'2023-08-15 16:38:14',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(543,'2023-08-15 16:38:18',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(544,'2023-08-15 16:38:19',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(545,'2023-08-15 16:40:24',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(546,'2023-08-15 16:40:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(547,'2023-08-15 16:42:15',1,1,'Login','Inicio de sesión '),(548,'2023-08-15 17:37:35',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(549,'2023-08-15 17:46:54',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(550,'2023-08-15 17:47:35',1,1,'Login','Inicio de sesión '),(551,'2023-08-15 17:47:35',1,1,'Login','Inicio de sesión '),(552,'2023-08-15 17:47:45',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(553,'2023-08-15 17:48:00',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(554,'2023-08-15 17:48:00',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(555,'2023-08-15 17:48:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(556,'2023-08-15 17:48:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(557,'2023-08-15 17:56:49',1,1,'Login','Inicio de sesión '),(558,'2023-08-15 17:56:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(559,'2023-08-15 17:56:53',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(560,'2023-08-15 17:57:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(561,'2023-08-15 18:10:00',1,1,'Login','Inicio de sesión '),(562,'2023-08-15 18:10:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(563,'2023-08-15 18:14:16',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(564,'2023-08-15 18:14:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(565,'2023-08-15 18:16:45',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(566,'2023-08-15 18:26:10',1,1,'Login','Inicio de sesión '),(567,'2023-08-16 16:11:41',1,1,'Login','Inicio de sesión '),(568,'2023-08-16 16:11:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(569,'2023-08-16 16:17:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(570,'2023-08-16 16:18:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(571,'2023-08-16 16:18:58',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(572,'2023-08-16 16:24:48',0,11,'Salir de perfil','El usuario salio de Mi Perfil'),(573,'2023-08-16 16:24:57',1,1,'Login','Inicio de sesión '),(574,'2023-08-16 16:27:14',2,1,'Login','Inicio de sesión '),(575,'2023-08-16 16:27:55',2,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(576,'2023-08-17 17:03:11',1,1,'Login','Inicio de sesión '),(577,'2023-08-17 17:03:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(578,'2023-08-17 17:04:00',NULL,9,'Salir','Se salio de Lista de Empleados'),(579,'2023-08-17 17:04:18',NULL,9,'Salir','Se salio de Lista de Empleados'),(580,'2023-08-17 17:05:05',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(581,'2023-08-17 18:03:56',1,1,'Login','Inicio de sesión '),(582,'2023-08-17 18:04:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(583,'2023-08-17 18:10:53',1,5,'Borrar Cita','El usuario eliminó una cita'),(584,'2023-08-17 18:11:04',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(585,'2023-08-17 18:11:32',1,5,'Borrar Cita','El usuario eliminó una cita'),(586,'2023-08-17 18:12:29',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(587,'2023-08-17 18:12:32',1,5,'Borrar Cita','El usuario eliminó una cita'),(588,'2023-08-17 18:14:38',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(589,'2023-08-17 18:14:40',1,5,'Borrar Cita','El usuario eliminó una cita'),(590,'2023-08-17 18:15:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(591,'2023-08-17 18:15:36',1,5,'Borrar Cita','El usuario eliminó una cita'),(592,'2023-08-17 18:15:42',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(593,'2023-08-17 18:16:00',1,1,'Login','Inicio de sesión '),(594,'2023-08-17 18:20:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(595,'2023-08-17 18:20:21',1,5,'Borrar Cita','El usuario eliminó una cita'),(596,'2023-08-17 18:20:28',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(597,'2023-08-17 18:20:29',1,5,'Borrar Cita','El usuario eliminó una cita'),(598,'2023-08-17 18:21:58',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(599,'2023-08-17 18:21:59',1,5,'Borrar Cita','El usuario eliminó una cita'),(600,'2023-08-17 18:25:08',1,5,'Salir','El usuario salió de la pantalla de citas'),(601,'2023-08-17 18:25:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(602,'2023-08-17 18:25:14',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(603,'2023-08-17 18:25:15',1,5,'Borrar Cita','El usuario eliminó una cita'),(604,'2023-08-17 18:40:26',1,1,'Login','Inicio de sesión '),(605,'2023-08-17 18:40:28',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(606,'2023-08-17 18:41:28',1,2,'Actualizar Usuario','Se realizo actualizaciones en Usuario'),(607,'2023-08-17 19:02:03',3,1,'Login','Inicio de sesión '),(608,'2023-08-17 19:06:08',1,1,'Login','Inicio de sesión '),(609,'2023-08-17 19:55:24',1,1,'Login','Inicio de sesión '),(610,'2023-08-17 19:55:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(611,'2023-08-17 19:57:19',NULL,9,'Salir','Se salio de Lista de Empleados'),(613,'2023-08-17 20:02:40',1,1,'Login','Inicio de sesión '),(614,'2023-08-17 20:02:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(615,'2023-08-17 20:02:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-08-17 20:11:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(617,'2023-08-17 20:11:13',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(618,'2023-08-17 20:11:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(619,'2023-08-17 20:11:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(620,'2023-08-17 20:18:25',6,1,'Login','Inicio de sesión '),(621,'2023-08-17 20:18:43',6,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(622,'2023-08-17 20:19:08',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(623,'2023-08-17 20:20:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(624,'2023-08-17 20:20:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(625,'2023-08-17 20:21:12',1,1,'Login','Inicio de sesión '),(626,'2023-08-17 20:21:15',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(627,'2023-08-17 20:21:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(628,'2023-08-17 20:21:32',NULL,9,'Salir','Se salio de Lista de Empleados'),(629,'2023-08-17 20:21:39',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(630,'2023-08-17 20:22:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(631,'2023-08-17 20:24:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(632,'2023-08-17 20:30:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(633,'2023-08-17 20:31:07',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(634,'2023-08-17 20:33:01',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(635,'2023-08-17 20:33:02',NULL,9,'Salir','Se salio de Lista de Empleados'),(636,'2023-08-17 20:33:25',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(637,'2023-08-17 20:33:31',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(638,'2023-08-17 20:33:38',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(639,'2023-08-17 20:34:16',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(640,'2023-08-17 20:34:27',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(641,'2023-08-17 20:37:43',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(642,'2023-08-17 20:37:56',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(643,'2023-08-17 20:38:12',NULL,9,'Salir','Se salio de Lista de Empleados'),(644,'2023-08-17 20:38:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(645,'2023-08-17 20:39:35',NULL,9,'Salir','Se salio de Lista de Empleados'),(646,'2023-08-17 20:39:37',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(647,'2023-08-17 20:39:46',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(648,'2023-08-17 20:41:45',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(649,'2023-08-17 20:47:42',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(650,'2023-08-17 20:47:50',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(651,'2023-08-17 20:47:54',NULL,9,'Eliminar empleado','El usuario elimino registros de empleados'),(652,'2023-08-17 20:47:57',NULL,9,'Salir','Se salio de Lista de Empleados'),(653,'2023-08-17 20:48:06',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(654,'2023-08-17 20:48:22',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(655,'2023-08-17 20:48:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(656,'2023-08-17 20:49:53',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(657,'2023-08-17 20:50:05',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(658,'2023-08-17 21:10:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(659,'2023-08-17 21:10:53',NULL,9,'Salir','Se salio de Lista de Empleados'),(660,'2023-08-17 22:04:02',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(661,'2023-08-17 22:04:04',1,5,'Borrar Cita','El usuario eliminó una cita'),(662,'2023-08-17 22:40:25',1,1,'Login','Inicio de sesión '),(663,'2023-08-17 22:40:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(664,'2023-08-17 22:40:32',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(665,'2023-08-17 22:40:35',1,5,'Borrar Cita','El usuario eliminó una cita'),(666,'2023-08-17 22:43:04',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(667,'2023-08-17 22:45:45',1,5,'Borrar Cita','El usuario eliminó una cita'),(668,'2023-08-17 22:51:25',1,1,'Login','Inicio de sesión '),(669,'2023-08-17 22:52:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(670,'2023-08-17 22:52:43',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(671,'2023-08-17 22:54:10',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(672,'2023-08-17 22:54:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(673,'2023-08-17 22:54:23',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(674,'2023-08-17 22:55:40',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(675,'2023-08-17 22:55:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(676,'2023-08-17 22:55:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(677,'2023-08-17 23:01:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(678,'2023-08-17 23:07:12',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(679,'2023-08-18 09:20:10',1,1,'Login','Inicio de sesión '),(680,'2023-08-18 09:20:15',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(681,'2023-08-18 09:23:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(682,'2023-08-18 09:23:44',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(683,'2023-08-18 09:23:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(684,'2023-08-18 09:24:10',1,1,'Login','Inicio de sesión '),(685,'2023-08-18 09:24:13',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(686,'2023-08-18 09:35:55',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(687,'2023-08-18 09:36:07',1,1,'Login','Inicio de sesión '),(688,'2023-08-18 09:36:15',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(690,'2023-08-18 09:38:47',1,1,'Login','Inicio de sesión '),(691,'2023-08-18 09:38:49',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(693,'2023-08-18 09:45:14',1,1,'Login','Inicio de sesión '),(694,'2023-08-18 09:48:31',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(695,'2023-08-18 09:54:40',1,5,'Salir','El usuario salió de la pantalla de citas'),(696,'2023-08-18 09:54:42',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(697,'2023-08-18 09:55:52',1,11,'Moficacion','El usuario modifico la contraseña'),(698,'2023-08-18 09:56:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(699,'2023-08-18 10:04:57',1,1,'Login','Inicio de sesión '),(700,'2023-08-18 10:05:00',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(701,'2023-08-18 10:05:01',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(702,'2023-08-18 10:05:06',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(703,'2023-08-18 10:05:14',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(704,'2023-08-18 10:36:16',1,1,'Login','Inicio de sesión '),(705,'2023-08-18 10:36:33',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(706,'2023-08-18 10:36:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(707,'2023-08-18 10:56:14',1,1,'Login','Inicio de sesión '),(708,'2023-08-18 11:02:35',1,1,'Login','Inicio de sesión '),(709,'2023-08-18 11:08:23',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(710,'2023-08-18 11:08:24',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(711,'2023-08-18 11:29:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(712,'2023-08-18 11:29:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-08-18 11:29:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(714,'2023-08-18 11:29:27',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(715,'2023-08-18 11:29:29',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(716,'2023-08-18 11:29:32',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(717,'2023-08-18 11:29:35',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(718,'2023-08-18 11:47:49',8,1,'Login','Inicio de sesión '),(719,'2023-08-18 17:10:06',1,1,'Login','Inicio de sesión '),(720,'2023-08-18 17:10:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(721,'2023-08-18 17:12:16',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(722,'2023-08-18 17:12:50',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(723,'2023-08-18 17:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(724,'2023-08-18 17:13:02',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(725,'2023-08-18 17:13:09',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(726,'2023-08-18 17:13:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(727,'2023-08-18 17:13:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(728,'2023-08-18 17:13:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(729,'2023-08-18 17:13:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(730,'2023-08-18 17:15:16',1,5,'Salir','El usuario salió de la pantalla de citas'),(731,'2023-08-18 17:15:17',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(732,'2023-08-18 17:16:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-08-18 17:27:44',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(734,'2023-08-18 17:27:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(735,'2023-08-18 17:28:10',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(736,'2023-08-18 17:28:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(737,'2023-08-18 17:28:15',1,5,'Salir','El usuario salió de la pantalla de citas'),(738,'2023-08-18 17:28:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(739,'2023-08-18 17:42:34',1,11,'Ingreso a Perfil','El usuario ingreso a Mi Perfil'),(740,'2023-08-18 17:42:57',1,11,'Salir de perfil','El usuario salio de Mi Perfil'),(741,'2023-08-18 17:46:03',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(742,'2023-08-18 17:46:18',1,5,'Salir','El usuario salió de la pantalla de citas'),(743,'2023-08-18 17:46:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(744,'2023-08-18 17:46:19',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(745,'2023-08-18 17:46:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(746,'2023-08-18 17:46:38',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(747,'2023-08-18 17:49:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(748,'2023-08-18 18:02:24',1,1,'Login','Inicio de sesión '),(749,'2023-08-18 18:02:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(750,'2023-08-18 18:03:42',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(751,'2023-08-18 18:15:04',1,1,'Login','Inicio de sesión '),(752,'2023-08-18 18:15:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(753,'2023-08-18 18:15:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(754,'2023-08-18 18:15:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(755,'2023-08-18 18:15:58',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(756,'2023-08-18 18:16:00',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(757,'2023-08-18 18:17:14',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(758,'2023-08-18 18:17:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(759,'2023-08-18 18:17:55',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-08-18 18:18:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(761,'2023-08-18 18:18:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(762,'2023-08-18 18:26:22',1,1,'Login','Inicio de sesión '),(763,'2023-08-19 10:18:03',1,1,'Login','Inicio de sesión '),(764,'2023-08-19 10:18:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(765,'2023-08-19 11:30:17',1,1,'Login','Inicio de sesión '),(766,'2023-08-19 11:30:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-08-19 11:47:49',1,1,'Login','Inicio de sesión '),(768,'2023-08-19 11:47:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_hist_contrasenia_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$.gpIfPtrlTlqGG4jNTQgA.JeWY3sLBwpHRbCET1RgfyAzbBM.x8Pu','admin',NULL,NULL,NULL),(5,2,'$2b$10$CR7LPhqgw9wVoOA1ButW8uhBzO1aAtONm89peV24jcGxAxG2PfdN2','HANA',NULL,NULL,NULL),(6,0,'$2b$10$DBC1zgA2j.90xiQpcPeor.81CzX8qYq0luZLxl.KGmbx/TLFLN/VS','DDD',NULL,NULL,NULL),(7,1,'$2b$10$jtRO/o5G8FscwLarUqmXset/j7BRDPlnsVA2ii8NVQrqNLVDrV2r6','admin',NULL,NULL,NULL),(8,1,'$2b$10$kXSkGKXxlSiRNjnqXvazHucfN7.jP.Um4S0PbZAnLhexJPb5qnnJq','admin',NULL,NULL,NULL),(9,2,'$2b$10$S3D4psPq0YQ47JzLG/CCUeLeX/iE1JVuk8sSaGkn22/hZvzYXKmLK','SLARA',NULL,NULL,NULL),(10,4,'$2b$10$/YgO4dXzLoHobOedTXCRHOLnU1HjYX.Pooc2CL9Gx4lDncf/vcMui','JUANL',NULL,NULL,NULL),(11,5,'$2b$10$/iUravdYBApcVjc8ucebA.Kls1pnc5YAxOc.WxCHwSMvnJ4zAlznK','HUAN',NULL,NULL,NULL),(12,3,'$2b$10$ueGbrXwdqkjY95di2ZxKUeuEjAiJt/U8h4zEbtndxTEmEFazZ28rq','NOCE',NULL,NULL,NULL),(13,3,'$2b$10$uNNlyta5nYu2ZXuVi.Sp8O1DuGOqp0lSJ5SEKYrk6Onja.67J/j4O','NOCE',NULL,NULL,NULL),(14,6,'$2b$10$dXvz6zQD40sLVuw7Vy2ZROqcmLAcGz7jinHma6OKJYRdT9BVz.IIu','DDANIEL',NULL,NULL,NULL),(15,1,'$2b$10$Q0GkOGdYPsM3DnbXvLInneDKQzxqpV5ciQumfVRcO.7.Q/nn4yQAW','ADMIN',NULL,NULL,NULL),(16,1,'$2b$10$wkTf3MhoOH9W3YKh4ahTS.oXUituIot9L0xwkhePdsx/oH.aS1.Ni','ADMIN',NULL,NULL,NULL),(17,1,'$2b$10$bKjOF4.WTi8yIE3XTdyQ5uM1DHgq2strqGb08cx2fPjoVgiagbbm.','ADMIN',NULL,NULL,NULL),(18,1,'$2b$10$FvQSOr0fpZbQvEsWROOnRuqekC1N6t08n4y/IhFo9.d5r/1C1ZT.C','ADMIN',NULL,NULL,NULL),(19,1,'$2b$10$ryElWZTdIU601fRpKH2D1OgwkVXArHPzVL8ZHCDz77ZjwiO8jD9m2','ADMIN',NULL,NULL,NULL),(20,1,'$2b$10$ugXs1ARff/jP3TpBijWLt.gGXltpe3ixitvMKb2q1DuKfaVead846','ADMIN',NULL,NULL,NULL),(21,1,'$2b$10$2r7ZhUjd5/tnP3aEQrbiEuIChp.wjj0afkdekqrdJgfUq0M4K.D0q','ADMIN',NULL,NULL,NULL),(22,7,'$2b$10$F1kLNljGjrXPU3pUo6C/h.ouQ7qo2QgVi9Sd39mGUymzfbUrITabm','MARIAPEREZ',NULL,NULL,NULL),(23,8,'$2b$10$gXnm2f4LYZx1PRhJWeTeDe73/iNSIoK8ESo0CVtunZ4NsgGYxY0yu','JUANL',NULL,NULL,NULL),(24,9,'$2b$10$OXJL5phrcFkA9DyJ5RWd1.RoG3nX8DiH7Sqi.BLGX5NttfB7fINO6','PAMELA',NULL,NULL,NULL);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_parametros_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','2',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas` VALUES (15,'¿Quien le gana a todos?','Jared',NULL,NULL,NULL),(16,'Muchas gracias aficion esta es para vosotros','Romeo',NULL,NULL,NULL),(17,'Skate','Erick',NULL,NULL,NULL),(19,'Skate','ERICKK','2023-03-15',NULL,NULL),(31,'Primer Perro Boxer','Moisa','2023-03-21',NULL,NULL);
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_1` FOREIGN KEY (`Id_Pregunta`) REFERENCES `tbl_ms_preguntas` (`Id_Pregunta`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (15,1,'goku','Erick',NULL,NULL,NULL),(15,2,'Dios','hana',NULL,NULL,NULL),(15,3,'ggg','NOCE',NULL,NULL,NULL),(19,3,'ggg','NOCE',NULL,NULL,NULL),(19,6,'Gestion','DAN',NULL,NULL,NULL),(19,1,'HOLA MUNDO','JOHANA',NULL,NULL,NULL),(17,8,'goku','JUAN',NULL,NULL,NULL),(16,8,'sss','JUAN',NULL,NULL,NULL),(16,7,'gggg','MARIA',NULL,NULL,NULL),(19,7,'ghhh','MARIA',NULL,NULL,NULL);
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
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 05:01:31',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Erick','ADMIN','Activo','$2b$10$ASGhwGq8yEnsozon1IH4De0NPSh3uHTh0cM0bPMP6q2AWOLZ51fG.',1,NULL,0,1,'2024-01-01','admin@gmail.com',1,'SISTEMA','2023-04-03',NULL,NULL),(2,'0208200001152','SLARA','Nuevo','$2b$10$sMa7YwTuybbkLxm3f8m6Yu7rYeLqP0hfhbOwfklnWFDq8BA1RIpW6',2,NULL,0,0,'2023-11-13','johalara@gmail.cm',NULL,NULL,NULL,NULL,NULL),(3,'SLARA','NOCE','Activo','$2b$10$sMa7YwTuybbkLxm3f8m6Yu7rYeLqP0hfhbOwfklnWFDq8BA1RIpW6',2,NULL,0,0,'2023-11-15','johana2606@gmail.com',NULL,NULL,NULL,NULL,NULL),(4,'JUANL','JUAN','Activo','$2b$10$eGfzoVjnLXei1/ZFLsVWT.1rWB2pl8Fn.Y1n1b1Tk63hPP82JMmia',2,NULL,0,0,'2023-11-15','jlainezz@gmail.com',60,NULL,'2023-08-17',NULL,'2023-08-17'),(5,'1','HUAN','Nuevo','$2b$10$ddxsUZsQC9QooqR2qxO8w.0Jd56IPIq/kW1olt2l6BCDzMETqPUCW',1,NULL,0,0,'2023-11-15','seydi@gmail.com',1,NULL,'2023-08-17',NULL,'2023-08-17'),(6,'DDANIEL','DAN','Activo','$2b$10$WfiYlfematzpdnefJCOQy.N6qEJoAgf5Q6tlci8LtirBcId7vjd6i',2,NULL,0,0,'2023-11-15','dan@gmail.com',61,NULL,'2023-08-17',NULL,'2023-08-17'),(7,'MARIAPEREZ','MARIA','Activo','$2b$10$oDcwywPbsXhoLLsHrT7x6uGSJdtsExkHw2vkTywy.5BbYoxs73AgW',2,NULL,0,0,'2023-11-16','maria@gmail.com',64,NULL,'2023-08-18',NULL,'2023-08-18'),(8,'JUANL','JUAN','Activo','$2b$10$ORsDIk4QkJOvteOA7NdBV.wcrU2y4rpcgj35QU.hdleDEJsx6QAUq',2,NULL,0,0,'2023-11-16','jlainez@gmail.com',65,NULL,'2023-08-18',NULL,'2023-08-18'),(9,'PAMELA','HEIDY','Nuevo','$2b$10$st8fVnX8D3Jur7E4pykKHODp7uWq5hLIwSbu1YYlQwCY/nccYeoIu',2,NULL,0,0,'2023-11-16','heidy@gmail.com',66,NULL,'2023-08-18',NULL,'2023-08-18');
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
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Reportes','Pagina de gestion de reportes','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL),(11,'Perfil','Pagina de gestion de perfil','gestion',NULL,NULL,NULL,NULL);
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
  KEY `IdTipoPago` (`IdTipoPago`),
  CONSTRAINT `tbl_pago_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_pago_ibfk_2` FOREIGN KEY (`IdTipoPago`) REFERENCES `tbl_tipopago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,11,1,'2023-08-16 22:31:42','Pendiente',4000,437),(2,11,1,'2023-08-16 22:32:03','Pendiente',400,37),(3,11,1,'2023-08-16 22:32:11','Pagado',37,0),(4,12,1,'2023-08-18 23:38:33','Pendiente',5000,1264),(5,12,1,'2023-08-18 23:38:50','Pagado',1264,0);
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
  KEY `Id_Rol` (`Id_Rol`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`),
  CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_ms_roles` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'n','n','n','n',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'n','n','n','s',NULL,NULL,NULL,NULL),(5,2,'s','n','n','n',NULL,NULL,NULL,NULL),(6,2,'s','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','n','n','n',NULL,NULL,NULL,NULL),(8,2,'n','n','n','n',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
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
  UNIQUE KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,4000,5,50,'Lentes bifocales'),(2,2,3200,3,35,'Lentes Monofocales'),(3,3,5000,5,55,'LENTES BIFOCALES'),(12,4,200,120,150,'johana');
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
  KEY `IdPromocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
INSERT INTO `tbl_productopromocion` VALUES (1,1,1),(2,1,2);
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
INSERT INTO `tbl_promocion` VALUES (1,'2023-01-02','2023-01-10',1,0.13,'PromoLocos'),(2,'2023-08-24','2023-08-23',1,10,'lll   l');
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
  KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_promocionmarca_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_promocionmarca_ibfk_2` FOREIGN KEY (`IdMarca`) REFERENCES `tbl_marca` (`IdMarca`),
  CONSTRAINT `tbl_promocionmarca_ibfk_3` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
INSERT INTO `tbl_promocionmarca` VALUES (1,1,1,3);
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
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `tbl_pais` (`IdPais`),
  CONSTRAINT `tbl_proveedor_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAVision','Jared',4,11,'Productos de 5, 7 y 10','Cerca del cartel de sinaloa','22351142','unahs@gmail.com');
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
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `tbl_recordatorio_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (53,'0801200004525','REVISIONOJOS','2025-08-03'),(72,'0801200004525','JOLA','2023-09-01'),(89,'0801200201582','Reservación de cita - NINGUNA','2024-08-18');
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
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_sucursal_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `tbl_departamento` (`IdDepartamento`),
  CONSTRAINT `tbl_sucursal_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,1,48,'LAS TAPIAS MATEO','31945896');
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
INSERT INTO `tbl_tipopago` VALUES (4,'bg  '),(1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_token_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NjE5MTciLCJpYXQiOjE2ODkwNTMxMDAsImV4cCI6MTY4OTA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMzA5MTAiLCJpYXQiOjE2ODkwNTMyMjgsImV4cCI6MTY4OTA'),(3,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0OTE5ODUiLCJpYXQiOjE2ODkwNTQ2ODEsImV4cCI6MTY4OTA'),(4,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NjQ4MTciLCJpYXQiOjE2ODkwNTQ3NjcsImV4cCI6MTY4OTA'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDcxNjMiLCJpYXQiOjE2ODkwNTU4NDcsImV4cCI6MTY4OTA'),(6,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3MjU1NTUiLCJpYXQiOjE2OTIzNzQ4MjIsImV4cCI6MTY5MjM3NTEyMn0.t4cqIy2F_fly4S9tapw-ZzsbwKQ3iWCez5G9T8Qq_uE'),(7,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0MTA3MDIiLCJpYXQiOjE2OTIzNzUxMDgsImV4cCI6MTY5MjM3NTQwOH0.OpjRWouvugM0Y5iLc7Um7wYzfzkQHnxGlB9HHycHQyA'),(8,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI5OTk5NzAiLCJpYXQiOjE2OTIzNzUxODksImV4cCI6MTY5MjM3NTQ4OX0.eQmDj5h4lGWTbui1PPwh7lRnTTpe1w08Ni_g4AbTHAI'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0NTI1MjUiLCJpYXQiOjE2OTIzNzYyNjEsImV4cCI6MTY5MjM3NjU2MX0.WT9JH0biPBvQF6tOHNUcq0S1wZ4wuMnjFx2l8bYew_A');
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
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (5,'2023-08-15 17:04:05','2023-08-16','2023-08-31','0801200201582',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',28710),(6,'2023-08-15 17:14:54','2023-09-02','2023-08-31','0801200004525',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',226.2),(9,'2023-08-15 17:46:20','2023-09-09','2023-08-25','0801200201582',1,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',226.2),(10,'2023-08-15 22:53:44','2023-08-31','2023-08-31','0801200004525',54,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',147.9),(11,'2023-08-16 22:31:35','2023-09-09','2023-08-31','0801200004525',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',4437),(12,'2023-08-18 23:38:17','2023-09-01','2023-08-17','0801200201582',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6264);
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
  `IdLente` int(11) DEFAULT NULL,
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
  KEY `IdLente` (`IdLente`),
  CONSTRAINT `tbl_ventadetalle_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_ventadetalle_ibfk_2` FOREIGN KEY (`IdGarantia`) REFERENCES `tbl_garantia` (`IdGarantia`),
  CONSTRAINT `tbl_ventadetalle_ibfk_3` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_ventadetalle_ibfk_4` FOREIGN KEY (`IdDescuento`) REFERENCES `tbl_descuento` (`IdDescuento`),
  CONSTRAINT `tbl_ventadetalle_ibfk_5` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_ventadetalle_ibfk_6` FOREIGN KEY (`IdLente`) REFERENCES `tbl_lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,11,2,1,1,2,1600,2,1,5100,663,4437),(2,12,2,1,1,12,100,2,2,7200,936,6264);
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

-- Dump completed on 2023-08-19 13:06:32
