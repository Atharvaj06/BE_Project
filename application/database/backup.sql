-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: docapp
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `srno` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `mobno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (1,1,'Manas','PICT','1234'),(2,3,'Mayuri','PICT','5678'),(3,4,'Milind','PICT','9012'),(4,5,'Anushka','PICT','98765');
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `executive`
--

DROP TABLE IF EXISTS `executive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `executive` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `exename` varchar(20) DEFAULT NULL,
  `exemobno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executive`
--

LOCK TABLES `executive` WRITE;
/*!40000 ALTER TABLE `executive` DISABLE KEYS */;
INSERT INTO `executive` VALUES (1,'Mayuri','5678'),(2,'Milind','1234567890');
/*!40000 ALTER TABLE `executive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exesch`
--

DROP TABLE IF EXISTS `exesch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exesch` (
  `srno` int NOT NULL AUTO_INCREMENT,
  `eid` int DEFAULT NULL,
  `td_date` date DEFAULT NULL,
  `td_slot` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`srno`),
  KEY `eid` (`eid`),
  CONSTRAINT `exesch_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `executive` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exesch`
--

LOCK TABLES `exesch` WRITE;
/*!40000 ALTER TABLE `exesch` DISABLE KEYS */;
INSERT INTO `exesch` VALUES (11,2,'2023-05-01','10:00 am: 11:00 am');
/*!40000 ALTER TABLE `exesch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legacytestdrive`
--

DROP TABLE IF EXISTS `legacytestdrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legacytestdrive` (
  `srno` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `td_date` date DEFAULT NULL,
  `slot_name` varchar(20) DEFAULT NULL,
  `exe_name` varchar(30) DEFAULT NULL,
  `mobno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legacytestdrive`
--

LOCK TABLES `legacytestdrive` WRITE;
/*!40000 ALTER TABLE `legacytestdrive` DISABLE KEYS */;
INSERT INTO `legacytestdrive` VALUES (3,1,'dog/cat','a','2023-05-31',NULL,'Mayuri','5678'),(4,1,'horse','m','2023-05-31',NULL,'Milind','1234567890'),(5,1,'horse','m','2023-05-31',NULL,'Milind','1234567890'),(6,1,'dog/cat','a','2023-05-01',NULL,'Mayuri','5678'),(7,1,'dog/cat','a','2023-05-09',NULL,'Mayuri','5678');
/*!40000 ALTER TABLE `legacytestdrive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role` char(1) DEFAULT 'c',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Manas','1234','c'),(3,'Anushka','5678','m'),(4,'Milind','9012','c'),(5,'Anushka','1234','c');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testdrive`
--

DROP TABLE IF EXISTS `testdrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testdrive` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `vehid` int DEFAULT NULL,
  `eid` int DEFAULT NULL,
  `td_date` date DEFAULT NULL,
  `status` char(1) DEFAULT 'p',
  `td_slot` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `vehid` (`vehid`),
  KEY `eid` (`eid`),
  CONSTRAINT `testdrive_ibfk_1` FOREIGN KEY (`vehid`) REFERENCES `vehicle` (`vehid`),
  CONSTRAINT `testdrive_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `executive` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testdrive`
--

LOCK TABLES `testdrive` WRITE;
/*!40000 ALTER TABLE `testdrive` DISABLE KEYS */;
INSERT INTO `testdrive` VALUES (18,5,1,2,'2023-05-01','c','10:00 am: 11:00 am'),(20,1,1,NULL,'2023-11-20','p','11:00 am: 12:00 pm'),(22,1,3,NULL,'2023-12-20','p','5:00 pm : 6:00 pm'),(23,1,1,NULL,'2024-01-01','p','3:00 pm : 4:00 pm');
/*!40000 ALTER TABLE `testdrive` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `confirm_testdrive` BEFORE UPDATE ON `testdrive` FOR EACH ROW begin

declare exe_id int;
declare vid int;
declare tdate date;
declare sname varchar(20);

if new.status='c' then 
select eid into exe_id from testdrive where tid=old.tid;
select vehid into vid from testdrive where tid=old.tid;
select td_date into tdate from testdrive where tid=old.tid;
select td_slot into sname from testdrive where tid=old.tid;

insert into exesch (eid,td_date,td_slot) values(exe_id,tdate,sname);
insert into vehsch (vehid,td_date,td_slot) values(vid,tdate,sname);
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `maintain_test` AFTER UPDATE ON `testdrive` FOR EACH ROW begin
declare id int;
declare m varchar(30);
declare t char(1);
declare ename varchar(30);
declare mobno varchar(10);
declare tdate date;
declare sname varchar(20);
declare status char(1);

if new.status='d' then
select cid into id from testdriveinfo where tid=old.tid;
select model into m from testdriveinfo where tid=old.tid;
select type into t from testdriveinfo where tid=old.tid;
select td_date into tdate from testdriveinfo where tid=old.tid;

select exename into ename from testdriveinfo where tid=old.tid;
select exemobno into mobno from testdriveinfo where tid=old.tid;

insert into legacytestdrive (cid,model,type,td_date,exe_name,mobno) values(id,m,t,tdate,ename,mobno);
end if;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `free_res` BEFORE DELETE ON `testdrive` FOR EACH ROW begin
declare tdate date;
declare sname varchar(20);

select td_date into tdate from testdrive where tid=old.tid;
select td_slot into sname from testdrive where tid=old.tid;

delete from exesch where eid=old.eid and td_date=tdate and td_slot=sname;
delete from vehsch where vehid=old.vehid and td_date=tdate and td_slot=sname;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `testdrive11`
--

DROP TABLE IF EXISTS `testdrive11`;
/*!50001 DROP VIEW IF EXISTS `testdrive11`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `testdrive11` AS SELECT 
 1 AS `cid`,
 1 AS `model`,
 1 AS `vehid`,
 1 AS `tid`,
 1 AS `td_date`,
 1 AS `td_slot`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `testdriveinfo`
--

DROP TABLE IF EXISTS `testdriveinfo`;
/*!50001 DROP VIEW IF EXISTS `testdriveinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `testdriveinfo` AS SELECT 
 1 AS `eid`,
 1 AS `vehid`,
 1 AS `cid`,
 1 AS `srno`,
 1 AS `name`,
 1 AS `mobno`,
 1 AS `addr`,
 1 AS `tid`,
 1 AS `td_date`,
 1 AS `status`,
 1 AS `td_slot`,
 1 AS `model`,
 1 AS `type`,
 1 AS `exename`,
 1 AS `exemobno`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehid` int NOT NULL AUTO_INCREMENT,
  `model` varchar(20) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  PRIMARY KEY (`vehid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'dog/cat','a'),(2,'cow/buffalo','a'),(3,'horse','m'),(4,'Birds','I');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehsch`
--

DROP TABLE IF EXISTS `vehsch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehsch` (
  `srno` int NOT NULL AUTO_INCREMENT,
  `vehid` int DEFAULT NULL,
  `td_date` date DEFAULT NULL,
  `td_slot` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`srno`),
  KEY `vehid` (`vehid`),
  CONSTRAINT `vehsch_ibfk_1` FOREIGN KEY (`vehid`) REFERENCES `vehicle` (`vehid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehsch`
--

LOCK TABLES `vehsch` WRITE;
/*!40000 ALTER TABLE `vehsch` DISABLE KEYS */;
INSERT INTO `vehsch` VALUES (9,1,'2023-05-01','10:00 am: 11:00 am');
/*!40000 ALTER TABLE `vehsch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `testdrive11`
--

/*!50001 DROP VIEW IF EXISTS `testdrive11`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testdrive11` AS select `customerdetails`.`cid` AS `cid`,`vehicle`.`model` AS `model`,`vehicle`.`vehid` AS `vehid`,`testdrive`.`tid` AS `tid`,`testdrive`.`td_date` AS `td_date`,`testdrive`.`td_slot` AS `td_slot`,`testdrive`.`status` AS `status` from ((`vehicle` join `testdrive` on((`vehicle`.`vehid` = `testdrive`.`vehid`))) join `customerdetails` on((`testdrive`.`cid` = `customerdetails`.`cid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `testdriveinfo`
--

/*!50001 DROP VIEW IF EXISTS `testdriveinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testdriveinfo` AS select `testdrive`.`eid` AS `eid`,`testdrive`.`vehid` AS `vehid`,`customerdetails`.`cid` AS `cid`,`customerdetails`.`srno` AS `srno`,`customerdetails`.`name` AS `name`,`customerdetails`.`mobno` AS `mobno`,`customerdetails`.`addr` AS `addr`,`testdrive`.`tid` AS `tid`,`testdrive`.`td_date` AS `td_date`,`testdrive`.`status` AS `status`,`testdrive`.`td_slot` AS `td_slot`,`vehicle`.`model` AS `model`,`vehicle`.`type` AS `type`,`executive`.`exename` AS `exename`,`executive`.`exemobno` AS `exemobno` from (((`customerdetails` join `testdrive` on((`customerdetails`.`cid` = `testdrive`.`cid`))) join `vehicle` on((`testdrive`.`vehid` = `vehicle`.`vehid`))) join `executive` on((`testdrive`.`eid` = `executive`.`eid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 16:27:43
