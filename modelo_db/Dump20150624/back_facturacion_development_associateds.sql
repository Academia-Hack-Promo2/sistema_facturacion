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
-- Table structure for table `associateds`
--

DROP TABLE IF EXISTS `associateds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `associateds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ci_rif` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_associateds_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_b7d7da0156` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associateds`
--

LOCK TABLES `associateds` WRITE;
/*!40000 ALTER TABLE `associateds` DISABLE KEYS */;
INSERT INTO `associateds` VALUES (1,'Samuel','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, illum.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(2,'Jhon','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, repellendus.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(3,'Jhonathan','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, error.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(4,'Romer','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, iusto?',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(5,'Daniel','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, aliquid.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(6,'Emilio','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, soluta.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(7,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, illum.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(8,'Mary','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, fugiat.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(9,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, accusamus.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(10,'Hector','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, impedit.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(11,'Genesis','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, velit!',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(12,'Abraham','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, earum.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(13,'Pedro','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, illum.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(14,'Pablo','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, repellendus.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(15,'Mateo','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, error.',1,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(16,'Juan','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, iusto?',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(17,'Daniel','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,0,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, aliquid.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(18,'Emilio','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, soluta.',2,'2015-06-24 02:02:15','2015-06-24 02:02:15'),(19,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, illum.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(20,'Mary','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, fugiat.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(21,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, accusamus.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(22,'Hector','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, impedit.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(23,'Genesis','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, velit!',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(24,'Abraham','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, earum.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(25,'Moises','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, illum.',1,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(26,'Josué','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, repellendus.',1,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(27,'David','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore, error.',1,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(28,'Romer','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, iusto?',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(29,'Daniel','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, aliquid.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(30,'Emilio','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, soluta.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(31,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus, illum.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(32,'Mary','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, fugiat.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(33,'Maria','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente, accusamus.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(34,'Hector','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',1,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, impedit.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(35,'Genesis','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',0,0,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, velit!',2,'2015-06-24 02:02:16','2015-06-24 02:02:16'),(36,'Abraham','23456789','lorem','lorem@correo.com','02121234567','Lorem ipsum dolor sit amet',2,1,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati, earum.',2,'2015-06-24 02:02:16','2015-06-24 02:02:16');
/*!40000 ALTER TABLE `associateds` ENABLE KEYS */;
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
