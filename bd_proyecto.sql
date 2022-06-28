# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: bd_proyecto
# ------------------------------------------------------
# Server version 5.5.5-10.4.24-MariaDB

DROP DATABASE IF EXISTS `bd_proyecto`;
CREATE DATABASE `bd_proyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd_proyecto`;

#
# Source for table clientes
#

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `telefono` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table clientes
#

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'David','Choque','Av. salamanca',77745874);
INSERT INTO `clientes` VALUES (3,'Carla','Rojas','Av. pucarani',77441247);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table compras
#

DROP TABLE IF EXISTS `compras`;
CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(50) NOT NULL,
  `preciocompra` int(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `fechareg` date NOT NULL,
  `proveedor` int(11) NOT NULL,
  `total` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor` (`proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table compras
#

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'velador',250,15,'2020-12-20',1,3750);
INSERT INTO `compras` VALUES (2,'Comoda',500,2,'2020-02-02',1,1000);
INSERT INTO `compras` VALUES (4,'Ropero',1200,3,'2020-05-05',2,3600);
INSERT INTO `compras` VALUES (5,'Estante',550,4,'2020-06-05',3,2200);
INSERT INTO `compras` VALUES (6,'Cabecera',500,2,'2022-02-02',2,1000);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table empleados
#

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `ci` int(15) NOT NULL,
  `fechanacim` date NOT NULL,
  `telefono` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table empleados
#

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Jose','Mamani',112854877,'1999-05-02',78888545);
INSERT INTO `empleados` VALUES (2,'Yosselin','Perez',103587469,'1997-02-07',63226587);
INSERT INTO `empleados` VALUES (3,'Juan','Apaza',112547895,'1998-05-01',77774124);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table productos
#

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numproducto` int(11) DEFAULT NULL,
  `precio` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `disponibilidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `numproducto` (`numproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table productos
#

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (3,1,250,'2020-03-01',5);
INSERT INTO `productos` VALUES (4,2,550,'2020-02-02',1);
INSERT INTO `productos` VALUES (5,4,1800,'2020-05-05',3);
INSERT INTO `productos` VALUES (6,5,650,'2020-06-05',4);
INSERT INTO `productos` VALUES (7,2,600,'2021-02-02',4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table proveedor
#

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `telefono` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table proveedor
#

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Jose','Fernandez','Calle abel iturralde','Taller Rios',78851426);
INSERT INTO `proveedor` VALUES (2,'Mario','Copa','Av. Buenos aires','Taller Montes',77425411);
INSERT INTO `proveedor` VALUES (3,'Carlos','Aduviri','Calle Sajama','Taller J&J',77742518);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `cargo` varchar(40) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table usuarios
#

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Eddy','Marca@gmail.com','Administrador de usuarios','eddy');
INSERT INTO `usuarios` VALUES (2,'Juan','Flores@gmail.com','Administrador','flores');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table ventas
#

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto` int(11) NOT NULL DEFAULT 0,
  `precventa` int(20) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `fechareg` date NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `empleado` int(11) DEFAULT NULL,
  `total` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`),
  KEY `empleado` (`empleado`),
  KEY `producto` (`producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Dumping data for table ventas
#

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,300,3,'2021-02-09',1,1,900);
INSERT INTO `ventas` VALUES (2,1,300,2,'2020-02-20',1,1,600);
INSERT INTO `ventas` VALUES (3,2,550,1,'2021-06-02',1,1,550);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table compras
#

ALTER TABLE `compras`
ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id`);

#
#  Foreign keys for table productos
#

ALTER TABLE `productos`
ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`numproducto`) REFERENCES `compras` (`id`);

#
#  Foreign keys for table ventas
#

ALTER TABLE `ventas`
ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`),
ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`id`),
ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `productos` (`numproducto`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
