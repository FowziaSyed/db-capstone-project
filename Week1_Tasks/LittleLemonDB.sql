-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL,
  `BookedDate` date NOT NULL,
  `TableNo` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `customerid_fk_idx` (`CustomerID`),
  CONSTRAINT `customerid_fk` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2023-05-10',12,6),(2,'2023-02-20',12,4),(3,'2023-06-15',19,1),(4,'2023-10-09',15,3),(5,'2023-04-25',5,2),(6,'2023-03-16',8,5);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(55) NOT NULL,
  `ContactNumber` varchar(55) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Anna Iversen','351258074','Anna.g@littlelemon.com'),(2,'Joakim Iversen','351474048','Joakim.g@littlelemon.com'),(3,'Vanessa McCarthy','351970582','Vanessa.g@littlelemon.com'),(4,'Marcos Romero','351963569','Marcos.g@littlelemon.com'),(5,'Hiroki Yamane','351074198','Hiroki.g@littlelemon.com'),(6,'Diana Pinto','351584508','Diana.g@littlelemon.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `DeliveryID` int NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryStatus` varchar(55) NOT NULL,
  PRIMARY KEY (`DeliveryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'2023-11-20','delivered'),(2,'2023-10-15','delivered'),(3,'2024-09-20','Yet to deliver'),(4,'2024-05-19','In progress'),(5,'2024-05-25','Yet to deliver'),(6,'2024-04-25','In progress');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `MenuID` int NOT NULL,
  `ItemID` int NOT NULL,
  `CusineName` varchar(55) NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `itemid_fk_idx` (`ItemID`),
  CONSTRAINT `itemid_fk` FOREIGN KEY (`ItemID`) REFERENCES `menulist` (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1,'Greek'),(2,7,'Greek'),(3,10,'Greek'),(4,13,'Greek'),(5,3,'Italian'),(6,9,'Italian'),(7,12,'Italian'),(8,15,'Italian'),(9,5,'Turkish'),(10,17,'Turkish'),(11,11,'Turkish'),(12,16,'Turkish');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menulist`
--

DROP TABLE IF EXISTS `menulist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menulist` (
  `ItemID` int NOT NULL,
  `ItemName` varchar(55) NOT NULL,
  `ItemType` varchar(55) NOT NULL,
  `ItemPrice` int NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menulist`
--

LOCK TABLES `menulist` WRITE;
/*!40000 ALTER TABLE `menulist` DISABLE KEYS */;
INSERT INTO `menulist` VALUES (1,'Olives','Starters',5),(2,'Flatbread','Starters',5),(3,'Minestrone','Starters',8),(4,'Tomato bread','Starters',8),(5,'Falafel','Starters',7),(6,'Hummus','Starters',5),(7,'Greek salad','Main Courses',15),(8,'Bean soup','Main Courses',12),(9,'Pizza','Main Courses',15),(10,'Greek yoghurt','Desserts',7),(11,'Ice cream','Desserts',6),(12,'Cheesecake','Desserts',4),(13,'Athens White wine','Drinks',25),(14,'Corfu Red Wine','Drinks',30),(15,'Turkish Coffee','Drinks',10),(16,'Turkish Coffee','Drinks',10),(17,'Kabasa','Main Courses',17);
/*!40000 ALTER TABLE `menulist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `Quantity` int NOT NULL,
  `TotalCost` int NOT NULL,
  `CustomerID` int NOT NULL,
  `BookingID` int NOT NULL,
  `MenuID` int NOT NULL,
  `DeliveryID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `customerid_fk_idx` (`CustomerID`),
  KEY `bookingid_fk_idx` (`BookingID`),
  KEY `menuid_fk_idx` (`MenuID`),
  KEY `deliveryid_fk_idx` (`DeliveryID`),
  CONSTRAINT `bookingid_fk` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`),
  CONSTRAINT `customer_fk` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `deliveryid_fk` FOREIGN KEY (`DeliveryID`) REFERENCES `delivery` (`DeliveryID`),
  CONSTRAINT `menuid_fk` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-05-11',2,150,6,5,3,6),(2,'2023-02-21',3,200,3,4,1,5),(3,'2023-06-16',3,250,2,3,2,3),(4,'2023-10-10',1,300,4,2,3,2),(5,'2023-04-26',2,100,1,6,1,4),(6,'2023-03-26',1,50,5,1,2,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffdetails`
--

DROP TABLE IF EXISTS `staffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffdetails` (
  `StaffID` int NOT NULL,
  `StaffName` varchar(55) NOT NULL,
  `StaffRole` varchar(55) NOT NULL,
  `Salary` int NOT NULL,
  `BookingID` int NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `Salary_UNIQUE` (`Salary`),
  UNIQUE KEY `BookingID_UNIQUE` (`BookingID`),
  KEY `booking_fk_idx` (`BookingID`),
  CONSTRAINT `booking_fk` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffdetails`
--

LOCK TABLES `staffdetails` WRITE;
/*!40000 ALTER TABLE `staffdetails` DISABLE KEYS */;
INSERT INTO `staffdetails` VALUES (1,'Mario Gollini','Manager',50000,5),(2,'Adrian Gollini','Assistant Manager',45000,2),(3,'Giorgos Dioudis','Head Chef',40000,3),(4,'Fatma Kaya','Assistant Chef',35000,6),(5,'Elena Salvai','Head Waiter',30000,1),(6,'John Millar','Receptionist',25000,4);
/*!40000 ALTER TABLE `staffdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-21 16:13:16
