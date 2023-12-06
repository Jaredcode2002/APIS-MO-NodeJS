-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: proyectomultioptica
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
INSERT INTO `tbl_ciudad` VALUES (1,'Tegucigalpa','A'),(2,'Comayagua','A'),(3,'San Pedro Sula','A'),(4,'La Ceiba','A'),(5,'Choluteca','A'),(6,'Puerto Cortes','A'),(7,'El Progreso','A'),(8,'Choloma','A'),(9,'Tela','A'),(10,'Juticalpa','A'),(11,'Danli',NULL),(12,'La Lima',NULL),(13,'Santa Rosa de Copan',NULL),(14,'Siguatepeque',NULL),(15,'Catacamas',NULL),(16,'Tocoa',NULL),(17,'Olanchito',NULL),(18,'Distrito Central',NULL),(19,'Santa Barbara',NULL),(20,'Yoro',NULL),(21,'Nacaome',NULL),(22,'Gracias',NULL),(23,'La Esperanza',NULL),(24,'Yuscaran',NULL),(25,'Trujillo',NULL),(26,'Puerto Lempira',NULL),(27,'Ocotepeque',NULL),(28,'La Paz',NULL),(29,'Patuca',NULL),(30,'Chamelecon',NULL),(31,'Las Vegas',NULL),(32,'El Porvenir',NULL),(33,'Santa cruz de Yojoa',NULL),(34,'Marcala',NULL),(35,'Comayagüela ',NULL),(36,'Jutiapa',NULL),(37,'Omoa Amapala',NULL),(38,'La Campa',NULL),(39,'Guaimaca',NULL),(40,'Talanga',NULL),(41,'Bonito Oriental',NULL),(42,'Minas de Oro',NULL),(43,'Jesus de Otoro',NULL),(44,'Teupasenti',NULL),(45,'Brus Laguna',NULL),(46,'San Jose de Colinas',NULL),(47,'La Masique',NULL),(48,'Ajuterique',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0801199411202','MANUEL','SALGADO',1,'2023-10-25','CARRIZAL','89561472','manu@gmail.com',1),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',2),('0801199411206','KAROL','GARCIA',2,'2023-11-15','COLOMBIA','98741025','karolg@gmail.com',3),('0801199411207','PRUEBA','PROBANDO',1,'2023-10-24','BUENAS NUEVAS','98741120','sabu@gmail.com',4),('0801199503698','PROFESOR','LICENCIADO',1,'1995-11-21','BARRIO BELLA VISTA QUINTA AVENIDA POR REDNONDEL FRENTE A IGLESIA AMOR Y PAZ','99157420','profe@gmail.com',5),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000),(2,'2023-08-20 17:35:02',6000),(3,'2023-11-09 05:30:49',14000),(4,'2023-11-10 14:52:11',15000),(5,'2023-11-10 16:27:37',110);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000),(3,3,1,6,2,14000),(4,4,1,79,3,15000),(5,5,1,100,4,100),(6,5,1,50,1,10);
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
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida','A'),(2,'Colón','A'),(3,'Comayagua','A'),(4,'Copán','A'),(5,'Cortés','A'),(6,'Choluteca','A'),(7,'El Paraíso','A'),(8,'Francisco Morazán','A'),(9,'Gracias a Dios','A'),(10,'Intibucá','A'),(11,'Islas de la Bahía','A'),(12,'La Paz','A'),(13,'Lempira','A'),(14,'Ocotepeque','A'),(15,'Olancho','A'),(16,'Santa Bárbara',NULL),(17,'Valle',NULL),(18,'Yoro',NULL);
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
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',10),(2,'A',0.1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(4,'ELVIS','GODOY','99287403',1,1,'0802200101154',NULL,NULL,NULL,'Activo'),(5,'JUAN','RODRIGUEZ','99762137',1,1,'0801199802042',NULL,NULL,NULL,'Activo'),(7,'TEST','TEST','99884415',1,2,'0802200101153',NULL,NULL,NULL,'Inactivo'),(12,'MICKY','MOUSE','11223344',1,1,'0801199999994','2023-11-13','0000-00-00','1998-04-15','Inactivo'),(13,'HEIDY','ZELAYA','98451254',1,2,'0801199801456',NULL,NULL,NULL,'Activo'),(16,'KAREN','AGUILERA','99287403',2,1,'0801199411204','2023-11-13','1899-11-30','2000-11-24','Inactivo'),(17,'ERICK','PAVON','96235694',1,1,'0801200001152',NULL,NULL,NULL,'Activo'),(19,'ERIKA','AMADOR','88131255',6,2,'0801199809821','2023-11-06','2023-11-13','2000-11-23','Inactivo'),(20,'ROSA IDALIA','GARCIA GIRON','99876543',1,2,'0801200201145','2023-11-06','0000-00-00','1992-11-02','Activo'),(22,'JOSE','ORTEGA','98635492',6,1,'0801200001111','2023-11-15','1899-11-30','1971-11-23','Activo'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Activo'),(24,'PRUEBA','PROBANDO','99806756',6,1,'0801200004536','2023-11-04','0000-00-00','2022-07-22','Activo'),(25,'INFORMATICA','ADMINISTRATIVA','99112277',1,1,'0801199603615','2023-10-31',NULL,'1996-05-30','Activo'),(32,'JOHN','TRAVOLTA','97666666',1,1,'0801199603666','2023-11-09',NULL,'1999-11-08','Activo'),(34,'LEO','PAREDES','97666666',5,1,'0801199603665','2023-11-23',NULL,'2001-11-22','Activo'),(36,'CRISTIAN','JOVANI','99287403',5,1,'0801199603611','2023-12-01',NULL,'1998-11-08','Activo'),(37,'ORLIN','CARRANZA','96235699',1,1,'0801199802222','2023-12-07',NULL,'2002-11-23','Inactivo');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(3,'2023-10-15 06:00:00','0801199411207',1),(4,'2023-11-08 06:00:00','0801199411206',24),(5,'2023-11-09 06:00:00','0801199503698',17);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(3,NULL,'dengue','ROSA','ERICK','PRESION BAJA','2','-2','2','-2','-2','-2','2','-1','-2','0','1','1','2023-08-19','2024-08-20'),(4,3,'NINGUNA','MESSI','RONALDO','ASMATICO','1','1','2','2','2','2','1','1','3','3','1','1','2023-10-15','2024-10-15'),(5,4,'JAIRO','MESSI','CRISTIANO','NADITA','3','3','2','2','2','5','7','6','8','9','8','9','2023-11-08','2024-11-08'),(6,5,'ASTIGMATISMO','RICKY','MARTIN','ASMATICO','-2','2','-2','4','1','3','-2','2','1','1','3','2','2023-11-09','2024-11-10'),(7,5,'ASTIGMATISMO LEVE','MARIO','MENDOZA','ASMATICO','1','1','2','2','3','3','4','4','2','2','1','0','2023-11-09','2024-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia por ajustes',3,'A'),(2,'Garantia de calidad',3,'A'),(3,'shshsh',5,'A'),(4,'POR MES',5,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino','A'),(2,'Femenino','A'),(3,'BINARIO','I');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(2,2,-495),(3,3,79),(4,4,97),(5,9,0);
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
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100,NULL),(2,2,1,1,'2023-08-20 01:54:08',1,NULL),(3,2,1,1,'2023-08-20 16:36:57',1,NULL),(4,1,1,1,'2023-08-20 06:00:00',5,NULL),(5,2,1,1,'2023-10-14 17:09:41',2,NULL),(6,2,1,1,'2023-10-14 17:23:52',1,NULL),(7,2,1,1,'2023-10-14 20:08:38',1,NULL),(8,2,1,1,'2023-10-15 03:59:18',1,NULL),(9,2,1,1,'2023-10-15 04:04:20',2,NULL),(10,1,2,1,'2023-11-09 06:00:00',6,NULL),(11,2,2,1,'2023-11-09 05:49:27',500,NULL),(12,2,2,1,'2023-11-09 07:02:53',1,NULL),(13,1,3,16,'2023-11-10 06:00:00',79,NULL),(14,1,4,16,'2023-11-10 06:00:00',100,NULL),(15,1,1,16,'2023-11-10 06:00:00',50,NULL),(16,2,4,16,'2023-11-10 16:45:05',1,NULL),(17,2,4,16,'2023-11-10 16:56:19',1,NULL),(18,2,4,16,'2023-11-10 17:03:24',1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Transition',2000,'Activo'),(2,'Bifocales',1800,'Inactivo'),(5,'leo messi',1000,'Inactivo'),(6,'Jejeje',5000,'Inactivo'),(7,'MBAPUES XD',14000,'Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'JOSE JOSE','A'),(6,'LUIS MIGUEL','A'),(7,'LUISMIBOY','A'),(8,'DIOR','A'),(9,'PRADA','A'),(10,'HOLA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(4,4,'MODELO PROFES',2023,'A'),(5,4,'PRUEBA PROFE',2023,'A'),(6,1,'CALKIN2023',2000,'A'),(7,4,'NNIOJIOJ',2001,'I'),(11,5,'HAKUNA',2021,'A'),(13,8,'DIO34',2021,'A'),(14,7,'BOY',2023,'A'),(15,8,'JUAN',2014,'A'),(16,8,'JUNA',2021,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-12-01 12:52:32',1,1,'Login','Inicio de sesión '),(2,'2023-12-01 12:57:49',1,1,'Login','Inicio de sesión '),(3,'2023-12-01 13:00:29',1,1,'Login','Inicio de sesión '),(4,'2023-12-01 13:01:44',1,1,'Login','Inicio de sesión '),(5,'2023-12-01 13:04:18',1,1,'Login','Inicio de sesión '),(6,'2023-12-01 13:05:04',1,1,'Login','Inicio de sesión '),(7,'2023-12-01 13:18:23',1,1,'Login','Inicio de sesión '),(8,'2023-12-01 13:20:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(9,'2023-12-01 13:21:36',1,1,'Login','Inicio de sesión '),(10,'2023-12-01 13:25:22',1,1,'Login','Inicio de sesión ');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','si',NULL,NULL,NULL,NULL),(15,1,'ADMIN_CORREO_PASS','hlnc bxyg ahpg ngfs',NULL,NULL,NULL,NULL);
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿Cual es tu color Favorito?','Jared',NULL,NULL,NULL,NULL),(2,'¿Cual es tu equipo favorito?','Romeo',NULL,NULL,NULL,NULL),(3,'¿Cual es el nombre de tu abuelo paterno?','Erick',NULL,NULL,NULL,NULL),(4,'¿Como se llamaba tu primer mascota?','ERICKK','2023-03-15',NULL,NULL,NULL),(5,'¿A donde quieres viajar?','Moisa','2023-03-21',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL);
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
  PRIMARY KEY (`Id_Rol`),
  UNIQUE KEY `Descripcion` (`Descripcion`),
  UNIQUE KEY `Rol` (`Rol`),
  UNIQUE KEY `Descripcion_2` (`Descripcion`),
  UNIQUE KEY `Rol_2` (`Rol`),
  UNIQUE KEY `Rol_3` (`Rol`),
  UNIQUE KEY `Descripcion_3` (`Descripcion`),
  UNIQUE KEY `Rol_4` (`Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','A',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario','A',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'Tecnico','El que da mantenimiento a los server','A',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','A',NULL,'2023-11-05 03:43:23',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Activo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(4,'ELVIS','ELVIS','Inactivo','$2b$10$4AzKNdCImN0j0Rsh2XN3XOSY3cmdkcLzO8GTGjTDOYbCZR.CQEmf6',1,NULL,0,0,'2024-01-09','elvis@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(5,'JUAN','JUAN','Nuevo','$2b$10$qNrvnEqzc/H1kH3ZtlkSTuJFkTO3J7q8bHAt8NbA/5JYqaXm1FfOS',2,NULL,0,0,'2024-01-15','juan@gmail.com',5,NULL,'2023-10-17',NULL,'2023-10-17'),(6,'OLVIN','OLVIN','Nuevo','$2b$10$uaN6CTNYSexxAaVwMIaBHec286LTMUWUZv7rdrPrq1JUldqqD0bUS',2,NULL,0,0,'2024-01-17','prueba@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(8,'TEST','TEST','Inactivo','$2b$10$0S0WFR97fc6Yly36YwBIs.tUZDSrtyzQLG0U2gIXdO7blRTO.otSu',1,NULL,0,0,'2024-01-17','test@gmail.com',7,NULL,'2023-10-19',NULL,'2023-10-19'),(9,'HEIDY','HEIDY','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',2,NULL,0,0,'2024-01-19','heidy@gmail.com',13,NULL,'2023-10-20',NULL,'2023-10-20'),(10,'KAGUILERA','KAGUILERA','Nuevo','$2b$10$Yio/a0B8Mor4wJk/wshgS.8AUl8Lm3KH8v8r2VlXV4Z30AR1Po4YO',1,NULL,0,0,'2024-01-20','karen@gmail.com',16,NULL,'2023-10-22',NULL,'2023-10-22'),(11,'SANTOS','SANTOS','Activo','$2b$10$62hV03hhUIFEmhDf.ecRo.0YrKpDU.qZcA1HAEDeyV0x3q0Up1eJa',2,NULL,0,0,'2024-02-07','santos@gmail.com',15,NULL,'2023-10-28',NULL,'2023-10-28'),(13,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-06',NULL,NULL,NULL,'2023-11-08',NULL,'2023-11-08'),(15,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-08',NULL,NULL,NULL,'2023-11-10',NULL,'2023-11-10'),(16,'PROFESOR','PROFESOR','Activo','$2b$10$Syh7tv/28DZoUGC7wWDeB.1RJSNKuWbYXhk1jDWQ97GIhFKmvEQCy',1,NULL,0,0,'2024-02-08','karlamega@gmail.com',25,NULL,'2023-11-10',NULL,'2023-11-10'),(17,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-08',NULL,NULL,NULL,'2023-11-10',NULL,'2023-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,1,1,'2023-08-20 01:54:18','Pendiente',2500,289.6),(2,1,1,'2023-08-20 01:54:32','Pagado',289.6,0),(3,2,1,'2023-08-20 17:16:01','Pagado',2613.6,0),(4,4,4,'2023-10-14 17:10:03','Pendiente',5000,579.2),(5,4,2,'2023-10-14 17:10:31','Pagado',579.2,0),(6,5,4,'2023-10-14 17:25:20','Pagado',2728,0),(7,6,4,'2023-10-14 20:08:44','Pagado',2904,0),(8,7,4,'2023-10-15 03:59:34','Pagado',2904,0),(9,8,4,'2023-10-15 04:04:27','Pagado',5456,0),(10,9,4,'2023-11-09 05:49:47','Pagado',1276000,0),(11,10,4,'2023-11-09 07:03:06','Pagado',2640,0),(12,11,4,'2023-11-10 16:45:32','Pagado',2195.6,0),(13,12,2,'2023-11-10 16:56:41','Pendiente',500,1744),(14,12,1,'2023-11-10 16:57:28','Pendiente',50,1694),(15,12,4,'2023-11-10 17:00:56','Pagado',1694,0),(16,13,4,'2023-11-10 17:03:32','Pendiente',1500,568),(17,13,4,'2023-11-10 17:03:51','Pendiente',400,168),(18,13,4,'2023-11-10 17:04:12','Pendiente',200,368);
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
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'jajaja','A'),(3,3,3000,10,80,'Lentes modernos','A'),(4,4,550,100,500,'PROMOCION DE DIA DE LA MADRE','A'),(9,5,14000,2,23,'FACHERITOS','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25','A',0.12,'PAQUETAZOS'),(2,'2023-10-13','2023-10-25','I',0.4,'PROMONUEVOS'),(3,'2023-11-02','2023-12-02','A',12,'NASA');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','Erick',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','+50496235694','erickpavon544@gmail.com','Activo'),(2,'Marcos & Cia','Marcos quien mas xd',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','Activo'),(8,'UNAH3','Erick',2,48,'Aros de la gama mas economica y repuestos',' Tegucigalpa M.D.C','+504962356','erickpavon545@gmail.com','Activo'),(28,'UNAH2','Messi',1,24,'Ofrece lentes de todos los colores y tamaños.','World trade center','96235691','erickpavon534@gmail.com','Inactivo'),(29,'UPN','FRANCISCO',2,48,'CIGARROS','TEGUCIGALPA M.D.C','+50496235611','erickpavon4@gmail.com','Inactivo'),(30,'MARIO BROSS CA','MARIO',7,8,'UN POCO DE TODO','CORTES JEJE','87655647','mariob@gmail.com','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'CERCA DE LA CURASAO','20282862','I'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','I'),(3,3,1,'ALCALDIA MUNICIPAL','22306587','A'),(4,1,4,'PARQUE LA AURORA','22115596','I'),(5,5,30,'SPS','22346712','I'),(6,5,5,'VILLA VIEJA-MERCADO','23182862','I'),(7,1,3,'GUAYA','98761212','A'),(8,10,2,'HILA','12345678','A');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo','A'),(2,'Tarjeta de debito','A'),(3,'Tarjeta de credito','A'),(4,'De contado','A'),(5,'558184984','A'),(6,'768262828','A');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 01:54:08','2023-08-17','2023-08-01','0802200101153',NULL,'12121212','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2789.6,NULL),(2,'2023-08-20 16:36:57','2023-08-13','2023-08-08','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2613.6,NULL),(3,'2023-10-14 06:52:35','2023-10-02','2023-11-02','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL,NULL),(4,'2023-10-14 17:09:41','2023-10-20','2023-10-04','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5579.2,NULL),(5,'2023-10-14 17:23:52','2023-10-25','2023-10-04','0802200101153',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2728,NULL),(6,'2023-10-14 20:08:38','2023-10-27','2023-10-05','0801199411205',NULL,'08012000011520','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904,NULL),(7,'2023-10-15 03:59:17','2023-10-19','2023-10-18','0801199411205',NULL,'080119990113621','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904,NULL),(8,'2023-10-15 04:04:20','2023-10-13','2023-10-16','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5456,NULL),(9,'2023-11-09 05:49:27','2023-11-07','2023-11-23','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1276000,NULL),(10,'2023-11-09 07:02:53','2023-11-01','2023-11-30','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2640,NULL),(11,'2023-11-10 16:45:05','2023-11-21','2023-11-22','0801199503698',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2195.6,NULL),(12,'2023-11-10 16:56:19','2023-11-01','2023-11-15','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2244,NULL),(13,'2023-11-10 17:03:24','2023-11-08','2023-11-21','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2068,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456),(9,9,1,1,2,2,900,1,500,1450000,174000,1276000),(10,10,1,1,1,2,1000,1,1,3000,360,2640),(11,11,1,1,2,4,495,1,1,2495,299.4,2195.6),(12,12,1,1,1,4,550,1,1,2550,306,2244),(13,13,1,1,1,4,550,2,1,2350,282,2068);
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
INSERT INTO `tbl_ciudad` VALUES (1,'Tegucigalpa','A'),(2,'Comayagua','A'),(3,'San Pedro Sula','A'),(4,'La Ceiba','A'),(5,'Choluteca','A'),(6,'Puerto Cortes','A'),(7,'El Progreso','A'),(8,'Choloma','A'),(9,'Tela','A'),(10,'Juticalpa','A'),(11,'Danli',NULL),(12,'La Lima',NULL),(13,'Santa Rosa de Copan',NULL),(14,'Siguatepeque',NULL),(15,'Catacamas',NULL),(16,'Tocoa',NULL),(17,'Olanchito',NULL),(18,'Distrito Central',NULL),(19,'Santa Barbara',NULL),(20,'Yoro',NULL),(21,'Nacaome',NULL),(22,'Gracias',NULL),(23,'La Esperanza',NULL),(24,'Yuscaran',NULL),(25,'Trujillo',NULL),(26,'Puerto Lempira',NULL),(27,'Ocotepeque',NULL),(28,'La Paz',NULL),(29,'Patuca',NULL),(30,'Chamelecon',NULL),(31,'Las Vegas',NULL),(32,'El Porvenir',NULL),(33,'Santa cruz de Yojoa',NULL),(34,'Marcala',NULL),(35,'Comayagüela ',NULL),(36,'Jutiapa',NULL),(37,'Omoa Amapala',NULL),(38,'La Campa',NULL),(39,'Guaimaca',NULL),(40,'Talanga',NULL),(41,'Bonito Oriental',NULL),(42,'Minas de Oro',NULL),(43,'Jesus de Otoro',NULL),(44,'Teupasenti',NULL),(45,'Brus Laguna',NULL),(46,'San Jose de Colinas',NULL),(47,'La Masique',NULL),(48,'Ajuterique',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0801199411202','MANUEL','SALGADO',1,'2023-10-25','CARRIZAL','89561472','manu@gmail.com',1),('0801199411205','MELISSA','RAMOS',2,'2023-08-15','COL LA HONDURAS','99287403','melisa@gmail.com',2),('0801199411206','KAROL','GARCIA',2,'2023-11-15','COLOMBIA','98741025','karolg@gmail.com',3),('0801199411207','PRUEBA','PROBANDO',1,'2023-10-24','BUENAS NUEVAS','98741120','sabu@gmail.com',4),('0801199503698','PROFESOR','LICENCIADO',1,'1995-11-21','BARRIO BELLA VISTA QUINTA AVENIDA POR REDNONDEL FRENTE A IGLESIA AMOR Y PAZ','99157420','profe@gmail.com',5),('0802200101153','MARIO','MENDOZA',1,'2023-08-10','COL LOS YANOS','96235694','mario@gmail.com',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 01:47:57',50000),(2,'2023-08-20 17:35:02',6000),(3,'2023-11-09 05:30:49',14000),(4,'2023-11-10 14:52:11',15000),(5,'2023-11-10 16:27:37',110);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,100,1,50000),(2,2,1,5,1,6000),(3,3,1,6,2,14000),(4,4,1,79,3,15000),(5,5,1,100,4,100),(6,5,1,50,1,10);
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
INSERT INTO `tbl_departamento` VALUES (1,'Atlántida','A'),(2,'Colón','A'),(3,'Comayagua','A'),(4,'Copán','A'),(5,'Cortés','A'),(6,'Choluteca','A'),(7,'El Paraíso','A'),(8,'Francisco Morazán','A'),(9,'Gracias a Dios','A'),(10,'Intibucá','A'),(11,'Islas de la Bahía','A'),(12,'La Paz','A'),(13,'Lempira','A'),(14,'Ocotepeque','A'),(15,'Olancho','A'),(16,'Santa Bárbara',NULL),(17,'Valle',NULL),(18,'Yoro',NULL);
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
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,'A',10),(2,'A',0.1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999',NULL,NULL,NULL,'Activo'),(2,'OLVIN','GARCIA','33251470',1,1,'0801199002352',NULL,NULL,NULL,'Inactivo'),(3,'ELI','PAVON','25487842',1,1,'0801199701142',NULL,NULL,NULL,'Activo'),(4,'ELVIS','GODOY','99287403',1,1,'0802200101154',NULL,NULL,NULL,'Activo'),(5,'JUAN','RODRIGUEZ','99762137',1,1,'0801199802042',NULL,NULL,NULL,'Activo'),(7,'TEST','TEST','99884415',1,2,'0802200101153',NULL,NULL,NULL,'Inactivo'),(12,'MICKY','MOUSE','11223344',1,1,'0801199999994','2023-11-13','0000-00-00','1998-04-15','Inactivo'),(13,'HEIDY','ZELAYA','98451254',1,2,'0801199801456',NULL,NULL,NULL,'Activo'),(16,'KAREN','AGUILERA','99287403',2,1,'0801199411204','2023-11-13','1899-11-30','2000-11-24','Inactivo'),(17,'ERICK','PAVON','96235694',1,1,'0801200001152',NULL,NULL,NULL,'Activo'),(19,'ERIKA','AMADOR','88131255',6,2,'0801199809821','2023-11-06','2023-11-13','2000-11-23','Inactivo'),(20,'ROSA IDALIA','GARCIA GIRON','99876543',1,2,'0801200201145','2023-11-06','0000-00-00','1992-11-02','Activo'),(22,'JOSE','ORTEGA','98635492',6,1,'0801200001111','2023-11-15','1899-11-30','1971-11-23','Activo'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Activo'),(24,'PRUEBA','PROBANDO','99806756',6,1,'0801200004536','2023-11-04','0000-00-00','2022-07-22','Activo'),(25,'INFORMATICA','ADMINISTRATIVA','99112277',1,1,'0801199603615','2023-10-31',NULL,'1996-05-30','Activo'),(32,'JOHN','TRAVOLTA','97666666',1,1,'0801199603666','2023-11-09',NULL,'1999-11-08','Activo'),(34,'LEO','PAREDES','97666666',5,1,'0801199603665','2023-11-23',NULL,'2001-11-22','Activo'),(36,'CRISTIAN','JOVANI','99287403',5,1,'0801199603611','2023-12-01',NULL,'1998-11-08','Activo'),(37,'ORLIN','CARRANZA','96235699',1,1,'0801199802222','2023-12-07',NULL,'2002-11-23','Inactivo');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-18 06:00:00','0802200101153',1),(2,'2023-08-19 06:00:00','0801199411205',1),(3,'2023-10-15 06:00:00','0801199411207',1),(4,'2023-11-08 06:00:00','0801199411206',24),(5,'2023-11-09 06:00:00','0801199503698',17);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,1,'ASTIGMATISMO de -1.','MANUEL','MANUELA','ASMA','1','1','2','2','1','0','3','3','2','2','1','0','2023-08-18','2024-08-19'),(2,2,'Miopia','MANUEL','MANUELA','GASTRITIS','-2','3','-3','-2','2','-3','-3','4','-2','1','-3','-3','2023-08-19','2024-08-19'),(3,NULL,'dengue','ROSA','ERICK','PRESION BAJA','2','-2','2','-2','-2','-2','2','-1','-2','0','1','1','2023-08-19','2024-08-20'),(4,3,'NINGUNA','MESSI','RONALDO','ASMATICO','1','1','2','2','2','2','1','1','3','3','1','1','2023-10-15','2024-10-15'),(5,4,'JAIRO','MESSI','CRISTIANO','NADITA','3','3','2','2','2','5','7','6','8','9','8','9','2023-11-08','2024-11-08'),(6,5,'ASTIGMATISMO','RICKY','MARTIN','ASMATICO','-2','2','-2','4','1','3','-2','2','1','1','3','2','2023-11-09','2024-11-10'),(7,5,'ASTIGMATISMO LEVE','MARIO','MENDOZA','ASMATICO','1','1','2','2','3','3','4','4','2','2','1','0','2023-11-09','2024-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia por ajustes',3,'A'),(2,'Garantia de calidad',3,'A'),(3,'shshsh',5,'A'),(4,'POR MES',5,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'Masculino','A'),(2,'Femenino','A'),(3,'BINARIO','I');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,146),(2,2,-495),(3,3,79),(4,4,97),(5,9,0);
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
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',100,NULL),(2,2,1,1,'2023-08-20 01:54:08',1,NULL),(3,2,1,1,'2023-08-20 16:36:57',1,NULL),(4,1,1,1,'2023-08-20 06:00:00',5,NULL),(5,2,1,1,'2023-10-14 17:09:41',2,NULL),(6,2,1,1,'2023-10-14 17:23:52',1,NULL),(7,2,1,1,'2023-10-14 20:08:38',1,NULL),(8,2,1,1,'2023-10-15 03:59:18',1,NULL),(9,2,1,1,'2023-10-15 04:04:20',2,NULL),(10,1,2,1,'2023-11-09 06:00:00',6,NULL),(11,2,2,1,'2023-11-09 05:49:27',500,NULL),(12,2,2,1,'2023-11-09 07:02:53',1,NULL),(13,1,3,16,'2023-11-10 06:00:00',79,NULL),(14,1,4,16,'2023-11-10 06:00:00',100,NULL),(15,1,1,16,'2023-11-10 06:00:00',50,NULL),(16,2,4,16,'2023-11-10 16:45:05',1,NULL),(17,2,4,16,'2023-11-10 16:56:19',1,NULL),(18,2,4,16,'2023-11-10 17:03:24',1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Transition',2000,'Activo'),(2,'Bifocales',1800,'Inactivo'),(5,'leo messi',1000,'Inactivo'),(6,'Jejeje',5000,'Inactivo'),(7,'MBAPUES XD',14000,'Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (1,'CALVIN KLEIN','A'),(3,'TOMMY HILFGER','A'),(4,'MARCA PROFESOR','A'),(5,'JOSE JOSE','A'),(6,'LUIS MIGUEL','A'),(7,'LUISMIBOY','A'),(8,'DIOR','A'),(9,'PRADA','A'),(10,'HOLA','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,1,'CK-2000',2001,'A'),(2,1,'CK-2001',2001,'A'),(3,3,'TH-2012',2012,'A'),(4,4,'MODELO PROFES',2023,'A'),(5,4,'PRUEBA PROFE',2023,'A'),(6,1,'CALKIN2023',2000,'A'),(7,4,'NNIOJIOJ',2001,'I'),(11,5,'HAKUNA',2021,'A'),(13,8,'DIO34',2021,'A'),(14,7,'BOY',2023,'A'),(15,8,'JUAN',2014,'A'),(16,8,'JUNA',2021,'A');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-12-01 12:52:32',1,1,'Login','Inicio de sesión '),(2,'2023-12-01 12:57:49',1,1,'Login','Inicio de sesión '),(3,'2023-12-01 13:00:29',1,1,'Login','Inicio de sesión '),(4,'2023-12-01 13:01:44',1,1,'Login','Inicio de sesión '),(5,'2023-12-01 13:04:18',1,1,'Login','Inicio de sesión '),(6,'2023-12-01 13:05:04',1,1,'Login','Inicio de sesión '),(7,'2023-12-01 13:18:23',1,1,'Login','Inicio de sesión '),(8,'2023-12-01 13:20:20',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(9,'2023-12-01 13:21:36',1,1,'Login','Inicio de sesión '),(10,'2023-12-01 13:25:22',1,1,'Login','Inicio de sesión ');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL),(18,1,'$2b$10$DmTNYDAuYR8IHGU5Dc3HRueiqwIZr/EZlDm47Gmk4XhXiRUFQ14Gu','ADMIN',NULL,NULL,NULL),(19,2,'$2b$10$8qMWGzkTEUaN7FWNVLFiUuEGA/WLHlxz0pvr/DAdFtVvruM.7F1YO','OLVIN',NULL,NULL,NULL),(20,3,'$2b$10$6839nav7LDC.f1s9.NnkfOn2ba2j8egsRwkLKDmRiP0EOhq3O70D.','PRUEBA',NULL,NULL,NULL),(21,3,'$2b$10$B2Ocjk/h9g.sQCXaD90YF.LsYvT7lrPmVnfuROBXvOPHkVGCpsMo6','PRUEBA',NULL,NULL,NULL),(22,4,'$2b$10$hsRpEQRakfvlf6aRs1J9FuvwXAECJuEovYa94ZMIbWU5hSHUtLbWG','ELVIS',NULL,NULL,NULL),(23,5,'$2b$10$FlXACcQTU0GXA1erqCT32e6aoY2oUHddpjlB2OSjIuQ/4YRbiSr6i','JUAN',NULL,NULL,NULL),(24,5,'$2b$10$WnMLJdAbPzURdnxazp5i2unVD9NXoDuHgvtj.s0hhyTf/kBDFQ3vG','JUAN',NULL,NULL,NULL),(25,1,'$2b$10$1GArUx9RrXAwpUDiEwazT.65pxVxxHjj0VRt8BJ4jbScHAB2mV7la','ADMIN',NULL,NULL,NULL),(26,1,'$2b$10$HBt9NatpSgmVJ9tGYcGj3uAIK6YrkebWu7sD665R.MT5xxB6hmNsy','ADMIN',NULL,NULL,NULL),(27,5,'$2b$10$oiM3DXsHXiiBErV/D91Y0e3O9EGYCmCnWthhHB9CRY/dZ0AHe4vGK','JUAN',NULL,NULL,NULL),(28,5,'$2b$10$zDv5Vw5w.fIpnAr8amFdNem9SqWPsvRGn.OgtT0QrF/G3rmSUUs0u','JUAN',NULL,NULL,NULL),(29,5,'$2b$10$kx9./wbcVeRzlX8r4wKGMuML/T3ms86yTpG668c3Frqqqt7HrMnie','JUAN',NULL,NULL,NULL),(30,5,'$2b$10$xT6C9WG5ojVXuqht8c9zUepxYiv92kUa/orAbbXItE2PM/HscrBEa','JUAN',NULL,NULL,NULL),(31,5,'$2b$10$Hj2yz838jbWdzrmWg8AM9utXauCK1/l1rgex.eBkxKIzSiN0HaGUS','JUAN',NULL,NULL,NULL),(32,6,'$2b$10$.x/EX2iu5fHLJIhDOWbe1emBwk/Q4uIzjZF2.rCnX1XBCVPwjxJgy','OLVIN',NULL,NULL,NULL),(33,6,'$2b$10$ovjf5MRdF8TJh5kRjqJqauoW84u1.UtrwPtbf1L4VDHK.bE..YuTS','OLVIN',NULL,NULL,NULL),(34,5,'$2b$10$Pip9jfgZ4oKWIG92khjYG.q0acwrZKPetjOGbfovADHDDz8ZlMzVW','JUAN',NULL,NULL,NULL),(35,7,'$2b$10$rrNH.rq8WVaoAoAEEGNqfem6raRb4UdQ2E2qlVpc37VHv8K1UNeVC','ELI',NULL,NULL,NULL),(36,8,'$2b$10$OlHOI2.Gka8kYnYCS50Wm.Xh3mJqQs.gTuCsq4lfMtLltzfSXJ7Yi','TEST',NULL,NULL,NULL),(37,5,'$2b$10$M9Kgn5Ewh5IRDP..tOaA3ObF/h0dxjOM.Pn4frwbMMefu7UzX6vAu','JUAN',NULL,NULL,NULL),(38,5,'$2b$10$B1mPj18r9Qx7aqOrH/uNnuQIo21cKXvM1So.7/dEVOzxRaJDdvRyW','JUAN',NULL,NULL,NULL),(39,9,'$2b$10$MjHxRke6TKi.K.Or0l1uxezZbKrThfdgLn4s4tEBsP03e8JCX2cii','HEIDY',NULL,NULL,NULL),(40,9,'$2b$10$Zig4mFwSPkOQWguUSoYid.hmi0g8fn8gNTx0Xr5rWkuYj.nfPmc4q','HEIDY',NULL,NULL,NULL),(41,9,'$2b$10$lp9GQCfBH3r0DAcQEizLEOBGobHNIEI6t.6UEk5oNhkENI5FSMMPq','HEIDY',NULL,NULL,NULL),(42,9,'$2b$10$xVTYujHpW7MAzsw5q2FCquUNw4GfozygteGbneMdV9TtISLUIL7yK','HEIDY',NULL,NULL,NULL),(43,9,'$2b$10$KclcD/MMW186N38hLWb1S..9xU8IrhEwE5OYHIq/qbA7MtNH/0Kze','HEIDY',NULL,NULL,NULL),(44,10,'$2b$10$AZgRBRg2vFi1gSTYX5u4IOQtREFczoYy62pSf7spF3CgUC6ZvmK3G','KAGUILERA',NULL,NULL,NULL),(45,5,'$2b$10$5I.JkRS8GSUJxta/nd1.Du5aSep1Dz9XrPA5w9N/dcOnkYFs3e.IW','JUAN',NULL,NULL,NULL),(46,5,'$2b$10$bJ9pTtOmyMeJUxRCeZhqceHyx38j.cTwjmZ0ZvzIYuXEXrs3fRSCe','JUAN',NULL,NULL,NULL),(47,5,'$2b$10$k4TD.b9VgmDSbHc/e/qJ7OVLOKqBNI5v.tcE9X1UsjIug/y3h.ake','JUAN',NULL,NULL,NULL),(48,11,'$2b$10$.Eb3nYBjZIu0Vbbmoh1DtuyLkTv/e.JC.v5AJoBDJljxijsORUbG2','SANTOS',NULL,NULL,NULL),(49,11,'$2b$10$7BxbkLyh94XkbPatHk3qaOu0JP2HxAX2cXlG8.kbqqAnGzWyVA0Fi','SANTOS',NULL,NULL,NULL),(50,11,'$2b$10$6qaqDE4i9yXaNWCnmrMvAe7GoqaLDuKXRBTnsnF67mlX479RVo50u','SANTOS',NULL,NULL,NULL),(51,11,'$2b$10$k7vQUcs7Cf8uDVGoPyL3OuxhIcj4ovzCIn4NcwJmHlLE.lq0h2VnK','SANTOS',NULL,NULL,NULL),(52,11,'$2b$10$aQ0e29Ret6ZWbkp/zDECZuQyHEhRk4Mu64106l3f.5c/KCkWG0TEy','SANTOS',NULL,NULL,NULL),(53,9,'$2b$10$yBUm7741P8hKyk23QSmPv.LDSymeC/QVCIjprpDqjXHGDB65Xc57m','HEIDY',NULL,NULL,NULL),(54,1,'$2b$10$vQFGa9tE221irpYxSrvpGuowsfAknosFCk16BWFSSsZXjJ0bAvCH2','ADMIN',NULL,NULL,NULL),(55,13,NULL,NULL,NULL,NULL,NULL),(56,12,'$2b$10$xScABz3e3kg77F6SyoBp7.HI2LAl6x6J6oCZS1KiPID84WRLfUSkW','JOSE',NULL,NULL,NULL),(57,15,NULL,NULL,NULL,NULL,NULL),(58,14,'$2b$10$sBq0otvLg90leABBbjT97ekdYiTAg6N52iYV.TasnEfM/JU.zkHZq','PROFESOR',NULL,NULL,NULL),(59,17,NULL,NULL,NULL,NULL,NULL),(60,16,'$2b$10$q2pC1UmoOpJ.pIJU6im.6u8uSgBvQmPABofrtemb8TeMKVxOznqIi','PROFESOR',NULL,NULL,NULL),(61,16,'$2b$10$hAnzXgQrJna0QbjvKusVue34bj.Zx5VEoSWAPTHTz/8n1ec9UrOn2','PROFESOR',NULL,NULL,NULL),(62,16,'$2b$10$hrJJrpdWJhIymtEtEOwrdeSZVgwehRsy.Im4r9fbX.dX1fUiWFSey','PROFESOR',NULL,NULL,NULL),(63,16,'$2b$10$Ocqv./B6kmKTnN7jcsnaN.LgFsxogXYtZBcAsd.5SWH7IpQyCcCKO','PROFESOR',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','5',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','MultiOpticas RL de CV',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL),(10,1,'HOST','localhost',NULL,NULL,NULL,NULL),(11,1,'USER','root',NULL,NULL,NULL,NULL),(12,1,'PASSWORD',' ',NULL,NULL,NULL,NULL),(13,1,'DATABASE','proyectomultioptica',NULL,NULL,NULL,NULL),(14,1,'BITACORA','si',NULL,NULL,NULL,NULL),(15,1,'ADMIN_CORREO_PASS','hlnc bxyg ahpg ngfs',NULL,NULL,NULL,NULL);
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (1,'¿Cual es tu color Favorito?','Jared',NULL,NULL,NULL,NULL),(2,'¿Cual es tu equipo favorito?','Romeo',NULL,NULL,NULL,NULL),(3,'¿Cual es el nombre de tu abuelo paterno?','Erick',NULL,NULL,NULL,NULL),(4,'¿Como se llamaba tu primer mascota?','ERICKK','2023-03-15',NULL,NULL,NULL),(5,'¿A donde quieres viajar?','Moisa','2023-03-21',NULL,NULL,NULL);
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
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (1,2,'Rojo','OLVIN',NULL,NULL,NULL),(1,3,'azul','PRUEBA',NULL,NULL,NULL),(5,4,'EEUU','ELVIS',NULL,NULL,NULL),(1,5,'AZUL','JUAN',NULL,NULL,NULL),(5,6,'NEW YORK','OLVIN',NULL,NULL,NULL),(5,9,'ROATAN','HEIDY',NULL,NULL,NULL),(5,0,'ROATAN','',NULL,NULL,NULL),(1,10,'AZUL','KAGUILERA',NULL,NULL,NULL),(2,10,'BARCA','KAGUILERA',NULL,NULL,NULL),(3,10,'JUAN','KAGUILERA',NULL,NULL,NULL),(5,10,'NEW YORK','KAGUILERA',NULL,NULL,NULL),(2,5,'NINGUNO','JUAN',NULL,NULL,NULL),(1,11,'GRIS','ELVIN','2023-10-31',NULL,NULL),(5,11,'ROATAN','ELVIN','2023-10-31',NULL,NULL),(1,1,'AZUL','ADMIN','2023-11-09',NULL,NULL),(5,1,'NEW YORK','ADMIN','2023-11-09',NULL,NULL),(2,1,'BARCA','ADMIN','2023-11-09',NULL,NULL),(1,16,'AZUL','PROFESOR','2023-11-10',NULL,NULL),(2,16,'BARCA','PROFESOR','2023-11-10',NULL,NULL),(5,16,'NEW YORK','PROFESOR','2023-11-10',NULL,NULL);
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
  PRIMARY KEY (`Id_Rol`),
  UNIQUE KEY `Descripcion` (`Descripcion`),
  UNIQUE KEY `Rol` (`Rol`),
  UNIQUE KEY `Descripcion_2` (`Descripcion`),
  UNIQUE KEY `Rol_2` (`Rol`),
  UNIQUE KEY `Rol_3` (`Rol`),
  UNIQUE KEY `Descripcion_3` (`Descripcion`),
  UNIQUE KEY `Rol_4` (`Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones','A',NULL,'2023-03-05 04:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario','A',NULL,'2023-03-05 05:01:31',NULL,NULL),(4,'Tecnico','El que da mantenimiento a los server','A',NULL,'2023-11-04 03:54:05',NULL,NULL),(8,'OPTOMETRISTA','DOCTOR GENERAL ','A',NULL,'2023-11-05 03:43:23',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'ADMIN','ADMIN','Activo','$2b$10$wCw/kS8M2tVU8IixbDWDsOKgMaixpcwkisblyQTt.Qq0CQ6kfJ9gu',1,'2023-02-02',1,1,'2024-11-17','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08'),(2,'OLVIN','OLVIN','Activo','$2b$10$cpuG8uWqAo/sjNrsNRBhz.AIoX6Q0cLpROZoR5/slU5Z8PO5WOT.m',2,NULL,0,0,'2023-11-17','olvin@gmail.com',NULL,NULL,'2023-08-19',NULL,'2023-08-19'),(3,'PRUEBA','PRUEBA','Activo','$2b$10$Ouyo47lCiCoa4/k55MtJYOEGWPZ.zAY.5Qi4l/dsMg4LGcKRAwzQi',2,NULL,0,0,'2024-01-09','xavi@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(4,'ELVIS','ELVIS','Inactivo','$2b$10$4AzKNdCImN0j0Rsh2XN3XOSY3cmdkcLzO8GTGjTDOYbCZR.CQEmf6',1,NULL,0,0,'2024-01-09','elvis@gmail.com',NULL,NULL,'2023-10-11',NULL,'2023-10-11'),(5,'JUAN','JUAN','Nuevo','$2b$10$qNrvnEqzc/H1kH3ZtlkSTuJFkTO3J7q8bHAt8NbA/5JYqaXm1FfOS',2,NULL,0,0,'2024-01-15','juan@gmail.com',5,NULL,'2023-10-17',NULL,'2023-10-17'),(6,'OLVIN','OLVIN','Nuevo','$2b$10$uaN6CTNYSexxAaVwMIaBHec286LTMUWUZv7rdrPrq1JUldqqD0bUS',2,NULL,0,0,'2024-01-17','prueba@gmail.com',NULL,NULL,'2023-10-19',NULL,'2023-10-19'),(8,'TEST','TEST','Inactivo','$2b$10$0S0WFR97fc6Yly36YwBIs.tUZDSrtyzQLG0U2gIXdO7blRTO.otSu',1,NULL,0,0,'2024-01-17','test@gmail.com',7,NULL,'2023-10-19',NULL,'2023-10-19'),(9,'HEIDY','HEIDY','Activo','$2b$10$CNWuANtZh7k7lmO4FmIIs.rmUiHGIM9xoFjndFQ0WmRSlxk95OIFe',2,NULL,0,0,'2024-01-19','heidy@gmail.com',13,NULL,'2023-10-20',NULL,'2023-10-20'),(10,'KAGUILERA','KAGUILERA','Nuevo','$2b$10$Yio/a0B8Mor4wJk/wshgS.8AUl8Lm3KH8v8r2VlXV4Z30AR1Po4YO',1,NULL,0,0,'2024-01-20','karen@gmail.com',16,NULL,'2023-10-22',NULL,'2023-10-22'),(11,'SANTOS','SANTOS','Activo','$2b$10$62hV03hhUIFEmhDf.ecRo.0YrKpDU.qZcA1HAEDeyV0x3q0Up1eJa',2,NULL,0,0,'2024-02-07','santos@gmail.com',15,NULL,'2023-10-28',NULL,'2023-10-28'),(13,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-06',NULL,NULL,NULL,'2023-11-08',NULL,'2023-11-08'),(15,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-08',NULL,NULL,NULL,'2023-11-10',NULL,'2023-11-10'),(16,'PROFESOR','PROFESOR','Activo','$2b$10$Syh7tv/28DZoUGC7wWDeB.1RJSNKuWbYXhk1jDWQ97GIhFKmvEQCy',1,NULL,0,0,'2024-02-08','karlamega@gmail.com',25,NULL,'2023-11-10',NULL,'2023-11-10'),(17,NULL,NULL,'Nuevo',NULL,NULL,NULL,0,0,'2024-02-08',NULL,NULL,NULL,'2023-11-10',NULL,'2023-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,1,1,'2023-08-20 01:54:18','Pendiente',2500,289.6),(2,1,1,'2023-08-20 01:54:32','Pagado',289.6,0),(3,2,1,'2023-08-20 17:16:01','Pagado',2613.6,0),(4,4,4,'2023-10-14 17:10:03','Pendiente',5000,579.2),(5,4,2,'2023-10-14 17:10:31','Pagado',579.2,0),(6,5,4,'2023-10-14 17:25:20','Pagado',2728,0),(7,6,4,'2023-10-14 20:08:44','Pagado',2904,0),(8,7,4,'2023-10-15 03:59:34','Pagado',2904,0),(9,8,4,'2023-10-15 04:04:27','Pagado',5456,0),(10,9,4,'2023-11-09 05:49:47','Pagado',1276000,0),(11,10,4,'2023-11-09 07:03:06','Pagado',2640,0),(12,11,4,'2023-11-10 16:45:32','Pagado',2195.6,0),(13,12,2,'2023-11-10 16:56:41','Pendiente',500,1744),(14,12,1,'2023-11-10 16:57:28','Pendiente',50,1694),(15,12,4,'2023-11-10 17:00:56','Pagado',1694,0),(16,13,4,'2023-11-10 17:03:32','Pendiente',1500,568),(17,13,4,'2023-11-10 17:03:51','Pendiente',400,168),(18,13,4,'2023-11-10 17:04:12','Pendiente',200,368);
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
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1300,5,35,'CK-2000','A'),(2,2,1000,5,55,'jajaja','A'),(3,3,3000,10,80,'Lentes modernos','A'),(4,4,550,100,500,'PROMOCION DE DIA DE LA MADRE','A'),(9,5,14000,2,23,'FACHERITOS','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-15','2023-08-25','A',0.12,'PAQUETAZOS'),(2,'2023-10-13','2023-10-25','I',0.4,'PROMONUEVOS'),(3,'2023-11-02','2023-12-02','A',12,'NASA');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAH','Erick',1,3,'Aros de la gama mas economica y repuestos','Tegucigalpa M.D.C','+50496235694','erickpavon544@gmail.com','Activo'),(2,'Marcos & Cia','Marcos quien mas xd',2,48,'Aros de policarbonato','Cerca del Obelisco','98663321','marcoscia@gmal.com','Activo'),(8,'UNAH3','Erick',2,48,'Aros de la gama mas economica y repuestos',' Tegucigalpa M.D.C','+504962356','erickpavon545@gmail.com','Activo'),(28,'UNAH2','Messi',1,24,'Ofrece lentes de todos los colores y tamaños.','World trade center','96235691','erickpavon534@gmail.com','Inactivo'),(29,'UPN','FRANCISCO',2,48,'CIGARROS','TEGUCIGALPA M.D.C','+50496235611','erickpavon4@gmail.com','Inactivo'),(30,'MARIO BROSS CA','MARIO',7,8,'UN POCO DE TODO','CORTES JEJE','87655647','mariob@gmail.com','Activo');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801199411205','Reservación de cita - Miopia','2024-08-19'),(3,'0802200101153','Reservación de cita - dengue','2024-08-20'),(4,'0802200101153','CITA RAPIDA','2023-08-29'),(5,'0801199411207','Reservación de cita - NINGUNA','2024-10-15'),(6,'0801199411206','Reservación de cita - JAIRO','2024-11-08'),(7,'0801199503698','Reservación de cita - ASTIGMATISMO','2024-11-10');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'CERCA DE LA CURASAO','20282862','I'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100','I'),(3,3,1,'ALCALDIA MUNICIPAL','22306587','A'),(4,1,4,'PARQUE LA AURORA','22115596','I'),(5,5,30,'SPS','22346712','I'),(6,5,5,'VILLA VIEJA-MERCADO','23182862','I'),(7,1,3,'GUAYA','98761212','A'),(8,10,2,'HILA','12345678','A');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo','A'),(2,'Tarjeta de debito','A'),(3,'Tarjeta de credito','A'),(4,'De contado','A'),(5,'558184984','A'),(6,'768262828','A');
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
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 01:54:08','2023-08-17','2023-08-01','0802200101153',NULL,'12121212','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2789.6,NULL),(2,'2023-08-20 16:36:57','2023-08-13','2023-08-08','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2613.6,NULL),(3,'2023-10-14 06:52:35','2023-10-02','2023-11-02','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL,NULL),(4,'2023-10-14 17:09:41','2023-10-20','2023-10-04','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5579.2,NULL),(5,'2023-10-14 17:23:52','2023-10-25','2023-10-04','0802200101153',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2728,NULL),(6,'2023-10-14 20:08:38','2023-10-27','2023-10-05','0801199411205',NULL,'08012000011520','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904,NULL),(7,'2023-10-15 03:59:17','2023-10-19','2023-10-18','0801199411205',NULL,'080119990113621','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2904,NULL),(8,'2023-10-15 04:04:20','2023-10-13','2023-10-16','0801199411205',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',5456,NULL),(9,'2023-11-09 05:49:27','2023-11-07','2023-11-23','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1276000,NULL),(10,'2023-11-09 07:02:53','2023-11-01','2023-11-30','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2640,NULL),(11,'2023-11-10 16:45:05','2023-11-21','2023-11-22','0801199503698',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2195.6,NULL),(12,'2023-11-10 16:56:19','2023-11-01','2023-11-15','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2244,NULL),(13,'2023-11-10 17:03:24','2023-11-08','2023-11-21','0801199411202',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',2068,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,1,1,1,2,1,1170,1,1,3170,380.4,2789.6),(2,2,1,1,2,1,1170,2,1,2970,356.4,2613.6),(3,3,1,1,1,1,1300,1,1,3300,396,2904),(4,4,1,1,2,1,1170,1,2,6340,760.8,5579.2),(5,5,1,1,1,1,1300,2,1,3100,372,2728),(6,6,1,1,1,1,1300,1,1,3300,396,2904),(7,7,1,1,1,1,1300,1,1,3300,396,2904),(8,8,1,1,1,1,1300,2,2,6200,744,5456),(9,9,1,1,2,2,900,1,500,1450000,174000,1276000),(10,10,1,1,1,2,1000,1,1,3000,360,2640),(11,11,1,1,2,4,495,1,1,2495,299.4,2195.6),(12,12,1,1,1,4,550,1,1,2550,306,2244),(13,13,1,1,1,4,550,2,1,2350,282,2068);
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

-- Dump completed on 2023-12-01 13:54:29
