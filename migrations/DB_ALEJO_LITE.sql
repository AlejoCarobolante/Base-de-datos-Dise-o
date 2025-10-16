-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: coloquio_db
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Carrera`
--

DROP TABLE IF EXISTS `Carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Carrera` (
  `OIDCarrera` int NOT NULL AUTO_INCREMENT,
  `descripcionCarrera` text,
  `fechaBajaCarrera` date DEFAULT NULL,
  `nomCarrera` varchar(255) DEFAULT NULL,
  `codCarrera` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carrera`
--

/*!40000 ALTER TABLE `Carrera` DISABLE KEYS */;
INSERT INTO `Carrera` VALUES (1,'Carrera orientada a la formación de profesionales en el desarrollo y gestión de sistemas y tecnologías de la información.',NULL,'Ingeniería en Sistemas de Información','C1001'),(2,'Formación integral en medicina con énfasis en atención primaria de la salud y especialidades médicas.',NULL,'Medicina','C1002'),(3,'Carrera que forma profesionales en el diseño, construcción y mantenimiento de obras civiles e infraestructura.',NULL,'Ingeniería Civil','C1003'),(4,'Formación profesional para el ejercicio del derecho en todas sus ramas y especialidades jurídicas.','2025-03-12','Derecho','C1004'),(5,'Formación de ingenieros en gestión de procesos productivos, optimización de recursos y mejora continua.',NULL,'Ingenieria industrial','C1005');
/*!40000 ALTER TABLE `Carrera` ENABLE KEYS */;

--
-- Table structure for table `CarreraPlanEstudios`
--

