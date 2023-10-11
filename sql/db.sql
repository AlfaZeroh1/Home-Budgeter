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
  `status` int DEFAULT '0',
  `purchased` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2GB RAM','Desktop',2,600,'Living',2,7,'',2,NULL),(2,'Logitech Mouse','Laptop',1,500,'Work',1,4,'',0,NULL),(3,'Sufuria','Cookware',1,600,'Kitchen',3,4,'',0,NULL),(4,'Glasses','Cookware',6,70,'Kitchen',3,4,'',0,NULL),(5,'Hotpot Set','Cookware',1,2500,'Kitchen',3,4,'',0,NULL),(6,'Thermos','Cookware',1,500,'Kitchen',2,4,'',0,NULL),(7,'Cups','Cookware',6,120,'Kitchen',2,4,'',0,NULL),(8,'Birika','Electrics',1,800,'Kitchen',2,2,'',0,NULL),(9,'Sahani za Wageni','Cookware',6,150,'Kitchen',2,4,'',0,NULL),(10,'Blender 3 in 1','Electrics',1,2900,'Kitchen',3,2,'',0,NULL),(11,'Kufuli','Security',1,1000,'Living',1,2,'',0,NULL),(12,'Pillows','Bed',2,300,'Bedroom',2,4,'',0,NULL),(13,'Coffee Table','Furniture',1,4000,'Living',1,4,'',0,NULL),(14,'Curtains','Fabric',1,2500,'Living',1,2,'',0,NULL),(15,'Fluffy Carpet','Fabric',1,3000,'Living',3,8,'',0,NULL),(16,'Laundry Bucket','Plastic',1,500,'Bathroom',3,4,'',0,NULL),(17,'Basin','Plastic',1,500,'Bathroom',3,4,'',0,NULL),(18,'Water Tank','Storage',1,1400,'Kitchen',2,3,'',0,NULL),(19,'Hose Pipe','Storage',1,700,'Bathroom',3,3,'',0,NULL),(20,'Gas Lighter','Utility',1,400,'Kitchen',3,4,'',0,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',4,4,'',0,NULL),(22,'Soap Holder','Utility',1,350,'Bathroom',4,4,'',0,NULL),(23,'90L Fridge new','Electrics',1,17000,'Kitchen',2,5,'',0,NULL),(24,'Nunix Oven','Cooker',1,5000,'Kitchen',3,6,'',0,NULL),(25,'R7 250','Desktop',1,4000,'Living',3,3,'',0,NULL),(26,'Laptop Charger','Laptop',1,1200,'Office',1,2,'',2,NULL),(27,'8GB Laptop Ram','Laptop',1,2500,'Office',3,7,'',0,NULL),(28,'Game Pads','Des',2,1200,'Living',4,8,'',0,NULL),(29,'Lexar 256 SSD','Desktop',1,2800,'Living',4,7,'',0,NULL),(30,'Camo Cloth','Fabric',1,1000,'Living',5,8,'',0,NULL),(31,'Artificial Plants','Deco',2,500,'Living',5,8,'',0,NULL),(32,'LED Strip','Deco',1,500,'Living',5,8,'',0,NULL),(33,'Artificial Tree and Vase','Deco',1,3100,'Living',5,8,'',0,NULL),(34,'Cushions','Deco',3,500,'Living',5,8,'',0,NULL),(35,'Matress','Bed',1,3500,'Bedroom',5,4,'',0,NULL),(36,'Pasi','Utility',1,900,'Bedroom',5,7,'',0,NULL),(37,'Hangers','Utility',1,400,'Bedroom',5,7,'',0,NULL),(38,'Office Desk','Desk',1,4500,'Living',6,6,'',0,NULL),(39,'Eames Chair','Desk',1,2500,'Living',6,6,'',0,NULL),(40,'Laptop Battery','Laptop',1,2500,'Office',6,7,'',0,NULL),(41,'Ameriah Table','Furniture',1,5500,'Dining',8,10,'',0,NULL),(42,'Eames Chairs','Furniture',2,2700,'Dining',8,10,'',0,NULL),(43,'Artificial Plant','Deco',1,500,'Dining',4,8,'',0,NULL),(44,'Mirror','Deco',1,3000,'Living',9,6,'',0,NULL),(45,'4GB RAM','Desktop',4,1000,'Living',7,7,'\r\n',0,NULL),(47,'Apron','Kitchen wear',1,350,'Kitchen',1,6,'',0,NULL),(48,'Oven Gloves','Kitchen wear',1,350,'Kitchen',4,6,'',0,NULL),(49,'chef hat','Kitchen wear',1,300,'Kitchen',6,6,'',0,NULL),(50,'Tal','Credit',1,9500,'Outside',1,1,'',0,NULL),(51,'Takataka','Credit',5,200,'Outside',1,1,'',2,NULL),(52,'Berry','Credit',1,3250,'Outside',5,7,'',0,NULL),(53,'KCB','Credit',1,1250,'Outside',5,7,'',0,NULL),(54,'Teddy','Credit',1,500,'Outside',1,1,'',0,NULL),(55,'Emergency','Savings',1,5000,'Inside',1,3,'',0,NULL),(56,'Hustler','Credit',2,700,'Outside',7,8,'',0,NULL),(57,'Lha Clothes','Clothes',7,1000,'Bedroom',3,2,'',0,NULL),(58,'Lha Home','Travel',1,8000,'Outside',3,3,'',0,NULL),(59,'Fluffy Pillows','Fabric',3,1000,'Living',4,8,'',0,NULL),(60,'Yoga Mat','Sport',1,900,'Outdoor',2,2,'',0,NULL),(61,'Lha Sport Shoes','Sport',1,700,'Outdoor',2,3,'',0,NULL),(62,'Good Conduct','Work',1,600,'Office',1,1,'',0,NULL),(63,'b\'s','Alpha',5,100,'Bedroom',1,2,'',0,NULL),(64,'Fridge Guard','Electrics',1,600,'Kitchen',2,5,'',0,NULL),(65,'bank','Work',1,400,'Office',1,1,'',0,NULL),(66,'Scanning','Work',10,20,'Office',1,1,'',0,NULL),(67,'Lha passport','Work',1,100,'Office',1,2,'',0,NULL),(68,'NSSF','Work',1,200,'Office',1,2,'',0,NULL),(69,'NHIF','Work',1,1500,'Office',1,2,'',0,NULL);
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

-- Dump completed on 2023-10-11 17:08:02
