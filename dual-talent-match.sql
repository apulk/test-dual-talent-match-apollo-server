-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: dual_talent_match
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` varchar(36) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('f98ead0c-10ac-11eb-a325-0242ac110002','X');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `id` varchar(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES ('de9b6dbb-10ac-11eb-a325-0242ac110002','Vikas Vidyalaya'),('de9b6dbb-10ac-11eb-a325-0242ac110003','SS technical');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` varchar(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `class_id` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `school_id` varchar(36) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `file_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('23a1a327-7c92-49cb-86c7-e064017059df','Mr. sumit amin','Male','X','1993-03-02','ghatkopar','Mumbai','maharashtra','India','400075','sumit@gmail.com','9082918850','de9b6dbb-10ac-11eb-a325-0242ac110002','http://res.cloudinary.com/djb13uboo/image/upload/v1603092443/abljc7dispypji0emlme.jpg','adhar'),('7c945f63-2462-4ab8-9a24-6814e8bcdae0','Apul Kudale','Male','X','1993-02-02','laxmi nagar','mUmbai','Maharashtra','','400075','','','de9b6dbb-10ac-11eb-a325-0242ac110003',NULL,NULL),('92db5376-a539-44bd-840c-bcd08c5cd068','Sumit amin','male','IX','1993-02-02','gag','asd','asd','asd','400075','sumit@gmail.com','asdadssd','de9b6dbb-10ac-11eb-a325-0242ac110002',NULL,NULL),('asdasssdssasss','asdasdasd','male','asdasd','2020-01-01','undefined','asdsd','maha','asdsad','232323','apy','90909009','adsasd','undefined','undefined'),('asdasssdssasss1','asdasdasd','male','asdasd','2020-01-01','undefined','asdsd','maha','asdsad','232323','apy','90909009','adsasd',NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `student_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('068f7d3e-10a5-11eb-a325-0242ac110002','admin','admin@admin.com','$2b$10$eLzoxlt.821iXKJAI0b1m.48IFyWlC9unP11nXbZSEJ/LF/RlBzXe','admin','2020-10-17 18:17:33','2020-10-17 18:17:33',NULL),('0f11585f-11db-11eb-b607-0242ac110002','asdasdasd','apul@gmail.com','$2b$10$xAeRC1ZsFrJKNtxnXrOTs.PACDB53qPy.2sDhmd8dRLxU2xVrflsW','student','2020-10-19 07:16:51','2020-10-19 07:16:51','asdasssdssasss1'),('bd98d404-11db-11eb-b607-0242ac110002','sumit amin','sumit@gmail.com','$2b$10$ZnYn9n4DONnV1d3RL4mNM.cyyKguETcDszjmGWg62o1fHLTslC3MK','student','2020-10-19 07:21:44','2020-10-19 07:21:44','23a1a327-7c92-49cb-86c7-e064017059df');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dual_talent_match'
--
/*!50003 DROP PROCEDURE IF EXISTS `addStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `addStudent`(s_id varchar(36), s_name varchar(45), s_email varchar(45), s_mobile varchar(20), s_gender varchar(45), s_zipcode varchar(20), s_street varchar(45), s_city varchar(45), s_state varchar(45), s_birthdate varchar(45), s_country varchar(45), s_class_id varchar(45), s_school_id varchar(45), s_file varchar(500), s_file_no varchar(45), s_pass varchar(100))
BEGIN
	declare student_id  varchar(36);
    select count(*) into student_id from students where id=s_id;
    if(student_id>0) then
	update students set name=s_name, email=s_email, mobile=s_mobile, gender=s_gender, zipcode=s_zipcode, street=s_street, city=s_city, state=s_state, birthdate=s_birthdate, country=s_country, class_id=s_class_id, school_id=s_school_id, file=s_file, file_no=s_file_no  where id=s_id;
    select s.*,sc.name as school, c.class from students s left join schools sc on (s.school_id=sc.id) left join classes c on(c.id=s.class_id) where s.id=s_id;
    update users set email=s_email where student_id=s_id;
    else 
    insert into students (id, name, email, mobile, gender, zipcode, street, city, state, birthdate, country, class_id, school_id) values(s_id, s_name, s_email, s_mobile, s_gender, s_zipcode, s_street, s_city, s_state, s_birthdate, s_country, s_class_id, s_school_id);
	 
    insert into users (id,name,email,pass,type,createdAt,updatedAt,student_id) values(uuid(),s_name,s_email,s_pass,'student',now(),now(),s_id);
    select s.*,sc.name as school, c.class from students s left join schools sc on (s.school_id=sc.id) left join classes c on(c.id=s.class_id)  where s.id=s_id;
    
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStudentById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `getStudentById`(s_id varchar(36))
BEGIN
	select * from students where id=s_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `students` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `students`()
BEGIN
	select s.*,sc.name as school, c.class from students s left join schools sc on (s.school_id=sc.id) left join classes c on(c.id=s.class_id) ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 13:47:25
