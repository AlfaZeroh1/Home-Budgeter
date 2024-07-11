-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: keja
-- ------------------------------------------------------
-- Server version	8.0.35

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
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Wireless Mouse','Laptop',1,500,'Work',7,8,'',0,NULL),(5,'Hotpot Set','Crockery',1,2500,'Kitchen',3,4,'',0,NULL),(7,'Cups','Crockery',6,150,'Kitchen',2,2,'',0,NULL),(9,'Sahani za Wageni','Crockery',7,150,'Kitchen',2,2,'',0,NULL),(15,'3D Carpet 7x10','Carpet',1,5000,'Living',7,8,'',0,NULL),(20,'Gas Lighter','Indoor Kitchen',1,440,'Kitchen',3,4,'',0,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',1,1,'',0,NULL),(22,'Soap Holder','Utility',1,800,'Bathroom',5,5,'',0,NULL),(24,'Air Fryer','Air Fryer',1,5000,'Kitchen',7,7,'',0,NULL),(27,'4GB Laptop Ram','Laptop',1,1500,'Office',7,8,'',0,NULL),(28,'Xbox 360 wired','Desktop2',1,1200,'Living',7,8,'',0,NULL),(30,'Camo Cloth','Fabric',1,1000,'Living',4,5,'',0,NULL),(36,'Pasi','Utility',1,1000,'Bedroom',7,7,'',0,NULL),(37,'Hangers','Utility',1,450,'Bedroom',7,7,'',0,NULL),(41,'Moko 1-seater','Sito',1,12500,'Dining',4,5,'',0,NULL),(52,'Berry loan','Credit',1,3250,'Outside',7,8,'',0,NULL),(53,'KCB loan','Credit',1,1300,'Outside',7,8,'',0,NULL),(59,'Fluffy Pillows','Sito',4,500,'Living',4,5,'',0,NULL),(81,'7KG Twin Tub Washing Machine','Electrics',1,18700,'Bathroom',9,11,'',0,NULL),(83,'Oil dispensing set with pastry brush','Air Fryer',1,200,'Kitchen',7,7,'',0,NULL),(85,'Nunix Mixer with Bowl','Electrics',1,1100,'Kitchen',9,11,'',0,NULL),(93,'Thermal Paste','Desktop2',1,300,'Living',7,8,'',0,NULL),(95,'HP 840 G3 Laptop Replace','Laptop Office',1,25000,'Work',9,10,'',0,NULL),(108,'Crucial 8GB RAM','Desktop2',2,2000,'Living',7,8,'',0,NULL),(114,'3 in 1 wireless controller','Desktop2',1,1200,'Living',7,8,'',0,NULL),(121,'USB extender 1.5M','Desktop2',1,200,'Living',7,8,'',0,NULL),(126,'Car inherit','Car',1,5000,'Outdoor',3,3,'',0,NULL),(135,'Food Thermometer','Air Fryer',1,500,'Kitchen',7,7,'',0,NULL),(148,'Phone Holder','phone',1,400,'Office',7,8,'',0,NULL),(149,'USB Type C','phone',1,200,'Office',9,11,'',0,NULL),(173,'Samsung A05s 64GB + 4GB','Lha',1,13500,'Business',7,7,'',0,NULL),(189,'Northstar + repair','Alpha',1,1300,'Work',1,1,'',0,NULL),(190,'Bathroom Tank 200L','Storage',1,1500,'Bathroom',1,1,'',0,NULL),(196,'Hilda Loan','Credit',1,2100,'Outside',1,2,'',0,NULL),(198,'Jatos','Alpha',2,350,'Work',1,1,'',0,NULL),(209,'Balcony net and translucent roof ','Outdoor Kitchen',1,2000,'Balcony',5,5,'',0,NULL),(210,'Sink Fixes','Outdoor Kitchen',1,1000,'Kitchen',3,4,'',1,NULL),(212,'Plaster Balcony Wall','Outdoor Kitchen',1,3000,'Balcony',5,5,'',0,NULL),(213,'Vacuum cleaner Cordless','Carpet',1,3000,'Living',7,8,'',0,NULL),(218,'Lha clothes ','Clothes',1,16000,'Home',4,4,'',0,NULL),(219,'Alpha Clothes','Clothes',1,5000,'Home',4,4,'',0,NULL),(221,'Lha Biz','Duty',1,80000,'School',8,10,'14',0,NULL),(224,'Spoons and Forks and Knives','Crockery',1,500,'Kitchen',2,2,'',0,NULL),(226,'Wine Glass','Crockery',1,700,'Kitchen',2,2,'',0,NULL),(228,'Sufuria with lid','Crockery',1,800,'Kitchen',3,4,'',0,NULL),(229,'2 Gas Burner Cooker and Regulator','Indoor Kitchen',1,2500,'Kitchen',2,2,'',0,NULL),(230,'3 tier dish rack','Crockery',1,4000,'Kitchen',3,3,'',0,NULL),(232,'Baby Cot Set with Chest Drawer','Baby',1,16000,'Bedroom',8,9,'',0,NULL),(235,'Portable Wardrobe','Storage',1,2700,'Bedroom',7,8,'',0,NULL),(236,'Wardrobe Curtain','Storage',1,1000,'Bedroom',9,11,'',0,NULL),(237,'Door Mat','Fabric',1,500,'Living',9,11,'',0,NULL),(238,'Curtains Substitute','Fabric',1,2000,'Living',9,11,'',0,NULL),(239,'Small Shoe Rack','Storage',1,500,'Living',9,11,'',0,NULL),(240,'SKyworth 43 inch TV','Entertainment',1,28000,'Living',8,9,'',0,NULL),(242,'Art Tree (Maua)','Sito',1,3000,'Living',7,7,'',0,NULL),(247,'Lha Undergrad First Semesters Fee','School',1,53000,'Outside',6,6,'',0,NULL),(248,'Lha Undergrad 2nd year Semesters Fee','School',1,60000,'Outdoor',10,12,'',0,NULL),(254,'Lha Second Semester Fees','School',1,52000,'Remote',7,9,'',0,NULL),(255,'Mum Fridge Loan 2','Credit',1,10000,'Kitchen',3,3,'',0,NULL),(256,'180 Container','Fridge',2,180,'Kitchen',3,3,'',1,NULL),(257,'100 Container','Crockery',3,100,'Kitchen',3,3,'',0,NULL),(258,'Stima','Monthly',1,2100,'Living',98,-2,'',0,NULL),(259,'Takataka','Monthly',1,200,'Kitchen',98,-2,'',0,NULL),(260,'Wifi','Monthly',1,1600,'Living',98,-2,'\r\n\r\n',0,NULL),(261,'Gas','Monthly',1,1300,'Living',98,-2,'',0,NULL),(262,'Alpha Fare (Hybrid - Car + mat)','Monthly',22,200,'Office',98,-2,'',0,NULL),(263,'Shopping','Monthly',1,5500,'Kitchen',98,-2,'',0,NULL),(264,'Grocery','Monthly',1,6700,'Kitchen',98,-2,'',0,NULL),(265,'Baby Special Diet','Monthly',30,100,'Living',98,-2,'',0,NULL),(273,'Lha NHIF','Maternity',1,500,'Hospital',98,-2,'',0,NULL),(297,'Lha Loan','Credit',1,10000,'Outside',6,6,'',0,NULL),(298,'Baby  Package 2','Maternity',1,16000,'Maternity',1,2,'',0,NULL),(302,'Delivery Day','Maternity',1,5000,'Maternity',1,2,'',0,NULL),(303,'Emergency Saving','Emergency',1,15000,'Maternity',1,1,'',0,NULL),(305,'Bathroom Tiles Plaster','Outdoor Kitchen',1,1000,'Bathroom',5,5,'',0,NULL),(308,'Sweat Pants','Clothes',2,250,'Bedroom',3,3,'',0,NULL),(309,'Door Mat','Sito',1,500,'Living',4,5,'',0,NULL),(312,'Emergency Saving 2','Emergency',1,15000,'Keja',2,2,'',0,NULL),(313,'Emergency Saving 3','Emergency',1,30000,'Keja',4,4,'',0,NULL),(314,'Baby  Package 1','Maternity',1,16000,'Baby',1,1,'',0,NULL),(315,'Mum Fridge Loan 1','Credit',1,11000,'Outside',2,2,'',0,NULL);
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

-- Dump completed on 2024-06-18 17:18:05
