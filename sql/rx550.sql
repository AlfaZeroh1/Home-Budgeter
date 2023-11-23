-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: xq
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-1:10.3.39+maria~ubu1804-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `purchased` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Logitech MK220 Mouse and Keyboard','Laptop',1,2500,'Work',6,6,'',0,NULL),(4,'Glasses','Cookware',6,70,'Kitchen',5,5,'',0,NULL),(5,'Hotpot Set','Cookware',1,2500,'Kitchen',5,5,'',0,NULL),(6,'Thermos','Cookware',1,500,'Kitchen',5,5,'',0,NULL),(7,'Cups','Cookware',6,120,'Kitchen',5,5,'',0,NULL),(8,'Birika','Electrics',1,900,'Kitchen',4,4,'',0,NULL),(9,'Sahani za Wageni','Cookware',6,150,'Kitchen',5,5,'',0,NULL),(11,'Kufuli','Security',1,1000,'Living',3,3,'',0,NULL),(12,'Pillows','Bed',1,300,'Bedroom',7,7,'',0,NULL),(13,'Coffee Table','Furniture',1,4000,'Living',5,5,'',0,NULL),(15,'Fluffy Carpet','Fabric',1,3000,'Living',7,7,'',0,NULL),(16,'Laundry Bucket','Plastic',1,500,'Bathroom',6,6,'',0,NULL),(17,'Basin','Plastic',1,500,'Bathroom',6,6,'',0,NULL),(20,'Gas Lighter','Utility',1,400,'Kitchen',8,8,'',0,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',8,8,'',0,NULL),(22,'Soap Holder','Utility',1,350,'Bathroom',8,8,'',0,NULL),(23,'90L Fridge new','Electrics',1,17000,'Kitchen',4,4,'',0,NULL),(24,'Air Fryer','Cooker',1,5000,'Kitchen',5,5,'',0,NULL),(27,'8GB Laptop Ram','Laptop',1,2500,'Office',3,3,'',0,NULL),(28,'xbox 360 wired Pad (xgamers)','Gaming',1,1250,'Living',12,12,'',0,NULL),(29,'Lexar 512 SSD','Desktop2',1,4200,'Living',12,12,'',0,NULL),(30,'Camo Cloth','Fabric',1,1000,'Living',7,7,'',0,NULL),(31,'Artificial Plants','Deco',2,500,'Living',7,7,'',0,NULL),(33,'Artificial Tree and Vase','Deco',1,3100,'Living',7,7,'',0,NULL),(35,'Matress','Bed',1,3500,'Bedroom',7,7,'',0,NULL),(36,'Pasi','Utility',1,900,'Bedroom',8,8,'',0,NULL),(37,'Hangers','Utility',1,400,'Bedroom',8,8,'',0,NULL),(38,'Office Desk','Furniture',1,4500,'Living',15,14,'',0,NULL),(39,'Eames Chair','Furniture',1,2500,'Living',15,14,'',0,NULL),(40,'Laptop Battery','Laptop',1,2500,'Office',12,12,'',0,NULL),(41,'Moko 1-seater','Furniture',1,12000,'Dining',11,11,'',0,NULL),(43,'Artificial Plant','Deco',1,500,'Dining',7,7,'',0,NULL),(44,'Mirror','Deco',1,1000,'Living',6,6,'',0,NULL),(47,'Apron','Kitchen wear',1,350,'Kitchen',8,8,'',0,NULL),(48,'Oven Gloves','Kitchen wear',1,350,'Kitchen',8,8,'',0,NULL),(49,'chef hat','Kitchen wear',1,300,'Kitchen',8,8,'',0,NULL),(52,'Berry','Credit',1,3250,'Outside',8,8,'',0,NULL),(53,'KCB','Credit',1,1250,'Outside',8,8,'',0,NULL),(56,'Hustler','Credit',2,700,'Outside',8,8,'',0,NULL),(57,'Lha Clothes','Clothes',8,1030,'Bedroom',2,2,'',0,NULL),(58,'Lha Home','Travel',1,11000,'Outside',3,3,'',0,NULL),(59,'Fluffy Pillows','Fabric',3,700,'Living',7,7,'',0,NULL),(60,'Yoga Mat','Sport',1,900,'Outdoor',3,3,'',0,NULL),(63,'b\'s','Alpha',3,270,'Bedroom',2,2,'',0,NULL),(64,'Fridge Guard','Electrics',1,600,'Kitchen',4,4,'',0,NULL),(71,'Northstar','Alpha',1,1200,'Work',5,5,'',0,NULL),(72,'Nunix Standing Fan 16 or 18 inch','Electrics',1,2000,'Living ',4,4,'',0,NULL),(81,'7.5KG twin washing Machine with dryer','Electrics',1,20000,'Bathroom',10,10,'',0,NULL),(82,'Wifi Dongle','Desktop2',1,600,'Living',2,2,'',0,NULL),(83,'Oil dispensing set with pastry brush','Cookware',1,300,'Kitchen',5,5,'',0,NULL),(84,'Cooking weighing Scale','Electrics',1,500,'Kitchen',4,4,'',0,NULL),(85,'Nunix Mixer with Bowl','Electrics',1,1200,'Kitchen',8,8,'',0,NULL),(86,'Water Bottle 20L','Storage',1,600,'Dining',8,8,'',0,NULL),(87,'Water Dispenser','Electrics',1,600,'Dining',8,8,'',0,NULL),(88,'Chips Basket','Cookware',2,350,'Kitchen',8,8,'',0,NULL),(89,'Chopping Board','Cookware',2,350,'Kitchen',8,8,'',0,NULL),(93,'Thermal Paste','Desktop2',1,300,'Living',6,6,'',0,NULL),(94,'Laptop Speakers','Laptop',1,600,'Work',12,12,'',0,NULL),(95,'HP 840 G3','Laptop Office',1,25000,'Work',17,16,'',0,NULL),(96,'Grocery','Food',30,250,'Kitchen',1,1,'',0,NULL),(97,'Gas','Energy',1,1200,'Kitchen',1,1,'',0,NULL),(98,'Wifi','Communication',1,1500,'Living',1,1,'',0,NULL),(99,'Tokens','Energy',1,1000,'Keja',1,1,'',0,NULL),(100,'Shopping','Food',1,5200,'Keja',1,1,'',0,NULL),(101,'Garbage','Bill',1,200,'Kitchen',1,1,'',0,NULL),(102,'Alpha Fare','Transport',22,135,'Work',1,1,'',0,NULL),(103,'Sadaka','Religion',4,200,'Church',1,1,'',0,NULL),(104,'Phone Holder','Laptop',1,400,'Work',3,3,'',0,NULL),(108,'Crucial 8GB RAM','Desktop2',1,2500,'Living',12,12,'',0,NULL),(111,'Thrutmaster T80 Ferrari','Gaming',1,17000,'Living',13,13,'',0,NULL),(113,'Logitech MK220 Mouse and Keyboard','Desktop2',1,2500,'Living',12,12,'',0,NULL),(114,'Xbox 360 Wireless Controller With Receiver (xgamers)','Gaming',1,2850,'Living',12,12,'',0,NULL),(115,'RX 550 MlSSE (AliExpress)','Desktop2',1,8500,'Living',9,9,'',0,NULL),(116,'Optiplex tower i5-4590 or i7-3770','Desktop2',1,4500,'Living',6,6,'',0,NULL),(119,'DELL P2217H FHD Monitor','Desktop2_1',1,6000,'Living',14,14,'',0,NULL);
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

-- Dump completed on 2023-11-23  8:25:56
