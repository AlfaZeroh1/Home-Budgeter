-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: h
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Wireless Mouse','Laptop',1,500,'Work',4,4,'',0,NULL),(4,'Glasses','Crockery',6,100,'Kitchen',3,3,'',0,NULL),(5,'Hotpot Set','Crockery',1,2500,'Kitchen',3,3,'',0,NULL),(7,'Cups','Crockery',7,150,'Kitchen',3,3,'',0,NULL),(9,'Sahani za Wageni','Crockery',7,150,'Kitchen',3,3,'',0,NULL),(11,'Kufuli','Security',1,750,'Living',1,1,'',0,NULL),(13,'Coffee Table','Furniture',1,4300,'Living',1,999,'',1,NULL),(15,'3D Carpet 7x10','Carpet',1,5800,'Living',8,8,'',0,NULL),(16,'Laundry Bucket','Plastic',1,1,'Bathroom',1,999,'',1,NULL),(20,'Gas Lighter','Utility',1,400,'Kitchen',8,8,'',0,NULL),(21,'Tissue Holder','Utility',1,350,'Bathroom',6,6,'',0,NULL),(22,'Soap Holder','Utility',1,350,'Bathroom',6,6,'',0,NULL),(23,'90L Fridge new','Fridge',1,17500,'Kitchen',2,2,'',0,NULL),(24,'Air Fryer','Cooker',1,6000,'Kitchen',2,2,'',0,NULL),(27,'8GB Laptop Ram','Laptop',1,2800,'Office',7,7,'',0,NULL),(28,'Xbox 360 wired','Desktop2',1,1200,'Living',7,7,'',0,NULL),(30,'Camo Cloth','Fabric',1,1000,'Living',4,4,'',0,NULL),(31,'Artificial Plants','Deco',1,3000,'Living',8,8,'',0,NULL),(36,'Pasi','Utility',1,900,'Bedroom',5,5,'',0,NULL),(37,'Hangers','Utility',1,400,'Bedroom',5,5,'',0,NULL),(38,'Office Desk','Desktop2',1,4500,'Living',6,6,'',0,NULL),(40,'Laptop Battery','Laptop',1,2500,'Office',11,11,'',0,NULL),(41,'Moko 2-seater','Furniture',1,17500,'Dining',4,4,'',0,NULL),(47,'Apron','Kitchen wear',1,350,'Kitchen',11,11,'',0,NULL),(48,'Oven Gloves','Kitchen wear',1,350,'Kitchen',11,11,'',0,NULL),(49,'chef hat','Kitchen wear',1,300,'Kitchen',11,11,'',0,NULL),(52,'Berry loan','Credit',1,3250,'Outside',8,8,'',0,NULL),(53,'KCB loan','Credit',1,1250,'Outside',8,8,'',0,NULL),(56,'Hustler loan','Credit',2,700,'Outside',12,12,'',0,NULL),(59,'Fluffy Pillows','Fabric',5,200,'Living',4,4,'',0,NULL),(64,'Fridge Guard','Fridge',1,600,'Kitchen',2,999,'',1,NULL),(71,'Northstar','Alpha',1,1200,'Work',1,1,'',1,NULL),(72,'Nunix Standing Fan 16 or 18 inch','Electrics',1,3100,'Living ',1,1,'',1,NULL),(81,'7KG Twin Tub Washing Machine','Electrics',1,18700,'Bathroom',5,5,'',0,NULL),(83,'Oil dispensing set with pastry brush','Crockery',1,200,'Kitchen',3,3,'',0,NULL),(84,'Generic Body weighing Scale','Electrics',1,1100,'Kitchen',12,12,'',0,NULL),(85,'Nunix Mixer with Bowl','Electrics',1,1100,'Kitchen',12,12,'',0,NULL),(88,'Chips Basket','Crockery',2,350,'Kitchen',12,12,'',0,NULL),(93,'Thermal Paste','Desktop2',1,300,'Living',7,7,'',0,NULL),(95,'HP 840 G3','Laptop Office',1,25000,'Work',16,16,'',0,NULL),(104,'laptop Holder','Laptop',1,1000,'Work',12,12,'',2,NULL),(108,'Crucial 8GB RAM','Desktop2',2,2000,'Living',12,12,'',0,NULL),(114,'Ucom wired','Desktop2',1,600,'Living',7,7,'',0,NULL),(121,'USB extender 1.5M','Desktop2',1,200,'Living',7,7,'',0,NULL),(124,'Mini Keyboard Wired','Laptop',1,700,'Office',12,12,'',0,NULL),(126,'Car inherit','Car',1,15000,'Outdoor',10,10,'',0,NULL),(135,'Food Thermometer','Electrics',1,500,'Kitchen',8,8,'',0,NULL),(140,'Bulbs','Security',1,150,'Keja',3,3,'',0,NULL),(145,'Fuliza Loan','Credit',1,1500,'Outside',12,12,'',0,NULL),(148,'Phone Holder','phone',1,400,'Office',10,10,'',0,NULL),(149,'USB Type C','phone',1,200,'Office',7,7,'',0,NULL),(154,'5x6 normal Bed','Bed2',1,11700,'Bedroom',4,999,'',1,NULL),(155,'5x6 mosquito net','Bed2',1,1700,'Bedroom',4,999,'',1,NULL),(156,'5x6 Duvet Set','Bed2',1,1900,'Bedroom',4,999,'',1,NULL),(157,'Bed Pillows','Bed2',2,350,'Bedroom',4,999,'',1,NULL),(158,'Johari 8 inch mattress','Bed2',1,10000,'Bedroom',3,999,'',1,NULL),(159,'Lha Sweater','Home Clothes',2,250,'Bedroom',2,2,'',0,NULL),(160,'Lha Dera','Home Clothes',5,400,'Bedroom',1,1,'',1,NULL),(161,'Lha Tshirts','Home Clothes',3,100,'Bedroom',2,2,'\r\n',0,NULL),(162,'Lha Trousers','Home Clothes',2,300,'Bedroom',5,999,'',1,NULL),(164,'Stima','Monthly',1,10,'Living',104,104,'',0,NULL),(165,'Takataka','Monthly',1,2,'Kitchen',104,104,'',0,NULL),(166,'Wifi','Monthly',1,15,'Living',104,104,'\r\n\r\n',0,NULL),(167,'Gas','Monthly',1,12,'Living',104,104,'',0,NULL),(168,'Alpha Fare','Monthly',1,19,'Office',104,104,'',0,NULL),(169,'Shopping','Monthly',1,45,'Kitchen',104,104,'',0,NULL),(170,'Grocery','Monthly',1,66,'Kitchen',104,104,'',0,NULL),(171,'Lha Special Diet','Monthly',20,1,'Living',104,104,'',0,NULL),(173,'64 GB phone','Lha',1,16000,'Business',10,10,'',0,NULL),(189,'Northstar','Alpha',1,1200,'Work',1,1,'',0,NULL),(190,'Bathroom Tank','Storage',1,1400,'Bathroom',3,3,'',0,NULL),(191,'Lexar 512 SSD','Desktop3',1,5,'Office',201,201,'',0,NULL),(192,'Quadro P620 GPU','Desktop3',1,4,'Office',201,201,'',0,NULL),(194,'Thrustmaster T80 Used','Desktop3',1,10,'Office',201,201,'',0,NULL),(195,'Eames Chair','Desktop2',1,2500,'Living',6,6,'',0,NULL),(196,'Hilda Loan','Credit',1,1500,'Outside',1,1,'',0,NULL),(197,'Skyworth 50 inch TV','Desktop3',1,44,'Living',201,201,'',0,NULL),(198,'Jatos','Alpha',2,350,'Work',1,1,'',0,NULL),(199,'Jose Loan','Credit',1,500,'Outside',1,1,'',1,NULL),(200,'Onyando Loan','Credit',1,100,'Outside',1,1,'',1,NULL),(201,'Lha Hair','Duty',1,1500,'Inside',1,999,'\r\n',1,NULL),(202,'Lha Mum','Duty',1,1500,'Outside',1,999,'',1,NULL),(203,'Eames or ameirah Table','Dining',1,6000,'Dining',11,11,'',0,NULL),(204,'Eames Chair','Dining',2,2500,'Dining',11,11,'',0,NULL),(205,'Kabambe','Phone',1,1700,'Home',1,999,'',1,NULL),(206,'Lha Skincare','Duty',1,2500,'Inside',2,999,'',1,NULL),(207,'Kabambe General Electric DCQ','phone',1,1700,'Inside',1,999,'',1,NULL),(208,'Eugene Loan','Credit',1,700,'Outside',1,1,'',1,NULL),(209,'Balcony net and translucent roof ','Duty',1,1500,'Balcony',3,3,'',0,NULL),(210,'Sink Fixes','Duty',1,1000,'Kitchen',3,3,'',0,NULL),(211,'Kitchen Cabinet','Duty',1,8000,'Kitchen',10,999,'',1,NULL),(212,'Plaster Balcony Wall','Duty',1,1500,'Balcony',3,3,'',0,NULL),(213,'Vacuum cleaner Cordless','Carpet',1,3000,'Living',8,8,'',0,NULL),(214,'Mosquito Racket','Duty',1,400,'Living',2,999,'',1,NULL),(215,'Kitchen table 2','Kitchen',1,2000,'Kitchen ',8,8,'',1,NULL),(216,'Kitchen Cabinet ','Kitchen ',1,10000,'Kitchen ',3,3,'',0,NULL),(217,'Big Dustbin','Kitchen',1,1,'Kitchen ',1,999,'',1,NULL),(218,'Lha clothes ','Clothes',1,20000,'Home',9,9,'',0,NULL),(219,'Alpha Clothes','Clothes',1,15000,'Home',15,15,'',0,NULL),(220,'Suzuki alto Depo','Car',1,250000,'Outside ',18,18,'',0,NULL),(221,'Lha Biz','Duty',1,80000,'School',15,15,'14',0,NULL),(222,'Pallet Kitchen Table with drawers','Kitchen',1,7500,'Kitchen',7,7,'',0,NULL),(223,'knives','Crockery',1,200,'Kitchen',3,3,'',0,NULL),(224,'Spoons','Crockery',1,200,'Kitchen',3,3,'',0,NULL),(225,'Fork','Kitchen',1,200,'Kitchen',12,12,'',0,NULL),(226,'Wine Glass','Crockery',1,700,'Kitchen',3,3,'',0,NULL),(227,'Water Glass','Crockery',1,700,'Kitchen',3,3,'',0,NULL),(228,'Sufuria','Cookware',1,1000,'Kitchen',12,12,'',0,NULL),(229,'2 Gas Burner Cooker','Cookware',1,2500,'Kitchen',7,7,'',0,NULL),(230,'Cabinet Hanging Drawer','Kitchen',1,2000,'Kitchen',12,12,'',0,NULL),(231,'Outdoor Kitchen Table','Kitchen',1,2000,'Kitchen Outdoor',12,12,'',2,NULL),(232,'Baby Cot','Baby',1,14000,'Bedroom',13,13,'',0,NULL),(233,'Dressing Table','Lha',1,8000,'Bedroom',9,9,'',0,NULL),(234,'Iron Board','Laundry',1,2000,'Bedroom',12,12,'',0,NULL),(235,'Portable Wardrobe','Storage',1,2500,'Bedroom',12,12,'',0,NULL),(236,'Wardrobe Curtain','Storage',1,1000,'Bedroom',12,12,'',0,NULL),(237,'Door Mat','Fabric',1,500,'Living',13,13,'',0,NULL),(238,'Curtains Substitute','Fabric',1,2000,'Living',11,11,'',0,NULL),(239,'Small Shoe Rack','Storage',1,500,'Living',7,7,'',0,NULL),(240,'SKyworth 43 inch TV','Entertainment',1,27000,'Living',16,16,'',0,NULL),(241,'New TV Stand','Furniture',1,9000,'Living',16,16,'',0,NULL),(242,'Mini Art Plants','Decor',2,750,'Living',11,11,'',0,NULL),(243,'Wall Art','Decor',1,4000,'Living',16,16,'',0,NULL),(244,'Thrutmaster T80 Ferrari','Gaming',1,17000,'Living',16,16,'',0,NULL),(245,'Art Flowers','Dining',1,1000,'Dining',11,11,'',0,NULL),(246,'50x100 Land Konza ','Real estate',1,500000,'Outside',19,19,'',0,NULL),(247,'Lha Undergrad 1.5 Semesters Fee','School',1,60000,'Outside',14,14,'',0,NULL),(248,'Lha Undergrad 3 Semesters Fee','School',3,40000,'Outdoor',17,17,'',0,NULL),(249,'House Saving For Loan','Real estate',1,500000,'Outdoor',20,20,'',0,NULL),(250,'Laptop Stand','Laptop',1,500,'Office',7,7,'',0,NULL);
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

-- Dump completed on 2024-03-30 23:19:16
