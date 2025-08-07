-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: 172.17.0.1    Database: biggbonuspoints_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `accounts_corporate`
--

DROP TABLE IF EXISTS `accounts_corporate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_corporate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `corporate_id` varchar(20) DEFAULT NULL,
  `project_id` varchar(20) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `select_project` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `gst_number` varchar(15) DEFAULT NULL,
  `pan_number` varchar(20) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `address` longtext,
  `role` varchar(20) NOT NULL,
  `legal_name` varchar(255) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `security_question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `account_type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `logo_id` bigint DEFAULT NULL,
  `last_updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `corporate_id` (`corporate_id`),
  UNIQUE KEY `project_id` (`project_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `aadhaar_number` (`aadhaar_number`),
  UNIQUE KEY `pan_number` (`pan_number`),
  KEY `accounts_corporate_logo_id_c9628849_fk_accounts_logo_id` (`logo_id`),
  CONSTRAINT `accounts_corporate_logo_id_c9628849_fk_accounts_logo_id` FOREIGN KEY (`logo_id`) REFERENCES `accounts_logo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_corporate`
--

LOCK TABLES `accounts_corporate` WRITE;
/*!40000 ALTER TABLE `accounts_corporate` DISABLE KEYS */;
INSERT INTO `accounts_corporate` VALUES (1,'CORP000001','PROJ000001','Demo Project',NULL,'Samit','Chougule','samit@gmail.com','9876543214','12345432123','22AAAAA0000C1Z4','ISRFK6870D','Samit Shop','Pune','admin','Samit Shop','Maharashtra','Pune','India',416006,NULL,1818,NULL,NULL,'2025-06-11 09:42:02.118667','2025-07-04 06:57:23.733131','normal','Active',NULL,'2025-07-04 06:57:23.733246'),(2,'CORP000002','PROJ000002','Monginis','','Virat','Desai ','virat112@gmail.com','3234354569','223111123445','22AAAAA0000A1Z5','ABCPE1234F','Monginis - 1','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','admin','Monginis - 1','Maharashtra','Airoli','India',416210,NULL,1111,NULL,NULL,'2025-06-12 11:46:12.145316',NULL,'normal','Active',2,'2025-07-04 06:48:48.070782'),(8,'CORP000003','PROJ000003','test001','','test','two','test@gmail.com','8899999999','777777777777','22AAAAA0000C1Z3','ISRHE3289E','test shop','Pune','admin','test shop','Assam','Bilasipara','India',415231,NULL,1212,NULL,NULL,'2025-06-17 05:16:30.621896',NULL,'normal','Active',NULL,'2025-06-27 10:28:13.067815'),(9,'CORP000004','PROJ000004','test three','','test','four','test1@gmail.com','8766666666','465677777777','22AAABB0000A3Z7','ISRPK6870D','Test shop','Kasaba Bavada, Kolhapur','admin','test shop','Maharashtra','Kolhapur','India',416006,NULL,1515,NULL,NULL,'2025-06-17 11:32:16.403795',NULL,'normal','Active',NULL,'2025-06-27 10:28:13.067815'),(10,'CORP000005','PROJ000005','Miraasiv ','','Rajan','Kumar ','rajan@techxis.com','9370783357','111111111112','27ABCDS1234F1Z5','ALNPK8014G','TECHXIS','Hinjewadi','admin','TechXis','Maharashtra','Pune','India',400515,NULL,9876,NULL,NULL,'2025-06-17 13:19:45.247104',NULL,'global','Inactive',NULL,'2025-07-03 06:08:48.566149'),(11,'CORP000006','PROJ000006','Biggbonuspoints','','Rittesh','Kumar','ritteshskumar@gmail.com','9994204811','111111111114','27ABCDE1234F1Z5','ALNPK8015G','Trinetra Hotel','Munger','admin','Trinetra hotels n resort llp','Bihar','Munger','India',811201,NULL,2025,NULL,NULL,'2025-06-22 08:19:21.510713',NULL,'global','Active',11,'2025-06-27 10:28:13.067815'),(12,'CORP000007','PROJ000007','Testing 1','','Test','Desai','test12@gmail.com','2323466765','234555555555','','VVHHH1234F','test 1','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','admin','test 1','West Bengal','Amta','India',416210,NULL,1111,NULL,NULL,'2025-07-03 05:55:16.076802','2025-07-03 06:06:28.729304','normal','Active',12,'2025-07-04 06:06:40.987149');
/*!40000 ALTER TABLE `accounts_corporate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_customer`
--

DROP TABLE IF EXISTS `accounts_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_customer` (
  `customer_id` varchar(25) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_profile_updated` tinyint(1) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `otp` int DEFAULT NULL,
  `new_mobile_otp` int DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `security_question_id` bigint DEFAULT NULL,
  `logo_id` bigint DEFAULT NULL,
  `unread_notification` int NOT NULL,
  `temp_pin` int DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `aadhaar_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `pan_number` (`pan_number`),
  KEY `accounts_customer_logo_id_0f1ec74d_fk_accounts_logo_id` (`logo_id`),
  KEY `accounts_customer_security_question_id_cad167ac_fk_bopo_admi` (`security_question_id`),
  CONSTRAINT `accounts_customer_logo_id_0f1ec74d_fk_accounts_logo_id` FOREIGN KEY (`logo_id`) REFERENCES `accounts_logo` (`id`),
  CONSTRAINT `accounts_customer_security_question_id_cad167ac_fk_bopo_admi` FOREIGN KEY (`security_question_id`) REFERENCES `bopo_admin_securityquestion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_customer`
--

LOCK TABLES `accounts_customer` WRITE;
/*!40000 ALTER TABLE `accounts_customer` DISABLE KEYS */;
INSERT INTO `accounts_customer` VALUES ('CUST000001','Ramesh','test','test@gmail.com',1,'9765663269',21,'Male',709141,583163,1212,'red','ABCDE0700F',416506,'Koll','Arrah','Bihar','India','2025-06-11 09:31:06.558862','2025-07-03 11:45:51.000000','Active',1,1,0,1234,NULL,'946944884646'),('CUST000002','Vishal','Mane','vishal@gmail.com',1,'9876543210',22,'Male',NULL,NULL,1313,'Blue','Yehwb637',416506,'Wagholi','Pune','Andhra Pradesh','India','2025-06-11 09:34:48.815675','2025-06-11 09:34:36.000000','Active',1,1,9,NULL,NULL,NULL),('CUST000003','Manisha','Shinde','manisha@gmail.com',0,'9876543211',24,'Female',NULL,NULL,1414,'red',NULL,NULL,NULL,NULL,NULL,NULL,'2025-06-11 09:36:22.525884','2025-06-11 09:36:19.000000','Active',1,NULL,9,NULL,NULL,NULL),('CUST000004','Harsh','Mane','harsh@gmail.com',1,'9876543212',88888888,'Male',NULL,453682,1515,'Blue','Hshshdhssss',994646,'Hshshhdghhh','Bbbbhhhhhh','Jammu','Incia','2025-06-11 09:37:55.045673','2025-06-11 09:37:53.000000','Active',1,1,4,NULL,NULL,NULL),('CUST000005','Nilam','Patil','nilam@gmail.com',0,'9876543213',25,'Female',NULL,NULL,NULL,'pink',NULL,NULL,NULL,NULL,NULL,NULL,'2025-06-11 09:39:03.471906','2025-06-11 09:39:01.000000','Active',1,NULL,9,NULL,NULL,NULL),('CUST000006','Riya','Patil','riya12@gmail.com',0,'9423432604',34,'Female',NULL,NULL,1111,NULL,'AFFPU1234D',416210,'A/p kadgaon ,Tal-bhudargad, dist-kolhapur','Akalkot','Maharashtra','India','2025-06-13 06:36:55.177889','2025-06-13 06:49:25.150780','Active',NULL,NULL,12,NULL,NULL,NULL),('CUST000007','Samruddhi','Manikeri',NULL,0,'7796175339',NULL,'',862974,NULL,1234,'Red',NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-14 04:27:19.179098',NULL,'Active',1,NULL,1,NULL,NULL,NULL),('CUST000008','Rohini','Mane',NULL,1,'8965321568',NULL,'',NULL,NULL,1312,'Red',NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-16 10:49:52.874362','2025-07-16 10:50:06.909644','Active',1,1,1,NULL,NULL,NULL),('CUST000009','Manu','Shinde',NULL,1,'5656565656',NULL,'',NULL,NULL,1212,'Blue',NULL,NULL,NULL,NULL,NULL,NULL,'2025-07-21 05:21:24.914511','2025-07-21 05:22:14.296219','Active',1,NULL,1,NULL,NULL,NULL),('CUST000010','Rittesh','Kumar',NULL,1,'9987583357',40,'Male',NULL,NULL,1234,'White','',400615,'Godhbunder','Akola','Maharashtra','India','2025-07-24 07:43:25.493158','2025-07-24 07:44:13.461555','Active',1,NULL,0,NULL,NULL,'');
/*!40000 ALTER TABLE `accounts_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_logo`
--

DROP TABLE IF EXISTS `accounts_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_logo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_logo`
--

LOCK TABLES `accounts_logo` WRITE;
/*!40000 ALTER TABLE `accounts_logo` DISABLE KEYS */;
INSERT INTO `accounts_logo` VALUES (1,'logos/logo_EPf5RVL.png','2025-05-31 06:27:01.292061'),(2,'logos/logo_Fn8BXrb.png','2025-06-12 11:46:11.713364'),(3,'logos/logo_36212930.jpeg','2025-06-13 10:04:25.821845'),(4,'logos/logo_ed8ad515.jpeg','2025-06-20 06:12:53.266163'),(5,'logos/logo_2cafbaf6.jpeg','2025-06-20 07:46:10.579643'),(6,'logos/logo_5a7172d0.jpeg','2025-06-20 07:46:11.889913'),(7,'logos/logo_fa57df26.jpeg','2025-06-20 12:16:21.902244'),(8,'logos/logo_a5e3acf8.jpeg','2025-06-20 12:16:55.493915'),(9,'logos/logo_56bd7c11.jpeg','2025-06-20 12:16:57.249063'),(10,'logos/trinetra.png','2025-06-22 08:18:30.260024'),(11,'logos/trinetra_X3BbNg9.png','2025-06-22 08:19:21.299404'),(12,'logos/logo.jpg','2025-07-03 05:55:15.785915'),(13,'logos/logo_3d877d11.jpeg','2025-07-05 05:29:09.742711'),(14,'logos/logo_b276e83d.jpeg','2025-07-09 05:12:21.153205'),(15,'logos/logo_a8dc8187.jpeg','2025-07-09 05:31:08.828844'),(16,'logos/logo_2a8c70ef.jpeg','2025-07-09 05:33:00.490270'),(17,'logos/logo_ad94601d.jpeg','2025-07-09 05:34:37.860717'),(18,'logos/logo_d6513147.jpeg','2025-07-09 05:36:21.491908'),(19,'logos/logo_aa1f6116.jpeg','2025-07-09 05:38:01.053542'),(20,'logos/logo_95d8c489.jpeg','2025-07-09 05:42:17.245354'),(21,'logos/logo_9ee319c2.jpeg','2025-07-09 05:43:36.161015'),(22,'logos/logo_d58d5942.jpeg','2025-07-09 05:44:29.854868'),(23,'logos/logo_d90f0bd5.jpeg','2025-07-09 05:49:01.298715'),(24,'logos/logo_caee8547.jpeg','2025-07-09 05:51:34.006009'),(25,'logos/logo_ac96d46d.jpeg','2025-07-09 06:56:05.951875'),(26,'logos/logo_d28b26e2.jpeg','2025-07-09 06:57:33.245569'),(27,'logos/logo_2ee71d6b.jpeg','2025-07-10 05:43:35.900801'),(28,'logos/logo_82fde092.jpeg','2025-07-10 07:25:57.483853'),(29,'logos/logo_3745ef37.jpeg','2025-07-11 04:38:59.272831'),(30,'logos/logo_1326e258.jpeg','2025-07-11 04:46:44.883097'),(31,'logos/logo_0ceb82f0.jpeg','2025-07-11 04:58:19.115515'),(32,'logos/logo_37050c52.jpeg','2025-07-11 11:06:23.405225'),(33,'logos/logo_05346237.jpeg','2025-07-21 06:41:56.767636'),(34,'logos/logo_2a07fed6.jpeg','2025-07-21 07:35:52.180491'),(35,'logos/logo_c434f537.jpeg','2025-07-21 09:37:10.496687');
/*!40000 ALTER TABLE `accounts_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_merchant`
--

DROP TABLE IF EXISTS `accounts_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_merchant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_type` varchar(20) NOT NULL,
  `merchant_id` varchar(255) DEFAULT NULL,
  `plan_type` varchar(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `otp` int DEFAULT NULL,
  `new_mobile_otp` int DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `is_profile_updated` tinyint(1) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `gst_number` varchar(15) DEFAULT NULL,
  `pan_number` varchar(10) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `address` longtext,
  `legal_name` varchar(255) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `corporate_id` varchar(20) DEFAULT NULL,
  `employee_id_id` varchar(20) DEFAULT NULL,
  `logo_id` bigint DEFAULT NULL,
  `project_name_id` bigint DEFAULT NULL,
  `security_question_id` bigint DEFAULT NULL,
  `unread_notification` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `temp_pin` int DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `last_updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `merchant_id` (`merchant_id`),
  UNIQUE KEY `aadhaar_number` (`aadhaar_number`),
  KEY `accounts_merchant_employee_id_id_d4453fa7_fk_bopo_admi` (`employee_id_id`),
  KEY `accounts_merchant_logo_id_5459b92c_fk_accounts_logo_id` (`logo_id`),
  KEY `accounts_merchant_project_name_id_f7e7e73b_fk_accounts_` (`project_name_id`),
  KEY `accounts_merchant_security_question_id_49255a77_fk_bopo_admi` (`security_question_id`),
  CONSTRAINT `accounts_merchant_employee_id_id_d4453fa7_fk_bopo_admi` FOREIGN KEY (`employee_id_id`) REFERENCES `bopo_admin_employee` (`employee_id`),
  CONSTRAINT `accounts_merchant_logo_id_5459b92c_fk_accounts_logo_id` FOREIGN KEY (`logo_id`) REFERENCES `accounts_logo` (`id`),
  CONSTRAINT `accounts_merchant_project_name_id_f7e7e73b_fk_accounts_` FOREIGN KEY (`project_name_id`) REFERENCES `accounts_corporate` (`id`),
  CONSTRAINT `accounts_merchant_security_question_id_49255a77_fk_bopo_admi` FOREIGN KEY (`security_question_id`) REFERENCES `bopo_admin_securityquestion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_merchant`
--

LOCK TABLES `accounts_merchant` WRITE;
/*!40000 ALTER TABLE `accounts_merchant` DISABLE KEYS */;
INSERT INTO `accounts_merchant` VALUES (1,'individual','MID75770889255','prepaid','Nishant','Patil','nishant@gmail.com','9765663269',600421,NULL,1616,23,NULL,1,'red','Active','2025-06-11 09:47:43.098506','2025-07-04 06:57:23.000000','454545323232','22AAAAA0000C1Z4','ISRVK6870D','Nishant Cafe','Pune','Nishant shop','Maharashtra','Pune','India',416213,NULL,NULL,32,1,1,1,'Male',1212,NULL,'2025-07-11 11:06:23.660705'),(2,'individual','MID75770889258','prepaid','Aarav','Jadhav','aarav@gmail.com','9876543216',NULL,NULL,1717,23,NULL,1,'blue','Active','2025-06-11 09:50:06.902816','2025-07-04 06:57:23.490453','656565432348','Ggjhhh','Ffgghhhggg','Gfg','Hvuvvuu','Aarav Cafe','Delhi','Dd','Sss',123458,NULL,NULL,6,1,1,3,'Male',NULL,NULL,'2025-06-27 10:28:16.597197'),(3,'corporate','MID75770889257','prepaid','Mohit','Sing','mohit@gmail.com','9876543218',NULL,NULL,1919,22,NULL,1,'blue','Active','2025-06-11 09:53:18.722977','2025-07-04 07:21:24.451290','878787878778','Gghhhh','Gggggbbbbb','Mohit Cafe','Kolhapur','Mohit Cafe','Uttar Pradesh','Yuuui','Infia',666622,'CORP000001',NULL,4,1,1,0,'Male',NULL,NULL,'2025-07-05 04:51:00.620436'),(4,'corporate','MID30680592289','rental','Varun','Patil','varun@gmail.com','9876543222',NULL,NULL,1122,31,NULL,0,'black','Active','2025-06-11 09:56:44.122086','2025-07-04 06:57:23.490453','565656464546','22AAAAA0000C2Z8','ISRHE3287E','Varun Cafe','Shivaji Nagar','Varun Cafe','Maharashtra','Pune','India',NULL,'CORP000001',NULL,1,1,1,0,'Male',NULL,NULL,'2025-06-27 10:28:16.597197'),(5,'corporate','MID30680592283','rental','Diya','Patil','diya@gmail.com','9876543221',NULL,NULL,1331,22,NULL,0,'red','Active','2025-06-11 09:59:18.354948','2025-07-04 06:57:23.490453','787878786787','22AAAAA0000C2Z1','ISRFK6870D','Diya Cafe','Pune','Diya Cafe','Maharashtra','Pune','India',416002,'CORP000001',NULL,NULL,1,1,0,'Female',NULL,NULL,'2025-07-03 06:23:30.541968'),(6,'individual','MID75770889251','rental','Sayali','Patil','sayali@example.com','9876543223',NULL,NULL,1551,22,NULL,0,'red','Active','2025-06-11 10:01:24.392774','2025-07-04 06:57:23.490453',NULL,NULL,NULL,NULL,'',NULL,'Maharashtra','Kolhapur','India',416006,NULL,NULL,NULL,1,1,3,'Female',NULL,NULL,'2025-06-27 10:28:16.597197'),(7,'corporate','MID12771412223','prepaid','Akash','Patil','akash12@gmail.com','7655555555',NULL,NULL,1122,23,NULL,1,NULL,'Active','2025-06-12 11:59:32.288852',NULL,'666655557777','22AAAAA8750A1Z3','AISHU1234F','Monginis - 2','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','Monginis - 2','Maharashtra','Bhandara','India',416210,'CORP000002',NULL,33,2,NULL,0,'Male',NULL,NULL,'2025-07-21 06:41:56.979292'),(8,'individual','MID77477308456','rental','Aishwarya','Desai','aish112@gmail.com','3434454544',896309,NULL,3344,NULL,NULL,0,NULL,'Active','2025-06-12 12:43:47.502175',NULL,'777888888888','22AAAAA0000A1Z1','AISHU1234D','Co cafe\'s 1','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','Co cafe\'s 1','Maharashtra','Artist Village','India',416210,NULL,NULL,NULL,2,NULL,6,'Female',NULL,NULL,'2025-06-27 10:28:16.597197'),(9,'corporate','MONG15622074075','prepaid','Shweta','Desai','shweta12@gmail.com','3234677887',NULL,NULL,1122,NULL,NULL,0,NULL,'Active','2025-06-13 11:05:15.739023',NULL,'324434444433','22UUUUU0000A1Z2','ABCPE1774F','Co cafe\'s 2','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','Co cafe\'s 2','Maharashtra','Akalkot','India',416210,'CORP000002',NULL,NULL,2,NULL,1,'',NULL,NULL,'2025-06-27 10:28:16.597197'),(10,'corporate','MID65228467587','prepaid','Rittesh ','Singh','ritesh87@gmail.com','9987583359',NULL,NULL,1234,NULL,NULL,0,NULL,'Active','2025-06-17 05:01:06.025699','2025-07-04 06:57:23.490453','111111111111','27ABCDS1234F1Z5','ALNPK8014G','Kumar','Bombay ','Lang','Maharashtra','Thane','India',400708,'CORP000001',NULL,NULL,1,NULL,0,'',NULL,NULL,'2025-07-04 06:43:44.680158'),(18,'corporate','MID54486019636','prepaid','Darshal','Kumar','darshal@gmail.com','9765663264',NULL,NULL,2345,NULL,NULL,1,NULL,'Active','2025-06-17 13:32:27.961644','2025-07-03 06:09:52.000000','978643311651','22AAAAA0000A1Z5','ABCDE1234F','Xyz','Islampur','Sreekar','Maharashtra','Ashta','India',416506,'CORP000005',NULL,30,10,NULL,0,'Male',NULL,NULL,'2025-07-11 04:47:37.104120'),(20,'individual','MID81789648108','prepaid','Test','Desai','test172@gmail.com','6649449849',NULL,NULL,1122,22,NULL,1,NULL,'Active','2025-07-04 05:24:30.965020','2025-07-04 05:24:30.000000','346494964644','11AAAAA0000A1Z5','ABCDE0000J','Abc','Jshs','Co-cafe\'s 1','Assam','Baksa','India',649494,NULL,NULL,31,2,NULL,1,'Male',NULL,NULL,'2025-07-11 04:58:19.367629'),(22,'individual','MID67772625680','prepaid','Ritesh','Kumar',NULL,'9987583387',317588,NULL,1234,NULL,NULL,0,'White','Active','2025-07-12 14:00:21.410102',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'',NULL,NULL,'2025-07-12 14:00:34.818647'),(23,'individual','MID17544090828','prepaid','Samruddhi','Manikeri',NULL,'7796175339',982712,NULL,1234,NULL,NULL,0,'Red','Active','2025-07-14 04:33:56.420615',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'',NULL,NULL,'2025-07-15 05:14:43.697521'),(24,'individual','MID11975947488','prepaid','Rittesh','Kumar',NULL,'9370783357',534266,NULL,1234,NULL,NULL,0,'White','Active','2025-07-14 13:57:24.096526',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'',NULL,NULL,'2025-07-15 07:17:41.466305'),(25,'individual','MID55509847539','prepaid','Manasi','Patil','manasi@gmail.com','9765663263',272307,NULL,1112,NULL,NULL,0,'Blue','Active','2025-07-16 10:39:07.470033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,1,'',NULL,NULL,'2025-07-16 10:39:07.470104'),(26,'individual','MID61830124013','Prepaid','Ritu','Sing',NULL,'8888888888',NULL,NULL,1414,25,NULL,1,'Red','Active','2025-07-21 07:30:55.899561','2025-07-21 07:31:23.579194','568523355888','22AAAAB0011C2Z4','ISRVK6543D','Ritu cafe','Baramati',NULL,'Maharashtra','Baramati','India',431524,NULL,NULL,35,NULL,1,0,'Female',NULL,NULL,'2025-07-21 11:16:10.190976'),(27,'individual','MID65889163060','prepaid','Sujata','Kumar',NULL,'9987893517',NULL,NULL,1234,NULL,NULL,0,'White','Active','2025-07-24 07:35:58.677412','2025-07-24 07:36:31.999271',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'',NULL,NULL,'2025-07-24 07:36:32.000808'),(28,'individual','MID83917576516','prepaid','ABCD Xyz ','Kumar','ritesh57@gmail.com','9167298540',NULL,NULL,1234,NULL,NULL,0,NULL,'Active','2025-08-06 09:15:47.411835','2025-08-06 09:15:47.411485','123412341234','','','Jagdamb Pooja center','Gb road','Jagdamb center','Maharashtra','Thane','India',400607,NULL,NULL,NULL,NULL,NULL,0,'',NULL,NULL,'2025-08-06 09:15:47.411900');
/*!40000 ALTER TABLE `accounts_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_terminal`
--

DROP TABLE IF EXISTS `accounts_terminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_terminal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `terminal_id` varchar(20) NOT NULL,
  `tid_pin` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `merchant_id_id` bigint NOT NULL,
  `is_login` tinyint(1) DEFAULT '0',
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `terminal_id` (`terminal_id`),
  KEY `accounts_terminal_merchant_id_id_6e0fa90a_fk_accounts_` (`merchant_id_id`),
  CONSTRAINT `accounts_terminal_merchant_id_id_6e0fa90a_fk_accounts_` FOREIGN KEY (`merchant_id_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_terminal`
--

LOCK TABLES `accounts_terminal` WRITE;
/*!40000 ALTER TABLE `accounts_terminal` DISABLE KEYS */;
INSERT INTO `accounts_terminal` VALUES (1,'TID64785533',2764,'2025-06-12 11:59:32.555218','Active',7,0,1),(2,'TID80188947',3344,'2025-06-12 12:43:47.783757','Active',8,0,1),(3,'TID59206623',1122,'2025-06-13 04:57:46.857859','Active',7,0,1),(4,'TID90637155',1122,'2025-06-13 11:05:16.123424','Active',9,0,1),(5,'TID13287643',7310,'2025-06-13 11:26:22.669743','Active',9,0,0),(6,'TID19567088',1234,'2025-06-17 05:01:06.249285','Active',10,0,1),(8,'TID26653754',2345,'2025-06-17 13:32:28.216101','Active',18,0,1),(9,'TID71239478',1331,'2025-06-22 08:22:44.286435','Active',5,0,1),(10,'TID65818053',8988,'2025-06-22 08:22:55.540233','Active',5,0,0),(13,'TID21235696',1122,'2025-07-04 05:24:31.189102','Active',20,0,1),(16,'TID36260285',9267,'2025-07-04 07:47:26.110401','Active',20,0,0),(18,'TID63067987',9781,'2025-07-07 10:57:59.556174','Active',7,0,0),(19,'TID60667986',1234,'2025-07-12 14:00:21.615627','Active',22,0,1),(20,'TID22618637',3904,'2025-07-12 14:00:35.272704','Active',22,0,0),(21,'TID69100044',1234,'2025-07-14 04:33:56.689836','Active',23,0,1),(22,'TID95168591',1756,'2025-07-14 04:34:24.746682','Active',23,0,0),(23,'TID13942188',7740,'2025-07-14 04:35:02.525626','Active',23,0,0),(24,'TID14262771',8000,'2025-07-14 04:38:08.793601','Active',23,0,0),(25,'TID36052427',2404,'2025-07-14 04:43:15.817958','Active',23,0,0),(26,'TID21494865',1904,'2025-07-14 05:08:11.252255','Active',23,0,0),(27,'TID56462744',5700,'2025-07-14 10:53:22.065872','Active',23,0,0),(28,'TID32038182',2174,'2025-07-14 13:57:24.462218','Active',24,0,0),(29,'TID92118098',3517,'2025-07-14 13:57:37.712118','Active',24,0,0),(30,'TID44207855',6947,'2025-07-15 05:13:16.937099','Active',23,0,0),(31,'TID27066766',9274,'2025-07-15 05:14:43.939212','Active',23,0,0),(32,'TID59531899',1254,'2025-07-15 07:15:41.225799','Active',24,0,0),(33,'TID27919267',6780,'2025-07-15 07:17:41.672733','Active',24,0,0),(34,'TID87206564',1112,'2025-07-16 10:39:07.726801','Active',25,0,1),(35,'TID65793936',1414,'2025-07-21 07:30:56.818407','Active',26,0,1),(36,'TID85275212',1515,'2025-07-21 09:17:21.022821','Active',26,0,0),(37,'TID64785534',1616,'2025-07-21 11:54:36.569221','Active',1,0,1),(38,'TID34037038',1234,'2025-07-24 07:35:59.054071','Active',27,0,1),(39,'TID87437152',1703,'2025-08-06 09:15:48.225890','Active',28,0,0);
/*!40000 ALTER TABLE `accounts_terminal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add account info',6,'add_accountinfo'),(22,'Can change account info',6,'change_accountinfo'),(23,'Can delete account info',6,'delete_accountinfo'),(24,'Can view account info',6,'view_accountinfo'),(25,'Can add deduct setting',7,'add_deductsetting'),(26,'Can change deduct setting',7,'change_deductsetting'),(27,'Can delete deduct setting',7,'delete_deductsetting'),(28,'Can view deduct setting',7,'view_deductsetting'),(29,'Can add employee',8,'add_employee'),(30,'Can change employee',8,'change_employee'),(31,'Can delete employee',8,'delete_employee'),(32,'Can view employee',8,'view_employee'),(33,'Can add merchant credential',9,'add_merchantcredential'),(34,'Can change merchant credential',9,'change_merchantcredential'),(35,'Can delete merchant credential',9,'delete_merchantcredential'),(36,'Can view merchant credential',9,'view_merchantcredential'),(37,'Can add merchant login',10,'add_merchantlogin'),(38,'Can change merchant login',10,'change_merchantlogin'),(39,'Can delete merchant login',10,'delete_merchantlogin'),(40,'Can view merchant login',10,'view_merchantlogin'),(41,'Can add notification',11,'add_notification'),(42,'Can change notification',11,'change_notification'),(43,'Can delete notification',11,'delete_notification'),(44,'Can view notification',11,'view_notification'),(45,'Can add reducelimit',12,'add_reducelimit'),(46,'Can change reducelimit',12,'change_reducelimit'),(47,'Can delete reducelimit',12,'delete_reducelimit'),(48,'Can view reducelimit',12,'view_reducelimit'),(49,'Can add security question',13,'add_securityquestion'),(50,'Can change security question',13,'change_securityquestion'),(51,'Can delete security question',13,'delete_securityquestion'),(52,'Can view security question',13,'view_securityquestion'),(53,'Can add state',14,'add_state'),(54,'Can change state',14,'change_state'),(55,'Can delete state',14,'delete_state'),(56,'Can view state',14,'view_state'),(57,'Can add uploaded file',15,'add_uploadedfile'),(58,'Can change uploaded file',15,'change_uploadedfile'),(59,'Can delete uploaded file',15,'delete_uploadedfile'),(60,'Can view uploaded file',15,'view_uploadedfile'),(61,'Can add user balance',16,'add_userbalance'),(62,'Can change user balance',16,'change_userbalance'),(63,'Can delete user balance',16,'delete_userbalance'),(64,'Can view user balance',16,'view_userbalance'),(65,'Can add bopo admin',17,'add_bopoadmin'),(66,'Can change bopo admin',17,'change_bopoadmin'),(67,'Can delete bopo admin',17,'delete_bopoadmin'),(68,'Can view bopo admin',17,'view_bopoadmin'),(69,'Can add employee role',18,'add_employeerole'),(70,'Can change employee role',18,'change_employeerole'),(71,'Can delete employee role',18,'delete_employeerole'),(72,'Can view employee role',18,'view_employeerole'),(73,'Can add city',19,'add_city'),(74,'Can change city',19,'change_city'),(75,'Can delete city',19,'delete_city'),(76,'Can view city',19,'view_city'),(77,'Can add topup',20,'add_topup'),(78,'Can change topup',20,'change_topup'),(79,'Can delete topup',20,'delete_topup'),(80,'Can view topup',20,'view_topup'),(81,'Can add award points',21,'add_awardpoints'),(82,'Can change award points',21,'change_awardpoints'),(83,'Can delete award points',21,'delete_awardpoints'),(84,'Can view award points',21,'view_awardpoints'),(85,'Can add model plan',22,'add_modelplan'),(86,'Can change model plan',22,'change_modelplan'),(87,'Can delete model plan',22,'delete_modelplan'),(88,'Can view model plan',22,'view_modelplan'),(89,'Can add bank detail',23,'add_bankdetail'),(90,'Can change bank detail',23,'change_bankdetail'),(91,'Can delete bank detail',23,'delete_bankdetail'),(92,'Can view bank detail',23,'view_bankdetail'),(93,'Can add cash out',24,'add_cashout'),(94,'Can change cash out',24,'change_cashout'),(95,'Can delete cash out',24,'delete_cashout'),(96,'Can view cash out',24,'view_cashout'),(97,'Can add customer to customer',25,'add_customertocustomer'),(98,'Can change customer to customer',25,'change_customertocustomer'),(99,'Can delete customer to customer',25,'delete_customertocustomer'),(100,'Can view customer to customer',25,'view_customertocustomer'),(101,'Can add global points',26,'add_globalpoints'),(102,'Can change global points',26,'change_globalpoints'),(103,'Can delete global points',26,'delete_globalpoints'),(104,'Can view global points',26,'view_globalpoints'),(105,'Can add help',27,'add_help'),(106,'Can change help',27,'change_help'),(107,'Can delete help',27,'delete_help'),(108,'Can view help',27,'view_help'),(109,'Can add history',28,'add_history'),(110,'Can change history',28,'change_history'),(111,'Can delete history',28,'delete_history'),(112,'Can view history',28,'view_history'),(113,'Can add merchant points',29,'add_merchantpoints'),(114,'Can change merchant points',29,'change_merchantpoints'),(115,'Can delete merchant points',29,'delete_merchantpoints'),(116,'Can view merchant points',29,'view_merchantpoints'),(117,'Can add payment details',30,'add_paymentdetails'),(118,'Can change payment details',30,'change_paymentdetails'),(119,'Can delete payment details',30,'delete_paymentdetails'),(120,'Can view payment details',30,'view_paymentdetails'),(121,'Can add super admin payment',31,'add_superadminpayment'),(122,'Can change super admin payment',31,'change_superadminpayment'),(123,'Can delete super admin payment',31,'delete_superadminpayment'),(124,'Can view super admin payment',31,'view_superadminpayment'),(125,'Can add customer points',32,'add_customerpoints'),(126,'Can change customer points',32,'change_customerpoints'),(127,'Can delete customer points',32,'delete_customerpoints'),(128,'Can view customer points',32,'view_customerpoints'),(129,'Can add merchant to merchant',33,'add_merchanttomerchant'),(130,'Can change merchant to merchant',33,'change_merchanttomerchant'),(131,'Can delete merchant to merchant',33,'delete_merchanttomerchant'),(132,'Can view merchant to merchant',33,'view_merchanttomerchant'),(133,'Can add last expiry run',34,'add_lastexpiryrun'),(134,'Can change last expiry run',34,'change_lastexpiryrun'),(135,'Can delete last expiry run',34,'delete_lastexpiryrun'),(136,'Can view last expiry run',34,'view_lastexpiryrun'),(137,'Can add customer to customer',35,'add_customertocustomer'),(138,'Can change customer to customer',35,'change_customertocustomer'),(139,'Can delete customer to customer',35,'delete_customertocustomer'),(140,'Can view customer to customer',35,'view_customertocustomer'),(141,'Can add merchant to merchant',36,'add_merchanttomerchant'),(142,'Can change merchant to merchant',36,'change_merchanttomerchant'),(143,'Can delete merchant to merchant',36,'delete_merchanttomerchant'),(144,'Can view merchant to merchant',36,'view_merchanttomerchant'),(145,'Can add corporate',37,'add_corporate'),(146,'Can change corporate',37,'change_corporate'),(147,'Can delete corporate',37,'delete_corporate'),(148,'Can view corporate',37,'view_corporate'),(149,'Can add customer',38,'add_customer'),(150,'Can change customer',38,'change_customer'),(151,'Can delete customer',38,'delete_customer'),(152,'Can view customer',38,'view_customer'),(153,'Can add logo',39,'add_logo'),(154,'Can change logo',39,'change_logo'),(155,'Can delete logo',39,'delete_logo'),(156,'Can view logo',39,'view_logo'),(157,'Can add merchant',40,'add_merchant'),(158,'Can change merchant',40,'change_merchant'),(159,'Can delete merchant',40,'delete_merchant'),(160,'Can view merchant',40,'view_merchant'),(161,'Can add terminal',41,'add_terminal'),(162,'Can change terminal',41,'change_terminal'),(163,'Can delete terminal',41,'delete_terminal'),(164,'Can view terminal',41,'view_terminal'),(165,'Can add transaction history',42,'add_transactionhistory'),(166,'Can change transaction history',42,'change_transactionhistory'),(167,'Can delete transaction history',42,'delete_transactionhistory'),(168,'Can view transaction history',42,'view_transactionhistory'),(169,'Can add qr store',43,'add_qrstore'),(170,'Can change qr store',43,'change_qrstore'),(171,'Can delete qr store',43,'delete_qrstore'),(172,'Can view qr store',43,'view_qrstore'),(173,'Can add transfers',44,'add_transfers'),(174,'Can change transfers',44,'change_transfers'),(175,'Can delete transfers',44,'delete_transfers'),(176,'Can view transfers',44,'view_transfers');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_accountinfo`
--

DROP TABLE IF EXISTS `bopo_admin_accountinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_accountinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accountNumber` varchar(200) DEFAULT NULL,
  `payableTo` varchar(200) DEFAULT NULL,
  `bankName` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `accountType` varchar(200) DEFAULT NULL,
  `ifscCode` varchar(200) DEFAULT NULL,
  `branchName` varchar(200) DEFAULT NULL,
  `pincode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_accountinfo`
--

LOCK TABLES `bopo_admin_accountinfo` WRITE;
/*!40000 ALTER TABLE `bopo_admin_accountinfo` DISABLE KEYS */;
INSERT INTO `bopo_admin_accountinfo` VALUES (1,'78604567889','Business','Bank Of Maharashtra','Kolhapur','Savings','MAHB0000749','Kadgaon','416210');
/*!40000 ALTER TABLE `bopo_admin_accountinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_bopoadmin`
--

DROP TABLE IF EXISTS `bopo_admin_bopoadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_bopoadmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `corporate_id` bigint DEFAULT NULL,
  `employee_id` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `has_twilio_subscription` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `bopo_admin_bopoadmin_corporate_id_ff8706e5_fk_accounts_` (`corporate_id`),
  KEY `bopo_admin_bopoadmin_employee_id_df8b6636_fk_bopo_admi` (`employee_id`),
  CONSTRAINT `bopo_admin_bopoadmin_corporate_id_ff8706e5_fk_accounts_` FOREIGN KEY (`corporate_id`) REFERENCES `accounts_corporate` (`id`),
  CONSTRAINT `bopo_admin_bopoadmin_employee_id_df8b6636_fk_bopo_admi` FOREIGN KEY (`employee_id`) REFERENCES `bopo_admin_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_bopoadmin`
--

LOCK TABLES `bopo_admin_bopoadmin` WRITE;
/*!40000 ALTER TABLE `bopo_admin_bopoadmin` DISABLE KEYS */;
INSERT INTO `bopo_admin_bopoadmin` VALUES (1,'2025-08-07 04:36:03.666924',1,'admin@bopo','pbkdf2_sha256$870000$ItoD740RIHKDpG0HHi3rTf$P/B6S6Oj09dGAKLSJN9zJNofvEPj2Kh8aeohxgFEqyg=','super_admin',1,1,NULL,NULL,NULL,'admin21@gmail.com','8786898888     ',0),(2,'2025-06-13 11:36:12.877606',0,'CORP000002','pbkdf2_sha256$870000$RZ8KQE6dCqnZf6T7fvc5Uy$E9l+wCGsInsM5CL7aEGZieL0juzwRzM0a5XLYbZr824=','corporate_admin',1,0,2,NULL,NULL,'virat12@gmail.com',NULL,0),(3,'2025-06-13 11:39:14.179415',0,'Anusha12','pbkdf2_sha256$870000$U6E61HUfnYwbSfhQjZPrcY$QVCKeJTBNXqi+Z9pAXqLaSNLs1m6Oe68N3O7LOgvL/g=','employee',1,0,NULL,'EMP10000001',NULL,'anusha12@gmail.com',NULL,0),(4,NULL,0,'CORP000003','pbkdf2_sha256$870000$YYV9lsANdqIrO3IHOT0gYu$Nl2+Pq5MtvYovqQri56GqE4iwR8hZmNfo/tKf7PHNH0=','corporate_admin',1,0,8,NULL,NULL,'test@gmail.com',NULL,0),(5,NULL,0,'CORP000004','pbkdf2_sha256$870000$KCSxI5aivxvtCbDanrT5ek$jt9kwB2lT/aKuocHtAkHQGVHXNaJl62jpcf8HC+vggs=','corporate_admin',1,0,9,NULL,NULL,'test1@gmail.com',NULL,0),(6,NULL,0,'CORP000005','pbkdf2_sha256$870000$qL1ZPzakeZajzyd6rfOVhA$gx6ODyH8sOkpWUPbgOknuH/4BP+nXi0ZllBcrhHnAsg=','corporate_admin',1,0,10,NULL,NULL,'rajan@techxis.com',NULL,0),(7,NULL,0,'CORP000006','pbkdf2_sha256$870000$tJaiGzI62RFPQ4uZJMtQyG$vjBJ3r5l0UMRBzBMZIBeJWr4pDiM0gIi7Mp+vW3Ntug=','corporate_admin',1,0,11,NULL,NULL,'ritteshskumar@gmail.com',NULL,0),(8,'2025-07-05 05:25:02.286446',0,'CORP000007','pbkdf2_sha256$870000$JPbA2UHn0RYmX4sZgXyhII$V2es5/K6693PbSVyWNJmX6gQVj74YiqGWVBGVwW87L4=','corporate_admin',1,0,12,NULL,NULL,'test11@gmail.com',NULL,0),(9,'2025-07-05 05:13:01.047257',0,'Testemp21','pbkdf2_sha256$870000$sdk7E29faJZiWWW6NWq20a$zzZ6bfkszBAPiXbXr7LDbbu544RzsRnoCf2aEiDRiiI=','employee',1,0,NULL,'EMP10000002',NULL,'testemp21@gmail.com',NULL,0),(10,NULL,0,'employee21','pbkdf2_sha256$870000$VRGoWSyk41C8w3mtk6sHTN$TLO9OiUKIWobgYVDM2EnD3ckj05P7ZgIY8GeoXStfHU=','employee',1,0,NULL,'EMP10000003',NULL,'emp21@gmail.com',NULL,0);
/*!40000 ALTER TABLE `bopo_admin_bopoadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_bopoadmin_groups`
--

DROP TABLE IF EXISTS `bopo_admin_bopoadmin_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_bopoadmin_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bopoadmin_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bopo_admin_bopoadmin_groups_bopoadmin_id_group_id_7342ab2f_uniq` (`bopoadmin_id`,`group_id`),
  KEY `bopo_admin_bopoadmin_groups_group_id_a68f1bde_fk_auth_group_id` (`group_id`),
  CONSTRAINT `bopo_admin_bopoadmin_bopoadmin_id_2cdd88c0_fk_bopo_admi` FOREIGN KEY (`bopoadmin_id`) REFERENCES `bopo_admin_bopoadmin` (`id`),
  CONSTRAINT `bopo_admin_bopoadmin_groups_group_id_a68f1bde_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_bopoadmin_groups`
--

LOCK TABLES `bopo_admin_bopoadmin_groups` WRITE;
/*!40000 ALTER TABLE `bopo_admin_bopoadmin_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_bopoadmin_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_bopoadmin_user_permissions`
--

DROP TABLE IF EXISTS `bopo_admin_bopoadmin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_bopoadmin_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bopoadmin_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bopo_admin_bopoadmin_use_bopoadmin_id_permission__c0bc47a1_uniq` (`bopoadmin_id`,`permission_id`),
  KEY `bopo_admin_bopoadmin_permission_id_5169c536_fk_auth_perm` (`permission_id`),
  CONSTRAINT `bopo_admin_bopoadmin_bopoadmin_id_5d10b373_fk_bopo_admi` FOREIGN KEY (`bopoadmin_id`) REFERENCES `bopo_admin_bopoadmin` (`id`),
  CONSTRAINT `bopo_admin_bopoadmin_permission_id_5169c536_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_bopoadmin_user_permissions`
--

LOCK TABLES `bopo_admin_bopoadmin_user_permissions` WRITE;
/*!40000 ALTER TABLE `bopo_admin_bopoadmin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_bopoadmin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_city`
--

DROP TABLE IF EXISTS `bopo_admin_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `state_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_admin_city_state_id_5146ae41_fk_bopo_admin_state_id` (`state_id`),
  CONSTRAINT `bopo_admin_city_state_id_5146ae41_fk_bopo_admin_state_id` FOREIGN KEY (`state_id`) REFERENCES `bopo_admin_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153925 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_city`
--

LOCK TABLES `bopo_admin_city` WRITE;
/*!40000 ALTER TABLE `bopo_admin_city` DISABLE KEYS */;
INSERT INTO `bopo_admin_city` VALUES (57584,'Abhaneri',4014),(57585,'Abhayapuri',4027),(57586,'Abiramam',4035),(57587,'Abohar',4015),(57588,'Abrama',4030),(57589,'Achalpur',4008),(57590,'Achhnera',4022),(57591,'Adalaj',4030),(57592,'Adampur',4015),(57593,'Addanki',4017),(57594,'Adirampattinam',4035),(57595,'Aduthurai',4035),(57596,'Adoor',4028),(57597,'Afzalgarh',4022),(57598,'Afzalpur',4026),(57599,'Agar',4039),(57600,'Agartala',4038),(57601,'Agra',4022),(57604,'Ahmadpur',4008),(57606,'Ahmedabad',4030),(57607,'Ahraura',4022),(57608,'Ahwa',4030),(57609,'Airoli',4008),(57610,'Aizawl',4036),(57611,'Ajaigarh',4039),(57612,'Ajitgarh',4015),(57613,'Ajjampur',4026),(57614,'Ajmer',4014),(57615,'Ajnala',4015),(57616,'Ayodhya',4022),(57617,'Ajara',4008),(57618,'Akalkot',4008),(57619,'Akaltara',4040),(57620,'Akasahebpet',4017),(57621,'Akbarpur',4022),(57622,'Akhnur',4029),(57623,'Akividu',4017),(57624,'Akkarampalle',4017),(57625,'Aklera',4014),(57626,'Akodia',4039),(57627,'Akola',4008),(57628,'Akot',4008),(57629,'Akalgarh',4015),(57630,'Alagapuram',4035),(57631,'Alampur',4039),(57632,'Aland',4026),(57633,'Alandi',4008),(57634,'Alandur',4035),(57635,'Alanganallur',4035),(57636,'Alangayam',4035),(57637,'Alappuzha',4028),(57638,'Aldona',4009),(57639,'Alirajpur',4039),(57640,'Prayagraj (Allahabad)',4022),(57641,'Allahganj',4022),(57642,'Allapalli',4008),(57643,'Almora',4016),(57644,'Alnavar',4026),(57645,'Along',4024),(57646,'Alot',4039),(57647,'Aluva',4028),(57648,'Alwa Tirunagari',4035),(57649,'Alwar',4014),(57650,'Alwaye',4028),(57651,'Alawalpur',4015),(57652,'Alibag',4008),(57653,'Aliganj',4022),(57654,'Aligarh',4022),(57655,'Alipur',4021),(57656,'Alur',4026),(57657,'Amalner',4008),(57658,'Amalapuram',4017),(57659,'Amarkantak',4039),(57660,'Amarnath',4008),(57661,'Amarpur',4037),(57662,'Amarpur',4038),(57663,'Amarpatan',4039),(57664,'Amarwara',4039),(57665,'Ambad',4008),(57666,'Ambahta',4022),(57667,'Ambasamudram',4035),(57668,'Ambattur',4035),(57669,'Ambedkar Nagar',4022),(57670,'Ambikapur',4040),(57671,'Ambur',4035),(57672,'Ambagarh Chauki',4040),(57673,'Ambah',4039),(57674,'Ambajogai',4008),(57675,'Ambala',4007),(57676,'Amet',4014),(57677,'Amethi',4022),(57679,'Amguri',4027),(57680,'Amla',4039),(57681,'Amloh',4015),(57682,'Ammapettai',4035),(57683,'Amod',4030),(57685,'Amreli',4030),(57686,'Amritsar',4015),(57687,'Amroha',4022),(57688,'Amroli',4030),(57689,'Amravati',4008),(57690,'Amudalavalasa',4017),(57691,'Amanganj',4039),(57692,'Amanpur',4022),(57693,'Anakapalle',4017),(57694,'Anamalais',4035),(57695,'Anand',4030),(57696,'Anandnagar',4022),(57697,'Anandpur Sahib',4015),(57698,'Anantapur',4017),(57699,'Anantnag',4029),(57701,'Andol',4012),(57702,'Anekal',4026),(57703,'Angamali',4028),(57704,'Angul',4013),(57705,'Angul District',4013),(57706,'Anjad',4039),(57707,'Anjangaon',4008),(57708,'Anjaw',4024),(57709,'Anjar',4030),(57710,'Ankleshwar',4030),(57711,'Ankola',4026),(57712,'Annavasal',4035),(57713,'Annigeri',4026),(57714,'Annur',4035),(57715,'Annamalainagar',4035),(57716,'Anshing',4008),(57717,'Anta',4014),(57718,'Anthiyur',4035),(57719,'Antri',4039),(57720,'Antu',4022),(57721,'Anuppur',4039),(57722,'Anupgarh',4014),(57724,'Anupshahr',4022),(57725,'Aonla',4022),(57726,'Arakkonam',4035),(57727,'Arambol',4009),(57728,'Arang',4040),(57729,'Arantangi',4035),(57730,'Araria',4037),(57731,'Arcot',4035),(57732,'Arimalam',4035),(57733,'Ariyalur',4035),(57735,'Arkalgud',4026),(57736,'Arki',4020),(57737,'Arni',4035),(57738,'Aroor',4028),(57739,'Arrah',4037),(57740,'Arsikere',4026),(57741,'Artist Village',4008),(57742,'Arukutti',4028),(57743,'Arumbavur',4035),(57744,'Arumuganeri',4035),(57745,'Aruppukkottai',4035),(57746,'Aruvankad',4035),(57747,'Arwal',4037),(57749,'Asarganj',4037),(57750,'Ashoknagar',4039),(57751,'Ashta',4008),(57752,'Ashta',4039),(57753,'Ashti',4008),(57754,'Asifabad',4012),(57755,'Atarra',4022),(57756,'Ateli Mandi',4007),(57757,'Athni',4026),(57758,'Atmakur',4017),(57759,'Atraulia',4022),(57760,'Atrauli',4022),(57761,'Attili',4017),(57762,'Attingal',4028),(57763,'Attur',4035),(57764,'Auraiya',4022),(57765,'Aurangabad',4008),(57766,'Aurangabad',4037),(57767,'Auroville',4035),(57768,'Aurad',4026),(57769,'Auras',4022),(57770,'Ausa',4008),(57771,'Avanigadda',4017),(57772,'Avanoor',4028),(57773,'Avinashi',4035),(57774,'Awantipur',4029),(57775,'Ayakudi',4035),(57776,'Ayyampettai',4035),(57777,'Azamgarh',4022),(57778,'Azhikkal',4028),(57779,'Baberu',4022),(57780,'Babrala',4022),(57781,'Babugarh',4022),(57782,'Babina',4022),(57783,'Bachhraon',4022),(57784,'Bachhrawan',4022),(57785,'Bada Barabil',4013),(57786,'Vatakara',4028),(57787,'Badarpur',4027),(57788,'Badarwas',4039),(57789,'Baddi',4020),(57790,'Badgam',4029),(57791,'Badhni Kalan',4015),(57792,'Badlapur',4008),(57793,'Badnawar',4039),(57794,'Badvel',4017),(57795,'Baga',4009),(57796,'Bagaha',4037),(57797,'Bagalkot',4026),(57798,'Bagar',4014),(57799,'Bagasra',4030),(57800,'Bageshwar',4016),(57801,'Baghpat',4022),(57802,'Bagra',4025),(57803,'Baheri',4022),(57804,'Bahjoi',4022),(57805,'Bahraich',4022),(57806,'Bahraigh',4022),(57807,'Bahsuma',4022),(57808,'Bahua',4022),(57809,'Bahadurganj',4037),(57810,'Bahadurgarh',4007),(57811,'Baihar',4039),(57812,'Baikunthpur',4040),(57813,'Baikunthpur',4039),(57814,'Bail-Hongal',4026),(57815,'Bairagnia',4037),(57816,'Baisi',4037),(57817,'Bakewar',4022),(57818,'Bakhtiyarpur',4037),(57819,'Bakloh',4015),(57820,'Baksa',4027),(57821,'Bakshwaha',4039),(57822,'Bakani',4014),(57823,'Balasore',4013),(57824,'Baldeogarh',4039),(57825,'Baldev',4022),(57826,'Balimila',4013),(57827,'Ballari',4026),(57828,'Ballia',4022),(57829,'Ballalpur',4008),(57830,'Balod',4040),(57831,'Baloda',4040),(57832,'Baloda Bazar',4040),(57833,'Balrampur',4022),(57835,'Balangir',4013),(57836,'Bambolim',4009),(57837,'Bamboo Flat',4023),(57838,'Bamna',4039),(57839,'Bamora',4039),(57840,'Banat',4022),(57841,'Banbasa',4022),(57842,'Banda',4039),(57843,'Bandipore',4029),(57845,'Bandora',4009),(57846,'Banga',4015),(57847,'Bengaluru Rural',4026),(57848,'Bengaluru Urban',4026),(57849,'Banganapalle',4017),(57850,'Bangaon',4037),(57851,'Bangarapet',4026),(57852,'Banihal',4029),(57853,'Banjar',4020),(57854,'Banka',4037),(57855,'Banmankhi',4037),(57856,'Bannur',4026),(57857,'Bantval',4026),(57858,'Banas Kantha',4030),(57859,'Banur',4015),(57860,'Bar Bigha',4037),(57861,'Bara Uchana',4007),(57862,'Baragarh',4013),(57863,'Baran',4014),(57864,'Barauli',4037),(57865,'Baraut',4022),(57866,'Barbil',4013),(57867,'Bareilly',4022),(57868,'Barela',4039),(57869,'Bargarh',4013),(57870,'Barghat',4039),(57871,'Bargi',4039),(57872,'Barhi',4039),(57873,'Barhiya',4037),(57874,'Bari Sadri',4014),(57875,'Bariarpur',4037),(57876,'Barjala',4038),(57877,'Barkhera Kalan',4022),(57878,'Barki Saria',4025),(57879,'Barkot',4016),(57880,'Barka Kana',4025),(57882,'Barnala',4015),(57883,'Barpathar',4027),(57884,'Barpeta',4027),(57885,'Barpeta Road',4027),(57886,'Barpali',4013),(57887,'Barsana',4022),(57888,'Barwani',4039),(57889,'Barwadih',4025),(57890,'Barwala',4007),(57892,'Baragaon',4022),(57893,'Basavakalyan',4026),(57894,'Basavana Bagevadi',4026),(57895,'Basi',4014),(57897,'Basmat',4008),(57898,'Basna',4040),(57899,'Basni',4014),(57900,'Bastar',4040),(57901,'Basti',4022),(57903,'Baswa',4014),(57904,'Bhatinda',4015),(57905,'Batoti',4029),(57906,'Batala',4015),(57907,'Baud',4013),(57908,'Baudh',4013),(57909,'Bawana',4021),(57910,'Bayana',4014),(57911,'Bedi',4030),(57912,'Beed',4008),(57913,'Begamganj',4039),(57914,'Begowal',4015),(57915,'Begusarai',4037),(57917,'Begun',4014),(57918,'Behat',4022),(57919,'Behror',4014),(57920,'Bela',4022),(57921,'Belaguntha',4013),(57922,'Belagavi',4026),(57923,'Bellampalli',4012),(57925,'Belluru',4026),(57926,'Belonia',4038),(57927,'Belsand',4037),(57928,'Beltangadi',4026),(57929,'Belur',4035),(57930,'Belur',4026),(57931,'Bemetara',4040),(57932,'Benaulim',4009),(57933,'Bengaluru',4026),(57934,'Beniganj',4022),(57935,'Beohari',4039),(57936,'Berasia',4039),(57937,'Beri Khas',4007),(57938,'Beswan',4022),(57939,'Betamcherla',4017),(57940,'Betma',4039),(57941,'Bettiah',4037),(57942,'Betul',4039),(57943,'Betul Bazar',4039),(57944,'Bewar',4022),(57945,'Beypore',4028),(57946,'Beawar',4014),(57947,'Bhabhua',4037),(57948,'Bhachau',4030),(57949,'Bhadarwah',4029),(57950,'Bhadaur',4015),(57951,'Bhadohi',4022),(57952,'Bhadradri Kothagudem',4012),(57953,'Bhadrak',4013),(57954,'Bhadrakh',4013),(57955,'Bhadrachalam',4012),(57956,'Bhadravati',4026),(57957,'Bhagirathpur',4037),(57958,'Bhagwantnagar',4022),(57959,'Bhainsdehi',4039),(57960,'Bhaisa',4012),(57961,'Bhandara',4008),(57963,'Bhanjanagar',4013),(57964,'Bharatpur',4014),(57965,'Bharthana',4022),(57966,'Bharwari',4022),(57967,'Bharuch',4030),(57968,'Bhasawar',4014),(57969,'Bhatgaon',4040),(57970,'Bhatkal',4026),(57971,'Bhattiprolu',4017),(57972,'Bhavnagar',4030),(57973,'Bhavani',4035),(57974,'Bhawanipur',4037),(57975,'Bhawaniganj',4039),(57976,'Bhawanipatna',4013),(57977,'Bhawanigarh',4015),(57978,'Bhayandar',4008),(57979,'Bhigvan',4008),(57980,'Bhikangaon',4039),(57981,'Bhilai',4040),(57982,'Bhind',4039),(57983,'Bhindar',4014),(57984,'Bhinga',4022),(57985,'Bhitarwar',4039),(57986,'Bhiwadi',4014),(57987,'Bhiwandi',4008),(57988,'Bhiwani',4007),(57990,'Bhogpur',4015),(57991,'Bhojpur',4037),(57992,'Bhojudih',4025),(57993,'Bhongaon',4022),(57994,'Bhongir',4012),(57995,'Bhopal',4039),(57997,'Bhor',4008),(57998,'Bhowali',4016),(57999,'Bhuban',4013),(58000,'Bhubaneswar',4013),(58001,'Bhudgaon',4008),(58002,'Bhuj',4030),(58004,'Bhuma',4014),(58005,'Bhusaval',4008),(58006,'Bhabhra',4039),(58007,'Bhadra',4014),(58008,'Bhadasar',4014),(58009,'Bhagalpur',4037),(58010,'Bhalki',4026),(58011,'Bhander',4039),(58012,'Bhanpura',4039),(58013,'Bhanpuri',4040),(58014,'Bhanvad',4030),(58015,'Bhatapara',4040),(58017,'Bhayavadar',4030),(58018,'Bhikhi',4015),(58019,'Bhilwara',4014),(58020,'Bhim Tal',4016),(58021,'Bhimavaram',4017),(58022,'Bhimunipatnam',4017),(58023,'Bhinmal',4014),(58024,'Bhoom',4008),(58025,'Biaora',4039),(58027,'Bidhuna',4022),(58028,'Bihpuriagaon',4027),(58029,'Bihar Sharif',4037),(58030,'Bihariganj',4037),(58031,'Vijayapura',4026),(58032,'Bijapur',4040),(58033,'Bijbehara',4029),(58034,'Bijni',4027),(58035,'Bijnor',4022),(58036,'Bijrauni',4039),(58038,'Bijawar',4039),(58039,'Bikramganj',4037),(58040,'Bilariaganj',4022),(58041,'Bilaspur',4020),(58042,'Bilgi',4026),(58043,'Bilgram',4022),(58044,'Bilhaur',4022),(58045,'Bilimora',4030),(58046,'Bilkha',4030),(58047,'Biloli',4008),(58048,'Bilsanda',4022),(58049,'Bilsi',4022),(58050,'Bilthra',4022),(58051,'Bilara',4014),(58052,'Bilari',4022),(58053,'Bilasipara',4027),(58054,'Bilaspur',4007),(58055,'Bilaspur',4040),(58057,'Bindki',4022),(58058,'Binka',4013),(58059,'Birbhaddar',4016),(58060,'Birmitrapur',4013),(58061,'Birur',4026),(58062,'Bisauli',4022),(58063,'Bisenda Buzurg',4022),(58064,'Bishnupur',4010),(58065,'Bishnah',4029),(58066,'Bishunpur Urf Maharajganj',4022),(58067,'Bissau',4014),(58068,'Biswan',4022),(58069,'Bithur',4022),(58070,'Bobbili',4017),(58071,'Bodhan',4012),(58072,'Bodinayakkanur',4035),(58073,'Bodri',4039),(58074,'Boisar',4008),(58075,'Bokajan',4027),(58076,'Bokaro',4025),(58077,'Bokakhat',4027),(58079,'Bolanikhodan',4013),(58080,'Bomdila',4024),(58081,'Bongaigaon',4027),(58083,'Borkhera',4014),(58084,'Borsad',4030),(58085,'Botad',4030),(58086,'Brahmapur',4013),(58087,'Brajarajnagar',4013),(58088,'Budaun',4022),(58089,'Bodh Gaya',4037),(58090,'Budhlada',4015),(58091,'Budhana',4022),(58092,'Buguda',4013),(58093,'Bulandshahr',4022),(58094,'Buldana',4008),(58096,'Burhanpur',4039),(58097,'Burhar',4039),(58099,'Burla',4013),(58100,'Buxar',4037),(58101,'Byndoor',4026),(58102,'Byadgi',4026),(58103,'Babai',4039),(58104,'Babra',4030),(58105,'Badami',4026),(58106,'Bagh',4039),(58107,'Bagepalli',4026),(58109,'Bagha Purana',4015),(58111,'Bagli',4039),(58112,'Bah',4022),(58113,'Bajna',4022),(58114,'Baleshwar',4013),(58115,'Bali',4014),(58116,'Balotra',4014),(58117,'Balugaon',4013),(58118,'Balachor',4015),(58119,'Balaghat',4039),(58120,'Balapur',4012),(58121,'Balapur',4008),(58122,'Bamor Kalan',4039),(58123,'Banapur',4013),(58124,'Banda',4022),(58125,'Bandikui',4014),(58126,'Bangarmau',4022),(58128,'Banki',4013),(58129,'Banposh',4013),(58130,'Bansdih',4022),(58131,'Bansgaon',4022),(58132,'Bansi',4022),(58133,'Banswada',4012),(58134,'Banswara',4014),(58135,'Bantva',4030),(58136,'Banavar',4026),(58137,'Bapatla',4017),(58138,'Bara Banki',4022),(58139,'Baramula',4029),(58140,'Bardoli',4030),(58141,'Barh',4037),(58142,'Bari',4014),(58143,'Barmer',4014),(58144,'Barsi',4008),(58145,'Baruni',4037),(58146,'Baramati',4008),(58148,'Basoda',4039),(58149,'Basudebpur',4013),(58150,'Basugaon',4027),(58151,'Basar',4024),(58152,'Bawal',4007),(58153,'Bazpur',4016),(58154,'Bidar',4026),(58155,'Bighapur Khurd',4022),(58156,'Bikaner',4014),(58158,'Bikapur',4022),(58159,'Bilaspur',4022),(58160,'Birpur',4037),(58161,'Bisalpur',4022),(58162,'Bundi',4014),(58163,'Bundu',4025),(58164,'Buriya',4007),(58165,'Calangute',4009),(58166,'Canacona',4026),(58167,'Candolim',4009),(58168,'Captainganj',4022),(58169,'Carapur',4009),(58170,'Cavelossim',4009),(58171,'Central Delhi',4021),(58172,'Chail',4022),(58173,'Chakia',4022),(58174,'Chaklasi',4030),(58175,'Chakradharpur',4025),(58176,'Chakrata',4016),(58177,'Chaksu',4014),(58178,'Challakere',4026),(58179,'Challapalle',4017),(58180,'Chalala',4030),(58181,'Chamba',4020),(58182,'Chamoli',4016),(58183,'Champawat',4016),(58184,'Champhai',4036),(58185,'Chamrajnagar',4026),(58186,'Chandauli',4022),(58187,'Chandauli District',4022),(58188,'Chanderi',4039),(58189,'Chandia',4039),(58190,'Chandigarh',4031),(58191,'Chandla',4039),(58192,'Chandrapur',4008),(58193,'Chanduasi',4022),(58194,'Chandur',4012),(58195,'Changanacheri',4028),(58196,'Changlang',4024),(58197,'Channagiri',4026),(58198,'Channapatna',4026),(58199,'Channarayapatna',4026),(58200,'Charkhi Dadri',4007),(58201,'Charkhari',4022),(131509,'Charthawal',4022),(131510,'Chatrapur',4013),(131511,'Chatra',4025),(131512,'Chaupal',4020),(131513,'Chechat',4014),(131514,'Chemmumiahpet',4017),(131515,'Chengam',4035),(131516,'Chengannur',4028),(131517,'Chennai',4035),(131518,'Chennimalai',4035),(131519,'Cherpulassery',4028),(131520,'Cherrapunji',4006),(131521,'Cherthala',4028),(131522,'Chetput',4035),(131523,'Chettipalaiyam',4035),(131524,'Chetwayi',4028),(131525,'Cheyyar',4035),(131526,'Cheyyur',4035),(131527,'Chhabra',4014),(131528,'Chhachhrauli',4007),(131529,'Chhala',4030),(131530,'Chhaprauli',4022),(131531,'Chharra',4022),(131532,'Chhatarpur',4039),(131533,'Chhibramau',4022),(131534,'Chhindwara',4039),(131535,'Chhota Udepur',4030),(131536,'Chhoti Sadri',4014),(131537,'Chhutmalpur',4022),(131538,'Chhuikhadan',4040),(131539,'Chhapar',4014),(131540,'Chhata',4022),(131541,'Chhatapur',4037),(131542,'Chicalim',4009),(131543,'Chichli',4039),(131544,'Chicholi',4008),(131545,'Chidambaram',4035),(131546,'Chidawa',4014),(131547,'Chik Ballapur',4026),(131548,'Chikhli',4030),(131549,'Chikhli (Buldhana)',4008),(131550,'Chikitigarh',4013),(131551,'Chikkaballapur',4026),(131552,'Chikkamagaluru',4026),(131554,'Chiknayakanhalli',4026),(131555,'Chikodi',4026),(131556,'Chilakalurupet',4017),(131557,'Chillupar',4022),(131558,'Chinchani',4008),(131559,'Chinchinim',4009),(131560,'Chincholi',4026),(131561,'Chingleput',4035),(131562,'Chinna Salem',4035),(131563,'Chinnachowk',4017),(131564,'Chinnamanur',4035),(131565,'Chinnasekkadu',4035),(131566,'Chintamani',4026),(131567,'Chiplun',4008),(131568,'Chirang',4027),(131569,'Chirgaon',4022),(131570,'Chiria',4025),(131571,'Chitradurga',4026),(131572,'Chitrakoot',4022),(131573,'Chittarkonda',4013),(131574,'Chittaurgarh',4014),(131575,'Chittoor',4017),(131576,'Chittur',4028),(131577,'Chodavaram',4017),(131578,'Cholapuram',4035),(131579,'Chopan',4022),(131580,'Chopda',4008),(131581,'Chorhat',4039),(131582,'Chotila',4030),(131583,'Chowari',4020),(131584,'Chunar',4022),(131585,'Churachandpur',4010),(131587,'Chuari Khas',4020),(131588,'Chabua',4027),(131589,'Chakan',4008),(131590,'Chakia',4037),(131591,'Chakulia',4025),(131592,'Chalisgaon',4008),(131593,'Champa',4040),(131594,'Champua',4013),(131595,'Chanasma',4030),(131596,'Chanda',4008),(131597,'Chandbali',4013),(131598,'Chandil',4025),(131599,'Chandor',4008),(131600,'Chandpur',4022),(131601,'Chandur',4008),(131603,'Chandur Bazar',4008),(131604,'Chapar',4027),(131605,'Chapra',4037),(131606,'Chas',4025),(131607,'Chatakonda',4012),(131608,'Chaibasa',4025),(131609,'Chelakara',4028),(131610,'Chima',4015),(131611,'Chipurupalle',4017),(131612,'Chirala',4017),(131613,'Chitapur',4026),(131614,'Churu',4014),(131615,'Clement Town',4016),(131616,'Closepet',4026),(131617,'Cochin',4028),(131618,'Coimbatore',4035),(131619,'Colachel',4035),(131620,'Colgong',4037),(131621,'Colonelganj',4022),(131622,'Colovale',4009),(131623,'Colva',4009),(131624,'Coondapoor',4026),(131625,'Cortalim',4009),(131626,'Cuddalore',4035),(131627,'Cuddapah',4017),(131628,'Cumbum',4017),(131629,'Cumbum',4035),(131630,'Cuncolim',4009),(131631,'Curchorem',4009),(131632,'Curti',4009),(131633,'Cuttack',4013),(131634,'Cachar',4027),(131635,'Dabhoi',4030),(131636,'Daboh',4039),(131637,'Dabra',4039),(131638,'Dabwali',4007),(131639,'Dadra',4033),(131640,'Dadra & Nagar Haveli',4033),(131641,'Dagshai',4020),(131642,'Dahegam',4030),(131643,'Daitari',4013),(131644,'Dakshina Kannada',4026),(131645,'Dalhousie',4020),(131646,'Dalmau',4022),(131647,'Dalsingh Sarai',4037),(131648,'Daltonganj',4025),(131649,'Daman',4033),(131651,'Damoh',4039),(131652,'Dandeli',4026),(131653,'Dankaur',4022),(131654,'Darbhanga',4037),(131655,'Dariba',4014),(131656,'Darlawn',4036),(131657,'Darrang',4027),(131658,'Darsi',4017),(131659,'Daryapur',4008),(131660,'Dasnapur',4012),(131661,'Dasuya',4015),(131662,'Datia',4039),(131663,'Dattapur',4008),(131664,'Daudnagar',4037),(131665,'Daulatpur',4020),(131666,'Daulatabad',4008),(131667,'Daund',4008),(131668,'Daurala',4022),(131669,'Dausa',4014),(131670,'Davanagere',4026),(131672,'Davorlim',4009),(131673,'Dayapar',4030),(131674,'Dayal Bagh',4022),(131676,'Dehradun',4016),(131677,'Dehri',4037),(131678,'Dehu',4008),(131679,'Delhi',4021),(131680,'Delvada',4030),(131681,'Denkanikota',4035),(131682,'Deoband',4022),(131683,'Deogarh',4013),(131684,'Deogarh',4025),(131685,'Deoli',4014),(131686,'Deoli',4008),(131687,'Deoli',4021),(131688,'Deolali',4008),(131689,'Deoranian',4022),(131690,'Deori',4040),(131691,'Deori Khas',4039),(131692,'Deoria',4022),(131693,'Depalpur',4039),(131694,'Dera Gopipur',4020),(131695,'Dergaon',4027),(131696,'Dera Baba Nanak',4015),(131697,'Deshnoke',4014),(131698,'Desur',4035),(131699,'Devadanappatti',4035),(131700,'Devakottai',4035),(131701,'Devanhalli',4026),(131702,'Devaprayag',4016),(131703,'Devarkonda',4012),(131704,'Devbhumi Dwarka',4030),(131705,'Devgadh Bariya',4030),(131706,'Devgarh',4014),(131707,'Dewas',4039),(131708,'Dewa',4022),(131709,'Deulgaon Raja',4008),(131710,'Dhalai',4038),(131711,'Dhali',4035),(131712,'Dhamtari',4040),(131713,'Dhanaula',4015),(131714,'Dhanaura',4022),(131715,'Dhanbad',4025),(131716,'Dhandhuka',4030),(131717,'Dhanera',4030),(131718,'Dhanwar',4025),(131719,'Dharampur',4030),(131720,'Dharampuri',4039),(131721,'Dharamsala',4020),(131722,'Dharangaon',4008),(131723,'Dharapuram',4035),(131724,'Dharmadom',4028),(131725,'Dharmanagar',4038),(131726,'Dharmapuri',4035),(131727,'Dharmavaram',4017),(131728,'Dharmabad',4008),(131729,'Dharwad',4026),(131730,'Dhaulpur',4014),(131731,'Dhaurahra',4022),(131732,'Dhekiajuli',4027),(131733,'Dhemaji',4027),(131735,'Dhenkanal',4013),(131736,'Dhilwan',4015),(131737,'Dhing',4027),(131738,'Dhola',4030),(131739,'Dholka',4030),(131740,'Dhone',4017),(131741,'Dhoraji',4030),(131742,'Dhrol',4030),(131743,'Dhrangadhra',4030),(131744,'Dhubri',4027),(131746,'Dhule',4008),(131747,'Dhuwaran',4030),(131748,'Dhaka',4037),(131749,'Dhamnod',4039),(131750,'Dhampur',4022),(131751,'Dhana',4039),(131753,'Dhar',4039),(131754,'Dharchula',4016),(131755,'Dhari',4030),(131756,'Dhariwal',4015),(131757,'Dharuhera',4007),(131758,'Dharur',4008),(131759,'Dhulia',4008),(131760,'Dhuri',4015),(131761,'Dibai',4022),(131762,'Dibrugarh',4027),(131763,'Dibang Valley',4024),(131764,'Dicholi',4009),(131765,'Digapahandi',4013),(131766,'Digboi',4027),(131767,'Dighwara',4037),(131768,'Digras',4008),(131769,'Diguvametta',4017),(131770,'Dima Hasao District',4027),(131771,'Dimapur',4018),(131773,'Dinapore',4037),(131774,'Dindigul',4035),(131775,'Dindori',4039),(131776,'Diphu',4027),(131777,'Dirba',4015),(131778,'Dispur',4027),(131779,'Diu',4033),(131780,'Dod Ballapur',4026),(131781,'Doda',4029),(131782,'Dohad',4030),(131783,'Dohrighat',4022),(131784,'Doiwala',4016),(131785,'Dombivli',4008),(131786,'Dondaicha',4008),(131787,'Dongargaon',4040),(131788,'Dongargarh',4040),(131789,'Dornakal',4012),(131790,'Doraha',4015),(131791,'Dostpur',4022),(131792,'Dudhani',4008),(131793,'Dugadda',4016),(131794,'Dugda',4025),(131795,'Duliagaon',4027),(131796,'Dum Duma',4027),(131797,'Dumka',4025),(131798,'Dumra',4037),(131799,'Dumraon',4037),(131800,'Dungarpur',4030),(131801,'Durg',4040),(131802,'Durgapur',4008),(131803,'Dwarka',4030),(131804,'Dwarahat',4016),(131805,'Dabhol',4008),(131806,'Dadri',4022),(131807,'Dahanu',4008),(131808,'Dakor',4030),(131809,'Damnagar',4030),(131810,'Darwha',4008),(131811,'Dasna',4022),(131812,'Dataganj',4022),(131813,'Didwana',4014),(131814,'Dig',4014),(131815,'Diglur',4008),(131816,'Dina Nagar',4015),(131817,'Disa',4030),(131818,'Dudhi',4022),(131819,'Dungarpur',4014),(131820,'Dusi',4035),(131821,'East Delhi',4021),(131822,'East District',4034),(131823,'East Godavari',4017),(131824,'East Garo Hills',4006),(131825,'East Jaintia Hills',4006),(131826,'East Kameng',4024),(131827,'East Khasi Hills',4006),(131828,'East Siang',4024),(131829,'Edakkulam',4028),(131830,'Elamanchili',4017),(131831,'Ellenabad',4007),(131832,'Ellore',4017),(131833,'Elumalai',4035),(131834,'Elayirampannai',4035),(131835,'Elur',4028),(131836,'Emmiganur',4017),(131837,'Eral',4035),(131838,'Erandol',4008),(131839,'Eraniel',4035),(131840,'Ernakulam',4028),(131841,'Erode',4035),(131842,'Erraguntla',4017),(131843,'Erumaippatti',4035),(131844,'Erattupetta',4028),(131845,'Etah',4022),(131846,'Etikoppaka',4017),(131847,'Ettaiyapuram',4035),(131848,'Etawa',4039),(131849,'Etawah',4022),(131850,'Faizpur',4008),(131851,'Faizabad',4022),(131852,'Farah',4022),(131853,'Faridabad',4007),(131856,'Farrukhnagar',4007),(131857,'Farrukhnagar',4012),(131858,'Farrukhabad',4022),(131859,'Faridkot',4015),(131860,'Faridnagar',4022),(131861,'Faridpur',4022),(131863,'Fatehganj West',4022),(131864,'Fatehgarh',4022),(131865,'Fatehgarh Churian',4015),(131866,'Fatehgarh Sahib',4015),(131867,'Fatehpur',4014),(131868,'Fatehpur',4022),(131869,'Fatehpur Chaurasi',4022),(131870,'Fatehpur Sikri',4022),(131871,'Fatehabad',4022),(131872,'Fatehabad',4007),(131873,'Fatwa',4037),(131874,'Ferokh',4028),(131875,'Firozpur',4015),(131876,'Firozabad',4022),(131877,'Firozpur District',4015),(131878,'Forbesganj',4037),(131879,'French Rocks',4026),(131880,'Fyzabad',4022),(131881,'Fazilka',4015),(131882,'Firozpur Jhirka',4007),(131884,'Gadag',4026),(131885,'Gadag-Betageri',4026),(131886,'Gadchiroli',4008),(131887,'Gaddi Annaram',4012),(131888,'Gadhada',4030),(131889,'Gadhinglaj',4008),(131890,'Gadwal',4012),(131891,'Gagret',4020),(131892,'Gajapati',4013),(131893,'Gajendragarh',4026),(131894,'Gajraula',4022),(131895,'Gajuwaka',4017),(131896,'Galiakot',4014),(131897,'Gandai',4040),(131898,'Ganderbal',4029),(131899,'Gandevi',4030),(131900,'Gandhinagar',4030),(131901,'Gangaikondan',4035),(131902,'Gangavalli',4035),(131903,'Gangoh',4022),(131904,'Gangolli',4026),(131905,'Gangtok',4034),(131906,'Ganguvada',4017),(131907,'Gangakher',4008),(131908,'Ganganagar',4014),(131909,'Gangapur',4014),(131910,'Gangapur',4008),(131911,'Gangawati',4026),(131912,'Ganj Dundwara',4022),(131913,'Ganj Muradabad',4022),(131914,'Ganjam',4013),(131915,'Gannavaram',4017),(131916,'Garautha',4022),(131917,'Garha Brahman',4039),(131918,'Gardhiwala',4015),(131919,'Garhi Pukhta',4022),(131920,'Garhmuktesar',4022),(131921,'Garhshankar',4015),(131922,'Garhwa',4025),(131923,'Garhwal',4016),(131924,'Garhakota',4039),(131925,'Gariadhar',4030),(131926,'Gariaband',4040),(131927,'Gaurela',4040),(131928,'Gauripur',4027),(131929,'Gautam Buddha Nagar',4022),(131930,'Gautampura',4039),(131931,'Gawan',4022),(131932,'Gaya',4037),(131934,'Gevrai',4008),(131935,'Ghanaur',4015),(131936,'Ghansor',4039),(131937,'Gharaunda',4007),(131938,'Gharghoda',4040),(131939,'Ghatkesar',4012),(131940,'Ghazipur',4022),(131941,'Ghiror',4022),(131942,'Gho Brahmanan de',4029),(131943,'Ghoga',4037),(131944,'Ghogha',4030),(131945,'Ghorawal',4022),(131946,'Ghosi',4022),(131947,'Ghoti Budrukh',4008),(131948,'Ghugus',4008),(131949,'Ghumarwin',4020),(131950,'Ghatampur',4022),(131951,'Ghatanji',4008),(131952,'Ghatsila',4025),(131953,'Ghaziabad',4022),(131955,'Giddalur',4017),(131956,'Giddarbaha',4015),(131957,'Gingee',4035),(131958,'Gir Somnath',4030),(131959,'Giridih',4025),(131960,'Goa Velha',4009),(131961,'Gobichettipalayam',4035),(131962,'Gobindpur',4025),(131963,'Godda',4025),(131964,'Godhra',4030),(131965,'Gogapur',4039),(131966,'Gohadi',4039),(131967,'Gohpur',4027),(131968,'Gohana',4007),(131969,'Gohand',4022),(131970,'Gokak',4026),(131971,'Gokarna',4026),(131972,'Gokavaram',4017),(131973,'Gokul',4022),(131974,'Gola Bazar',4022),(131975,'Gola Gokarannath',4022),(131976,'Golaghat',4027),(131977,'Golakganj',4027),(131979,'Gomati',4038),(131980,'Gomoh',4025),(131981,'Gonda',4022),(131982,'Gondal',4030),(131986,'Gopinathpur',4025),(131987,'Gopalganj',4037),(131988,'Gopalpur',4013),(131989,'Gopalur',4012),(131990,'Gopamau',4022),(131991,'Gorakhpur',4007),(131992,'Gorakhpur',4022),(131993,'Gorantla',4017),(131994,'Goregaon',4008),(131995,'Goribidnur',4026),(131996,'Gorur',4026),(131997,'Goshaingaon',4027),(131998,'Goshainganj',4022),(132000,'Govardhan',4022),(132001,'GovindapuramChilakaluripetGuntur',4017),(132002,'Govindgarh',4039),(132003,'Govindgarh',4014),(132004,'Goalpara',4027),(132005,'Greater Noida',4022),(132006,'Gua',4025),(132007,'Gubbi',4026),(132008,'Gudalur',4035),(132009,'Gudibanda',4026),(132010,'Gudivada',4017),(132011,'Gudiyatham',4035),(132012,'Gudlavalleru',4017),(132013,'Gudari',4013),(132014,'Guhagar',4008),(132015,'Guirim',4009),(132016,'Kalaburgi',4026),(132017,'Guledagudda',4026),(132018,'Gulabpura',4014),(132019,'Gulaothi',4022),(132020,'Gumia',4025),(132021,'Gumla',4025),(132023,'Gummidipundi',4035),(132024,'Guna',4039),(132025,'Gundlupet',4026),(132026,'Gunnaur',4022),(132027,'Guntakal Junction',4017),(132028,'Guntur',4017),(132030,'Gunupur',4013),(132031,'Gurdaspur',4015),(132032,'Gurgaon',4007),(132033,'Gurh',4039),(132034,'Gurmatkal',4026),(132035,'Gursahaiganj',4022),(132036,'Gursarai',4022),(132037,'Guru Har Sahai',4015),(132038,'Guruvayur',4028),(132039,'Guwahati',4027),(132040,'Gwalior',4039),(132041,'Gyalshing',4034),(132042,'Gyanpur',4022),(132043,'Gadarwara',4039),(132045,'Gandhi Nagar',4035),(132046,'Gandhidham',4030),(132048,'Gidam',4040),(132050,'Guduvancheri',4035),(132051,'Gudur',4017),(132052,'Gudur',4012),(132053,'Hadagalli',4026),(132054,'Hadgaon',4008),(132055,'Hailakandi',4027),(132057,'Haldaur',4022),(132058,'Haldwani',4016),(132059,'Haliyal',4026),(132060,'Halvad',4030),(132061,'Hampi',4026),(132062,'Hamirpur',4022),(132063,'Hamirpur',4020),(132064,'Handia',4022),(132065,'Hansot',4030),(132066,'Hanumangarh',4014),(132068,'Haraiya',4022),(132069,'Harbatpur',4016),(132070,'Harda',4039),(132071,'Harda Khas',4039),(132072,'Hardoi',4022),(132074,'Harduaganj',4022),(132075,'Haridwar',4016),(132076,'Harihar',4026),(132077,'Hariana',4015),(132078,'Harnai',4008),(132079,'Harpanahalli',4026),(132080,'Harpalpur',4039),(132081,'Harrai',4039),(132082,'Harsud',4039),(132083,'Harur',4035),(132084,'Hasanpur',4007),(132085,'Hasanpur',4022),(132086,'Hassan',4026),(132087,'Hastinapur',4022),(132088,'Hatta',4039),(132089,'Haveri',4026),(132090,'Hayuliang',4024),(132091,'Hazaribagh',4025),(132092,'Hazaribag',4025),(132093,'Heggadadevankote',4026),(132094,'Hesla',4025),(132095,'Hilsa',4037),(132096,'Himatnagar',4030),(132097,'Hindaun',4014),(132098,'Hindoria',4039),(132099,'Hindupur',4017),(132100,'Hinganghat',4008),(132101,'Hingoli',4008),(132102,'Hinjilikatu',4013),(132103,'Hirekerur',4026),(132104,'Hiriyur',4026),(132105,'Hiranagar',4029),(132106,'Hisar',4007),(132107,'Hisua',4037),(132109,'Hodal',4007),(132110,'Hojai',4027),(132111,'Holalkere',4026),(132112,'Hole Narsipur',4026),(132113,'Homnabad',4026),(132114,'Honnali',4026),(132115,'Honavar',4026),(132117,'Hosanagara',4026),(132118,'Hosangadi',4026),(132119,'Hosdurga',4026),(132120,'Hoshangabad',4039),(132122,'Hoshiarpur',4015),(132123,'Hoskote',4026),(132124,'Hospet',4026),(132125,'Hosur',4035),(132126,'Howli',4027),(132127,'Hubballi',4026),(132128,'Hukeri',4026),(132129,'Hungund',4026),(132130,'Hunsur',4026),(132131,'Husainabad',4025),(132132,'Hyderabad',4012),(132134,'Haflong',4027),(132135,'Hajan',4029),(132136,'Hajipur',4015),(132137,'Hajo',4027),(132138,'Hajipur',4037),(132139,'Halol',4030),(132140,'Hangal',4026),(132141,'Hansi',4007),(132142,'Hapur',4022),(132143,'Harij',4030),(132144,'Hathras',4022),(132145,'Hatod',4039),(132146,'Hata',4022),(132148,'Hirakud',4013),(132149,'Hirapur Hamesha',4008),(132150,'Ichalkaranji',4008),(132151,'Ichchapuram',4017),(132152,'Ichhawar',4039),(132153,'Idappadi',4035),(132154,'Idukki',4028),(132155,'Igatpuri',4008),(132156,'Iglas',4022),(132157,'Ikauna',4022),(132158,'Iklehra',4039),(132159,'Ilampillai',4035),(132160,'Ilkal',4026),(132161,'Iluppur',4035),(132162,'Imphal East',4010),(132163,'Inda Chhoi',4007),(132164,'Indergarh',4022),(132165,'Indi',4026),(132166,'Indore',4039),(132167,'Indri',4007),(132168,'Indapur',4008),(132169,'Injambakkam',4035),(132170,'Iringal',4028),(132171,'Irinjalakuda',4028),(132172,'Irugur',4035),(132173,'Islamnagar',4022),(132174,'Islampur',4037),(132175,'Isagarh',4039),(132176,'Itaunja',4022),(132177,'Itimadpur',4022),(132178,'Itanagar',4024),(132179,'Itarsi',4039),(132180,'Iawar',4039),(132181,'Jabalpur',4039),(132182,'Jagalur',4026),(132183,'Jagannathpur',4025),(132185,'Jagatsinghpur',4013),(132186,'Jagdalpur',4040),(132187,'Jagdishpur',4022),(132188,'Jagdispur',4037),(132189,'Jaggayyapeta',4017),(132191,'Jagnair',4022),(132192,'Jagraon',4015),(132193,'Jagtial',4012),(132194,'Jagadhri',4007),(132195,'Jahangirpur',4022),(132196,'Jahangirabad',4022),(132197,'Jahanabad',4022),(132198,'Jahanabad',4037),(132199,'Jahazpur',4014),(132200,'Jainpur',4022),(132201,'Jaipur',4014),(132202,'Jais',4022),(132203,'Jaisalmer',4014),(132204,'Jaisinghnagar',4039),(132205,'Jaisingpur',4008),(132206,'Jaithari',4039),(132207,'Jaito',4015),(132208,'Jaitaran',4014),(132209,'Jajpur',4013),(132210,'Jalakandapuram',4035),(132211,'Jalandhar',4015),(132212,'Jalesar',4022),(132213,'Jaleshwar',4013),(132214,'Jalgaon',4008),(132215,'Jalgaon Jamod',4008),(132216,'Jalna',4008),(132217,'Jalor',4014),(132218,'Jalore',4014),(132219,'Jalalpur',4030),(132220,'Jalalpur',4022),(132221,'Jalalabad',4022),(132223,'Jalalabad',4015),(132224,'Jalali',4022),(132225,'Jalarpet',4035),(132226,'Jambusar',4030),(132227,'Jamkhandi',4026),(132228,'Jammalamadugu',4017),(132229,'Jammu',4029),(132230,'Jamnagar',4030),(132231,'Jamshedpur',4025),(132232,'Jamtara',4025),(132233,'Jamui',4037),(132234,'Jamalpur',4037),(132236,'Jandiala',4015),(132237,'Jandiala Guru',4015),(132238,'Jangaon',4012),(132240,'Janjgir-Champa',4040),(132241,'Jaora',4039),(132242,'Jarwal',4022),(132243,'Jasdan',4030),(132244,'Jashpur',4040),(132245,'Jashpurnagar',4040),(132246,'Jasidih',4025),(132247,'Jaspur',4016),(132248,'Jasrana',4022),(132249,'Jaswantnagar',4022),(132250,'Jatani',4013),(132251,'Jatara',4039),(132252,'Jaunpur',4022),(132253,'Jaurian',4029),(132254,'Jawhar',4008),(132255,'Jawala Mukhi',4020),(132256,'Jayamkondacholapuram',4035),(132257,'Jayashankar Bhupalapally',4012),(132258,'Jaynagar',4037),(132259,'Jehanabad',4037),(132260,'Jejuri',4008),(132261,'Jetalsar',4030),(132262,'Jetpur',4030),(132263,'Jevargi',4026),(132264,'Jewar',4022),(132265,'Jeypore',4013),(132266,'Jhajjar',4007),(132267,'Jhanjharpur',4037),(132268,'Jharia',4025),(132269,'Jharsuguda',4013),(132270,'Jharsuguda District',4013),(132271,'Jhinjhana',4022),(132272,'Jhulasan',4030),(132273,'Jhunjhunun',4014),(132274,'Jha-Jha',4037),(132275,'Jhabua',4039),(132276,'Jhalrapatan',4014),(132277,'Jhalu',4022),(132278,'Jhalawar',4014),(132279,'Jhansi',4022),(132280,'Jhinjhak',4022),(132281,'Jhusi',4022),(132282,'Jintur',4008),(132283,'Jobat',4039),(132284,'Jobner',4014),(132285,'Jodhpur',4030),(132286,'Jodhpur',4014),(132287,'Jodiya Bandar',4030),(132288,'Jogbani',4037),(132289,'Jogindarnagar',4020),(132290,'Jogulamba Gadwal',4012),(132291,'Jogighopa',4027),(132293,'Jorethang',4034),(132294,'Jorhat',4027),(132296,'Joshimath',4016),(132297,'Jua',4009),(132298,'Jubbal',4020),(132299,'Jugsalai',4025),(132300,'Jumri Tilaiya',4025),(132301,'Junnar',4008),(132302,'Jutogh',4020),(132303,'Jyotiba Phule Nagar',4022),(132305,'Jakhal',4007),(132306,'Jalaun',4022),(132308,'Jamadoba',4025),(132309,'Jamai',4039),(132312,'Janjgir',4040),(132313,'Jansath',4022),(132314,'Jawad',4039),(132315,'Jind',4007),(132316,'Jiran',4039),(132317,'Junagadh',4030),(132318,'Junagarh',4040),(132319,'Kabeerdham',4040),(132320,'Kabrai',4022),(132321,'Kachchh',4030),(132322,'Kachhwa',4022),(132323,'Kadakkavoor',4028),(132324,'Kadambur',4035),(132325,'Kadaura',4022),(132326,'Kadayanallur',4035),(132327,'Kadi',4030),(132328,'Kadiri',4017),(132329,'Kadod',4030),(132330,'Kadur',4026),(132331,'Kagaznagar',4012),(132332,'Kaikalur',4017),(132333,'Kailaras',4039),(132334,'Kailashahar',4038),(132335,'Kaimganj',4022),(132336,'Kaimori',4039),(132337,'Kaimur District',4037),(132338,'Kaintragarh',4013),(132339,'Kairana',4022),(132340,'Kaithal',4007),(132341,'Kakching',4010),(132342,'Kakrala',4022),(132343,'Kalakkadu',4035),(132344,'Kalamassery',4028),(132345,'Kalamb',4008),(132346,'Kalamnuri',4008),(132347,'Kalanaur',4015),(132348,'Kalas',4008),(132349,'Kalavai',4035),(132350,'Kalavoor',4028),(132351,'Kalghatgi',4026),(132352,'Kallakkurichchi',4035),(132353,'Kallidaikurichi',4035),(132354,'Kallupatti',4035),(132355,'Kalmeshwar',4008),(132356,'Kalpetta',4028),(132357,'Kalugumalai',4035),(132358,'Kalyandurg',4017),(132359,'Kalyan',4008),(132360,'Kalanaur',4007),(132361,'Kamalganj',4022),(132362,'Kamalpur',4038),(132363,'Kamareddy',4012),(132364,'Kampil',4022),(132365,'Kampli',4026),(132366,'Kamrup Metropolitan',4027),(132367,'Kamuthi',4035),(132368,'Kanadukattan',4035),(132369,'Kancheepuram',4035),(132370,'Kanchipuram',4035),(132371,'Kandhamal',4013),(132372,'Kandukur',4017),(132373,'Kangayam',4035),(132374,'Kanigiri',4017),(132375,'Kankauli',4008),(132376,'Kankipadu',4017),(132377,'Kannad',4008),(132378,'Kannauj',4022),(132379,'Kannavam',4028),(132380,'Kanniyakumari',4035),(132382,'Kannod',4039),(132383,'Kannur',4028),(132384,'Kanpur',4022),(132385,'Kanpur Dehat',4022),(132386,'Kantilo',4013),(132387,'Kantabanji',4013),(132388,'Kanuru',4017),(132389,'Kanina Khas',4007),(132390,'Kapadvanj',4030),(132392,'Kapurthala',4015),(132393,'Karambakkudi',4035),(132394,'Karamsad',4030),(132395,'Karanpur',4014),(132396,'Karauli',4014),(132397,'Kareli',4039),(132398,'Karera',4039),(132399,'Kargil',4852),(132400,'Karhal',4022),(132401,'Kariapatti',4035),(132402,'Karimganj',4027),(132403,'Karjat',4008),(132404,'Karmala',4008),(132405,'Karnal',4007),(132406,'Karol Bagh',4021),(132407,'Karrapur',4039),(132408,'Kartarpur',4015),(132409,'Karumbakkam',4035),(132410,'Karur',4035),(132411,'Karwar',4026),(132412,'Karad',4008),(132413,'Karari',4022),(132415,'Karimnagar',4012),(132416,'Kasauli',4020),(132417,'Kasba',4037),(132418,'Kashipur',4016),(132419,'Kasrawad',4039),(132420,'Katangi',4039),(132421,'Katghora',4040),(132422,'Kathua',4029),(132423,'Katihar',4037),(132424,'Katni',4039),(132425,'Katpur',4030),(132426,'Katra',4022),(132427,'Katra',4029),(132428,'Kattanam',4028),(132429,'Kattivakkam',4035),(132430,'Kaushambi District',4022),(132431,'Kavalur',4026),(132432,'Kavaratti',4019),(132433,'Kawardha',4040),(132434,'Kawant',4030),(132435,'Kayalpattinam',4035),(132436,'Kayattar',4035),(132437,'Keelakarai',4035),(132438,'Kekri',4014),(132439,'Kelamangalam',4035),(132440,'Kemri',4022),(132441,'Kendrapara',4013),(132443,'Kenduadih',4025),(132444,'Kendujhar',4013),(132445,'Kerur',4026),(132446,'Keshod',4030),(132447,'Keshorai Patan',4014),(132448,'Kesinga',4013),(132449,'Khada',4022),(132450,'Khadki',4008),(132451,'Khagaria',4037),(132452,'Khagaul',4037),(132453,'Khailar',4039),(132454,'Khair',4022),(132455,'Khairabad',4022),(132456,'Khairagarh',4040),(132457,'Khajuraho Group of Monuments',4039),(132458,'Khallikot',4013),(132459,'Khalilabad',4022),(132460,'Khamaria',4039),(132462,'Khambhat',4030),(132463,'Khamharia',4040),(132464,'Khammam',4012),(132465,'Khamanon',4015),(132466,'Khandela',4014),(132467,'Khandwa',4039),(132469,'Khanna',4015),(132470,'Kharagpur',4037),(132471,'Kharakvasla',4008),(132472,'Kharar',4015),(132473,'Kharela',4022),(132474,'Khargone',4039),(132475,'Khargupur',4022),(132476,'Khargapur',4039),(132477,'Kharhial',4013),(132478,'Kharkhauda',4007),(132479,'Kharkhauda',4022),(132480,'Kharod',4040),(132481,'Kharsia',4040),(132482,'Kharsawan',4025),(132483,'Khatauli',4022),(132484,'Khatima',4016),(132485,'Khaur',4029),(132486,'Khawhai',4036),(132487,'Khed',4008),(132488,'Kheda',4030),(132489,'Khedbrahma',4030),(132490,'Khekra',4022),(132491,'Khemkaran',4015),(132492,'Kheri',4022),(132493,'Kheri Sampla',4007),(132494,'Kheralu',4030),(132495,'Khetia',4008),(132496,'Khetri',4014),(132497,'Khilchipur',4039),(132498,'Khirkiyan',4039),(132499,'Khonsa',4024),(132500,'Khopoli',4008),(132501,'Khordha',4013),(132502,'Khowai',4038),(132503,'Khudaganj',4022),(132504,'Khujner',4039),(132505,'Khuldabad',4008),(132506,'Khunti',4025),(132507,'Khurai',4039),(132508,'Khurda',4013),(132509,'Khurja',4022),(132510,'Khusropur',4037),(132511,'Khachrod',4039),(132512,'Khaga',4022),(132513,'Khamgaon',4008),(132514,'Khanpur',4022),(132515,'Khanpur',4014),(132516,'Khanapur',4026),(132517,'Khapa',4008),(132518,'Kharupatia',4027),(132519,'Khategaon',4039),(132520,'Khutar',4022),(132521,'Kichha',4016),(132522,'Kilvelur',4035),(132523,'Kinnaur',4020),(132524,'Kinwat',4008),(132525,'Kirandul',4040),(132526,'Kiraoli',4022),(132527,'Kiri Buru',4013),(132528,'Kirakat',4022),(132529,'Kishanganj',4037),(132530,'Kishangarh',4014),(132531,'Kishanpur',4022),(132532,'Kishni',4022),(132533,'Kishtwar',4029),(132535,'Kithor',4022),(132536,'Kizhake Chalakudi',4028),(132537,'Kodagu',4026),(132538,'Kodaikanal',4035),(132539,'Kodala',4013),(132540,'Kodarma',4025),(132541,'Kodigenahalli',4026),(132542,'Kodlipet',4026),(132543,'Kodoli',4008),(132544,'Kodumudi',4035),(132545,'Kodungallur',4028),(132546,'Kodar',4012),(132547,'Kodinar',4030),(132548,'Koelwar',4037),(132549,'Kohima',4018),(132551,'Kokrajhar',4027),(132552,'Kolanukonda',4017),(132553,'Kolar',4026),(132554,'Kolasib',4036),(132556,'Kolhapur',4008),(132558,'Kollam',4028),(132559,'Kollegal',4026),(132561,'Kolaras',4039),(132562,'Kombai',4035),(132563,'Konanur',4026),(132564,'Konch',4022),(132565,'Kondagaon',4040),(132566,'Kondalwadi',4008),(132567,'Kondapalle',4017),(132568,'Konganapuram',4035),(132569,'Konnur',4026),(132570,'Konarka',4013),(132571,'Koothanallur',4035),(132572,'Kopargaon',4008),(132573,'Koppa',4026),(132574,'Koppal',4026),(132575,'Kopaganj',4022),(132576,'Koradachcheri',4035),(132577,'Korampallam',4035),(132578,'Koraput',4013),(132579,'Koratagere',4026),(132580,'Koratla',4012),(132581,'Korba',4040),(132582,'Koregaon',4008),(132583,'Koria',4040),(132584,'Korukollu',4017),(132585,'Korwai',4039),(132586,'Koradi',4008),(132588,'Kosamba',4030),(132589,'Kosi',4022),(132590,'Kosigi',4017),(132591,'Kot Isa Khan',4015),(132592,'Kota',4022),(132593,'Kota',4014),(132594,'Kotagiri',4035),(132595,'Kotamangalam',4028),(132596,'Kotaparh',4040),(132597,'Kotdwara',4016),(132598,'Kothi',4039),(132599,'Kothapet',4012),(132600,'Kotkapura',4015),(132601,'Kotkhai',4020),(132602,'Kotla',4020),(132603,'Kotma',4039),(132604,'Kotputli',4014),(132605,'Kotra',4022),(132606,'Kottagudem',4012),(132607,'Kottaiyur',4035),(132608,'Kottapalli',4012),(132609,'Kottayam',4028),(132610,'Kotturu',4026),(132611,'Kotwa',4039),(132612,'Kota',4040),(132613,'Kotar',4039),(132614,'Kovalam',4028),(132615,'Kovilpatti',4035),(132616,'Kovvur',4017),(132618,'Koynanagar',4008),(132619,'Kozhikode',4028),(132620,'Koath',4037),(132621,'Krishna',4017),(132622,'Krishnagiri',4035),(132623,'Krishnarajpet',4026),(132624,'Kuchaiburi',4013),(132625,'Kuchera',4014),(132626,'Kuchinda',4013),(132627,'Kuchaman',4014),(132628,'Kudachi',4026),(132629,'Kudal',4008),(132630,'Kuju',4025),(132631,'Kukshi',4039),(132632,'Kulattur',4035),(132633,'Kulgam',4029),(132634,'Kulittalai',4035),(132635,'Kulpahar',4022),(132636,'Kulu',4020),(132637,'Kumaralingam',4035),(132638,'Kumbakonam',4035),(132639,'Kumbalam',4028),(132640,'Kumbhraj',4039),(132641,'Kumhari',4040),(132642,'Kumsi',4026),(132643,'Kumta',4026),(132644,'Kunda',4022),(132645,'Kundarkhi',4022),(132646,'Kundgol',4026),(132647,'Kundla',4030),(132648,'Kunigal',4026),(132649,'Kunnamangalam',4028),(132650,'Kunnamkulam',4028),(132651,'Kunnattur',4035),(132652,'Kunnumma',4028),(132653,'Kuppam',4017),(132654,'Kupwara',4029),(132656,'Kurandvad',4008),(132657,'Kurduvadi',4008),(132658,'Kurgunta',4026),(132659,'Kurinjippadi',4035),(132660,'Kurnool',4017),(132661,'Kurud',4040),(132662,'Kurukshetra',4007),(132663,'Kurung Kumey',4024),(132664,'Kurara',4022),(132665,'Kushinagar',4022),(132666,'Kushtagi',4026),(132667,'Kushalgarh',4014),(132668,'Kushalnagar',4026),(132669,'Kutiatodu',4028),(132670,'Kutiyana',4030),(132671,'Kuttampuzha',4028),(132672,'Kuttalam',4035),(132673,'Kuzhithurai',4035),(132674,'Kyathampalle',4012),(132675,'Kyelang',4020),(132676,'Kadipur',4022),(132677,'Kagal',4008),(132678,'Kakinada',4017),(132679,'Kakori',4022),(132680,'Kalikapur',4025),(132681,'Kalka',4020),(132682,'Kalol',4030),(132683,'Kalpi',4022),(132684,'Kalundri',4008),(132685,'Kaladhungi',4016),(132686,'Kalagarh Project Colony',4016),(132687,'Kalahandi',4013),(132688,'Kalanwali',4007),(132689,'Kalavad',4030),(132690,'Kalinagar',4022),(132691,'Kamalapuram',4017),(132692,'Kaman',4014),(132693,'Kamrup',4027),(132695,'Kamakhyanagar',4013),(132696,'Kamareddi',4012),(132697,'Kandhla',4022),(132698,'Kandla',4030),(132699,'Kandra',4025),(132700,'Kandri',4008),(132701,'Kangar',4020),(132702,'Kangra',4020),(132703,'Kanke',4025),(132704,'Kanker',4040),(132705,'Kankon',4009),(132706,'Kankanhalli',4026),(132707,'Kanhangad',4028),(132708,'Kanodar',4030),(132709,'Kanor',4014),(132711,'Kant',4022),(132712,'Kanth',4022),(132713,'Kapren',4014),(132714,'Karaikkudi',4035),(132715,'Karaikal',4011),(132716,'Karamadai',4035),(132717,'Karanja',4008),(132718,'Karbi Anglong',4027),(132719,'Karkala',4026),(132720,'Kasaragod',4028),(132722,'Kasganj',4022),(132723,'Kathor',4030),(132724,'Kati',4008),(132725,'Katol',4008),(132726,'Katpadi',4035),(132727,'Katras',4025),(132728,'Kattupputtur',4035),(132729,'Kavali',4017),(132730,'Kaveripatnam',4035),(132731,'Kayankulam',4028),(132732,'Kil Bhuvanagiri',4035),(132733,'Kiranur',4035),(132734,'Kiratpur',4022),(132735,'Kud',4029),(132736,'Kudligi',4026),(132737,'Kukatpally',4012),(132738,'Kumher',4014),(132739,'Lachhmangarh Sikar',4014),(132740,'Ladakh',4029),(132741,'Lahar',4039),(132742,'Lakhimpur',4027),(132743,'Lakhipur',4027),(132744,'Lakhisarai',4037),(132745,'Lakhna',4022),(132746,'Lakhnadon',4039),(132747,'Lakhtar',4030),(132748,'Lakhimpur',4022),(132749,'Laksar',4016),(132750,'Lakshadweep',4019),(132751,'Lakshettipet',4012),(132752,'Lakshmeshwar',4026),(132753,'Lal Bahadur Nagar',4012),(132754,'Lalgudi',4035),(132755,'Lalitpur',4022),(132756,'Lansdowne',4016),(132757,'Lar',4022),(132758,'Latehar',4025),(132759,'Latur',4008),(132760,'Laungowal',4015),(132761,'Lawngtlai',4036),(132762,'Leh',4852),(132763,'Leteri',4039),(132764,'Limbdi',4030),(132765,'Lingsugur',4026),(132766,'Lodhikheda',4039),(132767,'Lohaghat',4016),(132768,'Lohardaga',4025),(132769,'Lohit District',4024),(132770,'Lohogaon',4008),(132772,'Loharu',4007),(132773,'Lonavla',4008),(132774,'Londa',4026),(132775,'Loni',4022),(132776,'Lonar',4008),(132777,'Lormi',4040),(132778,'Losal',4014),(132779,'Lower Dibang Valley',4024),(132780,'Lower Subansiri',4024),(132781,'Luckeesarai',4037),(132782,'Lucknow',4022),(132783,'Lucknow District',4022),(132785,'Ludhiana',4015),(132786,'Lumding Railway Colony',4027),(132787,'Lunglei',4036),(132788,'Ladnun',4014),(132789,'Ladwa',4007),(132790,'Laharpur',4022),(132791,'Lahul and Spiti',4020),(132792,'Lakheri',4014),(132793,'Lala',4027),(132794,'Lalam',4028),(132795,'Lalganj',4037),(132796,'Lalganj',4022),(132797,'Lalpur',4030),(132798,'Lalsot',4014),(132799,'Lanja',4008),(132800,'Lasalgaon',4008),(132802,'Lathi',4030),(132803,'Lawar Khas',4022),(132804,'Lunavada',4030),(132805,'Machhlishahr',4022),(132806,'Machilipatnam',4017),(132807,'Madambakkam',4035),(132808,'Madanapalle',4017),(132809,'Maddagiri',4026),(132810,'Maddur',4026),(132811,'Madgaon',4009),(132812,'Madhepura',4037),(132814,'Madhogarh',4039),(132815,'Madhubani',4037),(132816,'Madhupur',4025),(132817,'Madikeri',4026),(132818,'Madipakkam',4035),(132819,'Madukkarai',4035),(132820,'Madukkur',4035),(132821,'Madurai',4035),(132822,'Madurantakam',4035),(132823,'Maghar',4022),(132824,'Mahabubabad',4012),(132825,'Maham',4007),(132826,'Maharajganj',4022),(132827,'Mahasamund',4040),(132828,'Mahbubnagar',4012),(132830,'Mahe',4011),(132831,'Mahemdavad',4030),(132832,'Mahendragarh',4007),(132833,'Maheshwar',4039),(132834,'Mahesana',4030),(132835,'Mahgawan',4039),(132836,'Mahmudabad',4022),(132837,'Mahoba',4022),(132839,'Maholi',4022),(132840,'Mahroni',4022),(132841,'Mahudha',4030),(132842,'Mahur',4027),(132843,'Mahwah',4014),(132844,'Mahabaleshwar',4008),(132845,'Mahaban',4022),(132846,'Mahad',4008),(132847,'Mahalingpur',4026),(132849,'Maharajgani',4037),(132852,'Mahe',4028),(132853,'Maibong',4027),(132854,'Maihar',4039),(132855,'Mailani',4022),(132856,'Maindargi',4008),(132857,'Mainpuri',4022),(132858,'Mairang',4006),(132859,'Mairwa',4037),(132860,'Majholi',4039),(132861,'Majitha',4015),(132862,'Makhu',4015),(132863,'Makrana',4014),(132864,'Maksi',4039),(132866,'Malappuram',4028),(132867,'Malaut',4015),(132868,'Malavalli',4026),(132869,'Malhargarh',4039),(132870,'Malkajgiri',4012),(132871,'Malkangiri',4013),(132872,'Malkapur',4008),(132873,'Malkera',4025),(132875,'Mallasamudram',4035),(132876,'Mallapuram',4035),(132877,'Malpe',4026),(132878,'Malihabad',4022),(132879,'Mamit',4036),(132880,'Manali',4035),(132881,'Manalurpettai',4035),(132882,'Manamadurai',4035),(132883,'Manappakkam',4035),(132884,'Manapparai',4035),(132885,'Manavalakurichi',4035),(132886,'Manchar',4008),(132887,'Mancheral',4012),(132888,'Mandamarri',4012),(132889,'Mandapam',4035),(132890,'Mandapeta',4017),(132891,'Mandasa',4017),(132892,'Mandholi Kalan',4007),(132893,'Mandi',4020),(132894,'Mandideep',4039),(132895,'Mandla',4039),(132897,'Mandsaur',4039),(132898,'Mandya',4026),(132899,'Mandawar',4022),(132900,'Mandawar',4014),(132901,'Maner',4037),(132902,'Mangalagiri',4017),(132903,'Mangalam',4035),(132904,'Mangaldai',4027),(132905,'Mangaluru',4026),(132906,'Mangan',4034),(132907,'Mangawan',4039),(132908,'Manglaur',4016),(132909,'Mangrul Pir',4008),(132910,'Maniar',4022),(132911,'Manihari',4037),(132912,'Manipal',4026),(132913,'Manjeri',4028),(132914,'Manjhanpur',4022),(132915,'Manjeshwaram',4028),(132916,'Mankachar',4006),(132917,'Mankapur',4022),(132918,'Manmad',4008),(132919,'Mannargudi',4035),(132920,'Mannarakkat',4028),(132921,'Manohar Thana',4014),(132922,'Manoharpur',4014),(132923,'Manoharpur',4025),(132924,'Manor',4008),(132926,'Mansar',4008),(132927,'Manthani',4012),(132928,'Manuguru',4012),(132929,'Manali',4020),(132930,'Manasa',4039),(132931,'Manawar',4039),(132932,'Marakkanam',4035),(132933,'Marayur',4028),(132934,'Margherita',4024),(132935,'Marhaura',4037),(132936,'Mariahu',4022),(132937,'Mariani',4027),(132938,'Masaurhi Buzurg',4037),(132939,'Masinigudi',4035),(132940,'Mataundh',4022),(132941,'Mathura',4022),(132942,'Mattanur',4028),(132943,'Mau',4039),(132944,'Mau',4022),(132945,'Mau Aimma',4022),(132946,'Maudaha',4022),(132947,'Mauganj',4039),(132948,'Maur Mandi',4015),(132950,'Mavoor',4028),(132951,'Mawana',4022),(132952,'Mayiladuthurai',4035),(132953,'Imphal West',4010),(132954,'Mayurbhanj',4013),(132955,'Medak',4012),(132956,'Medchal',4012),(132957,'Medchal Malkajgiri',4012),(132958,'Meerut',4022),(132959,'Meethari Marwar',4014),(132960,'Meghraj',4030),(132961,'Mehekar',4008),(132962,'Mehnagar',4022),(132963,'Mehndawal',4022),(132964,'Melukote',4026),(132965,'Melur',4035),(132966,'Mendarda',4030),(132967,'Merta',4014),(132969,'Mettuppalaiyam',4035),(132970,'Mettur',4035),(132971,'Mhasla',4008),(132972,'Mhasvad',4008),(132973,'Mihona',4039),(132974,'Milak',4022),(132975,'Mirialguda',4012),(132976,'Mirzapur',4022),(132977,'Misrikh',4022),(132978,'Modasa',4030),(132979,'Moga',4015),(132980,'Mohali',4015),(132981,'Mohanpur',4022),(132982,'Mohanur',4035),(132983,'Mohgaon',4039),(132984,'Mohiuddi nagar',4037),(132985,'Mohpa',4008),(132986,'Mohan',4022),(132988,'Mokameh',4037),(132989,'Mokokchung',4018),(132990,'Mon',4018),(132991,'Monghyr',4037),(132992,'Moram',4008),(132993,'Morbi',4030),(132994,'Morena',4039),(132995,'Morigaon',4027),(132996,'Morinda',4015),(132997,'Morjim',4009),(132998,'Mormugao',4009),(132999,'Morsi',4008),(133000,'Morwa',4030),(133001,'Moradabad',4022),(133002,'Moranha',4027),(133003,'Morar',4039),(133004,'Moth',4022),(133005,'Mothihari',4037),(133006,'Mowad',4008),(133007,'Mubarakpur',4022),(133008,'Muddebihal',4026),(133009,'Mudgal',4026),(133010,'Mudgere',4026),(133011,'Mudhol',4026),(133012,'Mudkhed',4008),(133013,'Mudukulattur',4035),(133014,'Mughal Sarai',4022),(133015,'Mugma',4025),(133016,'Muhammadabad',4022),(133017,'Mukerian',4015),(133018,'Mukher',4008),(133019,'Sri Muktsar Sahib',4015),(133020,'Mulbagal',4026),(133021,'Mulgund',4026),(133022,'Multai',4039),(133023,'Muluppilagadu',4028),(133024,'Mumbai',4008),(133025,'Mumbai Suburban',4008),(133026,'Mundargi',4026),(133027,'Mundgod',4026),(133028,'Mundi',4039),(133029,'Mundra',4030),(133030,'Mungaoli',4039),(133031,'Mungeli',4040),(133032,'Munger',4037),(133033,'Munirabad',4026),(133034,'Munnar',4028),(133035,'Murbad',4008),(133036,'Murgud',4008),(133037,'Murliganj',4037),(133038,'Mursan',4022),(133039,'Murtajapur',4008),(133040,'Murud (Raigad)',4008),(133041,'Murudeshwara',4026),(133042,'Murwara',4039),(133043,'Muradnagar',4022),(133044,'Mushabani',4025),(133045,'Musiri',4035),(133046,'Mussoorie',4016),(133047,'Mustafabad',4007),(133048,'Musafir-Khana',4022),(133049,'Muttupet',4035),(133050,'Muvattupuzha',4028),(133051,'Muzaffarnagar',4022),(133052,'Muzaffarpur',4037),(133053,'Mysuru',4026),(133054,'Machalpur',4039),(133055,'Macherla',4017),(133056,'Machhiwara',4015),(133057,'Madhoganj',4022),(133058,'Madhogarh',4022),(133059,'Madugula',4017),(133060,'Magadi',4026),(133061,'Magam',4029),(133062,'Majalgaon',4008),(133063,'Makhjan',4008),(133064,'Makum',4027),(133065,'Malegaon',4008),(133066,'Malerkotla',4015),(133067,'Mallur',4035),(133068,'Malpur',4030),(133069,'Malpura',4014),(133070,'Malvan',4008),(133071,'Malur',4026),(133072,'Mandal',4014),(133073,'Mandal',4030),(133074,'Mandalgarh',4014),(133075,'Mandleshwar',4039),(133076,'Mandvi',4030),(133077,'Mangrol',4030),(133078,'Mangrol',4014),(133079,'Manikpur',4022),(133080,'Manpur',4039),(133081,'Mansa',4030),(133082,'Mansa',4015),(133083,'Manvi',4026),(133084,'Manwat',4008),(133085,'Manavadar',4030),(133086,'Mapuca',4009),(133087,'Marahra',4022),(133088,'Markapur',4017),(133089,'Marandahalli',4035),(133090,'Matheran',4008),(133091,'Mattur',4035),(133092,'Mavelikara',4028),(133093,'Mayakonda',4026),(133094,'Minjur',4035),(133095,'Mirganj',4022),(133096,'Miranpur',4022),(133097,'Miranpur Katra',4022),(133098,'Mudbidri',4026),(133099,'Mul',4008),(133100,'Mulanur',4035),(133101,'Mulki',4026),(133102,'Mundwa',4014),(133103,'Muvattupula',4028),(133104,'Nabarangpur',4013),(133105,'Nabinagar',4037),(133106,'Nadiad',4030),(133107,'Naduvannur',4028),(133108,'Naduvattam',4035),(133109,'Nadigaon',4022),(133110,'Nagaon',4027),(133111,'Nagapattinam',4035),(133112,'Nagar',4014),(133113,'Nagar',4020),(133114,'Nagari',4017),(133115,'Nagda',4039),(133116,'Nagpur',4008),(133117,'Nagpur Division',4008),(133118,'Nagrota',4020),(133119,'Nagram',4022),(133120,'Nagina',4022),(133121,'Naharlagun',4024),(133122,'Nahorkatiya',4027),(133123,'Naini Tal',4016),(133124,'Nainpur',4039),(133125,'Nainwa',4014),(133126,'Najafgarh',4021),(133127,'Najibabad',4022),(133128,'Nakodar',4015),(133129,'Nakur',4022),(133130,'Nalbari',4027),(133131,'Naldurg',4008),(133132,'Nalgonda',4012),(133133,'Naliya',4030),(133134,'Namakkal',4035),(133135,'Nambiyur',4035),(133136,'Nambutalai',4035),(133137,'Namchi',4034),(133138,'Namli',4039),(133139,'Nanauta',4022),(133140,'Nandambakkam',4035),(133141,'Nanded',4008),(133142,'Nandgaon',4022),(133143,'Nandigama',4017),(133144,'Nandikotkur',4017),(133145,'Nandurbar',4008),(133146,'Nandyal',4017),(133147,'Nangal',4015),(133148,'Nangavalli',4035),(133149,'Nangilickondan',4035),(133150,'Nanguneri',4035),(133151,'Nanjangud',4026),(133152,'Nannilam',4035),(133153,'Napasar',4014),(133154,'Naraina',4014),(133155,'Naraini',4039),(133156,'Narasannapeta',4017),(133157,'Narasapur',4017),(133158,'Narasaraopet',4017),(133159,'Narasimharajapura',4026),(133160,'Narasingapuram',4017),(133161,'Narauli',4022),(133162,'Naraura',4022),(133163,'Narayanpur',4040),(133164,'Naregal',4026),(133165,'Narela',4021),(133166,'Narendranagar',4016),(133167,'Nargund',4026),(133168,'Narharpur',4040),(133169,'Narmada',4030),(133170,'Naroda',4030),(133171,'Narsimhapur',4039),(133172,'Narsinghgarh',4039),(133173,'Narsipatnam',4017),(133174,'Narwar',4039),(133175,'Narwana',4007),(133176,'Narayangarh',4007),(133177,'Nashik',4008),(133178,'Nashik Division',4008),(133179,'Nasrullahganj',4039),(133180,'Nasirabad',4014),(133181,'Nattam',4035),(133182,'Naugachhia',4037),(133183,'Nautanwa',4022),(133184,'Navalgund',4026),(133185,'Navelim',4009),(133186,'Navi Mumbai',4008),(133187,'Navsari',4030),(133189,'Nawalgarh',4014),(133190,'Nawanshahr',4015),(133191,'Nawabganj',4022),(133192,'Nawada',4037),(133193,'Nawanshahr',4029),(133194,'Naya Bazar',4034),(133195,'Nayagarh District',4013),(133196,'Nayagarh',4013),(133197,'Naigarhi',4039),(133198,'Nedumangad',4028),(133199,'Needamangalam',4035),(133200,'Neelankarai',4035),(133201,'Neem ka Thana',4014),(133202,'Neemuch',4039),(133203,'Negapatam',4035),(133204,'Nelamangala',4026),(133205,'Nellikkuppam',4035),(133206,'Nellore',4017),(133207,'Nepanagar',4039),(133208,'Neral',4008),(133209,'Neturhat',4025),(133210,'New Delhi',4021),(133211,'Neyyattinkara',4028),(133212,'Nichlaul',4022),(133213,'Nicobar',4023),(133214,'Nidadavole',4017),(133215,'Nihtaur',4022),(133216,'Nilakottai',4035),(133217,'Nilanga',4008),(133218,'Nilgiris',4035),(133219,'Nimaparha',4013),(133220,'Nipani',4008),(133221,'Nirmal',4012),(133222,'Nirmali',4037),(133223,'Nirsa',4025),(133224,'Niwai',4014),(133225,'Niwari',4022),(133226,'Nizamabad',4012),(133228,'Nizamabad',4022),(133229,'Nohar',4014),(133230,'Noida',4022),(133231,'Nokha',4014),(133232,'Nongpoh',4006),(133233,'Nongstoin',4006),(133234,'North Delhi',4021),(133235,'North District',4034),(133236,'North East Delhi',4021),(133237,'North Garo Hills',4006),(133238,'North Goa',4009),(133239,'North Guwahati',4027),(133240,'North Lakhimpur',4027),(133241,'North Tripura',4038),(133242,'North Vanlaiphai',4036),(133243,'North West Delhi',4021),(133244,'Noria',4029),(133245,'Nowrangapur',4013),(133246,'Noamundi',4025),(133247,'Nuapada',4013),(133248,'Numaligarh',4027),(133249,'Nyamti',4026),(133250,'Nabha',4015),(133251,'Nadaun',4020),(133252,'Nadbai',4014),(133253,'Nadapuram',4028),(133254,'Nagamangala',4026),(133255,'Nagar Karnul',4012),(133256,'Nagaur',4014),(133257,'Nagercoil',4035),(133258,'Nagireddipalli',4017),(133259,'Nagod',4039),(133260,'Nagothana',4008),(133261,'Nahan',4020),(133262,'Nalanda',4037),(133263,'Nalagarh',4020),(133264,'Namagiripettai',4035),(133266,'Namrup',4027),(133267,'Nandgaon',4008),(133268,'Nandura Buzurg',4008),(133269,'Nangloi Jat',4021),(133270,'Nanpara',4022),(133271,'Naravarikuppam',4035),(133272,'Narnaul',4007),(133273,'Narnaund',4007),(133274,'Narsingi',4012),(133275,'Narayanavanam',4017),(133276,'Narayangarh',4039),(133277,'Narayanpet',4012),(133278,'Naspur',4012),(133279,'Nasriganj',4037),(133280,'Nathdwara',4014),(133281,'Nattarasankottai',4035),(133282,'Nawa',4014),(133283,'Nayudupet',4017),(133284,'Nazira',4027),(133285,'Nilgiri',4013),(133286,'Nilokheri',4007),(133287,'Nileshwar',4028),(133288,'Nimbahera',4014),(133289,'Nimaj',4014),(133290,'Nuh',4007),(133291,'Nurmahal',4015),(133292,'Nurpur',4022),(133293,'Nurpur Kalan',4015),(133294,'Nuzvid',4017),(133295,'Obra',4022),(133296,'Odugattur',4035),(133297,'Okha',4030),(133298,'Olpad',4030),(133299,'Omalur',4035),(133300,'Ongole',4017),(133301,'Ooty',4035),(133302,'Orai',4022),(133303,'Oran',4022),(133304,'Orchha',4039),(133305,'Osmanabad',4008),(133306,'Ottappalam',4028),(133307,'Ozar',4008),(133308,'Pachmarhi',4039),(133309,'Pachperwa',4022),(133310,'Padam',4029),(133311,'Padampur',4014),(133312,'Padampur',4013),(133313,'Paddhari',4030),(133314,'Padmanabhapuram',4035),(133315,'Padra',4030),(133316,'Padrauna',4022),(133317,'Pahlgam',4029),(133318,'Pahasu',4022),(133319,'Paithan',4008),(133320,'Pakur',4025),(133321,'Palackattumala',4028),(133322,'Palakkad district',4028),(133323,'Palani',4035),(133324,'Palavakkam',4035),(133325,'Palera',4039),(133326,'Palia Kalan',4022),(133327,'Palladam',4035),(133328,'Pallappatti',4035),(133329,'Pallattur',4035),(133330,'Palle',4009),(133331,'Pallevada',4017),(133332,'Pallikondai',4035),(133333,'Pallipattu',4035),(133334,'Pallippatti',4035),(133335,'Pallavaram',4035),(133336,'Palmaner',4017),(133337,'Palwal',4007),(133338,'Palwancha',4012),(133339,'Palamu',4025),(133340,'Palasa',4017),(133341,'Palasbari',4027),(133342,'Panaji',4009),(133343,'Panamaram',4028),(133344,'Panara',4039),(133345,'Panchkula',4007),(133346,'Pandaria',4040),(133347,'Pandharpur',4008),(133348,'Pandhana',4039),(133349,'Panhala',4008),(133350,'Panipat',4007),(133351,'Panna',4039),(133352,'Panruti',4035),(133353,'Panvel',4008),(133354,'Panagar',4039),(133355,'Papanasam',4035),(133356,'Paramagudi',4035),(133357,'Paravur Tekkumbhagam',4028),(133358,'Parbhani',4008),(133359,'Pariyapuram',4028),(133360,'Parli Vaijnath',4008),(133361,'Parlakimidi',4017),(133362,'Parnera',4030),(133363,'Parol',4029),(133364,'Parola',4008),(133365,'Parshadepur',4022),(133366,'Partapur',4014),(133367,'Partur',4008),(133368,'Parvatsar',4014),(133369,'Parwanoo',4020),(133370,'Paradip Garh',4013),(133371,'Parasia',4039),(133372,'Parichhatgarh',4022),(133373,'Pashchim Champaran',4037),(133374,'Pashchim Singhbhum',4025),(133375,'Pasan',4040),(133376,'Patan',4030),(133377,'Patancheru',4012),(133378,'Pataudi',4007),(133379,'Pathalgaon',4040),(133380,'Pathanamthitta',4028),(133381,'Patharia',4039),(133382,'Pathankot',4015),(133384,'Patiala',4015),(133385,'Patiali',4022),(133386,'Patna',4037),(133387,'Patnagarh',4013),(133388,'Pattan',4029),(133389,'Pattanamtitta',4028),(133390,'Patti',4015),(133391,'Patti',4022),(133392,'Pattukkottai',4035),(133393,'Patamundai',4013),(133394,'Pauri',4016),(133395,'Pavuluru',4017),(133396,'Pawai',4039),(133397,'Pawni',4008),(133398,'Pawayan',4022),(133399,'Payyanur',4028),(133400,'Pedana',4017),(133401,'Peddapalli',4012),(133402,'Peddapuram',4017),(133403,'Pehowa',4007),(133404,'Pen',4008),(133405,'Pendra',4040),(133406,'Pennadam',4035),(133407,'Pennagaram',4035),(133408,'Pennathur',4035),(133409,'Penugonda',4017),(133410,'Penukonda',4017),(133411,'Peraiyur',4035),(133412,'Perambalur',4035),(133413,'Peranamallur',4035),(133414,'Peranampattu',4035),(133415,'Peravurani',4035),(133416,'Peren',4018),(133417,'Periyakulam',4035),(133418,'Periyanayakkanpalaiyam',4035),(133419,'Periyanegamam',4035),(133420,'Periyapatti',4035),(133421,'Periyapattinam',4035),(133422,'Pernem',4009),(133423,'Perumbavoor',4028),(133424,'Perumpavur',4028),(133425,'Perundurai',4035),(133426,'Perungudi',4035),(133427,'Perya',4028),(133428,'Perur',4035),(133429,'Petlad',4030),(133430,'Petlawad',4039),(133431,'Phagwara',4015),(133432,'Phalauda',4022),(133433,'Phalodi',4014),(133434,'Phaltan',4008),(133435,'Phaphund',4022),(133436,'Phariha',4022),(133438,'Phek',4018),(133439,'Phillaur',4015),(133440,'Phirangipuram',4017),(133441,'Phulbani',4013),(133442,'Phulera',4014),(133443,'Phulpur',4022),(133445,'Pihani',4022),(133446,'Pilibangan',4014),(133447,'Pilkhua',4022),(133448,'Pilani',4014),(133449,'Pimpri',4008),(133450,'Pindwara',4014),(133451,'Pinjaur',4007),(133452,'Pinahat',4022),(133453,'Pipili',4013),(133454,'Piploda',4039),(133455,'Pippara',4017),(133456,'Pipraich',4022),(133457,'Piravam',4028),(133458,'Piriyapatna',4026),(133459,'Piro',4037),(133460,'Pirawa',4014),(133461,'Pitampura',4021),(133462,'Pithampur',4039),(133463,'Pithora',4040),(133464,'Pithoragarh',4016),(133465,'Pithapuram',4017),(133466,'Pokaran',4014),(133467,'Polasara',4013),(133468,'Polavaram',4017),(133469,'Pollachi',4035),(133470,'Polur',4035),(133471,'Ponda',4009),(133472,'Ponmana',4028),(133473,'Ponnamaravati',4035),(133474,'Ponnampet',4026),(133475,'Ponneri',4035),(133476,'Ponnur',4017),(133477,'Ponnani',4028),(133478,'Ponnuru',4017),(133479,'Poonamalle',4035),(133480,'Porbandar',4030),(133481,'Porsa',4039),(133482,'Port Blair',4023),(133483,'Porur',4035),(133484,'Powai',4008),(133485,'Prakasam',4017),(133486,'Pratapgarh',4014),(133488,'Pratapgarh',4022),(133489,'Proddatur',4017),(133490,'Puducherry',4011),(133491,'Pudukkottai',4035),(133492,'Puduppatti',4035),(133493,'Puduvayal',4035),(133494,'Pudur',4035),(133495,'Pukhrayan',4022),(133496,'Pulgaon',4008),(133497,'Pulivendla',4017),(133498,'Puliyangudi',4035),(133499,'Puliyur',4035),(133500,'Pullambadi',4035),(133501,'Pulwama',4029),(133502,'Punalur',4028),(133503,'Punch',4029),(133504,'Pune',4008),(133505,'Pune Division',4008),(133506,'Punganuru',4017),(133507,'Punjai Puliyampatti',4035),(133508,'Punasa',4039),(133509,'Pupri',4037),(133510,'Purba Singhbhum',4025),(133511,'Puri',4013),(133512,'Purnia',4037),(133513,'Purushottampur',4013),(133514,'Purwa',4022),(133515,'Pusad',4008),(133516,'Pushkar',4014),(133517,'Puttaparthi',4017),(133518,'Puttur',4026),(133519,'Puttur',4017),(133520,'Pachora',4008),(133521,'Pakala',4017),(133522,'Palakkodu',4035),(133523,'Palakollu',4017),(133524,'Palamedu',4035),(133525,'Palampur',4020),(133526,'Palanpur',4030),(133527,'Palghar',4008),(133528,'Palghat',4028),(133529,'Pali',4014),(133530,'Pali',4039),(133531,'Pali',4022),(133532,'Palitana',4030),(133533,'Paliyad',4030),(133534,'Palkonda',4017),(133535,'Paloncha',4012),(133536,'Panch Mahals',4030),(133537,'Panchgani',4008),(133538,'Pandhurna',4039),(133539,'Pandoh',4020),(133540,'Pandatarai',4040),(133541,'Pangala',4026),(133542,'Pansemal',4039),(133544,'Paonta Sahib',4020),(133545,'Papireddippatti',4035),(133546,'Pappinissheri',4028),(133547,'Papparappatti',4035),(133548,'Pardi',4030),(133549,'Parvatipuram',4017),(133550,'Parichha',4022),(133551,'Pasighat',4024),(133552,'Patan',4040),(133554,'Patan',4008),(133555,'Patan',4039),(133556,'Pathardi',4008),(133557,'Pathardih',4025),(133558,'Pathri',4008),(133559,'Patur',4008),(133560,'Pavugada',4026),(133561,'Pilibhit',4022),(133563,'Pipalkoti',4016),(133564,'Pipri',4008),(133565,'Pipar',4014),(133567,'Pundri',4007),(133568,'Punahana',4007),(133569,'Puranpur',4022),(133570,'Purba Champaran',4037),(133571,'Purna',4008),(133572,'Quepem',4009),(133573,'Queula',4009),(133574,'Quthbullapur',4012),(133575,'Qadian',4015),(133576,'Qazigund',4029),(133577,'Rabkavi',4026),(133578,'Rabupura',4022),(133579,'Radaur',4007),(133580,'Raebareli',4022),(133581,'Rafiganj',4037),(133582,'Raghunathpur',4037),(133583,'Rahimatpur',4008),(133584,'Raha',4027),(133585,'Raia',4009),(133586,'Raichur',4026),(133587,'Raigarh',4040),(133588,'Raigarh',4008),(133589,'Raipur',4014),(133590,'Raipur',4040),(133591,'Raisen',4039),(133592,'Rajanna Sircilla',4012),(133593,'Rajaori',4029),(133594,'Rajapalaiyam',4035),(133595,'Rajpur',4039),(133596,'Rajsamand',4014),(133597,'Ramagundam',4012),(133598,'Ramanagara',4026),(133599,'Ramanathapuram',4035),(133600,'Ramanayyapeta',4017),(133601,'Ramban',4029),(133602,'Rambha',4013),(133603,'Rameswaram',4035),(133604,'Ramgarh',4025),(133605,'Rampachodavaram',4017),(133606,'Ranchi',4025),(133607,'Rangareddi',4012),(133608,'Rangia',4027),(133609,'Rangpo',4034),(133610,'Rangapara',4027),(133611,'Rasipuram',4035),(133612,'Rasra',4022),(133613,'Rasulabad',4022),(133614,'Ratangarh',4014),(133615,'Ratangarh',4039),(133616,'Ratanpur',4040),(133617,'Ratia',4007),(133618,'Ratlam',4039),(133619,'Ratnagiri',4008),(133620,'Raurkela',4013),(133621,'Raxaul',4037),(133622,'Rayagada',4013),(133623,'Rehli',4039),(133624,'Rehti',4039),(133625,'Remuna',4013),(133626,'Rengali',4013),(133627,'Renigunta',4017),(133628,'Renukut',4022),(133629,'Reoti',4022),(133630,'Repalle',4017),(133631,'Revadanda',4008),(133632,'Revelganj',4037),(133633,'Rewa',4039),(133635,'Rewari',4007),(133636,'Ri-Bhoi',4006),(133637,'Richha',4022),(133638,'Rishikesh',4016),(133639,'Risod',4008),(133640,'Riasi',4029),(133641,'Robertsganj',4022),(133642,'Robertsonpet',4026),(133643,'Roha',4030),(133644,'Roha',4008),(133645,'Rohini',4021),(133646,'Rohru',4020),(133647,'Rohtak',4007),(133648,'Rohtas',4037),(133649,'Ron',4026),(133650,'Roorkee',4016),(133652,'Rudraprayag',4016),(133654,'Rupnagar',4015),(133655,'Rura',4022),(133656,'Rusera',4037),(133657,'Radhanpur',4030),(133658,'Radhakund',4022),(133660,'Raghogarh',4039),(133661,'Rahatgarh',4039),(133662,'Rahon',4015),(133663,'Rahuri',4008),(133665,'Raikot',4015),(133666,'Raipur',4016),(133667,'Raisinghnagar',4014),(133668,'Raj Nandgaon',4040),(133670,'Rajasansi',4015),(133671,'Rajahmundry',4017),(133672,'Rajaldesar',4014),(133673,'Rajauri',4029),(133674,'Rajgarh',4014),(133675,'Rajgarh',4039),(133676,'Rajgarh',4020),(133677,'Rajgurunagar',4008),(133678,'Rajgir',4037),(133679,'Rajkot',4030),(133680,'Rajnagar',4039),(133681,'Rajpura',4015),(133682,'Rajpipla',4030),(133684,'Rajula',4030),(133685,'Rajur',4008),(133686,'Rajakhera',4014),(133687,'Rajapur',4008),(133688,'Rajapur',4022),(133689,'Rajura',4008),(133690,'Ram Das',4015),(133691,'Ramachandrapuram',4017),(133692,'Ramamangalam',4028),(133695,'Ramganj Mandi',4014),(133696,'Ramgarh',4014),(133698,'Ramgarh',4029),(133699,'Ramgundam',4012),(133700,'Ramkola',4022),(133701,'Ramnagar',4037),(133702,'Ramnagar',4029),(133703,'Ramnagar',4016),(133704,'Ramnagar',4022),(133705,'Rampur',4022),(133706,'Rampur',4020),(133707,'Rampura',4022),(133708,'Rampura',4015),(133709,'Rampura',4039),(133710,'Ramtek',4008),(133711,'Ramanuj Ganj',4040),(133712,'Ramapuram',4017),(133714,'Rani',4014),(133715,'Rania',4007),(133716,'Ranikhet',4016),(133717,'Ranapur',4039),(133718,'Ranavav',4030),(133719,'Ranibennur',4026),(133720,'Ranipur',4022),(133721,'Ranir Bazar',4038),(133722,'Rapar',4030),(133723,'Rath',4022),(133724,'Raver',4008),(133725,'Rawatbhata',4014),(133726,'Rawatsar',4014),(133727,'Ray',4025),(133728,'Raya',4022),(133729,'Rayachoti',4017),(133730,'Rayadrug',4017),(133731,'Raybag',4026),(133732,'Razampeta',4017),(133733,'Razole',4017),(133734,'Razam',4017),(133735,'Raiwala Bara',4016),(133736,'Ringas',4014),(133737,'Rudarpur',4022),(133738,'Sabalgarh',4039),(133739,'Sabar Kantha',4030),(133740,'Sabrum',4038),(133741,'Sabathu',4020),(133742,'Sachin',4030),(133743,'Sadalgi',4026),(133744,'Sadabad',4022),(133745,'Sadaseopet',4012),(133746,'Safidon',4007),(133747,'Safipur',4022),(133748,'Sagauli',4037),(133749,'Saharsa',4037),(133750,'Sahaspur',4022),(133751,'Sahaswan',4022),(133752,'Sahibganj',4025),(133753,'Saharanpur',4022),(133754,'Sahawar',4022),(133755,'Saidpur',4022),(133756,'Saiha',4036),(133757,'Sailana',4039),(133758,'Saint Thomas Mount',4035),(133759,'Sairang',4036),(133760,'Sakleshpur',4026),(133761,'Sakti',4040),(133762,'Sakit',4022),(133763,'Salem',4035),(133764,'Saligao',4009),(133765,'Salon',4022),(133766,'Salaya',4030),(133767,'Samastipur',4037),(133768,'Samba',4029),(133769,'Sambalpur',4013),(133770,'Sambhal',4022),(133771,'Samdari',4014),(133772,'Samrala',4015),(133773,'Samthar',4022),(133774,'Samalkha',4007),(133776,'Sanaur',4015),(133777,'Sancoale',4009),(133778,'Sandila',4022),(133779,'Sandur',4026),(133780,'Sangamner',4008),(133781,'Sangaria',4014),(133782,'Sangli',4008),(133783,'Sangod',4014),(133785,'Sangrur',4015),(133786,'Sanguem',4009),(133787,'Sangareddi',4012),(133788,'Sanivarsante',4026),(133789,'Sankeshwar',4026),(133790,'Sankheda',4030),(133791,'Sanquelim',4009),(133792,'Sant Kabir Nagar',4022),(133793,'Sant Ravi Das Nagar',4022),(133794,'Santokhgarh',4020),(133795,'Sanvordem',4009),(133796,'Sanawad',4039),(133797,'Saoner',4008),(133798,'Sapatgram',4027),(133799,'Sarai Ekdil',4022),(133800,'Saraikela',4025),(133801,'Saraipali',4040),(133802,'Sarauli',4022),(133803,'Sardhana',4022),(133804,'Sardulgarh',4015),(133805,'Sardarshahr',4014),(133806,'Sargur',4026),(133807,'Sarka Ghat',4020),(133808,'Sarkhej',4030),(133809,'Sarupathar',4027),(133810,'Sarwar',4014),(133811,'Sarahan',4020),(133812,'Sarai Mir',4022),(133813,'Sarai Akil',4022),(133814,'Sarila',4022),(133815,'Satara',4008),(133816,'Satara Division',4008),(133817,'Sathankulam',4035),(133818,'Sathupalli',4012),(133819,'Sathyamangalam',4035),(133820,'Satna',4039),(133821,'Satrikh',4022),(133822,'Sattenapalle',4017),(133823,'Sattur',4035),(133824,'Satwas',4039),(133825,'Satana',4008),(133826,'Saugor',4039),(133827,'Saundatti',4026),(133828,'Saurikh',4022),(133829,'Sausar',4039),(133830,'Savanur',4026),(133831,'Savarkundla',4030),(133832,'Sawai Madhopur',4014),(133833,'Sector',4022),(133834,'Secunderabad',4012),(133835,'Sehore',4039),(133836,'Selu',4008),(133837,'Senapati',4010),(133838,'Sendhwa',4039),(133839,'Seohara',4022),(133840,'Seondha',4039),(133841,'Seoni',4020),(133842,'Seoni',4039),(133843,'Seoni Malwa',4039),(133845,'Seorinarayan',4040),(133846,'Seram',4026),(133847,'Serchhip',4036),(133849,'Serilingampalle',4012),(133850,'Serula',4009),(133851,'Seven Pagodas',4035),(133852,'Shahbazpur',4037),(133853,'Shahdol',4039),(133854,'Shahid Bhagat Singh Nagar',4015),(133855,'Shamsabad',4022),(133856,'Shankargarh',4022),(133857,'Shegaon',4008),(133858,'Sheikhpura',4037),(133859,'Sheoganj',4014),(133860,'Sheohar',4037),(133861,'Sheopur',4039),(133862,'Shergarh',4022),(133863,'Sherghati',4037),(133864,'Sherkot',4022),(133865,'Shertallai',4028),(133866,'Shiggaon',4026),(133867,'Shikohabad',4022),(133868,'Shikarpur',4026),(133869,'Shikarpur',4022),(133870,'Shillong',4006),(133871,'Shimla',4020),(133872,'Shimoga',4026),(133873,'Shiraguppi',4008),(133874,'Shirdi',4008),(133875,'Shirgaon',4008),(133876,'Shirhatti',4026),(133877,'Shirpur',4008),(133878,'Shirwal',4008),(133879,'Shivaji Nagar',4008),(133880,'Shivpuri',4039),(133882,'Shivrajpur',4030),(133883,'Sholinghur',4035),(133884,'Shorapur',4026),(133885,'Shrawasti',4022),(133886,'Shrigonda',4008),(133887,'Shrirangapattana',4026),(133888,'Shujalpur',4039),(133889,'Shupiyan',4029),(133891,'Shadipur Julana',4007),(133892,'Shahganj',4022),(133893,'Shahgarh',4039),(133894,'Shahi',4022),(133895,'Shahjahanpur',4022),(133897,'Shahkot',4015),(133898,'Shahpur',4026),(133899,'Shahpur',4039),(133900,'Shahpur',4030),(133901,'Shahpur',4022),(133902,'Shahpur',4037),(133903,'Shahpura',4014),(133904,'Shahpura',4039),(133905,'Shahabad',4022),(133906,'Shahabad',4007),(133907,'Shahabad',4026),(133908,'Shahada',4008),(133909,'Shahapur',4008),(133910,'Shajapur',4039),(133911,'Sham Churasi',4015),(133912,'Shamgarh',4039),(133913,'Shamli',4022),(133914,'Shishgarh',4022),(133915,'Shoranur',4028),(133916,'Sibsagar',4027),(133918,'Siddharthnagar',4022),(133919,'Siddipet',4012),(133920,'Siddapur',4026),(133921,'Sidhauli',4022),(133922,'Sidhi',4039),(133923,'Sidhpura',4022),(133924,'Sidlaghatta',4026),(133925,'Sihor',4030),(133926,'Sihora',4039),(133927,'Sijua',4025),(133928,'Sikandarpur',4022),(133929,'Sikandarabad',4022),(133930,'Sikandra',4022),(133931,'Sikandra Rao',4022),(133932,'Sikka',4030),(133933,'Silao',4037),(133934,'Silapathar',4027),(133935,'Silchar',4027),(133936,'Sillod',4008),(133937,'Silvassa',4033),(133938,'Simaria',4039),(133939,'Simdega',4025),(133940,'Simga',4040),(133941,'Sindgi',4026),(133942,'Sindhnur',4026),(133943,'Sindhudurg',4008),(133944,'Sindi',4008),(133945,'Singapperumalkovil',4035),(133946,'Singarayakonda',4017),(133947,'Singoli',4039),(133948,'Singrauli',4039),(133949,'Singtam',4034),(133950,'Singanallur',4035),(133951,'Singapur',4012),(133952,'Sini',4025),(133953,'Sinnar',4008),(133954,'Sinor',4030),(133955,'Sirhind-Fategarh',4015),(133956,'Sirmaur',4039),(133957,'Sirmaur',4020),(133958,'Sirohi',4014),(133959,'Sironj',4039),(133960,'Sirpur',4012),(133961,'Sirsa',4007),(133962,'Sirsi',4026),(133963,'Sirsi',4022),(133964,'Sirsilla',4012),(133965,'Sirsa',4022),(133966,'Sirsaganj',4022),(133967,'Siruguppa',4026),(133968,'Sirumugai',4035),(133969,'Sirathu',4022),(133970,'Sirur',4008),(133971,'Sisauli',4022),(133972,'Siswa Bazar',4022),(133973,'Sitarganj',4016),(133974,'Sivaganga',4035),(133975,'Sivagiri',4035),(133976,'Sivakasi',4035),(133977,'Siwan',4037),(133978,'Siwana',4014),(133979,'Soalkuchi',4027),(133980,'Sohna',4007),(133981,'Sohagi',4039),(133982,'Sohagpur',4039),(133983,'Sojat',4014),(133984,'Sojitra',4030),(133985,'Solan',4020),(133986,'Solapur',4008),(133987,'Solim',4009),(133989,'Someshwar',4026),(133990,'Sompeta',4017),(133991,'Somvarpet',4026),(133992,'Sonbhadra',4022),(133993,'Sonegaon',4008),(133994,'Sonepur',4013),(133995,'Songadh',4030),(133996,'Sonitpur',4027),(133997,'Sonamura',4038),(133998,'Sonari',4027),(133999,'Sonipat',4007),(134000,'Sopur',4029),(134001,'Sorab',4026),(134002,'Sorada',4013),(134003,'Sorbhog',4027),(134004,'Soro',4013),(134005,'Soron',4022),(134006,'South Andaman',4023),(134007,'South Delhi',4021),(134008,'South District',4034),(134009,'South Garo Hills',4006),(134010,'South Goa',4009),(134011,'South Tripura',4038),(134012,'South West Delhi',4021),(134013,'South West Garo Hills',4006),(134014,'South West Khasi Hills',4006),(134015,'Soygaon',4008),(134016,'Soyibug',4029),(134017,'Sri Dungargarh',4014),(134018,'Sri Madhopur',4014),(134019,'Srikakulam',4017),(134020,'Srinagar',4029),(134021,'Sringeri',4026),(134022,'Srivaikuntam',4035),(134023,'Srivilliputhur',4035),(134024,'Sravana Belgola',4026),(134026,'Srimushnam',4035),(134027,'Srinagar',4016),(134029,'Srinivaspur',4026),(134030,'Sriperumbudur',4035),(134031,'Sriramnagar',4012),(134032,'Srisailain',4017),(134033,'Srivardhan',4008),(134034,'Subarnapur',4013),(134035,'Suchindram',4035),(134036,'Suket',4014),(134037,'Sultanpur Lodhi',4015),(134038,'Sultanpur',4016),(134039,'Sultanpur',4039),(134040,'Sultanpur',4022),(134041,'Sulur',4035),(134042,'Sulya',4026),(134043,'Sumbal',4029),(134044,'Sundargarh',4013),(134045,'Sundarnagar',4020),(134046,'Sunel',4014),(134047,'Suntikoppa',4026),(134048,'Sunam',4015),(134049,'Supaul',4037),(134050,'Surendranagar',4030),(134051,'Surguja',4040),(134052,'Surgana',4008),(134053,'Surianwan',4022),(134054,'Suriapet',4012),(134055,'Susner',4039),(134056,'Suar',4022),(134057,'Swamimalai',4035),(134058,'Sadri',4014),(134059,'Sadat',4022),(134060,'Sagar',4026),(134061,'Sagar',4039),(134063,'Saitlaw',4036),(134064,'Salumbar',4014),(134065,'Salur',4017),(134066,'Samalkot',4017),(134068,'Sambhar',4014),(134069,'Sanand',4030),(134070,'Sanchi',4039),(134071,'Sanchor',4014),(134072,'Sandi',4022),(134074,'Sangola',4008),(134075,'Sanwer',4039),(134076,'Saran',4037),(134077,'Sarangarh',4040),(134078,'Sarangpur',4039),(134079,'Sarubera',4025),(134080,'Sasni',4022),(134082,'Savantvadi',4008),(134083,'Savda',4008),(134084,'Sayalkudi',4035),(134085,'Sayla',4030),(134086,'Sikar',4014),(134087,'Sira',4026),(134088,'Sirkazhi',4035),(134089,'Sitamarhi',4037),(134090,'Sitamau',4039),(134091,'Sitapur',4022),(134092,'Sujangarh',4014),(134093,'Suluru',4017),(134094,'Surajgarh',4014),(134095,'Surandai',4035),(134096,'Surat',4030),(134097,'Suratgarh',4014),(134098,'Takhatgarh',4014),(134099,'Takhatpur',4040),(134100,'Talegaon Dabhade',4008),(134101,'Taleigao',4009),(134102,'Talen',4039),(134103,'Taliparamba',4028),(134104,'Taloda',4008),(134105,'Talwandi Bhai',4015),(134106,'Talwara',4015),(134107,'Talaja',4030),(134108,'Tambaram',4035),(134109,'Tamenglong',4010),(134110,'Tanakpur',4016),(134111,'Tanjore',4035),(134112,'Tankara',4030),(134113,'Tanuku',4017),(134114,'Tapi',4030),(134115,'Tarabha',4013),(134116,'Tarikere',4026),(134118,'Tarn Taran Sahib',4015),(134119,'Tarana',4039),(134120,'Tawang',4024),(134121,'Teghra',4037),(134122,'Tehri',4016),(134123,'Tehri-Garhwal',4016),(134124,'Tekanpur',4039),(134125,'Tekkalakote',4026),(134126,'Tekkali',4017),(134127,'Tekari',4037),(134128,'Telhara',4008),(134129,'Thalassery',4028),(134130,'Tendukheda',4039),(134132,'Teonthar',4039),(134133,'Terdal',4026),(134134,'Tezpur',4027),(134135,'Tezu',4024),(134136,'Thakurdwara',4022),(134137,'Thandla',4039),(134138,'Thane',4008),(134139,'Thang',4029),(134140,'Thanjavur',4035),(134141,'Thanna Mandi',4029),(134142,'Thanniyam',4028),(134143,'Tharangambadi',4035),(134144,'Tharad',4030),(134145,'The Dangs',4030),(134146,'Theni',4035),(134147,'Thenkasi',4035),(134148,'Thenzawl',4036),(134149,'Theog',4020),(134150,'Thirukattupalli',4035),(134151,'Thiruthani',4035),(134152,'Thiruvaiyaru',4035),(134153,'Thiruvallur',4035),(134154,'Thiruvananthapuram',4028),(134155,'Thiruvarur',4035),(134156,'Thiruvidaimaruthur',4035),(134158,'Thoothukudi',4035),(134159,'Thoubal',4010),(134161,'Thrissur',4028),(134163,'Thakurganj',4037),(134164,'Than',4030),(134165,'Thana Bhawan',4022),(134167,'Thanesar',4007),(134168,'Thasra',4030),(134169,'Tijara',4014),(134170,'Tikaitnagar',4022),(134171,'Tilhar',4022),(134172,'Tindivanam',4035),(134173,'Tindwari',4022),(134174,'Tinnanur',4035),(134175,'Tinsukia',4027),(134176,'Tiptur',4026),(134177,'Tirodi',4039),(134178,'Tiruchchendur',4035),(134179,'Tiruchengode',4035),(134180,'Tiruchirappalli',4035),(134181,'Tirukkoyilur',4035),(134182,'Tirumakudal Narsipur',4026),(134183,'Tirumala',4017),(134184,'Tirumullaivasal',4035),(134185,'Tirunelveli',4035),(134186,'Tirunelveli Kattabo',4035),(134187,'Tirupati',4017),(134188,'Tirupparangunram',4035),(134189,'Tiruppur',4035),(134190,'Tiruppuvanam',4035),(134191,'Tiruppalaikudi',4035),(134192,'Tirur',4028),(134193,'Tiruttangal',4035),(134194,'Tiruvalla',4028),(134196,'Tiruvannamalai',4035),(134198,'Tiruvottiyur',4035),(134199,'Tirap',4024),(134200,'Tisaiyanvilai',4035),(134201,'Titlagarh',4013),(134202,'Titron',4022),(134203,'Titabar',4027),(134204,'Todabhim',4014),(134205,'Todaraisingh',4014),(134206,'Tohana',4007),(134207,'Tondi',4035),(134208,'Tonk',4014),(134209,'Topchanchi',4025),(134210,'Tori-Fatehpur',4022),(134211,'Tosham',4007),(134212,'Trimbak',4008),(134213,'Tral',4029),(134214,'Tsrar Sharif',4029),(134215,'Tuensang',4018),(134216,'Tuensang District',4018),(134217,'Tuljapur',4008),(134218,'Tulsipur',4022),(134219,'Tumakuru',4026),(134221,'Tumsar',4008),(134222,'Tuni',4017),(134223,'Tura',4006),(134224,'Turaiyur',4035),(134225,'Turuvekere',4026),(134226,'Tadepalle',4017),(134227,'Tadepallegudem',4017),(134228,'Tadpatri',4017),(134229,'Tajpur',4022),(134230,'Tal',4039),(134231,'Talbahat',4022),(134232,'Talcher',4013),(134233,'Talgram',4022),(134234,'Talikota',4026),(134235,'Tanda',4022),(134237,'Tandur',4012),(134238,'Taoru',4007),(134239,'Taramangalam',4035),(134240,'Taranagar',4014),(134241,'Tarapur',4008),(134242,'Tasgaon',4008),(134243,'Tattayyangarpettai',4035),(134244,'Tikamgarh',4039),(134245,'Tikri',4022),(134246,'Tira Sujanpur',4020),(134247,'Tirthahalli',4026),(134248,'Tundla',4022),(134249,'Udaipur',4038),(134250,'Udaipur',4014),(134251,'Udaipura',4039),(134252,'Udalguri',4027),(134253,'Udangudi',4035),(134254,'Udayagiri',4013),(134255,'Udgir',4008),(134256,'Udham Singh Nagar',4016),(134257,'Udhampur',4029),(134258,'Udpura',4014),(134259,'Udumalaippettai',4035),(134260,'Udupi',4026),(134261,'Ugu',4022),(134262,'Ujhani',4022),(134263,'Ujjain',4039),(134264,'Ukhrul',4010),(134265,'Uklana',4007),(134266,'Ukwa',4039),(134267,'Ulhasnagar',4008),(134268,'Ullal',4026),(134269,'Umarga',4008),(134270,'Umaria',4039),(134272,'Umarkhed',4008),(134273,'Umarkot',4040),(134274,'Umred',4008),(134275,'Umreth',4030),(134276,'Umri',4039),(134277,'Umrala',4030),(134278,'Un',4030),(134279,'Una',4020),(134280,'Una',4030),(134281,'Unakoti',4038),(134282,'Unhel',4039),(134283,'Uniara',4014),(134284,'Unjha',4030),(134285,'Unnao',4022),(134286,'Upleta',4030),(134287,'Uppal Kalan',4012),(134288,'Upper Siang',4024),(134289,'Upper Subansiri',4024),(134290,'Uppiliyapuram',4035),(134291,'Uran',4008),(134292,'Uravakonda',4017),(134293,'Uri',4029),(134294,'Usehat',4022),(134295,'Usilampatti',4035),(134296,'Utraula',4022),(134297,'Utran',4030),(134298,'Uttamapalaiyam',4035),(134299,'Uttar Bastar Kanker',4040),(134300,'Uttar Kannada',4026),(134301,'Uttarkashi',4016),(134302,'Uttiramerur',4035),(134303,'V.S.K.Valasai (Dindigul-Dist.)',4035),(134304,'Vadakku Valliyur',4035),(134305,'Vadakku Viravanallur',4035),(134306,'Vadamadurai',4035),(134307,'Vadigenhalli',4026),(134308,'Vadlapudi',4017),(134309,'Vadnagar',4030),(134310,'Vadodara',4030),(134311,'Vagator',4009),(134312,'Vaijapur',4008),(134313,'Vaikam',4028),(134314,'Vaishali',4037),(134316,'Valangaiman',4035),(134317,'Valavanur',4035),(134318,'Vallabh Vidyanagar',4030),(134319,'Vallam',4035),(134320,'Valparai',4035),(134321,'Valpoy',4009),(134322,'Valsad',4030),(134323,'Vandalur',4035),(134324,'Vandavasi',4035),(134325,'Vaniyambadi',4035),(134326,'Vapi',4030),(134327,'Varanasi',4022),(134328,'Varangaon',4008),(134329,'Varca',4009),(134330,'Varkala',4028),(134331,'Vartej',4030),(134332,'Vasa',4030),(134333,'Vasco da Gama',4009),(134334,'Vasind',4008),(134335,'Vattalkundu',4035),(134336,'Vayalar',4028),(134337,'Vedaraniyam',4035),(134338,'Vedasandur',4035),(134339,'Vejalpur',4030),(134340,'Velankanni',4035),(134341,'Vellore',4035),(134342,'Vellanur',4035),(134343,'Velur',4035),(134344,'Vemalwada',4012),(134345,'Vengavasal',4035),(134346,'Vengurla',4008),(134347,'Venkatagiri',4017),(134348,'Vepagunta',4017),(134349,'Veraval',4030),(134350,'Vetapalem',4017),(134351,'Vettaikkaranpudur',4035),(134352,'Vettavalam',4035),(134353,'Vettur',4028),(134354,'Vidisha',4039),(134355,'Vijayapuri',4035),(134356,'Vijayawada',4017),(134357,'Vijapur',4030),(134358,'Vikravandi',4035),(134359,'Vikarabad',4012),(134360,'Vikasnagar',4016),(134361,'Vilattikulam',4035),(134362,'Villupuram',4035),(134364,'Vinukonda',4017),(134365,'Virpur',4030),(134366,'Virudhunagar',4035),(134368,'Virar',4008),(134369,'Visakhapatnam',4017),(134371,'Visnagar',4030),(134372,'Vite',4008),(134373,'Vizianagaram',4017),(134374,'Vizianagaram District',4017),(134375,'Vriddhachalam',4035),(134376,'Vrindavan',4022),(134377,'Vuyyuru',4017),(134378,'Vyara',4030),(134379,'Vada',4008),(134380,'Vadippatti',4035),(134381,'Vaghodia',4030),(134384,'Vasudevanallur',4035),(134385,'Viraganur',4035),(134386,'Virarajendrapet',4026),(134387,'Visavadar',4030),(134388,'Wadgaon',4008),(134389,'Waghai',4030),(134390,'Wai',4008),(134391,'Walajapet',4035),(134392,'Wallajahbad',4035),(134393,'Wani',4008),(134394,'Wanparti',4012),(134395,'Warangal',4012),(134396,'Wardha',4008),(134397,'Warora',4008),(134398,'Warud',4008),(134399,'Washim',4008),(134400,'Wayanad',4028),(134401,'Wazirganj',4022),(134402,'Wellington',4035),(134403,'Wer',4014),(134404,'West Delhi',4021),(134405,'West District',4034),(134406,'West Garo Hills',4006),(134407,'West Godavari',4017),(134408,'West Jaintia Hills',4006),(134409,'West Kameng',4024),(134410,'West Khasi Hills',4006),(134411,'West Siang',4024),(134412,'West Tripura',4038),(134413,'Wokha',4018),(134414,'Wadi',4026),(134416,'Wankaner',4030),(134417,'Waris Aliganj',4037),(134418,'Waraseoni',4039),(134420,'Yadgir',4026),(134422,'Yamunanagar',4007),(134424,'Yanam',4017),(134425,'Yanam',4011),(134426,'Yanamalakuduru',4017),(134427,'Yavatmal',4008),(134429,'Yelahanka',4026),(134430,'Yelandur',4026),(134431,'Yelbarga',4026),(134432,'Yellandu',4012),(134433,'Yellapur',4026),(134434,'Yeola',4008),(134435,'Yol',4020),(134437,'Yarada',4017),(134438,'Yaval',4008),(134439,'Zafarabad',4022),(134440,'Zahirabad',4012),(134441,'Zaidpur',4022),(134442,'Zamania',4022),(134443,'Zira',4015),(134444,'Ziro',4024),(134445,'Zunheboto',4018),(134446,'patamda',4025),(134447,'pedda nakkalapalem',4017),(134448,'vadlamuru',4017),(134449,'Abu',4014),(134450,'Abu Road',4014),(134451,'Adilabad',4012),(134452,'Adoni',4017),(134454,'Alampur',4012),(134455,'Alangudi',4035),(134456,'Alangulam',4035),(134457,'Alappakkam',4035),(134458,'Ambasa',4038),(134459,'Amli',4033),(134460,'Andippatti',4035),(134461,'Arangaon',4008),(134462,'Aron',4039),(134463,'Arvi',4008),(134464,'Asandh',4007),(134465,'Asika',4013),(134466,'Asind',4014),(134467,'Athagarh',4013),(134468,'Attayyampatti',4035),(134469,'Avadi',4035),(134471,'Un',4022),(134472,'Uttukkuli',4035),(141852,'Ahmedpur',4853),(141853,'Aistala',4853),(141854,'Aknapur',4853),(141855,'Alipurduar',4853),(141857,'Amta',4853),(141858,'Amtala',4853),(141859,'Andal',4853),(141860,'Arambagh community development block',4853),(141861,'Asansol',4853),(141862,'Ashoknagar Kalyangarh',4853),(141863,'Badkulla',4853),(141864,'Baduria',4853),(141865,'Bagdogra',4853),(141866,'Bagnan',4853),(141867,'Bagula',4853),(141868,'Bahula',4853),(141869,'Baidyabati',4853),(141870,'Bakreswar',4853),(141871,'Balarampur',4853),(141872,'Bally',4853),(141873,'Balurghat',4853),(141874,'Bamangola community development block',4853),(141875,'Baneswar',4853),(141876,'Bangaon',4853),(141877,'Bankra',4853),(141878,'Bankura',4853),(141879,'Bansberia',4853),(141880,'Bansihari community development block',4853),(141881,'Barabazar',4853),(141882,'Baranagar',4853),(141883,'Barasat',4853),(141884,'Bardhaman',4853),(141885,'Barjora',4853),(141886,'Barrackpore',4853),(141887,'Baruipur',4853),(141888,'Basanti',4853),(141889,'Basirhat',4853),(141890,'Begampur',4853),(141891,'Belda',4853),(141892,'Beldanga',4853),(141893,'Beliatore',4853),(141894,'Berhampore',4853),(141895,'Bhadreswar',4853),(141896,'Bhandardaha',4853),(141897,'Bhatpara',4853),(141898,'Birbhum district',4853),(141899,'Birpara',4853),(141900,'Bishnupur',4853),(141901,'Bolpur',4853),(141902,'Budge Budge',4853),(141903,'Bali Chak',4853),(141904,'Bawali',4853),(141905,'Canning',4853),(141906,'Chakapara',4853),(141907,'Chakdaha',4853),(141908,'Champadanga',4853),(141909,'Champdani',4853),(141910,'Chandannagar',4853),(141911,'Chandrakona',4853),(141912,'Chittaranjan',4853),(141913,'Churulia',4853),(141914,'Champahati',4853),(141915,'Contai',4853),(141916,'Cooch Behar',4853),(141917,'Cossimbazar',4853),(141918,'Dakshin Dinajpur district',4853),(141919,'Dalkola',4853),(141920,'Dam Dam',4853),(141921,'Darjeeling',4853),(141922,'Daulatpur',4853),(141923,'Debagram',4853),(141924,'Debipur',4853),(141925,'Dhaniakhali community development block',4853),(141926,'Dhulagari',4853),(141927,'Dhulian',4853),(141928,'Dhupguri',4853),(141929,'Diamond Harbour',4853),(141930,'Digha',4853),(141931,'Dinhata',4853),(141932,'Domjur',4853),(141933,'Dubrajpur',4853),(141934,'Durgapur',4853),(141935,'Egra',4853),(141936,'Falakata',4853),(141937,'Farakka',4853),(141938,'Fort Gloster',4853),(141939,'Gaighata community development block',4853),(141940,'Gairkata',4853),(141941,'Gangadharpur',4853),(141942,'Gangarampur',4853),(141943,'Garui',4853),(141944,'Garulia',4853),(141945,'Ghatal',4853),(141946,'Giria',4853),(141947,'Gobardanga',4853),(141948,'Gobindapur',4853),(141949,'Gopinathpur',4853),(141950,'Gopalpur',4853),(141951,'Gorubathan',4853),(141952,'Gosaba',4853),(141953,'Gosanimari',4853),(141954,'Gurdaha',4853),(141955,'Guskhara',4853),(141956,'Habra',4853),(141957,'Haldia',4853),(141958,'Haldibari',4853),(141959,'Halisahar',4853),(141960,'Harindanga',4853),(141961,'Haringhata',4853),(141962,'Haripur',4853),(141963,'Hasimara',4853),(141964,'Hindusthan Cables Town',4853),(141965,'Hooghly district',4853),(141966,'Howrah',4853),(141967,'Ichapur',4853),(141968,'Indpur community development block',4853),(141969,'Ingraj Bazar',4853),(141970,'Islampur',4853),(141971,'Jafarpur',4853),(141972,'Jaigaon',4853),(141973,'Jalpaiguri',4853),(141974,'Jamuria',4853),(141975,'Jangipur',4853),(141976,'Jaynagar Majilpur',4853),(141977,'Jejur',4853),(141978,'Jhalida',4853),(141979,'Jhargram',4853),(141980,'Jhilimili',4853),(141981,'Kakdwip',4853),(141982,'Kalaikunda',4853),(141983,'Kaliaganj',4853),(141984,'Kalimpong',4853),(141985,'Kalna',4853),(141986,'Kalyani',4853),(141987,'Kamarhati',4853),(141988,'Kamarpukur',4853),(141989,'Kanchrapara',4853),(141990,'Kandi',4853),(141991,'Karimpur',4853),(141992,'Katwa',4853),(141993,'Kenda',4853),(141994,'Keshabpur',4853),(141995,'Kharagpur',4853),(141996,'Kharar',4853),(141997,'Kharba',4853),(141998,'Khardaha',4853),(141999,'Khatra',4853),(142000,'Kirnahar',4853),(142001,'Kolkata',4853),(142002,'Konnagar',4853),(142003,'Krishnanagar',4853),(142004,'Krishnapur',4853),(142005,'Kshirpai',4853),(142006,'Kulpi',4853),(142007,'Kultali',4853),(142008,'Kulti',4853),(142009,'Kurseong',4853),(142010,'Lalgarh',4853),(142011,'Lalgola',4853),(142012,'Loyabad',4853),(142013,'Madanpur',4853),(142014,'Madhyamgram',4853),(142015,'Mahiari',4853),(142016,'Mahishadal community development block',4853),(142017,'Mainaguri',4853),(142018,'Manikpara',4853),(142019,'Masila',4853),(142020,'Mathabhanga',4853),(142021,'Matiali community development block',4853),(142022,'Matigara community development block',4853),(142023,'Medinipur',4853),(142024,'Mejia community development block',4853),(142025,'Memari',4853),(142026,'Mirik',4853),(142028,'Monoharpur',4853),(142029,'Muragacha',4853),(142030,'Muri',4853),(142031,'Murshidabad',4853),(142032,'Nabadwip',4853),(142033,'Nabagram',4853),(142034,'Nadia district',4853),(142035,'Nagarukhra',4853),(142036,'Nagrakata',4853),(142037,'Naihati',4853),(142038,'Naksalbari',4853),(142039,'Nalhati',4853),(142040,'Nalpur',4853),(142041,'Namkhana community development block',4853),(142042,'Nandigram',4853),(142043,'Nangi',4853),(142044,'Nayagram community development block',4853),(142045,'North 24 Parganas district',4853),(142046,'Odlabari',4853),(142047,'Paikpara',4853),(142048,'Panagarh',4853),(142049,'Panchla',4853),(142050,'Panchmura',4853),(142051,'Pandua',4853),(142052,'Panihati',4853),(142053,'Panskura',4853),(142054,'Parbatipur',4853),(142055,'Paschim Medinipur district',4853),(142056,'Patiram',4853),(142057,'Patuli',4853),(142058,'Pujali',4853),(142059,'Puncha community development block',4853),(142060,'Purba Medinipur district',4853),(142061,'Purulia',4853),(142062,'Patrasaer',4853),(142063,'Raghudebbati',4853),(142064,'Raghunathpur',4853),(142065,'Raiganj',4853),(142066,'Rajmahal',4853),(142067,'Rajnagar community development block',4853),(142068,'Ramchandrapur',4853),(142069,'Ramjibanpur',4853),(142070,'Rampur Hat',4853),(142071,'Ranaghat',4853),(142072,'Raniganj',4853),(142073,'Raypur',4853),(142074,'Rishra',4853),(142075,'Ramnagar',4853),(142076,'Sahapur',4853),(142077,'Sainthia',4853),(142078,'Salanpur community development block',4853),(142079,'Sankarpur',4853),(142080,'Sankrail',4853),(142081,'Santipur',4853),(142082,'Santoshpur',4853),(142083,'Santuri community development block',4853),(142084,'Sarenga',4853),(142085,'Serampore',4853),(142086,'Serpur',4853),(142087,'Shyamnagar West Bengal',4853),(142088,'Siliguri',4853),(142089,'Singur',4853),(142090,'Sodpur',4853),(142091,'Solap',4853),(142092,'Sonada',4853),(142093,'Sonamukhi',4853),(142094,'Sonarpur community development block',4853),(142095,'South 24 Parganas district',4853),(142096,'Srikhanda',4853),(142097,'Srirampur',4853),(142098,'Suri',4853),(142099,'Swarupnagar community development block',4853),(142100,'Takdah',4853),(142101,'Taki',4853),(142102,'Tamluk',4853),(142103,'Tarakeswar',4853),(142104,'Titagarh',4853),(142105,'Tufanganj',4853),(142106,'Tulin',4853),(142107,'Uchalan',4853),(142108,'Ula',4853),(142109,'Uluberia',4853),(142110,'Uttar Dinajpur district',4853),(142111,'Uttarpara Kotrung',4853),(142112,'Amlagora',4853),(142125,'Bagasara',4030),(142126,'Dahod',4030),(142127,'Dangs (India)',4030),(142128,'Delwada',4030),(142129,'Jalalpore',4030),(142130,'Jodia',4030),(142132,'Khambhalia',4030),(142133,'Kutch district',4030),(142134,'Mandvi (Surat)',4030),(142135,'Mehsana',4030),(142136,'Morva (Hadaf)',4030),(142137,'Panchmahal district',4030),(142138,'Pavi Jetpur',4030),(142139,'Siddhpur',4030),(142140,'Thangadh',4030),(142141,'Vallabhipur',4030),(142142,'Vansda',4030),(142143,'Vaso',4030),(142144,'Vinchhiya',4030),(142145,'Wadhai',4030),(142146,'Wadhwan',4030),(143761,'Bholath',4015),(143762,'Dhudi',4015),(143763,'Dera Bassi',4015),(143764,'Ishanpur',4015),(147426,'Aidalpur',4022),(147427,'Airwa',4022),(147428,'Akola',4022),(147429,'Allahabad',4022),(147430,'Amauli',4022),(147431,'Araul',4022),(147432,'Asalatganj',4022),(147433,'Azizpur',4022),(147434,'Baghra',4022),(147435,'Baksar',4022),(147436,'Balamau',4022),(147437,'Baldeo',4022),(147438,'Banthra',4022),(147439,'Barhalganj',4022),(147440,'Barkhera',4022),(147441,'Barokhar',4022),(147442,'Barwar (Lakhimpur Kheri)',4022),(147443,'Belthara',4022),(147444,'Bhadarsa',4022),(147445,'Bharatpura',4022),(147446,'Bhargain',4022),(147447,'Bhaupur',4022),(147448,'Bhimtal',4022),(147449,'Bhognipur',4022),(147450,'Bidhnu',4022),(147451,'Bighapur',4022),(147452,'Binauli',4022),(147453,'Binaur',4022),(147454,'Birdpur',4022),(147455,'Birpur',4022),(147456,'Bisanda Buzurg',4022),(147457,'Chandausi',4022),(147458,'Chhitauni',4022),(147459,'Chitrakoot Dham',4022),(147460,'Churk',4022),(147461,'Daraganj',4022),(147462,'Daranagar',4022),(147463,'Deogarh',4022),(147464,'Derapur',4022),(147465,'Dhanghata',4022),(147466,'Dharau',4022),(147467,'Divrasai',4022),(147468,'Domariaganj',4022),(147469,'Etmadpur',4022),(147470,'Fatehpur (Barabanki)',4022),(147471,'Gahlon',4022),(147472,'Gahmar',4022),(147473,'Gaini',4022),(147474,'Ganj Dundawara',4022),(147475,'Garhwa',4022),(147476,'Gauriganj',4022),(147478,'Gosainganj',4022),(147479,'Haraipur',4022),(147480,'Harchandpur',4022),(147481,'Hata (India)',4022),(147482,'Hulas',4022),(147483,'Ibrahimpur',4022),(147484,'Indragarh',4022),(147485,'Islamnagar (Badaun)',4022),(147486,'Jahanabad (Pilibhit)',4022),(147487,'Janghai',4022),(147488,'Jarwa',4022),(147489,'Jhajhar',4022),(147490,'Jiyanpur',4022),(147491,'Kagarol',4022),(147492,'Kalyanpur',4022),(147493,'Kaptanganj',4022),(147494,'Kara',4022),(147495,'Karbigwan',4022),(147496,'Karchana',4022),(147497,'Kausani',4022),(147498,'Khailar',4022),(147499,'Kishanpur baral',4022),(147500,'Kuchesar',4022),(147501,'Kudarkot',4022),(147502,'Kundarki',4022),(147503,'Kurebharsaidkhanpur',4022),(147504,'Kusmara',4022),(147505,'Kuthaund',4022),(147506,'Lambhua',4022),(147507,'Lawar',4022),(147508,'Machhali Shahar',4022),(147509,'Mahrajganj',4022),(147510,'Mahrajganj (Raebareli)',4022),(147511,'Mahul',4022),(147512,'Majhupur',4022),(147513,'Makanpur',4022),(147514,'Malasa',4022),(147515,'Mau Aima',4022),(147516,'Maurawan',4022),(147517,'Mawar',4022),(147518,'Mehdawal',4022),(147519,'Milkipur',4022),(147520,'Mukteshwar',4022),(147521,'Mungra Badshahpur',4022),(147522,'Munsyari',4022),(147523,'Muradabad',4022),(147524,'Musafirkhana',4022),(147525,'Nagla',4022),(147526,'Narora',4022),(147527,'Naugama',4022),(147528,'Naurangpur',4022),(147529,'Nawabganj (Barabanki)',4022),(147530,'Nawabganj (Bareilly)',4022),(147531,'Newara',4022),(147532,'Nigoh',4022),(147533,'Paigaon',4022),(147534,'Paras Rampur',4022),(147535,'Pathakpura',4022),(147536,'Payagpur',4022),(147537,'Phaphamau',4022),(147538,'Pheona',4022),(147539,'Pichhaura',4022),(147540,'Pilkhuwa',4022),(147541,'Pipri',4022),(147542,'Purmafi',4022),(147543,'Qadirganj',4022),(147544,'Radha Kund',4022),(147545,'Ranipur Barsi',4022),(147546,'Rehar',4022),(147547,'Renukoot',4022),(147548,'Reotipur',4022),(147549,'Rudauli',4022),(147550,'Sabalpur',4022),(147551,'Sachendi',4022),(147552,'Sahibabad',4022),(147553,'Sahpau',4022),(147554,'Sakhanu',4022),(147555,'Salempur',4022),(147556,'Sarurpur',4022),(147557,'Shibnagar',4022),(147558,'Shikarpur (Bulandshahr)',4022),(147559,'Shivrajpur',4022),(147560,'Siddhaur',4022),(147561,'Sikandrabad',4022),(147562,'Terha',4022),(147563,'Tigri',4022),(147564,'Tilsahri',4022),(147565,'Tori Fatehpur',4022),(147566,'Umri',4022),(147567,'Usawan',4022),(147568,'Uska',4022),(147569,'Vindhyachal',4022),(147570,'Walterganj',4022),(147571,'Yusufpur',4022),(147572,'Agol',4030),(147573,'Akrund',4030),(147575,'Bakharla',4030),(147576,'Balagam',4030),(147577,'Balasinor',4030),(147578,'Balisana',4030),(147579,'Bamanbore',4030),(147580,'Bandia',4030),(147581,'Bhadran',4030),(147582,'Bhandu',4030),(147583,'Bhatha',4030),(147584,'Bhildi',4030),(147585,'Bhojpur Dharampur',4030),(147586,'Chaloda',4030),(147587,'Champaner',4030),(147588,'Chuda',4030),(147589,'Dabhoda',4030),(147590,'Dandi',4030),(147591,'Danta',4030),(147592,'Detroj',4030),(147593,'Dhansura',4030),(147594,'Dharasana',4030),(147595,'Dhasa',4030),(147596,'Dholera',4030),(147597,'Dumkhal',4030),(147598,'Ghodasar',4030),(147599,'Gorwa',4030),(147600,'Halenda',4030),(147601,'Harsol',4030),(147602,'Hathuran',4030),(147603,'Idar',4030),(147604,'Jakhau',4030),(147605,'Jalia',4030),(147606,'Jambuda',4030),(147607,'Jarod',4030),(147608,'Jetalpur',4030),(147609,'Jetpur (Navagadh)',4030),(147610,'Jhalod',4030),(147611,'Jodhpur (Ahmedabad)',4030),(147612,'Kachholi',4030),(147613,'Kandla port',4030),(147614,'Kariana',4030),(147615,'Karjan',4030),(147616,'Kayavarohan',4030),(147617,'Kerwada',4030),(147618,'Khavda',4030),(147619,'Khedoi',4030),(147620,'Kherali',4030),(147621,'Kothara',4030),(147622,'Kotharia',4030),(147623,'Kukarmunda',4030),(147624,'Kukma',4030),(147625,'Lakhpat',4030),(147626,'Langhnaj',4030),(147627,'Limkheda',4030),(147628,'Ladol',4030),(147629,'Madhavpur Ghed',4030),(147630,'Madhi',4030),(147631,'Mahisa',4030),(147632,'Mahuva',4030),(147633,'Mahuva (Surat)',4030),(147634,'Mangrol (Junagadh)',4030),(147635,'Mithapur',4030),(147637,'Nagwa',4030),(147638,'Naldhara',4030),(147639,'Nargol',4030),(147640,'Nikora',4030),(147641,'Nizar',4030),(147642,'Odadar',4030),(147643,'Palanswa',4030),(147645,'Palsana',4030),(147646,'Pipavav',4030),(147647,'Piplod',4030),(147648,'Prabhas Patan',4030),(147649,'Prantij',4030),(147650,'Ranpur',4030),(147651,'Reha',4030),(147652,'Samakhiali',4030),(147653,'Sarbhon',4030),(147654,'Sardoi',4030),(147655,'Sathamba',4030),(147656,'Savli',4030),(147657,'Supedi',4030),(147658,'Sutrapada',4030),(147659,'Umarpada',4030),(147660,'Vadgam',4030),(147661,'Vaghodia INA',4030),(147662,'Vanala',4030),(147663,'Vanthli',4030),(147664,'Vasavad',4030),(147665,'Vataman',4030),(147666,'Viramgam',4030),(147667,'Adawad',4008),(147668,'Agar Panchaitan',4008),(147669,'Aheri',4008),(147670,'Ahmednagar',4008),(147672,'Akluj',4008),(147673,'Akolner',4008),(147674,'Akrani',4008),(147675,'Ale',4008),(147676,'Alkuti',4008),(147677,'Ambernath',4008),(147678,'Ambegaon',4008),(147679,'Amgaon',4008),(147680,'Andheri',4008),(147681,'Andura',4008),(147682,'Anjarle',4008),(147683,'Arag',4008),(147684,'Ardhapur',4008),(147685,'Argaon',4008),(147686,'Asoda',4008),(147687,'Assaye',4008),(147688,'Astagaon',4008),(147689,'Aundh Satara',4008),(147690,'Badnapur',4008),(147691,'Badnera',4008),(147692,'Bagewadi',4008),(147693,'Balapur Akola district',4008),(147694,'Ballard Estate',4008),(147695,'Ballarpur',4008),(147696,'Banda Maharashtra',4008),(147697,'Bandra',4008),(147698,'Baner',4008),(147699,'Bankot',4008),(147701,'Bavdhan',4008),(147702,'Bawanbir',4008),(147703,'Bhadgaon Maharashtra',4008),(147704,'Bhandardara',4008),(147705,'Bhandup',4008),(147706,'Bhiwapur',4008),(147707,'Bhokar',4008),(147708,'Bhokardan',4008),(147710,'Bhugaon',4008),(147712,'Bijur',4008),(147713,'Bilashi',4008),(147714,'Borgaon Manju',4008),(147715,'Borivali',4008),(147716,'Brahmapuri',4008),(147717,'Breach Candy',4008),(147719,'Byculla',4008),(147720,'Chakur',4008),(147721,'Chandgad',4008),(147722,'Chausala',4008),(147723,'Chembur',4008),(147724,'Chichondi Patil',4008),(147725,'Chikhli (Jalna)',4008),(147726,'Chimur',4008),(147727,'Chinchpokli',4008),(147728,'Colaba',4008),(147729,'Daddi',4008),(147730,'Dahivel',4008),(147731,'Dapoli',4008),(147732,'Deccan Gymkhana',4008),(147733,'Deglur',4008),(147734,'Deolapar',4008),(147735,'Deoni',4008),(147736,'Devrukh',4008),(147737,'Dharavi',4008),(147738,'Dhawalpuri',4008),(147739,'Dighori',4008),(147740,'Dindori Maharashtra',4008),(147741,'Diveagar',4008),(147742,'Dongri',4008),(147743,'Durgapur Chandrapur',4008),(147744,'Fort',4008),(147745,'Ganpatipule',4008),(147746,'Ghargaon',4008),(147747,'Ghatkopar',4008),(147748,'Girgaon',4008),(147749,'Gondia',4008),(147750,'Gorai',4008),(147751,'Hadapsar Pune',4008),(147752,'Halkarni',4008),(147753,'Harangul',4008),(147754,'Helwak',4008),(147755,'Hirapur',4008),(147756,'Hotgi',4008),(147757,'Jaitapur',4008),(147758,'Jakhangaon',4008),(147759,'Jalkot',4008),(147760,'Jamkhed',4008),(147761,'Jamod',4008),(147762,'Janephal',4008),(147763,'Jaoli',4008),(147764,'Jat Sangli',4008),(147765,'Jategaon',4008),(147766,'Jaysingpur',4008),(147767,'Jogeshwari',4008),(147768,'Juhu',4008),(147769,'Kachurwahi',4008),(147770,'Kadegaon',4008),(147771,'Kadus',4008),(147772,'Kaij',4008),(147773,'Kalamb Osmanabad',4008),(147774,'Kalamboli',4008),(147775,'Kali(DK)',4008),(147776,'Kalyani Nagar',4008),(147777,'Kamargaon',4008),(147778,'Kamatgi',4008),(147779,'Kamptee',4008),(147780,'Kankavli',4008),(147781,'Karajagi',4008),(147782,'Karanja Lad',4008),(147783,'Karkamb',4008),(147784,'Kasara',4008),(147785,'Kasoda',4008),(147786,'Katral',4008),(147787,'Khalapur',4008),(147788,'Khallar',4008),(147789,'Khanapur',4008),(147790,'Khandala',4008),(147791,'Khangaon',4008),(147792,'Kharda',4008),(147793,'Kharghar',4008),(147794,'Kharsundi',4008),(147796,'Khoni',4008),(147797,'Kondhali',4008),(147798,'Kopar Khairane',4008),(147799,'Kopela',4008),(147800,'Kuhi',4008),(147801,'Kurankhed',4008),(147802,'Kusumba',4008),(147803,'Lakhandur',4008),(147804,'Lavasa',4008),(147805,'Mahape',4008),(147806,'Mahim',4008),(147807,'Malabar Hill',4008),(147808,'Malad',4008),(147809,'Mandangad',4008),(147810,'Mandhal',4008),(147811,'Mandwa',4008),(147812,'Mangaon',4008),(147813,'Manjlegaon',4008),(147814,'Mankeshwar',4008),(147815,'Mankhurd',4008),(147817,'Maregaon',4008),(147818,'Mastiholi',4008),(147819,'Masur India',4008),(147820,'Matunga',4008),(147821,'Mazagaon',4008),(147822,'Mehergaon',4008),(147823,'Mehkar',4008),(147824,'Miraj',4008),(147825,'Mohadi',4008),(147826,'Mohol',4008),(147827,'Mokhada taluka',4008),(147828,'Mora Maharashtra',4008),(147829,'Mulher',4008),(147830,'Mulund',4008),(147831,'Murud (Ratnagiri)',4008),(147832,'Murum',4008),(147833,'Nadgaon',4008),(147834,'Nagapur',4008),(147835,'Nala Sopara',4008),(147836,'Nalegaon',4008),(147837,'Nampur',4008),(147838,'Nandnee',4008),(147839,'Nandura',4008),(147840,'Narayangaon',4008),(147841,'Nardana',4008),(147842,'Nariman Point',4008),(147843,'Narkhed',4008),(147844,'Navapur',4008),(147845,'Nerur',4008),(147846,'Nevasa',4008),(147847,'Nighoj',4008),(147848,'Niphad',4008),(147849,'Nira Narsingpur',4008),(147850,'Pabal',4008),(147851,'Pahur Maharashtra',4008),(147852,'Pali Raigad',4008),(147853,'Palso',4008),(147854,'Pandhurli',4008),(147855,'Parel',4008),(147856,'Parner',4008),(147857,'Parseoni',4008),(147858,'Paturda',4008),(147859,'Paud',4008),(147860,'Pauni',4008),(147861,'Pedgaon',4008),(147862,'Peint',4008),(147863,'Phulambri',4008),(147864,'Piliv',4008),(147865,'Pimpalgaon Baswant',4008),(147866,'Pimpalgaon Raja',4008),(147867,'Pimpri-Chinchwad',4008),(147868,'Prabhadevi',4008),(147869,'Prakasha',4008),(147870,'Puntamba',4008),(147871,'Pural',4008),(147872,'Radhanagari',4008),(147873,'Rahata',4008),(147874,'Raireshwar',4008),(147875,'Ralegaon',4008),(147876,'Ramewadi',4008),(147877,'Renapur',4008),(147878,'Renavi',4008),(147879,'Revdanda',4008),(147880,'Sailu',4008),(147881,'Sakol',4008),(147882,'Sakoli',4008),(147883,'Sakri',4008),(147884,'Samudrapur',4008),(147885,'Sangameshwar',4008),(147887,'Sangrampur Maharashtra',4008),(147888,'Saoli',4008),(147889,'Sarangkheda',4008),(147890,'Saswad',4008),(147891,'Satpati',4008),(147892,'Savlaj',4008),(147893,'Sawantvadi',4008),(147894,'Sevagram',4008),(147895,'Sewri',4008),(147896,'Shedbal',4008),(147897,'Shevgaon',4008),(147898,'Shikrapur',4008),(147899,'Shirala',4008),(147900,'Shirol',4008),(147901,'Shirud',4008),(147902,'Sindewahi',4008),(147903,'Sindkheda',4008),(147904,'Sion Mumbai',4008),(147905,'Sironcha',4008),(147906,'Sivala East Godavari district',4008),(147907,'Sonala',4008),(147908,'Songir',4008),(147909,'Sonvad',4008),(147910,'Taklibhan',4008),(147911,'Talbid',4008),(147912,'Talegaon Dhamdhere',4008),(147913,'Talode',4008),(147914,'Tardeo',4008),(147915,'Thalner',4008),(147916,'Trombay',4008),(147917,'Uruli Kanchan',4008),(147918,'Vadgaon',4008),(147919,'Vadner',4008),(147920,'Vairag',4008),(147921,'Valsang',4008),(147922,'Vangaon',4008),(147923,'Vashi',4008),(147924,'Vatul',4008),(147925,'Velas Maharashtra',4008),(147926,'Velneshwar',4008),(147927,'Vijaydurg',4008),(147928,'Vikhroli',4008),(147929,'Vile Parle',4008),(147930,'Vinchur',4008),(147931,'Vita Maharashtra',4008),(147932,'Wadala',4008),(147933,'Wadner',4008),(147934,'Wadwani',4008),(147935,'Wagholi',4008),(147936,'Wakad',4008),(147937,'Walgaon',4008),(147938,'Walki',4008),(147939,'Worli',4008),(149548,'Ranipet',4035),(153350,'Adra',4853),(153519,'Dantewada',4040),(153522,'Chandel',4010),(153523,'Kangpokpi',4010),(153524,'Tengnoupal',4010),(153525,'Pherzawl',4010),(153526,'Kamjong',4010),(153527,'Jiribam',4010),(153528,'Noney',4010),(153628,'Perinthalmanna',4028),(153924,'Bavla',4030);
/*!40000 ALTER TABLE `bopo_admin_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_deductsetting`
--

DROP TABLE IF EXISTS `bopo_admin_deductsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_deductsetting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) NOT NULL,
  `cust_cust` double DEFAULT NULL,
  `cust_merch` double DEFAULT NULL,
  `merch_merch` double DEFAULT NULL,
  `normal_global` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_deductsetting`
--

LOCK TABLES `bopo_admin_deductsetting` WRITE;
/*!40000 ALTER TABLE `bopo_admin_deductsetting` DISABLE KEYS */;
INSERT INTO `bopo_admin_deductsetting` VALUES (1,'2025-08-06 10:01:15.742787',5,5,5,5);
/*!40000 ALTER TABLE `bopo_admin_deductsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_employee`
--

DROP TABLE IF EXISTS `bopo_admin_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_employee` (
  `employee_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `aadhaar` varchar(12) NOT NULL,
  `address` longtext NOT NULL,
  `role` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pan` varchar(10) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `aadhaar` (`aadhaar`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `pan` (`pan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_employee`
--

LOCK TABLES `bopo_admin_employee` WRITE;
/*!40000 ALTER TABLE `bopo_admin_employee` DISABLE KEYS */;
INSERT INTO `bopo_admin_employee` VALUES ('EMP10000001','Anusha  Patil','anusha12@gmail.com','111111222222','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','employee','Maharashtra','Ashta','3224567777','ISRTR7779R','416210','Anusha12','Anusha@12','India'),('EMP10000002','testemp','testemp21@gmail.com','456009988888','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','employee','Maharashtra','Akalkot','3454567677','IIIPY9999T','416210','Testemp21','Testemp@21','India'),('EMP10000003','employee','emp21@gmail.com','232467766655','A/p kadgaon ,Tal-bhudargad, dist-kolhapur','employee','Maharashtra','Akalkot','3244433444','BHJPR1234R','416210','employee21','employee@21','India');
/*!40000 ALTER TABLE `bopo_admin_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_employeerole`
--

DROP TABLE IF EXISTS `bopo_admin_employeerole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_employeerole` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `corporate_merchant` tinyint(1) NOT NULL,
  `individual_merchant` tinyint(1) NOT NULL,
  `merchant_send_credentials` tinyint(1) NOT NULL,
  `merchant_limit` tinyint(1) NOT NULL,
  `merchant_login_page_info` tinyint(1) NOT NULL,
  `merchant_send_notification` tinyint(1) NOT NULL,
  `merchant_received_offers` tinyint(1) NOT NULL,
  `modify_customer_details` tinyint(1) NOT NULL,
  `customer_send_notification` tinyint(1) NOT NULL,
  `create_employee` tinyint(1) NOT NULL,
  `payment_details` tinyint(1) NOT NULL,
  `account_info` tinyint(1) NOT NULL,
  `reports` tinyint(1) NOT NULL,
  `deduct_amount` tinyint(1) NOT NULL,
  `helpdesk_action` tinyint(1) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `reduce_limit` tinyint(1) NOT NULL,
  `superadmin_functionality` tinyint(1) NOT NULL,
  `terminals` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_admin_employeer_employee_id_43d192de_fk_bopo_admi` (`employee_id`),
  CONSTRAINT `bopo_admin_employeer_employee_id_43d192de_fk_bopo_admi` FOREIGN KEY (`employee_id`) REFERENCES `bopo_admin_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_employeerole`
--

LOCK TABLES `bopo_admin_employeerole` WRITE;
/*!40000 ALTER TABLE `bopo_admin_employeerole` DISABLE KEYS */;
INSERT INTO `bopo_admin_employeerole` VALUES (1,1,1,1,0,0,1,0,1,1,1,1,1,1,0,1,'EMP10000001',1,1,0),(2,1,1,1,0,0,1,0,1,1,1,1,1,1,0,1,'EMP10000002',1,1,0);
/*!40000 ALTER TABLE `bopo_admin_employeerole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_merchantcredential`
--

DROP TABLE IF EXISTS `bopo_admin_merchantcredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_merchantcredential` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project` varchar(200) DEFAULT NULL,
  `merchant_id` varchar(200) DEFAULT NULL,
  `merchant_name` varchar(200) DEFAULT NULL,
  `terminal_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_merchantcredential`
--

LOCK TABLES `bopo_admin_merchantcredential` WRITE;
/*!40000 ALTER TABLE `bopo_admin_merchantcredential` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_merchantcredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_merchantlogin`
--

DROP TABLE IF EXISTS `bopo_admin_merchantlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_merchantlogin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sales_name` varchar(200) DEFAULT NULL,
  `sales_number` int DEFAULT NULL,
  `sales_email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_merchantlogin`
--

LOCK TABLES `bopo_admin_merchantlogin` WRITE;
/*!40000 ALTER TABLE `bopo_admin_merchantlogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_merchantlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_notification`
--

DROP TABLE IF EXISTS `bopo_admin_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_id_id` bigint DEFAULT NULL,
  `notification_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_admin_notification_project_id_id_1cff9528` (`project_id_id`),
  CONSTRAINT `bopo_admin_notificat_project_id_id_1cff9528_fk_accounts_` FOREIGN KEY (`project_id_id`) REFERENCES `accounts_corporate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_notification`
--

LOCK TABLES `bopo_admin_notification` WRITE;
/*!40000 ALTER TABLE `bopo_admin_notification` DISABLE KEYS */;
INSERT INTO `bopo_admin_notification` VALUES (2,NULL,'Notification 1','Title 1','Description 1','2025-06-12 12:22:14.490819',1,NULL),(3,2,'Notification 1','Title 1','Description 1','2025-06-13 05:43:15.404738',1,NULL),(4,2,'Notification 2','Title 2','Description 2','2025-06-13 05:45:05.299488',1,NULL),(5,2,'Notification 3','Title 3','Description 3','2025-06-13 05:52:03.122076',1,NULL),(6,NULL,'Notification 4','Title 4','Description 4','2025-06-13 05:55:17.225555',1,NULL),(7,NULL,'Notification 5','Title 5','Description 5','2025-06-13 05:55:59.906152',1,NULL),(8,NULL,'Cust Notification 1','Cust Title 1','Cust Description 1','2025-06-13 06:52:33.844921',1,NULL),(9,NULL,'testing1','testing','tttttttttttttttttt','2025-06-13 09:25:34.409613',1,NULL),(10,NULL,'abc','fff','ssssssssss','2025-06-13 09:26:49.610026',1,NULL),(11,NULL,'abc','test','kkkk','2025-06-17 11:01:13.396596',1,NULL),(12,NULL,'lll','testing','fdedf','2025-06-17 11:02:03.839825',1,NULL),(13,NULL,'samyaa','samyaa','samyaaaaa','2025-07-02 17:37:22.573680',1,NULL),(14,NULL,'yhgy','h','mmm','2025-07-02 17:37:43.124504',1,NULL),(15,NULL,'one','onee','oneeee','2025-07-02 17:38:43.800829',1,NULL),(16,NULL,'abc','testing','yyyyyyyy','2025-07-02 17:40:02.982627',1,NULL),(17,2,'test - notification 1','test - title 1','test - des 1','2025-07-03 07:40:13.868492',0,NULL),(18,2,'test - notification 2','test - title 2','test -des 2','2025-07-03 07:41:01.333510',1,NULL),(19,NULL,'test - notification 3','test - title 3','test - des 3','2025-07-03 07:41:42.727388',0,NULL),(20,NULL,'test - notification 4','test - title 4','test - des 4','2025-07-03 07:42:36.455814',1,NULL),(21,NULL,'notification test1','notification test1','notification test1','2025-07-03 11:06:59.175535',1,NULL),(22,NULL,'testcust - notification 1','testcust - title 1','testcust - notification 1','2025-07-03 12:03:23.754557',0,NULL),(23,NULL,'testcust - notification 2','testcust - title 2','testcust - des 2','2025-07-03 12:04:01.709946',1,NULL),(24,NULL,'fssds','ds','xs','2025-07-03 12:04:32.249793',0,NULL),(25,NULL,'abc','ds','sa','2025-07-03 12:04:45.719054',1,NULL),(26,NULL,'notification test2','notification test2','notification test2','2025-07-04 05:04:19.756868',1,NULL),(27,NULL,'notification test3','notification test3','notification test3','2025-07-04 05:04:51.900178',1,NULL),(28,NULL,'individual test 1','individual test 1','individual test 1','2025-07-04 07:28:36.561767',1,NULL),(29,NULL,'Test notification - 2','Test Title - 2','Description -2','2025-07-05 04:44:19.328883',1,NULL),(30,NULL,'Test -Notifiication 3','xcdfgfth','dwere','2025-07-05 04:46:40.146690',1,NULL),(31,1,'Test -Notification 5','efesfr','wdewew','2025-07-05 04:50:56.965821',1,NULL),(32,NULL,'hgytdtre','ghfrtrhggftr','hgftr','2025-07-05 04:52:29.759645',1,NULL),(33,NULL,'fssds','nngh','gfg','2025-07-05 04:52:42.100667',1,NULL),(34,NULL,'fssds','aesd','dedew','2025-07-05 05:29:49.033809',1,NULL),(35,NULL,'abc','abc','abc','2025-07-08 11:35:03.561818',1,NULL),(36,NULL,'test','testtt','testt','2025-07-08 11:36:03.531727',1,NULL),(37,NULL,'testing2','testing2','testing22','2025-07-09 06:58:50.625930',1,NULL),(38,NULL,'testing','11','new apk testing','2025-07-21 11:12:00.228772',1,NULL),(39,NULL,'all indi merchant','all indi merchant','all indi merchant','2025-07-21 11:13:00.728679',1,NULL),(40,NULL,'all cust testing noti','all cust testing noti','all cust testing noti','2025-07-21 11:16:00.595783',1,NULL),(41,NULL,'testing purpose new apk','testing purpose new apk','testing purpose new apk','2025-07-21 11:26:55.532056',1,NULL);
/*!40000 ALTER TABLE `bopo_admin_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_notification_customers`
--

DROP TABLE IF EXISTS `bopo_admin_notification_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_notification_customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notification_id` bigint NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bopo_admin_notification__notification_id_customer_c68eb5df_uniq` (`notification_id`,`customer_id`),
  KEY `bopo_admin_notificat_customer_id_a6cd412f_fk_accounts_` (`customer_id`),
  CONSTRAINT `bopo_admin_notificat_customer_id_a6cd412f_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_admin_notificat_notification_id_f6f09b79_fk_bopo_admi` FOREIGN KEY (`notification_id`) REFERENCES `bopo_admin_notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_notification_customers`
--

LOCK TABLES `bopo_admin_notification_customers` WRITE;
/*!40000 ALTER TABLE `bopo_admin_notification_customers` DISABLE KEYS */;
INSERT INTO `bopo_admin_notification_customers` VALUES (2,2,'CUST000001'),(3,8,'CUST000006'),(4,9,'CUST000001'),(5,10,'CUST000001'),(6,11,'CUST000001'),(11,12,'CUST000001'),(12,12,'CUST000002'),(9,12,'CUST000003'),(10,12,'CUST000004'),(7,12,'CUST000005'),(8,12,'CUST000006'),(13,13,'CUST000001'),(14,14,'CUST000001'),(15,15,'CUST000001'),(20,15,'CUST000002'),(19,15,'CUST000003'),(16,15,'CUST000004'),(17,15,'CUST000005'),(18,15,'CUST000006'),(21,16,'CUST000001'),(22,21,'CUST000001'),(23,22,'CUST000006'),(28,23,'CUST000001'),(27,23,'CUST000002'),(29,23,'CUST000003'),(25,23,'CUST000004'),(24,23,'CUST000005'),(26,23,'CUST000006'),(30,24,'CUST000006'),(35,25,'CUST000001'),(34,25,'CUST000002'),(36,25,'CUST000003'),(32,25,'CUST000004'),(31,25,'CUST000005'),(33,25,'CUST000006'),(37,26,'CUST000001'),(38,27,'CUST000001'),(43,29,'CUST000001'),(42,29,'CUST000002'),(44,29,'CUST000003'),(40,29,'CUST000004'),(39,29,'CUST000005'),(41,29,'CUST000006'),(45,30,'CUST000001'),(46,32,'CUST000001'),(51,33,'CUST000001'),(50,33,'CUST000002'),(52,33,'CUST000003'),(48,33,'CUST000004'),(47,33,'CUST000005'),(49,33,'CUST000006'),(57,34,'CUST000001'),(56,34,'CUST000002'),(58,34,'CUST000003'),(54,34,'CUST000004'),(53,34,'CUST000005'),(55,34,'CUST000006'),(59,35,'CUST000001'),(64,36,'CUST000001'),(63,36,'CUST000002'),(65,36,'CUST000003'),(61,36,'CUST000004'),(60,36,'CUST000005'),(62,36,'CUST000006'),(66,37,'CUST000001'),(68,40,'CUST000001'),(69,40,'CUST000002'),(71,40,'CUST000003'),(67,40,'CUST000004'),(72,40,'CUST000005'),(75,40,'CUST000006'),(74,40,'CUST000007'),(70,40,'CUST000008'),(73,40,'CUST000009'),(76,41,'CUST000001');
/*!40000 ALTER TABLE `bopo_admin_notification_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_notification_merchants`
--

DROP TABLE IF EXISTS `bopo_admin_notification_merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_notification_merchants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notification_id` bigint NOT NULL,
  `merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bopo_admin_notification__notification_id_merchant_23c24419_uniq` (`notification_id`,`merchant_id`),
  KEY `bopo_admin_notificat_merchant_id_914fe15b_fk_accounts_` (`merchant_id`),
  CONSTRAINT `bopo_admin_notificat_merchant_id_914fe15b_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_admin_notificat_notification_id_06cc623e_fk_bopo_admi` FOREIGN KEY (`notification_id`) REFERENCES `bopo_admin_notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_notification_merchants`
--

LOCK TABLES `bopo_admin_notification_merchants` WRITE;
/*!40000 ALTER TABLE `bopo_admin_notification_merchants` DISABLE KEYS */;
INSERT INTO `bopo_admin_notification_merchants` VALUES (1,3,7),(2,4,7),(3,5,7),(4,6,1),(6,7,1),(7,7,2),(8,7,6),(5,7,8),(9,17,8),(12,18,7),(10,18,8),(11,18,9),(13,19,8),(14,20,1),(15,20,2),(16,20,6),(17,20,8),(19,28,1),(20,31,3),(21,38,26),(22,39,1),(23,39,2),(24,39,6),(25,39,8),(26,39,20),(27,39,22),(28,39,23),(29,39,24),(30,39,25),(31,39,26);
/*!40000 ALTER TABLE `bopo_admin_notification_merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_reducelimit`
--

DROP TABLE IF EXISTS `bopo_admin_reducelimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_reducelimit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project` varchar(200) DEFAULT NULL,
  `merchant` varchar(200) DEFAULT NULL,
  `current_limit` varchar(200) DEFAULT NULL,
  `reduce_amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_reducelimit`
--

LOCK TABLES `bopo_admin_reducelimit` WRITE;
/*!40000 ALTER TABLE `bopo_admin_reducelimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_reducelimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_securityquestion`
--

DROP TABLE IF EXISTS `bopo_admin_securityquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_securityquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `ans` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_securityquestion`
--

LOCK TABLES `bopo_admin_securityquestion` WRITE;
/*!40000 ALTER TABLE `bopo_admin_securityquestion` DISABLE KEYS */;
INSERT INTO `bopo_admin_securityquestion` VALUES (1,'a testing question what is your fav color?',1,''),(3,'A testing question two what is your favorite animal?nnn',0,'');
/*!40000 ALTER TABLE `bopo_admin_securityquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_state`
--

DROP TABLE IF EXISTS `bopo_admin_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_state` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4854 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_state`
--

LOCK TABLES `bopo_admin_state` WRITE;
/*!40000 ALTER TABLE `bopo_admin_state` DISABLE KEYS */;
INSERT INTO `bopo_admin_state` VALUES (4023,'Andaman and Nicobar Islands'),(4017,'Andhra Pradesh'),(4024,'Arunachal Pradesh'),(4027,'Assam'),(4037,'Bihar'),(4031,'Chandigarh'),(4040,'Chhattisgarh'),(4033,'Dadra and Nagar Haveli and Daman and Diu'),(4021,'Delhi'),(4009,'Goa'),(4030,'Gujarat'),(4007,'Haryana'),(4020,'Himachal Pradesh'),(4029,'Jammu and Kashmir'),(4025,'Jharkhand'),(4026,'Karnataka'),(4028,'Kerala'),(4852,'Ladakh'),(4019,'Lakshadweep'),(4039,'Madhya Pradesh'),(4008,'Maharashtra'),(4010,'Manipur'),(4006,'Meghalaya'),(4036,'Mizoram'),(4018,'Nagaland'),(4013,'Odisha'),(4011,'Puducherry'),(4015,'Punjab'),(4014,'Rajasthan'),(4034,'Sikkim'),(4035,'Tamil Nadu'),(4012,'Telangana'),(4038,'Tripura'),(4022,'Uttar Pradesh'),(4016,'Uttarakhand'),(4853,'West Bengal');
/*!40000 ALTER TABLE `bopo_admin_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_topup`
--

DROP TABLE IF EXISTS `bopo_admin_topup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_topup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `topup_amount` int NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `topup_points` int NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `upi_id` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_admin_topup_merchant_id_199e4165_fk_accounts_merchant_id` (`merchant_id`),
  CONSTRAINT `bopo_admin_topup_merchant_id_199e4165_fk_accounts_merchant_id` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_topup`
--

LOCK TABLES `bopo_admin_topup` WRITE;
/*!40000 ALTER TABLE `bopo_admin_topup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_topup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_uploadedfile`
--

DROP TABLE IF EXISTS `bopo_admin_uploadedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_uploadedfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_type` varchar(50) NOT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_uploadedfile`
--

LOCK TABLES `bopo_admin_uploadedfile` WRITE;
/*!40000 ALTER TABLE `bopo_admin_uploadedfile` DISABLE KEYS */;
INSERT INTO `bopo_admin_uploadedfile` VALUES (1,'privacy_policy','uploads/documents/358-Jai_Jawan_Nagar_OCnLvW5.xlsx','2025-06-13 06:29:29.601115'),(2,'terms_conditions','uploads/documents/358-Jai_Jawan_Nagar_i3QgAZX.xlsx','2025-06-13 06:30:52.266100'),(3,'user_guide','uploads/documents/gmtt_7GFrtY7.docx','2025-06-13 06:31:10.291924');
/*!40000 ALTER TABLE `bopo_admin_uploadedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_admin_userbalance`
--

DROP TABLE IF EXISTS `bopo_admin_userbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_admin_userbalance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `deduction_amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_admin_userbalance`
--

LOCK TABLES `bopo_admin_userbalance` WRITE;
/*!40000 ALTER TABLE `bopo_admin_userbalance` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_admin_userbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_awardpoints`
--

DROP TABLE IF EXISTS `bopo_award_awardpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_awardpoints` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_awardpoints`
--

LOCK TABLES `bopo_award_awardpoints` WRITE;
/*!40000 ALTER TABLE `bopo_award_awardpoints` DISABLE KEYS */;
INSERT INTO `bopo_award_awardpoints` VALUES (3,5);
/*!40000 ALTER TABLE `bopo_award_awardpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_bankdetail`
--

DROP TABLE IF EXISTS `bopo_award_bankdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_bankdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `ifsc_code` varchar(11) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id` varchar(25) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `bopo_award_bankdetai_customer_id_e2658510_fk_accounts_` (`customer_id`),
  KEY `bopo_award_bankdetai_merchant_id_13d94a22_fk_accounts_` (`merchant_id`),
  CONSTRAINT `bopo_award_bankdetai_customer_id_e2658510_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_bankdetai_merchant_id_13d94a22_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_bankdetail`
--

LOCK TABLES `bopo_award_bankdetail` WRITE;
/*!40000 ALTER TABLE `bopo_award_bankdetail` DISABLE KEYS */;
INSERT INTO `bopo_award_bankdetail` VALUES (1,'Nishant Pa','SBI Bankkk','89655336584','SBIN0021226','Pune','2025-06-13 09:33:09.671479',NULL,1),(2,'Nishant Patil','SBI Bank','5555555555','SBIN002122','Pune','2025-06-20 09:11:02.977041',NULL,1),(3,'Nishant Patil','SBI Bank','66666666666','SBIN002122','Pune','2025-06-20 09:11:46.590980',NULL,1),(6,'Nishant Patilllll','SBI Bankkk','89655336577','SBIN0021225','Pune','2025-07-09 04:52:01.264853',NULL,1),(9,'Fa hh','Xgkdk','6655759955957','ASFG0123456','Xv','2025-07-21 11:34:17.117680',NULL,26);
/*!40000 ALTER TABLE `bopo_award_bankdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_cashout`
--

DROP TABLE IF EXISTS `bopo_award_cashout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_cashout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_category` varchar(200) DEFAULT NULL,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id` varchar(25) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  `paid_at` datetime(6) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_cashout_customer_id_7bef57fe_fk_accounts_` (`customer_id`),
  KEY `bopo_award_cashout_merchant_id_67bff793_fk_accounts_merchant_id` (`merchant_id`),
  CONSTRAINT `bopo_award_cashout_customer_id_7bef57fe_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_cashout_merchant_id_67bff793_fk_accounts_merchant_id` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_cashout`
--

LOCK TABLES `bopo_award_cashout` WRITE;
/*!40000 ALTER TABLE `bopo_award_cashout` DISABLE KEYS */;
INSERT INTO `bopo_award_cashout` VALUES (1,'merchant',10,'2025-06-13 05:21:59.224114',NULL,1,'2025-06-13 05:26:43.354468','paid'),(2,'merchant',1,'2025-06-13 05:33:35.806243',NULL,1,'2025-06-13 10:26:02.306778','paid'),(3,'merchant',1,'2025-06-13 10:24:47.257625',NULL,1,'2025-06-13 10:26:23.149162','paid'),(4,'merchant',1,'2025-06-13 10:24:47.741251',NULL,1,'2025-06-13 10:28:40.800886','paid'),(5,'merchant',2,'2025-06-20 11:55:31.187784',NULL,1,NULL,'pending'),(6,'merchant',2,'2025-06-20 11:56:07.400430',NULL,1,'2025-06-30 06:30:00.000000','paid'),(8,'merchant',8000,'2025-07-05 05:22:21.308252',NULL,1,NULL,'pending'),(9,'merchant',10,'2025-07-21 10:00:05.726408',NULL,26,'2025-07-21 06:30:00.000000','paid');
/*!40000 ALTER TABLE `bopo_award_cashout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_customerpoints`
--

DROP TABLE IF EXISTS `bopo_award_customerpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_customerpoints` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `corporate_id_id` bigint DEFAULT NULL,
  `customer_id` varchar(25) NOT NULL,
  `merchant_id` bigint NOT NULL,
  `terminal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bopo_award_customerpoints_customer_id_merchant_id_e58402d6_uniq` (`customer_id`,`merchant_id`),
  KEY `bopo_award_customerp_corporate_id_id_47857d7b_fk_accounts_` (`corporate_id_id`),
  KEY `bopo_award_customerp_merchant_id_ea17519f_fk_accounts_` (`merchant_id`),
  KEY `bopo_award_customerp_terminal_id_3ddc5464_fk_accounts_` (`terminal_id`),
  CONSTRAINT `bopo_award_customerp_corporate_id_id_47857d7b_fk_accounts_` FOREIGN KEY (`corporate_id_id`) REFERENCES `accounts_corporate` (`id`),
  CONSTRAINT `bopo_award_customerp_customer_id_eaf93256_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_customerp_merchant_id_ea17519f_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_award_customerp_terminal_id_3ddc5464_fk_accounts_` FOREIGN KEY (`terminal_id`) REFERENCES `accounts_terminal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_customerpoints`
--

LOCK TABLES `bopo_award_customerpoints` WRITE;
/*!40000 ALTER TABLE `bopo_award_customerpoints` DISABLE KEYS */;
INSERT INTO `bopo_award_customerpoints` VALUES (1,64,'2025-06-12 09:01:11.048593','2025-07-21 11:23:52.150988',NULL,'CUST000001',1,NULL),(2,78,'2025-06-12 11:03:57.937587','2025-07-21 11:24:33.441503',1,'CUST000001',3,NULL),(3,6,'2025-06-12 11:11:52.637172','2025-06-12 11:11:52.637198',NULL,'CUST000002',3,NULL),(4,3,'2025-06-13 07:16:47.619784','2025-06-13 07:16:47.619810',NULL,'CUST000002',1,NULL),(5,8,'2025-06-20 05:14:05.646736','2025-06-20 05:14:05.646765',NULL,'CUST000006',1,NULL),(6,4,'2025-06-21 04:17:53.126496','2025-08-05 10:18:26.341717',NULL,'CUST000004',1,NULL),(7,10,'2025-06-21 04:31:18.610258','2025-06-21 09:18:02.884745',NULL,'CUST000004',2,NULL),(8,2,'2025-06-21 05:20:12.665800','2025-06-21 06:49:45.414093',NULL,'CUST000004',3,NULL),(9,56,'2025-06-21 09:19:09.498366','2025-06-21 09:19:09.498390',NULL,'CUST000004',7,NULL),(10,13,'2025-06-21 09:27:15.221489','2025-06-21 09:27:15.221518',NULL,'CUST000001',7,NULL),(11,2,'2025-07-05 06:06:29.404155','2025-07-05 06:06:29.404184',NULL,'CUST000003',7,NULL),(12,1,'2025-07-21 09:43:06.630674','2025-07-21 09:43:06.630700',NULL,'CUST000004',26,NULL);
/*!40000 ALTER TABLE `bopo_award_customerpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_customertocustomer`
--

DROP TABLE IF EXISTS `bopo_award_customertocustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_customertocustomer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `merchant_id` bigint NOT NULL,
  `receiver_customer_id` varchar(25) NOT NULL,
  `sender_customer_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_customert_merchant_id_1105bcab_fk_accounts_` (`merchant_id`),
  KEY `bopo_award_customert_receiver_customer_id_f6f0956d_fk_accounts_` (`receiver_customer_id`),
  KEY `bopo_award_customert_sender_customer_id_c7839b25_fk_accounts_` (`sender_customer_id`),
  CONSTRAINT `bopo_award_customert_merchant_id_1105bcab_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_award_customert_receiver_customer_id_f6f0956d_fk_accounts_` FOREIGN KEY (`receiver_customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_customert_sender_customer_id_c7839b25_fk_accounts_` FOREIGN KEY (`sender_customer_id`) REFERENCES `accounts_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_customertocustomer`
--

LOCK TABLES `bopo_award_customertocustomer` WRITE;
/*!40000 ALTER TABLE `bopo_award_customertocustomer` DISABLE KEYS */;
INSERT INTO `bopo_award_customertocustomer` VALUES (1,9,'2025-06-12 11:04:30.980263',3,'CUST000001','CUST000001'),(2,9,'2025-06-12 11:11:53.242990',3,'CUST000002','CUST000001'),(3,0,'2025-06-12 11:16:37.321702',3,'CUST000001','CUST000001'),(4,1,'2025-06-14 05:45:24.440624',3,'CUST000001','CUST000002'),(5,1,'2025-06-14 05:52:03.289103',3,'CUST000001','CUST000002'),(6,0,'2025-06-21 06:45:51.254817',3,'CUST000001','CUST000004'),(7,0,'2025-06-21 06:47:49.894616',3,'CUST000001','CUST000004'),(8,1,'2025-06-21 06:50:14.421708',3,'CUST000001','CUST000004'),(9,1,'2025-06-21 06:50:46.227377',3,'CUST000001','CUST000004'),(10,1,'2025-06-21 06:51:30.682071',3,'CUST000001','CUST000004'),(11,1,'2025-06-21 06:53:04.083447',3,'CUST000001','CUST000004'),(12,0,'2025-06-21 06:54:24.586758',3,'CUST000001','CUST000004'),(13,0,'2025-06-21 06:54:57.542135',3,'CUST000001','CUST000004'),(14,1,'2025-07-04 05:28:36.543838',3,'CUST000004','CUST000001'),(15,1,'2025-07-04 05:31:06.947982',3,'CUST000002','CUST000001'),(16,1,'2025-07-21 11:25:13.010903',3,'CUST000004','CUST000001');
/*!40000 ALTER TABLE `bopo_award_customertocustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_globalpoints`
--

DROP TABLE IF EXISTS `bopo_award_globalpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_globalpoints` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_globalpoi_customer_id_9148aff2_fk_accounts_` (`customer_id`),
  CONSTRAINT `bopo_award_globalpoi_customer_id_9148aff2_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_globalpoints`
--

LOCK TABLES `bopo_award_globalpoints` WRITE;
/*!40000 ALTER TABLE `bopo_award_globalpoints` DISABLE KEYS */;
INSERT INTO `bopo_award_globalpoints` VALUES (2,68,'2025-07-04 05:08:43.214992','CUST000001'),(3,9,'2025-06-21 06:05:23.748801','CUST000004');
/*!40000 ALTER TABLE `bopo_award_globalpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_help`
--

DROP TABLE IF EXISTS `bopo_award_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_help` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issue_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` varchar(25) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  `terminal_id` bigint DEFAULT NULL,
  `remark` longtext,
  PRIMARY KEY (`id`),
  KEY `bopo_award_help_customer_id_5fc55142_fk_accounts_` (`customer_id`),
  KEY `bopo_award_help_merchant_id_d029ab7c_fk_accounts_merchant_id` (`merchant_id`),
  KEY `bopo_award_help_terminal_id_76b57180_fk_accounts_terminal_id` (`terminal_id`),
  CONSTRAINT `bopo_award_help_customer_id_5fc55142_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_help_merchant_id_d029ab7c_fk_accounts_merchant_id` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_award_help_terminal_id_76b57180_fk_accounts_terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `accounts_terminal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_help`
--

LOCK TABLES `bopo_award_help` WRITE;
/*!40000 ALTER TABLE `bopo_award_help` DISABLE KEYS */;
INSERT INTO `bopo_award_help` VALUES (1,'I am not redeem points','2025-06-12 11:24:04.003710','pending','CUST000001',NULL,NULL,NULL),(2,'Any option','2025-06-12 11:27:04.201911','pending','CUST000001',NULL,NULL,NULL),(3,'I am not award point using scanner in one merchant to another merchant','2025-06-13 09:44:58.526223','resolved',NULL,1,NULL,'test query 2 complete'),(4,'Test query 1','2025-06-13 10:07:58.706302','resolved',NULL,7,NULL,'test query 1 complete'),(5,'New','2025-06-13 10:09:22.807576','pending',NULL,1,NULL,NULL),(6,'Need some help','2025-06-20 09:22:27.703167','pending',NULL,1,NULL,NULL),(7,'Need help test 2','2025-06-20 09:22:47.515302','pending',NULL,1,NULL,NULL),(8,'Need help test 3','2025-06-20 09:23:04.113610','pending',NULL,1,NULL,NULL),(9,'Cylvu','2025-06-20 09:23:16.865005','pending',NULL,1,NULL,NULL),(10,'Fjg7ggy','2025-06-20 09:23:26.663568','pending',NULL,1,NULL,NULL),(11,'Hhyggycgy','2025-06-21 06:57:32.773692','pending','CUST000004',NULL,NULL,NULL),(12,'Gdhdhh','2025-06-21 09:40:48.206780','pending',NULL,7,NULL,NULL),(13,'Heheg','2025-06-21 09:41:03.641773','pending',NULL,7,NULL,NULL),(14,'Gougyffu','2025-06-21 09:42:17.834964','pending',NULL,7,NULL,NULL),(15,'Frgr','2025-06-21 09:56:32.473401','pending',NULL,7,NULL,NULL),(16,'Gh','2025-06-21 10:05:09.089271','pending',NULL,7,NULL,NULL),(17,'Hii','2025-07-02 17:35:22.911575','pending','CUST000001',NULL,NULL,NULL),(18,'Need some help','2025-07-04 05:26:19.670054','resolved','CUST000006',20,NULL,'test 1'),(19,'Test 1','2025-07-04 05:57:26.605121','resolved','CUST000001',NULL,NULL,'complete test 1'),(20,'Test merchant','2025-07-04 13:02:20.981079','pending',NULL,1,NULL,NULL),(21,'Terminal test','2025-07-05 06:10:56.088209','pending',NULL,7,NULL,NULL),(22,'New apk','2025-07-21 09:30:50.504530','pending',NULL,26,NULL,NULL);
/*!40000 ALTER TABLE `bopo_award_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_history`
--

DROP TABLE IF EXISTS `bopo_award_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id` varchar(25) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_history_customer_id_2854720e_fk_accounts_` (`customer_id`),
  KEY `bopo_award_history_merchant_id_fdf3293f_fk_accounts_merchant_id` (`merchant_id`),
  CONSTRAINT `bopo_award_history_customer_id_2854720e_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_award_history_merchant_id_fdf3293f_fk_accounts_merchant_id` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_history`
--

LOCK TABLES `bopo_award_history` WRITE;
/*!40000 ALTER TABLE `bopo_award_history` DISABLE KEYS */;
INSERT INTO `bopo_award_history` VALUES (1,5,'award','2025-06-12 09:01:11.237979','CUST000001',1),(2,5,'redeem','2025-06-12 09:01:51.038514','CUST000001',1),(3,1,'award','2025-06-12 09:12:29.664544','CUST000001',1),(4,1,'redeem','2025-06-12 09:14:53.818410','CUST000001',1),(5,5,'award','2025-06-12 09:16:29.902832','CUST000001',1),(6,2,'redeem','2025-06-12 09:21:18.150726','CUST000001',1),(7,2,'redeem','2025-06-12 09:22:58.201521','CUST000001',1),(8,10,'redeem','2025-06-12 10:12:27.230498','CUST000001',1),(9,1,'award','2025-06-13 06:51:46.801320','CUST000001',1),(10,1,'award','2025-06-13 07:16:48.343395','CUST000002',1),(11,2,'redeem','2025-06-14 04:54:35.494484','CUST000001',1),(12,2,'redeem','2025-06-14 05:31:06.393689','CUST000001',1),(13,2,'redeem','2025-06-14 05:31:39.594783','CUST000001',1),(14,1,'award','2025-06-14 05:36:43.506504','CUST000002',1),(15,2,'redeem','2025-06-14 09:05:37.301702','CUST000001',3),(16,2,'redeem','2025-06-14 09:06:53.335349','CUST000001',3),(17,10,'redeem','2025-06-19 14:42:16.027293','CUST000001',1),(18,1,'award','2025-06-20 05:14:05.953563','CUST000006',1),(19,2,'award','2025-06-20 05:20:56.594086','CUST000006',1),(20,1,'award','2025-06-20 05:22:19.320561','CUST000006',1),(21,4,'award','2025-06-20 05:23:21.207012','CUST000006',1),(22,1,'award','2025-06-20 05:44:51.275038','CUST000001',1),(23,1,'award','2025-06-20 09:39:51.697804','CUST000001',1),(24,1,'award','2025-06-20 09:43:19.573870','CUST000001',1),(25,1,'award','2025-06-20 09:46:08.299781','CUST000001',1),(26,1,'award','2025-06-20 09:47:20.901997','CUST000001',1),(27,1,'award','2025-06-20 09:47:52.799395','CUST000001',1),(28,2,'award','2025-06-20 09:48:22.264571','CUST000001',1),(29,2,'award','2025-06-20 11:02:22.301428','CUST000001',1),(30,1,'award','2025-06-20 11:02:55.590259','CUST000001',1),(31,3,'award','2025-06-20 11:24:21.542878','CUST000001',1),(32,2,'award','2025-06-21 04:17:53.425333','CUST000004',1),(33,6,'award','2025-06-21 04:19:05.928269','CUST000004',1),(34,2,'redeem','2025-06-21 04:21:15.496172','CUST000004',1),(35,1,'award','2025-06-21 04:31:19.158763','CUST000004',2),(36,2,'redeem','2025-06-21 04:36:08.020282','CUST000004',1),(37,2,'redeem','2025-06-21 04:47:25.231448','CUST000004',1),(38,1,'award','2025-06-21 05:20:13.488321','CUST000004',3),(39,1,'redeem','2025-06-21 05:22:40.111610','CUST000004',3),(40,2,'redeem','2025-06-21 05:48:30.331992','CUST000004',1),(41,1,'redeem','2025-06-21 05:49:29.120074','CUST000004',1),(42,1,'redeem','2025-06-21 05:49:56.318506','CUST000004',1),(43,5,'redeem','2025-06-21 05:50:22.123274','CUST000004',1),(44,2,'redeem','2025-06-21 05:51:22.189385','CUST000004',1),(45,2,'redeem','2025-06-21 06:05:23.751235','CUST000004',1),(46,1,'award','2025-06-21 06:44:27.341394','CUST000004',3),(47,1,'award','2025-06-21 06:44:52.339334','CUST000004',3),(48,2,'award','2025-06-21 09:21:29.132082','CUST000004',7),(49,2,'award','2025-06-21 09:22:54.056854','CUST000004',7),(50,2,'award','2025-06-21 09:27:15.751995','CUST000001',7),(51,2,'award','2025-06-21 09:31:02.567634','CUST000001',7),(52,2,'award','2025-06-21 09:32:03.644577','CUST000001',7),(53,2,'award','2025-06-21 09:32:59.306258','CUST000001',7),(54,2,'award','2025-06-21 09:36:14.574385','CUST000001',7),(55,2,'award','2025-06-21 09:39:40.564538','CUST000001',7),(56,1,'award','2025-06-21 09:58:47.427170','CUST000001',7),(57,10,'redeem','2025-07-02 17:34:40.032617','CUST000001',1),(58,10,'redeem','2025-07-02 17:35:35.102436','CUST000001',1),(59,20,'redeem','2025-07-02 17:48:57.012421','CUST000001',1),(60,10,'redeem','2025-07-02 17:49:48.773697','CUST000001',1),(61,2,'redeem','2025-07-03 11:51:06.862022','CUST000001',1),(62,2,'redeem','2025-07-03 11:56:21.343305','CUST000001',1),(63,2,'redeem','2025-07-03 12:44:12.066952','CUST000001',3),(64,2,'redeem','2025-07-04 04:58:21.755087','CUST000001',3),(65,2,'redeem','2025-07-04 05:08:43.217439','CUST000001',1),(66,1,'award','2025-07-04 09:50:12.201825','CUST000004',1),(67,1,'award','2025-07-04 10:05:42.438653','CUST000002',1),(68,1,'award','2025-07-04 10:26:24.912385','CUST000004',1),(69,1,'award','2025-07-04 10:27:31.529508','CUST000004',1),(70,2,'award','2025-07-05 06:05:26.474515','CUST000004',7),(71,2,'award','2025-07-05 06:06:29.802888','CUST000003',7),(72,1,'award','2025-07-21 09:43:07.169750','CUST000004',26),(73,2,'redeem','2025-07-21 11:23:52.152800','CUST000001',1),(74,2,'redeem','2025-07-21 11:24:33.443443','CUST000001',3),(75,1,'redeem','2025-08-05 10:18:26.343565','CUST000004',1);
/*!40000 ALTER TABLE `bopo_award_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_lastexpiryrun`
--

DROP TABLE IF EXISTS `bopo_award_lastexpiryrun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_lastexpiryrun` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_run` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_lastexpiryrun`
--

LOCK TABLES `bopo_award_lastexpiryrun` WRITE;
/*!40000 ALTER TABLE `bopo_award_lastexpiryrun` DISABLE KEYS */;
INSERT INTO `bopo_award_lastexpiryrun` VALUES (1,'2025-08-05');
/*!40000 ALTER TABLE `bopo_award_lastexpiryrun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_merchantpoints`
--

DROP TABLE IF EXISTS `bopo_award_merchantpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_merchantpoints` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `merchant_id` bigint NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_merchantp_merchant_id_ca1a5e94_fk_accounts_` (`merchant_id`),
  CONSTRAINT `bopo_award_merchantp_merchant_id_ca1a5e94_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_merchantpoints`
--

LOCK TABLES `bopo_award_merchantpoints` WRITE;
/*!40000 ALTER TABLE `bopo_award_merchantpoints` DISABLE KEYS */;
INSERT INTO `bopo_award_merchantpoints` VALUES (1,34151299,'2025-06-12 08:58:13.075728',1,'2025-08-06 17:41:36.356390'),(2,32,'2025-06-14 06:44:51.699059',2,'2025-07-04 11:11:54.398079'),(4,24,'2025-06-21 05:54:03.311851',3,'2025-07-21 11:24:33.442853'),(5,179,'2025-06-21 09:18:38.210392',7,'2025-07-04 04:55:27.890127'),(7,22,'2025-07-04 05:25:34.105555',20,'2025-07-04 05:25:34.383384'),(8,287,'2025-07-21 07:38:58.506585',26,'2025-07-21 10:00:05.534342');
/*!40000 ALTER TABLE `bopo_award_merchantpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_merchanttomerchant`
--

DROP TABLE IF EXISTS `bopo_award_merchanttomerchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_merchanttomerchant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `receiver_merchant_id` bigint NOT NULL,
  `sender_merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_award_merchantt_receiver_merchant_id_145a43eb_fk_accounts_` (`receiver_merchant_id`),
  KEY `bopo_award_merchanttomerchant_sender_merchant_id_f53c0d47` (`sender_merchant_id`),
  CONSTRAINT `bopo_award_merchantt_receiver_merchant_id_145a43eb_fk_accounts_` FOREIGN KEY (`receiver_merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_award_merchantt_sender_merchant_id_f53c0d47_fk_accounts_` FOREIGN KEY (`sender_merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_merchanttomerchant`
--

LOCK TABLES `bopo_award_merchanttomerchant` WRITE;
/*!40000 ALTER TABLE `bopo_award_merchanttomerchant` DISABLE KEYS */;
INSERT INTO `bopo_award_merchanttomerchant` VALUES (1,1,'2025-06-13 09:21:16.313038',1,1),(2,56,'2025-06-14 06:44:51.700944',2,1),(3,20,'2025-06-21 04:28:56.108391',1,2),(4,1,'2025-07-04 10:20:54.451031',1,1),(5,4,'2025-07-04 11:11:39.643092',2,1),(6,1,'2025-07-04 11:11:54.398658',2,1),(7,1,'2025-07-21 09:51:47.678018',1,26);
/*!40000 ALTER TABLE `bopo_award_merchanttomerchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_modelplan`
--

DROP TABLE IF EXISTS `bopo_award_modelplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_modelplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `plan_validity` varchar(255) NOT NULL,
  `plan_type` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_modelplan`
--

LOCK TABLES `bopo_award_modelplan` WRITE;
/*!40000 ALTER TABLE `bopo_award_modelplan` DISABLE KEYS */;
INSERT INTO `bopo_award_modelplan` VALUES (1,'62','Rental','It is a rental plan','2025-06-12 08:45:05.258581'),(2,'12','Prepaid','it is a prepaid plan','2025-06-12 08:45:31.080007');
/*!40000 ALTER TABLE `bopo_award_modelplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_paymentdetails`
--

DROP TABLE IF EXISTS `bopo_award_paymentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_paymentdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `paid_amount` int NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `plan_type_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `validity_days` int unsigned DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `bopo_award_paymentde_merchant_id_b3027dac_fk_accounts_` (`merchant_id`),
  KEY `bopo_award_paymentdetails_plan_type_id_f767e02d` (`plan_type_id`),
  CONSTRAINT `bopo_award_paymentde_merchant_id_b3027dac_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_award_paymentde_plan_type_id_f767e02d_fk_bopo_awar` FOREIGN KEY (`plan_type_id`) REFERENCES `bopo_award_modelplan` (`id`),
  CONSTRAINT `bopo_award_paymentdetails_chk_1` CHECK ((`validity_days` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_paymentdetails`
--

LOCK TABLES `bopo_award_paymentdetails` WRITE;
/*!40000 ALTER TABLE `bopo_award_paymentdetails` DISABLE KEYS */;
INSERT INTO `bopo_award_paymentdetails` VALUES (1,100,'TRAN987777','UPI',2,'2025-06-12 08:50:31.963697','2025-06-13 09:02:24.284338','rejected',360,'2026-06-08',1),(2,100,'TREN5666667','UPI',2,'2025-06-13 07:18:19.482282','2025-07-04 04:55:28.095288','approved',360,'2026-06-29',7),(3,50,'TRAN7988888','UPI',2,'2025-06-13 10:37:27.068434','2025-06-22 08:01:05.298167','rejected',360,'2026-06-17',2),(4,2,'TRAN9878887','UPI',2,'2025-06-13 10:38:37.837944','2025-07-05 05:02:20.954087','rejected',360,'2026-06-30',2),(5,222,'Gtvg5g5','Debit Card',2,'2025-06-20 11:35:16.493172','2025-07-05 05:03:53.892656','rejected',360,'2026-06-30',1),(6,825882,'Ctctccy','UPI',2,'2025-06-20 11:36:04.670565','2025-07-05 05:05:44.902470','approved',360,'2026-06-30',1),(7,33333333,'Gcygyguug','UPI',2,'2025-06-20 11:39:13.586514','2025-08-06 17:41:36.611136','approved',360,'2026-08-01',1),(9,22,'ACRAF23DB3C8','UPI',2,'2025-07-04 05:25:23.341158','2025-07-04 05:25:34.609292','approved',360,'2026-06-29',20),(10,100,'TRAID56777777','Credit Card',2,'2025-07-05 05:14:44.634625','2025-07-05 05:17:02.496605','rejected',360,'2026-06-30',1),(11,200,'TRID566777777','Credit Card',2,'2025-07-21 09:51:15.672658','2025-07-21 09:51:25.954072','approved',360,'2026-07-16',26);
/*!40000 ALTER TABLE `bopo_award_paymentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_award_superadminpayment`
--

DROP TABLE IF EXISTS `bopo_award_superadminpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_award_superadminpayment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `cashout_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `bopo_award_superadmi_cashout_id_e4883b31_fk_bopo_awar` (`cashout_id`),
  CONSTRAINT `bopo_award_superadmi_cashout_id_e4883b31_fk_bopo_awar` FOREIGN KEY (`cashout_id`) REFERENCES `bopo_award_cashout` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_award_superadminpayment`
--

LOCK TABLES `bopo_award_superadminpayment` WRITE;
/*!40000 ALTER TABLE `bopo_award_superadminpayment` DISABLE KEYS */;
INSERT INTO `bopo_award_superadminpayment` VALUES (1,'TTCNI009880800594','UPI','2025-06-13 05:26:44.232231',1),(2,'TTCNI009000800598','Credit Card','2025-06-13 10:26:02.585342',2),(3,'TTCNI029000880594','Credit Card','2025-06-13 10:26:24.049513',3),(4,'TTCNI029000800594','Debit Card','2025-06-13 10:28:41.631728',4),(5,'TTCNI6609880800594','Credit Card','2025-07-04 05:29:48.637298',6),(6,'TRID566777777','Credit Card','2025-07-21 10:02:54.322651',9);
/*!40000 ALTER TABLE `bopo_award_superadminpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_customertocustomer`
--

DROP TABLE IF EXISTS `bopo_customertocustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_customertocustomer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` double NOT NULL,
  `deducted_points` double DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `receiver_customer_id` varchar(25) NOT NULL,
  `sender_customer_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_customertocusto_receiver_customer_id_29fe9c69_fk_accounts_` (`receiver_customer_id`),
  KEY `bopo_customertocusto_sender_customer_id_c06c9d6b_fk_accounts_` (`sender_customer_id`),
  CONSTRAINT `bopo_customertocusto_receiver_customer_id_29fe9c69_fk_accounts_` FOREIGN KEY (`receiver_customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `bopo_customertocusto_sender_customer_id_c06c9d6b_fk_accounts_` FOREIGN KEY (`sender_customer_id`) REFERENCES `accounts_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_customertocustomer`
--

LOCK TABLES `bopo_customertocustomer` WRITE;
/*!40000 ALTER TABLE `bopo_customertocustomer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_customertocustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bopo_merchanttomerchant`
--

DROP TABLE IF EXISTS `bopo_merchanttomerchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bopo_merchanttomerchant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int unsigned NOT NULL,
  `deducted_points` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `receiver_merchant_id` bigint NOT NULL,
  `sender_merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bopo_merchanttomerch_receiver_merchant_id_796bd890_fk_accounts_` (`receiver_merchant_id`),
  KEY `bopo_merchanttomerch_sender_merchant_id_b3bf69b6_fk_accounts_` (`sender_merchant_id`),
  CONSTRAINT `bopo_merchanttomerch_receiver_merchant_id_796bd890_fk_accounts_` FOREIGN KEY (`receiver_merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_merchanttomerch_sender_merchant_id_b3bf69b6_fk_accounts_` FOREIGN KEY (`sender_merchant_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `bopo_merchanttomerchant_chk_1` CHECK ((`points` >= 0)),
  CONSTRAINT `bopo_merchanttomerchant_chk_2` CHECK ((`deducted_points` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bopo_merchanttomerchant`
--

LOCK TABLES `bopo_merchanttomerchant` WRITE;
/*!40000 ALTER TABLE `bopo_merchanttomerchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `bopo_merchanttomerchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_bopo_admin_bopoadmin_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bopo_admin_bopoadmin_id` FOREIGN KEY (`user_id`) REFERENCES `bopo_admin_bopoadmin` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-06-11 09:31:06.560138','CUST000001','Ramesh test',1,'[{\"added\": {}}]',38,1),(2,'2025-06-11 09:31:24.405627','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pin\"]}}]',38,1),(3,'2025-06-11 09:34:48.816876','CUST000002','Vishal Mane',1,'[{\"added\": {}}]',38,1),(4,'2025-06-11 09:36:22.526797','CUST000003','Manisha Shinde',1,'[{\"added\": {}}]',38,1),(5,'2025-06-11 09:37:55.046953','CUST000004','Harsh Mane',1,'[{\"added\": {}}]',38,1),(6,'2025-06-11 09:39:03.472826','CUST000005','Nilam Patil',1,'[{\"added\": {}}]',38,1),(7,'2025-06-11 09:42:02.119626','1','Demo Project',1,'[{\"added\": {}}]',37,1),(8,'2025-06-11 09:47:43.099776','1','Nishant',1,'[{\"added\": {}}]',40,1),(9,'2025-06-11 09:50:06.904359','2','Aarav',1,'[{\"added\": {}}]',40,1),(10,'2025-06-11 09:50:43.878624','2','Aarav',2,'[{\"changed\": {\"fields\": [\"Corporate id\"]}}]',40,1),(11,'2025-06-11 09:50:52.854757','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Corporate id\"]}}]',40,1),(12,'2025-06-11 09:53:18.724712','3','Mohit',1,'[{\"added\": {}}]',40,1),(13,'2025-06-11 09:56:44.123778','4','Varun',1,'[{\"added\": {}}]',40,1),(14,'2025-06-11 09:56:58.389795','4','Varun',2,'[{\"changed\": {\"fields\": [\"Plan type\"]}}]',40,1),(15,'2025-06-11 09:59:18.356267','5','Diya',1,'[{\"added\": {}}]',40,1),(16,'2025-06-11 10:01:24.394217','6','Sayali',1,'[{\"added\": {}}]',40,1),(17,'2025-06-12 07:26:20.112075','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Gender\"]}}]',40,1),(18,'2025-06-12 08:42:58.647506','1','10% of purchase amount awarded to customer',1,'[{\"added\": {}}]',21,1),(19,'2025-06-12 08:47:08.108021','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Age\"]}}]',40,1),(20,'2025-06-12 08:58:13.076308','1','MerchantPoints object (1)',1,'[{\"added\": {}}]',29,1),(21,'2025-06-12 10:10:52.663106','1','GlobalPoints object (1)',1,'[{\"added\": {}}]',26,1),(22,'2025-06-12 10:11:19.369299','1','GlobalPoints object (1)',3,'',26,1),(23,'2025-06-12 10:11:45.991302','2','GlobalPoints object (2)',1,'[{\"added\": {}}]',26,1),(24,'2025-06-12 11:02:13.632169','3','Mohit',2,'[{\"changed\": {\"fields\": [\"Plan type\"]}}]',40,1),(25,'2025-06-12 11:03:57.946468','2','CustomerPoints object (2)',1,'[{\"added\": {}}]',32,1),(26,'2025-06-12 11:34:56.320413','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Otp\", \"New mobile otp\", \"Temp pin\"]}}]',38,1),(27,'2025-06-12 12:21:57.455890','1','Notification: kkk (None)',3,'',11,1),(28,'2025-06-12 12:47:49.957795','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Plan type\", \"Status\", \"Verified at\"]}}]',40,1),(29,'2025-06-12 12:52:22.466384','3','Mohit',2,'[]',40,1),(30,'2025-06-13 04:47:40.244720','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(31,'2025-06-13 04:47:53.539222','2','Aarav',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(32,'2025-06-13 04:48:05.641339','3','Mohit',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(33,'2025-06-13 04:48:19.806515','4','Varun',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(34,'2025-06-13 04:48:33.502729','5','Diya',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(35,'2025-06-13 04:48:44.984385','6','Sayali',2,'[{\"changed\": {\"fields\": [\"Merchant id\"]}}]',40,1),(36,'2025-06-13 05:56:40.299948','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Otp\", \"Temp pin\"]}}]',40,1),(37,'2025-06-13 09:49:45.630191','1','30% of purchase amount awarded to customer',3,'',21,1),(38,'2025-06-13 09:50:51.869593','2','1% of purchase amount awarded to customer',1,'[{\"added\": {}}]',21,1),(39,'2025-06-13 09:51:09.330417','2','1% of purchase amount awarded to customer',3,'',21,1),(40,'2025-06-13 09:55:05.144447','3','5% of purchase amount awarded to customer',1,'[{\"added\": {}}]',21,1),(41,'2025-06-13 09:55:39.474383','3','10% of purchase amount awarded to customer',2,'[{\"changed\": {\"fields\": [\"Percentage\"]}}]',21,1),(42,'2025-06-13 10:47:19.479184','1','Nishant',2,'[{\"changed\": {\"fields\": [\"New mobile otp\"]}}]',40,1),(43,'2025-06-13 11:54:26.676219','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\"]}}]',38,1),(44,'2025-06-14 05:30:58.849132','1','CustomerPoints object (1)',2,'[{\"changed\": {\"fields\": [\"Points\"]}}]',32,1),(45,'2025-06-16 04:48:37.700259','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\", \"Otp\", \"Temp pin\"]}}]',38,1),(46,'2025-06-16 05:10:18.477616','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\"]}}]',38,1),(47,'2025-06-20 05:21:43.365905','1','MerchantPoints object (1)',2,'[]',29,1),(48,'2025-06-20 06:37:12.755005','3','Mohit',2,'[{\"changed\": {\"fields\": [\"Security question\", \"Answer\"]}}]',40,1),(49,'2025-06-20 06:37:25.445461','3','Mohit',2,'[]',40,1),(50,'2025-06-20 07:47:22.914328','2','Aarav',2,'[{\"changed\": {\"fields\": [\"Plan type\"]}}]',40,1),(51,'2025-06-20 07:53:03.783978','2','Aarav',2,'[{\"changed\": {\"fields\": [\"Aadhaar number\"]}}]',40,1),(52,'2025-06-21 05:48:00.272223','3','GlobalPoints object (3)',1,'[{\"added\": {}}]',26,1),(53,'2025-06-21 05:54:03.312638','4','MerchantPoints object (4)',1,'[{\"added\": {}}]',29,1),(54,'2025-06-21 06:00:24.998491','8','Aishwarya',2,'[{\"changed\": {\"fields\": [\"Plan type\", \"Gender\", \"Project name\"]}}]',40,1),(55,'2025-06-21 06:01:52.122253','8','Aishwarya',2,'[{\"changed\": {\"fields\": [\"Plan type\"]}}]',40,1),(56,'2025-06-21 06:11:02.892778','8','Aishwarya',2,'[{\"changed\": {\"fields\": [\"Plan type\"]}}]',40,1),(57,'2025-06-21 06:36:36.487464','3','Mohit',2,'[{\"changed\": {\"fields\": [\"Shop name\"]}}]',40,1),(58,'2025-06-21 06:49:45.414917','8','CustomerPoints object (8)',2,'[{\"changed\": {\"fields\": [\"Points\"]}}]',32,1),(59,'2025-06-21 08:53:44.080156','7','Akash',2,'[{\"changed\": {\"fields\": [\"Plan type\", \"Gender\", \"Status\"]}}]',40,1),(60,'2025-06-21 09:18:02.885536','7','CustomerPoints object (7)',2,'[{\"changed\": {\"fields\": [\"Points\"]}}]',32,1),(61,'2025-06-21 09:18:38.210923','5','MerchantPoints object (5)',1,'[{\"added\": {}}]',29,1),(62,'2025-06-21 09:19:09.499530','9','CustomerPoints object (9)',1,'[{\"added\": {}}]',32,1),(63,'2025-07-03 07:26:46.222125','7','CashOut object (7)',1,'[{\"added\": {}}]',24,1),(64,'2025-07-03 11:26:51.936531','3','MerchantPoints object (3)',3,'',29,1),(65,'2025-07-04 04:55:58.527451','8','PaymentDetails object (8)',1,'[{\"added\": {}}]',30,1),(66,'2025-07-04 04:58:28.470199','8','PaymentDetails object (8)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',30,1),(67,'2025-07-04 04:59:42.106887','8','PaymentDetails object (8)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',30,1),(68,'2025-07-04 05:15:53.100835','19','TestM',2,'[{\"changed\": {\"fields\": [\"Gender\", \"Security question\", \"Project name\"]}}]',40,1),(69,'2025-07-04 05:16:12.105673','19','TestM',2,'[{\"changed\": {\"fields\": [\"Security question\"]}}]',40,1),(70,'2025-07-04 05:18:06.892608','19','TestM',3,'',40,1),(71,'2025-07-04 05:19:23.660223','6','dddd',3,'',13,1),(72,'2025-07-04 05:19:23.660309','5','xsad',3,'',13,1),(73,'2025-07-04 05:25:23.341866','9','PaymentDetails object (9)',1,'[{\"added\": {}}]',30,1),(74,'2025-07-04 05:26:19.670746','18','Help Request - Riya Patil / Test / None',1,'[{\"added\": {}}]',27,1),(75,'2025-07-04 06:12:48.993768','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\"]}}]',38,1),(76,'2025-07-04 06:13:58.763238','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\"]}}]',38,1),(77,'2025-07-04 06:16:46.448214','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Mobile\"]}}]',38,1),(78,'2025-07-04 06:20:28.520644','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Aadhaar number\"]}}]',38,1),(79,'2025-07-05 05:28:32.740503','1','Nishant',2,'[{\"changed\": {\"fields\": [\"Plan type\", \"Gst number\", \"Pan number\"]}}]',40,1),(80,'2025-07-10 09:37:47.361060','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pincode\"]}}]',38,1),(81,'2025-07-10 17:24:38.835116','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pincode\"]}}]',38,1),(82,'2025-07-11 04:47:37.105688','18','Darshal',2,'[{\"changed\": {\"fields\": [\"Age\"]}}]',40,1),(83,'2025-07-11 04:48:47.184542','20','Test',2,'[{\"changed\": {\"fields\": [\"Gender\", \"Aadhaar number\", \"Project name\"]}}]',40,1),(84,'2025-07-11 09:40:16.256170','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pincode\"]}}]',38,1),(85,'2025-07-11 09:40:50.244287','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pincode\"]}}]',38,1),(86,'2025-07-11 11:03:31.296995','CUST000001','Ramesh test',2,'[{\"changed\": {\"fields\": [\"Pincode\"]}}]',38,1),(87,'2025-07-21 05:54:28.071537','1','Terminal object (1)',2,'[{\"changed\": {\"fields\": [\"Is admin\"]}}]',41,1),(88,'2025-07-21 07:38:58.507896','8','MerchantPoints object (8)',1,'[{\"added\": {}}]',29,1),(89,'2025-07-21 09:17:21.023515','36','Terminal object (36)',1,'[{\"added\": {}}]',41,1),(90,'2025-07-21 09:45:55.772833','3','Rental - 3 ',3,'',22,1),(91,'2025-07-21 11:08:48.894868','8','BankDetail object (8)',3,'',23,1),(92,'2025-07-21 11:54:36.569968','37','Terminal object (37)',1,'[{\"added\": {}}]',41,1),(93,'2025-07-21 11:58:33.447487','2','Terminal object (2)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(94,'2025-07-21 11:59:11.657811','3','Terminal object (3)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(95,'2025-07-21 12:03:58.710834','6','Terminal object (6)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(96,'2025-07-21 12:04:51.370975','7','Terminal object (7)',3,'',41,1),(97,'2025-07-21 12:05:25.299345','11','merchant',3,'',40,1),(98,'2025-07-21 12:06:08.223355','8','Terminal object (8)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(99,'2025-07-21 12:07:28.070533','9','Terminal object (9)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(100,'2025-07-21 12:09:07.503939','15','Terminal object (15)',3,'',41,1),(101,'2025-07-21 12:09:07.503981','14','Terminal object (14)',3,'',41,1),(102,'2025-07-21 12:09:24.405156','21','Testcop',3,'',40,1),(103,'2025-07-21 12:19:41.181655','34','Terminal object (34)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(104,'2025-07-21 12:37:22.841677','4','Terminal object (4)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(105,'2025-07-21 12:40:08.506089','13','Terminal object (13)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(106,'2025-07-21 12:40:32.712765','19','Terminal object (19)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1),(107,'2025-07-21 12:40:48.133938','21','Terminal object (21)',2,'[{\"changed\": {\"fields\": [\"Tid pin\", \"Is admin\"]}}]',41,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (37,'accounts','corporate'),(38,'accounts','customer'),(39,'accounts','logo'),(40,'accounts','merchant'),(41,'accounts','terminal'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(35,'bopo','customertocustomer'),(36,'bopo','merchanttomerchant'),(6,'bopo_admin','accountinfo'),(17,'bopo_admin','bopoadmin'),(19,'bopo_admin','city'),(7,'bopo_admin','deductsetting'),(8,'bopo_admin','employee'),(18,'bopo_admin','employeerole'),(9,'bopo_admin','merchantcredential'),(10,'bopo_admin','merchantlogin'),(11,'bopo_admin','notification'),(12,'bopo_admin','reducelimit'),(13,'bopo_admin','securityquestion'),(14,'bopo_admin','state'),(20,'bopo_admin','topup'),(15,'bopo_admin','uploadedfile'),(16,'bopo_admin','userbalance'),(21,'bopo_award','awardpoints'),(23,'bopo_award','bankdetail'),(24,'bopo_award','cashout'),(32,'bopo_award','customerpoints'),(25,'bopo_award','customertocustomer'),(26,'bopo_award','globalpoints'),(27,'bopo_award','help'),(28,'bopo_award','history'),(34,'bopo_award','lastexpiryrun'),(29,'bopo_award','merchantpoints'),(33,'bopo_award','merchanttomerchant'),(22,'bopo_award','modelplan'),(30,'bopo_award','paymentdetails'),(31,'bopo_award','superadminpayment'),(4,'contenttypes','contenttype'),(43,'qr_store','qrstore'),(5,'sessions','session'),(42,'transaction_history','transactionhistory'),(44,'transfer','transfers');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-31 06:12:13.500625'),(2,'contenttypes','0002_remove_content_type_name','2025-05-31 06:12:18.508161'),(3,'auth','0001_initial','2025-05-31 06:12:34.522603'),(4,'auth','0002_alter_permission_name_max_length','2025-05-31 06:12:38.622479'),(5,'auth','0003_alter_user_email_max_length','2025-05-31 06:12:38.884076'),(6,'auth','0004_alter_user_username_opts','2025-05-31 06:12:39.367734'),(7,'auth','0005_alter_user_last_login_null','2025-05-31 06:12:39.676541'),(8,'auth','0006_require_contenttypes_0002','2025-05-31 06:12:39.930215'),(9,'auth','0007_alter_validators_add_error_messages','2025-05-31 06:12:40.200209'),(10,'auth','0008_alter_user_username_max_length','2025-05-31 06:12:40.401902'),(11,'auth','0009_alter_user_last_name_max_length','2025-05-31 06:12:40.676846'),(12,'auth','0010_alter_group_name_max_length','2025-05-31 06:12:41.304957'),(13,'auth','0011_update_proxy_permissions','2025-05-31 06:12:41.610533'),(14,'auth','0012_alter_user_first_name_max_length','2025-05-31 06:12:41.926630'),(15,'accounts','0001_initial','2025-05-31 06:12:54.013084'),(16,'bopo_admin','0001_initial','2025-05-31 06:14:05.208941'),(17,'accounts','0002_initial','2025-05-31 06:14:52.837484'),(18,'accounts','0003_rename_security_question_fk_customer_security_question_and_more','2025-05-31 06:15:23.094249'),(19,'accounts','0004_customer_temp_pin_merchant_gender_merchant_temp_pin_and_more','2025-05-31 06:15:40.375933'),(20,'accounts','0005_customer_fcm_token','2025-05-31 06:15:45.366404'),(21,'accounts','0006_merchant_fcm_token','2025-05-31 06:15:51.516649'),(22,'admin','0001_initial','2025-05-31 06:16:03.597635'),(23,'admin','0002_logentry_remove_auto_add','2025-05-31 06:16:03.857657'),(24,'admin','0003_logentry_add_action_flag_choices','2025-05-31 06:16:04.224422'),(25,'bopo','0001_initial','2025-05-31 06:16:25.129641'),(26,'bopo_admin','0002_alter_notification_customer_id_and_more','2025-05-31 06:16:56.195164'),(27,'bopo_admin','0003_remove_deductsetting_deduct_percentage_and_more','2025-05-31 06:17:17.141869'),(28,'bopo_admin','0004_remove_notification_customer_id_and_more','2025-05-31 06:17:49.638865'),(29,'bopo_admin','0005_notification_is_read','2025-05-31 06:17:53.312278'),(30,'bopo_admin','0006_bopoadmin_city_bopoadmin_email_bopoadmin_mobile_and_more','2025-05-31 06:18:17.770369'),(31,'bopo_award','0001_initial','2025-05-31 06:20:31.950763'),(32,'bopo_award','0002_alter_awardpoints_percentage','2025-05-31 06:20:32.201486'),(33,'bopo_award','0003_lastexpiryrun_merchantpoints_updated_at_and_more','2025-05-31 06:20:51.225940'),(34,'bopo_award','0004_cashout_paid_at_cashout_status_help_remark','2025-05-31 06:21:03.205558'),(35,'qr_store','0001_initial','2025-05-31 06:21:13.597316'),(36,'sessions','0001_initial','2025-05-31 06:21:16.620343'),(37,'transaction_history','0001_initial','2025-05-31 06:21:28.663572'),(38,'transfer','0001_initial','2025-05-31 06:21:39.869688'),(39,'bopo_admin','0007_notification_type','2025-06-17 06:37:50.947838'),(40,'accounts','0007_corporate_last_updated_at_merchant_last_updated_at_and_more','2025-06-27 10:28:20.245463'),(41,'bopo_admin','0008_bopoadmin_has_twilio_subscription','2025-06-27 10:28:22.001478'),(42,'bopo_award','0005_alter_bankdetail_ifsc_code_and_more','2025-06-27 10:28:30.591903'),(44,'bopo_award','0006_alter_merchanttomerchant_unique_together','2025-07-03 07:58:50.657336'),(45,'accounts','0008_remove_customer_aadhar_number_and_more','2025-07-21 04:33:12.777166');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('149l3wl02z2ghhywu456cjse4rl7w470','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uaDOP:xXbnU3i-pY3rP5loHPco9RaxbK1iqf8GOxmF91bBNbA','2025-08-10 13:02:21.095441'),('16lscoz29jltawu7sdjqdsfkfh1nvvs5','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uQ0ef:CboBHMUDuXezqL2ymfWTjw_eM3N83F3uPMujvftugRg','2025-07-13 09:24:57.939724'),('1b1ylzcb6k0c6mohrfaj4r89pou6u9de','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uSUAG:XvYYLT7_RRFRsP0dc7xjypipoYTH0VFrHnF6PaflZRo','2025-07-20 05:19:48.935669'),('1hnbml6lqps0up3xykbk9zoeu8m91jc3','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ud5wT:KKCPIe15G0eRnP_sgUkPrYcecczsQW2cRW8rMIF1g28','2025-08-18 11:41:25.120492'),('27949i28omgvzsfjyob37qqdlpl4pp7s','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uWwCM:_jcCyITlmV1_NLfp0qEHpsjzY_TZSICVVML5PwqJi0g','2025-08-01 12:04:22.701991'),('3p9mgeacvhqkp1x6u3novt8ns1l1t95u','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ubzZT:1E4tVOPjLbyx9uzpywD9Chclj1qJJ2TdupVBVIuANhg','2025-08-15 10:41:07.632449'),('3srz9ygrhimb9mbpb9gye45xn28dgetr','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uLO5x:Whp6XWq7wbk7hMSAjpgEMNR49G_cwYDwbW5YSonsPR4','2025-06-30 15:26:01.882099'),('3vvswaictp574ftdnm9doisg1zgo7oho','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uWuua:iDgdoaBCcV96yBcFGXYmJBwxaC8g8CsSt3yIWKYQm-k','2025-08-01 10:41:56.791531'),('51j218vl3kbmf0l3ef69mj8lzhrthq53','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPgmm:q043yJm8lI_xD_aqCHuOS1XoNAfLKMCt_ExZ4xrmlnU','2025-07-12 12:12:00.633432'),('54v8c77kwydc5lu34hlht81v47l7jwif','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPvt3:sRT4ZMrvKiqD82laRXrD__bTejqLFwBDOfSuTRJFWK4','2025-07-13 04:19:29.135233'),('5gnlaqlswztuo58or3scihurouhfbbd8','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uR7FM:inmAiPyJrOOybgkszG72lGDKwx58ZpxDQq1fcNf9lvw','2025-07-16 10:39:24.330972'),('5o2ta7zkh236v0yfyt8t9gae7acaizp4','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPgao:mk1yqdi6HoJnQj38j_gO0XVkO3s5wHl4z4PeyYDwyj0','2025-07-12 11:59:38.728584'),('6g5mnw2iuvwsn67z17m92lvxzv469me7','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXG6X:10JiU58WpOGl8lRyflfxKNQjBYKegUgAICDZYAQEjTs','2025-08-02 09:19:41.811060'),('6kkhprpvb4b2disew7o3clqubykcml2b','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRNq9:qD2ntHH37YdOcNl46JxjuLwAm8e3zbU-1DZeyt_rC44','2025-07-17 04:22:29.316166'),('6ql2s1sjnll71fvat63hvdj0iweu7tba','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRlA2:9Az-YWIpz1Z-iXlJYYiUlLhZsVhJP5GVr3GemnZ2fX8','2025-07-18 05:16:34.295183'),('7lswnpiqevcmaoajynl5qcz6zj9n8azh','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPHv6:Hp8xH1uU0ZRvQutGugEJVur3NV0HXjLKFsj6r5ySeG0','2025-07-11 09:38:56.950785'),('7xqptw7j57kt61tpb5ab8gg0ntspiwxn','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPh1u:TdEtKKsLeWpinzGrbRALI9qoxMaXI3orGFlX4plLclY','2025-07-12 12:27:38.964100'),('8i7p2a7l3gw242smeh4wtw5omq7dv9pq','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPz9E:PRX_LG1dy6xuJTRIIUFS7lochRazMCCNSsRoLOPY3Rk','2025-07-13 07:48:24.577705'),('8utzyeptr3x6uwswgjb8lur81ejm0acy','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRQNb:ozXR_sMXTri2HbVK2kAAVx7WEFFkERMj0t5s7FSbATU','2025-07-17 07:05:11.854240'),('8vhjz36grm7qq5rq61haenozoyi9ojan','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uQMTd:pZIKf1Iwgmp2oSH3EnSDNxqzRG1VtTiohnqR1v7lUyo','2025-07-14 08:43:01.940891'),('9r5qxkfonl65gidj3cwehma5fnx44d68','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXvT0:jpwqky8YpkWjLLX60zWFOmGtURkGQvX9geKl6lug8gA','2025-08-04 05:29:38.470946'),('am97rnt25j7y548zzzm3hj5ro6d3wxzd','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uVv2B:aG7fYix19V1Cb4aRYe_2RZg2QrKYEycTfjYOJItqFwE','2025-07-29 16:37:39.260055'),('amo9sud1pb79r1qp4x379ydm1de7a6l6','.eJxVjU0OwiAUhO_CuiGAQMGle89AHvBq8Qea0iY2xrvbmi50OTPfzLyIg3nq3VxxdCmSI-Gk-fU8hBvmLYhXyJdCQ8nTmDzdELqnlZ5LxPtpZ_8Geqj92m6V1yp2GhiGqDiPYJlnwbZWQMeM56blVgYEbs3B8CiDlV5rw6QWyIXfRivWmkp2-BzSuJCjUFYwxhryPZqWAdejOg-rgPhImbw_9ihJRg:1ujaXX:8I1wjXIa5-jKr3YjQ6_w7uPKHxueB6QQlpskjg7M04A','2025-09-05 09:34:31.166850'),('b01kosyhjbwmb0sfk9tpsw0e14fkaolr','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uOvsx:RFhy3HjxMD8GAX-0843HTUxjK3hytS_NqOCwMsEB6wM','2025-07-10 10:07:15.360539'),('bx5wuvh14wn9g1lzifnptmd7uy827h6j','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRONX:7lukG5XeGPBpdMLrK4DA6w_AaZeZofO7u1o3P-XK1Gc','2025-07-17 04:56:59.893296'),('bzpjmlemlfqr43q6p584l0xy1365dp5h','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ujsMG:P9uKSwQPHYRGWqzl1ggBvCs9FzyPXUZU0Pioelk62VY','2025-09-06 04:36:04.408650'),('cmmwx4kokn2yd1g9hs7abtnvswqgimos','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRU3d:Iap0QHic-QNs-mf7t0YE2u4E0D3VR3CiVNaqkfzfC6U','2025-07-17 11:00:49.150791'),('cy3zhv08gm3d922qs8eguuqcg8vo17sx','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1udjNU:t2a_qJlCHScEe2VzKkmAk13ZoRASX4PTGDscRZXOq7Q','2025-08-20 05:47:56.079788'),('d0n0svpfrfe44wzwylybzj68uecw8e6e','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPh0O:IAiQcYKnzcDzl6M4hoZbnJrm5k6_7xGa_fPKRFCDe4c','2025-07-12 12:26:04.771398'),('ddaezflll0mea0jxbuhedtb5zzekzlv9','e30:1uLKH8:cmmI9MmRD2BxeP4YyrdJD_UADFIRaOmvCTh1Z9_ve2I','2025-06-30 11:21:18.049325'),('dkzv81n3bxqbcgherjw1y2ixw4y1f8ae','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ujaAr:8v1ioAvnuQDHJpmHlFmkXDOeKnT8cnXNo8JHKz0fxcM','2025-09-05 09:11:05.051455'),('ep4u3p9ev80iremxa4vadp14pl0u5n4g','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uSpWL:J0f7lnBfPaxRiaIfQIPOCfvG_3gr-Hi5SKeDSouv_30','2025-07-21 04:08:01.950002'),('ey8neuwizdvjm26rhycfef4wodp6ncqk','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uR666:8BQR7kvDheLJTTM6Gs8JXGoxywIWISaW3UxeXUwMuKI','2025-07-16 09:25:46.458576'),('f5d1m17qp16yixkls4394arev1avzq60','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uSVLM:o5hNbWkXUHh2_HRzJo1ORpBl4XMDtjpU81zocMbwXjY','2025-07-20 06:35:20.097333'),('f69cbh4mtzs2cx1v61pnv7ubpmtn2q02','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ugbUZ:e7GX879NXihepp9pjeDAJ_4wC5sOAx-1l7nIqwQMzSQ','2025-08-28 03:59:07.167004'),('f70pniqhenn3lkr2mztp97b0rnwb7di1','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uSpdj:Oyoe1X03BQviO-HatHo_Ovwe2kb6acRo76kR18ukdqQ','2025-07-21 04:15:39.155326'),('fi5zkdkj1zl1bw0ma2iz270cp6haans4','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uSsbJ:kJ6pF4RHT7DMxkYOl7BBzGTS_MYuvbeHaiVahVE0TiE','2025-07-21 07:25:21.804019'),('gg1msbxw3cr69jo1od0vm491prhdg7fw','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ubDox:fTVrl2pqowJ3LEnRVxZA9OmatAZPNh5c2b5-Ff9sBpQ','2025-08-13 07:41:55.867727'),('gj3qsczh7s9lr9rqqj3j1rtd7ck3mt24','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uWzu5:-QSpCY33uC0N1BWNQn9f2miB61GQQh5hyLphM4Mx_WY','2025-08-01 16:01:45.771980'),('gullyne0qn7jh08f48fw0debnabufcb0','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uV7HK:7TrWdZOqhDpQxXLvVj_FVJNcC45Vox2plyEvfDnIX1c','2025-07-27 11:29:58.225705'),('h2694gbxceabpezo9ft6vtzrljxdsba3','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPaaE:oRE8Ma8MkX3Xch3R0DACbLR5b-G5-rdFKSzInwASLSs','2025-07-12 05:34:38.055079'),('h7301d9usuybnlrd8px6eopuokhfdhvm','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uaRYd:tPaV7fIsbzlvDnUzhx3oH_dYq4ogN-EtzaJZphrTGC8','2025-08-11 04:09:51.854030'),('hmysr8o6od17bt5393w4yyxopmrazrs8','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uZMkb:14F6BTn8j4PbIPALHAjax62HoPQrOhDw9ERe_xAN4vA','2025-08-08 04:49:45.644972'),('iqmx4cevpypwhtnkkv8p09vd36t1l805','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ujIBZ:MQ1HmX4iebutqxHI41tiQdYpYrha3NegBHmxKXL9YA4','2025-09-04 13:58:37.418075'),('j5mukp55hsr3xm9ojy9358dt4e51h592','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uR1hS:SZZo_C3HRMfVLo3AWGEPC_Qh4T3Fqe_n7KZlHg2udTA','2025-07-16 04:44:02.459858'),('jc0kqdxr8oncl1zwp49k8jg1dlb0u93u','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXFvs:24sL31nDP8wwjtLAllnwvXIHYVxTGYY3B3BxOj0mLfY','2025-08-02 09:08:40.332818'),('jrlazgypog3zrr9560v1t7d0n36utm8s','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uQIJB:vwZf3njWmY2oRGg9J9HCmYVB_3T4fO7QpZrqQteEGGQ','2025-07-14 04:15:57.112248'),('jy2my58l6qdh4f657d2w1yhtdywzsuwx','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRPxv:dmREFZZJ1rq6NQ_EXl9v56Z_s4zCwEjhTsAX9dM6DY0','2025-07-17 06:38:39.339671'),('jzpnzeihr8ks1yfgpef9u0bsgb4uvoyh','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPgkV:Qh32jjQIX7KwSOSHiphsQ7IkWqAZ3YqUh8_cm-K5Iis','2025-07-12 12:09:39.911860'),('mqelmx77dl9k5dnehrn71h6twjsqg0w2','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1udhvG:-2zGONUpU5twM7YvjopFznAMKOFvpnOAOq-uC38d9k0','2025-08-20 04:14:42.136813'),('muc75nxzbkogdghppw3npqy9exje3pl4','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uZuGE:WRg06xB6ZCbFyCZE7CwfYTdu5MOfCPxHxs9EE4OfdmE','2025-08-09 16:36:38.479446'),('n917pnjumcj0ghbf3fjq83ct8jhthst6','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPdTd:2U_6y1nQaVdAfnSFuS94n1l9MwoCEdeBfJa7zQ1nLBI','2025-07-12 08:40:01.728842'),('nba104m7s9yu8gn5xjfo5oasuk8fhkqc','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uYdKN:5FQ2XVV94Jwb204XchxR6j-xNX5n3hFFSkO5k-ecbg0','2025-08-06 04:19:39.451484'),('nn5csc2wcs8n8a1qmqf6nvwh27cd1bfb','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPgij:UL_fGXlKALHowXaUgXhG7SmNPeb59TiylsumquwsaSA','2025-07-12 12:07:49.146833'),('nqrbes9wgkbmeese4687zc1byrf5p6w7','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ujals:IZBOyz_jdW91E3P7CdWTace4m4178RLyHSW2b_fxwoY','2025-09-05 09:49:20.868236'),('o22qkz2h59wn36ylu66qpczht5p4tiil','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXxWK:Rf-2iCp_0SemlM1BMRwvBeyghlVFr8d6ZvVFvbPCqjI','2025-08-04 07:41:12.963352'),('ql0xsxkca66vjoyut6fa19ywht3n16c3','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uQ3Yb:PaIqUyJQQ1J4PQt7oEOI85uoop_EB46JAEixdIZVdOg','2025-07-13 12:30:53.730881'),('qp3c4yv7bzlg5m8f6tt9pxeudttd9cam','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uZniG:Wr8qbXNMEEbFA93B-VNm5BFe2N-ET_R9Do0Uo5SiOQA','2025-08-09 09:37:08.656113'),('qs96o86f5wzj3dqkv7vaip6nn2zqdscg','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uZ6I4:6KvbZUj1pYCAWTPrn4T-NU1m6DFYEqaepyR8SHQU37I','2025-08-07 11:15:12.168022'),('r7kb5dpgq109ky6f8iewx9hnuhblpart','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPHj4:twSslabvD9mqRBMMW6zCOz0c6pwAigp4eI_Zw8qtLuw','2025-07-11 09:26:30.297614'),('rbyjxi6h51n12rnbdqp9jyqxgdvk0c05','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uTYlG:0-YdpzcDh2aWnOt0CSBMFdj77-8F6Az0PNhkIST4Zrg','2025-07-23 04:26:26.464774'),('rgtopwvdrk9x799s138zcazw9nb31756','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXHlp:hK1WjtPa0voO0yRa-zTU-7URzR4yXrGqRJrL8ID6y_8','2025-08-02 11:06:25.153179'),('rku4ghy3yuvos0elgnuex5t26ru3mteg','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ua5SS:e8wDLrsObs2jlygqVsPynw-5x62vFVBerQnKNHMaLg8','2025-08-10 04:34:00.747775'),('rq0olx7rgmvqqxtynb3dob1uztn4th3n','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXYSM:RdbDkFrCsUgI6NmnRtTB7Pqs-R95HtfCCMir3BSG52Y','2025-08-03 04:55:26.142872'),('s0v569fzykeyttfmfnmyh4fnvkh5gczb','.eJxVjc0OgyAQhN-FszGAouCx9z6D2YWl0h8woklN03evNh7a48x8M_NiPSzz0C-Zpj441jHBil8Pwd4o7oG7Qryk0qY4TwHLHSmPNJfn5Oh-Oti_gQHysLWVb6yzAqpWeakVgjNoiITlHr1SpFsA8kZV3hjZouZIwmOjUGNb18Lvo5lyDin29BzDtLJOKiM55wX7Hs3rSNtRXsZNgHuEyN4feXJK3Q:1uV7QQ:byae4uqs37N7qIv11Ent23NYZTUDXVza30L3p1s-aKw','2025-07-27 11:39:22.828443'),('s7x6a623joxgeso0birihr5pl5ht3s6i','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ujaJK:OJj-r-L44f4TSz0J3KGaSIztym5Ao_NUzRyJItfZzC8','2025-09-05 09:19:50.489266'),('sccwlf00b8nieib319xzqaepy7dz4san','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPZfn:PSctpVxcQZmDER3Y_eKXHoxVUkDHPghOZrLkQoI-ptM','2025-07-12 04:36:19.397562'),('suh6gf6hvbyyfjd83gk2l4fqxatemk4m','.eJxVjc0OgyAQhN-FszGAouCx9z6D2YWl0h8woklN03evNh7a48x8M_NiPSzz0C-Zpj441jHBil8Pwd4o7oG7Qryk0qY4TwHLHSmPNJfn5Oh-Oti_gQHysLWVb6yzAqpWeakVgjNoiITlHr1SpFsA8kZV3hjZouZIwmOjUGNb18Lvo5lyDin29BzDtLJOKiM55wX7Hs3rSNtRXsZNgHuEyN4feXJK3Q:1uTFcJ:0vyGSaPktZP3Vsc5nFHQbmcOCumnZXdAFBfkSjbjoWQ','2025-07-22 07:59:55.198525'),('tmj3lq1bm0eb92vwvu6d1ecw2viez5po','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPh8g:HohNMgkafUEzmWAYxpuso-AcDSpUsz7Gwd-3bRnaYG4','2025-07-12 12:34:38.729108'),('tncs5snrx8sndgr95zsi8rblyumbv2ic','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPh9i:xDNWPKTUQeVGArG1jj74e88nm3qCZcpbQz8MxZuDuCg','2025-07-12 12:35:42.099184'),('u670w4g32hhmbaif5dy8gj1nse9h43qx','.eJxVjc0OgyAQhN-FszGAouCx9z6D2YWl0h8woklN03evNh7a48x8M_NiPSzz0C-Zpj441jHBil8Pwd4o7oG7Qryk0qY4TwHLHSmPNJfn5Oh-Oti_gQHysLWVb6yzAqpWeakVgjNoiITlHr1SpFsA8kZV3hjZouZIwmOjUGNb18Lvo5lyDin29BzDtLJOKiM55wX7Hs3rSNtRXsZNgHuEyN4feXJK3Q:1uPzNn:5A1yy76IP8pM7IzT3IfcYTFqKn_cQPlVp1GB83BZMB8','2025-07-13 08:03:27.869502'),('ug1jggfkvxhgj1akbl0jbu3zuila9leq','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uiplN:mYVMzv4qcL2pSzJeAsOEj6FW71UAR3ht34ZDiEpR8D4','2025-09-03 07:37:41.620344'),('us5vwk4zzmwnt4sn57yig53mao1fabxq','e30:1uXZ4q:uMTC8bj1kt0gWcYtMdPr6s5GyBTYq-0ixVJ_RWAOyrs','2025-08-03 05:35:12.901872'),('v4aptf4t5fczdi6munbnw5t21u2v5l55','.eJxVjc0OgyAQhN-FszGAouCx9z6D2YWl0h8woklN03evNh7a48x8M_NiPSzz0C-Zpj441jHBil8Pwd4o7oG7Qryk0qY4TwHLHSmPNJfn5Oh-Oti_gQHysLWVb6yzAqpWeakVgjNoiITlHr1SpFsA8kZV3hjZouZIwmOjUGNb18Lvo5lyDin29BzDtLJOKiM55wX7Hs3rSNtRXsZNgHuEyN4feXJK3Q:1uPaEZ:xWgMR9nThH4xmmrao-nZqzhPXG283p919QkQ6EnX9F0','2025-07-12 05:12:15.417027'),('v9io3kpa13fuhtr7bfu1z01oa6d64bn1','.eJxVjc0OgyAQhN-FsyEgWKvH3vsMZFnWSn-AiCY1Td-92Hhob7Pzzc68mIFlHs2SaTLesZ5JVv16FvBGYQPuCuESOcYwT97yLcJ3mvk5Orqf9uxfwQh5LN_C1oPEQyuPbkDdoia0CgdVlGhqQYBUMJGSNShA0UkLTau1kNpp13VbaaacfQyGnslPK-tFxb4T85qoTOQllQPcwwf2_gCaZEjk:1uXD5K:wdN75zHqlhzgTDHudry7Pc5uVUYHTxCwRNvVaPtpMLQ','2025-08-02 06:06:14.161905'),('vpe5gxjwjg3zt465ze9zv6a9mb3j0mtt','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1uXZCZ:KtJcsXT-YEi5WW6Z9UbP3tgZbWh1RgMf3azDZoF-egY','2025-08-03 05:43:11.929043'),('wcteoplnf2hb62ms7f0zo6hfe3ze9ohh','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uRW6f:qqaGCabzOIHJJQd9fAVZXONMbuP60gwoijyuqz_hjJ4','2025-07-17 13:12:05.591879'),('wi1tdn6wk04fedcazfkdr66bm7zc5y92','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uLKH9:weyUcTpFJ_e9cFZIblGa6QLB6hoAWB2KPOGRrBJ2qys','2025-06-30 11:21:19.291442'),('wt6un6if91elsau33hbd8v2no47sy1ed','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uROcK:ur0duUSBVPGnArSHvPWDe9uQgG5rUNatddl6sx1PD6Q','2025-07-17 05:12:16.618555'),('y1bfhgsxbeck7fs0kihwvhjt6c5t2h18','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPwJx:x06qQ630iY0kAYxKNHzFaUcHZwy5M0gZnSgsQmMfLF8','2025-07-13 04:47:17.195606'),('y4xxzwsozcqjm8uzkksrhq3554iq27jx','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uR1iN:dF4AQM7vjFlAm4CR-1mcSZ8N6mAicKqeGy8fxWsdj1o','2025-07-16 04:44:59.505146'),('yxmep2fmdnnl142bdzbxz66izezo1t0d','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uPcUU:Zx5gpsilqVnDw8AH0EN7wklJznH5CY2aPACvEXDQCzc','2025-07-12 07:36:50.460582'),('z2i3mwtn42t0jbrw80uflz6824u7221t','.eJxVjc0OgyAQhN-FszGiIuCx9z4D2YWl0h8woklN03evNh7a48x8M_NiBpZ5MEumyQTHesZZ8esh2BvFPXBXiJdU2hTnKWC5I-WR5vKcHN1PB_s3MEAetrbwnXWWQyOFr5VAcBo1EbeVRy8EKQlAXovGa11LVBUS99gJVCjblvt9NFPOIUVDzzFMK-urgn0v5nWk7SIv4ybAPUJk7w_WB0mr:1uV7QV:SiUmV8Y2I7GboerNuSHoY4OwKvMmolNVesC-usLi2Vk','2025-07-27 11:39:27.236456'),('za2rn070qiics0xs22u4g4ncm6v9xzw9','.eJxVjc0OgyAQhN-FsyFgEaHH3vsMZGHXSn_AiCY1Td-92nhojzPzzcyLOZin3s2FRheRHZlk1a_nIdwobQFeIV0yDzlNY_R8Q_ieFn7OSPfTzv4N9FD6td02XjfYaRAUsJESwQovgm1tDZ0wXppWWhUIpDUHI1EFq7zWRihdk6z9NlqolJiTo-cQx4UdRcW-F9My0HpR5mEVgI-Y2PsDXFZIFA:1ugH2F:VagsWXDHkJbF5SSJYdteHgVNJG3uXkQxqyGD0YkBkLU','2025-08-27 06:08:31.591121');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_store_qrstore`
--

DROP TABLE IF EXISTS `qr_store_qrstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_store_qrstore` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `qr_code` varchar(100) DEFAULT NULL,
  `customer_id` varchar(25) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qr_store_qrstore_customer_id_574a6a48_fk_accounts_` (`customer_id`),
  KEY `qr_store_qrstore_merchant_id_81646489_fk_accounts_merchant_id` (`merchant_id`),
  CONSTRAINT `qr_store_qrstore_customer_id_574a6a48_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `qr_store_qrstore_merchant_id_81646489_fk_accounts_merchant_id` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_store_qrstore`
--

LOCK TABLES `qr_store_qrstore` WRITE;
/*!40000 ALTER TABLE `qr_store_qrstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr_store_qrstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_history_transactionhistory`
--

DROP TABLE IF EXISTS `transaction_history_transactionhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_history_transactionhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_status` varchar(10) NOT NULL,
  `merchant_status` varchar(10) NOT NULL,
  `customer_point` double NOT NULL,
  `merchant_point` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `merchant_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_history__customer_id_bd7dafa0_fk_accounts_` (`customer_id`),
  KEY `transaction_history__merchant_id_3b6cf51a_fk_accounts_` (`merchant_id`),
  CONSTRAINT `transaction_history__customer_id_bd7dafa0_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `transaction_history__merchant_id_3b6cf51a_fk_accounts_` FOREIGN KEY (`merchant_id`) REFERENCES `accounts_merchant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history_transactionhistory`
--

LOCK TABLES `transaction_history_transactionhistory` WRITE;
/*!40000 ALTER TABLE `transaction_history_transactionhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_history_transactionhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_transfers`
--

DROP TABLE IF EXISTS `transfer_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_transfers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `points` int unsigned NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `customer_id_id` varchar(25) NOT NULL,
  `merchant_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_transfers_customer_id_id_6b5c11b5_fk_accounts_` (`customer_id_id`),
  KEY `transfer_transfers_merchant_id_id_8401eaae_fk_accounts_` (`merchant_id_id`),
  CONSTRAINT `transfer_transfers_customer_id_id_6b5c11b5_fk_accounts_` FOREIGN KEY (`customer_id_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `transfer_transfers_merchant_id_id_8401eaae_fk_accounts_` FOREIGN KEY (`merchant_id_id`) REFERENCES `accounts_merchant` (`id`),
  CONSTRAINT `transfer_transfers_chk_1` CHECK ((`points` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_transfers`
--

LOCK TABLES `transfer_transfers` WRITE;
/*!40000 ALTER TABLE `transfer_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_transfers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-07 17:07:17
