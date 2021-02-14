-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: medical_clinic
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `contact_description` text NOT NULL,
  `department_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_department_id_fk` (`department_id`),
  CONSTRAINT `contact_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (13,'Bravo','Kastrati','mila mila',2,'2021-02-13 21:05:59'),(14,'Adad','Test','dasda',2,'2021-02-13 21:01:53'),(15,'asdasd','adsda','dasdasda',2,'2021-02-13 00:00:34'),(16,'Filiza','Kastrati','Termini',2,'2021-02-13 00:01:26');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (2,'Neurology','Neurologists in the Medical Clinic have a reputation for finding and diagnosing problems that have confused others in the medical field. They can now treat almost every disease to some point.','2021-02-12 21:38:43','/photos/Neurology.png'),(3,'Orthopedics','Our orthopedists are highly-trained experts and leaders in their field, committed to delivering orthopedic excellence and personalized care. Each doctor has gone beyond general orthopedic training to specialize in a specific part of the body.','2021-02-12 21:39:04','/photos/Orthopedics.png'),(4,'Cardiology','           Medical Clinic is one of the finest in the city \r\n            and one of the best Cardiology Hospitals in Hyderabad.\r\n             An integrated facility, it has a dedicated team of \r\n             cardiologists and cardiac surgeons providing comprehensive,\r\n              multi-disciplinary care to patients with various heart diseases.\r\n               The entire team of doctors, nurses, technicians and heart \r\n               specialists ensures excellent and efficient patient care      ','2021-02-13 02:25:04','/photos/cardiology2jpg.jpg');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `bio` text,
  `department_id` int DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctors_department_id_fk` (`department_id`),
  CONSTRAINT `doctors_department_id_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr.Andrew','Khan','Dr Andrew Khan is absolutely amaizing very professional, kind and takes his time with his patient. Dr.Khan works in medical Clinic and specializes in Emergency Medicine.                                ',4,'/photos/Andrew Khan.png'),(2,'Dr.Amelia','Write','Dr Amelia Amelia is absolutely amaizing very professional, kind and takes his time with his patient. Dr.Khan works in medical Clinic and specializes in Emergency Medicine.	',2,'/photos/Amelia Write.png'),(3,'Dr.Anthony ','Robins','Dr Anthony Robins is absolutely amaizing very professional, kind and takes his time with his patient. Dr.Khan works in medical Clinic and specializes in Emergency Medicine.	',3,'/photos/Anthony Robins.png'),(4,'Getoar','Kastrati','Dr Getoar Kastrati is absolutely amaizing very professional, kind and takes his time with his patient. Dr.Khan works in medical Clinic and specializes in Emergency Medicine.	',2,'/photos/Andrew Khan.png');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletter_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (1,'gg@gg.ccc','2021-02-12 20:13:43');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About the Medical Clinic Lixa','           Welcome to My Medical Clinic, We specialize in providing \r\n             care for working adults with a full spectrum of Occupational\r\n             Health Services including ON SITE services.For your convenience,\r\n             our care plans are optimized to take care of both \r\n            Employer and Employee health clinic needs. We perform Immigration   Medical Exam, DOT physical exam, Pre employment drug test, \r\n            agility testing, drug screening,random testing, DOT exam, asbestos \r\n            testing, Silica physical exam, and more. Chiropractic care is also\r\n            conveniently available at the medical clinic to provide care overseen\r\n             by the MD. We can also take care of your non-work related medical \r\n             conditions.Visit us to experience the full benefits of having Board Certified         ','2021-02-13 02:00:46','/photos/aboutus.jpg'),(12,'E re','dasdasdasdad','2021-02-13 02:05:13',''),(13,'edhene','                   fsdfsd','2021-02-13 02:05:37','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `surname` varchar(60) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `user_role` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_users_email_uindex` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Filiza','Kastrati','filizakastrati1@gmail.com','admin','202cb962ac59075b964b07152d234b70'),(21,'asdf','asdf','asdf@asdf.asdf','patient','912ec803b2ce49e4a541068d495ab570'),(24,'GetoarT','Kastrati','getoarkastrati1@gmail.com','super_admin','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-14 17:15:58
