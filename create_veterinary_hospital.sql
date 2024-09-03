-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: veterinary_hospital
-- ------------------------------------------------------
-- Server version	8.0.32

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

-- ********************************************
-- CREATE THE veterinary_hospital DATABASE
-- *******************************************

-- create the database
DROP DATABASE IF EXISTS veterinary_hospital;
CREATE DATABASE veterinary_hospital;

-- select the database
USE veterinary_hospital;

--
-- Table structure for table `animaltypes`
--

DROP TABLE IF EXISTS `animaltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animaltypes` (
  `Animals` varchar(25) NOT NULL,
  PRIMARY KEY (`Animals`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaltypes`
--

LOCK TABLES `animaltypes` WRITE;
/*!40000 ALTER TABLE `animaltypes` DISABLE KEYS */;
INSERT INTO `animaltypes` VALUES ('BEAR'),('BIRD'),('CAT'),('COW'),('DEER'),('DOG'),('DUCK'),('FISH'),('FROG'),('GOAT'),('GUINEA PIG'),('HAMSTER'),('HORSE'),('IGUANA'),('LAMB'),('LIZARD'),('MONKEY'),('OSTRICH'),('PIG'),('RABBIT'),('RAT'),('ROOSTER'),('SEAL'),('SHEEP'),('SNAKE'),('SQUIRREL'),('TURKEY'),('TURTLE'),('WOLF');
/*!40000 ALTER TABLE `animaltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerNumber` varchar(10) NOT NULL,
  `CustomerType` varchar(15) DEFAULT NULL,
  `CustomerName` varchar(30) DEFAULT NULL,
  `Address` varchar(35) DEFAULT NULL,
  `City` varchar(35) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `ZipCode` varchar(5) DEFAULT NULL,
  `PhoneNumber` varchar(13) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `LastContactDate` datetime DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`CustomerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('P001','Personal','William Whiting','2799 Herringbone St','Terrace Heights','WA','98105','2065559930','2010-02-22 00:00:00','2020-05-05 00:00:00',0),('P002','Personal','Ashley Sanchez','1 Arthur Manning Crt','Highland Park','OR','97300','5037647993','2012-12-04 00:00:00','2019-03-09 00:00:00',0),('P003','Personal','Karen McGeorge','21 Adams Blvd.  \r\nApt 16','Tall Pines','WA','98102','2067126622','2014-03-19 00:00:00','2019-11-04 00:00:00',0),('P004','Personal','Fayra Ishmael','544 Hauser Rd','Terrace Heights','WA','98104','2067648788','2015-01-16 00:00:00','2018-07-13 00:00:00',0),('P005','Personal','Letitia Adams','55 Ashport Ave','Mount Pilot','ID','83412','2085552211','2015-04-01 00:00:00','2019-03-07 00:00:00',0),('P006','Personal','Colin Wong','456 Bishops Ln','Trondheim','OR','97401','5037354432','2016-10-10 00:00:00','2020-06-17 00:00:00',0),('P007','Personal','Li Nguyen','66 Farmaccess Rd','Tall Pines','WA','98401','2065551225','2018-01-22 00:00:00','2022-02-23 00:00:00',0),('P008','Personal','Vera Wang','914 Brocton Rd','Tall Pines','ID','83412','2084388898','2019-12-04 00:00:00','2022-06-17 00:00:00',0),('P009','Personal','Jose Santiago','34 Leonard Blvd','Highland Park','OR','97300','5037651222','2020-09-02 00:00:00','2022-02-03 00:00:00',0.1),('P010','Personal','Vera Allen','555 Sycamore Ave','Las Alamos','ID','83401','2085381237','2021-09-01 00:00:00','2022-01-16 00:00:00',0),('P011','Personal','Colin Adams','172 5th St','Trondheim','OR','97401','5036666187','2021-10-22 00:00:00','2019-01-27 00:00:00',0.05),('P012','Personal','Jonathan Adams','66 17th Ave','Terrace Heights','WA','98105','2065277623','2021-01-01 00:00:00','2021-06-18 00:00:00',0.05),('P013','Personal','Kendall Jackson','77 Crescent Heights Rd','Ranier City','WA','98401','2062332232','2021-10-22 00:00:00','2022-04-23 00:00:00',0),('P014','Personal','Kendrick Willes','2211 Main St','Terrace Heights','WA','98105','2065982543','2021-10-03 00:00:00',NULL,0),('P015','Personal','Nadia Petronas','9122 Bookland Rd','Tall Pines','WA','98412','2064558888','2021-12-04 00:00:00','2022-03-07 00:00:00',0),('P016','Personal','Tyron Jones','8714 Rory Way','Las Alamos','ID','83412','2085751199','2017-04-11 00:00:00','2022-06-15 00:00:00',0),('P017','Personal','William Smith','45 Arbor Way','Terrace Heights','WA','98104','2064381230','2021-11-11 00:00:00','2022-05-19 00:00:00',0),('P018','Personal','Harry Potter','124 Main St','Terrace Heights','WA','98105','2069453383','2022-01-12 00:00:00','2022-06-16 00:00:00',0),('P019','Personal','Divan Ishimori','3810 45th St.','Yuba City','ID','83412','2087695113','2022-01-11 00:00:00','2022-06-15 00:00:00',0),('P020','Personal','Felicia Puccini','56 Marji St.','Tall Pines','WA','98401','2063121298','2022-03-09 00:00:00',NULL,0),('P021','Personal','Barbara Moretown','64 10th St','Trondheim','OR','97305','2069875480','2022-04-22 00:00:00','2022-06-01 00:00:00',0),('R001','Retail Store','Animal House','23 Barney Trail','Trondheim','OR','97846','5035558723','2013-10-05 00:00:00','2019-03-10 00:00:00',0.2),('R002','Retail Store','Vera\'s Animal Kingdom','17 Grey Lane','Highland Park','ID','83483','2085557108','2011-05-22 00:00:00','2020-12-09 00:00:00',0.2),('R003','Retail Store','Cisco Animal Store','144 Samuelton St.','Las Alamos','ID','83412','2085557763','2013-04-16 00:00:00','2021-01-15 00:00:00',0.2),('R004','Retail Store','Animals and Stuff','22 Eagle Blvd','Yuba City','ID','83412','2085554367','2014-08-09 00:00:00','2022-03-20 00:00:00',0.2),('R005','Retail Store','Dog Chow House','76 Canine Ln.','Ranier City','WA','98756','2065558734','2014-09-08 00:00:00','2019-08-15 00:00:00',0.2),('R006','Retail Store','Animal Pet Shop','76 Right Ln.','Highland Park','OR','97541','5035554381','2014-05-06 00:00:00','2020-04-14 00:00:00',0.2),('R007','Retail Store','The Pet Shop','200 Purchase Ln','Highland Park','WA','98453','2065551067','2016-01-01 00:00:00','2019-09-03 00:00:00',0.2),('R008','Retail Store','Mountain Animal Shop','22 Downton Abbey Rd.','Ranier City','WA','98761','2065559254','2018-03-10 00:00:00','2022-07-15 00:00:00',0.2),('R009','Retail Store','Animals for Yout','72 Crockpot Dr.','Terrace Heights','WA','98746','2065558348','2017-03-25 00:00:00','2022-03-15 00:00:00',0.2),('R010','Retail Store','Exotic Animal House','99 Hannahsville St.','Mount Pilot','ID','83187','2085551765','2019-12-24 00:00:00','2019-06-18 00:00:00',0.2),('R011','Retail Store','Kittens Puppies & More','750 Martinsville Lane','Trondheim','OR','97982','5035559988','2019-06-19 00:00:00','2020-04-10 00:00:00',0.2),('R012','Retail Store','Warm AnimalLand','99 Fiery Ln.','Ranier City','WA','98746','2065558791','2020-11-11 00:00:00','2021-01-05 00:00:00',0.2),('R013','Retail Store','Mt. Rainer Pet Store','30 Hannah St.','Yuba City','ID','83019','2085551234','2021-07-05 00:00:00','2022-06-28 00:00:00',0.2),('R014','Retail Store','House Of Pets','123 Yale Blvd.','Highland Park','OR','97265','5035559372','2022-05-03 00:00:00',NULL,0.2),('R015','Retail Store','Pets R Us','990 Belvedere St.','Las Alamos','ID','83985','2085554132','2022-06-27 00:00:00',NULL,0.2),('R016','Retail Store','Animal World','200 Huntington Lane','Highland Park','WA','98756','2065555735','2022-01-15 00:00:00',NULL,0.2),('R017','Retail Store','Animal Love','12 Main St','Terrace Heights','WA','98154','2065554658','2021-10-09 00:00:00','2022-03-17 00:00:00',0.2),('R018','Retail Store','Pets and Supplies','44 Ocean Blvd','Highland Park','OR','97816','5035556611','2022-04-08 00:00:00','2022-07-20 00:00:00',0.2),('Z001','Zoo','Ranier City Zoo','100 Prescott Ave.','Ranier City','WA','98412','2067113039','2012-03-15 00:00:00','2020-04-15 00:00:00',0.25),('Z002','Zoo','Municipal Nature Center','12 Kindly Ave.','Trondheim','OR','97401','5037774455','2012-02-26 00:00:00','2022-05-17 00:00:00',0.25),('Z003','Zoo','Highland Park Zoo','1015 Highland Blvd.','Highland Park','OR','97412','5032322685','2012-07-16 00:00:00','2019-07-08 00:00:00',0.25),('Z004','Zoo','George Harris Sanctuary','George St.','Mount Pilot','ID','83908','2081114444','2015-04-20 00:00:00','2021-07-16 00:00:00',0.25),('Z005','Zoo','Trondheim Petting Zoo','31 Buckingham Rd.','Trondheim','OR','97213','5037621222','2018-09-09 00:00:00','2021-03-18 00:00:00',0.5),('Z006','Zoo','Storey Island Animal Center','10 Pine Way','Terrace Heights','WA','98412','2065559767','2021-01-12 00:00:00','2022-01-15 00:00:00',0.25),('Z007','Zoo','Cisco Zoo','37 Mount Pilot St.','Mount Pilot','ID','83124','2083407000','2021-03-15 00:00:00','2022-07-14 00:00:00',0.25),('Z008','Zoo','Mount. St. Helens Zoo','88 Hail Mary Ave.','Portland','OR','97203','5035559256','2021-02-16 00:00:00','2022-03-15 00:00:00',0.25),('Z009','Zoo','Animal Center','49-2 Horton St','Tall Pines','WA','98167','2069329817','2021-12-01 00:00:00','2022-05-16 00:00:00',0.25),('Z010','Zoo','Allensdale Nature Preserve','27657 Oak St.','Yuba City','ID','83175','2085680983','2021-02-10 00:00:00','2021-03-17 00:00:00',0.5);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorID` varchar(25) NOT NULL,
  `Specializations` varchar(255) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `University` varchar(25) DEFAULT NULL,
  `Terminal Degree` varchar(25) DEFAULT NULL,
  `FullyQualified` bit(1) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES ('001','dogs/cats/birds','Harlow','Jennifer','1984-04-15 00:00:00','University of Missouri','DVM',_binary ''),('002','zoo animals/birds/lab testing/farm animals','Cruz','Henry','1965-09-14 00:00:00','Cornell','DVM',_binary ''),('003','lab testing/dogs/cats','Wilson','Franklin','1994-09-15 00:00:00','Kansas State University','MS',_binary '\0'),('004','livestock/zoo animals/research','Nishikawa','Annie','1977-12-15 00:00:00','Cornell','PhD',_binary ''),('005','cats/small animals','Chan','Hector','1964-05-27 00:00:00','Virgina Tech','PhD',_binary ''),('006','reptiles and snakes/birds','Johnson','Larry','1972-04-20 00:00:00','Michigan State University','PhD',_binary ''),('007','farm animals/dogs/cats/research','Lee','Victor','1998-07-31 00:00:00','Washington State Universi','DVM',_binary ''),('008','dogs/cats/birds','Lee','Michelle','1959-08-15 00:00:00','Cornell','MS',_binary '\0'),('009','zoo animals/aquatic animals/bacterial infections','Sanchez','Mariella','1995-07-01 00:00:00','Virginia Tech','DVM',_binary ''),('010','research/lab testing/dogs/cats','Le Fontaine','Henri','1967-01-15 00:00:00','Auburn University','DVM',_binary ''),('011','birds/small animals/exotic animals','Smith','John','1977-02-15 00:00:00','Iowa State University','MS',_binary '\0'),('012','farm animals/large animals','Moore','Joseph','1969-03-17 00:00:00','University of Illinois','DVM',_binary ''),('013','dogs/cats/pet store animals','Reyes','Sorela','1995-04-15 00:00:00','Tuskegee University','MS',_binary '\0');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `MedicationCode` varchar(10) NOT NULL,
  `MedicationName` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`MedicationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES ('0000','None',0),('0100','Aspirin - 100 mg',2),('0101','Tylinol - 200 mg',10),('0102','Tylinol - 400 mg',19),('0103','Aspertane - 100 mg',10),('0104','Aspertane - 200 mg',19),('0105','Aspertane - 400 mg',28),('0200','White Petrolium Jelly',4),('0201','Zinc Oxide - 1 oz',4.5),('0202','Zinc Oxide - 4 oz',7.8),('0203','Zinc Bi-Oxide - 2 oz',7.5),('0204','Lanoline Hydrous - 2 oz',4),('0205','Lanoline Hydrous - 4 oz',8),('0300','Isoprople Rubbing Alcohol',5),('0301','Biopprople Rubbing Alcohol',6),('0302','Magnium Paroxide - 2 oz',4),('0303','Lariephogylconol - 8 iz',12),('0304','Glyconfate - 1 oz',5),('0305','Glyconfate - 2 oz',10),('0400','Dermoblast - 2 oz',6),('0401','Dermoblast - 4 oz',12),('0402','Bonzocaine - 2 oz',14),('0403','Bonzocaine - 4 oz',28),('0404','Mentocetyl Carbon - 6 oz',32),('0405','Polycarbmentynol - 2 oz',16),('0500','Nyostatine - 1 oz',11.5),('0501','Nyostatine - 2 oz',20),('0502','Byactocaine - 2 oz',6),('0503','Byactocaine - 4 oz',11),('0504','Dual Antibiotic - 4 oz',4),('0505','Dual Antibiotic - 8 oz',8),('0600','Hydrocortine glycol - 2 oz',2),('0601','Hydrocortine glycol - 4 oz',9),('0602','Bortaid - 2 oz',3.5),('0603','Bortaid - 4 oz',6.5),('0604','Puritic Hydrocine - 1 oz',1),('0605','Puritic Hydrocine - 2 oz',2),('0700','Magnesia Milk - 8 oz',2.5),('0701','Magnesia Milk - 16 oz',4.5),('0702','Xaritain Glyconol - 2 oz',15),('0703','Xaritain Glyconol - 4 oz',47),('0704','Citromagnesia - 4 oz',12),('0705','Citromagnesia - 8 oz',24);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `PetID` varchar(25) NOT NULL,
  `PetName` varchar(35) DEFAULT NULL,
  `AnimalType` varchar(20) DEFAULT NULL,
  `Breed` varchar(20) DEFAULT NULL,
  `CustomerNumber` varchar(10) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `Colors` varchar(50) DEFAULT NULL,
  `Neutered_Spayed` bit(1) DEFAULT NULL,
  `Length` float DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Vaccinnated` bit(1) DEFAULT NULL,
  `Deceased` bit(1) DEFAULT NULL,
  `DeceaseDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PetID`),
  KEY `fk_customers_pets` (`CustomerNumber`),
  CONSTRAINT `fk_customers_pets` FOREIGN KEY (`CustomerNumber`) REFERENCES `customers` (`CustomerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES ('P001-01','Pirate','BIRD','Blackbird','P001','2018-04-01 00:00:00','M','Black',_binary '\0',9.2,NULL,_binary '\0',_binary '\0',NULL),('P001-02','Sweetie','BIRD','Parrot','P001','2017-12-01 00:00:00','F','Blue/Green',_binary '\0',12.2,NULL,_binary '\0',_binary '\0',NULL),('P001-03','Norman','CAT','Bengal','P001','2019-10-01 00:00:00','M','Grey',_binary '',20.9,24.7,_binary '',_binary '\0',NULL),('P001-04','White Dream','HORSE','Shire','P001','2018-07-01 00:00:00','F','White/Black',_binary '\0',90,656.5,_binary '\0',_binary '\0',NULL),('P002-01','Jackie','BIRD','Canary','P002','2019-03-01 00:00:00','F','Yellow',_binary '\0',4.2,NULL,_binary '\0',_binary '\0',NULL),('P002-02','Pretty','CAT','Burmese','P002','2017-07-01 00:00:00','M','Black/White',_binary '',17.5,14.8,_binary '',_binary '\0',NULL),('P002-03','Mule','CAT','House','P002','2005-09-01 00:00:00','M','Black/White',_binary '',22.6,12.7,_binary '\0',_binary '','2022-01-06 00:00:00'),('P003-01','Carley','BIRD','Cockatoo','P003','1974-01-01 00:00:00','M','White',_binary '\0',25.7,NULL,_binary '\0',_binary '\0',NULL),('P003-02','Mickey','BIRD','Finch','P003','2019-05-01 00:00:00','M','Red/Purple/Yellow/Green',_binary '\0',5.6,NULL,_binary '\0',_binary '\0',NULL),('P004-01','Jose','BIRD','Toucan','P004','2010-09-01 00:00:00','F','Blue/Green',_binary '\0',25,NULL,_binary '\0',_binary '\0',NULL),('P005-01','Caca','BIRD','Wren','P005','2017-02-01 00:00:00','M','Brown',_binary '\0',4.9,NULL,_binary '\0',_binary '\0',NULL),('P006-01','Romeo','CAT','Mouser','P006','2019-10-01 00:00:00','F','Black/Grey',_binary '',18.2,10.6,_binary '',_binary '\0',NULL),('P007-01','Tommy','DOG','Basset Hound','P007','2019-03-01 00:00:00','M','Brown',_binary '',32.8,53.6,_binary '\0',_binary '\0',NULL),('P008-01','Saturn','DOG','Beagle','P008','2014-09-01 00:00:00','M','Black/White',_binary '',24.8,24.8,_binary '',_binary '\0',NULL),('P009-01','Rover','DOG','French Bulldog','P009','2010-06-01 00:00:00','M','Black',_binary '',16.7,18.9,_binary '',_binary '\0',NULL),('P010-01','Daffy','DOG','German Shepherd','P010','2013-09-01 00:00:00','M','Black/Red',_binary '\0',22.9,72.5,_binary '',_binary '\0',NULL),('P011-01','Mouse','CAT','Persian','P011','2020-01-01 00:00:00','F','Brown Black',_binary '',17.9,12.7,_binary '\0',_binary '\0',NULL),('P011-02','C.C.','CAT','Ragdoll','P011','2021-04-01 00:00:00','F','White/Brown/Grey',_binary '',22.4,15.3,_binary '',_binary '\0',NULL),('P011-03','Juliet','CAT','Ragdoll','P011','2021-10-01 00:00:00','F','Black/Grey',_binary '',15.3,12.7,_binary '',_binary '\0',NULL),('P012-01','Marco','CAT','Siamese','P012','2021-11-01 00:00:00','M','Brown/White',_binary '\0',15.9,16.5,_binary '\0',_binary '\0',NULL),('P012-02','Bueno','DOG','Beagle','P012','2021-08-01 00:00:00','M','Black/White/Tan',_binary '',22.8,22,_binary '',_binary '\0',NULL),('P012-03','Quentin','DOG','Boxer','P012','2015-05-01 00:00:00','M','Black/White',_binary '',22.8,22.9,_binary '',_binary '\0',NULL),('P013-01','Julie','DOG','Dachsund','P013','2011-03-11 00:00:00','F','White/Grey',_binary '',25,32,_binary '\0',_binary '\0',NULL),('P013-02','Brown Thunder','HORSE','Arabian','P013','2005-02-01 00:00:00','F','Brown',_binary '\0',96.6,652,_binary '',_binary '','2022-07-13 00:00:00'),('P013-03','Black Wonder','HORSE','Mustang','P013','2010-02-01 00:00:00','F','Black',_binary '\0',94.5,655,_binary '',_binary '\0',NULL),('P013-04','Golden Boy','HORSE','Palomino','P013','2020-04-10 00:00:00','M','Black/White',_binary '\0',92,654,_binary '',_binary '\0',NULL),('P013-05','Lenny','LIZARD','Amazon','P013',NULL,'M','Green',_binary '\0',3,NULL,_binary '\0',_binary '\0',NULL),('P014-01','Spin','DOG','Poodle','P014','2019-09-01 00:00:00','F','White',_binary '',12,7,_binary '\0',_binary '\0',NULL),('P014-02','Marty','DOG','Poodle','P014','2013-04-08 00:00:00','M','Brown/Black/White',_binary '',12.5,8.1,_binary '',_binary '','2021-09-12 00:00:00'),('P015-01','Nanda','CAT','Siamese','P015','2015-05-01 00:00:00','M','Black/White',_binary '',14.9,8.9,_binary '\0',_binary '\0',NULL),('P015-02','Pooks','CAT','Siberian','P015','2015-04-01 00:00:00','F','Black',_binary '\0',16.7,10.1,_binary '\0',_binary '\0',NULL),('P015-03','Sammy','DOG','German Shepherd','P015','2021-07-27 00:00:00','M','White',_binary '\0',25.2,95.3,_binary '',_binary '\0',NULL),('P015-04','Bibi','DOG','Great Dane','P015','2021-05-01 00:00:00','F','White/Black',_binary '',43,170.4,_binary '',_binary '\0',NULL),('P016-01','Squeeker','GUINEA PIG',NULL,'P016',NULL,'F','Brown/White',_binary '\0',18,NULL,_binary '\0',_binary '\0',NULL),('P016-02','Midnight Sky','HORSE','Pinto','P016','2015-05-04 00:00:00','M','Black/Brown/White',_binary '\0',95.5,622,_binary '',_binary '\0',NULL),('P016-03','Floppy','RABBIT','Long Eared','P016',NULL,'F','White',_binary '\0',16.9,NULL,_binary '\0',_binary '\0',NULL),('P016-04','Bibi','RABBIT','Pigmy','P016','2017-02-01 00:00:00','M','Black',_binary '\0',14.5,NULL,_binary '\0',_binary '\0',NULL),('P016-05','Beaudry','RABBIT','Pigmy','P016','2018-04-01 00:00:00','F','Brown',_binary '\0',15.9,NULL,_binary '\0',_binary '\0',NULL),('P016-06','Billy','TURTLE','Box','P016','2008-09-01 00:00:00','M','Green',_binary '\0',12.9,NULL,_binary '\0',_binary '','2022-07-01 00:00:00'),('P017-01','Barney','DOG','Great Dane','P017','2021-09-01 00:00:00','M','Brown',_binary '\0',42.1,165,_binary '\0',_binary '\0',NULL),('P018-01','Cobra','DOG','Mixed','P018','2014-04-05 00:00:00','M','Brown/Grey',_binary '\0',14.2,22,_binary '',_binary '','2021-09-14 00:00:00'),('P019-01','Barney','DOG','St. Bernard','P019','2018-02-01 00:00:00','M','Brown/White',_binary '',45.5,150,_binary '',_binary '\0',NULL),('P020-01','Rosie','DOG','Terrier','P020','2011-07-01 00:00:00','F','Grey',_binary '\0',11.8,15.9,_binary '',_binary '\0',NULL),('P020-02','Jake','DOG','Terrier','P020','2011-04-01 00:00:00','M','White/Black',_binary '\0',10.7,11.9,_binary '',_binary '\0',NULL),('R002-01','Finchy','BIRD','Finch','R002','2014-06-01 00:00:00','M','Green/Red/Blue',_binary '\0',5.7,NULL,_binary '\0',_binary '\0',NULL),('R002-02','Ming','BIRD','Lovebird','R002','2018-02-01 00:00:00','F','Brown',_binary '\0',5.2,NULL,_binary '\0',_binary '\0',NULL),('R004-01','Nana','BIRD','Parakeet','R004','2009-10-01 00:00:00','F','Yellow',_binary '\0',15.5,NULL,_binary '\0',_binary '\0',NULL),('R004-02','Rosey','BIRD','Cockatoo','R004','1996-11-01 00:00:00','F','White/Yellow',_binary '\0',13.8,NULL,_binary '\0',_binary '\0',NULL),('R004-03','Rocky','CAT','Bengal','R004','2017-05-01 00:00:00','F','Black',_binary '',12.2,6,_binary '',_binary '\0',NULL),('R004-04','Diana','DOG','Mixed','R004','2015-02-15 00:00:00','F','White/Grey/Brown',_binary '',22.2,34.5,_binary '',_binary '\0',NULL),('R005-01','Rover','DOG','Terrier','R005','2012-06-05 00:00:00','M','Grey',_binary '',11,15,_binary '',_binary '\0',NULL),('R005-02','Juniper','DOG','Rottweiler','R005','2015-05-01 00:00:00','F','Black/Brown',_binary '',41.2,112.8,_binary '',_binary '\0',NULL),('R005-03','Clown','DOG','Rottweiler','R005','2019-09-01 00:00:00','M','Black/White',_binary '\0',42.9,125.8,_binary '',_binary '\0',NULL),('R005-04','Kente','DOG','Pit Bull','R005','2015-12-01 00:00:00','M','Black/Brown',_binary '',22.9,44.7,_binary '',_binary '\0',NULL),('R005-05','Spot','DOG','Basset Hound','R005','2015-08-01 00:00:00','M','Brown',_binary '',35.1,59.9,_binary '\0',_binary '\0',NULL),('R005-06','Juny','DOG','Beagle','R005','2015-05-01 00:00:00','M','Black/Brown',_binary '',20.3,20,_binary '\0',_binary '\0',NULL),('R005-07','Sweety','DOG','Terrier','R005','2020-09-01 00:00:00','F','Tan/White',_binary '',12.8,15.5,_binary '\0',_binary '\0',NULL),('R006-01','Sally','BIRD','Parrot','R006','2015-07-01 00:00:00','F','Yellow/Green',_binary '\0',11.5,NULL,_binary '\0',_binary '\0',NULL),('R006-02','Bella','CAT','Bombay','R006','2019-04-01 00:00:00','F','Brown',_binary '',18.3,15,_binary '',_binary '\0',NULL),('R006-03','Chichi','CAT','Siberian','R006','2017-11-01 00:00:00','F','Brown/White',_binary '\0',20.9,19.5,_binary '\0',_binary '\0',NULL),('R006-04','Bibbles','CAT','Barn','R006','2018-02-01 00:00:00','M','Black/Grey/white',_binary '',15,10.4,_binary '',_binary '','2022-06-18 00:00:00'),('R007-01','Charger','DOG','Terrier','R007','2011-10-01 00:00:00','M','White/Grey',_binary '\0',11.9,17.1,_binary '',_binary '\0',NULL),('R007-02','Snuggles','TURTLE','Box','R007','1951-12-01 00:00:00','M','Green',_binary '\0',8.3,NULL,_binary '',_binary '\0',NULL),('R008-01','Pepe','CAT','Persian','R008','2014-08-01 00:00:00','M','Black/ White',_binary '\0',19.2,11.1,_binary '\0',_binary '\0',NULL),('R008-02','Ceci','CAT','Tabby','R008','2018-05-01 00:00:00','M','Brown/ White',_binary '\0',19,13.9,_binary '\0',_binary '\0',NULL),('R008-03','Marky','DOG','Beagle','R008','2021-07-01 00:00:00','M','Black/White/Tan',_binary '\0',21.7,20,_binary '',_binary '\0',NULL),('R008-04','Romeo','DOG','Beagle','R008','2012-08-01 00:00:00','M','Black/White',_binary '\0',18,17,_binary '\0',_binary '\0',NULL),('R008-05','Rebel','DOG','Boxer','R008','2020-03-01 00:00:00','M','Brown/white',_binary '',34.5,60,_binary '',_binary '\0',NULL),('R009-01','Stimpson','DOG','German Shepherd','R009','2017-04-01 00:00:00','M','Brown',_binary '\0',25.8,100.8,_binary '',_binary '\0',NULL),('R012-01','Stripe','CAT','Long Hair','R012','2017-03-01 00:00:00','M','White/Grey',_binary '',16.8,20.5,_binary '',_binary '\0',NULL),('R012-02','Tommy','CAT','Persian','R012','2015-02-01 00:00:00','M','Tan/White',_binary '',14.8,8.8,_binary '\0',_binary '\0',NULL),('R013-01','Tommy','CAT','Mouser','R013','2012-10-01 00:00:00','F','Mixed',_binary '',18.2,10.4,_binary '\0',_binary '\0',NULL),('R014-01','Delia','CAT','Korat','R014','2010-02-01 00:00:00','F','Black',_binary '\0',20.7,17.9,_binary '\0',_binary '\0',NULL),('R015-01','Cosmo','CAT','Siamese','R015','2010-03-01 00:00:00','M','White/Grey/Black',_binary '',20.5,21.2,_binary '',_binary '\0',NULL),('R017-01','Pumpkin','CAT','Persian','R017','2014-08-01 00:00:00','F','Orange/White',_binary '',18.6,10.8,_binary '',_binary '\0',NULL),('R017-02','Stevey','DOG','Mixed','R017','2013-01-22 00:00:00','M','Brown',_binary '',22.1,45,_binary '',_binary '\0',NULL),('R017-03','Stevey','DOG','Beagle','R017','2017-03-01 00:00:00','M','Black/White',_binary '\0',26,25.5,_binary '',_binary '\0',NULL),('R017-04','Fluffy','DOG','Terrier','R017','2015-05-01 00:00:00','M','Black/White',_binary '',11.7,15.3,_binary '',_binary '\0',NULL),('R018-01','Caster','DOG','Boxer','R018','2020-03-01 00:00:00','M','Brown/White',_binary '\0',35.5,65,_binary '\0',_binary '\0',NULL),('R018-02','Lightning','LIZARD','Chameleon','R018',NULL,'F','Green',_binary '\0',5.4,NULL,_binary '\0',_binary '\0',NULL),('R018-03','Tufts','RABBIT','Long Ears','R018',NULL,'F','Black',_binary '\0',13.6,NULL,_binary '\0',_binary '\0',NULL),('R018-04','Sassy','RABBIT','Pigmy','R018','2020-10-01 00:00:00','F','White/Black',_binary '\0',21,NULL,_binary '\0',_binary '\0',NULL),('Z001-01','Whitey','BEAR','Polar','Z001','2015-10-10 00:00:00','M','White',_binary '\0',65,155.8,_binary '\0',_binary '\0',NULL),('Z001-02','Blackie','BEAR','Andean','Z001','2016-04-01 00:00:00','M','Brown',_binary '\0',50.5,150,_binary '\0',_binary '\0',NULL),('Z002-01','Babs','PIG',NULL,'Z002','2011-02-15 00:00:00','F','Brown',_binary '\0',64.3,634,_binary '\0',_binary '\0',NULL),('Z002-02','Cory','WOLF','Timber','Z002','2017-11-01 00:00:00','M','Grey',_binary '\0',49.6,125,_binary '\0',_binary '\0',NULL),('Z002-03','Harold','SNAKE','Boa Constrictor','Z002','2019-05-01 00:00:00','M','Brown/Grey',_binary '\0',84,NULL,_binary '\0',_binary '\0',NULL),('Z002-04','Rosie','PIG',NULL,'Z002','2015-04-01 00:00:00','F','Pink/White',_binary '\0',61.2,622,_binary '\0',_binary '\0',NULL),('Z002-05','Buck','DEER',NULL,'Z002','2017-04-01 00:00:00','M','Brown/White',_binary '\0',62.9,105,_binary '\0',_binary '\0',NULL),('Z004-01','Blair','BEAR','Brown','Z004','2011-05-20 00:00:00','U','Brown',_binary '\0',60,225,_binary '\0',_binary '','2021-11-06 00:00:00'),('Z004-02','Lally','PIG',NULL,'Z004','2019-04-01 00:00:00','F','Pink/White',_binary '\0',65.6,687,_binary '\0',_binary '\0',NULL),('Z006-01','Bananas','MONKEY','Rhesus','Z006','2017-03-01 00:00:00','F','Brown',_binary '\0',17.7,23.3,_binary '\0',_binary '\0',NULL),('Z006-02','Climber','GOAT','Mountain','Z006','2016-03-01 00:00:00','M','White',_binary '\0',39.9,188,_binary '\0',_binary '\0',NULL),('Z007-01','Muncher','GOAT','Pigmy','Z007','2018-11-01 00:00:00','F','White',_binary '\0',36.9,127.1,_binary '\0',_binary '\0',NULL),('Z007-02','Tibbles','DEER','White Tail','Z007','2009-08-01 00:00:00','M','Brown',_binary '\0',67.7,104.4,_binary '\0',_binary '','2021-12-04 00:00:00'),('Z007-03','Drifter','WOLF','Timber','Z007','2019-05-01 00:00:00','M','Black',_binary '\0',44.7,120,_binary '\0',_binary '\0',NULL),('Z007-04','Bubbles','SHEEP','White','Z007','2015-11-01 00:00:00','F','White',_binary '\0',53.7,288.8,_binary '\0',_binary '\0',NULL),('Z007-05','Baron','HORSE','Apalosa','Z007','2005-04-01 00:00:00','M','Brown/White',_binary '\0',95.9,660.2,_binary '',_binary '\0',NULL),('Z007-06','Bibi','BIRD','Bobwhite','Z007','2016-04-01 00:00:00','F','Brown/Black/White',_binary '\0',10.8,NULL,_binary '\0',_binary '','2022-05-06 00:00:00'),('Z007-07','Lovey','SNAKE','King Cobra','Z007','2012-08-01 00:00:00','M','Green',_binary '\0',110.8,NULL,_binary '\0',_binary '\0',NULL),('Z007-08','Scotty','OSTRICH',NULL,'Z007','2009-09-01 00:00:00','M','Brown',_binary '\0',105.8,328.9,_binary '\0',_binary '\0',NULL),('Z008-01','Sport','DEER','White Tail','Z008','2018-02-01 00:00:00','M','Brown',_binary '\0',67.9,125.4,_binary '\0',_binary '\0',NULL),('Z009-01','Sammie','SNAKE','Boa Constrictor','Z009','2012-05-01 00:00:00','F','Brown/Grey',_binary '\0',87,NULL,_binary '\0',_binary '\0',NULL),('Z009-02','Slither','SNAKE','King Cobra','Z009','2015-05-01 00:00:00','M','Brown/Green/White',_binary '\0',117.4,NULL,_binary '\0',_binary '\0',NULL),('Z009-03','Crusher','SNAKE','Boa Constrictor','Z009','2011-06-01 00:00:00','M','Brown',_binary '\0',90,NULL,_binary '\0',_binary '\0',NULL),('Z009-04','Slimy','SNAKE','Rattler','Z009','2007-03-01 00:00:00','M','Brown',_binary '\0',66.9,NULL,_binary '\0',_binary '\0',NULL),('Z010-01','Saba','BIRD','Peacock','Z010','2015-05-01 00:00:00','M','Blue/Green',_binary '\0',37.8,NULL,_binary '\0',_binary '\0',NULL),('Z010-02','Slimey','SNAKE','Ball Python','Z010','2012-03-22 00:00:00','F','Brown/White/Green',_binary '\0',55.3,NULL,_binary '\0',_binary '\0',NULL),('Z010-03','Moose','BEAR','Brown','Z010','2017-01-01 00:00:00','M','Brown',_binary '\0',75,298,_binary '\0',_binary '\0',NULL),('Z010-04','Beauty','DEER','White Tail','Z010','2018-01-01 00:00:00','F','Brown',_binary '\0',64.6,102.7,_binary '\0',_binary '\0',NULL);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatments`
--

DROP TABLE IF EXISTS `treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatments` (
  `TreatmentCode` varchar(10) NOT NULL,
  `Treatment` varchar(30) DEFAULT NULL,
  `TreatmentType` varchar(25) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  PRIMARY KEY (`TreatmentCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatments`
--

LOCK TABLES `treatments` WRITE;
/*!40000 ALTER TABLE `treatments` DISABLE KEYS */;
INSERT INTO `treatments` VALUES ('0100','Rabies Shot','Vaccine',50),('0101','Distemper Shot','Vaccine',50),('0102','Bordetella Shot','Vaccine',80),('0103','Lyme Shot','Vaccine',25),('0104','Giardia Shot','Vaccine',45),('0105','Arthrimus Shot','Vaccine',15),('0200','Chemotherapy','Cancer',645),('0201','Radiotherapy','Cancer',799),('0300','Routine Exam','Exam',99),('0301','Respiratory Exam','Exam',75),('0302','Eye Exam','Exam',55),('0303','Ear/Nose/Throat Exam','Exam',50),('0304','Rectal Examination','Exam',50),('0305','Dental Extraction I','Dental',200),('0400','Dental Extraction II','Dental',399),('0401','Removal of tumor','Cancer',450),('0402','Spay/Neuter','Surgery',575),('0403','Simple fracture','Surgery',525),('0404','Complex fracture','Surgery',1050),('0405','Internal bleeding','Surgery',1299),('0406','Dental Cleaning','Dental',250),('0407','Skin Abscess','Surgery',15),('0408','Urethral blockages','Surgery',120),('0500','Anesthetize pet','Surgery',57),('0900','Autopsy','Death',450),('0901','Body disposal fee','Death',200),('0902','Diagnostic Imaging','Lab Work',350),('1000','Blood Test','Lab Work',99),('1001','Urine Test','Lab Work',75),('1002','Stool Test','Lab Work',75),('1003','Comprehensive Testing','Lab Work',575),('2001','Bathing','Services',25),('2002','Haircut','Services',20),('2003','Anti-Flea Treatment','Services',25),('2004','Training and Socialization','Services',150),('9000','Vaccine - Other','Vaccine',NULL),('9999','Other - Not Listed','Other',NULL);
/*!40000 ALTER TABLE `treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitdetails`
--

DROP TABLE IF EXISTS `visitdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitdetails` (
  `VisitNumber` int NOT NULL,
  `LineNumber` varchar(5) NOT NULL,
  `TreatmentCode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`VisitNumber`,`LineNumber`),
  KEY `fk_treatments_visitdetails` (`TreatmentCode`),
  CONSTRAINT `fk_treatments_visitdetails` FOREIGN KEY (`TreatmentCode`) REFERENCES `treatments` (`TreatmentCode`),
  CONSTRAINT `fk_visits_visitdetails` FOREIGN KEY (`VisitNumber`) REFERENCES `visits` (`VisitNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitdetails`
--

LOCK TABLES `visitdetails` WRITE;
/*!40000 ALTER TABLE `visitdetails` DISABLE KEYS */;
INSERT INTO `visitdetails` VALUES (1,'001','0100'),(7,'006','0100'),(8,'002','0100'),(9,'002','0100'),(10,'002','0100'),(11,'001','0100'),(17,'001','0100'),(28,'002','0100'),(34,'003','0100'),(41,'002','0100'),(48,'002','0100'),(49,'002','0100'),(50,'001','0100'),(51,'001','0100'),(52,'001','0100'),(53,'001','0100'),(54,'001','0100'),(61,'002','0100'),(70,'001','0100'),(76,'003','0100'),(7,'005','0101'),(28,'001','0101'),(34,'004','0101'),(34,'001','0102'),(61,'003','0102'),(8,'003','0103'),(9,'003','0103'),(10,'003','0103'),(11,'003','0103'),(25,'003','0103'),(27,'001','0103'),(28,'003','0103'),(34,'002','0103'),(41,'001','0103'),(49,'003','0103'),(73,'002','0103'),(25,'002','0104'),(41,'006','0104'),(35,'002','0201'),(1,'003','0300'),(3,'002','0300'),(6,'001','0300'),(7,'001','0300'),(8,'001','0300'),(9,'001','0300'),(10,'001','0300'),(11,'002','0300'),(13,'001','0300'),(14,'001','0300'),(15,'001','0300'),(16,'001','0300'),(27,'002','0300'),(29,'001','0300'),(30,'001','0300'),(33,'001','0300'),(39,'001','0300'),(41,'003','0300'),(42,'001','0300'),(43,'001','0300'),(45,'001','0300'),(46,'001','0300'),(48,'001','0300'),(49,'001','0300'),(57,'001','0300'),(60,'001','0300'),(61,'001','0300'),(62,'001','0300'),(63,'001','0300'),(64,'001','0300'),(65,'001','0300'),(66,'001','0300'),(67,'001','0300'),(70,'002','0300'),(71,'001','0300'),(73,'001','0300'),(78,'001','0300'),(86,'001','0300'),(3,'001','0301'),(49,'004','0301'),(61,'005','0301'),(76,'001','0301'),(86,'002','0301'),(1,'002','0302'),(7,'002','0302'),(17,'002','0302'),(25,'001','0302'),(27,'003','0302'),(27,'004','0302'),(30,'002','0302'),(41,'005','0302'),(48,'003','0302'),(61,'004','0302'),(73,'003','0302'),(86,'003','0302'),(7,'003','0303'),(73,'004','0303'),(76,'002','0303'),(86,'004','0303'),(7,'004','0304'),(25,'004','0304'),(47,'002','0304'),(26,'001','0305'),(69,'001','0305'),(2,'001','0401'),(6,'002','0401'),(31,'001','0401'),(35,'001','0401'),(47,'003','0401'),(68,'003','0401'),(4,'001','0402'),(5,'001','0402'),(18,'001','0402'),(19,'001','0402'),(20,'001','0402'),(21,'001','0402'),(22,'001','0402'),(23,'001','0402'),(36,'001','0402'),(37,'001','0402'),(38,'001','0402'),(40,'001','0402'),(59,'001','0402'),(72,'001','0402'),(74,'001','0402'),(75,'001','0402'),(12,'001','0404'),(24,'001','0404'),(32,'001','0404'),(84,'001','0404'),(12,'002','0405'),(56,'001','0405'),(84,'002','0405'),(26,'002','0406'),(12,'003','0407'),(55,'002','0900'),(55,'001','0901'),(58,'001','0901'),(77,'001','0901'),(81,'001','0901'),(85,'001','0901'),(3,'003','1000'),(35,'003','1000'),(41,'004','1000'),(47,'001','1000'),(57,'002','1000'),(62,'002','1000'),(63,'002','1000'),(64,'002','1000'),(65,'002','1000'),(66,'002','1000'),(68,'001','1000'),(78,'002','1000'),(79,'001','1000'),(84,'003','1000'),(68,'002','1002'),(84,'004','1003'),(69,'002','2003'),(80,'001','2004'),(82,'001','2004'),(83,'001','2004');
/*!40000 ALTER TABLE `visitdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `VisitNumber` int NOT NULL,
  `PetID` varchar(25) DEFAULT NULL,
  `DoctorID` varchar(25) DEFAULT NULL,
  `VisitType` varchar(25) DEFAULT NULL,
  `VisitDate` datetime DEFAULT NULL,
  `FollowUpDate` datetime DEFAULT NULL,
  `InvoiceDate` datetime DEFAULT NULL,
  `TotalAmount` double DEFAULT NULL,
  `TaxRate` float DEFAULT NULL,
  `TaxAmount` double DEFAULT NULL,
  `TotalDue` double DEFAULT NULL,
  `PaymentType` varchar(10) DEFAULT NULL,
  `DatePaid` datetime DEFAULT NULL,
  `AmountPaid` double DEFAULT NULL,
  `BalanceDue` double DEFAULT NULL,
  `Details` mediumtext,
  PRIMARY KEY (`VisitNumber`),
  KEY `fk_pets_visits` (`PetID`),
  KEY `fk_doctors_visits` (`DoctorID`),
  CONSTRAINT `fk_doctors_visits` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  CONSTRAINT `fk_pets_visits` FOREIGN KEY (`PetID`) REFERENCES `pets` (`PetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,'P001-03','013','Routine','2020-08-04 00:00:00',NULL,'2020-08-06 00:00:00',204,0.07,14.28,218.28,'Credit','2020-09-01 00:00:00',50,168.28,NULL),(2,'P007-01','001','Surgery','2020-08-04 00:00:00','2020-08-31 00:00:00','2020-08-17 00:00:00',450,0.07,31.5,481.5,'Check','2021-01-15 00:00:00',481.5,0,NULL),(3,'Z007-08','009','Routine','2020-08-04 00:00:00',NULL,'2020-08-14 00:00:00',273,0.07,19.11,292.11,'Credit','2020-10-15 00:00:00',292.11,0,NULL),(4,'P010-01','005','Surgery','2020-08-05 00:00:00',NULL,'2020-08-06 00:00:00',575,0.07,40.25,615.25,NULL,NULL,0,615.25,NULL),(5,'P001-03','005','Surgery','2020-08-05 00:00:00',NULL,'2020-08-06 00:00:00',575,0.07,40.25,615.25,'Cash','2020-08-06 00:00:00',615.25,0,NULL),(6,'P001-02','001','Urgent','2020-08-06 00:00:00','2020-08-15 00:00:00','2020-08-10 00:00:00',549,0.07,38.43,587.43,'Credit','2020-08-15 00:00:00',587.43,0,NULL),(7,'P013-02','007','Routine','2020-08-06 00:00:00',NULL,'2020-08-10 00:00:00',354,0.07,24.78,378.78,'Check','2020-08-20 00:00:00',378.78,0,NULL),(8,'R004-04','013','Routine','2020-08-06 00:00:00',NULL,'2020-08-07 00:00:00',174,0.07,12.18,186.18,'Check','2020-08-30 00:00:00',186.18,0,NULL),(9,'R005-01','013','Routine','2020-08-20 00:00:00',NULL,'2020-08-25 00:00:00',174,0.07,12.18,186.18,'Credit','2020-08-30 00:00:00',186.18,0,NULL),(10,'P006-01','013','Routine','2020-09-07 00:00:00',NULL,'2020-09-08 00:00:00',174,0.07,12.18,186.18,'Credit','2020-09-08 00:00:00',186.18,0,NULL),(11,'P009-01','013','Routine','2020-10-07 00:00:00',NULL,'2020-10-10 00:00:00',174,0.07,12.18,186.18,'Credit','2020-10-15 00:00:00',186.18,0,NULL),(12,'Z007-05','002','Surgery','2020-10-07 00:00:00','2020-10-10 00:00:00','2020-10-07 00:00:00',2364,0.07,165.48,2529.48,'Credit','2020-11-15 00:00:00',2529.48,0,NULL),(13,'R002-01','011','Routine','2020-10-07 00:00:00',NULL,'2020-10-07 00:00:00',99,0.07,6.93,105.93,'Credit','2020-10-07 00:00:00',105.93,0,NULL),(14,'R002-02','002','Routine','2020-10-07 00:00:00',NULL,'2020-10-07 00:00:00',99,0.07,6.93,105.93,'Credit','2020-10-07 00:00:00',105.93,0,NULL),(15,'R004-01','001','Routine','2021-01-15 00:00:00',NULL,'2021-01-20 00:00:00',99,0.07,6.93,105.93,'Credit','2021-02-15 00:00:00',105.93,0,NULL),(16,'R004-02','001','Routine','2021-01-15 00:00:00',NULL,'2021-01-15 00:00:00',99,0.07,6.93,105.93,'Credit','2021-02-01 00:00:00',105.93,0,NULL),(17,'P011-01','008','Routine','2021-01-17 00:00:00',NULL,'2021-01-20 00:00:00',105,0.07,7.35,112.35,'Check','2021-01-31 00:00:00',112.35,0,NULL),(18,'P011-02','008','Surgery','2021-02-10 00:00:00',NULL,'2021-02-11 00:00:00',575,0.07,40.25,615.25,'Credit','2021-02-15 00:00:00',615.25,0,NULL),(19,'R017-01','008','Surgery','2021-02-23 00:00:00',NULL,'2021-02-24 00:00:00',575,0.07,40.25,615.25,'Credit','2021-02-28 00:00:00',615.25,0,NULL),(20,'R012-02','008','Surgery','2021-02-24 00:00:00',NULL,'2021-02-25 00:00:00',575,0.07,40.25,615.25,'Credit','2021-02-28 00:00:00',615.25,0,NULL),(21,'R017-03','008','Surgery','2021-02-24 00:00:00',NULL,'2021-02-25 00:00:00',575,0.07,40.25,615.25,'Credit','2021-02-28 00:00:00',615.25,0,NULL),(22,'R017-04','008','Surgery','2021-03-02 00:00:00',NULL,'2021-03-03 00:00:00',575,0.07,40.25,615.25,'Credit','2021-03-04 00:00:00',615.25,0,NULL),(23,'P011-03','008','Surgery','2021-03-08 00:00:00',NULL,'2021-03-10 00:00:00',575,0.07,40.25,615.25,'Cash','2021-05-31 00:00:00',615.25,0,NULL),(24,'P011-01','008','Emergency','2021-04-03 00:00:00',NULL,'2021-04-05 00:00:00',1050,0.07,73.5,1123.5,'Credit','2021-05-31 00:00:00',1123.5,0,NULL),(25,'P011-02','008','Routine','2021-04-10 00:00:00',NULL,'2021-04-10 00:00:00',175,0.07,12.25,187.25,'Credit','2021-04-30 00:00:00',187.25,0,NULL),(26,'P001-03','008','Urgent','2021-04-10 00:00:00','2021-04-21 00:00:00','2021-04-15 00:00:00',450,0.07,31.5,481.5,'Credit','2021-05-31 00:00:00',481.5,0,NULL),(27,'Z007-05','002','Routine','2021-04-10 00:00:00',NULL,'2021-04-15 00:00:00',234,0.07,16.38,250.38,'Credit','2021-04-30 00:00:00',250.38,0,NULL),(28,'P007-01','001','Routine','2021-05-04 00:00:00',NULL,'2021-05-05 00:00:00',125,0.07,8.75,133.75,'Check','2021-05-05 00:00:00',133.75,0,NULL),(29,'P008-01','001','Routine','2021-05-26 00:00:00',NULL,'2021-05-27 00:00:00',99,0.07,6.93,105.93,'Cash','2021-05-28 00:00:00',105.93,0,NULL),(30,'P009-01','005','Routine','2021-06-03 00:00:00',NULL,'2021-06-05 00:00:00',154,0.07,10.78,164.78,'Credit',NULL,164.78,0,NULL),(31,'P010-01','001','Urgent','2021-06-07 00:00:00','2021-06-01 00:00:00','2021-06-08 00:00:00',450,0.07,31.5,481.5,'Cash','2021-06-14 00:00:00',200,281.5,NULL),(32,'P012-02','008','Emergency','2021-06-09 00:00:00','2021-06-15 00:00:00','2021-06-17 00:00:00',1050,0.07,73.5,1123.5,'Credit','2021-06-30 00:00:00',1123.5,0,NULL),(33,'P017-01','013','Routine','2021-06-15 00:00:00',NULL,'2021-06-15 00:00:00',99,0.07,6.93,105.93,'Check','2021-06-16 00:00:00',105.93,0,NULL),(34,'P012-03','001','Routine','2021-06-22 00:00:00',NULL,'2021-06-22 00:00:00',205,0.07,14.35,219.35,'Credit','2021-06-23 00:00:00',219.35,0,NULL),(35,'P015-04','001','Surgery','2021-06-24 00:00:00','2021-07-01 00:00:00','2021-06-30 00:00:00',1348,0.07,94.36,1442.36,'Credit','2021-07-05 00:00:00',1442.36,0,NULL),(36,'P015-01','001','Surgery','2021-07-01 00:00:00',NULL,'2021-07-05 00:00:00',575,0.07,40.25,615.25,'Credit','2021-07-10 00:00:00',615.25,0,NULL),(37,'P015-02','001','Surgery','2021-07-01 00:00:00',NULL,'2021-07-05 00:00:00',575,0.07,40.25,615.25,'Credit','2021-07-10 00:00:00',615.25,0,NULL),(38,'P015-03','001','Surgery','2021-07-01 00:00:00',NULL,'2021-07-05 00:00:00',575,0.07,40.25,615.25,'Credit',NULL,615.25,0,NULL),(39,'R006-03','001','Routine','2021-07-04 00:00:00',NULL,'2021-07-04 00:00:00',99,0.07,6.93,105.93,'Credit','2021-07-10 00:00:00',105.93,0,NULL),(40,'R006-04','003','Surgery','2021-07-13 00:00:00',NULL,'2021-07-16 00:00:00',575,0.07,40.25,615.25,'Credit','2021-07-20 00:00:00',615.25,0,NULL),(41,'R005-07','003','Routine','2021-07-17 00:00:00',NULL,'2021-07-17 00:00:00',373,0.07,26.11,399.11,'Credit','2021-07-20 00:00:00',399.11,0,NULL),(42,'R005-06','003','Routine','2021-07-21 00:00:00',NULL,'2021-07-21 00:00:00',99,0.07,6.93,105.93,'Check','2021-07-25 00:00:00',105.93,0,NULL),(43,'R005-05','003','Routine','2021-07-24 00:00:00',NULL,'2021-07-24 00:00:00',99,0.07,6.93,105.93,'Credit','2021-07-31 00:00:00',105.93,0,NULL),(44,'R005-04','003','Routine','2021-07-30 00:00:00',NULL,'2021-07-30 00:00:00',99,0.07,6.93,105.93,'Credit','2021-08-02 00:00:00',105.93,0,NULL),(45,'R005-03','003','Routine','2021-07-30 00:00:00',NULL,'2021-08-01 00:00:00',99,0.07,6.93,105.93,'Credit','2021-08-05 00:00:00',105.93,0,NULL),(46,'R005-02','003','Routine','2021-08-15 00:00:00',NULL,'2021-08-15 00:00:00',99,0.07,6.93,105.93,'Credit','2021-08-20 00:00:00',105.93,0,NULL),(47,'R005-01','003','Urgent','2021-08-22 00:00:00','2021-08-25 00:00:00','2021-08-24 00:00:00',599,0.07,41.93,640.93,'Credit','2021-08-30 00:00:00',640.93,0,NULL),(48,'Z006-01','002','Routine','2021-08-25 00:00:00',NULL,'2021-08-27 00:00:00',204,0.07,14.28,218.28,'Credit','2021-08-28 00:00:00',218.28,0,NULL),(49,'Z006-02','002','Routine','2021-08-25 00:00:00',NULL,'2021-08-27 00:00:00',249,0.07,17.43,266.43,'Credit','2021-08-28 00:00:00',266.43,0,NULL),(50,'Z007-01','009','Routine','2021-08-28 00:00:00',NULL,'2021-08-28 00:00:00',50,0.07,3.5,53.5,'Credit','2021-08-28 00:00:00',53.5,0,NULL),(51,'Z007-02','009','Routine','2021-08-28 00:00:00',NULL,'2021-08-28 00:00:00',50,0.07,3.5,53.5,'Credit','2021-08-28 00:00:00',53.5,0,NULL),(52,'Z007-03','009','Routine','2021-08-28 00:00:00',NULL,'2021-08-28 00:00:00',50,0.07,3.5,53.5,'Credit','2021-08-28 00:00:00',53.5,0,NULL),(53,'Z007-04','009','Routine','2021-08-28 00:00:00',NULL,'2021-08-28 00:00:00',50,0.07,3.5,53.5,'Credit','2021-08-28 00:00:00',53.5,0,NULL),(54,'Z007-05','009','Routine','2021-08-28 00:00:00',NULL,'2021-08-28 00:00:00',50,0.07,3.5,53.5,'Credit','2021-08-28 00:00:00',53.5,0,NULL),(55,'P014-02','013','Urgent','2021-09-12 00:00:00',NULL,'2021-09-20 00:00:00',650,0.07,45.5,695.5,'Check','2021-10-31 00:00:00',395,300.5,NULL),(56,'P007-01','013','Emergency','2021-09-12 00:00:00','2021-09-13 00:00:00','2021-09-15 00:00:00',1299,0.07,90.93,1389.93,'Credit','2021-09-20 00:00:00',1389.93,0,NULL),(57,'R006-01','008','Routine','2021-09-14 00:00:00',NULL,'2021-09-14 00:00:00',198,0.07,13.86,211.86,'Credit','2021-09-14 00:00:00',211.86,0,NULL),(58,'P018-01','013','Urgent','2021-09-14 00:00:00',NULL,'2021-09-21 00:00:00',200,0.07,14,214,'Credit','2021-09-30 00:00:00',214,0,NULL),(59,'R006-02','001','Surgery','2021-09-14 00:00:00',NULL,'2021-09-20 00:00:00',575,0.07,40.25,615.25,'Credit','2021-09-20 00:00:00',615.25,0,NULL),(60,'P002-03','005','Routine','2021-09-14 00:00:00',NULL,'2021-09-14 00:00:00',99,0.07,6.93,105.93,'Check','2021-09-14 00:00:00',105.93,0,NULL),(61,'P008-01','001','Routine','2021-09-15 00:00:00',NULL,'2021-09-15 00:00:00',359,0.07,25.13,384.13,'Credit','2021-09-15 00:00:00',384.13,0,NULL),(62,'Z009-01','006','Routine','2021-09-15 00:00:00',NULL,'2021-09-17 00:00:00',298,0.07,20.86,318.86,'Credit','2021-09-30 00:00:00',318.86,0,NULL),(63,'Z009-02','006','Routine','2021-09-15 00:00:00',NULL,'2021-09-17 00:00:00',298,0.07,20.86,318.86,'Credit','2021-09-30 00:00:00',318.86,0,NULL),(64,'Z009-03','006','Routine','2021-09-15 00:00:00',NULL,'2021-09-17 00:00:00',298,0.07,20.86,318.86,'Credit','2021-09-30 00:00:00',318.86,0,NULL),(65,'Z009-04','006','Routine','2021-09-15 00:00:00',NULL,'2021-09-17 00:00:00',298,0.07,20.86,318.86,'Credit','2021-09-30 00:00:00',318.86,0,NULL),(66,'Z010-02','006','Routine','2021-09-15 00:00:00',NULL,'2021-09-17 00:00:00',298,0.07,20.86,318.86,'Credit','2021-09-20 00:00:00',318.86,0,NULL),(67,'P009-01','005','Routine','2021-09-16 00:00:00',NULL,'2021-09-16 00:00:00',99,0.07,6.93,105.93,'Credit','2021-09-16 00:00:00',105.93,0,NULL),(68,'Z007-05','002','Emergency','2021-09-16 00:00:00','2021-09-20 00:00:00','2021-09-20 00:00:00',624,0.07,43.68,667.68,'Credit','2021-09-25 00:00:00',667.68,0,NULL),(69,'P011-02','008','Urgent','2021-09-16 00:00:00',NULL,'2021-09-16 00:00:00',225,0.07,15.75,240.75,'Credit','2021-09-20 00:00:00',240.75,0,NULL),(70,'P002-02','008','Routine','2021-09-16 00:00:00',NULL,'2021-09-16 00:00:00',149,0.07,10.43,159.43,'Credit','2021-09-16 00:00:00',159.43,0,NULL),(71,'P002-03','008','Routine','2021-09-19 00:00:00',NULL,'2021-09-19 00:00:00',99,0.07,6.93,105.93,'Credit','2021-09-19 00:00:00',105.93,0,NULL),(72,'P012-02','001','Surgery','2021-09-29 00:00:00',NULL,'2021-09-30 00:00:00',575,0.07,40.25,615.25,'Check','2021-10-15 00:00:00',615.25,0,NULL),(73,'P001-03','008','Routine','2021-10-03 00:00:00',NULL,'2021-10-10 00:00:00',179,0.0725,12.98,191.98,'Cash','2021-12-15 00:00:00',50,141.98,NULL),(74,'P012-03','001','Surgery','2021-10-04 00:00:00',NULL,'2021-10-04 00:00:00',575,0.0725,41.69,616.69,'Credit','2021-10-04 00:00:00',616.69,0,NULL),(75,'P014-01','001','Surgery','2021-10-12 00:00:00',NULL,'2021-10-14 00:00:00',575,0.0725,41.69,616.69,NULL,NULL,0,616.69,NULL),(76,'P014-02','008','Routine','2021-11-03 00:00:00',NULL,'2021-11-03 00:00:00',175,0.0725,12.69,187.69,'Credit','2021-11-03 00:00:00',187.69,0,NULL),(77,'Z004-01','013','Urgent','2021-11-06 00:00:00',NULL,'2021-11-15 00:00:00',200,0.0725,14.5,214.5,'Credit','2021-11-20 00:00:00',214.5,0,NULL),(78,'Z010-01','001','Routine','2021-11-12 00:00:00',NULL,'2021-11-12 00:00:00',178,0.0725,12.9,190.9,'Credit','2021-11-12 00:00:00',190.9,0,NULL),(79,'Z007-06','002','Routine','2021-11-19 00:00:00',NULL,'2021-11-19 00:00:00',99,0.0725,7.18,106.18,'Credit','2021-11-19 00:00:00',106.18,0,NULL),(80,'P012-02','013','Routine','2021-12-03 00:00:00',NULL,'2021-12-03 00:00:00',150,0.0725,10.87,160.87,'Credit','2021-12-03 00:00:00',160.87,0,NULL),(81,'Z007-02','013','Urgent','2021-12-04 00:00:00',NULL,'2021-12-17 00:00:00',200,0.0725,14.5,214.5,'Credit','2022-01-14 00:00:00',214.5,0,NULL),(82,'P012-03','013','Routine','2021-12-12 00:00:00',NULL,'2021-12-12 00:00:00',150,0.0725,10.87,160.87,'Credit','2021-12-13 00:00:00',160.87,0,NULL),(83,'P009-01','008','Routine','2021-12-15 00:00:00',NULL,'2021-12-15 00:00:00',150,0.0725,10.87,160.87,'Credit','2021-12-15 00:00:00',160.87,0,NULL),(84,'P001-03','013','Emergency','2022-01-03 00:00:00',NULL,'2022-01-15 00:00:00',3023,0.0725,219.17,3242.17,'Check','2022-01-31 00:00:00',1000,2242.17,NULL),(85,'P002-03','013','Urgent','2022-01-06 00:00:00',NULL,'2022-01-15 00:00:00',200,0.0725,14.5,214.5,'Credit','2022-02-28 00:00:00',214.5,0,NULL),(86,'P011-02','008','Routine','2022-01-09 00:00:00',NULL,'2022-01-15 00:00:00',279,0.0725,20.23,299.23,'Cash','2022-01-20 00:00:00',100,199.23,NULL);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20  3:29:52
