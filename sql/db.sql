-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: hunters
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Wireless Mouse','Laptop',1,500,'Work',3,3,'',0,NULL),(4,'Glasses','Crockery',6,100,'Kitchen',2,2,'',1,NULL),(5,'Hotpot Set','Crockery',1,2500,'Kitchen',3,3,'',0,NULL),(7,'Cups','Crockery',7,150,'Kitchen',3,3,'',0,NULL),(9,'Sahani za Wageni','Crockery',7,150,'Kitchen',1,1,'',0,NULL),(15,'3D Carpet 5x8','Carpet',1,3500,'Living',3,3,'',0,NULL),(20,'Gas Lighter','Utility',1,400,'Kitchen',3,3,'',0,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',3,3,'',0,NULL),(22,'Soap Holder','Utility',1,350,'Bathroom',3,3,'',0,NULL),(23,'Von 150L Fridge new single door','Fridge',1,33500,'Kitchen',1,1,'',1,NULL),(24,'Air Fryer','Air Fryer',1,6000,'Kitchen',6,6,'',0,NULL),(27,'8GB Laptop Ram','Laptop',1,2800,'Office',7,7,'',0,NULL),(28,'Xbox 360 wired','Desktop2',1,1200,'Living',7,7,'',0,NULL),(30,'Camo Cloth','Fabric',1,1000,'Living',3,3,'',0,NULL),(31,'Artificial Tree','Deco',1,3000,'Living',11,12,'',1,NULL),(36,'Pasi','Utility',1,900,'Bedroom',3,3,'',0,NULL),(37,'Hangers','Utility',1,400,'Bedroom',5,5,'',0,NULL),(38,'Office Desk','Desktop2',1,4500,'Living',3,3,'',1,NULL),(40,'Laptop Battery','Laptop',1,2500,'Office',12,12,'',0,NULL),(41,'Moko 1-seater','Furniture',1,12500,'Dining',1,1,'',0,NULL),(47,'Apron','Kitchen wear',1,350,'Kitchen',12,12,'',0,NULL),(48,'Oven Gloves','Kitchen wear',1,350,'Kitchen',12,12,'',0,NULL),(49,'chef hat','Kitchen wear',1,300,'Kitchen',12,12,'',0,NULL),(52,'Berry loan','Credit',1,3250,'Outside',7,7,'',0,NULL),(53,'KCB loan','Credit',1,1300,'Outside',7,7,'',0,NULL),(56,'Hustler loan','Credit',2,700,'Outside',12,12,'',0,NULL),(59,'Fluffy Pillows','Fabric',5,200,'Living',3,3,'',0,NULL),(81,'7KG Twin Tub Washing Machine','Electrics',1,18700,'Bathroom',17,15,'',0,NULL),(83,'Oil dispensing set with pastry brush','Air Fryer',1,200,'Kitchen',6,6,'',0,NULL),(84,'Generic Body weighing Scale','Electrics',1,1100,'Kitchen',12,12,'',0,NULL),(85,'Nunix Mixer with Bowl','Electrics',1,1100,'Kitchen',12,12,'',0,NULL),(88,'Chips Basket','Crockery',2,350,'Kitchen',12,12,'',0,NULL),(93,'Thermal Paste','Desktop2',1,300,'Living',7,6,'',0,NULL),(95,'HP 840 G3 Laptop Replace','Laptop Office',1,25000,'Work',17,15,'',0,NULL),(108,'Crucial 8GB RAM','Desktop2',2,2000,'Living',12,12,'',0,NULL),(114,'3 in 1 wireless controller','Desktop2',1,1200,'Living',7,7,'',0,NULL),(121,'USB extender 1.5M','Desktop2',1,200,'Living',7,6,'',0,NULL),(124,'Mini Keyboard Wired','Laptop',1,700,'Office',12,12,'',1,NULL),(126,'Car inherit','Car',1,5000,'Outdoor',3,3,'',0,NULL),(135,'Food Thermometer','Air Fryer',1,500,'Kitchen',6,6,'',0,NULL),(140,'Bulbs','Security',1,150,'Keja',1,1,'',1,NULL),(145,'Fuliza Loan','Credit',1,1500,'Outside',12,12,'',0,NULL),(148,'Phone Holder','phone',1,400,'Office',6,6,'',0,NULL),(149,'USB Type C','phone',1,200,'Office',11,12,'',0,NULL),(164,'Stima','Monthly',1,2000,'Living',104,102,'',0,NULL),(165,'Takataka','Monthly',1,200,'Kitchen',104,102,'',0,NULL),(166,'Wifi','Monthly',1,800,'Living',104,102,'\r\n\r\n',0,NULL),(167,'Gas','Monthly',1,1200,'Living',104,102,'',0,NULL),(168,'Alpha Fare','Monthly',1,2000,'Office',104,102,'',0,NULL),(169,'Shopping','Monthly',1,4500,'Kitchen',104,102,'',0,NULL),(170,'Grocery','Monthly',1,6600,'Kitchen',104,102,'',0,NULL),(171,'Lha Special Diet','Monthly',20,100,'Living',104,102,'',0,NULL),(173,'Redmi 12C 3GB 64 GB phone','Lha',1,13000,'Business',7,6,'',0,NULL),(189,'Northstar','Alpha',1,1200,'Work',1,1,'',0,NULL),(190,'Bathroom Tank','Storage',1,1400,'Bathroom',3,3,'',0,NULL),(191,'Lexar 512 SSD','Desktop 3',1,5000,'Office',15,14,'',1,NULL),(192,'Quadro P620 GPU, if sell k620 for 3k','Desktop 3',1,6000,'Office',15,14,'',1,NULL),(195,'White Armless Plastic Chair','Desktop2',1,700,'Living',3,3,'',0,NULL),(196,'Hilda Loan','Credit',1,1500,'Outside',1,1,'',0,NULL),(198,'Jatos','Alpha',2,350,'Work',1,1,'',0,NULL),(203,'Eames Table for 4','Dining',1,7500,'Dining',9,9,'',1,NULL),(204,'Eames Chair','Dining',2,2500,'Dining',9,9,'',1,NULL),(209,'Balcony net and translucent roof ','Duty',1,1500,'Balcony',3,3,'',0,NULL),(210,'Sink Fixes','Duty',1,1000,'Kitchen',3,3,'',0,NULL),(212,'Plaster Balcony Wall','Duty',1,1500,'Balcony',3,3,'',0,NULL),(213,'Vacuum cleaner Cordless','Carpet',1,3000,'Living',6,6,'',0,NULL),(216,'Kitchen Cabinet ','Kitchen ',1,10000,'Kitchen ',3,3,'',1,NULL),(218,'Lha clothes ','Clothes',1,16000,'Home',5,5,'',0,NULL),(219,'Alpha Clothes','Clothes',1,8000,'Home',9,9,'',0,NULL),(220,'LHA Masters','Car',1,350000,'Outside ',18,18,'',0,NULL),(221,'Lha Biz','Duty',1,80000,'School',10,10,'14',0,NULL),(222,'Kitchen Table','Kitchen',1,2000,'Kitchen',3,3,'',0,NULL),(223,'knives','Crockery',1,250,'Kitchen',3,3,'',0,NULL),(224,'Spoons','Crockery',1,200,'Kitchen',3,3,'',0,NULL),(225,'Fork','Kitchen',1,200,'Kitchen',12,12,'',0,NULL),(226,'Wine Glass','Crockery',1,700,'Kitchen',3,3,'',0,NULL),(227,'Water Glass','Crockery',1,700,'Kitchen',3,3,'',0,NULL),(228,'Sufuria','Cookware',1,1000,'Kitchen',12,12,'',0,NULL),(229,'2 Gas Burner Cooker','Cookware',1,2500,'Kitchen',11,12,'',0,NULL),(230,'3 in 1 Under Cabinet Shelf','Kitchen',1,1800,'Kitchen',3,3,'',0,NULL),(232,'Baby Cot Set with Chest Drawer','Baby',1,16000,'Bedroom',4,4,'',0,NULL),(233,'Manicure Table','Lha',1,6000,'Bedroom',11,12,'',0,NULL),(234,'Iron Board','Laundry',1,2000,'Bedroom',12,12,'',1,NULL),(235,'Portable Wardrobe','Storage',1,2700,'Bedroom',6,6,'',0,NULL),(236,'Wardrobe Curtain','Storage',1,1000,'Bedroom',12,12,'',0,NULL),(237,'Door Mat','Fabric',1,500,'Living',12,12,'',0,NULL),(238,'Curtains Substitute','Fabric',1,2000,'Living',12,12,'',0,NULL),(239,'Small Shoe Rack','Storage',1,500,'Living',11,12,'',0,NULL),(240,'SKyworth 43 inch TV','Entertainment',1,26000,'Living',11,11,'',0,NULL),(242,'Mini Art Plants','Decor',2,750,'Living',3,3,'',0,NULL),(243,'Wall Art','Decor',1,4000,'Living',16,14,'',1,NULL),(244,'Thrutmaster T80 Ferrari','Desktop 3',1,16000,'Living',17,15,'',0,NULL),(245,'Art Flowers','Dining',1,1000,'Dining',9,9,'',1,NULL),(246,'50x100 Land Konza ','Real estate',1,450000,'Outside',16,16,'',0,NULL),(247,'Lha Undergrad First Semesters Fee','School',1,53000,'Outside',8,8,'',0,NULL),(248,'Lha Undergrad 2nd year Semesters Fee','School',1,60000,'Outdoor',15,14,'',0,NULL),(249,'House and Car Saving For Loan (save 800K- Loan 1M)','Real estate',1,800000,'Outdoor',17,17,'',0,NULL),(250,'Laptop Stand','Laptop',1,500,'Office',11,12,'',0,NULL),(251,'Xbox 360 Wireless Controller','Desktop 3',1,3000,'Living',15,14,'',1,NULL),(252,'DELL P2217H FHD Monitor','Desktop 3',1,7500,'Gaming',19,17,'',1,NULL),(253,'8GB RAM','Desktop 3',2,2000,'Gaming',19,17,'',1,NULL),(254,'Lha Second Semester Fees','School',1,52000,'Remote',9,9,'',0,NULL),(255,'Mum Fridge Loan','Fridge',1,18000,'Kitchen',2,2,'',0,NULL),(256,'180 Container','Fridge',2,180,'Kitchen',2,2,'',0,NULL),(257,'100 Container','Fridge',3,100,'Kitchen',2,2,'',0,NULL),(258,'Stima','Monthly',1,2100,'Living',104,103,'',0,NULL),(259,'Takataka','Monthly',1,200,'Kitchen',104,103,'',0,NULL),(260,'Wifi','Monthly',1,800,'Living',104,103,'\r\n\r\n',0,NULL),(261,'Gas','Monthly',1,1300,'Living',104,103,'',0,NULL),(262,'Alpha Fare (Hybrid - Car + mat)','Monthly',22,200,'Office',104,103,'',0,NULL),(263,'Shopping','Monthly',1,5500,'Kitchen',104,103,'',0,NULL),(264,'Grocery','Monthly',1,6700,'Kitchen',104,103,'',0,NULL),(265,'Baby Special Diet','Monthly',30,100,'Living',104,103,'',0,NULL),(273,'Lha NHIF','Maternity',1,500,'Hospital',103,103,'',0,NULL);
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

-- Dump completed on 2024-04-25 12:17:49
