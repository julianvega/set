# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.219.146 (MySQL 5.5.5-10.1.17-MariaDB-1~xenial)
# Base de datos: smt
# Tiempo de Generación: 2016-09-29 19:35:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla aduana
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aduana`;

CREATE TABLE `aduana` (
  `id_aduana` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla arancelNacional
# ------------------------------------------------------------

DROP TABLE IF EXISTS `arancelNacional`;

CREATE TABLE `arancelNacional` (
  `id_arancel_nac` bigint(20) unsigned DEFAULT NULL,
  `codigo_arancel` float NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `dia%` int(11) DEFAULT NULL,
  `itbms` int(11) DEFAULT NULL,
  `categoria` float DEFAULT NULL,
  KEY `arancelNacional_arancelNacionalCat_FK` (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla arancelNacionalCat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `arancelNacionalCat`;

CREATE TABLE `arancelNacionalCat` (
  `id_arancel_nacionalcat` bigint(20) unsigned DEFAULT NULL,
  `categoria` float NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla aseguradora
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aseguradora`;

CREATE TABLE `aseguradora` (
  `id_aseguradora` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla cliente
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id_cliente` bigint(20) unsigned DEFAULT NULL,
  `id_usuario` bigint(20) unsigned DEFAULT NULL,
  `id_transaccion` bigint(20) unsigned DEFAULT NULL,
  `compania` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `codpostal` varchar(100) DEFAULT NULL,
  `fecharegistro` date DEFAULT NULL,
  `suspension` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla corredorAduana
# ------------------------------------------------------------

DROP TABLE IF EXISTS `corredorAduana`;

CREATE TABLE `corredorAduana` (
  `id_corredor_aduana` bigint(20) unsigned DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `celular1` varchar(100) DEFAULT NULL,
  `celular2` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `provinciaEstado` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `direccion1` varchar(100) DEFAULT NULL,
  `direccion2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla cotizacion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cotizacion`;

CREATE TABLE `cotizacion` (
  `id_cotizacion` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla exportaciones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exportaciones`;

CREATE TABLE `exportaciones` (
  `id_exportaciones` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla icoterm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `icoterm`;

CREATE TABLE `icoterm` (
  `id_icoterm` bigint(20) unsigned DEFAULT NULL,
  `sigla` varchar(100) DEFAULT NULL,
  `descEN` varchar(100) DEFAULT NULL,
  `descES` varchar(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `tipoTransporte` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla importaciones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `importaciones`;

CREATE TABLE `importaciones` (
  `id_importaciones` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla proveedorContenedor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proveedorContenedor`;

CREATE TABLE `proveedorContenedor` (
  `id_provedor_contenedor` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla puerto
# ------------------------------------------------------------

DROP TABLE IF EXISTS `puerto`;

CREATE TABLE `puerto` (
  `id_puerto` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla recintoAduanero
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recintoAduanero`;

CREATE TABLE `recintoAduanero` (
  `id_recintoaduanero` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `zona` varchar(20) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `horario` varchar(40) DEFAULT NULL,
  `correo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_recintoaduanero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `recintoAduanero` WRITE;
/*!40000 ALTER TABLE `recintoAduanero` DISABLE KEYS */;

INSERT INTO `recintoAduanero` (`id_recintoaduanero`, `nombre`, `zona`, `ubicacion`, `telefono`, `horario`, `correo`)
VALUES
	(1,'Recinto de Paso Canoas','1','Distrito de Barú, Corregimeinto de Progreso. Forntera entre Panamá y Costa Rica','727-7984','8.30am -3:30pm y 7:00pm - 11:00pm',NULL),
	(2,'UNITEC Paso Canoas','1','Distrito de Bugaba',NULL,'6:30am - 10:30pm',NULL),
	(3,'DPFA Paso Canoas','1','Distrito de Barú','727-7985','Turno Rotativo',NULL),
	(4,'DPFA San Isidro','1','Distrito de Bugaba',NULL,'24 horas',NULL),
	(5,'Recinto Puerto Arnuelles','1','Distrito de Barú','770-7285','8:30am - 3:30pm',NULL),
	(6,'Recinto Puerto Pedregal','1','Ciudad de David, cerca del Aeropuerto Enrique Maleck','721-0041','8:30am-3:30pm',NULL),
	(7,'DPFA Aeropuerto Enrique Malek','1','David, Ave. Red Gray','721-1672','6:00am - 10:00pm',NULL),
	(8,'Aeropuerto Enrique Malek','1','David Ave,  Red Gray','721-1671','8:30am- 3:30pm',NULL);

/*!40000 ALTER TABLE `recintoAduanero` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla ruta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ruta`;

CREATE TABLE `ruta` (
  `id_ruta` bigint(20) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla seccion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `seccion`;

CREATE TABLE `seccion` (
  `id_seccion` bigint(20) unsigned DEFAULT NULL,
  `login` date DEFAULT NULL,
  `logout` date DEFAULT NULL,
  `id_usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla tasaCambio
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasaCambio`;

CREATE TABLE `tasaCambio` (
  `id_tasaCambio` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla transaccion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaccion`;

CREATE TABLE `transaccion` (
  `id_transaccion` bigint(20) unsigned DEFAULT NULL,
  `id_cliente` bigint(20) unsigned DEFAULT NULL,
  `codigo_arancel` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla trasporte
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trasporte`;

CREATE TABLE `trasporte` (
  `id_transporte` int(10) unsigned DEFAULT NULL,
  `tipoTransporte` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `oficinaCentral` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `direccion1` varchar(100) DEFAULT NULL,
  `direccion2` varchar(100) DEFAULT NULL,
  `telefono1` varchar(100) DEFAULT NULL,
  `telefono2` varchar(100) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `codigoPostal` varchar(100) DEFAULT NULL,
  `contactoAdministrativo1` varchar(100) DEFAULT NULL,
  `telefonoAdministrativo1` varchar(100) DEFAULT NULL,
  `contactoAdministrativo2` varchar(100) DEFAULT NULL,
  `telefonoAdministrativo2` varchar(100) DEFAULT NULL,
  `emailAdministrativo1` varchar(100) DEFAULT NULL,
  `emailAdministrativo2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla usuario
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(100) DEFAULT '',
  `nombre` varchar(100) DEFAULT '',
  `apellido` varchar(100) DEFAULT '',
  `contrasena` varchar(100) DEFAULT '',
  `niveldeacceso` int(11) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `oficina` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `codigopostal` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `direccion1` varchar(100) DEFAULT NULL,
  `direccion2` varchar(100) DEFAULT NULL,
  `fecharegistro` date DEFAULT NULL,
  `supension` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;

INSERT INTO `usuario` (`id_usuario`, `cedula`, `nombre`, `apellido`, `contrasena`, `niveldeacceso`, `usuario`, `telefono`, `celular`, `oficina`, `correo`, `codigopostal`, `pais`, `provincia`, `ciudad`, `direccion1`, `direccion2`, `fecharegistro`, `supension`)
VALUES
	(1,'4-746-2265','julian','vega','123',1,'julian','721-2742','65991218','no','julianvega@arpiasoftware.com','507','panama','chiriqui','david','barriada san jose','no','2016-09-23',0);

/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla zona_recintosAduaneros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zona_recintosAduaneros`;

CREATE TABLE `zona_recintosAduaneros` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_zona` int(11) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `Pais` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `zona_recintosAduaneros` WRITE;
/*!40000 ALTER TABLE `zona_recintosAduaneros` DISABLE KEYS */;

INSERT INTO `zona_recintosAduaneros` (`id`, `id_zona`, `nombre`, `Pais`)
VALUES
	(1,1,'Zona Occidental','Panamá'),
	(2,2,'Zona Nor Occidental','Panamá'),
	(3,3,'Zona Central Azuero','Panamá'),
	(4,4,'Zona Norte','Panamá'),
	(5,5,'Zona Especial Panamá Pacífico','Panamá'),
	(6,6,'Zona Aeroportuaria','Panamá'),
	(7,7,'Zona Oriental Panamá','Panamá');

/*!40000 ALTER TABLE `zona_recintosAduaneros` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
