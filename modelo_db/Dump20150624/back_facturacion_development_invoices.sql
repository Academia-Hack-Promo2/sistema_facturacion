CREATE DATABASE  IF NOT EXISTS `back_facturacion_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `back_facturacion_development`;
-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: back_facturacion_development
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_operation` int(11) DEFAULT '0',
  `kind_payment` int(11) DEFAULT '0',
  `kind_invoice` int(11) DEFAULT '0',
  `name_associated` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ci_associated` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_associated` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_product` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT '12.00',
  `tax` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `document` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_proof` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `associated_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invoices_on_associated_id` (`associated_id`),
  KEY `index_invoices_on_user_id` (`user_id`),
  KEY `index_invoices_on_product_id` (`product_id`),
  CONSTRAINT `fk_rails_3d1522a0d8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_7c66a0039c` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_rails_8d9a3bfcad` FOREIGN KEY (`associated_id`) REFERENCES `associateds` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,0,0,'Samuel','23456789','Lorem ipsum dolor sit amet','Hack_Full','Curso intensivo de 16 semanas de formación para  programadores',1,36000.00,12.00,4320.00,40320.00,0.00,'2015-06-10','pdf','pdf',1,1,1,'2015-06-24 02:02:17','2015-06-24 02:03:09'),(2,1,1,0,'Jhon','23456789','Lorem ipsum dolor sit amet','Hack_Full','Curso intensivo de 16 semanas de formación para  programadores',1,36000.00,12.00,4320.00,40320.00,0.00,'2015-06-10','pdf','pdf',2,1,1,'2015-06-24 02:02:17','2015-06-24 02:03:20'),(3,0,0,0,'Jhonathan','23456789','Lorem ipsum dolor sit amet','Hack_Full','Curso intensivo de 16 semanas de formación para  programadores',1,36000.00,12.00,4320.00,40320.00,0.00,'2015-06-10','pdf','pdf',3,1,1,'2015-06-24 02:02:17','2015-06-24 02:03:29'),(4,0,1,0,'Romer','23456789','Lorem ipsum dolor sit amet','Hack_Full','Curso intensivo de 16 semanas de formación para  programadores',1,36000.00,12.00,4320.00,40320.00,0.00,'2015-06-10','pdf','pdf',4,1,1,'2015-06-24 02:02:17','2015-06-24 02:03:37'),(5,0,0,0,'Daniel','23456789','Lorem ipsum dolor sit amet','Hack_Full','Curso intensivo de 16 semanas de formación para  programadores',1,36000.00,12.00,4320.00,40320.00,0.00,'2015-06-10','pdf','pdf',5,1,1,'2015-06-24 02:02:17','2015-06-24 02:03:44'),(6,1,1,0,'Emilio','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',1,10000.00,12.00,1200.00,11200.00,0.00,'2015-06-10','pdf','pdf',6,1,2,'2015-06-24 02:02:17','2015-06-24 02:03:51'),(7,1,0,0,'Maria','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',1,10000.00,12.00,1200.00,11200.00,0.00,'2015-06-10','pdf','pdf',7,2,2,'2015-06-24 02:02:17','2015-06-24 02:03:59'),(8,1,0,0,'Mary','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',1,10000.00,12.00,1200.00,11200.00,0.00,'2015-06-10','pdf','pdf',8,2,2,'2015-06-24 02:02:17','2015-06-24 02:04:06'),(9,0,1,0,'Maria','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',1,10000.00,12.00,1200.00,11200.00,0.00,'2015-06-10','pdf','pdf',9,2,2,'2015-06-24 02:02:17','2015-06-24 02:04:13'),(10,0,0,0,'Samuel','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',1,10000.00,12.00,1200.00,11200.00,0.00,'2015-06-10','pdf','pdf',1,2,2,'2015-06-24 02:02:17','2015-06-24 02:04:21'),(11,0,1,0,'Jhon','23456789','Lorem ipsum dolor sit amet','Hack_Part','Curso intensivo de 16 semanas de formación para programadores',3,30000.00,12.00,3600.00,33600.00,0.00,'2015-06-10','pdf','pdf',2,2,2,'2015-06-24 02:02:17','2015-06-24 02:05:13');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-24 15:45:14