DROP TABLE IF EXISTS `CarreraPlanEstudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CarreraPlanEstudios` (
  `OIDCarreraPlanEstudio` int NOT NULL AUTO_INCREMENT,
  `OIDCarreraUniversidad` int DEFAULT NULL,
  `codPlanExterno` varchar(100) DEFAULT NULL,
  `fechaBajaPlanEstudio` date DEFAULT NULL,
  `fechaFinPlanEstudios` date DEFAULT NULL,
  `fechaInicioPlanEstudios` date DEFAULT NULL,
  `nombrePlanEstudios` varchar(255) DEFAULT NULL,
  `codPlanEstudios` varchar(50) DEFAULT NULL,
  `descripcionPlanEstudios` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDCarreraPlanEstudio`),
  KEY `fk_plan_carrera_uni` (`OIDCarreraUniversidad`),
  CONSTRAINT `fk_plan_carrera_uni` FOREIGN KEY (`OIDCarreraUniversidad`) REFERENCES `CarreraUniversidad` (`OIDCarreraUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CarreraPlanEstudios`
--

/*!40000 ALTER TABLE `CarreraPlanEstudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `CarreraPlanEstudios` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_planestudio` BEFORE UPDATE ON `CarreraPlanEstudios` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaPlanEstudio = NEW.fechaBajaPlanEstudio THEN

        SET v_msg = 'No se puede volver a dar de baja el Plan de Estudio';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `CarreraUniversidad`
--

DROP TABLE IF EXISTS `CarreraUniversidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CarreraUniversidad` (
  `OIDCarreraUniversidad` int NOT NULL AUTO_INCREMENT,
  `OIDCarrera` int DEFAULT NULL,
  `OIDUniversidad` int DEFAULT NULL,
  `codCarreraExterno` varchar(100) DEFAULT NULL,
  `fechaInicioAsignacionCU` date DEFAULT NULL,
  `fechaFinAsignacionCU` date DEFAULT NULL,
  `codCarreraUniversidad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OIDCarreraUniversidad`),
  UNIQUE KEY `uq_carrera_universidad` (`OIDCarrera`,`OIDUniversidad`),
  KEY `fk_carrera_uni_uni` (`OIDUniversidad`),
  CONSTRAINT `fk_carrera_uni_carrera` FOREIGN KEY (`OIDCarrera`) REFERENCES `Carrera` (`OIDCarrera`),
  CONSTRAINT `fk_carrera_uni_uni` FOREIGN KEY (`OIDUniversidad`) REFERENCES `Universidad` (`OIDUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CarreraUniversidad`
--

/*!40000 ALTER TABLE `CarreraUniversidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `CarreraUniversidad` ENABLE KEYS */;

--
-- Table structure for table `Contrato`
--

DROP TABLE IF EXISTS `Contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contrato` (
  `OIDContrato` int NOT NULL AUTO_INCREMENT,
  `OIDEstadoContrato` int DEFAULT NULL,
  `OIDProcesoSeleccionPostulacion` int DEFAULT NULL,
  `OIDPostulacion` int DEFAULT NULL,
  `OIDProyecto` int DEFAULT NULL,
  `fechaFinContrato` date DEFAULT NULL,
  `fechaInicioContrato` date DEFAULT NULL,
  `fechaEmisionContrato` date DEFAULT NULL,
  `numeroContrato` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OIDContrato`),
  KEY `fk_contrato_estado` (`OIDEstadoContrato`),
  KEY `fk_contrato_proyecto` (`OIDProyecto`),
  KEY `fk_contrato_postu` (`OIDPostulacion`),
  KEY `fk_contrato_pspostu` (`OIDProcesoSeleccionPostulacion`),
  CONSTRAINT `fk_contrato_estado` FOREIGN KEY (`OIDEstadoContrato`) REFERENCES `EstadoContrato` (`OIDEstadoContrato`),
  CONSTRAINT `fk_contrato_postu` FOREIGN KEY (`OIDPostulacion`) REFERENCES `Postulacion` (`OIDPostulacion`),
  CONSTRAINT `fk_contrato_proyecto` FOREIGN KEY (`OIDProyecto`) REFERENCES `Proyecto` (`OIDProyecto`),
  CONSTRAINT `fk_contrato_pspostu` FOREIGN KEY (`OIDProcesoSeleccionPostulacion`) REFERENCES `ProcesoSeleccionPostulacion` (`OIDProcesoSeleccionPostulacion`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrato`
--

/*!40000 ALTER TABLE `Contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contrato` ENABLE KEYS */;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `OIDEmpresa` int NOT NULL AUTO_INCREMENT,
  `codigoPostalEmpresa` varchar(50) DEFAULT NULL,
  `direccionEmpresa` varchar(255) DEFAULT NULL,
  `fechaBajaEmpresa` date DEFAULT NULL,
  `nombreEmpresa` varchar(255) DEFAULT NULL,
  `nroTelefonoEmpresa` varchar(50) DEFAULT NULL,
  `cuitEmpresa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'C1063ACU','Av. Paseo Colón 850, CABA',NULL,'ElectroIndustria del Plata SRL','1143726600','30712345674'),(2,'B1900TCO','Av. 13 Nº 520, La Plata, Buenos Aires',NULL,'Innova Salud S.A.','1143782211','30658392147'),(3,'X5000XXX','Av. Colón 350, Córdoba','2022-02-24','Innovación Córdoba SRL','3514897200','30894562370');
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_empresa` BEFORE UPDATE ON `Empresa` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEmpresa = NEW.fechaBajaEmpresa THEN

        SET v_msg = 'No se puede volver a dar de baja la Empresa';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstadoContrato`
--

DROP TABLE IF EXISTS `EstadoContrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoContrato` (
  `OIDEstadoContrato` int NOT NULL AUTO_INCREMENT,
  `fechaBajaEstadoContrato` date DEFAULT NULL,
  `nombreEstadoContrato` varchar(150) DEFAULT NULL,
  `codEstadoContrato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEstadoContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoContrato`
--

/*!40000 ALTER TABLE `EstadoContrato` DISABLE KEYS */;
INSERT INTO `EstadoContrato` VALUES (1,NULL,'Emitido','ESTCON001'),(2,NULL,'Confirmado','ESTCON002'),(3,NULL,'No confirmado','ESTCON003'),(4,'2023-11-12','No contratado','ESTCON004');
/*!40000 ALTER TABLE `EstadoContrato` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estadocontrato` BEFORE UPDATE ON `EstadoContrato` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstadoContrato = NEW.fechaBajaEstadoContrato THEN

        SET v_msg = 'No se puede volver a dar de baja el Estado de Contrato';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstadoEstudianteCarrera`
--

DROP TABLE IF EXISTS `EstadoEstudianteCarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoEstudianteCarrera` (
  `OIDEstadoEstudianteCarrera` int NOT NULL AUTO_INCREMENT,
  `fechaBajaEstadoEstudianteCarrera` date DEFAULT NULL,
  `nombreEstadoEstCarrera` varchar(150) DEFAULT NULL,
  `codEstadoEstCarrera` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEstadoEstudianteCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoEstudianteCarrera`
--

/*!40000 ALTER TABLE `EstadoEstudianteCarrera` DISABLE KEYS */;
INSERT INTO `EstadoEstudianteCarrera` VALUES (1,NULL,'Inscripto','EEC001'),(2,NULL,'Regular','EEC002'),(3,NULL,'No Regular','EEC003'),(4,NULL,'Abandonado','EEC004'),(5,'2024-05-12','Suspendido','EEC005');
/*!40000 ALTER TABLE `EstadoEstudianteCarrera` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estadoestudiantecarrera` BEFORE UPDATE ON `EstadoEstudianteCarrera` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstadoEstudianteCarrera = NEW.fechaBajaEstadoEstudianteCarrera THEN

        SET v_msg = 'No se puede volver a dar de baja el Estado de Estudiante en Carrera';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstadoPostulacion`
--

DROP TABLE IF EXISTS `EstadoPostulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoPostulacion` (
  `OIDEstadoPostulacion` int NOT NULL AUTO_INCREMENT,
  `fechaBajaEstadoPostulacion` date DEFAULT NULL,
  `nombreEstadoPostulacion` varchar(150) DEFAULT NULL,
  `codEstadoPostulacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEstadoPostulacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoPostulacion`
--

/*!40000 ALTER TABLE `EstadoPostulacion` DISABLE KEYS */;
INSERT INTO `EstadoPostulacion` VALUES (1,NULL,'Registrada ','ESTPO001'),(2,NULL,'En evaluacion','ESTPO002'),(3,NULL,'Confirmado','ESTPO003'),(4,NULL,'Rechazado','ESTPO004'),(5,'2024-10-10','Revisando','ESTPO005');
/*!40000 ALTER TABLE `EstadoPostulacion` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estadopostulacion` BEFORE UPDATE ON `EstadoPostulacion` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstadoPostulacion = NEW.fechaBajaEstadoPostulacion THEN

        SET v_msg = 'No se puede volver a dar de baja el Estado de Postulación';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstadoProcesoSeleccion`
--

DROP TABLE IF EXISTS `EstadoProcesoSeleccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoProcesoSeleccion` (
  `OIDEstadoProcesoSeleccion` int NOT NULL AUTO_INCREMENT,
  `fechaBajaEstadoProcesoSeleccion` date DEFAULT NULL,
  `nombreEstadoProcesoSeleccion` varchar(150) DEFAULT NULL,
  `codEstadoProcesoSeleccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEstadoProcesoSeleccion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoProcesoSeleccion`
--

/*!40000 ALTER TABLE `EstadoProcesoSeleccion` DISABLE KEYS */;
INSERT INTO `EstadoProcesoSeleccion` VALUES (1,NULL,'Simulado antes Finalizar Postulaciones','ESTPS001'),(2,NULL,'Simulado despues Finalizar Postulaciones','ESTPS002'),(3,NULL,'Anulado','ESTPS003'),(4,NULL,'Definitivo','ESTPS004'),(5,'2025-01-18','Cupo Analizado','ESTPS005');
/*!40000 ALTER TABLE `EstadoProcesoSeleccion` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estadoprocesoseleccion` BEFORE UPDATE ON `EstadoProcesoSeleccion` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstadoProcesoSeleccion = NEW.fechaBajaEstadoProcesoSeleccion THEN

        SET v_msg = 'No se puede volver a dar de baja el Estado de Proceso de Selección';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstadoProyecto`
--

DROP TABLE IF EXISTS `EstadoProyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstadoProyecto` (
  `OIDEstadoProyecto` int NOT NULL AUTO_INCREMENT,
  `fechaBajaEstadoProyecto` date DEFAULT NULL,
  `nombreEstadoProyecto` varchar(150) DEFAULT NULL,
  `codEstadoProyecto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDEstadoProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoProyecto`
--

/*!40000 ALTER TABLE `EstadoProyecto` DISABLE KEYS */;
INSERT INTO `EstadoProyecto` VALUES (1,NULL,'Creado','ESTPR001'),(2,NULL,'Iniciado','ESTPR002'),(3,NULL,'En evaluacion','ESTPR003'),(4,NULL,'Suspendido','ESTPR004'),(5,NULL,'Cancelado','ESTPR005'),(6,NULL,'Finalizado','ESTPR006'),(7,'2023-06-15','En Proceso','ESTPR007');
/*!40000 ALTER TABLE `EstadoProyecto` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estadoproyecto` BEFORE UPDATE ON `EstadoProyecto` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstadoProyecto = NEW.fechaBajaEstadoProyecto THEN

        SET v_msg = 'No se puede volver a dar de baja el Estado de Proyecto';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Estudiante`
--

DROP TABLE IF EXISTS `Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estudiante` (
  `OIDEstudiante` int NOT NULL AUTO_INCREMENT,
  `apellidoEstudiante` varchar(150) DEFAULT NULL,
  `correoEstudiante` varchar(150) DEFAULT NULL,
  `dniEstudiante` varchar(50) DEFAULT NULL,
  `fechaBajaEstudiante` date DEFAULT NULL,
  `fechaNacimientoEstudiante` date DEFAULT NULL,
  `nombreEstudiante` varchar(150) DEFAULT NULL,
  `tipoDNI` varchar(50) DEFAULT NULL,
  `cuilEstudiante` varchar(50) DEFAULT NULL,
  `telefonoEstudiante` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OIDEstudiante`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estudiante`
--

/*!40000 ALTER TABLE `Estudiante` DISABLE KEYS */;
INSERT INTO `Estudiante` VALUES (1,'West','kanye.west@gmail.com','42670487',NULL,'2000-05-14','Kanye','DNI','20-42670487-1','0261-4291100'),(2,'Mustaine','dave_mustaine@gmail.com','41026225',NULL,'1999-11-23','Dave','DNI','27-41026225-3','0261-4329988'),(3,'Martínez','santiagomartinez@hotmail.com','42256787',NULL,'2001-03-10','Santiago','DNI','23-42256787-9','0261-4452211'),(4,'Rodríguez','valentinarodriguez@gmail.com','43146316','2024-06-17','2002-07-02','Valentina','DNI','20-43146316-5','0261-4789933'),(5,'López','mateolopez@gmail.com','40709570',NULL,'1998-01-29','Mateo','DNI','20-40709570-8','0261-4215566'),(6,'Cohen','moshe_cohen@gmail.com','44619176',NULL,'2003-09-12','Moshé','DNI','23-44619176-4','0261-4307722'),(7,'García','nicolasgarcia@gmail.com','42033326',NULL,'2001-04-05','Nicolás','DNI','23-42033326-9','0261-4473344'),(8,'Sánchez','martinasanchez@gmail.com','42098246',NULL,'2000-12-21','Martina','DNI','20-42098246-2','0261-4785663'),(9,'Romero','agustinromero@gmail.com','41243962',NULL,'1999-02-18','Agustín','DNI','20-41243962-8','0261-4669922'),(10,'Carobolante','carobolante.alejo@gmail.com','43588508',NULL,'2002-06-27','Alejo','DNI','20-43588508-0','0261-4301188'),(11,'Torres','juliantorres@gmail.com','42750800','2025-06-15','2000-08-15','Julián','DNI','27-42750800-0','0261-4234455'),(12,'Flores','anaflores@hotmail.com','42231148',NULL,'2001-01-10','Ana','DNI','27-42231148-9','0261-4392211'),(13,'Morales','tomasmorales@gmail.com','41617889',NULL,'1999-09-30','Tomás','DNI','27-41617889-0','0261-4467788'),(14,'Castro','carlacastro@yahoo.com','44848749',NULL,'2003-03-25','Carla','DNI','20-44848749-1','0261-4823344'),(15,'Ansuini','ansuinito.juanpablito@gmail.com','95440315',NULL,'2000-04-07','Juan Pablo','DNI','23-95440315-9','0261-6016172');
/*!40000 ALTER TABLE `Estudiante` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_estudiante` BEFORE UPDATE ON `Estudiante` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaEstudiante = NEW.fechaBajaEstudiante THEN

        SET v_msg = 'No se puede volver a dar de baja el Estudiante';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `EstudianteCarrera`
--

DROP TABLE IF EXISTS `EstudianteCarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstudianteCarrera` (
  `OIDEstudianteCarrera` int NOT NULL AUTO_INCREMENT,
  `OIDCarreraPlanEstudios` int DEFAULT NULL,
  `OIDEstadoEstudianteCarrera` int DEFAULT NULL,
  `OIDCarreraUniversidad` int DEFAULT NULL,
  `OIDEstudiante` int DEFAULT NULL,
  `OIDEstudianteUniversidad` int DEFAULT NULL,
  `fechaInicioCarrera` date DEFAULT NULL,
  `fechaFinCarrera` date DEFAULT NULL,
  `nroLegajo` varchar(100) DEFAULT NULL,
  `OIDCarrera` int DEFAULT NULL,
  PRIMARY KEY (`OIDEstudianteCarrera`),
  UNIQUE KEY `uq_estudiante_carrera` (`OIDEstudiante`,`OIDCarrera`,`OIDCarreraPlanEstudios`,`OIDEstudianteUniversidad`,`OIDCarreraUniversidad`),
  KEY `fk_est_carrera_plan` (`OIDCarreraPlanEstudios`),
  KEY `fk_est_carrera_estado` (`OIDEstadoEstudianteCarrera`),
  KEY `fk_est_carrera_uni` (`OIDCarreraUniversidad`),
  KEY `fk_est_carrera_estuni` (`OIDEstudianteUniversidad`),
  CONSTRAINT `fk_est_carrera_est` FOREIGN KEY (`OIDEstudiante`) REFERENCES `Estudiante` (`OIDEstudiante`),
  CONSTRAINT `fk_est_carrera_estado` FOREIGN KEY (`OIDEstadoEstudianteCarrera`) REFERENCES `EstadoEstudianteCarrera` (`OIDEstadoEstudianteCarrera`),
  CONSTRAINT `fk_est_carrera_estuni` FOREIGN KEY (`OIDEstudianteUniversidad`) REFERENCES `EstudianteUniversidad` (`OIDEstudianteUniversidad`),
  CONSTRAINT `fk_est_carrera_plan` FOREIGN KEY (`OIDCarreraPlanEstudios`) REFERENCES `CarreraPlanEstudios` (`OIDCarreraPlanEstudio`),
  CONSTRAINT `fk_est_carrera_uni` FOREIGN KEY (`OIDCarreraUniversidad`) REFERENCES `CarreraUniversidad` (`OIDCarreraUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstudianteCarrera`
--

/*!40000 ALTER TABLE `EstudianteCarrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `EstudianteCarrera` ENABLE KEYS */;

--
-- Table structure for table `EstudianteUniversidad`
--

DROP TABLE IF EXISTS `EstudianteUniversidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EstudianteUniversidad` (
  `OIDEstudianteUniversidad` int NOT NULL AUTO_INCREMENT,
  `OIDEstudiante` int DEFAULT NULL,
  `OIDUniversidad` int DEFAULT NULL,
  `correoInstitucional` varchar(150) DEFAULT NULL,
  `fechaAsignacionEU` date DEFAULT NULL,
  `fechaFinAsignacionEU` date DEFAULT NULL,
  `fechaInicioUni` date DEFAULT NULL,
  `fechaFinUni` date DEFAULT NULL,
  PRIMARY KEY (`OIDEstudianteUniversidad`),
  UNIQUE KEY `uq_estudiante_universidad` (`OIDEstudiante`,`OIDUniversidad`),
  KEY `fk_est_uni_uni` (`OIDUniversidad`),
  CONSTRAINT `fk_est_uni_est` FOREIGN KEY (`OIDEstudiante`) REFERENCES `Estudiante` (`OIDEstudiante`),
  CONSTRAINT `fk_est_uni_uni` FOREIGN KEY (`OIDUniversidad`) REFERENCES `Universidad` (`OIDUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstudianteUniversidad`
--

/*!40000 ALTER TABLE `EstudianteUniversidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `EstudianteUniversidad` ENABLE KEYS */;

--
-- Table structure for table `Postulacion`
--

DROP TABLE IF EXISTS `Postulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Postulacion` (
  `OIDPostulacion` int NOT NULL AUTO_INCREMENT,
  `OIDProyecto` int DEFAULT NULL,
  `OIDProyectoPuesto` int DEFAULT NULL,
  `cantMateriasAprobadas` int DEFAULT NULL,
  `cantMateriasRegulares` int DEFAULT NULL,
  `fechaHoraPostulacion` datetime DEFAULT NULL,
  `numeroPostulacion` varchar(100) DEFAULT NULL,
  `OIDEstudianteCarrera` int DEFAULT NULL,
  PRIMARY KEY (`OIDPostulacion`),
  KEY `fk_postu_proyecto` (`OIDProyecto`),
  KEY `fk_postu_proy_puesto` (`OIDProyectoPuesto`),
  KEY `fk_postulacion_estudiantecarrera` (`OIDEstudianteCarrera`),
  CONSTRAINT `fk_postu_proy_puesto` FOREIGN KEY (`OIDProyectoPuesto`) REFERENCES `ProyectoPuesto` (`OIDProyectoPuesto`),
  CONSTRAINT `fk_postu_proyecto` FOREIGN KEY (`OIDProyecto`) REFERENCES `Proyecto` (`OIDProyecto`),
  CONSTRAINT `fk_postulacion_estudiantecarrera` FOREIGN KEY (`OIDEstudianteCarrera`) REFERENCES `EstudianteCarrera` (`OIDEstudianteCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Postulacion`
--

/*!40000 ALTER TABLE `Postulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Postulacion` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_ValidarEstadoProyectoParaPostulacion` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
  DECLARE v_estado INT;

  SELECT pr.OIDEstadoProyecto
    INTO v_estado
  FROM Proyecto pr
  WHERE pr.OIDProyecto = NEW.OIDProyecto
  LIMIT 1;

  IF v_estado IS NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No se ha podido encontrar el Proyecto ingresado. Intente nuevamente.';
  END IF;

  IF v_estado <> 2 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No ha sido posible crear la instancia de Postulacion. El Proyecto seleccionado no está en estado "Iniciado".';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_pp_activo_para_postulacion` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
  DECLARE v_fecha_baja DATE;

  SELECT pp.fechaBajaProyectoPuesto
    INTO v_fecha_baja
  FROM ProyectoPuesto pp
  WHERE pp.OIDProyectoPuesto = NEW.OIDProyectoPuesto
  LIMIT 1;

  IF v_fecha_baja IS NOT NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No ha sido posible crear la instancia de Postulacion. El ProyectoPuesto seleccionado se encuentra dado de baja.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_pp_limite_postulaciones` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE v_max_postulaciones INT;
    DECLARE v_postulaciones_actuales INT;

    -- 1. Traer el límite definido para el ProyectoPuesto
    SELECT cantidadSuPostulaciones
      INTO v_max_postulaciones
    FROM ProyectoPuesto
    WHERE OIDProyectoPuesto = NEW.OIDProyectoPuesto
    LIMIT 1;

    -- 2. Contar cuántas postulaciones ya tiene ese ProyectoPuesto
    SELECT COUNT(*)
      INTO v_postulaciones_actuales
    FROM Postulacion
    WHERE OIDProyectoPuesto = NEW.OIDProyectoPuesto;

    -- 3. Validar si ya alcanzó el máximo
    IF v_postulaciones_actuales >= v_max_postulaciones THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No ha sido posible crear la Postulacion. El ProyectoPuesto ya alcanzó la cantidad máxima de postulaciones permitidas.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_estudiante_carrera_habilitada` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE v_oidCarrera INT;
    DECLARE v_oidEstudiante INT;

    -- 1️⃣ Verificar que el OIDEstudianteCarrera exista
    IF NOT EXISTS (
        SELECT 1
        FROM EstudianteCarrera
        WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: el OIDEstudianteCarrera especificado no existe.';
    END IF;

    -- 2️⃣ Obtener carrera y estudiante a partir del OIDEstudianteCarrera
    SELECT OIDCarrera, OIDEstudiante
    INTO v_oidCarrera, v_oidEstudiante
    FROM EstudianteCarrera
    WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera;

    -- 3️⃣ Validar que la carrera del estudiante esté habilitada para el puesto
    IF NOT EXISTS (
        SELECT 1
        FROM ProyectoPuestoCarrera ppc
        WHERE ppc.OIDProyectoPuesto = NEW.OIDProyectoPuesto
          AND ppc.OIDCarrera = v_oidCarrera
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No ha sido posible crear la instancia de Postulación. El estudiante no cuenta con una carrera habilitada para el puesto.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_validar_postulacion_cant_materias` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE v_cantAprobReq INT;
    DECLARE v_cantRegReq INT;
    DECLARE v_oidCarrera INT;

    -- 1️⃣ Obtener la carrera asociada al OIDEstudianteCarrera
    SELECT OIDCarrera
    INTO v_oidCarrera
    FROM EstudianteCarrera
    WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera;

    -- 2️⃣ Traer los requisitos según el puesto y la carrera
    SELECT ppc.cantMateriasAprobadasReq,
           ppc.cantMateriasRegularesReq
    INTO v_cantAprobReq, v_cantRegReq
    FROM ProyectoPuestoCarrera ppc
    WHERE ppc.OIDProyectoPuesto = NEW.OIDProyectoPuesto
      AND ppc.OIDCarrera = v_oidCarrera;

    -- 3️⃣ Validar materias aprobadas
    IF NEW.cantMateriasAprobadas < v_cantAprobReq THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El estudiante no cumple con la cantidad mínima de materias aprobadas requeridas';
    END IF;

    -- 4️⃣ Validar materias regulares
    IF NEW.cantMateriasRegulares < v_cantRegReq THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El estudiante no cumple con la cantidad mínima de materias regulares requeridas';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_proyecto_pertenece_uni_est` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE v_oidEstudiante INT;

    -- 1️⃣ Obtener el estudiante a partir del OIDEstudianteCarrera
    SELECT OIDEstudiante
    INTO v_oidEstudiante
    FROM EstudianteCarrera
    WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera;

    -- 2️⃣ Validar que el proyecto pertenezca a la universidad del estudiante
    IF NOT EXISTS (
        SELECT 1
        FROM EstudianteUniversidad eu
        JOIN ProyectoUniversidad pu ON pu.OIDUniversidad = eu.OIDUniversidad
        WHERE eu.OIDEstudiante = v_oidEstudiante
          AND pu.OIDProyecto   = NEW.OIDProyecto
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No ha sido posible crear la instancia de Postulación. El Proyecto no pertenece a la Universidad del Estudiante.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `validar_postulacion` BEFORE INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE postulacion_existente INT;
    DECLARE v_oidEstudiante INT;

    -- 1️⃣ Verificar que el OIDEstudianteCarrera exista
    IF NOT EXISTS (
        SELECT 1
        FROM EstudianteCarrera
        WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: el OIDEstudianteCarrera especificado no existe.';
    END IF;

    -- 2️⃣ Obtener el estudiante a partir del OIDEstudianteCarrera
    SELECT OIDEstudiante
    INTO v_oidEstudiante
    FROM EstudianteCarrera
    WHERE OIDEstudianteCarrera = NEW.OIDEstudianteCarrera;

    -- 3️⃣ Verificar si ya existe una postulación para el mismo estudiante en el mismo proyecto
    SELECT COUNT(*)
    INTO postulacion_existente
    FROM Postulacion p
    JOIN EstudianteCarrera ec ON ec.OIDEstudianteCarrera = p.OIDEstudianteCarrera
    WHERE p.OIDProyecto = NEW.OIDProyecto
      AND ec.OIDEstudiante = v_oidEstudiante;

    -- 4️⃣ Si ya tiene una postulación, bloquear el INSERT
    IF postulacion_existente > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El estudiante ya tiene una postulación en este proyecto.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_aviso_proyecto_completo` AFTER INSERT ON `Postulacion` FOR EACH ROW BEGIN
    DECLARE v_oid_proyecto INT;
    DECLARE v_total_puestos INT;
    DECLARE v_puestos_completos INT;

    -- Obtener el proyecto asociado al puesto donde se insertó la postulación
    SELECT OIDProyecto
      INTO v_oid_proyecto
    FROM ProyectoPuesto
    WHERE OIDProyectoPuesto = NEW.OIDProyectoPuesto
    LIMIT 1;

    -- Contar cuántos puestos tiene el proyecto
    SELECT COUNT(*) 
      INTO v_total_puestos
    FROM ProyectoPuesto
    WHERE OIDProyecto = v_oid_proyecto;

    -- Contar cuántos puestos ya están completos
    SELECT COUNT(*) 
      INTO v_puestos_completos
    FROM ProyectoPuesto pp
    WHERE pp.OIDProyecto = v_oid_proyecto
      AND (
        SELECT COUNT(*) 
        FROM Postulacion po 
        WHERE po.OIDProyectoPuesto = pp.OIDProyectoPuesto
      ) >= pp.cantidadSuPostulaciones;

    -- Avisar solo si justo ahora se completó TODO
    IF v_total_puestos = v_puestos_completos THEN
        SIGNAL SQLSTATE '01000'
            SET MESSAGE_TEXT = '✅ Todos los puestos del proyecto alcanzaron su cantidad máxima de postulaciones.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PostulacionEstado`
--

DROP TABLE IF EXISTS `PostulacionEstado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PostulacionEstado` (
  `OIDPostulacionEstado` int NOT NULL AUTO_INCREMENT,
  `OIDPostulacion` int DEFAULT NULL,
  `OIDEstadoPostulacion` int DEFAULT NULL,
  `fechaCambioEstado` date DEFAULT NULL,
  `fechaFinPostulacionEstado` date DEFAULT NULL,
  `fechaInicioPostulacionEstado` date DEFAULT NULL,
  PRIMARY KEY (`OIDPostulacionEstado`),
  KEY `fk_postu_estado_postu` (`OIDPostulacion`),
  KEY `fk_postu_estado_estado` (`OIDEstadoPostulacion`),
  CONSTRAINT `fk_postu_estado_estado` FOREIGN KEY (`OIDEstadoPostulacion`) REFERENCES `EstadoPostulacion` (`OIDEstadoPostulacion`),
  CONSTRAINT `fk_postu_estado_postu` FOREIGN KEY (`OIDPostulacion`) REFERENCES `Postulacion` (`OIDPostulacion`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PostulacionEstado`
--

/*!40000 ALTER TABLE `PostulacionEstado` DISABLE KEYS */;
/*!40000 ALTER TABLE `PostulacionEstado` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_estado_postulacion` BEFORE INSERT ON `PostulacionEstado` FOR EACH ROW exit_trigger: BEGIN
    DECLARE v_msg VARCHAR(255);
    DECLARE v_old_oid INT;
    DECLARE v_old_nombre VARCHAR(50);
    DECLARE v_new_nombre VARCHAR(50);

    -- Inicializar variables
    SET v_old_oid = NULL;
    SET v_old_nombre = '';
    SET v_new_nombre = '';

    -- Obtener el último estado de la postulacion
    SELECT OIDEstadoPostulacion INTO v_old_oid
    FROM PostulacionEstado
    WHERE OIDPostulacion = NEW.OIDPostulacion
    ORDER BY fechaCambioEstado DESC
    LIMIT 1;

    -- Buscar nombres de estados
    IF v_old_oid IS NOT NULL THEN
        SELECT nombreEstadoPostulacion INTO v_old_nombre
        FROM EstadoPostulacion
        WHERE OIDEstadoPostulacion = v_old_oid;
    END IF;

    SELECT nombreEstadoPostulacion INTO v_new_nombre
    FROM EstadoPostulacion
    WHERE OIDEstadoPostulacion = NEW.OIDEstadoPostulacion;

    -- Permitir siempre el estado inicial (1)
    IF NEW.OIDEstadoPostulacion = 1 THEN
        LEAVE exit_trigger;
    END IF;

    -- Bloquear transiciones al mismo estado
    IF v_old_oid IS NOT NULL AND v_old_oid = NEW.OIDEstadoPostulacion THEN
        SET v_msg = CONCAT('No se puede cambiar al mismo estado: ', v_old_nombre, ' -> ', v_new_nombre);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Validar transiciones permitidas (1→2, 2→3, 2→4)
    IF v_old_oid IS NOT NULL AND NOT (
        (v_old_oid = 1 AND NEW.OIDEstadoPostulacion = 2) OR
        (v_old_oid = 2 AND NEW.OIDEstadoPostulacion IN (3, 4))
    ) THEN
        SET v_msg = CONCAT('Transición no permitida: ', v_old_nombre, ' -> ', v_new_nombre);
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Bloquear si el estado anterior era final (3 o 4)
    IF v_old_oid IN (3, 4) THEN
        SET v_msg = CONCAT('El estado "', v_old_nombre, '" es final. No se permiten más cambios.');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProcesoSeleccion`
--

DROP TABLE IF EXISTS `ProcesoSeleccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProcesoSeleccion` (
  `OIDProcesoSeleccion` int NOT NULL AUTO_INCREMENT,
  `OIDProyecto` int DEFAULT NULL,
  `fechaProceso` date DEFAULT NULL,
  `numeroProceso` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OIDProcesoSeleccion`),
  UNIQUE KEY `uq_proyecto_numero` (`OIDProyecto`,`numeroProceso`),
  KEY `fk_procsel_proyecto` (`OIDProyecto`),
  CONSTRAINT `fk_procsel_proyecto` FOREIGN KEY (`OIDProyecto`) REFERENCES `Proyecto` (`OIDProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccion`
--

/*!40000 ALTER TABLE `ProcesoSeleccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProcesoSeleccion` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_asignar_numero_proceso` BEFORE INSERT ON `ProcesoSeleccion` FOR EACH ROW BEGIN
    DECLARE v_max_numero INT DEFAULT 0;

    -- Buscar el número de proceso más alto del mismo proyecto
    SELECT MAX(numeroProceso)
    INTO v_max_numero
    FROM ProcesoSeleccion
    WHERE OIDProyecto = NEW.OIDProyecto;

    -- Asignar automáticamente el número de proceso
    SET NEW.numeroProceso = IFNULL(v_max_numero, 0) + 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProcesoSeleccionEstado`
--

DROP TABLE IF EXISTS `ProcesoSeleccionEstado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProcesoSeleccionEstado` (
  `OIDProcesoSeleccionEstado` int NOT NULL AUTO_INCREMENT,
  `OIDProcesoSeleccion` int DEFAULT NULL,
  `OIDEstadoProcesoSeleccion` int DEFAULT NULL,
  `fechaCambioEstadoPS` date DEFAULT NULL,
  `fechaFinPS` date DEFAULT NULL,
  `fechaInicioPS` date DEFAULT NULL,
  PRIMARY KEY (`OIDProcesoSeleccionEstado`),
  KEY `fk_ps_estado_procsel` (`OIDProcesoSeleccion`),
  KEY `fk_ps_estado_estado` (`OIDEstadoProcesoSeleccion`),
  CONSTRAINT `fk_ps_estado_estado` FOREIGN KEY (`OIDEstadoProcesoSeleccion`) REFERENCES `EstadoProcesoSeleccion` (`OIDEstadoProcesoSeleccion`),
  CONSTRAINT `fk_ps_estado_procsel` FOREIGN KEY (`OIDProcesoSeleccion`) REFERENCES `ProcesoSeleccion` (`OIDProcesoSeleccion`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionEstado`
--

/*!40000 ALTER TABLE `ProcesoSeleccionEstado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProcesoSeleccionEstado` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_ps_estado_vs_proyecto_ins` BEFORE INSERT ON `ProcesoSeleccionEstado` FOR EACH ROW BEGIN
  DECLARE v_estado_proy INT;

  SELECT pr.OIDEstadoProyecto
    INTO v_estado_proy
  FROM ProcesoSeleccion ps
  JOIN Proyecto pr ON pr.OIDProyecto = ps.OIDProyecto
  WHERE ps.OIDProcesoSeleccion = NEW.OIDProcesoSeleccion
  LIMIT 1;

  IF NEW.OIDEstadoProcesoSeleccion = 1 AND v_estado_proy <> 2 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No es posible cambiar a "Simulado antes Finalizar Postulaciones". El Proyecto no está en estado Iniciado.';
  END IF;

  IF NEW.OIDEstadoProcesoSeleccion = 2 AND v_estado_proy <> 3 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'No es posible cambiar a "Simulado despues Finalizar Postulaciones". El Proyecto no está en estado En Evaluación.';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_unico_estado_definitivo` BEFORE INSERT ON `ProcesoSeleccionEstado` FOR EACH ROW BEGIN
    DECLARE v_count INT;

    -- Solo validar si el nuevo estado es 4 (definitivo)
    IF NEW.OIDEstadoProcesoSeleccion = 4 THEN
        SELECT COUNT(*)
        INTO v_count
        FROM ProcesoSeleccionEstado
        WHERE OIDProcesoSeleccion = NEW.OIDProcesoSeleccion
          AND OIDEstadoProcesoSeleccion = 4;

        IF v_count > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ya existe un ProcesoSeleccion definitivo para este Proyecto.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_estado_proceso_postulacion` BEFORE UPDATE ON `ProcesoSeleccionEstado` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    DECLARE v_old_oid INT;

    DECLARE v_old_nombre VARCHAR(50);

    DECLARE v_new_nombre VARCHAR(50);



    -- Solo validar si el estado está siendo modificado

    IF OLD.OIDEstadoProcesoSeleccion <> NEW.OIDEstadoProcesoSeleccion THEN



        -- Obtener el último estado registrado antes de esta actualización

        SELECT OIDEstadoProcesoSeleccion INTO v_old_oid

        FROM ProcesoSeleccionEstado

        WHERE OIDProcesoSeleccion = NEW.OIDProcesoSeleccion

          AND fechaCambioEstadoPS < NEW.fechaCambioEstadoPS

        ORDER BY fechaCambioEstadoPS DESC

        LIMIT 1;



        -- Buscar nombres de estados

        SELECT nombreEstadoProcesoSeleccion INTO v_old_nombre

        FROM EstadoProcesoSeleccion

        WHERE OIDEstadoProcesoSeleccion = v_old_oid;



        SELECT nombreEstadoProcesoSeleccion INTO v_new_nombre

        FROM EstadoProcesoSeleccion

        WHERE OIDEstadoProcesoSeleccion = NEW.OIDEstadoProcesoSeleccion;



        -- Bloquear repetición de estado

        IF v_old_oid = NEW.OIDEstadoProcesoSeleccion THEN

            SET v_msg = CONCAT('El proceso ya está en el estado "', v_new_nombre, '". No se puede repetir.');

            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

        END IF;



        -- Validar transiciones permitidas

        IF NOT (

            (v_old_oid = 1 AND NEW.OIDEstadoProcesoSeleccion = 3) OR

            (v_old_oid = 2 AND NEW.OIDEstadoProcesoSeleccion = 3)

        ) THEN

            SET v_msg = CONCAT('Transición no permitida: ', v_old_nombre, ' -> ', v_new_nombre);

            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

        END IF;



        -- Bloquear si el estado anterior era final (3 o 4)

        IF v_old_oid IN (3, 4) THEN

            SET v_msg = CONCAT('El estado "', v_old_nombre, '" es final. No se permiten más cambios.');

            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

        END IF;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProcesoSeleccionPostulacion`
--

DROP TABLE IF EXISTS `ProcesoSeleccionPostulacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProcesoSeleccionPostulacion` (
  `OIDProcesoSeleccionPostulacion` int NOT NULL AUTO_INCREMENT,
  `OIDPostulacion` int DEFAULT NULL,
  `OIDProcesoSeleccionProyectoPuesto` int DEFAULT NULL,
  `contPostulaciones` int DEFAULT NULL,
  `ordenMerito` int DEFAULT NULL,
  `codProcesoSeleccionPostulacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OIDProcesoSeleccionPostulacion`),
  UNIQUE KEY `uq_proceso_seleccion_postulacion` (`OIDProcesoSeleccionProyectoPuesto`,`OIDPostulacion`),
  KEY `fk_pspostu_postu` (`OIDPostulacion`),
  CONSTRAINT `fk_pspostu_postu` FOREIGN KEY (`OIDPostulacion`) REFERENCES `Postulacion` (`OIDPostulacion`),
  CONSTRAINT `fk_pspostu_pspp` FOREIGN KEY (`OIDProcesoSeleccionProyectoPuesto`) REFERENCES `ProcesoSeleccionProyectoPuesto` (`OIDProcesoSeleccionProyectoPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionPostulacion`
--

/*!40000 ALTER TABLE `ProcesoSeleccionPostulacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProcesoSeleccionPostulacion` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_SetcodProcesoSeleccionPostulacion` BEFORE INSERT ON `ProcesoSeleccionPostulacion` FOR EACH ROW BEGIN
    DECLARE max_num INT;

    -- Busca el número más alto actual de procesoPostulacion para este proceso de selección
    SELECT COALESCE(MAX(codProcesoSeleccionPostulacion), 0)
    INTO max_num
    FROM ProcesoSeleccionPostulacion
    WHERE OIDProcesoSeleccionProyectoPuesto = NEW.OIDProcesoSeleccionProyectoPuesto;

    -- Asigna el siguiente número, reiniciando en 1 si es el primer registro del proceso
    SET NEW.codProcesoSeleccionPostulacion = max_num + 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProcesoSeleccionProyectoPuesto`
--

DROP TABLE IF EXISTS `ProcesoSeleccionProyectoPuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProcesoSeleccionProyectoPuesto` (
  `OIDProcesoSeleccionProyectoPuesto` int NOT NULL AUTO_INCREMENT,
  `OIDProcesoSeleccion` int DEFAULT NULL,
  `OIDProyectoPuesto` int DEFAULT NULL,
  `numeroProcesoPostulacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OIDProcesoSeleccionProyectoPuesto`),
  UNIQUE KEY `uq_proceso_seleccion_proyecto_puesto` (`OIDProcesoSeleccion`,`OIDProyectoPuesto`),
  KEY `fk_pspp_proy_puesto` (`OIDProyectoPuesto`),
  CONSTRAINT `fk_pspp_procsel` FOREIGN KEY (`OIDProcesoSeleccion`) REFERENCES `ProcesoSeleccion` (`OIDProcesoSeleccion`),
  CONSTRAINT `fk_pspp_proy_puesto` FOREIGN KEY (`OIDProyectoPuesto`) REFERENCES `ProyectoPuesto` (`OIDProyectoPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionProyectoPuesto`
--

/*!40000 ALTER TABLE `ProcesoSeleccionProyectoPuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProcesoSeleccionProyectoPuesto` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_SetNumeroProcesoPostulacion` BEFORE INSERT ON `ProcesoSeleccionProyectoPuesto` FOR EACH ROW BEGIN
    DECLARE max_num INT;

    -- Busca el número más alto actual de procesoPostulacion para este proceso de selección
    SELECT COALESCE(MAX(numeroProcesoPostulacion), 0)
    INTO max_num
    FROM ProcesoSeleccionProyectoPuesto
    WHERE OIDProcesoSeleccion = NEW.OIDProcesoSeleccion;

    -- Asigna el siguiente número, reiniciando en 1 si es el primer registro del proceso
    SET NEW.numeroProcesoPostulacion = max_num + 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `OIDProyecto` int NOT NULL AUTO_INCREMENT,
  `OIDEmpresa` int DEFAULT NULL,
  `OIDEstadoProyecto` int DEFAULT NULL,
  `descripcionProyecto` text,
  `fechaFinProyecto` date DEFAULT NULL,
  `fechaHoraCierrePostulaciones` datetime DEFAULT NULL,
  `nombreProyecto` varchar(255) DEFAULT NULL,
  `numeroProyecto` varchar(100) DEFAULT NULL,
  `fechaInicioPostulaciones` date DEFAULT NULL,
  `fechaHoraInicioActividades` datetime DEFAULT NULL,
  PRIMARY KEY (`OIDProyecto`),
  UNIQUE KEY `uq_proyecto` (`numeroProyecto`,`nombreProyecto`),
  KEY `fk_proyecto_empresa` (`OIDEmpresa`),
  KEY `fk_proyecto_estado` (`OIDEstadoProyecto`),
  CONSTRAINT `fk_proyecto_empresa` FOREIGN KEY (`OIDEmpresa`) REFERENCES `Empresa` (`OIDEmpresa`),
  CONSTRAINT `fk_proyecto_estado` FOREIGN KEY (`OIDEstadoProyecto`) REFERENCES `EstadoProyecto` (`OIDEstadoProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_creacion_proyecto` BEFORE INSERT ON `Proyecto` FOR EACH ROW BEGIN

    -- Si no se especifica, setear a 1

    IF NEW.OIDEstadoProyecto IS NULL THEN

        SET NEW.OIDEstadoProyecto = 1;

    END IF;



    -- Validar que no sea distinto de 1

    IF NEW.OIDEstadoProyecto <> 1 THEN

        SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = 'No se puede crear un proyecto en estado distinto de creado';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_estado_proyecto` BEFORE UPDATE ON `Proyecto` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    DECLARE v_old_nombre VARCHAR(50);

    DECLARE v_new_nombre VARCHAR(50);



    -- Validación 1: Solo ejecutar si se modifica el estado

    IF OLD.OIDEstadoProyecto != NEW.OIDEstadoProyecto THEN

        -- Buscar nombres de estados desde la tabla EstadoProyecto

        SELECT nombreEstadoProyecto INTO v_old_nombre

        FROM EstadoProyecto

        WHERE OIDEstadoProyecto = OLD.OIDEstadoProyecto;



        SELECT nombreEstadoProyecto INTO v_new_nombre

        FROM EstadoProyecto

        WHERE OIDEstadoProyecto = NEW.OIDEstadoProyecto;



        -- Validación 2: Error si se intenta modificar el estado hacia sí mismo

        IF OLD.OIDEstadoProyecto = NEW.OIDEstadoProyecto THEN

            SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = 'No se puede actualizar el proyecto al mismo estado.';

        END IF;



        -- Validación 3: Solo permitir transiciones a estados permitidos

        IF NOT (

            (OLD.OIDEstadoProyecto = 1 AND NEW.OIDEstadoProyecto IN (2,5)) OR

            (OLD.OIDEstadoProyecto = 2 AND NEW.OIDEstadoProyecto IN (3,4,5)) OR

            (OLD.OIDEstadoProyecto = 3 AND NEW.OIDEstadoProyecto IN (6,5)) OR

            (OLD.OIDEstadoProyecto = 4 AND NEW.OIDEstadoProyecto IN (2,5))

        ) THEN

            SET v_msg = CONCAT('Transición no permitida: ', v_old_nombre, ' -> ', v_new_nombre);

            SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = v_msg;

        END IF;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_iniciar_proyecto_pp_ppc_notnull` BEFORE UPDATE ON `Proyecto` FOR EACH ROW BEGIN

    DECLARE v_count INT;



    -- Supongamos que estado = 2 significa "Iniciado"

    IF NEW.OIDEstadoProyecto = 2 AND OLD.OIDEstadoProyecto <> 2 THEN



        -- Verificar que exista al menos un ProyectoPuesto activo

        SELECT COUNT(*)

        INTO v_count

        FROM ProyectoPuesto pp

        WHERE pp.OIDProyecto = NEW.OIDProyecto

          AND pp.fechaBajaProyectoPuesto IS NULL;



        IF v_count = 0 THEN

            SIGNAL SQLSTATE '45000'

                SET MESSAGE_TEXT = 'No se puede iniciar el proyecto sin al menos un ProyectoPuesto activo.';

        END IF;



        -- Verificar que exista al menos un ProyectoPuestoCarrera activo vinculado a esos puestos

        SELECT COUNT(*)

        INTO v_count

        FROM ProyectoPuestoCarrera ppc

        INNER JOIN ProyectoPuesto pp ON pp.OIDProyectoPuesto = ppc.OIDProyectoPuesto

        WHERE pp.OIDProyecto = NEW.OIDProyecto

          AND pp.fechaBajaProyectoPuesto IS NULL

          AND ppc.fechaBajaProyectoPuestoCarrera IS NULL;



        IF v_count = 0 THEN

            SIGNAL SQLSTATE '45000'

                SET MESSAGE_TEXT = 'No se puede iniciar el proyecto sin al menos un ProyectoPuestoCarrera activo.';

        END IF;



    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_actualiza_fecha_inicio_postulaciones` BEFORE UPDATE ON `Proyecto` FOR EACH ROW BEGIN

    -- Verifica que el estado cambió a 2

    IF NEW.OIDEstadoProyecto = 2 AND OLD.OIDEstadoProyecto <> 2 THEN

        SET NEW.fechaInicioPostulaciones = NOW();

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_ValidarCambioEstadoProyecto` BEFORE UPDATE ON `Proyecto` FOR EACH ROW BEGIN
    DECLARE v_detalle_faltantes TEXT;
    DECLARE v_msg VARCHAR(255);

    -- Solo ejecutar si se intenta pasar a estado 3
    IF NEW.OIDEstadoProyecto = 3 THEN

        -- Buscar los ProyectoPuesto con menos postulaciones que vacantes
        SELECT GROUP_CONCAT(
                   CONCAT(
                       'ProyectoPuesto ', t.OIDProyectoPuesto,
                       ' tiene ', t.postulaciones,
                       ' de ', t.cantidadVacantes, ' postulaciones'
                   ) SEPARATOR '; '
               )
        INTO v_detalle_faltantes
        FROM (
            SELECT 
                pp.OIDProyectoPuesto,
                COUNT(po.OIDPostulacion) AS postulaciones,
                pp.cantidadVacantes
            FROM ProyectoPuesto pp
            LEFT JOIN Postulacion po 
                ON po.OIDProyectoPuesto = pp.OIDProyectoPuesto
            WHERE pp.OIDProyecto = NEW.OIDProyecto
            GROUP BY pp.OIDProyectoPuesto, pp.cantidadVacantes
            HAVING COUNT(po.OIDPostulacion) < pp.cantidadVacantes
        ) AS t;

        -- Si hay puestos con postulaciones insuficientes
        IF v_detalle_faltantes IS NOT NULL THEN
            -- Cambiar el estado a 4 (no pasa a 3)
            SET NEW.OIDEstadoProyecto = 4;

            -- Armar mensaje corto (MySQL limita MESSAGE_TEXT a 128 chars)
            SET v_msg = CONCAT(
                'Proyecto pasa a estado Suspendido. Faltan postulaciones: ',
                LEFT(v_detalle_faltantes, 80)
            );

            -- Enviar el mensaje
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = v_msg;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProyectoPuesto`
--

DROP TABLE IF EXISTS `ProyectoPuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProyectoPuesto` (
  `OIDProyectoPuesto` int NOT NULL AUTO_INCREMENT,
  `OIDProyecto` int DEFAULT NULL,
  `OIDPuesto` int DEFAULT NULL,
  `cantidadSuPostulaciones` int DEFAULT NULL,
  `cantidadVacantes` int DEFAULT NULL,
  `fechaBajaProyectoPuesto` date DEFAULT NULL,
  `horasDedicadas` int DEFAULT NULL,
  `codProyectoPuesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDProyectoPuesto`),
  UNIQUE KEY `uq_proyecto_puesto` (`OIDProyecto`,`OIDPuesto`),
  KEY `fk_proyecto_puesto_puesto` (`OIDPuesto`),
  CONSTRAINT `fk_proyecto_puesto_proyecto` FOREIGN KEY (`OIDProyecto`) REFERENCES `Proyecto` (`OIDProyecto`),
  CONSTRAINT `fk_proyecto_puesto_puesto` FOREIGN KEY (`OIDPuesto`) REFERENCES `Puesto` (`OIDPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoPuesto`
--

/*!40000 ALTER TABLE `ProyectoPuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProyectoPuesto` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_proyectopuesto` BEFORE UPDATE ON `ProyectoPuesto` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaProyectoPuesto = NEW.fechaBajaProyectoPuesto THEN

        SET v_msg = 'No se puede volver a dar de baja el Proyecto Puesto';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_proyectopuesto_update_proyecto_estado` BEFORE UPDATE ON `ProyectoPuesto` FOR EACH ROW BEGIN
    DECLARE v_estado INT;

    SELECT OIDEstadoProyecto
    INTO v_estado
    FROM Proyecto
    WHERE OIDProyecto = OLD.OIDProyecto;

    IF v_estado <> 1 AND v_estado <> 4 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Solo se puede MODIFICAR un ProyectoPuesto si el proyecto está en estado Creado (1) o Suspendido (4).';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProyectoPuestoCarrera`
--

DROP TABLE IF EXISTS `ProyectoPuestoCarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProyectoPuestoCarrera` (
  `OIDProyectoPuestoCarrera` int NOT NULL AUTO_INCREMENT,
  `OIDCarreraPlanEstudio` int DEFAULT NULL,
  `OIDProyectoPuesto` int DEFAULT NULL,
  `OIDCarrera` int DEFAULT NULL,
  `cantMateriasRegularesReq` int DEFAULT NULL,
  `fechaBajaProyectoPuestoCarrera` date DEFAULT NULL,
  `cantMateriasAprobadasReq` int DEFAULT NULL,
  PRIMARY KEY (`OIDProyectoPuestoCarrera`),
  UNIQUE KEY `uq_proyecto_puesto_carrera` (`OIDProyectoPuesto`,`OIDCarrera`,`OIDCarreraPlanEstudio`),
  KEY `ProyectoPuestoCarrera_Carrera_FK` (`OIDCarrera`),
  CONSTRAINT `ProyectoPuestoCarrera_Carrera_FK` FOREIGN KEY (`OIDCarrera`) REFERENCES `Carrera` (`OIDCarrera`),
  CONSTRAINT `ProyectoPuestoCarrera_ProyectoPuesto_FK` FOREIGN KEY (`OIDProyectoPuesto`) REFERENCES `ProyectoPuesto` (`OIDProyectoPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoPuestoCarrera`
--

/*!40000 ALTER TABLE `ProyectoPuestoCarrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProyectoPuestoCarrera` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_evitar_proyectopuestocarrera_con_carrera_baja` BEFORE INSERT ON `ProyectoPuestoCarrera` FOR EACH ROW BEGIN

    DECLARE v_fechaBajaCarrera DATE;



    -- Obtener la fecha de baja de la carrera

    SELECT fechaBajaCarrera INTO v_fechaBajaCarrera

    FROM Carrera

    WHERE OIDCarrera = NEW.OIDCarrera;



    -- Si la carrera tiene fecha de baja, no permitir la inserción

    IF v_fechaBajaCarrera IS NOT NULL THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'No se puede crear un ProyectoPuestoCarrera para una carrera dada de baja.';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_asignar_plan_estudios_vigente` BEFORE INSERT ON `ProyectoPuestoCarrera` FOR EACH ROW BEGIN

    DECLARE v_plan_vigente INT;



    -- Si no se ha especificado un OIDCarreraPlanEstudio, buscar el plan vigente

    IF NEW.OIDCarreraPlanEstudio IS NULL THEN

        -- Buscar el plan de estudios vigente para la carrera

        SELECT cp.OIDCarreraPlanEstudio INTO v_plan_vigente

        FROM CarreraPlanEstudios cp

        JOIN CarreraUniversidad cu ON cu.OIDCarreraUniversidad = cp.OIDCarreraUniversidad

        JOIN Carrera c ON c.OIDCarrera = cu.OIDCarrera

        WHERE c.OIDCarrera = NEW.OIDCarrera

          AND (cp.fechaFinPlanEstudios IS NULL OR cp.fechaFinPlanEstudios >= CURDATE())

          AND cp.fechaInicioPlanEstudios <= CURDATE()

        ORDER BY cp.fechaInicioPlanEstudios DESC

        LIMIT 1;



        -- Asignar el plan de estudios vigente encontrado

        IF v_plan_vigente IS NOT NULL THEN

            SET NEW.OIDCarreraPlanEstudio = v_plan_vigente;

        ELSE

            SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = 'No se encontró un plan de estudios vigente para la carrera especificada.';

        END IF;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_proyectopuestocarrera_insert_proyecto_alta` BEFORE INSERT ON `ProyectoPuestoCarrera` FOR EACH ROW BEGIN

    DECLARE v_estado INT;



    SELECT p.OIDEstadoProyecto

    INTO v_estado

    FROM Proyecto p

    INNER JOIN ProyectoPuesto pp ON pp.OIDProyectoPuesto = NEW.OIDProyectoPuesto

    WHERE p.OIDProyecto = pp.OIDProyecto;



    IF v_estado <> 1 THEN

        SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = 'Solo se puede CREAR un ProyectoPuestoCarrera si el proyecto está en estado Creado.';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_proyectopuestocarrera` BEFORE UPDATE ON `ProyectoPuestoCarrera` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaProyectoPuestoCarrera = NEW.fechaBajaProyectoPuestoCarrera THEN

        SET v_msg = 'No se puede volver a dar de baja el Proyecto Puesto Carrera';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_proyectopuestocarrera_update_proyecto_alta` BEFORE UPDATE ON `ProyectoPuestoCarrera` FOR EACH ROW BEGIN

    DECLARE v_estado INT;



    SELECT p.OIDEstadoProyecto

    INTO v_estado

    FROM Proyecto p

    INNER JOIN ProyectoPuesto pp ON pp.OIDProyectoPuesto = OLD.OIDProyectoPuesto

    WHERE p.OIDProyecto = pp.OIDProyecto;



    IF v_estado <> 1 THEN

        SIGNAL SQLSTATE '45000'

            SET MESSAGE_TEXT = 'Solo se puede MODIFICAR un ProyectoPuestoCarrera si el proyecto está en estado Creado.';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ProyectoUniversidad`
--

DROP TABLE IF EXISTS `ProyectoUniversidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProyectoUniversidad` (
  `OIDProyectoUniversidad` int NOT NULL AUTO_INCREMENT,
  `OIDProyecto` int DEFAULT NULL,
  `OIDUniversidad` int DEFAULT NULL,
  `fechaAsignacionPU` date DEFAULT NULL,
  `fechaFinAsignacionPU` date DEFAULT NULL,
  PRIMARY KEY (`OIDProyectoUniversidad`),
  UNIQUE KEY `uq_proyecto_universidad` (`OIDProyecto`,`OIDUniversidad`),
  KEY `fk_proy_uni_uni` (`OIDUniversidad`),
  CONSTRAINT `fk_proy_uni_proy` FOREIGN KEY (`OIDProyecto`) REFERENCES `Proyecto` (`OIDProyecto`),
  CONSTRAINT `fk_proy_uni_uni` FOREIGN KEY (`OIDUniversidad`) REFERENCES `Universidad` (`OIDUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoUniversidad`
--

/*!40000 ALTER TABLE `ProyectoUniversidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProyectoUniversidad` ENABLE KEYS */;

--
-- Table structure for table `Puesto`
--

DROP TABLE IF EXISTS `Puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Puesto` (
  `OIDPuesto` int NOT NULL AUTO_INCREMENT,
  `descripcionPuesto` text,
  `fechaBajaPuesto` date DEFAULT NULL,
  `nombrePuesto` varchar(150) DEFAULT NULL,
  `codPuesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Puesto`
--

/*!40000 ALTER TABLE `Puesto` DISABLE KEYS */;
INSERT INTO `Puesto` VALUES (1,'Diseña e implementa sistemas electrónicos y de control para optimizar procesos productivos en entornos industriales.',NULL,'Técnico/a en Automatización y Control Industrial','P001'),(2,'Supervisa el estado de salud de los animales, registra datos clínicos en la plataforma y asegura la correcta aplicación de tratamientos preventivos.',NULL,'Responsable en Sanidad Animal','P002'),(3,'Supervisa y protege software frente a vulnerabilidades, implementa protocolos de ciberseguridad y asegura la integridad de la información.',NULL,'Especialista en Seguridad Informática','P003'),(4,'Gestiona presupuestos, costos e inversiones del proyecto, asegurando la rentabilidad y el uso eficiente de los recursos.',NULL,'Analista Financiero/a','P004'),(5,'Desarrolla y optimiza videojuegos, integrando código, diseño y pruebas de funcionalidad.','2024-12-01','Desarrollador/a de Videojuegos','P005');
/*!40000 ALTER TABLE `Puesto` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_puesto` BEFORE UPDATE ON `Puesto` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaPuesto = NEW.fechaBajaPuesto THEN

        SET v_msg = 'No se puede volver a dar de baja el Puesto';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `PuestoCarrera`
--

DROP TABLE IF EXISTS `PuestoCarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PuestoCarrera` (
  `OIDPuestoCarrera` int NOT NULL AUTO_INCREMENT,
  `OIDCarrera` int DEFAULT NULL,
  `OIDPuesto` int DEFAULT NULL,
  PRIMARY KEY (`OIDPuestoCarrera`),
  KEY `fk_pc_carrera` (`OIDCarrera`),
  KEY `fk_pc_puesto` (`OIDPuesto`),
  CONSTRAINT `fk_pc_carrera` FOREIGN KEY (`OIDCarrera`) REFERENCES `Carrera` (`OIDCarrera`),
  CONSTRAINT `fk_pc_puesto` FOREIGN KEY (`OIDPuesto`) REFERENCES `Puesto` (`OIDPuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PuestoCarrera`
--

/*!40000 ALTER TABLE `PuestoCarrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `PuestoCarrera` ENABLE KEYS */;

--
-- Table structure for table `Universidad`
--

DROP TABLE IF EXISTS `Universidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Universidad` (
  `OIDUniversidad` int NOT NULL AUTO_INCREMENT,
  `correoUniversidad` varchar(150) DEFAULT NULL,
  `direccionUniversidad` varchar(255) DEFAULT NULL,
  `fechaBajaUniversidad` date DEFAULT NULL,
  `nombreUniversidad` varchar(255) DEFAULT NULL,
  `nroTelefono` varchar(50) DEFAULT NULL,
  `cuitUniversidad` varchar(50) DEFAULT NULL,
  `codPostal` int DEFAULT NULL,
  `subDominioUniversidad` varchar(50) DEFAULT NULL,
  `URLUniversidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDUniversidad`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universidad`
--

/*!40000 ALTER TABLE `Universidad` DISABLE KEYS */;
INSERT INTO `Universidad` VALUES (1,'info@uncuyo.edu.ar','Padre Jorge Contreras 1300, Mendoza',NULL,'Universidad Nacional de Cuyo (UNCUYO)','2614135000','30707483219',5500,'uncuyo.edu.ar',NULL),(2,'contacto@utn.frm.edu.ar','Rodríguez 273, Ciudad de Mendoza',NULL,'Universidad Tecnológica Nacional (UTN) - Facultad Regional Mendoza','2615244600','30651231238',5500,'utn.frm.edu.ar',NULL),(3,'contacto@frba.utn.edu.ar','Av. Medrano 951, Ciudad Autónoma de Buenos Aires',NULL,'Universidad Tecnológica Nacional (UTN) – Facultad Regional Buenos Aires','1148677500','30123456785',1107,'frba.utn.edu.ar',NULL),(4,'informacion@tadic.or.mza','HSQ La Heras Mendoza AR, Lateral Oeste Acceso Nte., M5539 Las Heras, Mendoza','2024-06-08','Universidad Provincial Tadicor Mendoza','3515261500','30711393842',5539,'tadic.or.mza',NULL);
/*!40000 ALTER TABLE `Universidad` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_baja_universidad` BEFORE UPDATE ON `Universidad` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    IF OLD.fechaBajaUniversidad = NEW.fechaBajaUniversidad THEN

        SET v_msg = 'No se puede volver a dar de baja la Universidad';

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'coloquio_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 20:21:12
