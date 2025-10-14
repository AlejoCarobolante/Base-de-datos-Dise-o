-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_ds_def
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
INSERT INTO `Carrera` VALUES (1,'Carrera orientada a la formación de profesionales en el desarrollo y gestión de sistemas y tecnologías de la información.',NULL,'Ingeniería en Sistemas de Información','C1001'),(2,'Formación integral en medicina con énfasis en atención primaria de la salud y especialidades médicas.',NULL,'Medicina','C1002'),(3,'Carrera que forma profesionales en el diseño, construcción y mantenimiento de obras civiles e infraestructura.',NULL,'Ingeniería Civil','C1003'),(4,'Formación profesional para el ejercicio del derecho en todas sus ramas y especialidades jurídicas.','2025-03-12','Derecho','C1004'),(5,'Carrera enfocada en la formación de contadores públicos con sólidos conocimientos en ciencias económicas y tributarias.',NULL,'Contador Público','C1005'),(6,'Formación de profesionales de enfermería capacitados para brindar atención integral de la salud.',NULL,'Licenciatura en Enfermería','C1006'),(7,'Carrera orientada a la formación de psicólogos con énfasis en psicología clínica y organizacional.',NULL,'Licenciatura en Psicología','C1007'),(8,'Formación técnica en desarrollo de software, programación y gestión de bases de datos.',NULL,'Tecnicatura en Programación','C1008'),(9,'Formación de profesionales en administración de empresas con énfasis en gestión estratégica y recursos humanos.',NULL,'Licenciatura en Administración','C1009'),(10,'Formación de ingenieros especializados en sistemas electrónicos, automatización y control industrial.',NULL,'Ingeniería Electrónica','C1010'),(11,'Formación especializada en diseño gráfico, comunicación visual y producción multimedia.',NULL,'Diseño Gráfico','C1011'),(12,'La Licenciatura en Microcircuitos forma profesionales capaces de diseñar, analizar y optimizar sistemas electrónicos a escala nanométrica, integrando teoría de semiconductores con aplicaciones en inteligencia artificial y telecomunicaciones. La carrera combina laboratorios de alta precisión con formación en programación y arquitectura de hardware, preparando expertos para la industria tecnológica y de investigación avanzada.','2025-04-27','Tecnicatura en Análisis de Microcircuitos','C1012'),(13,'Formación de veterinarios especializados en medicina animal, salud pública y producción agropecuaria.',NULL,'Veterinaria','C1013'),(14,'Carrera enfocada en la formación de odontólogos con sólidos conocimientos en salud bucal y cirugía oral.',NULL,'Odontología','C1014'),(15,'Formación de ingenieros químicos especializados en procesos industriales y desarrollo sustentable.',NULL,'Ingeniería Química','C1015'),(16,'Formación de profesionales en trabajo social para intervención en problemáticas sociales comunitarias.',NULL,'Licenciatura en Trabajo Social','C1016'),(17,'Carrera técnica orientada a la producción vitivinícola y gestión de bodegas con tecnología moderna.',NULL,'Tecnicatura en Enología y Viticultura','C1017'),(18,'Formacion de profesionales para diseñar, desarrollar y administrar sistemas informáticos.',NULL,'Licenciatura en Informatica','C1018'),(19,'Formación de profesionales en análisis clínico, investigación biomédica y control de calidad en laboratorios.',NULL,'Bioquimica','C1019'),(20,'Formación de ingenieros en gestión de procesos productivos, optimización de recursos y mejora continua.',NULL,'Ingenieria industrial','C1020');
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
INSERT INTO `CarreraPlanEstudios` VALUES (3,15,'UBA_P01IngElec','2018-01-01','2017-12-31','2005-01-01','Plan 2005 Ingeniería Electrónica','PE001','Ingeniería Electrónica'),(4,17,'UBA_P01TAM','2025-04-27','2025-04-27','2001-01-01','Plan 2001 Tecnicatura en Analisis de Microcircuitos','PE002','Tecnicatura en Analisis de Microcircuitos'),(5,11,'UCon_P01LP',NULL,NULL,'2001-01-01','Plan 2001 Licenciatura en Psicología','PE003','Licenciatura en Psicología'),(6,16,'UCAba_P01DG',NULL,NULL,'2002-01-01','Plan 2002 Diseño Gráfico','PE004','Diseño Gráfico'),(7,18,'UCC_P01Vet',NULL,NULL,'1998-01-01','Plan 1998 Veterinaria','PE005','Veterinaria'),(8,7,'UCH_P01Der','2025-03-12','2025-03-12','1998-01-01','Plan 1998 Derecho','PE006','Derecho'),(9,19,'UNLP_P01Odo',NULL,NULL,'2002-01-01','Plan 2002 Odontología','PE007','Odontología'),(10,3,'UMaza_P01Med',NULL,NULL,'1997-01-01','Plan 1997 Medicina','PE008','Medicina'),(11,9,'UMaza_P01LE',NULL,NULL,'1999-01-01','Plan 1999 Licenciatura en Enfermería','PE009','Licenciatura en Enfermería'),(12,4,'UCon_P01Med',NULL,NULL,'2002-01-01','Plan 2002 Medicina','PE010','Medicina'),(13,5,'UNCuyo_P01Med','2012-01-01','2011-12-31','1999-01-01','Plan 1999 Medicina','PE011','Medicina'),(14,8,'UCAba_P01CP','2015-01-01','2014-12-31','1996-01-01','Plan 1996 Contador público','PE012','Contador público'),(15,10,'UNCuyo_P01LE',NULL,NULL,'1999-01-01','Plan 1999 Licenciatura en Enfermería','PE013','Licenciatura en Enfermería'),(16,27,'UNCuyo_P01IngInd',NULL,NULL,'1999-01-01','Plan 1999 Ingeniería Industrial','PE014','Ingeniería Industrial'),(17,22,'UNCuyo_P01TS',NULL,NULL,'2003-01-01','Plan 2003 Licenciatura en Trabajo Social','PE015','Licenciatura en Trabajo Social'),(18,20,'UTNFRC_P01IngQui',NULL,NULL,'1997-01-01','Plan 1997 Ingeniería Química','PE016','Ingeniería Química'),(19,1,'UTNFRM_P01IngSis','2016-01-01','2015-12-31','2008-01-01','Plan 2008 Ingeniería en Sistemas de Información','PE017','Ingeniería en Sistemas de Información'),(20,6,'UTNFRM_P01IngCiv',NULL,NULL,'1998-01-01','Plan 1998 Ingeniería Civil','PE018','Ingeniería Civil'),(21,23,'UTNFRM_P01TEV',NULL,NULL,'1997-01-01','Plan 1997 Enología','PE019','Tecnicatura en Enología y Viticultura'),(22,21,'UTNFRM_P01IngQui',NULL,NULL,'2000-01-01','Plan 2000 Ingeniería Química','PE020','Ingeniería Química'),(23,15,'UBA_P02IngElec',NULL,NULL,'2018-01-01','Plan 2018 Ingeniería Electrónica','PE021','Ingeniería Electrónica'),(24,5,'UNCuyo_P02Med','2020-01-01','2019-12-31','2012-01-01','Plan 2012 Medicina','PE022','Medicina'),(25,5,'UNCuyo_P03Med',NULL,NULL,'2020-01-01','Plan 2020 Medicina','PE023','Medicina'),(26,14,'UNLP_P02LA',NULL,NULL,'2013-01-01','Plan 2013 Licenciatura en Administración','PE024','Licenciatura en Administración'),(27,8,'UCAba_P02CP',NULL,NULL,'2023-01-01','Plan 2023 Contador Público','PE025','Contador Público'),(28,1,'UTNFRM_P02IngSis','2024-01-01','2023-12-31','2016-01-01','Plan 2016 Ingeniería en Sistemas de Información','PE026','Ingeniería en Sistemas de Información'),(29,1,'UTNFRM_P03IngSis',NULL,NULL,'2024-01-01','Plan 2024 Ingeniería en Sistemas de Información','PE027','Ingeniería en Sistemas de Información'),(30,2,'UTNFRBA_P01IngSis',NULL,NULL,'2016-01-01','Plan 2016 Ingeniería en Sistemas de Información','PE028','Ingeniería en Sistemas de Información'),(31,24,'UBA_P01LI',NULL,NULL,'2016-01-01','Plan 2016 Licenciatura en Informatica','PE029','Licenciatura en Informatica'),(32,25,'UDA_P01LI',NULL,NULL,'2016-01-01','Plan 2016 Licenciatura en Informatica','PE030','Licenciatura en Informatica'),(33,12,'UTNFRM_P01TP',NULL,NULL,'2016-01-01','Plan 2016 Tecnicatura en Programacion','PE031','Tecnicatura en Programacion'),(34,13,'UTNFRBA_P01TP',NULL,NULL,'2016-01-01','Plan 2016 Tecnicatura en Programacion','PE032','Tecnicatura en Programacion'),(35,26,'UMaza_P01B',NULL,NULL,'2019-01-01','Plan 2019 Bioquimica','PE033','Bioquímica'),(36,28,'UBA_P01Med',NULL,NULL,'2019-01-01','Plan 2019 Medicina','PE034','Medicina'),(37,29,'UBA_P01LE',NULL,NULL,'2019-01-01','Plan 2019 Licenciatura en Enfermería','PE035','Licenciatura en Enfermería'),(38,30,'UNLP_P01LP',NULL,NULL,'2019-01-01','Plan 2019 Licenciatura en Psicología','PE036','Licenciatura en Psicología');
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
INSERT INTO `CarreraUniversidad` VALUES (1,1,2,'UTNFRM_P03IngSis','2024-07-15',NULL,'CU001'),(2,1,3,'UTNFRBA_P01IngSis','2024-08-08',NULL,'CU002'),(3,2,7,'UMaza_P01Med','2024-08-03',NULL,'CU003'),(4,2,6,'UCon_P01Med','2024-08-10',NULL,'CU004'),(5,2,1,'UNCuyo_P03Med','2024-07-20',NULL,'CU005'),(6,3,2,'UTNFRM_P01IngCiv','2024-07-15',NULL,'CU006'),(7,4,5,'UCH_P01Der','2024-08-02','2025-03-12','CU007'),(8,5,12,'UCAba_P02CP','2024-08-20',NULL,'CU008'),(9,6,7,'UMaza_P01LE','2024-08-03',NULL,'CU009'),(10,6,1,'UNCuyo_P01LE','2024-07-20',NULL,'CU010'),(11,7,6,'UCon_P01LP','2024-08-10',NULL,'CU011'),(12,8,2,'UTNFRM_P01TP','2024-07-15',NULL,'CU012'),(13,8,3,'UTNFRBA_P01TP','2024-08-08',NULL,'CU013'),(14,9,11,'UNLP_P02LA','2024-10-24',NULL,'CU014'),(15,10,9,'UBA_P02IngElec','2024-08-09',NULL,'CU015'),(16,11,12,'UCAba_P01DG','2024-08-20',NULL,'CU016'),(17,12,9,'UBA_P01TAM','2024-08-09','2025-04-27','CU017'),(18,13,10,'UCC_P01Vet','2024-07-19',NULL,'CU018'),(19,14,11,'UNLP_P01Odo','2024-10-24',NULL,'CU019'),(20,15,8,'UTNFRC_P01IngQui','2024-11-12',NULL,'CU020'),(21,15,2,'UTNFRM_P01IngQui','2024-07-15',NULL,'CU021'),(22,16,1,'UNCuyo_P01TS','2024-07-20',NULL,'CU022'),(23,17,2,'UTNFRM_P01TEV','2024-07-15',NULL,'CU023'),(24,18,9,'UBA_P01LI','2024-08-09',NULL,'CU024'),(25,18,4,'UDA_P01LI','2024-07-15',NULL,'CU025'),(26,19,7,'UMaza_P01B','2024-08-03',NULL,'CU026'),(27,20,1,'UNCuyo_P01IngInd','2024-07-20',NULL,'CU027'),(28,2,9,'UBA_P01Med','2024-07-08',NULL,'CU028'),(29,6,9,'UBA_P01LE','2024-08-26',NULL,'CU029'),(30,7,11,'UNLP_P01LP','2024-07-19',NULL,'CU030');
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
INSERT INTO `Contrato` VALUES (1,1,1,33,5,'2025-09-28','2025-01-10','2024-11-11','1'),(2,2,2,34,5,'2025-09-28','2025-01-10','2024-11-11','2'),(3,3,3,35,5,'2025-09-28','2025-01-10','2024-11-11','3'),(4,1,5,37,5,'2025-09-28','2025-01-10','2024-11-11','4'),(5,2,6,38,5,'2025-09-28','2025-01-10','2024-11-11','5'),(6,2,7,39,5,'2025-09-28','2025-01-10','2024-11-11','6'),(7,1,9,41,5,'2025-09-28','2025-01-10','2024-11-11','7'),(8,2,10,42,5,'2025-09-28','2025-01-10','2024-11-11','8'),(9,2,11,43,5,'2025-09-28','2025-01-10','2024-11-11','9'),(10,1,13,45,5,'2025-09-28','2025-01-10','2024-11-11','10'),(11,1,14,46,5,'2025-09-28','2025-01-10','2024-11-11','11'),(12,1,15,47,5,'2025-09-28','2025-01-10','2024-11-11','12'),(13,2,17,49,5,'2025-09-28','2025-01-10','2024-11-11','13'),(14,2,18,50,5,'2025-09-28','2025-01-10','2024-11-11','14'),(15,2,19,51,5,'2025-09-28','2025-01-10','2024-11-11','15'),(16,1,21,53,5,'2025-09-28','2025-01-10','2024-11-11','16'),(17,2,22,54,5,'2025-09-28','2025-01-10','2024-11-11','17'),(18,3,23,55,5,'2025-09-28','2025-01-10','2024-11-11','18'),(19,1,25,57,6,'2025-12-31','2025-06-20','2025-04-28','19'),(20,2,26,58,6,'2025-12-31','2025-06-20','2025-04-28','20'),(21,3,27,59,6,'2025-12-31','2025-06-20','2025-04-28','21'),(22,1,29,61,6,'2025-12-31','2025-06-20','2025-04-28','22'),(23,2,30,62,6,'2025-12-31','2025-06-20','2025-04-28','23'),(24,2,31,63,6,'2025-12-31','2025-06-20','2025-04-28','24'),(25,1,33,65,6,'2025-12-31','2025-06-20','2025-04-28','25'),(26,2,34,66,6,'2025-12-31','2025-06-20','2025-04-28','26'),(27,2,35,67,6,'2025-12-31','2025-06-20','2025-04-28','27'),(28,1,37,69,6,'2025-12-31','2025-06-20','2025-04-28','28'),(29,1,38,70,6,'2025-12-31','2025-06-20','2025-04-28','29'),(30,1,39,71,6,'2025-12-31','2025-06-20','2025-04-28','30'),(31,2,41,73,6,'2025-12-31','2025-06-20','2025-04-28','31'),(32,2,42,74,6,'2025-12-31','2025-06-20','2025-04-28','32'),(33,2,43,75,6,'2025-12-31','2025-06-20','2025-04-28','33'),(34,1,45,77,6,'2025-12-31','2025-06-20','2025-04-28','34'),(35,2,46,78,6,'2025-12-31','2025-06-20','2025-04-28','35'),(36,3,47,79,6,'2025-12-31','2025-06-20','2025-04-28','36'),(37,1,49,113,11,'2025-10-16','2025-02-19','2024-12-02','37'),(38,2,50,114,11,'2025-10-16','2025-02-19','2024-12-02','38'),(39,3,51,115,11,'2025-10-16','2025-02-19','2024-12-02','39'),(40,1,53,117,11,'2025-10-16','2025-02-19','2024-12-02','40'),(41,2,54,118,11,'2025-10-16','2025-02-19','2024-12-02','41'),(42,2,55,119,11,'2025-10-16','2025-02-19','2024-12-02','42'),(43,1,57,121,11,'2025-10-16','2025-02-19','2024-12-02','43'),(44,2,58,122,11,'2025-10-16','2025-02-19','2024-12-02','44'),(45,2,59,123,11,'2025-10-16','2025-02-19','2024-12-02','45'),(46,1,61,125,11,'2025-10-16','2025-02-19','2024-12-02','46'),(47,1,62,126,11,'2025-10-16','2025-02-19','2024-12-02','47'),(48,1,63,127,11,'2025-10-16','2025-02-19','2024-12-02','48'),(49,2,65,129,11,'2025-10-16','2025-02-19','2024-12-02','49'),(50,2,66,130,11,'2025-10-16','2025-02-19','2024-12-02','50'),(51,2,67,131,11,'2025-10-16','2025-02-19','2024-12-02','51'),(52,1,69,133,11,'2025-10-16','2025-02-19','2024-12-02','52'),(53,2,70,134,11,'2025-10-16','2025-02-19','2024-12-02','53'),(54,3,71,135,11,'2025-10-16','2025-02-19','2024-12-02','54'),(55,1,73,137,12,'2025-06-17','2024-12-03','2024-11-04','55'),(56,2,74,138,12,'2025-06-17','2024-12-03','2024-11-04','56'),(57,3,75,139,12,'2025-06-17','2024-12-03','2024-11-04','57'),(58,1,77,141,12,'2025-06-17','2024-12-03','2024-11-04','58'),(59,2,78,142,12,'2025-06-17','2024-12-03','2024-11-04','59'),(60,2,79,143,12,'2025-06-17','2024-12-03','2024-11-04','60'),(61,1,81,145,12,'2025-06-17','2024-12-03','2024-11-04','61'),(62,2,82,146,12,'2025-06-17','2024-12-03','2024-11-04','62'),(63,2,83,147,12,'2025-06-17','2024-12-03','2024-11-04','63'),(64,1,85,149,12,'2025-06-17','2024-12-03','2024-11-04','64'),(65,1,86,150,12,'2025-06-17','2024-12-03','2024-11-04','65'),(66,1,87,151,12,'2025-06-17','2024-12-03','2024-11-04','66'),(67,2,89,153,12,'2025-06-17','2024-12-03','2024-11-04','67'),(68,2,90,154,12,'2025-06-17','2024-12-03','2024-11-04','68'),(69,2,91,155,12,'2025-06-17','2024-12-03','2024-11-04','69'),(70,1,93,157,12,'2025-06-17','2024-12-03','2024-11-04','70'),(71,2,94,158,12,'2025-06-17','2024-12-03','2024-11-04','71'),(72,3,95,159,12,'2025-06-17','2024-12-03','2024-11-04','72');
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
INSERT INTO `Empresa` VALUES (1,'C1063ACU','Av. Paseo Colón 850, CABA',NULL,'ElectroIndustria del Plata SRL','1143726600','30712345674'),(2,'B1900TCO','Av. 13 Nº 520, La Plata, Buenos Aires',NULL,'Innova Salud S.A.','1143782211','30658392147'),(3,'M5500FAD','Godoy Cruz 780, Mendoza Capital',NULL,'Centro Biomédico Cuyo SRL','2214217788','30804576932'),(4,'M5507XXX','Ruta Provincial 15 km 23, Luján de Cuyo, Mendoza',NULL,'Viñedos de Cuyo SRL','2614256677','30927634581'),(5,'C1043AAV','Av. Corrientes 720, CABA',NULL,'TechCorp Solutions SA','1143452211','30547829316'),(6,'M5500EJP','Av. Mitre 1450, Mendoza Capital',NULL,'Constructora Andina SRL','2614309988','30639284755'),(7,'C1424CWA','Av. Rivadavia 5250, Caballito, CABA',NULL,'Caballito Tech SA','1149037722','30742685193'),(8,'X2434XXX','Ruta Nacional 19, km 228, Arroyito, Córdoba',NULL,'Arcor','3514876500','30758913468'),(9,'X5000XXX','Av. Colón 1050, Córdoba Capital, Córdoba',NULL,'Clínica Veterinaria Mediterranea S.A.','3514875522','30478529619'),(10,'M5500XXX','Av. San Martín 1120, Mendoza Capital, Mendoza','2022-02-24','Andina Consultores S.A.','2614203344','30478529619'),(11,'X5000XXX','Av. Colón 350, Córdoba','2022-02-24','Innovación Córdoba SRL','3514897200','30894562370');
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
INSERT INTO `EstadoEstudianteCarrera` VALUES (1,NULL,'Habilitado','EEC001'),(2,NULL,'No habilitado','EEC002'),(5,'2024-05-12','Suspendido','EEC003');
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
INSERT INTO `Estudiante` VALUES (1,'Fernández','juanfernandez@gmail.com','42670487',NULL,'2000-05-14','Juan','DNI','20426704871','2614291100'),(2,'Gómez','luciagomez@gmail.com','41026225',NULL,'1999-11-23','Lucía','DNI','27410262253','2614329988'),(3,'Martínez','santiagomartinez@hotmail.com','42256787',NULL,'2001-03-10','Santiago','DNI','23422567879','2614452211'),(4,'Rodríguez','valentinarodriguez@gmail.com','43146316',NULL,'2002-07-02','Valentina','DNI','20431463165','2614789933'),(5,'López','mateolopez@gmail.com','40709570',NULL,'1998-01-29','Mateo','DNI','20407095708','2614215566'),(6,'Pérez','camilaperez@gmail.com','44619176',NULL,'2003-09-12','Camila','DNI','23446191764','2614307722'),(7,'García','nicolasgarcia@gmail.com','42033326',NULL,'2001-04-05','Nicolás','DNI','23420333269','2614473344'),(8,'Sánchez','martinasanchez@gmail.com','42098246',NULL,'2000-12-21','Martina','DNI','20420982462','2614785663'),(9,'Romero','agustinromero@gmail.com','41243962',NULL,'1999-02-18','Agustín','DNI','20412439628','2614669922'),(10,'Herrera','sofiaherrera@gmail.com','43588508',NULL,'2002-06-27','Sofía','DNI','20435885080','2614301188'),(11,'Torres','juliantorres@gmail.com','42750800',NULL,'2000-08-15','Julián','DNI','27427508000','2614234455'),(12,'Flores','anaflores@hotmail.com','42231148',NULL,'2001-01-10','Ana','DNI','27422311489','2614392211'),(13,'Morales','tomasmorales@gmail.com','41617889',NULL,'1999-09-30','Tomás','DNI','27416178890','2614467788'),(14,'Castro','carlacastro@yahoo.com','44848749',NULL,'2003-03-25','Carla','DNI','20448487491','2614823344'),(15,'Ortiz','federicoortiz@gmail.com','42795667',NULL,'2000-04-07','Federico','DNI','23427956679','2614728899'),(16,'Martínez Silva','santiagomartinez@gmail.com','44459381',NULL,'2003-11-09','Santiago','DNI','23444593814','2614254855'),(17,'Acosta','antonellaacosta@gmail.com','45126882',NULL,'2004-07-20','Antonella','DNI','20451268822','114957117'),(18,'Morales','valentinamorales@gmail.com','42235612',NULL,'2001-08-07','Valentina','DNI','20422356127','2614697141'),(19,'Acosta','abrilacosta@gmail.com','42354508',NULL,'2001-07-20','Abril','DNI','23423545089','26244325121'),(20,'García','pedrogarcia@gmail.com','44616886',NULL,'2003-06-19','Pedro','DNI','20446168860','35434133356'),(21,'Gómez','franciscogomez@gmail.com','44617024',NULL,'2003-04-29','Francisco','DNI','20446170245','3514738463'),(22,'López','santiagolopez@gmail.com','43007540',NULL,'2002-04-11','Santiago','DNI','20430075404','26244958596'),(23,'Morales','franciscomorales@gmail.com','41742225',NULL,'1999-08-30','Francisco','DNI','20417422251','2614954656'),(24,'Sánchez','franciscosanchez@gmail.com','40240062',NULL,'1998-04-28','Francisco','DNI','20402400626','3514575717'),(25,'Morales Ortiz','leandromateomoralesortiz@gmail.com','43949401',NULL,'2002-07-01','Leandro Mateo','DNI','20439494019','2614593165'),(26,'Benítez','luciabenitez@gmail.com','42901393',NULL,'2001-04-13','Lucía','DNI','27429013939','3514749718'),(27,'Torres Romero','facundotorresromero@gmail.com','44074299',NULL,'2003-06-23','Facundo','DNI','20440742999','23204759730'),(28,'Flores','ramiroantonellaflores@gmail.com','42292004',NULL,'2000-01-03','Ramiro Antonella','DNI','27422920043','35434741373'),(29,'Ruiz','sofiaruiz@gmail.com','44224643',NULL,'2003-10-01','Sofía','DNI','20442246433','2614758975'),(30,'Medina','valentinamedina@gmail.com','40758490',NULL,'1998-03-27','Valentina','DNI','27407584908','2214087375'),(31,'Pereyra','agustinapereyra@gmail.com','41048050',NULL,'1999-09-25','Agustina','DNI','20410480507','1147893456'),(32,'Godoy','diegogodoy@gmail.com','43810620',NULL,'2002-01-30','Diego','DNI','27438106206','1146672211'),(33,'Giménez','florenciagimenez@gmail.com','42083667',NULL,'2001-12-10','Florencia','DNI','20420836679','1148997766'),(34,'Álvarez','tomasalvarez@gmail.com','40908573',NULL,'1998-07-08','Tomás','DNI','20409085734','2214237788'),(35,'Benítez','mariabenitez@gmail.com','44398591',NULL,'2003-04-19','María','DNI','27443985919','2214459922'),(36,'Quiroga','estebanquiroga@gmail.com','42475435',NULL,'2000-11-11','Esteban','DNI','27424754353','2214215566'),(37,'Bustos','julietabustos@hotmail.com','43170555',NULL,'2002-02-16','Julieta','DNI','27431705554','2214788899'),(38,'Correa','nicolascorrea@gmail.com','41372528',NULL,'1999-08-24','Nicolás','DNI','20413725284','1145228899'),(39,'Carrizo','valeriacarrizo@gmail.com','42702729',NULL,'2001-05-05','Valeria','DNI','27427027290','2214301177'),(40,'Medina','jorgemedina@gmail.com','42735911',NULL,'2000-10-02','Jorge','DNI','20427359116','3514681122'),(41,'Paredes','carlaparedes@gmail.com','41638720',NULL,'1999-06-18','Carla','DNI','20416387207','3514785566'),(42,'Ferrero','lucianoferrero@gmail.com','42560086',NULL,'2001-02-12','Luciano','DNI','23425600869','3514327788'),(43,'Oliva','nataliaoliva@gmail.com','43171339',NULL,'2002-07-07','Natalia','DNI','27431713395','3514399922'),(44,'Maidana','federicomaidana@gmail.com','42397887',NULL,'2000-09-21','Federico','DNI','27423978878','3514213344'),(45,'Bustamante','rociobustamante@gmail.com','44970342',NULL,'2003-11-03','Rocío','DNI','20449703422','3514667788'),(46,'Carranza','gonzalocarranza@gmail.com','40717870',NULL,'1998-12-29','Gonzalo','DNI','27407178705','3514732211'),(47,'Cabrera','marielacabrera@gmail.com','42883794',NULL,'2001-01-15','Mariela','DNI','20428837941','3514308899'),(48,'Suárez','agustinsuarez@gmail.com','41240174',NULL,'1999-04-27','Agustín','DNI','20412401744','3514473344'),(49,'Vázquez','pamelavazquez@gmail.com','43844151',NULL,'2002-08-22','Pamela','DNI','23438441514','3514291188'),(50,'Morales','florenciamorales@hotmail.com','44420651',NULL,'2003-06-01','Florencia','DNI','27444206514','23204520028'),(51,'Ponce','gonzaloponce@gmail.com','42069403',NULL,'2000-04-15','Gonzalo','DNI','20420694033','114076991'),(52,'Ponce Molina','valentinaponcemolina@gmail.com','45957492',NULL,'2004-09-07','Valentina','DNI','27459574927','3514822590'),(53,'Castro','pedrocastro@gmail.com','43222955',NULL,'2002-09-20','Pedro','DNI','27432229551','3514382744'),(54,'Acosta','micaelaacosta@gmail.com','43414850',NULL,'2002-11-30','Micaela','DNI','27434148508','114055760'),(55,'Romero','gonzaloromero@gmail.com','44149811',NULL,'2003-03-30','Gonzalo','DNI','27441498115','2214639312'),(56,'López Romero','paulalopezromero@gmail.com','42146413',NULL,'2000-12-16','Paula','DNI','20421464139','26244541693'),(57,'Ponce','leandroponce@gmail.com','43781177',NULL,'2002-11-09','Leandro','DNI','27437811771','114140550'),(58,'Domínguez Ortiz','valentinadominguezortiz@gmail.com','44783300',NULL,'2003-08-23','Valentina','DNI','27447833005','35434255913'),(59,'Acosta','brendaacosta@gmail.com','44941435',NULL,'2003-09-14','Brenda','DNI','27449414352','26274300001'),(60,'Molina','ezequielmolina@gmail.com','40379580',NULL,'1998-01-19','Ezequiel','DNI','20403795802','3514274258'),(61,'Gómez Pérez','pedrogomezperez@gmail.com','42145051',NULL,'2000-01-24','Pedro','DNI','27421450515','3514798449'),(62,'Sánchez','ezequielsanchez@gmail.com','44095325',NULL,'2003-12-21','Ezequiel','DNI','20440953256','3514349656'),(63,'Fernández Ruiz','paulafernandezruiz@gmail.com','44902931',NULL,'2003-10-03','Paula','DNI','20449029314','2214510896'),(64,'Pérez','abrilleandroperez@gmail.com','44160265',NULL,'2003-03-23','Abril Leandro','DNI','20441602651','3514887520'),(65,'García Pérez','mateogarciaperez@gmail.com','42830555',NULL,'2000-04-17','Mateo','DNI','27428305553','114227155'),(66,'Castro','ivancastro@gmail.com','44625380',NULL,'2003-11-22','Iván','DNI','20446253809','2214664347'),(67,'Acosta Martínez','sofiaacostamartinez@gmail.com','45403457',NULL,'2004-02-09','Sofía','DNI','27454034576','35434884087'),(68,'Flores','santiagosofiaflores@gmail.com','40624834',NULL,'1998-05-03','Santiago Sofía','DNI','27406248343','3514950867'),(69,'Molina Torres','paulamolinatorres@gmail.com','40554816',NULL,'1998-01-05','Paula','DNI','27405548165','26274754229'),(70,'Herrero','gonzaloherrero@gmail.com','42580099',NULL,'2001-02-23','Gonzalo','DNI','20425800990','114296963'),(71,'Medina','brendaramiromedina@gmail.com','42713328',NULL,'2001-08-01','Brenda Ramiro','DNI','20427133282','2614698769'),(72,'Ruiz','pedroantonellaruiz@gmail.com','42714825',NULL,'2001-01-18','Pedro Antonella','DNI','23427148254','35434596807'),(73,'García','julietagarcia@gmail.com','45805934',NULL,'2004-04-22','Julieta','DNI','27458059344','2614770267'),(74,'Ríos','florenciarios@gmail.com','43116970',NULL,'2002-02-20','Florencia','DNI','27431169709','114605195'),(75,'Silva','paulasilva@gmail.com','41455884',NULL,'1999-03-08','Paula','DNI','20414558845','3514218929'),(76,'Domínguez','ezequieldominguez@gmail.com','40475763',NULL,'1998-02-02','Ezequiel','DNI','20404757637','3514097822'),(77,'Torres','mateocarlatorres@gmail.com','44757168',NULL,'2003-03-11','Mateo Carla','DNI','23447571684','23204890489'),(78,'Pérez','nicolaspedroperez@gmail.com','43524902',NULL,'2002-01-30','Nicolás Pedro','DNI','20435249028','3514985414'),(79,'Cruz','ivancruz@gmail.com','45532342',NULL,'2004-06-01','Iván','DNI','20455323429','2214774640'),(80,'Flores Sánchez','sofiafloressanchez@gmail.com','42912804',NULL,'2000-05-07','Sofía','DNI','27429128043','3514294587'),(81,'Vargas','mateodiegovargas@gmail.com','45882554',NULL,'2004-10-11','Mateo Diego','DNI','20458825549','26274860682'),(82,'Herrera','micaelaherrera@gmail.com','42160263',NULL,'2001-10-06','Micaela','DNI','27421602633','26244921869'),(83,'Herrera','florenciaherrera@gmail.com','42799550',NULL,'2001-02-02','Florencia','DNI','20427995500','3514903649'),(84,'Cruz','nicolascruz@gmail.com','40565579',NULL,'1998-03-20','Nicolás','DNI','23405655799','3514987185'),(85,'García','diegogarcia@gmail.com','42628038',NULL,'2000-12-14','Diego','DNI','27426280383','26274455415'),(86,'Medina Quiroga','ramiromicaelamedinaquiroga@gmail.com','42512340',NULL,'2001-09-03','Ramiro Micaela','DNI','20425123409','3514964622'),(87,'Suárez','valentinasuarez@gmail.com','43117301',NULL,'2002-02-03','Valentina','DNI','27431173013','23204332025'),(88,'Rodríguez','valentinafacundorodriguez@gmail.com','45921406',NULL,'2004-12-30','Valentina Facundo','DNI','27459214068','114776120'),(89,'Morales Medina','luciamoralesmedina@gmail.com','42251083',NULL,'2001-01-07','Lucía','DNI','20422510835','26274445302'),(90,'Benítez','nicolasbenitez@gmail.com','44252572',NULL,'2003-03-15','Nicolás','DNI','20442525723','23204819410'),(91,'Gómez Ponce','abrilgomezponce@gmail.com','44089814',NULL,'2003-07-02','Abril','DNI','27440898144','2614115807'),(92,'Gómez Herrera','santiagogomezherrera@gmail.com','42855662',NULL,'2000-04-11','Santiago','DNI','20428556624','2214854224'),(93,'Suárez','abrilsuarez@hotmail.com','45797549',NULL,'2004-03-30','Abril','DNI','20457975490','114742257'),(94,'Morales Ríos','mateomoralesrios@gmail.com','42134628',NULL,'2000-04-07','Mateo','DNI','27421346289','23204801857'),(95,'Vargas','nicolasvargas@gmail.com','42992842',NULL,'2001-04-02','Nicolás','DNI','20429928428','2214392816'),(96,'Herrero','facundoherrero@gmail.com','44277932',NULL,'2003-12-18','Facundo','DNI','27442779320','23204084352'),(97,'Sánchez','diegosanchez@gmail.com','40222086',NULL,'1998-11-24','Diego','DNI','20402220865','35434956509'),(98,'Torres','juantorres@gmail.com','42747581',NULL,'2000-07-13','Juan','DNI','27427475811','2214368312'),(99,'Morales Castro','camilamoralescastro@gmail.com','43418373',NULL,'2002-06-05','Camila','DNI','27434183737','2614118898'),(100,'Martínez Silva','santiagomartinez@gmail.com','44459381',NULL,'2003-11-09','Santiago','DNI','23444593814','2614254855'),(101,'Acosta','antonellaacosta@gmail.com','45126882',NULL,'2004-07-20','Antonella','DNI','20451268822','114957117'),(102,'Morales','valentinamorales@gmail.com','42235612',NULL,'2001-08-07','Valentina','DNI','20422356127','2614697141'),(103,'Acosta','abrilacosta@gmail.com','42354508',NULL,'2001-07-20','Abril','DNI','23423545089','26244325121'),(104,'García','pedrogarcia@gmail.com','44616886',NULL,'2003-06-19','Pedro','DNI','20446168860','35434133356'),(105,'Gómez','franciscogomez@gmail.com','44617024',NULL,'2003-04-29','Francisco','DNI','20446170245','3514738463'),(106,'López','santiagolopez@gmail.com','43007540',NULL,'2002-04-11','Santiago','DNI','20430075404','26244958596'),(107,'Morales','franciscomorales@gmail.com','41742225',NULL,'1999-08-30','Francisco','DNI','20417422251','2614954656'),(108,'Sánchez','franciscosanchez@gmail.com','40240062',NULL,'1998-04-28','Francisco','DNI','20402400626','3514575717'),(109,'Morales Ortiz','leandromateomoralesortiz@gmail.com','43949401',NULL,'2002-07-01','Leandro Mateo','DNI','20439494019','2614593165'),(110,'Benítez','luciabenitez@gmail.com','42901393',NULL,'2001-04-13','Lucía','DNI','27429013939','3514749718'),(111,'Torres Romero','facundotorresromero@gmail.com','44074299',NULL,'2003-06-23','Facundo','DNI','20440742999','23204759730'),(112,'Flores','ramiroantonellaflores@gmail.com','42292004',NULL,'2000-01-03','Ramiro Antonella','DNI','27422920043','35434741373'),(113,'Ruiz','sofiaruiz@gmail.com','44224643',NULL,'2003-10-01','Sofía','DNI','20442246433','2614758975'),(114,'Medina','valentinamedina@gmail.com','40758490',NULL,'1998-03-27','Valentina','DNI','27407584908','2214087375'),(115,'Herrero','ivanfranciscoherrero@gmail.com','43254801',NULL,'2002-06-22','Iván Francisco','DNI','27432548010','2214663632'),(116,'Flores','abrilflores@gmail.com','40846721',NULL,'1998-01-14','Abril','DNI','27408467212','3514850751'),(117,'López','santiagolopez@gmail.com','45199659',NULL,'2004-11-24','Santiago','DNI','20451996593','35434943041'),(118,'Gómez','ramiropaulagomez@gmail.com','45101639',NULL,'2004-01-12','Ramiro Paula','DNI','27451016399','23204082311'),(119,'Silva','leandrosilva@gmail.com','44371507',NULL,'2003-05-11','Leandro','DNI','27443715075','26274224200'),(120,'Ponce','juangonzaloponce@gmail.com','45431071',NULL,'2004-11-17','Juan Gonzalo','DNI','27454310719','26244659870'),(121,'Flores','valentinaflores@gmail.com','43905798',NULL,'2002-09-23','Valentina','DNI','20439057980','26274699633'),(122,'Morales','diegomorales@gmail.com','41706073',NULL,'1999-08-11','Diego','DNI','20417060732','3514111761'),(123,'Martínez','gonzalomartinez@gmail.com','45063556',NULL,'2004-01-17','Gonzalo','DNI','27450635567','3514900279'),(124,'Ríos','agustinrios@gmail.com','42763587',NULL,'2000-07-17','Agustín','DNI','27427635878','3514399287'),(125,'Medina','julietamedina@gmail.com','40839482',NULL,'1998-09-20','Julieta','DNI','20408394822','23204644251'),(126,'Romero','camilaromero@gmail.com','45260735',NULL,'2004-10-28','Camila','DNI','20452607353','26274807121'),(127,'Flores Gómez','ramirofloresgomez@gmail.com','40199448',NULL,'1998-09-18','Ramiro','DNI','27401994489','26274432003'),(128,'Benítez','micaelabenitez@gmail.com','42146991',NULL,'2001-08-25','Micaela','DNI','27421469917','2214028903'),(129,'Medina','ramiromedina@gmail.com','45192401',NULL,'2004-12-15','Ramiro','DNI','27451924015','2614418004'),(130,'Molina Ortiz','santiagomolinaortiz@yahoo.com','45485100',NULL,'2004-11-10','Santiago','DNI','20454851006','35434645075'),(131,'Herrera','franciscoherrera@gmail.com','44916964',NULL,'2003-10-04','Francisco','DNI','20449169647','26274358716'),(132,'Silva','martinasilva@gmail.com','40464656',NULL,'1998-08-27','Martina','DNI','20404646568','35434729868'),(133,'Ortiz','franciscoortiz@gmail.com','44053045',NULL,'2003-08-20','Francisco','DNI','20440530452','3514158654'),(134,'Cruz','santiagojuancruz@gmail.com','45097793',NULL,'2004-02-11','Santiago Juan','DNI','20450977935','35434807059'),(135,'Martínez','antonellaabrilmartinez@gmail.com','40174389',NULL,'1998-09-11','Antonella Abril','DNI','27401743893','114405983'),(136,'Morales','brendamorales@gmail.com','40509231',NULL,'1998-05-25','Brenda','DNI','27405092315','2614951442'),(137,'Suárez','juansuarez@gmail.com','45224130',NULL,'2004-05-10','Juan','DNI','27452241302','3514065418'),(138,'Ortiz','carolinamateoortiz@gmail.com','43946279',NULL,'2002-11-17','Carolina Mateo','DNI','20439462796','2614444026'),(139,'Domínguez','pedrodominguez@gmail.com','42172634',NULL,'2001-10-22','Pedro','DNI','27421726340','114721350'),(140,'Benítez','agustinbenitez@gmail.com','45002260',NULL,'2004-04-13','Agustín','DNI','27450022603','26244677600'),(141,'Herrera','sofiaherrera@gmail.com','40278085',NULL,'1998-12-18','Sofía','DNI','27402780857','26274819853'),(142,'López Pérez','tomaslopezperez@gmail.com','42299105',NULL,'2001-10-19','Tomás','DNI','27422991056','26274349613'),(143,'Quiroga Torres','carlatorres@hotmail.com','42730429',NULL,'2000-04-10','Carla Brenda','DNI','27427304294','2614821139'),(144,'Flores','ezequielflores@gmail.com','42162316',NULL,'2001-10-15','Ezequiel','DNI','20421623164','114276356'),(145,'Fernández','carlafernandez@gmail.com','45311120',NULL,'2004-09-02','Carla','DNI','20453111203','23204305667'),(146,'Torres','santiagoluciatorres@gmail.com','40061324',NULL,'1998-04-02','Santiago Lucía','DNI','23400613249','3514743917'),(147,'Romero','gonzaloromero@gmail.com','40784309',NULL,'1998-04-06','Gonzalo','DNI','27407843091','3514422969'),(148,'Alvarez','brendaalvarez@gmail.com','44059942',NULL,'2003-04-19','Brenda','DNI','20440599428','114770924'),(149,'Sánchez','carolinasanchez@gmail.com','42612554',NULL,'2000-09-20','Carolina','DNI','23426125544','3514998518'),(150,'Ortiz','florenciaortiz@gmail.com','41527276',NULL,'1999-06-17','Florencia','DNI','20415272767','26274247793'),(151,'Flores Benítez','leandrofloresbenitez@gmail.com','42059642',NULL,'2000-05-09','Leandro','DNI','20420596422','3514995520'),(152,'Medina','pedroagustinmedina@gmail.com','42892697',NULL,'2001-02-23','Pedro Agustín','DNI','20428926979','3514529379'),(153,'Herrero','franciscopedroherrero@gmail.com','42071849',NULL,'2001-10-02','Francisco Pedro','DNI','20420718498','2614580948'),(154,'Flores','tomasflores@gmail.com','44708011',NULL,'2003-08-08','Tomás','DNI','20447080118','3514059309'),(155,'Pérez','ivanperez@gmail.com','42423389',NULL,'2000-09-26','Iván','DNI','20424233898','3514839464'),(156,'Torres','juantorres@gmail.com','40987335',NULL,'1998-09-01','Juan','DNI','23409873359','2614342364'),(157,'Quiroga','juanquiroga@gmail.com','44607040',NULL,'2003-06-01','Juan','DNI','20446070402','3514122607'),(158,'Herrero Gómez','gonzalogomez@gmail.com','44649468',NULL,'2003-01-27','Gonzalo Iván','DNI','20446494687','114519607'),(159,'Molina','micaelamolina@gmail.com','44439589',NULL,'2003-10-25','Micaela','DNI','27444395899','26274490359'),(160,'Acosta','julietaacosta@gmail.com','44980110',NULL,'2003-09-21','Julieta','DNI','27449801100','26244177255'),(161,'Ortiz Torres','sofiaortiztorres@gmail.com','42214181',NULL,'2001-06-21','Sofía','DNI','27422141818','23204592267'),(162,'Morales','paulamorales@gmail.com','42250280',NULL,'2000-12-01','Paula','DNI','27422502802','26244875608'),(163,'Flores','martinaflores@gmail.com','43415011',NULL,'2002-05-03','Martina','DNI','20434150117','23204179499'),(164,'Vargas','gonzalovargas@gmail.com','45704318',NULL,'2004-08-17','Gonzalo','DNI','27457043185','114233310'),(165,'Ponce Romero','luciaponceromero@gmail.com','42479434',NULL,'2001-01-11','Lucía','DNI','27424794347','2614364848'),(166,'Cruz','julietacruz@gmail.com','45974146',NULL,'2004-08-09','Julieta','DNI','20459741462','26274360066'),(167,'Ponce','julietaponce@gmail.com','42009767',NULL,'2001-01-05','Julieta','DNI','27420097676','3514871798'),(168,'Herrera','juanherrera@gmail.com','44651332',NULL,'2003-05-17','Juan','DNI','20446513320','3514860793'),(169,'Domínguez Cruz','juandominguezcruz@gmail.com','41076819',NULL,'1999-01-16','Juan','DNI','20410768195','3514200688'),(170,'Silva','santiagosilva@gmail.com','40530458','2025-04-19','1998-09-16','Santiago','DNI','27405304584','2214393807'),(171,'Molina','nicolasmolina@gmail.com','41138890',NULL,'1999-01-06','Nicolás','DNI','27411388900','26244922802'),(172,'Torres','carolinatorres@gmail.com','42923653',NULL,'2001-01-25','Carolina','DNI','20429236534','2614112974'),(173,'Rodríguez','facundocamilarodriguez@gmail.com','45921981','2025-07-19','2004-05-22','Facundo Camila','DNI','20459219812','35434434003'),(174,'Castro','santiagocastro@gmail.com','42387477',NULL,'2000-08-01','Santiago','DNI','27423874770','2614549359'),(175,'Herrero','diegoherrero@gmail.com','42165409',NULL,'2001-04-29','Diego','DNI','27421654099','3514351371'),(176,'Vargas','leandrovargas@gmail.com','41874244',NULL,'1999-09-24','Leandro','DNI','27418742440','26244643019'),(177,'Ríos','diegorios@gmail.com','40641390',NULL,'1998-11-19','Diego','DNI','20406413900','26274403396'),(178,'Ruiz','gonzalomicaelaruiz@gmail.com','44700305','2025-08-30','2003-09-02','Gonzalo Micaela','DNI','27447003053','35434885438'),(179,'Quiroga','luciaquiroga@gmail.com','40977017',NULL,'1998-07-05','Lucía','DNI','20409770178','2214112734'),(180,'Morales Castro','camilamoralescastro@gmail.com','43418373',NULL,'2003-09-02','Camila','DNI','27434183737','3514351384');
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
INSERT INTO `EstudianteCarrera` VALUES (1,28,1,2,1,1,'2015-03-09',NULL,'41948',1),(2,28,1,2,2,2,'2022-03-06',NULL,'58613',1),(3,28,1,2,3,3,'2015-03-09',NULL,'45241',1),(4,28,1,2,4,4,'2017-03-16',NULL,'52419',1),(5,29,1,24,5,5,'2024-03-02',NULL,'45161',18),(6,29,1,24,6,6,'2022-03-17',NULL,'49094',18),(7,29,1,24,7,7,'2023-03-04',NULL,'48611',18),(8,29,1,24,8,8,'2021-03-11',NULL,'55751',18),(9,4,1,16,9,9,'2022-03-10',NULL,'40945',11),(10,4,1,16,10,10,'2018-03-21',NULL,'43988',11),(11,4,1,16,11,11,'2017-03-06',NULL,'50635',11),(12,4,1,16,12,12,'2024-03-03',NULL,'55168',11),(13,8,1,3,13,13,'2024-03-02',NULL,'48282',8),(14,8,1,3,14,14,'2017-03-11',NULL,'41290',8),(15,8,1,3,15,15,'2015-03-19',NULL,'50512',8),(16,8,1,3,16,16,'2023-03-06',NULL,'48227',8),(17,18,1,6,17,17,'2017-03-11',NULL,'52637',3),(18,18,1,6,18,18,'2018-03-13',NULL,'44478',3),(19,18,1,6,19,19,'2023-03-06',NULL,'53596',3),(20,18,1,6,20,20,'2024-03-18',NULL,'47201',3),(21,14,1,27,21,21,'2016-03-12',NULL,'53911',20),(22,14,1,27,22,22,'2017-03-07',NULL,'48043',20),(23,14,1,27,23,23,'2020-03-05',NULL,'49029',20),(24,14,1,27,24,24,'2024-03-10',NULL,'53023',20),(25,27,1,1,25,25,'2024-03-03',NULL,'45484',1),(26,27,1,1,26,26,'2018-03-10',NULL,'58892',1),(27,27,1,1,27,27,'2025-03-17',NULL,'58358',1),(28,27,1,1,28,28,'2023-03-17',NULL,'42739',1),(29,31,1,12,29,29,'2019-03-06',NULL,'40384',8),(30,31,1,12,30,30,'2016-03-13',NULL,'49845',8),(31,31,1,12,31,31,'2018-03-06',NULL,'57041',8),(32,31,1,12,32,32,'2018-03-09',NULL,'49086',8),(33,23,1,5,33,33,'2017-03-15',NULL,'45439',2),(34,23,1,5,34,34,'2023-03-19',NULL,'57698',2),(35,23,1,5,35,35,'2021-03-05',NULL,'42686',2),(36,23,1,5,36,36,'2019-03-11',NULL,'49187',2),(37,13,1,10,37,37,'2025-03-05',NULL,'42394',6),(38,13,1,10,38,38,'2018-03-20',NULL,'55228',6),(39,13,1,10,39,39,'2021-03-01',NULL,'44842',6),(40,13,1,10,40,40,'2016-03-09',NULL,'40700',6),(41,33,1,26,41,41,'2020-03-05',NULL,'57113',19),(42,33,1,26,42,42,'2021-03-06',NULL,'55347',19),(43,33,1,26,43,43,'2015-03-06',NULL,'57383',19),(44,33,1,26,44,44,'2021-03-04',NULL,'44233',19),(45,3,1,11,45,45,'2023-03-18',NULL,'53344',7),(46,3,1,11,46,46,'2024-03-03',NULL,'49178',7),(47,3,1,11,47,47,'2024-03-03',NULL,'56216',7),(48,3,1,11,48,48,'2020-03-17',NULL,'40135',7),(49,9,1,9,49,49,'2019-03-09',NULL,'44863',6),(50,9,1,9,50,50,'2025-03-20',NULL,'48954',6),(51,9,1,9,51,51,'2020-03-10',NULL,'53114',6),(52,9,1,9,52,52,'2016-03-10',NULL,'41183',6),(53,15,1,22,53,53,'2017-03-03',NULL,'42125',16),(54,15,1,22,54,54,'2015-03-15',NULL,'57027',16),(55,15,1,22,55,55,'2022-03-05',NULL,'54583',16),(56,15,1,22,56,56,'2023-03-02',NULL,'54215',16),(57,28,1,2,57,57,'2016-03-18',NULL,'55535',1),(58,28,1,2,58,58,'2020-03-03',NULL,'43752',1),(59,28,1,2,59,59,'2022-03-11',NULL,'40061',1),(60,28,1,2,60,60,'2021-03-02',NULL,'45420',1),(61,29,1,24,61,61,'2025-03-02',NULL,'40205',18),(62,29,1,24,62,62,'2023-03-10',NULL,'49417',18),(63,29,1,24,63,63,'2023-03-16',NULL,'56122',18),(64,29,1,24,64,64,'2022-03-04',NULL,'54790',18),(65,32,1,13,65,65,'2016-03-21',NULL,'56990',8),(66,32,1,13,66,66,'2015-03-16',NULL,'41338',8),(67,32,1,13,67,67,'2017-03-18',NULL,'51455',8),(68,32,1,13,68,68,'2023-03-21',NULL,'49241',8),(69,34,1,28,69,69,'2016-03-13',NULL,'55035',2),(70,34,1,28,70,70,'2018-03-05',NULL,'57896',2),(71,34,1,28,71,71,'2024-03-05',NULL,'59052',2),(72,34,1,28,72,72,'2022-03-11',NULL,'54043',2),(73,35,1,29,73,73,'2016-03-10',NULL,'57391',6),(74,35,1,29,74,74,'2015-03-08',NULL,'50060',6),(75,35,1,29,75,75,'2022-03-07',NULL,'41270',6),(76,35,1,29,76,76,'2019-03-03',NULL,'56381',6),(77,36,1,30,77,77,'2014-03-15',NULL,'57475',7),(78,36,1,30,78,78,'2014-03-07',NULL,'58625',7),(79,36,1,30,79,79,'2015-03-06',NULL,'51898',7),(80,36,1,30,80,80,'2015-03-08',NULL,'58236',7),(81,25,1,8,81,81,'2022-03-18',NULL,'53518',5),(82,25,1,8,82,82,'2015-03-03',NULL,'51922',5),(83,25,1,8,83,83,'2016-03-01',NULL,'59621',5),(84,25,1,8,84,84,'2017-03-08',NULL,'47982',5),(85,24,1,14,85,85,'2018-03-17',NULL,'53153',9),(86,24,1,14,86,86,'2018-03-18',NULL,'47483',9),(87,24,1,14,87,87,'2014-03-21',NULL,'58688',9),(88,24,1,14,88,88,'2025-03-11',NULL,'50489',9),(89,28,1,2,89,89,'2014-03-11',NULL,'45423',1),(90,28,1,2,90,90,'2015-03-09',NULL,'57833',1),(91,28,1,2,91,91,'2025-03-05',NULL,'49895',1),(92,28,1,2,92,92,'2018-03-19',NULL,'48287',1),(93,29,1,24,93,93,'2025-03-04',NULL,'47624',18),(94,29,1,24,94,94,'2017-03-01',NULL,'54253',18),(95,29,1,24,95,95,'2015-03-09',NULL,'53295',18),(96,29,1,24,96,96,'2019-03-18',NULL,'55502',18),(97,10,1,4,97,97,'2022-03-09',NULL,'45569',2),(98,10,1,4,98,98,'2024-03-13',NULL,'49427',2),(99,10,1,4,99,99,'2023-03-10',NULL,'55325',2),(100,10,1,4,100,100,'2024-03-20',NULL,'55535',2),(101,9,1,9,101,101,'2025-03-20',NULL,'56304',6),(102,9,1,9,102,102,'2015-03-17',NULL,'43174',6),(103,9,1,9,103,103,'2019-03-17',NULL,'48422',6),(104,9,1,9,104,104,'2022-03-12',NULL,'54755',6),(105,3,1,11,105,105,'2020-03-04',NULL,'40685',7),(106,3,1,11,106,106,'2014-03-08',NULL,'41458',7),(107,3,1,11,107,107,'2025-03-10',NULL,'56858',7),(108,3,1,11,108,108,'2018-03-18',NULL,'50812',7),(109,15,1,22,109,109,'2021-03-06',NULL,'43252',16),(110,15,1,22,110,110,'2024-03-01',NULL,'47338',16),(111,15,1,22,111,111,'2022-03-16',NULL,'43564',16),(112,15,1,22,112,112,'2022-03-06',NULL,'44549',16),(113,20,1,21,113,113,'2025-03-20',NULL,'48514',15),(114,20,1,21,114,114,'2022-03-05',NULL,'43773',15),(115,20,1,21,115,115,'2014-03-07',NULL,'59018',15),(116,20,1,21,116,116,'2022-03-05',NULL,'47370',15),(117,14,1,27,117,117,'2020-03-07',NULL,'48440',20),(118,14,1,27,118,118,'2015-03-06',NULL,'42996',20),(119,14,1,27,119,119,'2016-03-14',NULL,'41991',20),(120,14,1,27,120,120,'2019-03-06',NULL,'43176',20),(121,19,1,23,121,121,'2025-03-18',NULL,'52100',17),(122,19,1,23,122,122,'2019-03-18',NULL,'51403',17),(123,19,1,23,123,123,'2020-03-08',NULL,'49876',17),(124,19,1,23,124,124,'2024-03-17',NULL,'46509',17),(125,27,1,1,125,125,'2020-03-05',NULL,'40016',1),(126,27,1,1,126,126,'2025-03-02',NULL,'54970',1),(127,27,1,1,127,127,'2022-03-06',NULL,'42427',1),(128,27,1,1,128,128,'2024-03-14',NULL,'47347',1),(129,30,1,25,129,129,'2022-03-18',NULL,'40333',18),(130,30,1,25,130,130,'2019-03-02',NULL,'53116',18),(131,30,1,25,131,131,'2019-03-01',NULL,'48022',18),(132,30,1,25,132,132,'2023-03-14',NULL,'48201',18),(133,31,1,12,133,133,'2023-03-08',NULL,'56633',8),(134,31,1,12,134,134,'2020-03-17',NULL,'58155',8),(135,31,1,12,135,135,'2019-03-06',NULL,'42285',8),(136,31,1,12,136,136,'2025-03-01',NULL,'57469',8),(137,28,1,2,137,137,'2014-03-12',NULL,'41330',1),(138,28,1,2,138,138,'2024-03-05',NULL,'52959',1),(139,28,1,2,139,139,'2023-03-20',NULL,'51858',1),(140,28,1,2,140,140,'2024-03-19',NULL,'48313',1),(141,29,1,24,141,141,'2025-03-10',NULL,'43785',18),(142,29,1,24,142,142,'2016-03-13',NULL,'47140',18),(143,29,1,24,143,143,'2018-03-15',NULL,'46679',18),(144,29,1,24,144,144,'2023-03-01',NULL,'49032',18),(145,32,1,13,145,145,'2024-03-03',NULL,'47553',8),(146,32,1,13,146,146,'2015-03-21',NULL,'44857',8),(147,32,1,13,147,147,'2019-03-03',NULL,'43062',8),(148,32,1,13,148,148,'2023-03-02',NULL,'46238',8),(149,28,1,2,149,149,'2023-03-04',NULL,'45077',1),(150,28,1,2,150,150,'2020-03-04',NULL,'52617',1),(151,28,1,2,151,151,'2017-03-16',NULL,'46172',1),(152,28,1,2,152,152,'2019-03-20',NULL,'55003',1),(153,29,1,24,153,153,'2021-03-04',NULL,'58984',18),(154,29,1,24,154,154,'2016-03-20',NULL,'59256',18),(155,29,1,24,155,155,'2020-03-21',NULL,'58172',18),(156,29,1,24,156,156,'2021-03-03',NULL,'58986',18),(157,32,1,13,157,157,'2015-03-18',NULL,'54065',8),(158,32,1,13,158,158,'2016-03-18',NULL,'52832',8),(159,32,1,13,159,159,'2023-03-15',NULL,'52360',8),(160,32,1,13,160,160,'2023-03-10',NULL,'43509',8),(161,23,1,5,161,161,'2019-03-12','2024-11-15','49845',2),(162,14,1,27,162,162,'2017-03-07',NULL,'54712',20),(163,16,1,20,163,163,'2017-03-07',NULL,'56454',15),(164,19,1,23,164,164,'2019-03-04',NULL,'41006',17),(165,28,1,2,165,165,'2017-03-15',NULL,'47071',1),(166,32,1,13,166,166,'2021-03-08','2025-03-21','44398',8),(167,30,1,25,167,167,'2024-03-02',NULL,'58885',18),(168,30,1,25,168,168,'2025-03-11',NULL,'50650',18),(169,3,1,11,169,169,'2014-03-14',NULL,'48230',7),(170,10,2,4,170,170,'2019-03-09','2024-09-03','52819',2),(171,7,1,19,171,171,'2023-03-09',NULL,'50885',19),(172,7,1,19,172,172,'2022-03-02',NULL,'51472',19),(173,16,2,20,173,173,'2024-03-19','2024-10-31','56466',15),(174,16,1,20,174,174,'2025-03-12',NULL,'42199',15),(175,21,1,15,175,175,'2022-03-18','2025-06-10','56880',10),(176,35,1,29,176,176,'2014-03-07',NULL,'44209',6),(177,5,1,18,177,177,'2020-03-04',NULL,'52908',13),(178,7,2,19,178,178,'2018-03-12','2024-11-11','57981',14),(179,24,1,14,179,179,'2021-03-10',NULL,'43387',9),(180,25,1,8,180,180,'2018-03-02',NULL,'47550',5),(181,4,1,16,5,181,'2022-03-05',NULL,'41391',11),(182,4,1,16,6,182,'2023-03-02',NULL,'41559',11),(183,23,1,5,7,183,'2016-03-18',NULL,'42195',5),(184,23,1,5,8,184,'2020-03-03',NULL,'42842',5),(185,27,1,1,21,185,'2022-03-11',NULL,'43101',1),(186,27,1,1,22,186,'2021-03-02',NULL,'43238',1),(187,27,1,1,23,187,'2025-03-02',NULL,'44127',8),(188,27,1,1,24,188,'2023-03-10',NULL,'44410',8),(189,30,1,25,33,189,'2023-03-16',NULL,'44753',18),(190,30,1,25,34,190,'2022-03-04',NULL,'44807',18),(191,25,1,8,158,191,'2016-03-21',NULL,'45046',5),(192,25,1,8,159,192,'2015-03-16',NULL,'45238',5),(193,4,1,16,160,193,'2017-03-18',NULL,'45443',11),(194,21,1,15,158,194,'2023-03-21',NULL,'45654',10),(195,21,1,15,159,195,'2016-03-13',NULL,'46359',10),(196,21,1,15,160,196,'2018-03-05',NULL,'47600',10),(197,24,1,14,76,197,'2024-03-05',NULL,'47910',9),(198,24,1,14,77,198,'2022-03-11',NULL,'48785',9),(199,4,1,16,76,199,'2016-03-10',NULL,'49104',11),(200,25,1,8,77,200,'2015-03-08',NULL,'49348',5),(201,32,1,13,1,1,'2022-03-07',NULL,'49859',8),(202,32,1,13,2,2,'2019-03-03',NULL,'49861',8),(203,32,1,13,3,3,'2014-03-15',NULL,'49990',8),(204,32,1,13,4,4,'2014-03-07',NULL,'50016',8),(205,28,1,2,16,16,'2020-03-05',NULL,'50409',1),(206,20,1,21,17,17,'2025-03-02',NULL,'50562',15),(207,20,1,21,18,18,'2022-03-06',NULL,'50821',15),(208,20,1,21,19,19,'2024-03-14',NULL,'52201',15),(209,27,1,1,31,31,'2022-03-18',NULL,'52667',1),(210,27,1,1,32,32,'2014-03-07',NULL,'52880',1),(211,23,1,5,40,40,'2022-03-14',NULL,'54578',2),(212,15,1,22,40,40,'2019-03-04',NULL,'55455',16),(213,23,1,5,53,53,'2015-03-09',NULL,'56058',2),(214,13,1,10,53,53,'2019-03-25',NULL,'56260',6),(215,23,1,5,54,54,'2020-03-09',NULL,'56411',2),(216,14,1,27,54,54,'2020-03-12',NULL,'57999',20),(217,13,1,10,55,55,'2019-03-11',NULL,'58395',6),(218,14,1,27,55,55,'2020-03-30',NULL,'58683',20),(219,23,1,5,56,56,'2014-03-15',NULL,'59106',2),(220,13,1,10,56,56,'2022-03-07',NULL,'59531',6);
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
INSERT INTO `EstudianteUniversidad` VALUES (1,1,3,'juan.fernandez@alumnos.frba.utn.edu.ar','2024-07-20',NULL,'2021-08-12',NULL),(2,2,3,'lucia.gomez@alumnos.frba.utn.edu.ar','2024-10-22',NULL,'2021-11-17',NULL),(3,3,3,'santiago.martinez@alumnos.frba.utn.edu.ar','2024-07-16',NULL,'2020-02-12',NULL),(4,4,3,'valentina.rodriguez@alumnos.frba.utn.edu.ar','2025-04-16',NULL,'2023-11-13',NULL),(5,5,9,'mateo.lopez@alumnos.uba.edu.ar','2024-12-15',NULL,'2022-11-03',NULL),(6,6,9,'camila.perez@alumnos.uba.edu.ar','2024-02-26',NULL,'2021-11-09',NULL),(7,7,9,'nicolas.garcia@alumnos.uba.edu.ar','2024-04-11',NULL,'2021-06-22',NULL),(8,8,9,'martina.sanchez@alumnos.uba.edu.ar','2024-11-02',NULL,'2021-12-03',NULL),(9,9,3,'agustin.romero@alumnos.frba.utn.edu.ar','2024-10-08',NULL,'2022-01-19',NULL),(10,10,3,'sofia.herrera@alumnos.frba.utn.edu.ar','2024-04-05',NULL,'2023-12-22',NULL),(11,11,3,'julian.torres@alumnos.frba.utn.edu.ar','2024-04-13',NULL,'2021-03-14',NULL),(12,12,3,'ana.flores@alumnos.frba.utn.edu.ar','2024-06-01',NULL,'2022-04-25',NULL),(13,13,3,'tomas.morales@alumnos.frba.utn.edu.ar','2024-10-23',NULL,'2021-09-30',NULL),(14,14,3,'carla.castro@alumnos.frba.utn.edu.ar','2024-08-31',NULL,'2022-10-10',NULL),(15,15,3,'federico.ortiz@alumnos.frba.utn.edu.ar','2025-01-03',NULL,'2023-04-08',NULL),(16,16,3,'santiago.martinezsilva@alumnos.frba.utn.edu.ar','2025-06-17',NULL,'2022-11-07',NULL),(17,17,2,'antonella.acosta@alumnos.utn.frm.edu.ar','2025-05-15',NULL,'2022-10-30',NULL),(18,18,2,'valentina.morales@alumnos.utn.frm.edu.ar','2025-05-21',NULL,'2023-04-05',NULL),(19,19,2,'abril.acosta@alumnos.utn.frm.edu.ar','2024-02-05',NULL,'2020-03-29',NULL),(20,20,2,'pedro.garcia@alumnos.utn.frm.edu.ar','2024-07-23',NULL,'2020-05-27',NULL),(21,21,1,'francisco.gomez@alumnos.uncuyo.edu.ar','2024-06-01',NULL,'2021-09-06',NULL),(22,22,1,'santiago.lopez@alumnos.uncuyo.edu.ar','2025-01-08',NULL,'2021-12-26',NULL),(23,23,1,'francisco.morales@alumnos.uncuyo.edu.ar','2025-02-18',NULL,'2020-03-19',NULL),(24,24,1,'francisco.sanchez@alumnos.uncuyo.edu.ar','2024-04-29',NULL,'2023-03-04',NULL),(25,25,2,'leandromateo.moralesortiz@alumnos.utn.frm.edu.ar','2025-10-01',NULL,'2020-12-02',NULL),(26,26,2,'lucia.benitez@alumnos.utn.frm.edu.ar','2025-03-15',NULL,'2021-10-09',NULL),(27,27,2,'facundo.torresromero@alumnos.utn.frm.edu.ar','2025-06-19',NULL,'2020-11-11',NULL),(28,28,2,'ramiroantonella.flores@alumnos.utn.frm.edu.ar','2025-05-30',NULL,'2020-01-22',NULL),(29,29,2,'sofia.ruiz@alumnos.utn.frm.edu.ar','2024-12-06',NULL,'2023-06-26',NULL),(30,30,2,'valentina.medina@alumnos.utn.frm.edu.ar','2025-03-17',NULL,'2023-09-06',NULL),(31,31,2,'agustina.pereyra@alumnos.utn.frm.edu.ar','2024-02-25',NULL,'2020-06-05',NULL),(32,32,2,'diego.godoy@alumnos.utn.frm.edu.ar','2025-12-10',NULL,'2021-08-24',NULL),(33,33,1,'florencia.gimenez@alumnos.uncuyo.edu.ar','2024-07-12',NULL,'2021-05-06',NULL),(34,34,1,'tomas.alvarez@alumnos.uncuyo.edu.ar','2024-11-20',NULL,'2021-03-23',NULL),(35,35,1,'maria.benitez@alumnos.uncuyo.edu.ar','2025-05-26',NULL,'2020-01-20',NULL),(36,36,1,'esteban.quiroga@alumnos.uncuyo.edu.ar','2025-02-11',NULL,'2021-05-13',NULL),(37,37,1,'julieta.bustos@alumnos.uncuyo.edu.ar','2024-05-10',NULL,'2020-02-17',NULL),(38,38,1,'nicolas.correa@alumnos.uncuyo.edu.ar','2024-10-25',NULL,'2021-03-19',NULL),(39,39,1,'valeria.carrizo@.uncuyo.edu.ar','2025-09-10',NULL,'2022-09-05',NULL),(40,40,1,'jorge.medina@alumnos.uncuyo.edu.ar','2024-04-27',NULL,'2021-04-06',NULL),(41,41,7,'carla.paredes@alumnos.umaza.edu.ar','2025-06-26',NULL,'2020-10-13',NULL),(42,42,7,'luciano.ferrero@alumnos.umaza.edu.ar','2025-11-06',NULL,'2022-08-10',NULL),(43,43,7,'natalia.oliva@alumnos.umaza.edu.ar','2024-02-29',NULL,'2023-07-09',NULL),(44,44,7,'federico.maidana@alumnos.umaza.edu.ar','2024-08-13',NULL,'2021-01-22',NULL),(45,45,6,'rocio.bustamante@alumnos.ucongreso.edu.ar','2024-10-14',NULL,'2023-06-08',NULL),(46,46,6,'gonzalo.carranza@alumnos.ucongreso.edu.ar','2024-02-05',NULL,'2023-02-12',NULL),(47,47,6,'mariela.cabrera@alumnos.ucongreso.edu.ar','2024-09-21',NULL,'2021-08-09',NULL),(48,48,6,'agustin.suarez@alumnos.ucongreso.edu.ar','2025-04-04',NULL,'2021-05-05',NULL),(49,49,7,'pamela.vazquez@alumnos.umaza.edu.ar','2024-12-23',NULL,'2023-12-01',NULL),(50,50,7,'florencia.morales@alumnos.umaza.edu.ar','2024-08-06',NULL,'2022-05-28',NULL),(51,51,7,'gonzalo.ponce@alumnos.umaza.edu.ar','2024-02-22',NULL,'2024-01-20',NULL),(52,52,7,'valentina.poncemolina@alumnos.umaza.edu.ar','2025-08-13',NULL,'2020-06-29',NULL),(53,53,1,'pedro.castro@alumnos.uncuyo.edu.ar','2025-03-03',NULL,'2021-09-20',NULL),(54,54,1,'micaela.acosta@alumnos.uncuyo.edu.ar','2024-04-05',NULL,'2022-06-18',NULL),(55,55,1,'gonzalo.romero@alumnos.uncuyo.edu.ar','2025-11-11',NULL,'2021-08-30',NULL),(56,56,1,'paula.lopezromero@alumnos.uncuyo.edu.ar','2025-04-26',NULL,'2021-03-17',NULL),(57,57,3,'leandro.ponce@alumnos.frba.utn.edu.ar','2025-04-09',NULL,'2022-12-16',NULL),(58,58,3,'valentina.dominguezortiz@alumnos.frba.utn.edu.ar','2025-09-03',NULL,'2022-06-30',NULL),(59,59,3,'brenda.acosta@alumnos.frba.utn.edu.ar','2025-12-03',NULL,'2022-07-09',NULL),(60,60,3,'ezequiel.molina@alumnos.frba.utn.edu.ar','2024-11-19',NULL,'2022-09-03',NULL),(61,61,9,'pedro.gomezperez@alumnos.uba.edu.ar','2024-05-03',NULL,'2021-12-14',NULL),(62,62,9,'ezequiel.sanchez@alumnos.uba.edu.ar','2025-12-26',NULL,'2023-04-25',NULL),(63,63,9,'paula.fernandezruiz@alumnos.uba.edu.ar','2025-02-11',NULL,'2021-10-23',NULL),(64,64,9,'abrilleandro.perez@alumnos.uba.edu.ar','2024-06-13',NULL,'2022-02-01',NULL),(65,65,3,'mateo.garciaperez@alumnos.frba.utn.edu.ar','2024-01-14',NULL,'2021-11-01',NULL),(66,66,3,'ivan.castro@alumnos.frba.utn.edu.ar','2024-10-29',NULL,'2024-09-24',NULL),(67,67,3,'sofia.acostamartinez@alumnos.frba.utn.edu.ar','2025-12-18',NULL,'2021-04-11',NULL),(68,68,3,'santiagosofia.flores@alumnos.frba.utn.edu.ar','2025-12-30',NULL,'2022-07-09',NULL),(69,69,9,'paula.molinatorres@alumnos.uba.edu.ar','2025-12-25',NULL,'2022-02-20',NULL),(70,70,9,'gonzalo.herrero@alumnos.uba.edu.ar','2024-01-03',NULL,'2023-10-14',NULL),(71,71,9,'brendaramiro.medina@alumnos.uba.edu.ar','2024-02-13',NULL,'2022-08-16',NULL),(72,72,9,'pedroantonella.ruiz@alumnos.uba.edu.ar','2025-10-20',NULL,'2023-04-05',NULL),(73,73,9,'julieta.garcia@alumnos.uba.edu.ar','2025-02-05',NULL,'2022-10-19',NULL),(74,74,9,'florencia.rios@alumnos.uba.edu.ar','2024-02-23',NULL,'2023-03-16',NULL),(75,75,9,'paula.silva@alumnos.uba.edu.ar','2025-01-11',NULL,'2023-05-26',NULL),(76,76,9,'ezequiel.dominguez@alumnos.uba.edu.ar','2024-03-03',NULL,'2021-03-18',NULL),(77,77,9,'mateocarla.torres@alumnos.uba.edu.ar','2024-11-26',NULL,'2021-03-29',NULL),(78,78,9,'nicolaspedro.perez@alumnos.uba.edu.ar','2024-09-05',NULL,'2021-11-26',NULL),(79,79,9,'ivan.cruz@alumnos.uba.edu.ar','2024-01-02',NULL,'2022-02-27',NULL),(80,80,9,'sofia.floressanchez@alumnos.uba.edu.ar','2024-10-18',NULL,'2020-06-21',NULL),(81,81,12,'mateodiego.vargas@alumnos.uca.edu.ar','2024-09-28',NULL,'2021-05-28',NULL),(82,82,12,'micaela.herrera@alumnos.uca.edu.ar','2025-07-26',NULL,'2023-09-26',NULL),(83,83,12,'florencia.herrera@alumnos.uca.edu.ar','2024-03-27',NULL,'2020-03-20',NULL),(84,84,12,'nicolas.cruz@alumnos.uca.edu.ar','2025-01-27',NULL,'2022-03-12',NULL),(85,85,11,'diego.garcia@alumnos.unlp.edu.ar','2024-09-04',NULL,'2024-05-13',NULL),(86,86,11,'ramirmociaela.medinaquiroga@alumnos.unlp.edu.ar','2025-11-01',NULL,'2020-03-02',NULL),(87,87,11,'valentina.suarez@alumnos.unlp.edu.ar','2024-10-26',NULL,'2023-05-08',NULL),(88,88,11,'valentinafacundo.rodriguez@alumnos.unlp.edu.ar','2025-01-13',NULL,'2020-08-01',NULL),(89,89,3,'lucia.moralesmedina@alumnos.frba.utn.edu.ar','2025-07-23',NULL,'2020-11-01',NULL),(90,90,3,'nicolas.benitez@alumnos.frba.utn.edu.ar','2024-12-18',NULL,'2023-02-24',NULL),(91,91,3,'abril.gomezponce@alumnos.frba.utn.edu.ar','2024-09-15',NULL,'2023-01-25',NULL),(92,92,3,'santiago.gomezherrera@alumnos.frba.utn.edu.ar','2025-12-22',NULL,'2020-01-02',NULL),(93,93,9,'abril.suarez@alumnos.uba.edu.ar','2025-08-09',NULL,'2020-08-05',NULL),(94,94,9,'mateo.moralesrios@alumnos.uba.edu.ar','2025-06-03',NULL,'2020-03-06',NULL),(95,95,9,'nicolas.vargas@alumnos.uba.edu.ar','2025-04-23',NULL,'2024-02-12',NULL),(96,96,9,'facundo.herrero@alumnos.uba.edu.ar','2025-04-29',NULL,'2024-10-16',NULL),(97,97,6,'diego.sanchez@alumnos.ucongreso.edu.ar','2024-09-04',NULL,'2021-03-09',NULL),(98,98,6,'juan.torres@alumnos.ucongreso.edu.ar','2024-07-06',NULL,'2023-04-11',NULL),(99,99,6,'camila.moralescastro@alumnos.ucongreso.edu.ar','2025-09-10',NULL,'2020-03-30',NULL),(100,100,6,'santiago.martinezsilva@alumnos.ucongreso.edu.ar','2024-05-14',NULL,'2020-07-03',NULL),(101,101,7,'antonella.acosta@alumnos.umaza.edu.ar','2025-04-28',NULL,'2022-07-02',NULL),(102,102,7,'valentina.morales@alumnos.umaza.edu.ar','2024-09-16',NULL,'2022-03-18',NULL),(103,103,7,'abril.acosta@alumnos.umaza.edu.ar','2024-08-03',NULL,'2023-10-08',NULL),(104,104,7,'pedro.garcia@alumnos.umaza.edu.ar','2024-10-30',NULL,'2023-04-30',NULL),(105,105,6,'francisco.gomez@alumnos.ucongreso.edu.ar','2025-07-20',NULL,'2020-09-30',NULL),(106,106,6,'santiago.lopez@alumnos.ucongreso.edu.ar','2024-07-15',NULL,'2020-04-23',NULL),(107,107,6,'francisco.morales@alumnos.ucongreso.edu.ar','2025-12-28',NULL,'2021-03-30',NULL),(108,108,6,'francisco.sanchez@alumnos.ucongreso.edu.ar','2024-09-29',NULL,'2023-01-27',NULL),(109,109,1,'leandromateo.moralesortiz@alumnos.uncuyo.edu.ar','2025-02-26',NULL,'2020-09-01',NULL),(110,110,1,'lucia.benitez@alumnos.uncuyo.edu.ar','2024-08-30',NULL,'2023-05-26',NULL),(111,111,1,'facundo.torresromero@alumnos.uncuyo.edu.ar','2024-08-15',NULL,'2021-12-27',NULL),(112,112,1,'ramiroantonella.flores@alumnos.uncuyo.edu.ar','2024-08-14',NULL,'2022-08-29',NULL),(113,113,2,'sofia.ruiz@alumnos.utn.frm.edu.ar','2024-04-02',NULL,'2021-10-02',NULL),(114,114,2,'valentina.medina@alumnos.utn.frm.edu.ar','2025-10-23',NULL,'2023-06-10',NULL),(115,115,2,'ivanfrancisco.herrero@alumnos.utn.frm.edu.ar','2024-02-11',NULL,'2020-01-19',NULL),(116,116,2,'abril.flores@alumnos.utn.frm.edu.ar','2025-03-19',NULL,'2020-12-15',NULL),(117,117,1,'santiago.lopez@alumnos.uncuyo.edu.ar','2025-11-18',NULL,'2020-07-04',NULL),(118,118,1,'ramiro.paula.gomez@alumnos.uncuyo.edu.ar','2025-12-28',NULL,'2020-12-28',NULL),(119,119,1,'leandro.silva@alumnos.uncuyo.edu.ar','2025-01-14',NULL,'2021-08-10',NULL),(120,120,1,'juangonzalo.ponce@alumnos.uncuyo.edu.ar','2024-09-12',NULL,'2020-10-30',NULL),(121,121,2,'valentina.flores@alumnos.utn.frm.edu.ar','2024-09-23',NULL,'2021-08-09',NULL),(122,122,2,'diego.morales@alumnos.utn.frm.edu.ar','2025-11-26',NULL,'2023-01-24',NULL),(123,123,2,'gonzalo.martinez@alumnos.utn.frm.edu.ar','2024-12-26',NULL,'2023-05-21',NULL),(124,124,2,'agustin.rios@alumnos.utn.frm.edu.ar','2024-04-24',NULL,'2023-03-30',NULL),(125,125,2,'julieta.medina@alumnos.utn.frm.edu.ar','2025-03-07',NULL,'2022-05-04',NULL),(126,126,2,'camila.romero@alumnos.utn.frm.edu.ar','2025-04-05',NULL,'2020-12-11',NULL),(127,127,2,'ramiro.floresgomez@alumnos.utn.frm.edu.ar','2025-03-08',NULL,'2022-03-14',NULL),(128,128,2,'micaela.benitez@alumnos.utn.frm.edu.ar','2025-10-20',NULL,'2023-03-13',NULL),(129,129,4,'ramiro.medina@alumnos.uda.edu.ar','2025-01-28',NULL,'2023-09-03',NULL),(130,130,4,'santiago.molinaortiz@alumnos.uda.edu.ar','2025-11-07',NULL,'2023-04-17',NULL),(131,131,4,'francisco.herrera@alumnos.uda.edu.ar','2025-12-19',NULL,'2023-03-20',NULL),(132,132,4,'martina.silva@alumnos.uda.edu.ar','2024-08-05',NULL,'2020-03-29',NULL),(133,133,2,'francisco.ortiz@alumnos.utn.frm.edu.ar','2024-10-29',NULL,'2020-07-10',NULL),(134,134,2,'santiagojuan.cruz@alumnos.utn.frm.edu.ar','2024-12-16',NULL,'2021-08-06',NULL),(135,135,2,'antonellaabril.martinez@alumnos.utn.frm.edu.ar','2025-01-10',NULL,'2023-03-20',NULL),(136,136,2,'brenda.morales@alumnos.utn.frm.edu.ar','2024-08-14',NULL,'2021-04-30',NULL),(137,137,3,'juan.suarez@alumnos.frba.utn.edu.ar','2025-10-04',NULL,'2020-10-22',NULL),(138,138,3,'carolinamateo.ortiz@alumnos.frba.utn.edu.ar','2025-06-27',NULL,'2023-07-14',NULL),(139,139,3,'pedro.dominguez@alumnos.frba.utn.edu.ar','2024-04-03',NULL,'2022-02-12',NULL),(140,140,3,'agustin.benitez@alumnos.frba.utn.edu.ar','2025-08-03',NULL,'2020-08-03',NULL),(141,141,9,'sofia.herrera@alumnos.uba.edu.ar','2025-08-05',NULL,'2020-11-21',NULL),(142,142,9,'tomas.lopezperez@alumnos.uba.edu.ar','2024-08-14',NULL,'2021-07-07',NULL),(143,143,9,'carlarbenda.quirogatorres@alumnos.uba.edu.ar','2025-07-10',NULL,'2024-03-07',NULL),(144,144,9,'ezequiel.flores@alumnos.uba.edu.ar','2025-11-15',NULL,'2023-05-04',NULL),(145,145,3,'carla.fernandez@alumnos.frba.utn.edu.ar','2024-06-27',NULL,'2023-02-02',NULL),(146,146,3,'santiagolucia.torres@alumnos.frba.utn.edu.ar','2024-11-03',NULL,'2023-03-06',NULL),(147,147,3,'gonzalo.romero@alumnos.frba.utn.edu.ar','2025-04-06',NULL,'2023-03-27',NULL),(148,148,3,'brenda.alvarez@alumnos.frba.utn.edu.ar','2024-09-30',NULL,'2020-01-05',NULL),(149,149,3,'carolina.sanchez@alumnos.frba.utn.edu.ar','2025-05-24',NULL,'2023-04-05',NULL),(150,150,3,'florencia.ortiz@alumnos.frba.utn.edu.ar','2025-06-13',NULL,'2024-05-14',NULL),(151,151,3,'leandro.floresbenitez@alumnos.frba.utn.edu.ar','2025-07-10',NULL,'2022-02-14',NULL),(152,152,3,'pedroagustin.medina@alumnos.frba.utn.edu.ar','2024-06-04',NULL,'2020-09-23',NULL),(153,153,9,'franciscopedro.herrero@alumnos.uba.edu.ar','2025-11-17',NULL,'2023-06-26',NULL),(154,154,9,'tomas.flores@alumnos.uba.edu.ar','2025-05-07',NULL,'2024-07-24',NULL),(155,155,9,'ivan.perez@alumnos.uba.edu.ar','2024-10-17',NULL,'2020-04-24',NULL),(156,156,9,'juan.torres@alumnos.uba.edu.ar','2025-11-22',NULL,'2022-06-21',NULL),(157,157,3,'juan.quiroga@alumnos.frba.utn.edu.ar','2025-08-04',NULL,'2023-08-02',NULL),(158,158,3,'gonzaloivan.herrerogomez@alumnos.frba.utn.edu.ar','2024-12-23',NULL,'2023-07-17',NULL),(159,159,3,'micaela.molina@alumnos.frba.utn.edu.ar','2025-02-18',NULL,'2021-11-06',NULL),(160,160,3,'julieta.acosta@alumnos.frba.utn.edu.ar','2024-06-30',NULL,'2020-09-14',NULL),(161,161,1,'sofia.ortiztorres@alumnos.uncuyo.edu.ar','2025-07-06',NULL,'2020-10-18','2024-11-15'),(162,162,1,'paula.morales@alumnos.uncuyo.edu.ar','2024-11-09',NULL,'2022-02-21',NULL),(163,163,2,'martina.flores@alumnos.utn.frm.edu.ar','2025-08-16',NULL,'2020-10-30',NULL),(164,164,2,'gonzalo.vargas@alumnos.utn.frm.edu.ar','2025-01-14',NULL,'2022-02-28',NULL),(165,165,3,'lucia.ponceromero@alumnos.frba.utn.edu.ar','2024-07-24',NULL,'2023-05-21',NULL),(166,166,3,'julieta.cruz@alumnos.frba.utn.edu.ar','2025-09-08',NULL,'2023-05-21','2025-03-21'),(167,167,4,'julieta.ponce@alumnos.uda.edu.ar','2025-06-14',NULL,'2023-03-28',NULL),(168,168,4,'juan.herrera@alumnos.uda.edu.ar','2024-03-07',NULL,'2020-12-24',NULL),(169,169,6,'juan.dominguezcruz@alumnos.ucongreso.edu.ar','2025-01-05',NULL,'2021-07-25',NULL),(170,170,6,'santiago.silva@alumnos.ucongreso.edu.ar','2025-03-01','2025-04-19','2022-08-12',NULL),(171,171,7,'nicolas.molina@alumnos.umaza.edu.ar','2024-05-02',NULL,'2022-04-27',NULL),(172,172,7,'carolina.torres@alumnos.umaza.edu.ar','2025-08-06',NULL,'2021-02-28',NULL),(173,173,8,'facundocamila.rodriguez@alumnos.frc.utn.edu.ar','2025-05-08','2025-07-19','2022-03-07',NULL),(174,174,8,'santiago.castro@alumnos.frc.utn.edu.ar','2024-05-11',NULL,'2022-03-12',NULL),(175,175,9,'diego.herrero@alumnos.uba.edu.ar','2024-08-14',NULL,'2023-03-13','2025-06-10'),(176,176,9,'leandro.vargas@alumnos.uba.edu.ar','2024-10-01',NULL,'2021-02-13',NULL),(177,177,10,'diego.rios@alumnos.ucc.edu.ar','2024-06-27',NULL,'2021-01-23',NULL),(178,178,11,'gonzalolicaela.ruiz@alumnos.unlp.edu.ar','2024-01-30','2025-08-30','2021-05-02',NULL),(179,179,11,'lucia.quiroga@alumnos.unlp.edu.ar','2025-05-25',NULL,'2024-08-29',NULL),(180,180,12,'camila.moralescastro@alumnos.uca.edu.ar','2025-04-16',NULL,'2023-11-13',NULL),(181,5,12,'mateo.lopez@alumnos.uca.edu.ar','2024-10-15',NULL,'2022-04-11',NULL),(182,6,12,'camila.perez@alumnos.uca.edu.ar','2024-02-21',NULL,'2021-07-09',NULL),(183,7,12,'nicolas.garcia@alumnos.uca.edu.ar','2024-04-18',NULL,'2021-06-22',NULL),(184,8,12,'martina.sanchez@alumnos.uca.edu.ar','2024-10-02',NULL,'2021-12-22',NULL),(185,21,2,'pedro.garcia@alumnos.utn.frm.edu.ar','2024-07-12',NULL,'2020-05-21',NULL),(186,22,2,'francisco.gomez@alumnos.utn.frm.edu.ar','2024-06-18',NULL,'2023-08-07',NULL),(187,23,2,'santiago.lopez@alumnos.utn.frm.edu.ar','2025-04-08',NULL,'2021-12-20',NULL),(188,24,2,'francisco.morales@alumnos.utn.frm.edu.ar','2025-02-14',NULL,'2020-03-11',NULL),(189,33,4,'florencia.gimenez@alumnos.uda.edu.ar','2024-07-12',NULL,'2021-05-06',NULL),(190,34,4,'tomas.alvarez@alumnos.uda.edu.ar','2024-11-15',NULL,'2021-06-23',NULL),(191,158,12,'gonzaloivan.herrerogomez@alumnos.uca.ar','2024-10-04',NULL,'2021-11-19',NULL),(192,159,12,'micaela.molina@alumnos.uca.ar','2024-06-16',NULL,'2020-02-14',NULL),(193,160,12,'julieta.acosta@alumnos.uca.edu.ar','2025-04-18',NULL,'2023-11-18',NULL),(194,158,9,'gonzaloivan.herrerogomez@alumnos.uba.ar','2024-12-07',NULL,'2023-07-19',NULL),(195,159,9,'micaela.molina@alumnos.uba.ar','2025-02-21',NULL,'2021-11-17',NULL),(196,160,9,'julieta.acosta@alumnos.uba.ar','2024-06-21',NULL,'2020-09-23',NULL),(197,76,11,'ezequiel.dominguez@alumnos.unlp.edu.ar','2024-06-03',NULL,'2021-04-18',NULL),(198,77,11,'mateocarla.torres@alumnos.unlp.edu.ar','2024-10-26',NULL,'2024-09-25',NULL),(199,76,12,'ezequiel.dominguez@alumnos.uca.edu.ar','2025-07-21',NULL,'2023-04-21',NULL),(200,77,12,'mateocarla.torres@alumnos.uca.edu.ar','2024-02-15',NULL,'2020-03-13',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Postulacion`
--

/*!40000 ALTER TABLE `Postulacion` DISABLE KEYS */;
INSERT INTO `Postulacion` VALUES (1,3,3,26,6,'2024-10-29 00:00:00','POS001',1),(2,3,3,26,5,'2024-10-10 00:00:00','POS002',2),(3,3,3,26,6,'2024-10-11 00:00:00','POS003',3),(4,3,3,30,6,'2024-10-07 00:00:00','POS004',4),(5,3,3,26,5,'2024-10-31 00:00:00','POS005',5),(6,3,3,26,6,'2024-11-12 00:00:00','POS006',6),(7,3,3,29,6,'2024-10-16 00:00:00','POS007',7),(8,3,3,27,5,'2024-10-15 00:00:00','POS008',8),(9,3,4,29,6,'2024-10-08 00:00:00','POS009',9),(10,3,4,26,6,'2024-11-02 00:00:00','POS010',10),(11,3,4,26,5,'2024-11-09 00:00:00','POS011',11),(12,3,4,28,6,'2024-10-28 00:00:00','POS012',12),(13,3,4,26,5,'2024-11-01 00:00:00','POS013',13),(14,3,4,28,6,'2024-10-12 00:00:00','POS014',14),(15,3,4,29,5,'2024-10-24 00:00:00','POS015',15),(16,3,4,27,5,'2024-11-08 00:00:00','POS016',16),(17,4,5,27,6,'2025-05-14 00:00:00','POS017',17),(18,4,5,27,5,'2025-06-08 00:00:00','POS018',18),(19,4,5,29,6,'2025-06-03 00:00:00','POS019',19),(20,4,5,28,5,'2025-05-16 00:00:00','POS020',20),(21,4,5,28,6,'2025-05-15 00:00:00','POS021',21),(22,4,5,27,6,'2025-05-19 00:00:00','POS022',22),(23,4,5,30,5,'2025-05-24 00:00:00','POS023',23),(24,4,5,28,5,'2025-05-12 00:00:00','POS024',24),(25,4,6,28,6,'2025-05-27 00:00:00','POS025',25),(26,4,6,30,5,'2025-05-26 00:00:00','POS026',26),(27,4,6,29,5,'2025-05-13 00:00:00','POS027',27),(28,4,6,28,5,'2025-05-15 00:00:00','POS028',28),(29,4,6,27,5,'2025-05-29 00:00:00','POS029',29),(30,4,6,29,5,'2025-05-30 00:00:00','POS030',30),(31,4,6,29,5,'2025-05-21 00:00:00','POS031',31),(32,4,6,26,6,'2025-06-07 00:00:00','POS032',32),(33,5,7,28,5,'2024-10-01 00:00:00','POS033',33),(34,5,7,27,5,'2024-10-26 00:00:00','POS034',34),(35,5,7,26,6,'2024-09-25 00:00:00','POS035',35),(36,5,7,25,6,'2024-09-30 00:00:00','POS036',36),(37,5,7,28,6,'2024-10-17 00:00:00','POS037',37),(38,5,7,27,6,'2024-10-02 00:00:00','POS038',38),(39,5,7,26,6,'2024-10-06 00:00:00','POS039',39),(40,5,7,25,5,'2024-10-18 00:00:00','POS040',40),(41,5,7,28,6,'2024-10-10 00:00:00','POS041',41),(42,5,7,27,6,'2024-10-09 00:00:00','POS042',42),(43,5,7,26,5,'2024-10-25 00:00:00','POS043',43),(44,5,7,25,6,'2024-10-23 00:00:00','POS044',44),(45,5,8,28,6,'2024-10-27 00:00:00','POS045',45),(46,5,8,27,6,'2024-10-19 00:00:00','POS046',46),(47,5,8,26,5,'2024-10-25 00:00:00','POS047',47),(48,5,8,25,6,'2024-10-09 00:00:00','POS048',48),(49,5,8,28,5,'2024-10-08 00:00:00','POS049',49),(50,5,8,27,6,'2024-10-22 00:00:00','POS050',50),(51,5,8,26,5,'2024-10-09 00:00:00','POS051',51),(52,5,8,25,6,'2024-10-23 00:00:00','POS052',52),(53,5,8,28,6,'2024-09-24 00:00:00','POS053',53),(54,5,8,27,6,'2024-10-09 00:00:00','POS054',54),(55,5,8,26,6,'2024-10-09 00:00:00','POS055',55),(56,5,8,25,6,'2024-09-26 00:00:00','POS056',56),(57,6,9,28,5,'2025-02-08 00:00:00','POS057',57),(58,6,9,27,6,'2025-02-18 00:00:00','POS058',58),(59,6,9,26,6,'2025-02-05 00:00:00','POS059',59),(60,6,9,25,5,'2025-02-21 00:00:00','POS060',60),(61,6,9,28,6,'2025-03-04 00:00:00','POS061',61),(62,6,9,27,5,'2025-02-23 00:00:00','POS062',62),(63,6,9,26,5,'2025-03-02 00:00:00','POS063',63),(64,6,9,25,6,'2025-02-23 00:00:00','POS064',64),(65,6,9,28,6,'2025-02-11 00:00:00','POS065',65),(66,6,9,27,6,'2025-02-15 00:00:00','POS066',66),(67,6,9,26,6,'2025-02-14 00:00:00','POS067',67),(68,6,9,25,6,'2025-02-17 00:00:00','POS068',68),(69,6,10,28,5,'2025-02-25 00:00:00','POS069',69),(70,6,10,27,5,'2025-02-22 00:00:00','POS070',70),(71,6,10,26,6,'2025-02-08 00:00:00','POS071',71),(72,6,10,25,5,'2025-02-05 00:00:00','POS072',72),(73,6,10,28,5,'2025-02-18 00:00:00','POS073',73),(74,6,10,27,6,'2025-02-14 00:00:00','POS074',74),(75,6,10,26,6,'2025-02-19 00:00:00','POS075',75),(76,6,10,25,5,'2025-02-21 00:00:00','POS076',76),(77,6,10,28,5,'2025-03-03 00:00:00','POS077',77),(78,6,10,27,5,'2025-02-13 00:00:00','POS078',78),(79,6,10,26,5,'2025-02-08 00:00:00','POS079',79),(80,6,10,25,5,'2025-02-27 00:00:00','POS080',80),(81,7,11,28,6,'2024-12-31 00:00:00','POS081',81),(82,7,11,27,5,'2025-01-01 00:00:00','POS082',82),(83,7,11,29,6,'2025-01-05 00:00:00','POS083',83),(84,7,11,29,5,'2024-12-13 00:00:00','POS084',84),(85,7,11,30,6,'2025-01-07 00:00:00','POS085',85),(86,7,11,30,5,'2025-01-11 00:00:00','POS086',86),(87,7,11,30,6,'2025-01-01 00:00:00','POS087',87),(88,7,11,29,5,'2024-12-22 00:00:00','POS088',88),(89,7,12,29,6,'2025-01-17 00:00:00','POS089',89),(90,7,12,29,6,'2025-01-14 00:00:00','POS090',90),(91,7,12,26,5,'2025-01-13 00:00:00','POS091',91),(92,7,12,30,6,'2024-12-18 00:00:00','POS092',92),(93,7,12,28,6,'2024-12-15 00:00:00','POS093',93),(94,7,12,27,5,'2025-01-11 00:00:00','POS094',94),(95,7,12,28,6,'2025-01-09 00:00:00','POS095',95),(96,7,12,28,6,'2024-12-20 00:00:00','POS096',96),(97,8,13,30,5,'2024-12-07 00:00:00','POS097',97),(98,8,13,26,5,'2024-12-13 00:00:00','POS098',98),(99,8,13,27,6,'2024-12-16 00:00:00','POS099',99),(100,8,13,28,5,'2025-01-02 00:00:00','POS100',100),(101,8,13,29,6,'2024-12-17 00:00:00','POS101',101),(102,8,13,30,5,'2024-12-10 00:00:00','POS102',102),(103,8,13,27,6,'2025-01-01 00:00:00','POS103',103),(104,8,13,28,6,'2025-01-02 00:00:00','POS104',104),(105,8,14,30,5,'2024-12-14 00:00:00','POS105',105),(106,8,14,26,6,'2025-01-07 00:00:00','POS106',106),(107,8,14,30,6,'2025-01-02 00:00:00','POS107',107),(108,8,14,30,6,'2024-12-04 00:00:00','POS108',108),(109,8,14,30,6,'2024-12-29 00:00:00','POS109',109),(110,8,14,29,5,'2024-12-24 00:00:00','POS110',110),(111,8,14,26,6,'2024-12-17 00:00:00','POS111',111),(112,8,14,30,6,'2024-12-09 00:00:00','POS112',112),(113,11,17,28,6,'2024-09-15 00:00:00','POS113',113),(114,11,17,27,6,'2024-09-20 00:00:00','POS114',114),(115,11,17,26,6,'2024-10-03 00:00:00','POS115',115),(116,11,17,25,6,'2024-09-06 00:00:00','POS116',116),(117,11,17,28,5,'2024-10-04 00:00:00','POS117',117),(118,11,17,27,5,'2024-09-25 00:00:00','POS118',118),(119,11,17,26,5,'2024-09-12 00:00:00','POS119',119),(120,11,17,25,6,'2024-09-20 00:00:00','POS120',120),(121,11,17,28,5,'2024-09-08 00:00:00','POS121',121),(122,11,17,27,6,'2024-09-06 00:00:00','POS122',122),(123,11,17,26,5,'2024-09-05 00:00:00','POS123',123),(124,11,17,25,6,'2024-09-07 00:00:00','POS124',124),(125,11,18,28,6,'2024-10-03 00:00:00','POS125',125),(126,11,18,27,5,'2024-09-19 00:00:00','POS126',126),(127,11,18,26,6,'2024-09-10 00:00:00','POS127',127),(128,11,18,25,5,'2024-09-26 00:00:00','POS128',128),(129,11,18,28,5,'2024-10-01 00:00:00','POS129',129),(130,11,18,27,6,'2024-09-20 00:00:00','POS130',130),(131,11,18,26,6,'2024-10-04 00:00:00','POS131',131),(132,11,18,25,6,'2024-09-11 00:00:00','POS132',132),(133,11,18,28,6,'2024-10-05 00:00:00','POS133',133),(134,11,18,27,5,'2024-09-20 00:00:00','POS134',134),(135,11,18,26,6,'2024-09-05 00:00:00','POS135',135),(136,11,18,25,5,'2024-10-02 00:00:00','POS136',136),(137,12,19,28,6,'2024-09-28 00:00:00','POS137',137),(138,12,19,27,6,'2024-10-11 00:00:00','POS138',138),(139,12,19,26,6,'2024-10-05 00:00:00','POS139',139),(140,12,19,25,6,'2024-10-14 00:00:00','POS140',140),(141,12,19,28,5,'2024-10-13 00:00:00','POS141',141),(142,12,19,27,6,'2024-10-12 00:00:00','POS142',142),(143,12,19,26,6,'2024-10-06 00:00:00','POS143',143),(144,12,19,25,5,'2024-10-11 00:00:00','POS144',144),(145,12,19,28,5,'2024-09-28 00:00:00','POS145',145),(146,12,19,27,5,'2024-10-06 00:00:00','POS146',146),(147,12,19,26,6,'2024-09-30 00:00:00','POS147',147),(148,12,19,25,5,'2024-10-01 00:00:00','POS148',148),(149,12,20,28,5,'2024-09-26 00:00:00','POS149',149),(150,12,20,27,6,'2024-09-28 00:00:00','POS150',150),(151,12,20,26,5,'2024-10-04 00:00:00','POS151',151),(152,12,20,25,5,'2024-09-26 00:00:00','POS152',152),(153,12,20,28,5,'2024-10-06 00:00:00','POS153',153),(154,12,20,27,5,'2024-10-12 00:00:00','POS154',154),(155,12,20,26,5,'2024-10-02 00:00:00','POS155',155),(156,12,20,25,5,'2024-10-03 00:00:00','POS156',156),(157,12,20,28,6,'2024-09-27 00:00:00','POS157',157),(158,12,20,27,6,'2024-10-09 00:00:00','POS158',158),(159,12,20,26,6,'2024-10-10 00:00:00','POS159',159),(160,12,20,25,6,'2024-10-09 00:00:00','POS160',160);
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
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PostulacionEstado`
--

/*!40000 ALTER TABLE `PostulacionEstado` DISABLE KEYS */;
INSERT INTO `PostulacionEstado` VALUES (1,1,1,'2024-10-29','2024-11-12','2024-10-29'),(2,2,1,'2024-10-10','2024-11-12','2024-10-10'),(3,3,1,'2024-10-11','2024-11-12','2024-10-11'),(4,4,1,'2024-10-07','2024-11-12','2024-10-07'),(5,5,1,'2024-10-31','2024-11-12','2024-10-31'),(6,6,1,'2024-11-12','2024-11-12','2024-11-12'),(7,7,1,'2024-10-16','2024-11-12','2024-10-16'),(8,8,1,'2024-10-15','2024-11-12','2024-10-15'),(9,9,1,'2024-10-08','2024-11-12','2024-10-08'),(10,10,1,'2024-11-02','2024-11-12','2024-11-02'),(11,11,1,'2024-11-09','2024-11-12','2024-11-09'),(12,12,1,'2024-10-28','2024-11-12','2024-10-28'),(13,13,1,'2024-11-01','2024-11-12','2024-11-01'),(14,14,1,'2024-10-12','2024-11-12','2024-10-12'),(15,15,1,'2024-10-24','2024-11-12','2024-10-24'),(16,16,1,'2024-11-08','2024-11-12','2024-11-08'),(17,17,1,'2025-05-14','2025-06-14','2025-05-14'),(18,18,1,'2025-06-08','2025-06-14','2025-06-08'),(19,19,1,'2025-06-03','2025-06-14','2025-06-03'),(20,20,1,'2025-05-16','2025-06-14','2025-05-16'),(21,21,1,'2025-05-15','2025-06-14','2025-05-15'),(22,22,1,'2025-05-19','2025-06-14','2025-05-19'),(23,23,1,'2025-05-24','2025-06-14','2025-05-24'),(24,24,1,'2025-05-12','2025-06-14','2025-05-12'),(25,25,1,'2025-05-27','2025-06-14','2025-05-27'),(26,26,1,'2025-05-26','2025-06-14','2025-05-26'),(27,27,1,'2025-05-13','2025-06-14','2025-05-13'),(28,28,1,'2025-05-15','2025-06-14','2025-05-15'),(29,29,1,'2025-05-29','2025-06-14','2025-05-29'),(30,30,1,'2025-05-30','2025-06-14','2025-05-30'),(31,31,1,'2025-05-21','2025-06-14','2025-05-21'),(32,32,1,'2025-06-07','2025-06-14','2025-06-07'),(33,33,1,'2024-10-01','2024-10-29','2024-10-01'),(34,34,1,'2024-10-26','2024-10-29','2024-10-26'),(35,35,1,'2024-09-25','2024-10-29','2024-09-25'),(36,36,1,'2024-09-30','2024-10-29','2024-09-30'),(37,37,1,'2024-10-17','2024-10-29','2024-10-17'),(38,38,1,'2024-10-02','2024-10-29','2024-10-02'),(39,39,1,'2024-10-06','2024-10-29','2024-10-06'),(40,40,1,'2024-10-18','2024-10-29','2024-10-18'),(41,41,1,'2024-10-10','2024-10-29','2024-10-10'),(42,42,1,'2024-10-09','2024-10-29','2024-10-09'),(43,43,1,'2024-10-25','2024-10-29','2024-10-25'),(44,44,1,'2024-10-23','2024-10-29','2024-10-23'),(45,45,1,'2024-10-27','2024-10-29','2024-10-27'),(46,46,1,'2024-10-19','2024-10-29','2024-10-19'),(47,47,1,'2024-10-25','2024-10-29','2024-10-25'),(48,48,1,'2024-10-09','2024-10-29','2024-10-09'),(49,49,1,'2024-10-08','2024-10-29','2024-10-08'),(50,50,1,'2024-10-22','2024-10-29','2024-10-22'),(51,51,1,'2024-10-09','2024-10-29','2024-10-09'),(52,52,1,'2024-10-23','2024-10-29','2024-10-23'),(53,53,1,'2024-09-24','2024-10-29','2024-09-24'),(54,54,1,'2024-10-09','2024-10-29','2024-10-09'),(55,55,1,'2024-10-09','2024-10-29','2024-10-09'),(56,56,1,'2024-09-26','2024-10-29','2024-09-26'),(57,57,1,'2025-02-08','2025-03-04','2025-02-08'),(58,58,1,'2025-02-18','2025-03-04','2025-02-18'),(59,59,1,'2025-02-05','2025-03-04','2025-02-05'),(60,60,1,'2025-02-21','2025-03-04','2025-02-21'),(61,61,1,'2025-03-04','2025-03-04','2025-03-04'),(62,62,1,'2025-02-23','2025-03-04','2025-02-23'),(63,63,1,'2025-03-02','2025-03-04','2025-03-02'),(64,64,1,'2025-02-23','2025-03-04','2025-02-23'),(65,65,1,'2025-02-11','2025-03-04','2025-02-11'),(66,66,1,'2025-02-15','2025-03-04','2025-02-15'),(67,67,1,'2025-02-14','2025-03-04','2025-02-14'),(68,68,1,'2025-02-17','2025-03-04','2025-02-17'),(69,69,1,'2025-02-25','2025-03-04','2025-02-25'),(70,70,1,'2025-02-22','2025-03-04','2025-02-22'),(71,71,1,'2025-02-08','2025-03-04','2025-02-08'),(72,72,1,'2025-02-05','2025-03-04','2025-02-05'),(73,73,1,'2025-02-18','2025-03-04','2025-02-18'),(74,74,1,'2025-02-14','2025-03-04','2025-02-14'),(75,75,1,'2025-02-19','2025-03-04','2025-02-19'),(76,76,1,'2025-02-21','2025-03-04','2025-02-21'),(77,77,1,'2025-03-03','2025-03-04','2025-03-03'),(78,78,1,'2025-02-13','2025-03-04','2025-02-13'),(79,79,1,'2025-02-08','2025-03-04','2025-02-08'),(80,80,1,'2025-02-27','2025-03-04','2025-02-27'),(81,81,1,'2024-12-31','2025-01-18','2024-12-31'),(82,82,1,'2025-01-01','2025-01-18','2025-01-01'),(83,83,1,'2025-01-05','2025-01-18','2025-01-05'),(84,84,1,'2024-12-13','2025-01-18','2024-12-13'),(85,85,1,'2025-01-07','2025-01-18','2025-01-07'),(86,86,1,'2025-01-11','2025-01-18','2025-01-11'),(87,87,1,'2025-01-01','2025-01-18','2025-01-01'),(88,88,1,'2024-12-22','2025-01-18','2024-12-22'),(89,89,1,'2025-01-17','2025-01-18','2025-01-17'),(90,90,1,'2025-01-14','2025-01-18','2025-01-14'),(91,91,1,'2025-01-13','2025-01-18','2025-01-13'),(92,92,1,'2024-12-18','2025-01-18','2024-12-18'),(93,93,1,'2024-12-15','2025-01-18','2024-12-15'),(94,94,1,'2025-01-11','2025-01-18','2025-01-11'),(95,95,1,'2025-01-09','2025-01-18','2025-01-09'),(96,96,1,'2024-12-20','2025-01-18','2024-12-20'),(97,97,1,'2024-12-07','2025-01-10','2024-12-07'),(98,98,1,'2024-12-13','2025-01-10','2024-12-13'),(99,99,1,'2024-12-16','2025-01-10','2024-12-16'),(100,100,1,'2025-01-02','2025-01-10','2025-01-02'),(101,101,1,'2024-12-17','2025-01-10','2024-12-17'),(102,102,1,'2024-12-10','2025-01-10','2024-12-10'),(103,103,1,'2025-01-01','2025-01-10','2025-01-01'),(104,104,1,'2025-01-02','2025-01-10','2025-01-02'),(105,105,1,'2024-12-14','2025-01-10','2024-12-14'),(106,106,1,'2025-01-07','2025-01-10','2025-01-07'),(107,107,1,'2025-01-02','2025-01-10','2025-01-02'),(108,108,1,'2024-12-04','2025-01-10','2024-12-04'),(109,109,1,'2024-12-29','2025-01-10','2024-12-29'),(110,110,1,'2024-12-24','2025-01-10','2024-12-24'),(111,111,1,'2024-12-17','2025-01-10','2024-12-17'),(112,112,1,'2024-12-09','2025-01-10','2024-12-09'),(113,113,1,'2024-09-15','2024-10-05','2024-09-15'),(114,114,1,'2024-09-20','2024-10-05','2024-09-20'),(115,115,1,'2024-10-03','2024-10-05','2024-10-03'),(116,116,1,'2024-09-06','2024-10-05','2024-09-06'),(117,117,1,'2024-10-04','2024-10-05','2024-10-04'),(118,118,1,'2024-09-25','2024-10-05','2024-09-25'),(119,119,1,'2024-09-12','2024-10-05','2024-09-12'),(120,120,1,'2024-09-20','2024-10-05','2024-09-20'),(121,121,1,'2024-09-08','2024-10-05','2024-09-08'),(122,122,1,'2024-09-06','2024-10-05','2024-09-06'),(123,123,1,'2024-09-05','2024-10-05','2024-09-05'),(124,124,1,'2024-09-07','2024-10-05','2024-09-07'),(125,125,1,'2024-10-03','2024-10-05','2024-10-03'),(126,126,1,'2024-09-19','2024-10-05','2024-09-19'),(127,127,1,'2024-09-10','2024-10-05','2024-09-10'),(128,128,1,'2024-09-26','2024-10-05','2024-09-26'),(129,129,1,'2024-10-01','2024-10-05','2024-10-01'),(130,130,1,'2024-09-20','2024-10-05','2024-09-20'),(131,131,1,'2024-10-04','2024-10-05','2024-10-04'),(132,132,1,'2024-09-11','2024-10-05','2024-09-11'),(133,133,1,'2024-10-05','2024-10-05','2024-10-05'),(134,134,1,'2024-09-20','2024-10-05','2024-09-20'),(135,135,1,'2024-09-05','2024-10-05','2024-09-05'),(136,136,1,'2024-10-02','2024-10-05','2024-10-02'),(137,137,1,'2024-09-28','2024-10-16','2024-09-28'),(138,138,1,'2024-10-11','2024-10-16','2024-10-11'),(139,139,1,'2024-10-05','2024-10-16','2024-10-05'),(140,140,1,'2024-10-14','2024-10-16','2024-10-14'),(141,141,1,'2024-10-13','2024-10-16','2024-10-13'),(142,142,1,'2024-10-12','2024-10-16','2024-10-12'),(143,143,1,'2024-10-06','2024-10-16','2024-10-06'),(144,144,1,'2024-10-11','2024-10-16','2024-10-11'),(145,145,1,'2024-09-28','2024-10-16','2024-09-28'),(146,146,1,'2024-10-06','2024-10-16','2024-10-06'),(147,147,1,'2024-09-30','2024-10-16','2024-09-30'),(148,148,1,'2024-10-01','2024-10-16','2024-10-01'),(149,149,1,'2024-09-26','2024-10-16','2024-09-26'),(150,150,1,'2024-09-28','2024-10-16','2024-09-28'),(151,151,1,'2024-10-04','2024-10-16','2024-10-04'),(152,152,1,'2024-09-26','2024-10-16','2024-09-26'),(153,153,1,'2024-10-06','2024-10-16','2024-10-06'),(154,154,1,'2024-10-12','2024-10-16','2024-10-12'),(155,155,1,'2024-10-02','2024-10-16','2024-10-02'),(156,156,1,'2024-10-03','2024-10-16','2024-10-03'),(157,157,1,'2024-09-27','2024-10-16','2024-09-27'),(158,158,1,'2024-10-09','2024-10-16','2024-10-09'),(159,159,1,'2024-10-10','2024-10-16','2024-10-10'),(160,160,1,'2024-10-09','2024-10-16','2024-10-09'),(161,1,2,'2024-11-12',NULL,'2024-11-12'),(162,2,2,'2024-11-12',NULL,'2024-11-12'),(163,3,2,'2024-11-12',NULL,'2024-11-12'),(164,4,2,'2024-11-12',NULL,'2024-11-12'),(165,5,2,'2024-11-12',NULL,'2024-11-12'),(166,6,2,'2024-11-12',NULL,'2024-11-12'),(167,7,2,'2024-11-12',NULL,'2024-11-12'),(168,8,2,'2024-11-12',NULL,'2024-11-12'),(169,9,2,'2024-11-12',NULL,'2024-11-12'),(170,10,2,'2024-11-12',NULL,'2024-11-12'),(171,11,2,'2024-11-12',NULL,'2024-11-12'),(172,12,2,'2024-11-12',NULL,'2024-11-12'),(173,13,2,'2024-11-12',NULL,'2024-11-12'),(174,14,2,'2024-11-12',NULL,'2024-11-12'),(175,15,2,'2024-11-12',NULL,'2024-11-12'),(176,16,2,'2024-11-12',NULL,'2024-11-12'),(177,17,2,'2025-06-14',NULL,'2025-06-14'),(178,18,2,'2025-06-14',NULL,'2025-06-14'),(179,19,2,'2025-06-14',NULL,'2025-06-14'),(180,20,2,'2025-06-14',NULL,'2025-06-14'),(181,21,2,'2025-06-14',NULL,'2025-06-14'),(182,22,2,'2025-06-14',NULL,'2025-06-14'),(183,23,2,'2025-06-14',NULL,'2025-06-14'),(184,24,2,'2025-06-14',NULL,'2025-06-14'),(185,25,2,'2025-06-14',NULL,'2025-06-14'),(186,26,2,'2025-06-14',NULL,'2025-06-14'),(187,27,2,'2025-06-14',NULL,'2025-06-14'),(188,28,2,'2025-06-14',NULL,'2025-06-14'),(189,29,2,'2025-06-14',NULL,'2025-06-14'),(190,30,2,'2025-06-14',NULL,'2025-06-14'),(191,31,2,'2025-06-14',NULL,'2025-06-14'),(192,32,2,'2025-06-14',NULL,'2025-06-14'),(193,33,2,'2024-10-29','2024-11-11','2024-10-29'),(194,34,2,'2024-10-29','2024-11-11','2024-10-29'),(195,35,2,'2024-10-29','2024-11-11','2024-10-29'),(196,36,2,'2024-10-29','2024-11-11','2024-10-29'),(197,37,2,'2024-10-29','2024-11-11','2024-10-29'),(198,38,2,'2024-10-29','2024-11-11','2024-10-29'),(199,39,2,'2024-10-29','2024-11-11','2024-10-29'),(200,40,2,'2024-10-29','2024-11-11','2024-10-29'),(201,41,2,'2024-10-29','2024-11-11','2024-10-29'),(202,42,2,'2024-10-29','2024-11-11','2024-10-29'),(203,43,2,'2024-10-29','2024-11-11','2024-10-29'),(204,44,2,'2024-10-29','2024-11-11','2024-10-29'),(205,45,2,'2024-10-29','2024-11-11','2024-10-29'),(206,46,2,'2024-10-29','2024-11-11','2024-10-29'),(207,47,2,'2024-10-29','2024-11-11','2024-10-29'),(208,48,2,'2024-10-29','2024-11-11','2024-10-29'),(209,49,2,'2024-10-29','2024-11-11','2024-10-29'),(210,50,2,'2024-10-29','2024-11-11','2024-10-29'),(211,51,2,'2024-10-29','2024-11-11','2024-10-29'),(212,52,2,'2024-10-29','2024-11-11','2024-10-29'),(213,53,2,'2024-10-29','2024-11-11','2024-10-29'),(214,54,2,'2024-10-29','2024-11-11','2024-10-29'),(215,55,2,'2024-10-29','2024-11-11','2024-10-29'),(216,56,2,'2024-10-29','2024-11-11','2024-10-29'),(217,57,2,'2025-03-04',NULL,'2025-03-04'),(218,58,2,'2025-03-04',NULL,'2025-03-04'),(219,59,2,'2025-03-04',NULL,'2025-03-04'),(220,60,2,'2025-03-04',NULL,'2025-03-04'),(221,61,2,'2025-03-04',NULL,'2025-03-04'),(222,62,2,'2025-03-04',NULL,'2025-03-04'),(223,63,2,'2025-03-04',NULL,'2025-03-04'),(224,64,2,'2025-03-04',NULL,'2025-03-04'),(225,65,2,'2025-03-04',NULL,'2025-03-04'),(226,66,2,'2025-03-04',NULL,'2025-03-04'),(227,67,2,'2025-03-04',NULL,'2025-03-04'),(228,68,2,'2025-03-04',NULL,'2025-03-04'),(229,69,2,'2025-03-04',NULL,'2025-03-04'),(230,70,2,'2025-03-04',NULL,'2025-03-04'),(231,71,2,'2025-03-04',NULL,'2025-03-04'),(232,72,2,'2025-03-04',NULL,'2025-03-04'),(233,73,2,'2025-03-04',NULL,'2025-03-04'),(234,74,2,'2025-03-04',NULL,'2025-03-04'),(235,75,2,'2025-03-04',NULL,'2025-03-04'),(236,76,2,'2025-03-04',NULL,'2025-03-04'),(237,77,2,'2025-03-04',NULL,'2025-03-04'),(238,78,2,'2025-03-04',NULL,'2025-03-04'),(239,79,2,'2025-03-04',NULL,'2025-03-04'),(240,80,2,'2025-03-04',NULL,'2025-03-04'),(241,81,2,'2025-01-18',NULL,'2025-01-18'),(242,82,2,'2025-01-18',NULL,'2025-01-18'),(243,83,2,'2025-01-18',NULL,'2025-01-18'),(244,84,2,'2025-01-18',NULL,'2025-01-18'),(245,85,2,'2025-01-18',NULL,'2025-01-18'),(246,86,2,'2025-01-18',NULL,'2025-01-18'),(247,87,2,'2025-01-18',NULL,'2025-01-18'),(248,88,2,'2025-01-18',NULL,'2025-01-18'),(249,89,2,'2025-01-18',NULL,'2025-01-18'),(250,90,2,'2025-01-18',NULL,'2025-01-18'),(251,91,2,'2025-01-18',NULL,'2025-01-18'),(252,92,2,'2025-01-18',NULL,'2025-01-18'),(253,93,2,'2025-01-18',NULL,'2025-01-18'),(254,94,2,'2025-01-18',NULL,'2025-01-18'),(255,95,2,'2025-01-18',NULL,'2025-01-18'),(256,96,2,'2025-01-18',NULL,'2025-01-18'),(257,97,2,'2025-01-10',NULL,'2025-01-10'),(258,98,2,'2025-01-10',NULL,'2025-01-10'),(259,99,2,'2025-01-10',NULL,'2025-01-10'),(260,100,2,'2025-01-10',NULL,'2025-01-10'),(261,101,2,'2025-01-10',NULL,'2025-01-10'),(262,102,2,'2025-01-10',NULL,'2025-01-10'),(263,103,2,'2025-01-10',NULL,'2025-01-10'),(264,104,2,'2025-01-10',NULL,'2025-01-10'),(265,105,2,'2025-01-10',NULL,'2025-01-10'),(266,106,2,'2025-01-10',NULL,'2025-01-10'),(267,107,2,'2025-01-10',NULL,'2025-01-10'),(268,108,2,'2025-01-10',NULL,'2025-01-10'),(269,109,2,'2025-01-10',NULL,'2025-01-10'),(270,110,2,'2025-01-10',NULL,'2025-01-10'),(271,111,2,'2025-01-10',NULL,'2025-01-10'),(272,112,2,'2025-01-10',NULL,'2025-01-10'),(273,113,2,'2024-10-05','2024-12-02','2024-10-05'),(274,114,2,'2024-10-05','2024-12-02','2024-10-05'),(275,115,2,'2024-10-05','2024-12-02','2024-10-05'),(276,116,2,'2024-10-05','2024-12-02','2024-10-05'),(277,117,2,'2024-10-05','2024-12-02','2024-10-05'),(278,118,2,'2024-10-05','2024-12-02','2024-10-05'),(279,119,2,'2024-10-05','2024-12-02','2024-10-05'),(280,120,2,'2024-10-05','2024-12-02','2024-10-05'),(281,121,2,'2024-10-05','2024-12-02','2024-10-05'),(282,122,2,'2024-10-05','2024-12-02','2024-10-05'),(283,123,2,'2024-10-05','2024-12-02','2024-10-05'),(284,124,2,'2024-10-05','2024-12-02','2024-10-05'),(285,125,2,'2024-10-05','2024-12-02','2024-10-05'),(286,126,2,'2024-10-05','2024-12-02','2024-10-05'),(287,127,2,'2024-10-05','2024-12-02','2024-10-05'),(288,128,2,'2024-10-05','2024-12-02','2024-10-05'),(289,129,2,'2024-10-05','2024-12-02','2024-10-05'),(290,130,2,'2024-10-05','2024-12-02','2024-10-05'),(291,131,2,'2024-10-05','2024-12-02','2024-10-05'),(292,132,2,'2024-10-05','2024-12-02','2024-10-05'),(293,133,2,'2024-10-05','2024-12-02','2024-10-05'),(294,134,2,'2024-10-05','2024-12-02','2024-10-05'),(295,135,2,'2024-10-05','2024-12-02','2024-10-05'),(296,136,2,'2024-10-05','2024-12-02','2024-10-05'),(297,137,2,'2024-10-16','2024-11-04','2024-10-16'),(298,138,2,'2024-10-16','2024-11-04','2024-10-16'),(299,139,2,'2024-10-16','2024-11-04','2024-10-16'),(300,140,2,'2024-10-16','2024-11-04','2024-10-16'),(301,141,2,'2024-10-16','2024-11-04','2024-10-16'),(302,142,2,'2024-10-16','2024-11-04','2024-10-16'),(303,143,2,'2024-10-16','2024-11-04','2024-10-16'),(304,144,2,'2024-10-16','2024-11-04','2024-10-16'),(305,145,2,'2024-10-16','2024-11-04','2024-10-16'),(306,146,2,'2024-10-16','2024-11-04','2024-10-16'),(307,147,2,'2024-10-16','2024-11-04','2024-10-16'),(308,148,2,'2024-10-16','2024-11-04','2024-10-16'),(309,149,2,'2024-10-16','2024-11-04','2024-10-16'),(310,150,2,'2024-10-16','2024-11-04','2024-10-16'),(311,151,2,'2024-10-16','2024-11-04','2024-10-16'),(312,152,2,'2024-10-16','2024-11-04','2024-10-16'),(313,153,2,'2024-10-16','2024-11-04','2024-10-16'),(314,154,2,'2024-10-16','2024-11-04','2024-10-16'),(315,155,2,'2024-10-16','2024-11-04','2024-10-16'),(316,156,2,'2024-10-16','2024-11-04','2024-10-16'),(317,157,2,'2024-10-16','2024-11-04','2024-10-16'),(318,158,2,'2024-10-16','2024-11-04','2024-10-16'),(319,159,2,'2024-10-16','2024-11-04','2024-10-16'),(320,160,2,'2024-10-16','2024-11-04','2024-10-16'),(321,33,3,'2024-11-11',NULL,'2024-11-11'),(322,34,3,'2024-11-11',NULL,'2024-11-11'),(323,35,3,'2024-11-11',NULL,'2024-11-11'),(324,36,4,'2024-11-11',NULL,'2024-11-11'),(325,37,3,'2024-11-11',NULL,'2024-11-11'),(326,38,3,'2024-11-11',NULL,'2024-11-11'),(327,39,3,'2024-11-11',NULL,'2024-11-11'),(328,40,4,'2024-11-11',NULL,'2024-11-11'),(329,41,3,'2024-11-11',NULL,'2024-11-11'),(330,42,3,'2024-11-11',NULL,'2024-11-11'),(331,43,3,'2024-11-11',NULL,'2024-11-11'),(332,44,4,'2024-11-11',NULL,'2024-11-11'),(333,45,3,'2024-11-11',NULL,'2024-11-11'),(334,46,3,'2024-11-11',NULL,'2024-11-11'),(335,47,3,'2024-11-11',NULL,'2024-11-11'),(336,48,4,'2024-11-11',NULL,'2024-11-11'),(337,49,3,'2024-11-11',NULL,'2024-11-11'),(338,50,3,'2024-11-11',NULL,'2024-11-11'),(339,51,3,'2024-11-11',NULL,'2024-11-11'),(340,52,4,'2024-11-11',NULL,'2024-11-11'),(341,53,3,'2024-11-11',NULL,'2024-11-11'),(342,54,3,'2024-11-11',NULL,'2024-11-11'),(343,55,3,'2024-11-11',NULL,'2024-11-11'),(344,56,4,'2024-11-11',NULL,'2024-11-11'),(345,113,3,'2024-12-02',NULL,'2024-12-02'),(346,114,3,'2024-12-02',NULL,'2024-12-02'),(347,115,3,'2024-12-02',NULL,'2024-12-02'),(348,116,4,'2024-12-02',NULL,'2024-12-02'),(349,117,3,'2024-12-02',NULL,'2024-12-02'),(350,118,3,'2024-12-02',NULL,'2024-12-02'),(351,119,3,'2024-12-02',NULL,'2024-12-02'),(352,120,4,'2024-12-02',NULL,'2024-12-02'),(353,121,3,'2024-12-02',NULL,'2024-12-02'),(354,122,3,'2024-12-02',NULL,'2024-12-02'),(355,123,3,'2024-12-02',NULL,'2024-12-02'),(356,124,4,'2024-12-02',NULL,'2024-12-02'),(357,125,3,'2024-12-02',NULL,'2024-12-02'),(358,126,3,'2024-12-02',NULL,'2024-12-02'),(359,127,3,'2024-12-02',NULL,'2024-12-02'),(360,128,4,'2024-12-02',NULL,'2024-12-02'),(361,129,3,'2024-12-02',NULL,'2024-12-02'),(362,130,3,'2024-12-02',NULL,'2024-12-02'),(363,131,3,'2024-12-02',NULL,'2024-12-02'),(364,132,4,'2024-12-02',NULL,'2024-12-02'),(365,133,3,'2024-12-02',NULL,'2024-12-02'),(366,134,3,'2024-12-02',NULL,'2024-12-02'),(367,135,3,'2024-12-02',NULL,'2024-12-02'),(368,136,4,'2024-12-02',NULL,'2024-12-02'),(369,137,3,'2024-11-04',NULL,'2024-11-04'),(370,138,3,'2024-11-04',NULL,'2024-11-04'),(371,139,3,'2024-11-04',NULL,'2024-11-04'),(372,140,4,'2024-11-04',NULL,'2024-11-04'),(373,141,3,'2024-11-04',NULL,'2024-11-04'),(374,142,3,'2024-11-04',NULL,'2024-11-04'),(375,143,3,'2024-11-04',NULL,'2024-11-04'),(376,144,4,'2024-11-04',NULL,'2024-11-04'),(377,145,3,'2024-11-04',NULL,'2024-11-04'),(378,146,3,'2024-11-04',NULL,'2024-11-04'),(379,147,3,'2024-11-04',NULL,'2024-11-04'),(380,148,4,'2024-11-04',NULL,'2024-11-04'),(381,149,3,'2024-11-04',NULL,'2024-11-04'),(382,150,3,'2024-11-04',NULL,'2024-11-04'),(383,151,3,'2024-11-04',NULL,'2024-11-04'),(384,152,4,'2024-11-04',NULL,'2024-11-04'),(385,153,3,'2024-11-04',NULL,'2024-11-04'),(386,154,3,'2024-11-04',NULL,'2024-11-04'),(387,155,3,'2024-11-04',NULL,'2024-11-04'),(388,156,4,'2024-11-04',NULL,'2024-11-04'),(389,157,3,'2024-11-04',NULL,'2024-11-04'),(390,158,3,'2024-11-04',NULL,'2024-11-04'),(391,159,3,'2024-11-04',NULL,'2024-11-04'),(392,160,4,'2024-11-04',NULL,'2024-11-04');
/*!40000 ALTER TABLE `PostulacionEstado` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `trg_check_estado_postulacion` BEFORE INSERT ON `PostulacionEstado` FOR EACH ROW BEGIN

    DECLARE v_msg VARCHAR(255);

    DECLARE v_old_oid INT;

    DECLARE v_old_nombre VARCHAR(50);

    DECLARE v_new_nombre VARCHAR(50);



    -- Obtener el último estado registrado antes de esta inserción

    SELECT OIDEstadoPostulacion INTO v_old_oid

    FROM PostulacionEstado

    WHERE OIDPostulacion = NEW.OIDPostulacion

      AND fechaCambioEstado < NEW.fechaCambioEstado

    ORDER BY fechaCambioEstado DESC

    LIMIT 1;



    -- Buscar nombres de estados

    SELECT nombreEstadoPostulacion INTO v_old_nombre

    FROM EstadoPostulacion

    WHERE OIDEstadoPostulacion = v_old_oid;



    SELECT nombreEstadoPostulacion INTO v_new_nombre

    FROM EstadoPostulacion

    WHERE OIDEstadoPostulacion = NEW.OIDEstadoPostulacion;



    -- Bloquear repetición de estado

    IF v_old_oid = NEW.OIDEstadoPostulacion THEN

        SET v_msg = CONCAT('La postulacion ya está en el estado "', v_new_nombre, '". No se puede repetir.');

        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;

    END IF;



    -- Validar transiciones permitidas

    IF NOT (

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



    no_validation_needed: BEGIN END;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccion`
--

/*!40000 ALTER TABLE `ProcesoSeleccion` DISABLE KEYS */;
INSERT INTO `ProcesoSeleccion` VALUES (1,5,'2024-09-30','1'),(2,6,'2025-02-10','2'),(3,11,'2024-09-09','3'),(4,12,'2024-09-30','4');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionEstado`
--

/*!40000 ALTER TABLE `ProcesoSeleccionEstado` DISABLE KEYS */;
INSERT INTO `ProcesoSeleccionEstado` VALUES (1,1,1,'2024-09-30','2024-11-25','2024-09-30'),(2,1,1,'2024-10-03','2024-11-25','2024-10-03'),(3,1,1,'2024-10-07','2024-11-25','2024-10-07'),(4,1,1,'2024-10-14','2024-11-25','2024-10-14'),(5,1,2,'2024-11-25','2024-09-30','2024-11-25'),(6,1,2,'2024-12-02','2024-09-30','2024-12-02'),(7,1,3,'2024-09-30','2024-12-09','2024-09-30'),(8,1,3,'2024-10-03','2024-12-09','2024-10-03'),(9,1,3,'2024-10-07','2024-12-09','2024-10-07'),(10,1,3,'2024-10-14','2024-12-09','2024-10-14'),(11,1,3,'2024-11-25','2024-12-09','2024-11-25'),(12,1,3,'2024-12-02','2024-12-09','2024-12-02'),(13,1,4,'2024-12-09',NULL,'2024-12-09'),(14,2,1,'2025-02-10','2025-03-10','2025-02-10'),(15,2,1,'2025-02-17','2025-03-10','2025-02-17'),(16,2,1,'2025-02-24','2025-03-10','2025-02-24'),(17,2,1,'2025-02-27','2025-03-10','2025-02-27'),(18,2,2,'2025-03-10','2025-02-10','2025-03-10'),(19,2,2,'2025-03-17','2025-02-10','2025-03-17'),(20,2,3,'2025-02-10','2025-04-28','2025-02-10'),(21,2,3,'2025-02-17','2025-04-28','2025-02-17'),(22,2,3,'2025-02-24','2025-04-28','2025-02-24'),(23,2,3,'2025-02-27','2025-04-28','2025-02-27'),(24,2,3,'2025-03-10','2025-04-28','2025-03-10'),(25,2,3,'2025-03-17','2025-04-28','2025-03-17'),(26,3,1,'2024-09-09','2024-10-07','2024-09-09'),(27,3,1,'2024-09-16','2024-10-07','2024-09-16'),(28,3,1,'2024-09-23','2024-10-07','2024-09-23'),(29,3,1,'2024-09-26','2024-10-07','2024-09-26'),(30,3,2,'2024-10-07','2024-09-09','2024-10-07'),(31,3,2,'2024-10-14','2024-09-09','2024-10-14'),(32,3,3,'2024-09-09','2024-12-02','2024-09-09'),(33,3,3,'2024-09-16','2024-12-02','2024-09-16'),(34,3,3,'2024-09-23','2024-12-02','2024-09-23'),(35,3,3,'2024-09-26','2024-12-02','2024-09-26'),(36,3,3,'2024-10-07','2024-12-02','2024-10-07'),(37,3,3,'2024-10-14','2024-12-02','2024-10-14'),(38,3,4,'2024-12-02',NULL,'2024-12-02'),(39,4,1,'2024-09-30','2024-10-21','2024-09-30'),(40,4,1,'2024-10-03','2024-10-21','2024-10-03'),(41,4,1,'2024-10-07','2024-10-21','2024-10-07'),(42,4,1,'2024-10-10','2024-10-21','2024-10-10'),(43,4,2,'2024-10-21','2024-09-30','2024-10-21'),(44,4,2,'2024-10-28','2024-09-30','2024-10-28'),(45,4,3,'2024-09-30','2024-11-11','2024-09-30'),(46,4,3,'2024-10-03','2024-11-11','2024-10-03'),(47,4,3,'2024-10-07','2024-11-11','2024-10-07'),(48,4,3,'2024-10-10','2024-11-11','2024-10-10'),(49,4,3,'2024-10-21','2024-11-11','2024-10-21'),(50,4,3,'2024-10-28','2024-11-11','2024-10-28'),(51,4,4,'2024-11-11',NULL,'2024-11-11');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionPostulacion`
--

/*!40000 ALTER TABLE `ProcesoSeleccionPostulacion` DISABLE KEYS */;
INSERT INTO `ProcesoSeleccionPostulacion` VALUES (1,33,1,1,3,'PSP001'),(2,34,1,1,6,'PSP002'),(3,35,1,1,7,'PSP003'),(4,36,1,1,10,'PSP004'),(5,37,1,1,2,'PSP005'),(6,38,1,1,4,'PSP006'),(7,39,1,1,8,'PSP007'),(8,40,1,1,12,'PSP008'),(9,41,1,1,1,'PSP009'),(10,42,1,1,5,'PSP010'),(11,43,1,1,9,'PSP011'),(12,44,1,1,11,'PSP012'),(13,45,2,1,2,'PSP013'),(14,46,2,1,4,'PSP014'),(15,47,2,1,8,'PSP015'),(16,48,2,1,10,'PSP016'),(17,49,2,1,3,'PSP017'),(18,50,2,1,5,'PSP018'),(19,51,2,1,9,'PSP019'),(20,52,2,1,12,'PSP020'),(21,53,2,1,1,'PSP021'),(22,54,2,1,6,'PSP022'),(23,55,2,1,7,'PSP023'),(24,56,2,1,11,'PSP024'),(25,57,3,2,3,'PSP025'),(26,58,3,2,5,'PSP026'),(27,59,3,2,7,'PSP027'),(28,60,3,2,12,'PSP028'),(29,61,3,2,2,'PSP029'),(30,62,3,2,6,'PSP030'),(31,63,3,2,9,'PSP031'),(32,64,3,2,11,'PSP032'),(33,65,3,2,1,'PSP033'),(34,66,3,2,4,'PSP034'),(35,67,3,2,8,'PSP035'),(36,68,3,2,10,'PSP036'),(37,69,4,2,2,'PSP037'),(38,70,4,2,6,'PSP038'),(39,71,4,2,7,'PSP039'),(40,72,4,2,10,'PSP040'),(41,73,4,2,1,'PSP041'),(42,74,4,2,4,'PSP042'),(43,75,4,2,8,'PSP043'),(44,76,4,2,11,'PSP044'),(45,77,4,2,3,'PSP045'),(46,78,4,2,5,'PSP046'),(47,79,4,2,9,'PSP047'),(48,80,4,2,12,'PSP048'),(49,113,5,3,1,'PSP049'),(50,114,5,3,5,'PSP050'),(51,115,5,3,9,'PSP051'),(52,116,5,3,11,'PSP052'),(53,117,5,3,3,'PSP053'),(54,118,5,3,6,'PSP054'),(55,119,5,3,8,'PSP055'),(56,120,5,3,12,'PSP056'),(57,121,5,3,2,'PSP057'),(58,122,5,3,4,'PSP058'),(59,123,5,3,7,'PSP059'),(60,124,5,3,10,'PSP060'),(61,125,6,3,1,'PSP061'),(62,126,6,3,5,'PSP062'),(63,127,6,3,8,'PSP063'),(64,128,6,3,11,'PSP064'),(65,129,6,3,3,'PSP065'),(66,130,6,3,4,'PSP066'),(67,131,6,3,9,'PSP067'),(68,132,6,3,10,'PSP068'),(69,133,6,3,2,'PSP069'),(70,134,6,3,6,'PSP070'),(71,135,6,3,7,'PSP071'),(72,136,6,3,12,'PSP072'),(73,137,7,4,1,'PSP073'),(74,138,7,4,4,'PSP074'),(75,139,7,4,9,'PSP075'),(76,140,7,4,10,'PSP076'),(77,141,7,4,2,'PSP077'),(78,142,7,4,5,'PSP078'),(79,143,7,4,8,'PSP079'),(80,144,7,4,12,'PSP080'),(81,145,7,4,3,'PSP081'),(82,146,7,4,6,'PSP082'),(83,147,7,4,7,'PSP083'),(84,148,7,4,11,'PSP084'),(85,149,8,4,2,'PSP085'),(86,150,8,4,4,'PSP086'),(87,151,8,4,9,'PSP087'),(88,152,8,4,11,'PSP088'),(89,153,8,4,3,'PSP089'),(90,154,8,4,6,'PSP090'),(91,155,8,4,8,'PSP091'),(92,156,8,4,12,'PSP092'),(93,157,8,4,1,'PSP093'),(94,158,8,4,5,'PSP094'),(95,159,8,4,7,'PSP095'),(96,160,8,4,10,'PSP096'),(97,17,NULL,NULL,NULL,'1'),(98,18,NULL,NULL,NULL,'1'),(99,19,NULL,NULL,NULL,'1'),(100,20,NULL,NULL,NULL,'1'),(101,21,NULL,NULL,NULL,'1'),(102,22,NULL,NULL,NULL,'1'),(103,23,NULL,NULL,NULL,'1'),(104,24,NULL,NULL,NULL,'1'),(105,25,NULL,NULL,NULL,'1'),(106,26,NULL,NULL,NULL,'1'),(107,27,NULL,NULL,NULL,'1'),(108,28,NULL,NULL,NULL,'1'),(109,29,NULL,NULL,NULL,'1'),(110,30,NULL,NULL,NULL,'1'),(111,31,NULL,NULL,NULL,'1'),(112,32,NULL,NULL,NULL,'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProcesoSeleccionProyectoPuesto`
--

/*!40000 ALTER TABLE `ProcesoSeleccionProyectoPuesto` DISABLE KEYS */;
INSERT INTO `ProcesoSeleccionProyectoPuesto` VALUES (1,1,7,'1'),(2,1,8,'2'),(3,2,9,'3'),(4,2,10,'4'),(5,3,17,'5'),(6,3,18,'6'),(7,4,19,'7'),(8,4,20,'8');
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
  `fechaInicioPostulaciones` varchar(50) DEFAULT NULL,
  `fechaHoraInicioActividades` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OIDProyecto`),
  UNIQUE KEY `uq_proyecto` (`numeroProyecto`,`nombreProyecto`),
  KEY `fk_proyecto_empresa` (`OIDEmpresa`),
  KEY `fk_proyecto_estado` (`OIDEstadoProyecto`),
  CONSTRAINT `fk_proyecto_empresa` FOREIGN KEY (`OIDEmpresa`) REFERENCES `Empresa` (`OIDEmpresa`),
  CONSTRAINT `fk_proyecto_estado` FOREIGN KEY (`OIDEstadoProyecto`) REFERENCES `EstadoProyecto` (`OIDEstadoProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
INSERT INTO `Proyecto` VALUES (1,1,1,'nueva descripcion','2025-09-11','2024-12-09 00:00:00','Sistemas Electrónicos Industriales','PRJ001',NULL,'2025-02-16'),(2,9,1,'Nueva Descripción','2026-03-26','2025-02-05 00:00:00','Plataforma de Salud Animal','PRJ002',NULL,'2025-05-16'),(3,5,2,'Desarrollo y Soporte de Aplicaciones Web Corporativas','2025-09-12','2024-11-12 00:00:00','Sistema de Gestión Empresarial','PRJ003','2024-10-07','2025-02-07'),(4,6,2,'Gestión contable digital para contadores digitalizadores','2026-01-07','2025-07-14 00:00:00','Monitoreo de Obras','PRJ004','2025-09-30 00:23:38','2025-08-14'),(5,3,3,'Desarrollo de indicadores biológicos para diagnóstico precoz de cancer y mejor tratamiento.','2025-09-28','2024-10-29 00:00:00','Biomarcadores para detección de cáncer temprano','PRJ005','2024-09-24','2025-01-10'),(6,2,3,'Plataforma web que permite a pacientes acceder resultados, gestionar turnos y recibir notificaciones médicas.','2025-12-31','2025-03-04 00:00:00','Portal de Pacientes','PRJ006','2025-02-04','2025-06-20'),(7,7,4,'Gestión contable digital para contadores digitalizadores','2026-08-28','2025-02-18 00:00:00','Optimización Contable Digital','PRJ007','2024-12-09','2025-03-18'),(8,3,4,'Implementar programas de inclusión social y acompañamiento comunitario.','2026-05-31','2025-01-10 00:00:00','Integración Social y Bienestar','PRJ008','2024-12-03','2025-07-15'),(9,8,5,'Sistema de monitoreo de procesos químicos en la industria alimentaria.','2026-04-30','2025-02-08 00:00:00','Trazabilidad en Bodegas','PRJ009','2025-01-02','2026-01-15'),(10,2,5,'Programa de prevención y cuidado odontológico.','2026-02-28','2025-01-26 00:00:00','Prevención Odontológica Comunitaria','PRJ010','2024-12-15','2025-04-23'),(11,4,6,'Proyecto orientado a la gestión completa de una bodega, integrando finanzas y producción para asegurar calidad, eficiencia y sustentabilidad.','2025-10-16','2024-10-05 00:00:00','Bodega Integral','PRJ011','2024-09-05','2025-02-19'),(12,7,6,'Desarrollo de plataforma web empresarial, incorporando mecanismos de protección de datos y control de accesos.','2025-06-17','2024-10-16 00:00:00','Protección Digital Empresarial','PRJ012','2024-09-26','2024-12-03'),(13,6,1,'Proyecto orientado al desarrollo de datamining a lo largo y ancho del país, siendo una oportunidad muy jugosa para crecer como profesionales en todos los ámbitos','2077-06-09','2077-01-08 00:00:00','Administración De Datos','PRJ0013',NULL,'2077-02-08'),(14,8,1,'Programa de entrenamiento de futuros desarrolladores inmobiliarios','2026-12-10','2026-02-15 00:00:00','Desarrolladores Argentinos','PRJ0014',NULL,'2077-12-3');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoPuesto`
--

/*!40000 ALTER TABLE `ProyectoPuesto` DISABLE KEYS */;
INSERT INTO `ProyectoPuesto` VALUES (1,1,1,4,2,NULL,1656,'PP001'),(2,2,2,4,2,NULL,2288,'PP002'),(3,3,7,11,4,NULL,1736,'PP003'),(4,3,8,11,4,NULL,1736,'PP004'),(5,4,5,8,4,NULL,1144,'PP005'),(6,4,7,9,4,NULL,1144,'PP006'),(7,5,3,12,9,NULL,2088,'PP007'),(8,5,4,12,9,NULL,2088,'PP008'),(9,6,7,12,9,NULL,1552,'PP009'),(10,6,12,12,9,NULL,1660,'PP010'),(11,7,14,8,4,NULL,1544,'PP011'),(12,7,13,8,4,NULL,1544,'PP012'),(13,8,9,8,4,NULL,2560,'PP013'),(14,8,10,8,4,NULL,2560,'PP014'),(15,9,6,4,2,'2025-01-09',840,'PP015'),(16,10,12,4,2,'2025-01-09',2488,'PP016'),(17,11,11,12,9,NULL,1912,'PP017'),(18,11,13,12,9,NULL,1912,'PP018'),(19,12,7,12,9,NULL,1568,'PP019'),(20,12,13,12,9,NULL,1568,'PP020'),(21,2,7,4,2,'2024-12-16',2288,'PP021'),(22,6,9,12,2,'2024-12-02',1552,'PP022'),(23,12,11,12,2,'2025-10-16',1756,'PP023'),(24,11,10,12,2,'2025-06-17',1453,'PP024');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoPuestoCarrera`
--

/*!40000 ALTER TABLE `ProyectoPuestoCarrera` DISABLE KEYS */;
INSERT INTO `ProyectoPuestoCarrera` VALUES (1,21,1,10,5,NULL,22),(2,5,2,13,5,NULL,25),(3,28,3,1,4,NULL,25),(4,29,3,18,5,NULL,23),(5,4,4,11,5,NULL,22),(6,32,4,8,5,NULL,23),(7,18,5,3,5,NULL,22),(8,14,5,20,5,NULL,22),(9,27,6,1,4,NULL,22),(10,31,6,8,5,NULL,23),(11,8,7,2,5,NULL,20),(12,9,7,6,5,NULL,22),(13,33,7,19,4,NULL,20),(14,3,8,7,4,NULL,20),(15,9,8,6,4,NULL,21),(16,15,8,16,5,NULL,23),(17,27,9,1,5,NULL,23),(18,30,9,18,5,NULL,22),(19,31,9,8,5,NULL,24),(20,34,10,2,4,NULL,24),(21,35,10,6,4,NULL,23),(22,36,10,7,5,NULL,20),(23,25,11,5,5,NULL,24),(24,24,11,9,4,NULL,20),(25,28,12,1,5,NULL,23),(26,29,12,18,5,NULL,25),(27,23,13,2,4,NULL,24),(28,13,13,6,4,NULL,22),(29,3,14,7,5,NULL,20),(30,15,14,16,4,NULL,22),(31,16,15,15,5,'2025-01-09',24),(32,7,16,14,5,'2025-01-09',21),(33,20,17,15,5,NULL,20),(34,14,17,20,4,NULL,22),(35,19,17,17,4,NULL,23),(36,27,18,1,5,NULL,24),(37,30,18,18,4,NULL,25),(38,31,18,8,4,NULL,25),(39,28,19,1,4,NULL,22),(40,29,19,18,5,NULL,24),(41,32,19,8,4,NULL,23),(42,28,20,1,5,NULL,23),(43,29,20,18,4,NULL,21),(44,32,20,8,5,NULL,21),(45,2,23,4,6,'2025-10-16',18),(46,6,24,12,12,'2025-06-17',17),(47,21,25,10,12,NULL,23),(48,31,25,8,6,NULL,31),(49,14,1,20,4,NULL,22),(53,12,27,8,2,NULL,15),(57,12,28,8,2,NULL,15),(60,15,1,15,6,'2025-04-12',12),(66,29,28,1,59,NULL,100),(68,23,28,10,59,NULL,100),(69,25,10,2,4,NULL,24),(70,37,10,6,5,NULL,26),(71,38,10,7,3,NULL,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProyectoUniversidad`
--

/*!40000 ALTER TABLE `ProyectoUniversidad` DISABLE KEYS */;
INSERT INTO `ProyectoUniversidad` VALUES (1,1,9,'2024-12-09',NULL),(2,2,10,'2024-08-19',NULL),(3,3,3,'2024-09-16',NULL),(4,3,9,'2024-09-18',NULL),(5,3,12,'2024-09-20',NULL),(6,4,2,'2025-04-21',NULL),(7,4,1,'2025-04-19',NULL),(8,5,7,'2024-09-03',NULL),(9,5,6,'2024-09-10',NULL),(10,5,1,'2024-09-07',NULL),(11,6,2,'2025-01-15',NULL),(12,6,4,'2025-01-17',NULL),(13,6,7,'2025-01-18',NULL),(14,6,6,'2025-01-20',NULL),(15,6,1,'2025-01-14',NULL),(16,7,12,'2024-11-18',NULL),(17,7,11,'2024-11-24',NULL),(18,7,3,'2024-11-24',NULL),(19,7,9,'2024-11-22',NULL),(20,8,7,'2024-11-16',NULL),(21,8,6,'2024-11-18',NULL),(22,8,1,'2024-11-18',NULL),(23,9,8,'2024-12-12','2025-03-12'),(24,10,11,'2024-11-28','2025-04-27'),(25,11,2,'2024-08-15',NULL),(26,11,1,'2024-08-20',NULL),(27,11,4,'2024-08-15',NULL),(28,12,3,'2024-09-08',NULL),(29,12,9,'2024-09-09',NULL);
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
INSERT INTO `Puesto` VALUES (1,'Diseña e implementa sistemas electrónicos y de control para optimizar procesos productivos en entornos industriales.',NULL,'Técnico/a en Automatización y Control Industrial','P001'),(2,'Supervisa el estado de salud de los animales, registra datos clínicos en la plataforma y asegura la correcta aplicación de tratamientos preventivos.',NULL,'Responsable en Sanidad Animal','P002'),(3,'Diseña protocolos de investigación, lidera ensayos clínicos, analiza resultados de biomarcadores y valida métodos diagnósticos.',NULL,'Investigador/a Principal en Diagnostico Molecular','P015'),(4,'Diseña e implementa programas de acompañamiento comunitario y prevención en salud mental.',NULL,'Educador/a en Salud Comunitaria','P016'),(5,'Supervisa y coordina la ejecución de proyectos de construcción, asegurando calidad, plazos, costos y cumplimiento de normas de seguridad.',NULL,'Jefe/a de Obra','P005'),(6,'Diseña y supervisa procesos químicos aplicados a la producción, asegurando calidad, seguridad e innovación tecnológica.',NULL,'Especialista en Control de Procesos','P006'),(7,'Diseña, desarrolla y da soporte a aplicaciones web, asegurando su rendimiento, escalabilidad y continuidad operativa.',NULL,'Desarrollador/a Full stack','P007'),(8,'Crea interfaces intuitivas y atractivas para la plataforma, mejorando la experiencia en el entorno digital.',NULL,'Diseñador/a UX/UI','P008'),(9,'Atiende y brinda cuidados de salud, realizando controles preventivos y registrando la información.',NULL,'Profesional de Salud','P009'),(10,'Evalúa el clima laboral, brinda apoyo psicológico a los trabajadores y diseña programas de bienestar organizacional.',NULL,'Psicólogo/a Organizacional','P010'),(11,'Supervisa indicadores de gestión, optimiza recursos y asegura que los procesos monitoreados cumplan con estándares de calidad y normativas empresariales.',NULL,'Gestor/a de Calidad y Eficiencia Productiva','P011'),(12,'Desarrolla campañas de concientización y realiza controles odontológicos preventivos en instituciones educativas y comunitarias.',NULL,'Coordinador/a de Prevención Bucal','P012'),(13,'Supervisa y protege software frente a vulnerabilidades, implementa protocolos de ciberseguridad y asegura la integridad de la información.',NULL,'Especialista en Seguridad Informática','P013'),(14,'Gestiona presupuestos, costos e inversiones del proyecto, asegurando la rentabilidad y el uso eficiente de los recursos.',NULL,'Analista Financiero/a','P014'),(15,'Desarrolla y optimiza videojuegos, integrando código, diseño y pruebas de funcionalidad.','2024-12-01','Desarrollador/a de Videojuegos','P015');
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
INSERT INTO `PuestoCarrera` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,1),(17,2,2),(18,2,3),(19,2,4),(20,2,5),(21,2,6),(22,2,7),(23,2,8),(24,2,9),(25,2,10),(26,2,11),(27,2,12),(28,2,13),(29,2,14),(30,2,15),(31,3,1),(32,3,2),(33,3,3),(34,3,4),(35,3,5),(36,3,6),(37,3,7),(38,3,8),(39,3,9),(40,3,10),(41,3,11),(42,3,12),(43,3,13),(44,3,14),(45,3,15),(46,4,1),(47,4,2),(48,4,3),(49,4,4),(50,4,5),(51,4,6),(52,4,7),(53,4,8),(54,4,9),(55,4,10),(56,4,11),(57,4,12),(58,4,13),(59,4,14),(60,4,15),(61,5,1),(62,5,2),(63,5,3),(64,5,4),(65,5,5),(66,5,6),(67,5,7),(68,5,8),(69,5,9),(70,5,10),(71,5,11),(72,5,12),(73,5,13),(74,5,14),(75,5,15),(76,6,1),(77,6,2),(78,6,3),(79,6,4),(80,6,5),(81,6,6),(82,6,7),(83,6,8),(84,6,9),(85,6,10),(86,6,11),(87,6,12),(88,6,13),(89,6,14),(90,6,15),(91,7,1),(92,7,2),(93,7,3),(94,7,4),(95,7,5),(96,7,6),(97,7,7),(98,7,8),(99,7,9),(100,7,10),(101,7,11),(102,7,12),(103,7,13),(104,7,14),(105,7,15),(106,8,1),(107,8,2),(108,8,3),(109,8,4),(110,8,5),(111,8,6),(112,8,7),(113,8,8),(114,8,9),(115,8,10),(116,8,11),(117,8,12),(118,8,13),(119,8,14),(120,8,15),(121,8,1),(122,8,2),(123,8,3),(124,8,4),(125,8,5),(126,8,6),(127,8,7),(128,8,8),(129,8,9),(130,8,10),(131,8,11),(132,8,12),(133,8,13),(134,8,14),(135,8,15),(136,9,1),(137,9,2),(138,9,3),(139,9,4),(140,9,5),(141,9,6),(142,9,7),(143,9,8),(144,9,9),(145,9,10),(146,9,11),(147,9,12),(148,9,13),(149,9,14),(150,9,15),(151,10,1),(152,10,2),(153,10,3),(154,10,4),(155,10,5),(156,10,6),(157,10,7),(158,10,8),(159,10,9),(160,10,10),(161,10,11),(162,10,12),(163,10,13),(164,10,14),(165,10,15),(166,11,1),(167,11,2),(168,11,3),(169,11,4),(170,11,5),(171,11,6),(172,11,7),(173,11,8),(174,11,9),(175,11,10),(176,11,11),(177,11,12),(178,11,13),(179,11,14),(180,11,15),(181,12,1),(182,12,2),(183,12,3),(184,12,4),(185,12,5),(186,12,6),(187,12,7),(188,12,8),(189,12,9),(190,12,10),(191,12,11),(192,12,12),(193,12,13),(194,12,14),(195,12,15),(196,13,1),(197,13,2),(198,13,3),(199,13,4),(200,13,5),(201,13,6),(202,13,7),(203,13,8),(204,13,9),(205,13,10),(206,13,11),(207,13,12),(208,13,13),(209,13,14),(210,13,15),(211,14,1),(212,14,2),(213,14,3),(214,14,4),(215,14,5),(216,14,6),(217,14,7),(218,14,8),(219,14,9),(220,14,10),(221,14,11),(222,14,12),(223,14,13),(224,14,14),(225,14,15),(226,15,1),(227,15,2),(228,15,3),(229,15,4),(230,15,5),(231,15,6),(232,15,7),(233,15,8),(234,15,9),(235,15,10),(236,15,11),(237,15,12),(238,15,13),(239,15,14),(240,15,15),(241,16,1),(242,16,2),(243,16,3),(244,16,4),(245,16,5),(246,16,6),(247,16,7),(248,16,8),(249,16,9),(250,16,10),(251,16,11),(252,16,12),(253,16,13),(254,16,14),(255,16,15),(256,17,1),(257,17,2),(258,17,3),(259,17,4),(260,17,5),(261,17,6),(262,17,7),(263,17,8),(264,17,9),(265,17,10),(266,17,11),(267,17,12),(268,17,13),(269,17,14),(270,17,15),(271,18,1),(272,18,2),(273,18,3),(274,18,4),(275,18,5),(276,18,6),(277,18,7),(278,18,8),(279,18,9),(280,18,10),(281,18,11),(282,18,12),(283,18,13),(284,18,14),(285,18,15),(286,19,1),(287,19,2),(288,19,3),(289,19,4),(290,19,5),(291,19,6),(292,19,7),(293,19,8),(294,19,9),(295,19,10),(296,19,11),(297,19,12),(298,19,13),(299,19,14),(300,19,15),(301,20,1),(302,20,2),(303,20,3),(304,20,4),(305,20,5),(306,20,6),(307,20,7),(308,20,8),(309,20,9),(310,20,10),(311,20,11),(312,20,12),(313,20,13),(314,20,14),(315,20,15);
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
INSERT INTO `Universidad` VALUES (1,'info@uncuyo.edu.ar','Padre Jorge Contreras 1300, Mendoza',NULL,'Universidad Nacional de Cuyo (UNCUYO)','2614135000','30707483219',5500,'uncuyo.edu.ar','https://sistemapps/uncuyo.edu.ar'),(2,'contacto@utn.frm.edu.ar','Rodríguez 273, Ciudad de Mendoza',NULL,'Universidad Tecnológica Nacional (UTN) - Facultad Regional Mendoza','2615244600','30651231238',5500,'utn.frm.edu.ar','https://sistemapps/utn.frm.edu.ar'),(3,'contacto@frba.utn.edu.ar','Av. Medrano 951, Ciudad Autónoma de Buenos Aires',NULL,'Universidad Tecnológica Nacional (UTN) – Facultad Regional Buenos Aires','1148677500','30123456785',1107,'frba.utn.edu.ar','https://sistemapps/frba.utn.edu.ar'),(4,'informes@uda.edu.ar','Catamarca 147, Ciudad de Mendoza',NULL,'Universidad del Aconcagua (UDA)','2615201610','30632145671',5500,'uda.edu.ar','https://sistemapps/uda.edu.ar'),(5,'secretaria@uch.edu.ar','Belgrano 501, Ciudad de Mendoza',NULL,'Universidad Champagnat (UCH)','2614201234','30657894326',5500,'uch.edu.ar','https://sistemapps/uch.edu.ar'),(6,'contacto@ucongreso.edu.ar','Colón 90, Ciudad de Mendoza',NULL,'Universidad de Congreso','2614230630','30624389714',5500,'ucongreso.edu.ar','https://sistemapps/ucongreso.edu.ar'),(7,'informes@umaza.edu.ar','Acceso Este Lateral Sur 2245, Guaymallén, Mendoza',NULL,'Universidad Juan Agustín Maza (UMaza)','2615244000','30621987432',5519,'umaza.edu.ar','https://sistemapps/umaza.edu.ar'),(8,'contacto@frc.utn.edu.ar','Maestro López esq. Cruz Roja Argentina, Córdoba Capital',NULL,'Universidad Tecnológica Nacional (UTN) – Facultad Regional Córdoba','3515986000','30639453016',5016,'frc.utn.edu.ar','https://sistemapps/frc.utn.edu.ar'),(9,'info@uba.ar','Viamonte 430, Ciudad Autónoma de Buenos Aires',NULL,'Universidad de Buenos Aires (UBA)','1152856000','30642084915',1053,'uba.ar','https://sistemapps/uba.ar'),(10,'contacto@ucc.edu.ar','Obispo Trejo 323, Córdoba.',NULL,'Universidad Católica de Córdoba (UCC)','3514938000','30765489124',5000,'ucc.edu.ar','https://sistemapps/ucc.edu.ar'),(11,'contacto@unlp.edu.ar','Av. 7 N°776, La Plata, Buenos Aires',NULL,'Universidad Nacional de La Plata (UNLP)','2214236600','30631287654',1900,'unlp.edu.ar','https://sistemapps/unlp.edu.ar'),(12,'informes@uca.edu.ar','Alicia Moreau de Justo 1400, Puerto Madero, Ciudad Autónoma de Buenos Aires',NULL,'Universidad Católica Argentina (UCA) – Sede Buenos Aires','1143490200','30642070901',1107,'uca.edu.ar','https://sistemapps/uca.edu.ar'),(13,'informacion@tadic.or.mza','HSQ La Heras Mendoza AR, Lateral Oeste Acceso Nte., M5539 Las Heras, Mendoza','2024-06-08','Universidad Provincial Tadicor Mendoza','3515261500','30711393842',5539,'tadic.or.mza','https://sistemapps/tadic.or.mza');
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
-- Dumping routines for database 'bd_ds_def'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-13 23:02:34
