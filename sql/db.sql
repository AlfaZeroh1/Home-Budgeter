-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: 1br
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `phase` int DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2GB RAM','Desktop',2,600,'Living',2,1,''),(2,'Logitech Mouse','Laptop',1,500,'Work',1,1,''),(3,'Sufuria','Cookware',1,600,'Kitchen',2,1,''),(4,'Glasses','Cookware',6,70,'Kitchen',2,1,''),(5,'Hotpot Set','Cookware',1,2500,'Kitchen',2,1,''),(6,'Thermos','Cookware',1,500,'Kitchen',2,1,''),(7,'Cups','Cookware',6,120,'Kitchen',2,1,''),(8,'Birika','Cookware',1,800,'Kitchen',2,1,''),(9,'Sahani za Wageni','Cookware',6,150,'Kitchen',2,1,''),(10,'Blender 3 in 1','Electrics',1,2900,'Kitchen',1,1,''),(11,'Kufuli','Security',1,1000,'Living',1,1,''),(12,'Pillows','Bed',2,300,'Bedroom',2,1,''),(13,'Coffee Table','Furniture',1,4000,'Living',1,1,''),(14,'Curtains','Fabric',1,2500,'Living',1,1,''),(15,'Carpet','Fabric',1,3000,'Living',3,2,''),(16,'Laundry Bucket','Plastic',1,500,'Bathroom',3,2,''),(17,'Basin','Plastic',1,500,'Bathroom',3,2,''),(18,'Water Tank','Storage',1,1400,'Kitchen',2,3,''),(19,'Hose Pipe','',1,700,'Bathroom',2,3,''),(20,'Gas Lighter','',1,400,'Kitchen',3,3,''),(21,'Tissue Holder','',1,350,'Bathroom',4,3,''),(22,'Soap Holder','',1,350,'Bathroom',4,3,''),(23,'50L Fridge used','Electrics',1,9000,'Kitchen',2,2,''),(24,'Charcoal Oven','Cooker',1,5000,'Kitchen',3,3,''),(25,'R7 250','Desktop',1,4000,'Living',4,3,''),(26,'Laptop Charger','Laptop',1,1200,'Office',1,1,''),(27,'8GB Laptop Ram','Laptop',1,2500,'Office',3,3,''),(28,'Game Pads','Des',2,1200,'Living',4,4,''),(29,'Lexar 256 SSD','Desktop',1,2800,'Living',4,4,''),(30,'Camo Cloth','Fabric',1,1000,'Living',5,4,''),(31,'Artificial Plants','Deco',2,500,'Living',5,4,''),(32,'LED Strip','Deco',1,500,'Living',5,4,''),(33,'Artificial Tree and Vase','Deco',1,3100,'Living',5,4,''),(34,'Cushions','Deco',3,500,'Living',5,4,''),(35,'Matress','Bed',1,3500,'Bedroom',5,5,''),(36,'Pasi','',1,900,'Bedroom',5,5,''),(37,'Hangers','',1,400,'Bedroom',5,5,''),(38,'Office Desk','Desk',1,4500,'Living',6,6,''),(39,'Eames Chair','Desk',1,2500,'Living',6,6,''),(40,'Laptop Battery','Laptop',1,2500,'Office',6,6,''),(41,'Ameriah Table','Furniture',1,5500,'Dining',8,8,''),(42,'Eames Chairs','Furniture',2,2700,'Dining',8,8,''),(43,'Artificial Plant','Deco',1,500,'Dining',4,4,''),(44,'Mirror','Deco',1,3000,'Living',9,9,''),(45,'4GB RAM','Desktop',4,1200,'Living',10,10,'');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-06 23:46:22
