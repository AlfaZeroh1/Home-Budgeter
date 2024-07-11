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
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `room` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `phase` int DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `status` int DEFAULT '0',
  `purchased` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Wireless Mouse','Laptop',1,500,'Work',10,10,'',1,NULL),(5,'Hotpot Set','Crockery',1,2000,'Kitchen',3,4,'',0,NULL),(7,'Cups','Crockery',6,150,'Kitchen',1,1,'',1,NULL),(9,'Sahani za Wageni','Crockery',7,150,'Kitchen',1,1,'',1,NULL),(15,'fluffy Carpet 5x8','Carpet',1,2000,'Living',4,4,'',0,NULL),(20,'Gas Lighter','Indoor Kitchen',1,440,'Kitchen',3,4,'',1,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',1,1,'',0,NULL),(22,'Soap Holder','Utility',1,800,'Bathroom',4,4,'',1,NULL),(24,'Von Microwave Oven','Microwave',1,9000,'Kitchen',5,5,'',0,NULL),(27,'4GB Laptop Ram','Laptop',1,1500,'Office',10,10,'',1,NULL),(28,'Xbox 360 wired','Desktop2',1,1200,'Living',10,10,'',1,NULL),(30,'Camo Cloth','Fabric',1,300,'Living',4,4,'',0,NULL),(36,'Pasi','Utility',1,1000,'Bedroom',7,7,'',0,NULL),(37,'Hangers','Utility',1,450,'Bedroom',7,7,'',0,NULL),(41,'Moko 1-seater','Sito',1,12500,'Dining',6,6,'',0,NULL),(52,'Berry loan','Credit',1,3250,'Outside',5,5,'',0,NULL),(53,'KCB loan','Credit',1,1300,'Outside',5,5,'',0,NULL),(59,'Fluffy Pillows','Sito',3,500,'Living',6,6,'',0,NULL),(81,'7KG Twin Tub Washing Machine','Electrics',1,18700,'Bathroom',9,11,'',1,NULL),(83,'Oil dispensing set with pastry brush','Air Fryer',1,200,'Kitchen',7,7,'',1,NULL),(85,'Nunix Mixer with Bowl','Electrics',1,1100,'Kitchen',9,11,'',1,NULL),(93,'Thermal Paste','Desktop2',1,300,'Living',10,10,'',1,NULL),(95,'HP 840 G3 Laptop Replace','Laptop Office',1,25000,'Work',9,10,'',1,NULL),(108,'Crucial 8GB RAM','Desktop2',2,2000,'Living',10,10,'',1,NULL),(114,'3 in 1 wireless controller','Desktop2',1,1200,'Living',10,10,'',1,NULL),(121,'USB extender 1.5M','Desktop2',1,200,'Living',10,10,'',1,NULL),(126,'Car inherit','Car',1,5000,'Outdoor',6,6,'',1,NULL),(135,'Food Thermometer','Air Fryer',1,500,'Kitchen',7,7,'',1,NULL),(148,'Phone Holder','phone',1,400,'Office',10,10,'',1,NULL),(149,'USB Type C','phone',1,200,'Office',9,11,'',1,NULL),(173,'Samsung A05 64GB + 4GB','Lha',1,12000,'Business',7,7,'',0,NULL),(189,'Northstar + repair','Alpha',1,1300,'Work',1,1,'',0,NULL),(190,'Bathroom Tank 300L','Storage',1,3000,'Bathroom',1,1,'',0,NULL),(196,'Hilda Loan','Credit',1,2500,'Outside',1,2,'',0,NULL),(198,'Jatos','Alpha',2,400,'Work',1,1,'',0,NULL),(209,'Balcony net','Outdoor Kitchen',1,1000,'Balcony',4,4,'',0,NULL),(210,'Sink Fixes','Outdoor Kitchen',1,1000,'Kitchen',3,4,'',1,NULL),(212,'Plaster Balcony Wall','Outdoor Kitchen',1,3000,'Balcony',4,4,'',0,NULL),(213,'Vacuum cleaner Cordless','Carpet',1,3000,'Living',10,10,'',1,NULL),(218,'Lha clothes ','Clothes',1,16000,'Home',4,4,'',0,NULL),(219,'Alpha Clothes','Clothes',1,4000,'Home',6,6,'',0,NULL),(221,'Lha Biz','Duty',1,80000,'School',8,8,'14',1,NULL),(224,'Spoons and Forks and Knives','Crockery',1,200,'Kitchen',1,1,'',0,NULL),(226,'Wine Glass','Crockery',5,100,'Kitchen',3,3,'',0,NULL),(228,'Sufuria with lid','Crockery',1,800,'Kitchen',5,5,'',0,NULL),(229,'2 Gas Burner Cooker and Regulator','Indoor Kitchen',1,2500,'Kitchen',1,1,'',0,NULL),(230,'3 tier dish rack','Crockery',1,2500,'Kitchen',3,3,'',0,NULL),(232,'Baby Cot Set with mattress and net','Baby',1,11000,'Bedroom',7,7,'',0,NULL),(235,'Portable Wardrobe','Storage',1,2700,'Bedroom',10,10,'',1,NULL),(236,'Wardrobe Curtain','Storage',1,1000,'Bedroom',9,11,'',1,NULL),(237,'Door Mat','Fabric',1,500,'Living',4,4,'',0,NULL),(238,'Curtains Substitute','Fabric',1,2000,'Living',9,11,'',1,NULL),(239,'Small Shoe Rack','Storage',1,500,'Living',7,7,'',0,NULL),(240,'SKyworth 43 inch TV','Entertainment',1,28000,'Living',10,10,'',1,NULL),(242,'Art Tree (Maua)','Sito',1,3000,'Living',7,7,'',0,NULL),(247,'Lha Undergrad First Semesters Fee','School',1,60000,'Outside',5,5,'',0,NULL),(248,'Lha Undergrad 2nd year Semesters Fee','School',1,60000,'Outdoor',9,9,'',0,NULL),(254,'Lha Undergrad Second Semester Fees','School',1,60000,'Remote',6,6,'',0,NULL),(255,'Mum Fridge Loan 2','Credit',1,10000,'Kitchen',3,3,'',0,NULL),(256,'180 Container','Fridge',2,180,'Kitchen',3,3,'',1,NULL),(257,'100 Container','Crockery',2,100,'Kitchen',3,3,'',0,NULL),(258,'Stima','Monthly',1,2100,'Living',98,-2,'',0,NULL),(259,'Takataka','Monthly',1,200,'Kitchen',98,-2,'',0,NULL),(260,'Wifi','Monthly',1,1600,'Living',98,-2,'\r\n\r\n',0,NULL),(261,'Gas','Monthly',1,1300,'Living',98,-2,'',0,NULL),(262,'Alpha Fare (Hybrid - Car + mat)','Monthly',22,80,'Office',98,-2,'',0,NULL),(263,'Shopping','Monthly',1,6000,'Kitchen',98,-2,'',0,NULL),(264,'Grocery','Monthly',30,220,'Kitchen',98,-2,'',0,NULL),(265,'Dawa','Maternity',30,100,'Living',98,-2,'',0,NULL),(273,'Lha NHIF','Maternity',1,500,'Hospital',98,-2,'',0,NULL),(297,'Lha Loan','Credit',1,10000,'Outside',6,6,'',1,NULL),(298,'Baby  Package Boost','Maternity',1,9000,'Maternity',1,2,'',0,NULL),(302,'Delivery Day','Maternity',1,5000,'Maternity',1,2,'',0,NULL),(303,'Emergency Saving 1','Emergency',1,7000,'Maternity',1,1,'',0,NULL),(305,'Bathroom Tiles Plaster','Outdoor Kitchen',1,1000,'Bathroom',4,4,'',0,NULL),(308,'Sweat Pants','Clothes',2,250,'Bedroom',3,3,'',0,NULL),(309,'Door Mat','Sito',1,500,'Living',4,5,'',1,NULL),(312,'Emergency Saving 2','Emergency',1,8000,'Keja',3,3,'',0,NULL),(313,'Emergency Saving 3','Emergency',1,25000,'Keja',5,5,'',0,NULL),(314,'Baby  Package 1','Maternity',1,16000,'Baby',1,1,'',0,NULL),(315,'Mum Fridge Loan 1','Credit',1,11000,'Outside',3,3,'',0,NULL),(316,'Lha Special Diet','Maternity',30,70,'Maternity',-2,-2,'',0,NULL),(317,'Dehumidifier for bedroom','Electric',1,6000,'Bedroom',4,4,'',1,NULL),(318,'Emergency Saving 4','Emergency',1,10000,'Keja',6,6,'',0,NULL),(319,'Dell U2415h','PC',1,12000,'Office',8,8,'',0,NULL),(320,'k1200','PC',1,11000,'Home Office',8,8,'\r\n',0,NULL),(321,'xbox 360 wired pad','PC',1,1300,'Home Office',8,8,'',0,NULL),(322,'Generic Wireless pad','PC',1,1200,'Home Office',8,8,'',0,NULL),(323,'8GB RAM','PC',2,2000,'Home Office',8,8,'',0,NULL),(324,'Lexar 512 SSD','PC',1,5000,'Home Office',8,8,'',0,NULL),(325,'1.2M Desk','PC',1,5500,'Home Office',8,8,'',0,NULL),(326,'LHA Biz','Biz',1,100000,'Biz',10,10,'',0,NULL);
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

-- Dump completed on 2024-07-11 17:21:25
