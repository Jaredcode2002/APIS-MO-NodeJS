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
INSERT INTO `tbl_cliente` VALUES ('0801200025798','JAMES','HORAN',1,'0000-00-00','LAS TORRES','27889569','jamesH1d@gmail.com');
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
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 03:02:41',5000),(2,'2023-08-20 04:34:36',500);
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
INSERT INTO `tbl_compradetalle` VALUES (1,1,NULL,2,1,5000),(2,2,NULL,1,1,500);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.12,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999'),(2,'BETTY','MENDOSA ','87956423',2,2,'0801200036985');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-19 06:00:00','0801200025798',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,NULL,'','HARRY','LIAM','NINGUNO','','','','','','','','','','','','','2023-08-19','2024-08-19'),(2,1,'','HARRY','LIAM','NINGUNO','','','','','','','','','','','','','2023-08-19','2024-08-19');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
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
INSERT INTO `tbl_inventario` VALUES (1,1,3),(2,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',2),(2,1,1,1,'2023-08-20 06:00:00',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'LENTES DE SOL',100);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (3,'CONVERSE'),(1,'PRADA'),(2,'SILHOUETTE');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,3,'CONVERSE-215',2023),(2,2,'SIL-28',2021),(3,1,'PRADA784',2015);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:12:13',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(2,'2023-08-19 17:13:33',1,1,'Login','Inicio de sesión '),(3,'2023-08-19 17:13:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(4,'2023-08-19 17:13:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(5,'2023-08-19 17:13:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(6,'2023-08-19 17:13:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:13:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:14:22',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(9,'2023-08-19 17:14:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(10,'2023-08-19 19:09:35',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(11,'2023-08-19 19:10:12',NULL,9,'Salir','Se salio de Lista de Empleados'),(12,'2023-08-19 19:12:53',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(13,'2023-08-19 19:40:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 19:41:21',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(15,'2023-08-19 20:20:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(16,'2023-08-19 20:42:42',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 21:02:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(18,'2023-08-19 21:03:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(19,'2023-08-19 21:03:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(20,'2023-08-19 21:03:56',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(21,'2023-08-19 21:03:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(22,'2023-08-19 21:03:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(23,'2023-08-19 21:05:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(24,'2023-08-19 21:05:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(25,'2023-08-19 22:13:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(26,'2023-08-19 22:13:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(27,'2023-08-19 22:14:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(28,'2023-08-19 22:14:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 22:39:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(30,'2023-08-19 22:39:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(31,'2023-08-19 22:42:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(32,'2023-08-19 22:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(33,'2023-08-19 22:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(34,'2023-08-19 23:00:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(35,'2023-08-19 23:00:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(36,'2023-08-19 23:26:02',1,1,'Login','Inicio de sesión '),(37,'2023-08-19 23:26:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(38,'2023-08-19 23:26:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 23:27:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(40,'2023-08-19 23:27:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 23:27:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(42,'2023-08-19 23:27:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(43,'2023-08-19 23:27:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(44,'2023-08-19 23:47:45',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(45,'2023-08-19 23:47:52',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(46,'2023-08-20 00:01:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-20 00:01:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(48,'2023-08-20 00:05:04',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(49,'2023-08-20 00:40:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 10:39:37',1,1,'Login','Inicio de sesión '),(51,'2023-08-20 10:39:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(52,'2023-08-20 10:42:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(53,'2023-08-20 10:42:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 10:42:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(55,'2023-08-20 13:04:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(56,'2023-08-20 13:04:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(57,'2023-08-20 14:49:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 14:49:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(59,'2023-08-20 14:50:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(60,'2023-08-20 14:50:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(61,'2023-08-20 14:50:58',1,5,'Borrar Cita','El usuario eliminó una cita'),(62,'2023-08-20 17:21:58',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 17:22:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(64,'2023-08-20 17:22:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','1',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
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
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 10:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 11:01:31',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Admin','Admin','Activo','$2b$10$nLlI75bsmseVK52.4UM1cuXXEDLOrWtwrcLF7zUB7pZ51Cdc.rxXW',1,'2023-02-02',1,1,'2028-01-01','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
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
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1000,1,5,'CONVERSE-215'),(2,2,2000,3,10,'SIL-28');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-02','2023-08-31',1,0.12,'REGRESO ESCOLAR');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801200025798','Reservación de cita - ','2024-08-19');
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
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 04:07:46','2023-08-24','2023-08-30','0801200025798',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL),(2,'2023-08-20 18:11:03','2023-08-16','2023-08-23','0801200025798',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
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
INSERT INTO `tbl_cliente` VALUES ('0801200025798','JAMES','HORAN',1,'0000-00-00','LAS TORRES','27889569','jamesH1d@gmail.com');
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
INSERT INTO `tbl_compra` VALUES (1,'2023-08-20 03:02:41',5000),(2,'2023-08-20 04:34:36',500);
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
INSERT INTO `tbl_compradetalle` VALUES (1,1,NULL,2,1,5000),(2,2,NULL,1,1,500);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.12,0.15);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'Admin','Admin','11223344',1,1,'0801199999999'),(2,'BETTY','MENDOSA ','87956423',2,2,'0801200036985');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-19 06:00:00','0801200025798',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (1,NULL,'','HARRY','LIAM','NINGUNO','','','','','','','','','','','','','2023-08-19','2024-08-19'),(2,1,'','HARRY','LIAM','NINGUNO','','','','','','','','','','','','','2023-08-19','2024-08-19');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
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
INSERT INTO `tbl_inventario` VALUES (1,1,3),(2,2,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (1,1,1,1,'2023-08-20 06:00:00',2),(2,1,1,1,'2023-08-20 06:00:00',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'LENTES DE SOL',100);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (3,'CONVERSE'),(1,'PRADA'),(2,'SILHOUETTE');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,3,'CONVERSE-215',2023),(2,2,'SIL-28',2021),(3,1,'PRADA784',2015);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (1,'2023-08-19 17:12:13',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(2,'2023-08-19 17:13:33',1,1,'Login','Inicio de sesión '),(3,'2023-08-19 17:13:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(4,'2023-08-19 17:13:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(5,'2023-08-19 17:13:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(6,'2023-08-19 17:13:43',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(7,'2023-08-19 17:13:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(8,'2023-08-19 17:14:22',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(9,'2023-08-19 17:14:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(10,'2023-08-19 19:09:35',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(11,'2023-08-19 19:10:12',NULL,9,'Salir','Se salio de Lista de Empleados'),(12,'2023-08-19 19:12:53',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(13,'2023-08-19 19:40:34',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(14,'2023-08-19 19:41:21',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(15,'2023-08-19 20:20:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(16,'2023-08-19 20:42:42',1,1,'Login','Inicio de sesión '),(17,'2023-08-19 21:02:47',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(18,'2023-08-19 21:03:39',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(19,'2023-08-19 21:03:40',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(20,'2023-08-19 21:03:56',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(21,'2023-08-19 21:03:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(22,'2023-08-19 21:03:58',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(23,'2023-08-19 21:05:01',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(24,'2023-08-19 21:05:02',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(25,'2023-08-19 22:13:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(26,'2023-08-19 22:13:14',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(27,'2023-08-19 22:14:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(28,'2023-08-19 22:14:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(29,'2023-08-19 22:39:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(30,'2023-08-19 22:39:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(31,'2023-08-19 22:42:29',1,5,'Salir','El usuario salió de la pantalla de citas'),(32,'2023-08-19 22:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(33,'2023-08-19 22:42:30',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(34,'2023-08-19 23:00:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(35,'2023-08-19 23:00:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(36,'2023-08-19 23:26:02',1,1,'Login','Inicio de sesión '),(37,'2023-08-19 23:26:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(38,'2023-08-19 23:26:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(39,'2023-08-19 23:27:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(40,'2023-08-19 23:27:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(41,'2023-08-19 23:27:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(42,'2023-08-19 23:27:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(43,'2023-08-19 23:27:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(44,'2023-08-19 23:47:45',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(45,'2023-08-19 23:47:52',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(46,'2023-08-20 00:01:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(47,'2023-08-20 00:01:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(48,'2023-08-20 00:05:04',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(49,'2023-08-20 00:40:06',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(50,'2023-08-20 10:39:37',1,1,'Login','Inicio de sesión '),(51,'2023-08-20 10:39:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(52,'2023-08-20 10:42:13',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(53,'2023-08-20 10:42:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(54,'2023-08-20 10:42:14',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(55,'2023-08-20 13:04:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(56,'2023-08-20 13:04:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(57,'2023-08-20 14:49:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(58,'2023-08-20 14:49:38',1,5,'Salir','El usuario salió de la pantalla de citas'),(59,'2023-08-20 14:50:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(60,'2023-08-20 14:50:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(61,'2023-08-20 14:50:58',1,5,'Borrar Cita','El usuario eliminó una cita'),(62,'2023-08-20 17:21:58',1,1,'Login','Inicio de sesión '),(63,'2023-08-20 17:22:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(64,'2023-08-20 17:22:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$hVE52fPRYno.z3NM8nkOiuj35IMTCzu1Xin8rdcVoWxtE5ZWAvvoO','admin',NULL,NULL,NULL),(5,0,'$2b$10$dFwg/2RUL5uzE.NEn376ZuLJLamJy3iQ84Wr.dPlj5lvx9cbcRegG','KAREN',NULL,NULL,NULL),(6,0,'$2b$10$wvlXTu9O8xVRVE/VWYK/EOg1l/uLmgDujxLN5L4jUqzV45/w8o9A6','KAREN',NULL,NULL,NULL),(7,0,'$2b$10$NlrFPKvGMt6GBCDw4BPGMOaisIkaBcIHUCHpUwL.AWeICxg4GcwQS','KAREN',NULL,NULL,NULL),(8,3,'$2b$10$MIvtMB/FdiBTWi/Ec3wslOAPCo5IDTfl0ruvytF03KwamxUBLBjuS','LUIS',NULL,NULL,NULL),(9,4,'$2b$10$daJOYbtvFRgW4aQD/GQUrOE3LDKN/JxrT.dJfadQPUY0AwGrM7slW','PRUEBA',NULL,NULL,NULL),(10,3,'$2b$10$wAnWussNxQkRo10532u6A.TqulHaYwazwl2ZrECIThI9ZAs17rAyy','LUIS',NULL,NULL,NULL),(11,5,'$2b$10$A9EQrV0yluT90IPVtFCgYeuaxsD3n2ooMSZ1cHw0CeIce9Pyi3gUq','JOSE',NULL,NULL,NULL),(12,6,'$2b$10$HOabqjVkhTDNonj1sAZKeup8D/PZlj89NUjBMoCRvKV0vl6Uba9Bi','MARIA',NULL,NULL,NULL),(13,7,'$2b$10$yCI37o0vvD5KszhfVGDhPevLvSMkiwHvu1rWavHzUk/kRrgUHdcum','MICKY',NULL,NULL,NULL),(14,7,'$2b$10$q.GGNyXr0nbRd2/tjRiaxuNSlImUz63QeJXmMXQD/b0HOMt7qhSAO','MICKY',NULL,NULL,NULL),(15,8,'$2b$10$abQx/B2EA3mzyTghnUY1cefh53VJlmNrINDxtN8tVIvcfHrPJnB7G','RICARDO',NULL,NULL,NULL),(16,8,'$2b$10$I72YxHDgsv4fMi0oSr22P.sez.UcNYpKLGRjvFnVuUGUkDDTcZRii','RICARDO',NULL,NULL,NULL),(17,8,'$2b$10$5/Lbx4UM6jXjEuWYBBZWH.h6KQtSvLFZmwmFLpfwBWn6Gl4V8HnTm','RICARDO',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','1',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
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
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 10:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 11:01:31',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Admin','Admin','Activo','$2b$10$nLlI75bsmseVK52.4UM1cuXXEDLOrWtwrcLF7zUB7pZ51Cdc.rxXW',1,'2023-02-02',1,1,'2028-01-01','admin@gmail.com',1,'SISTEMA','2023-01-01','SISTEMA','2023-08-08');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
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
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,1000,1,5,'CONVERSE-215'),(2,2,2000,3,10,'SIL-28');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-08-02','2023-08-31',1,0.12,'REGRESO ESCOLAR');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (2,'0801200025798','Reservación de cita - ','2024-08-19');
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
  KEY `IdCiudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,8,18,'Centro a la esquina de Pizza Hut','99584100');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'Efectivo'),(3,'Tarjeta de credito'),(2,'Tarjeta de debito');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-20 04:07:46','2023-08-24','2023-08-30','0801200025798',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL),(2,'2023-08-20 18:11:03','2023-08-16','2023-08-23','0801200025798',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
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

-- Dump completed on 2023-08-20 17:22:09
