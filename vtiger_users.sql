-- MySQL dump 10.13  Distrib 5.5.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: datacrm_amazon1_alpha
-- ------------------------------------------------------
-- Server version	5.5.61-0ubuntu0.14.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vtiger_users`
--

DROP TABLE IF EXISTS `vtiger_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_hash` varchar(32) DEFAULT NULL,
  `google_userid` varchar(200) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `description` text,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `hidecompletedevents` int(11) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `is_owner` varchar(5) DEFAULT NULL,
  `change_password` int(1) NOT NULL DEFAULT '0',
  `send_report` int(1) NOT NULL DEFAULT '0',
  `send_report_weekly` int(1) NOT NULL DEFAULT '0',
  `nick_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_users`
--

LOCK TABLES `vtiger_users` WRITE;
/*!40000 ALTER TABLE `vtiger_users` DISABLE KEYS */;
INSERT INTO `vtiger_users` VALUES (1,'admin','$1$ad000000$H76AOHB0LwVRcFvA.TwXO.','3681df8d04470ecc65053b790e19a065',NULL,'#E6FAD8','Soporte','DataCRM','','on',1,'','2019-03-12 17:28:48','0000-00-00 00:00:00',NULL,'','','','','','','','correo@empresa.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','This Week','Today','',0,'$1$ad000000$H76AOHB0LwVRcFvA.TwXO.','1','5 Minutes',NULL,'PHP5.3MD5','3MU6ed0NGYvk0Cuk','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:15','public','Summary','1','medium','Seleccione una opción','Seleccione una opción',0,'','1',0,0,0,''),(6,'gerente','$1$ge000000$jmhisGKMrE4nnggJPfg8V1','25d55ad283aa400af464c76d713c07ad',NULL,'#E6FAD8','Usuario','Gerente','','on',1,'','2018-03-27 19:35:11','0000-00-00 00:00:00',NULL,'','','','','','','','correo@empresa.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',0,'$1$ge000000$jmhisGKMrE4nnggJPfg8V1','1','',NULL,'PHP5.3MD5','emSpdpBQCdWNm3DX','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:15','public','Summary','1','medium','Planned','Call',0,'','1',0,0,0,''),(7,'comercial01','$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','25d55ad283aa400af464c76d713c07ad',NULL,'#E6FAD8','Comercial','01','','off',1,'','2018-03-28 13:05:07','0000-00-00 00:00:00',NULL,'','','','','','','','comercial@tudominio.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',0,'$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','1','None',NULL,'PHP5.3MD5','pf2ZXEPhyKZNdTD5','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:15','public','Summary','1','medium','Planned','Call',0,'','',0,0,0,''),(11,'comercial02','$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','25d55ad283aa400af464c76d713c07ad',NULL,'#E6FAD8','Comercial','02','','off',1,'','2018-04-03 11:47:08','0000-00-00 00:00:00',NULL,'','','','','','','','comercial@tudominio.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',0,'$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','0','',NULL,'PHP5.3MD5','kX1nU3j1FvlRQNME','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:15','public','Summary','1','medium','Planned','Call',0,'','0',0,0,0,''),(12,'comercial03','$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','25d55ad283aa400af464c76d713c07ad',NULL,'#E6FAD8','Comercial','03','','off',1,'','2018-02-27 21:22:25','0000-00-00 00:00:00',NULL,'','','','','','','','comercial@tudominio.com','','','Inactive','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',1,'$1$co000000$AzSc3wqiBbfxN6PHX8v7C/','0','',NULL,'PHP5.3MD5','oSCmDiIGwWOs7Si','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:15','public','Summary','1','medium','Planned','Call',0,'','0',0,0,0,NULL),(16,'administrador','$1$ad000000$97ZPDruX0DK1reZmjQFtq.','81dc9bdb52d04dc20036dbd8313ed055',NULL,'#E6FAD8','Administrador','Empresa','','on',1,'','2018-08-31 17:19:18','0000-00-00 00:00:00',NULL,'','','','','','','','correo@empresa.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',0,'$1$ad000000$97ZPDruX0DK1reZmjQFtq.','0','',NULL,'PHP5.3MD5','a5vqyIzNzCniG1FH','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','0','Monday','00:05','00:15','public','Summary','1','medium','Planned','Call',0,'','1',0,0,0,''),(19,'administrador2','$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.','d41d8cd98f00b204e9800998ecf8427e',NULL,'#E6FAD8','Administrador','Empresa1','','on',1,'','2018-04-03 11:46:56','0000-00-00 00:00:00',NULL,'','','','','','','','correo@empresa.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','09:00','','Today','','',0,'$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.','0','',NULL,'PHP5.3MD5','nBtEuSGcWgIIPsHi','datacrm','en_us','UTC','123,456,789','.',',','$1.0','2','0','Sunday','00:05','00:05','public','Summary','1','',NULL,NULL,0,'','1',0,0,0,''),(20,'comercial05','$1$co000000$8heE2W40tC/WudBV4qxSz/','d41d8cd98f00b204e9800998ecf8427e',NULL,'#E6FAD8','Comercial','05','','off',1,'','2018-03-28 20:59:00','0000-00-00 00:00:00',NULL,'','','','','','','','comercial@tudominio.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','09:00','','Today','','',0,'$1$co000000$8heE2W40tC/WudBV4qxSz/','1','',NULL,'PHP5.3MD5','XMBmVE9m9ZtZVA45','datacrm','en_us','UTC','123,456,789','.',',','$1.0','2','1','Sunday','00:05','00:05','public','Summary','1','',NULL,NULL,0,'','0',0,0,0,''),(21,'jchoque','$1$jc000000$0odl4RWUCkWOmJ1Hqy942/','81dc9bdb52d04dc20036dbd8313ed055','112131477923661344693','#E6FAD8','Jonnattan','Choque','','on',1,'','2018-09-13 21:16:28','0000-00-00 00:00:00',NULL,'','','','','','','','jchoque@datacrm.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'yyyy-mm-dd','12','00:00','','Today','Today','',0,'$1$jc000000$0odl4RWUCkWOmJ1Hqy942/','0','15 Minutes',NULL,'PHP5.3MD5','w0HJbClb84E3NaF3','datacrm','es_co','America/Bogota','123,456,789','.',',','$1.0','2','0','Monday','00:05','00:05','public','Summary','1','medium','Planned','Call',0,'','1',0,0,0,'');
/*!40000 ALTER TABLE `vtiger_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-06 12:53:46
