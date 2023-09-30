-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: nfl_stats
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
-- Table structure for table `bears_defense_roster`
--

DROP TABLE IF EXISTS `bears_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bears_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bears_defense_roster`
--

LOCK TABLES `bears_defense_roster` WRITE;
/*!40000 ALTER TABLE `bears_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bears_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bears_offense_roster`
--

DROP TABLE IF EXISTS `bears_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bears_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bears_offense_roster`
--

LOCK TABLES `bears_offense_roster` WRITE;
/*!40000 ALTER TABLE `bears_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bears_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bengals_defense_roster`
--

DROP TABLE IF EXISTS `bengals_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bengals_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengals_defense_roster`
--

LOCK TABLES `bengals_defense_roster` WRITE;
/*!40000 ALTER TABLE `bengals_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bengals_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bengals_offense_roster`
--

DROP TABLE IF EXISTS `bengals_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bengals_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bengals_offense_roster`
--

LOCK TABLES `bengals_offense_roster` WRITE;
/*!40000 ALTER TABLE `bengals_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bengals_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills_defense_roster`
--

DROP TABLE IF EXISTS `bills_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills_defense_roster`
--

LOCK TABLES `bills_defense_roster` WRITE;
/*!40000 ALTER TABLE `bills_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills_offense_roster`
--

DROP TABLE IF EXISTS `bills_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills_offense_roster`
--

LOCK TABLES `bills_offense_roster` WRITE;
/*!40000 ALTER TABLE `bills_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broncos_defense_roster`
--

DROP TABLE IF EXISTS `broncos_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broncos_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broncos_defense_roster`
--

LOCK TABLES `broncos_defense_roster` WRITE;
/*!40000 ALTER TABLE `broncos_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `broncos_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broncos_offense_roster`
--

DROP TABLE IF EXISTS `broncos_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `broncos_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broncos_offense_roster`
--

LOCK TABLES `broncos_offense_roster` WRITE;
/*!40000 ALTER TABLE `broncos_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `broncos_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browns_defense_roster`
--

DROP TABLE IF EXISTS `browns_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `browns_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browns_defense_roster`
--

LOCK TABLES `browns_defense_roster` WRITE;
/*!40000 ALTER TABLE `browns_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `browns_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browns_offense_roster`
--

DROP TABLE IF EXISTS `browns_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `browns_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browns_offense_roster`
--

LOCK TABLES `browns_offense_roster` WRITE;
/*!40000 ALTER TABLE `browns_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `browns_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buccaneers_defense_roster`
--

DROP TABLE IF EXISTS `buccaneers_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buccaneers_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buccaneers_defense_roster`
--

LOCK TABLES `buccaneers_defense_roster` WRITE;
/*!40000 ALTER TABLE `buccaneers_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `buccaneers_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buccaneers_offense_roster`
--

DROP TABLE IF EXISTS `buccaneers_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buccaneers_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buccaneers_offense_roster`
--

LOCK TABLES `buccaneers_offense_roster` WRITE;
/*!40000 ALTER TABLE `buccaneers_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `buccaneers_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardinals_offense_roster`
--

DROP TABLE IF EXISTS `cardinals_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cardinals_offense_roster` (
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardinals_offense_roster`
--

LOCK TABLES `cardinals_offense_roster` WRITE;
/*!40000 ALTER TABLE `cardinals_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardinals_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargers_defense_roster`
--

DROP TABLE IF EXISTS `chargers_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chargers_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargers_defense_roster`
--

LOCK TABLES `chargers_defense_roster` WRITE;
/*!40000 ALTER TABLE `chargers_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `chargers_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargers_offense_roster`
--

DROP TABLE IF EXISTS `chargers_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chargers_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargers_offense_roster`
--

LOCK TABLES `chargers_offense_roster` WRITE;
/*!40000 ALTER TABLE `chargers_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `chargers_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chiefs_defense_roster`
--

DROP TABLE IF EXISTS `chiefs_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chiefs_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chiefs_defense_roster`
--

LOCK TABLES `chiefs_defense_roster` WRITE;
/*!40000 ALTER TABLE `chiefs_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `chiefs_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chiefs_offense_roster`
--

DROP TABLE IF EXISTS `chiefs_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chiefs_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chiefs_offense_roster`
--

LOCK TABLES `chiefs_offense_roster` WRITE;
/*!40000 ALTER TABLE `chiefs_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `chiefs_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colts_defense_roster`
--

DROP TABLE IF EXISTS `colts_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colts_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colts_defense_roster`
--

LOCK TABLES `colts_defense_roster` WRITE;
/*!40000 ALTER TABLE `colts_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `colts_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colts_offense_roster`
--

DROP TABLE IF EXISTS `colts_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colts_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colts_offense_roster`
--

LOCK TABLES `colts_offense_roster` WRITE;
/*!40000 ALTER TABLE `colts_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `colts_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanders_defense_roster`
--

DROP TABLE IF EXISTS `commanders_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanders_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanders_defense_roster`
--

LOCK TABLES `commanders_defense_roster` WRITE;
/*!40000 ALTER TABLE `commanders_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `commanders_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commanders_offense_roster`
--

DROP TABLE IF EXISTS `commanders_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commanders_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commanders_offense_roster`
--

LOCK TABLES `commanders_offense_roster` WRITE;
/*!40000 ALTER TABLE `commanders_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `commanders_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cowboys_defense_roster`
--

DROP TABLE IF EXISTS `cowboys_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cowboys_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cowboys_defense_roster`
--

LOCK TABLES `cowboys_defense_roster` WRITE;
/*!40000 ALTER TABLE `cowboys_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cowboys_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cowboys_offense_roster`
--

DROP TABLE IF EXISTS `cowboys_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cowboys_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cowboys_offense_roster`
--

LOCK TABLES `cowboys_offense_roster` WRITE;
/*!40000 ALTER TABLE `cowboys_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cowboys_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defplayer_away_stats`
--

DROP TABLE IF EXISTS `defplayer_away_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defplayer_away_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `Tackles_Solo` int DEFAULT '0',
  `Tackles_Assists` int DEFAULT '0',
  `Tackles_Total` int DEFAULT '0',
  `Sacks` decimal(3,1) DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defplayer_away_stats`
--

LOCK TABLES `defplayer_away_stats` WRITE;
/*!40000 ALTER TABLE `defplayer_away_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `defplayer_away_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defplayer_home_stats`
--

DROP TABLE IF EXISTS `defplayer_home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defplayer_home_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `Tackles_Solo` int DEFAULT '0',
  `Tackles_Assists` int DEFAULT '0',
  `Tackles_Total` int DEFAULT '0',
  `Sacks` decimal(3,1) DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defplayer_home_stats`
--

LOCK TABLES `defplayer_home_stats` WRITE;
/*!40000 ALTER TABLE `defplayer_home_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `defplayer_home_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defplayer_total_stats`
--

DROP TABLE IF EXISTS `defplayer_total_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defplayer_total_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `Tackles_Solo` int DEFAULT '0',
  `Tackles_Assists` int DEFAULT '0',
  `Tackles_Total` int DEFAULT '0',
  `Sacks` decimal(3,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defplayer_total_stats`
--

LOCK TABLES `defplayer_total_stats` WRITE;
/*!40000 ALTER TABLE `defplayer_total_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `defplayer_total_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defteam_passing_stats`
--

DROP TABLE IF EXISTS `defteam_passing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defteam_passing_stats` (
  `Name` varchar(45) NOT NULL DEFAULT '',
  `PassAttempts_PerGame` decimal(3,1) DEFAULT '0.0',
  `Completions_PerGame` decimal(3,1) DEFAULT '0.0',
  `Completion_Perc` decimal(5,2) DEFAULT '0.00',
  `PassYards_PerGame` decimal(5,1) DEFAULT '0.0',
  `PassYards_PerAttempt` decimal(3,1) DEFAULT '0.0',
  `PassYards_PerCompletion` decimal(3,1) DEFAULT '0.0',
  `PassFirstDown_PerGame` decimal(3,1) DEFAULT '0.0',
  `PassTouchdowns_PerGame` decimal(2,1) DEFAULT '0.0',
  `Sacks_PerGame` decimal(3,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defteam_passing_stats`
--

LOCK TABLES `defteam_passing_stats` WRITE;
/*!40000 ALTER TABLE `defteam_passing_stats` DISABLE KEYS */;
INSERT INTO `defteam_passing_stats` VALUES ('Arizona',36.0,23.3,64.81,233.0,6.5,10.0,12.0,1.3,3.7),('Atlanta',32.0,18.7,58.33,170.0,5.3,9.1,10.0,1.7,1.0),('Baltimore',43.0,27.3,63.57,200.0,4.7,7.3,11.7,1.0,3.7),('Buffalo',25.0,16.3,65.33,142.3,5.7,8.7,8.3,0.7,4.0),('Carolina',30.3,20.0,65.93,192.3,6.3,9.6,10.3,0.7,3.3),('Chicago',33.0,22.7,68.69,285.7,8.7,12.6,12.0,2.3,0.3),('Cincinnati',31.7,19.3,61.05,200.7,6.3,10.4,11.0,1.3,3.0),('Cleveland',29.0,14.0,48.28,111.7,3.9,8.0,4.7,0.3,3.0),('Dallas',26.0,15.3,58.97,130.7,5.0,8.5,6.3,0.7,4.0),('Denver',31.0,24.0,77.42,280.7,9.1,11.7,12.7,3.0,1.3),('Detroit',38.5,24.3,62.99,219.8,5.7,9.1,11.5,1.3,3.3),('Green Bay',32.8,21.3,64.89,197.3,6.0,9.3,10.5,1.0,2.8),('Houston',32.3,23.7,73.20,223.3,6.9,9.4,11.3,0.7,1.3),('Indianapolis',36.7,25.3,69.09,250.7,6.8,9.9,11.7,1.3,4.0),('Jacksonville',36.7,24.3,66.36,264.3,7.2,10.9,11.7,1.7,1.7),('Kansas City',33.0,18.7,56.57,178.0,5.4,9.5,10.0,0.7,2.7),('LA Chargers',39.7,26.7,67.23,337.0,8.5,12.6,15.7,2.3,3.0),('LA Rams',33.3,19.7,59.00,181.0,5.4,9.2,10.0,0.3,1.7),('Las Vegas',33.0,24.7,74.75,220.3,6.7,8.9,12.7,2.3,1.7),('Miami',37.7,25.7,68.14,231.3,6.1,9.0,11.0,1.0,2.7),('Minnesota',35.0,26.7,76.19,261.7,7.5,9.8,11.7,2.3,2.0),('New England',33.0,20.3,61.62,177.0,5.4,8.7,9.7,0.7,2.3),('New Orleans',37.0,20.0,54.05,188.3,5.1,9.4,9.7,0.7,2.7),('NY Giants',31.0,19.7,63.44,223.7,7.2,11.4,10.7,1.0,0.7),('NY Jets',36.0,25.0,69.44,222.0,6.2,8.9,12.0,1.3,2.0),('Philadelphia',41.0,27.0,65.85,261.7,6.4,9.7,15.7,2.7,2.0),('Pittsburgh',37.7,23.0,61.06,235.3,6.2,10.2,12.3,1.7,4.3),('San Francisco',44.7,29.0,64.93,205.3,4.6,7.1,10.7,0.7,2.7),('Seattle',43.7,28.7,65.65,328.0,7.5,11.4,17.0,1.7,1.7),('Tampa Bay',36.7,24.0,65.45,256.0,7.0,10.7,12.3,1.3,3.0),('Tennessee',35.7,25.7,71.96,275.3,7.7,10.7,12.7,1.7,3.3),('Washington',31.3,19.7,62.77,203.0,6.5,10.3,9.0,1.3,3.3);
/*!40000 ALTER TABLE `defteam_passing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defteam_rushing_stats`
--

DROP TABLE IF EXISTS `defteam_rushing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `defteam_rushing_stats` (
  `Name` varchar(45) NOT NULL DEFAULT '',
  `RushAttempts_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushYards_PerGame` decimal(4,1) DEFAULT '0.0',
  `RushFirstDowns_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushTouchdowns_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushYards_PerAttempt` decimal(3,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defteam_rushing_stats`
--

LOCK TABLES `defteam_rushing_stats` WRITE;
/*!40000 ALTER TABLE `defteam_rushing_stats` DISABLE KEYS */;
INSERT INTO `defteam_rushing_stats` VALUES ('Arizona',29.3,134.7,9.7,1.0,4.6),('Atlanta',28.0,117.7,6.0,0.3,4.2),('Baltimore',24.3,92.3,5.0,0.0,3.8),('Buffalo',18.7,110.7,4.0,0.0,5.9),('Carolina',30.7,136.7,9.0,2.0,4.5),('Chicago',34.3,121.7,8.3,1.3,3.5),('Cincinnati',30.0,151.7,8.3,0.7,5.1),('Cleveland',18.7,52.0,1.7,0.0,2.8),('Dallas',24.7,131.3,6.0,0.7,5.3),('Denver',31.7,177.7,9.3,2.3,5.6),('Detroit',20.0,60.8,4.5,0.8,3.0),('Green Bay',34.8,155.3,10.3,1.3,4.5),('Houston',27.3,117.3,7.0,2.3,4.3),('Indianapolis',32.7,114.3,8.0,1.3,3.5),('Jacksonville',24.7,84.0,5.0,0.7,3.4),('Kansas City',26.0,102.7,5.0,0.3,3.9),('LA Chargers',26.0,113.7,7.3,1.0,4.4),('LA Rams',23.0,103.7,5.3,1.3,4.5),('Las Vegas',29.3,127.3,6.7,0.7,4.3),('Miami',28.3,130.0,9.7,1.3,4.6),('Minnesota',32.0,120.7,8.7,1.0,3.8),('New England',25.7,93.3,5.7,1.0,3.6),('New Orleans',22.3,99.7,4.7,0.3,4.5),('NY Giants',32.7,138.0,8.7,2.0,4.2),('NY Jets',35.3,129.3,8.0,0.0,3.7),('Philadelphia',16.0,48.3,2.0,0.0,3.0),('Pittsburgh',29.3,151.7,6.3,0.7,5.2),('San Francisco',14.3,53.0,4.7,0.7,3.7),('Seattle',27.0,79.3,5.3,1.7,2.9),('Tampa Bay',24.3,103.0,6.3,0.7,4.2),('Tennessee',26.3,69.3,4.3,0.3,2.6),('Washington',27.0,128.7,8.0,1.0,4.8);
/*!40000 ALTER TABLE `defteam_rushing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dolphins_defense_roster`
--

DROP TABLE IF EXISTS `dolphins_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dolphins_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolphins_defense_roster`
--

LOCK TABLES `dolphins_defense_roster` WRITE;
/*!40000 ALTER TABLE `dolphins_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `dolphins_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dolphins_offense_roster`
--

DROP TABLE IF EXISTS `dolphins_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dolphins_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolphins_offense_roster`
--

LOCK TABLES `dolphins_offense_roster` WRITE;
/*!40000 ALTER TABLE `dolphins_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `dolphins_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eagles_defense_roster`
--

DROP TABLE IF EXISTS `eagles_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eagles_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eagles_defense_roster`
--

LOCK TABLES `eagles_defense_roster` WRITE;
/*!40000 ALTER TABLE `eagles_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `eagles_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eagles_offense_roster`
--

DROP TABLE IF EXISTS `eagles_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eagles_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eagles_offense_roster`
--

LOCK TABLES `eagles_offense_roster` WRITE;
/*!40000 ALTER TABLE `eagles_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `eagles_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falcons_defense_roster`
--

DROP TABLE IF EXISTS `falcons_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `falcons_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falcons_defense_roster`
--

LOCK TABLES `falcons_defense_roster` WRITE;
/*!40000 ALTER TABLE `falcons_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `falcons_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `falcons_offense_roster`
--

DROP TABLE IF EXISTS `falcons_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `falcons_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `falcons_offense_roster`
--

LOCK TABLES `falcons_offense_roster` WRITE;
/*!40000 ALTER TABLE `falcons_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `falcons_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giants_defense_roster`
--

DROP TABLE IF EXISTS `giants_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giants_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giants_defense_roster`
--

LOCK TABLES `giants_defense_roster` WRITE;
/*!40000 ALTER TABLE `giants_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `giants_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giants_offense_roster`
--

DROP TABLE IF EXISTS `giants_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giants_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giants_offense_roster`
--

LOCK TABLES `giants_offense_roster` WRITE;
/*!40000 ALTER TABLE `giants_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `giants_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jaguars_defense_roster`
--

DROP TABLE IF EXISTS `jaguars_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jaguars_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jaguars_defense_roster`
--

LOCK TABLES `jaguars_defense_roster` WRITE;
/*!40000 ALTER TABLE `jaguars_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `jaguars_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jaguars_offense_roster`
--

DROP TABLE IF EXISTS `jaguars_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jaguars_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jaguars_offense_roster`
--

LOCK TABLES `jaguars_offense_roster` WRITE;
/*!40000 ALTER TABLE `jaguars_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `jaguars_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jets_defense_roster`
--

DROP TABLE IF EXISTS `jets_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jets_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jets_defense_roster`
--

LOCK TABLES `jets_defense_roster` WRITE;
/*!40000 ALTER TABLE `jets_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `jets_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jets_offense_roster`
--

DROP TABLE IF EXISTS `jets_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jets_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jets_offense_roster`
--

LOCK TABLES `jets_offense_roster` WRITE;
/*!40000 ALTER TABLE `jets_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `jets_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lions_defense_roster`
--

DROP TABLE IF EXISTS `lions_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lions_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lions_defense_roster`
--

LOCK TABLES `lions_defense_roster` WRITE;
/*!40000 ALTER TABLE `lions_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `lions_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lions_offense_roster`
--

DROP TABLE IF EXISTS `lions_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lions_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lions_offense_roster`
--

LOCK TABLES `lions_offense_roster` WRITE;
/*!40000 ALTER TABLE `lions_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `lions_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offteam_passing_stats`
--

DROP TABLE IF EXISTS `offteam_passing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offteam_passing_stats` (
  `Name` varchar(45) NOT NULL,
  `PassAttempts_PerGame` decimal(3,1) DEFAULT '0.0',
  `Completions_PerGame` decimal(3,1) DEFAULT '0.0',
  `Completion_Perc` decimal(4,1) DEFAULT '0.0',
  `PassYards_PerGame` decimal(4,1) DEFAULT '0.0',
  `PassYards_PerAttempt` decimal(4,1) DEFAULT '0.0',
  `PassYards_PerCompletion` decimal(4,1) DEFAULT '0.0',
  `PassTouchdowns_PerGame` decimal(3,1) DEFAULT '0.0',
  `Sacks_PerGame` decimal(2,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offteam_passing_stats`
--

LOCK TABLES `offteam_passing_stats` WRITE;
/*!40000 ALTER TABLE `offteam_passing_stats` DISABLE KEYS */;
INSERT INTO `offteam_passing_stats` VALUES ('Arizona',27.3,19.7,72.0,173.3,6.7,8.8,0.7,1.7),('Atlanta',29.3,18.3,62.5,155.0,6.3,8.5,0.7,4.0),('Baltimore',28.7,21.0,73.3,190.0,7.1,9.0,0.7,2.7),('Buffalo',36.7,26.7,72.7,234.0,6.6,8.8,1.7,2.3),('Carolina',43.0,25.3,58.9,200.0,5.1,7.9,1.3,3.0),('Chicago',29.3,17.0,58.0,148.3,6.0,8.7,1.0,4.3),('Cincinnati',40.7,22.3,54.9,175.0,4.6,7.8,0.7,1.7),('Cleveland',34.0,21.7,63.7,205.7,6.6,9.5,1.3,4.0),('Dallas',34.3,23.0,67.0,207.3,6.3,9.0,1.0,1.0),('Denver',34.7,22.7,65.4,245.7,7.6,10.8,2.0,3.3),('Detroit',34.3,24.0,69.9,269.7,8.0,11.2,1.7,1.0),('Green Bay',32.0,17.0,53.1,207.3,6.8,12.2,2.3,1.0),('Houston',40.3,26.0,64.5,271.0,7.5,10.4,1.3,3.7),('Indianapolis',38.7,25.3,65.5,210.0,5.8,8.3,1.0,3.0),('Jacksonville',38.7,25.3,65.5,240.7,6.4,9.5,1.0,2.0),('Kansas City',39.3,25.7,65.3,275.7,7.1,10.7,2.3,0.3),('LA Chargers',40.7,30.3,74.6,308.7,8.1,10.2,2.3,2.3),('LA Rams',42.0,25.3,60.3,284.0,7.2,11.2,0.7,2.3),('Las Vegas',31.3,21.3,68.1,226.0,7.5,10.6,1.7,1.3),('Miami',34.3,24.7,71.8,362.0,10.6,14.7,3.0,0.3),('Minnesota',46.0,32.0,69.6,339.7,7.8,10.6,3.0,2.7),('New England',41.7,27.0,64.8,235.7,6.0,8.7,1.7,2.0),('New Orleans',34.7,22.7,65.4,221.3,7.2,9.8,0.7,4.0),('NY Giants',33.3,21.7,65.0,165.3,5.7,7.6,0.7,4.0),('NY Jets',28.3,14.7,51.8,133.7,5.5,9.1,0.7,3.0),('Philadelphia',31.0,21.0,67.7,198.7,6.9,9.5,1.0,2.7),('Pittsburgh',34.7,20.7,59.6,208.7,6.6,10.1,1.3,2.7),('San Francisco',30.3,20.3,67.0,236.3,8.1,11.6,1.3,2.0),('Seattle',34.3,23.7,68.9,228.3,7.1,9.6,1.3,1.7),('Tampa Bay',31.0,20.7,66.7,206.3,6.8,10.0,1.3,1.0),('Tennessee',27.7,16.3,59.0,149.7,6.6,9.2,0.3,4.3),('Washington',33.0,21.7,65.7,182.3,6.8,8.4,1.0,6.3);
/*!40000 ALTER TABLE `offteam_passing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offteam_rushing_stats`
--

DROP TABLE IF EXISTS `offteam_rushing_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offteam_rushing_stats` (
  `Name` varchar(45) NOT NULL,
  `RushAttempts_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushFirstDowns_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushYards_PerGame` decimal(4,1) DEFAULT '0.0',
  `RushTouchdowns_PerGame` decimal(3,1) DEFAULT '0.0',
  `RushYards_PerAttempt` decimal(4,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offteam_rushing_stats`
--

LOCK TABLES `offteam_rushing_stats` WRITE;
/*!40000 ALTER TABLE `offteam_rushing_stats` DISABLE KEYS */;
INSERT INTO `offteam_rushing_stats` VALUES ('Arizona',28.0,7.3,156.3,1.3,5.6),('Atlanta',30.3,8.3,128.3,1.0,4.2),('Baltimore',35.3,10.0,158.0,2.0,4.5),('Buffalo',30.0,9.3,149.3,1.3,5.0),('Carolina',21.7,5.3,99.3,0.3,4.6),('Chicago',23.7,6.3,101.7,0.7,4.3),('Cincinnati',19.3,3.7,69.3,0.3,3.6),('Cleveland',35.3,8.7,160.7,1.0,4.5),('Dallas',35.7,9.0,147.0,1.0,4.1),('Denver',21.7,5.7,95.0,0.3,4.4),('Detroit',30.7,6.0,111.7,1.0,3.6),('Green Bay',26.3,4.7,90.3,0.7,3.4),('Houston',25.0,2.7,70.0,0.3,2.8),('Indianapolis',28.0,6.7,110.0,1.3,3.9),('Jacksonville',26.7,6.0,98.3,1.0,3.7),('Kansas City',27.3,8.3,114.7,0.7,4.2),('LA Chargers',25.3,7.7,108.0,1.0,4.3),('LA Rams',25.0,6.3,84.0,1.3,3.4),('Las Vegas',21.0,3.7,61.7,0.0,2.9),('Miami',31.0,7.7,188.3,2.7,6.1),('Minnesota',16.7,3.0,66.3,0.0,4.0),('New England',29.0,7.7,107.0,0.3,3.7),('New Orleans',27.3,5.7,93.3,0.7,3.4),('NY Giants',22.0,6.0,88.0,1.0,4.0),('NY Jets',22.0,4.7,91.3,0.3,4.2),('Philadelphia',37.7,12.3,185.7,1.3,4.9),('Pittsburgh',20.7,3.7,67.0,0.0,3.2),('San Francisco',33.7,8.3,162.7,1.7,4.8),('Seattle',25.3,6.7,104.3,1.3,4.1),('Tampa Bay',28.0,4.7,78.0,0.3,2.8),('Tennessee',23.7,5.0,90.3,0.7,3.8),('Washington',21.3,7.7,106.3,1.0,5.0);
/*!40000 ALTER TABLE `offteam_rushing_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packers_defense_roster`
--

DROP TABLE IF EXISTS `packers_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packers_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packers_defense_roster`
--

LOCK TABLES `packers_defense_roster` WRITE;
/*!40000 ALTER TABLE `packers_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `packers_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packers_offense_roster`
--

DROP TABLE IF EXISTS `packers_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packers_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packers_offense_roster`
--

LOCK TABLES `packers_offense_roster` WRITE;
/*!40000 ALTER TABLE `packers_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `packers_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panthers_defense_roster`
--

DROP TABLE IF EXISTS `panthers_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panthers_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panthers_defense_roster`
--

LOCK TABLES `panthers_defense_roster` WRITE;
/*!40000 ALTER TABLE `panthers_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `panthers_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panthers_offense_roster`
--

DROP TABLE IF EXISTS `panthers_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panthers_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panthers_offense_roster`
--

LOCK TABLES `panthers_offense_roster` WRITE;
/*!40000 ALTER TABLE `panthers_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `panthers_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patriots_defense_roster`
--

DROP TABLE IF EXISTS `patriots_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patriots_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patriots_defense_roster`
--

LOCK TABLES `patriots_defense_roster` WRITE;
/*!40000 ALTER TABLE `patriots_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `patriots_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patriots_offense_roster`
--

DROP TABLE IF EXISTS `patriots_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patriots_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patriots_offense_roster`
--

LOCK TABLES `patriots_offense_roster` WRITE;
/*!40000 ALTER TABLE `patriots_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `patriots_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_away_stats`
--

DROP TABLE IF EXISTS `qb_away_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qb_away_stats` (
  `Name` varchar(45) NOT NULL,
  `Pass_Yards` int DEFAULT '0',
  `Yards_Per_Attempt` decimal(4,1) DEFAULT '0.1',
  `Attempts` int DEFAULT '0',
  `Completions` int DEFAULT '0',
  `Completion_Perc` decimal(4,1) DEFAULT '0.1',
  `Touchdowns` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `20Plus_Yards` int DEFAULT '0',
  `Longest_Pass` int DEFAULT '0',
  `Sacks` int DEFAULT '0',
  `Sacks_LostYards` int DEFAULT '0',
  `Games_Played` int DEFAULT '0',
  `Rating` decimal(4,1) DEFAULT '0.1',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_away_stats`
--

LOCK TABLES `qb_away_stats` WRITE;
/*!40000 ALTER TABLE `qb_away_stats` DISABLE KEYS */;
INSERT INTO `qb_away_stats` VALUES ('A.J. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Aaron Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('AJ Dillon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alec Ingold',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alec Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Alexander Mattison',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Amari Cooper',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ameer Abdullah',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Amon-Ra St. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Anthony Richardson',56,5.6,10,6,60.0,0,0,0,0,0,0,1,75.4),('Antonio Gibson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ashtyn Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Austin Hooper',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Baker Mayfield',173,5.1,34,21,61.8,2,0,0,0,1,4,1,94.4),('Ben Skowronek',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Boston Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandin Cooks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandon Aiyuk',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Braxton Berrios',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Breece Hall',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brian Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brock Purdy',426,7.9,54,36,66.7,2,0,0,0,4,17,2,102.9),('Bryce Young',146,3.8,38,20,52.6,1,2,0,0,2,19,1,48.8),('Brycen Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Byron Pringle',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('C.J. Stroud',242,5.5,44,28,63.6,0,0,0,0,5,46,1,78.0),('Cade Otton',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Calvin Ridley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cam Akers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('CeeDee Lamb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Claypool',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Edmonds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Godwin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Olave',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Christian Kirk',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Christian McCaffrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chuba Hubbard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Clyde Edwards-Helaire',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Colby Parkinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cole Kmet',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cooper Rush',0,0.0,1,0,0.0,0,0,0,0,0,0,1,39.6),('Curtis Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.J. Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.K. Metcalf',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D\'Andre Swift',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D\'Ernest Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dak Prescott',143,6.0,24,13,54.2,0,0,0,0,0,0,1,72.0),('Dallas Goedert',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalton Kincaid',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalton Schultz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalvin Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dameon Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Damien Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Daniel Bellinger',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Daniel Jones',458,6.6,69,48,69.6,2,2,0,0,5,25,2,85.3),('Darius Slayton',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Davante Adams',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('David Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Njoku',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dawson Knox',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeAndre Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DeAndre Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deebo Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DeeJay Dallas',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deonte Harty',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Derek Carr',228,6.3,36,21,58.3,0,1,0,0,4,29,1,65.5),('Derius Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Derrick Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deshaun Watson',235,5.9,40,22,55.0,1,1,0,0,6,25,1,70.3),('Devin Duvernay',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Devin Singletary',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Devon Achane',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeVonta Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donald Parham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donovan Peoples-Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donovan Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Durham Smythe',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dyami Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Mitchell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Erik Ezukanma',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Evan Engram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Foster Moreau',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gabriel Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gardner Minshew',171,7.4,23,19,82.6,1,0,0,0,0,0,1,112.1),('Gary Brightwell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Geno Smith',328,8.0,41,32,78.0,2,0,0,0,1,17,1,116.3),('George Kittle',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gerald Everett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Giovanni Ricci',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gus Edwards',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Harrison Bryant',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Hayden Hurst',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Hunter Renfrow',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Irv Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah Hodgins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah Likely',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah McKenzie',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah Spiller',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isiah Pacheco',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ja\'Marr Chase',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jahan Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jahmyr Gibbs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jake Bobo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jake Browning',0,0.0,1,0,0.0,0,0,0,0,0,0,1,39.6),('Jake Ferguson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jakobi Meyers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jalen Hurts',170,5.2,33,22,66.7,1,0,0,0,3,16,1,89.2),('Jalen Reeves-Maybin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jalin Hyatt',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jamal Agnew',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('James Conner',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('James Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jared Goff',253,7.2,35,22,62.9,1,0,0,0,1,3,1,94.1),('Jauan Jennings',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jaxon Smith-Njigba',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jayden Reed',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jerick McKinnon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jerome Ford',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jimmy Garoppolo',385,7.7,50,36,72.0,3,3,0,0,0,0,2,89.2),('Joe Burrow',82,2.6,31,14,45.2,0,0,0,0,2,15,1,52.2),('Joe Mixon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('John Bates',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jonathan Mingo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Addison',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Akins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Love',396,7.6,52,29,55.8,6,0,0,0,2,19,2,118.8),('Josh Allen',236,5.8,41,29,70.7,1,3,0,0,5,19,1,62.7),('Josh Downs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Jacobs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Oliver',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Joshua Dobbs',132,4.4,30,21,70.0,0,0,0,0,3,18,1,78.8),('Joshua Kelley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josiah Deguara',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Justice Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Justin Fields',211,7.3,29,16,55.2,1,2,0,0,6,42,1,61.1),('Justin Herbert',305,7.4,41,27,65.9,2,0,0,0,3,24,1,104.2),('Justin Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Juwan Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('K.J. Osborn',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kalif Raymond',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keaontay Ingram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keenan Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keith Kirkwood',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kenneth Gainwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Khalil Herbert',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kirk Cousins',364,8.3,44,31,70.5,4,0,0,0,2,18,1,125.6),('Ko Kieft',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kylen Granson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lamar Jackson',237,7.2,33,24,72.7,2,0,0,0,0,0,1,112.8),('Latavius Murray',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Laviska Shenault',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Luke Musgrave',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Malik Heath',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mark Andrews',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marquise Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marquise Goodwin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marvin Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Matt Breida',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matthew Stafford',334,8.8,38,24,63.2,0,0,0,0,0,0,1,91.3),('Mecole Hardman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Gallup',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Mayer',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Michael Pittman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Boone',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Miles Sanders',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mo Alie-Cox',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nelson Agholor',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nick Chubb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nico Collins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Noah Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Noah Fant',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Noah Gray',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Odell Beckham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Parris Campbell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Patrick Mahomes',305,7.4,41,29,70.7,2,1,0,0,1,7,1,98.1),('Patrick Taylor',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Peyton Hendershot',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Pierre Strong',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Puka Nacua',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Quentin Johnston',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Raheem Mostert',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Rakim Jarrett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Randall Cobb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashee Rice',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashid Shaheed',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashod Bateman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Richie James',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rico Dowdle',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('River Cracraft',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Romeo Doubs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Rondale Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Roschon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ryan Tannehill',198,5.8,34,16,47.1,0,3,0,0,3,17,1,28.8),('Salvon Ahmed',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Sam Darnold',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sam Howell',299,7.7,39,27,69.2,2,0,0,0,4,33,1,108.8),('Sam LaPorta',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Saquon Barkley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sean Clifford',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Skyy Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Stefon Diggs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sterling Shepard',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Stone Smartt',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('T.J. Hockenson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tank Bigsby',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tank Dell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Taysom Hill',8,8.0,1,1,100.0,0,0,0,0,0,0,1,100.0),('Teagan Quitoriano',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tee Higgins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Terrace Marshall',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Terry McLaurin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tony Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tony Pollard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Etienne',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Kelce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Trevor Lawrence',241,7.5,32,24,75.0,2,1,0,0,2,4,1,103.8),('Trey McBride',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Trey Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Treylon Burks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tua Tagovailoa',715,9.5,75,49,65.3,4,2,0,0,1,5,2,102.9),('Tutu Atwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ty Chandler',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyjae Spears',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Boyd',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Conklin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Higbee',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Lockett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyreek Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Van Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Velus Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Wan\'Dale Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Will Dissly',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Will Mallory',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Xavier Hutchinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Charbonnet',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Ertz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Pascal',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Wilson',170,6.3,27,12,44.4,1,3,0,0,3,19,1,38.1),('Zack Moss',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zay Flowers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zay Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0);
/*!40000 ALTER TABLE `qb_away_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_home_stats`
--

DROP TABLE IF EXISTS `qb_home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qb_home_stats` (
  `Name` varchar(45) NOT NULL,
  `Pass_Yards` int DEFAULT '0',
  `Yards_Per_Attempt` decimal(4,1) DEFAULT '0.0',
  `Attempts` int DEFAULT '0',
  `Completions` int DEFAULT '0',
  `Completion_Perc` decimal(4,1) DEFAULT '0.0',
  `Touchdowns` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `20Plus_Yards` int DEFAULT '0',
  `Longest_Pass` int DEFAULT '0',
  `Sacks` int DEFAULT '0',
  `Sacks_LostYards` int DEFAULT '0',
  `Games_Played` int DEFAULT '0',
  `Rating` decimal(4,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_home_stats`
--

LOCK TABLES `qb_home_stats` WRITE;
/*!40000 ALTER TABLE `qb_home_stats` DISABLE KEYS */;
INSERT INTO `qb_home_stats` VALUES ('A.J. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Aaron Rodgers',0,0.0,1,0,0.0,0,0,0,0,1,10,1,39.6),('Alec Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Alexander Mattison',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Allen Lazard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Allen Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Amari Cooper',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Andrew Beck',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Andrew Ogletree',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Anthony McFarland',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Anthony Richardson',223,6.0,37,24,64.9,1,1,0,0,4,8,1,79.0),('Antoine Green',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Antonio Gibson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Austin Ekeler',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Baker Mayfield',317,9.3,34,26,76.5,1,0,0,0,0,0,1,114.5),('Ben Skowronek',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Bijan Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Blake Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Boston Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Breece Hall',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brevin Jordan',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brian Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brock Purdy',310,8.4,37,25,67.6,2,0,0,0,2,10,1,111.3),('Bryce Young',153,4.6,33,22,66.7,1,0,0,0,4,14,1,87.1),('C.J. Ham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('C.J. Stroud',384,8.2,47,30,63.8,2,0,0,0,6,47,1,103.5),('Cade Otton',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Calvin Austin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Calvin Ridley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('CeeDee Lamb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Charlie Kolar',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Claypool',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Edmonds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chigoziem Okonkwo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Godwin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Rodriguez',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Christian Kirk',-1,-1.0,1,1,100.0,0,0,0,0,0,0,1,79.2),('Christian McCaffrey',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chuba Hubbard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Clyde Edwards-Helaire',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Colby Parkinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cole Kmet',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Connor Heyward',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Craig Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Curtis Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.J. Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.K. Metcalf',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D\'Ernest Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D\'Onta Foreman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dak Prescott',255,6.7,38,31,81.6,2,0,0,0,1,7,1,112.2),('Dallas Goedert',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalton Kincaid',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalton Schultz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalvin Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dameon Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Damien Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Daniel Bellinger',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Daniel Jones',104,3.7,28,15,53.6,0,2,0,0,7,47,1,32.4),('Dare Ogunbowale',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Darius Slayton',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Darnell Mooney',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Njoku',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dawson Knox',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeAndre Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deebo Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeeJay Dallas',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Demario Douglas',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deon Jackson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deonte Harty',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Derek Carr',305,9.2,33,23,69.7,1,1,0,0,4,23,1,96.1),('Derius Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Derrick Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deshaun Watson',154,5.3,29,16,55.2,1,1,0,0,3,10,1,67.3),('Desmond Ridder',352,7.0,50,34,68.0,2,1,0,0,5,26,2,93.1),('DeVante Parker',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Devin Singletary',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeVonta Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Diontae Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DJ Chark',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donald Parham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donovan Peoples-Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Drake London',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Elijah Mitchell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Emari Demercado',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Evan Engram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Evan Hull',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ezekiel Elliott',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gabriel Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gardner Minshew',0,0.0,2,0,0.0,0,0,0,0,0,0,1,39.6),('Gary Brightwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Geno Smith',112,4.3,26,16,61.5,1,0,0,0,2,17,1,84.1),('George Kittle',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('George Pickens',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gerald Everett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Greg Dulcich',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gunner Olszewski',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gus Edwards',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Harrison Bryant',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Hayden Hurst',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Hunter Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Irv Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah Hodgins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isiah Pacheco',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('J.K. Dobbins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ja\'Marr Chase',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jahan Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jahmyr Gibbs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jake Ferguson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jake Funk',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jaleel McLaughlin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jalen Hurts',193,8.4,23,18,78.3,1,1,0,0,4,22,1,98.0),('Jalin Hyatt',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jamal Agnew',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('James Conner',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('James Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jared Goff',323,9.2,35,28,80.0,3,1,0,0,2,7,1,121.8),('Jauan Jennings',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jaxon Smith-Njigba',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jerick McKinnon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jerome Ford',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Joe Burrow',222,5.4,41,27,65.9,2,1,0,0,1,6,1,85.6),('Joe Mixon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('John Metchie',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jonathan Mingo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jonnu Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jordan Addison',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Akins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Mason',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Allen',274,7.4,37,31,83.8,3,0,0,0,2,7,1,124.5),('Josh Downs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Oliver',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Joshua Dobbs',228,7.4,31,21,67.7,1,0,0,0,0,0,1,99.9),('Joshua Kelley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('JuJu Smith-Schuster',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Justice Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Justin Fields',216,5.8,37,24,64.9,1,1,0,0,4,27,1,78.2),('Justin Herbert',229,6.9,33,23,69.7,1,0,0,0,3,29,1,99.2),('Justin Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Justyn Ross',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Juwan Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('K.J. Osborn',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kalif Raymond',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kayshon Boutte',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keaontay Ingram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keenan Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keith Kirkwood',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kendrick Bourne',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kenny Pickett',454,6.0,76,46,60.5,2,3,0,0,7,56,2,69.7),('Khalil Herbert',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Khalil Shakir',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Khari Blasingame',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kirk Cousins',344,7.8,44,33,75.0,2,1,0,0,2,16,1,102.8),('Kyle Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kyle Juszczyk',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kyle Pitts',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kylen Granson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lamar Jackson',169,7.7,22,17,77.3,0,1,0,0,4,14,1,79.5),('Latavius Murray',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Laviska Shenault',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lawrence Cager',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lil\'Jordan Humphrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Luke Schoonmaker',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mac Jones',547,5.7,96,66,68.8,4,2,0,0,6,41,2,88.3),('Mack Hollins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Marquise Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marquise Goodwin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marvin Mims',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matt Breida',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Matthew Stafford',307,5.6,55,34,61.8,1,2,0,0,1,10,1,67.8),('Michael Burton',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Michael Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Gallup',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Pittman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Gesicki',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Miles Boykin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Miles Sanders',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mo Alie-Cox',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Najee Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nick Chubb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nico Collins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Noah Gray',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Odell Beckham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Parris Campbell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Pat Freiermuth',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Patrick Mahomes',226,5.8,39,21,53.8,2,1,0,0,0,0,1,77.5),('Peyton Hendershot',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Phillip Dorsett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Puka Nacua',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Quentin Johnston',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rakim Jarrett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Randall Cobb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashaad Penny',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashee Rice',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashid Shaheed',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashod Bateman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Reggie Gilliam',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Richie James',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rico Dowdle',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rondale Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ronnie Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ronnie Rivers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Roschon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Russell Wilson',485,7.3,66,45,68.2,5,1,0,0,9,42,2,108.5),('Ryan Tannehill',246,10.3,24,20,83.3,1,0,0,0,5,46,1,123.3),('Sam Darnold',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sam Howell',202,6.5,31,19,61.3,1,1,0,0,6,46,1,77.6),('Sam LaPorta',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Samaje Perine',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Saquon Barkley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Skyy Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Stefon Diggs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sterling Shepard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('T.J. Hockenson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tank Dell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Taysom Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tee Higgins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Terry McLaurin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tony Pollard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Etienne',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Trevor Lawrence',216,5.3,41,22,53.7,0,0,0,0,4,18,1,68.8),('Trey McBride',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Trey Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Treylon Burks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tutu Atwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ty Chandler',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ty Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Allgeier',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Boyd',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Conklin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Higbee',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Lockett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Van Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Will Dissly',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Xavier Hutchinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Charbonnet',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Ertz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Pascal',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Wilson',140,6.7,21,14,66.7,1,1,0,0,2,13,1,81.4),('Zay Flowers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zay Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0);
/*!40000 ALTER TABLE `qb_home_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qb_total_stats`
--

DROP TABLE IF EXISTS `qb_total_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qb_total_stats` (
  `Name` varchar(45) NOT NULL,
  `Pass_Yards` int DEFAULT '0',
  `Yards_Per_Attempt` decimal(4,1) DEFAULT '0.1',
  `Attempts` int DEFAULT '0',
  `Completions` int DEFAULT '0',
  `Completion_Perc` decimal(3,1) DEFAULT '0.0',
  `Touchdowns` int DEFAULT '0',
  `Interceptions` int DEFAULT '0',
  `20Plus_Yards` int DEFAULT '0',
  `Longest_Pass` int DEFAULT '0',
  `Sacks` int DEFAULT '0',
  `Sacks_LostYards` int DEFAULT '0',
  `Games_Played` int DEFAULT '0',
  `Rating` decimal(4,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qb_total_stats`
--

LOCK TABLES `qb_total_stats` WRITE;
/*!40000 ALTER TABLE `qb_total_stats` DISABLE KEYS */;
INSERT INTO `qb_total_stats` VALUES ('Anthony Richardson',279,5.8,47,30,0.6,1,1,0,0,4,8,2,77.2),('Baker Mayfield',490,7.2,68,47,0.7,3,0,0,0,1,4,2,104.5),('Brock Purdy',736,8.1,91,61,0.7,4,0,0,0,6,27,3,105.7),('Bryce Young',299,4.2,71,42,0.6,2,2,0,0,6,33,2,68.0),('C.J. Stroud',626,6.9,91,58,0.6,2,0,0,0,11,93,2,90.8),('Dak Prescott',398,6.4,62,44,0.7,2,0,0,0,1,7,2,92.1),('Daniel Jones',562,5.6,97,63,0.6,2,4,0,0,12,72,3,67.7),('Derek Carr',533,7.8,69,44,0.6,1,2,0,0,8,52,2,80.8),('Deshaun Watson',389,5.6,69,38,0.6,2,2,0,0,9,35,2,68.8),('Gardner Minshew',171,3.7,25,19,0.8,1,0,0,0,0,0,2,75.9),('Geno Smith',440,6.2,67,48,0.7,3,0,0,0,3,34,2,100.2),('Jalen Hurts',363,6.8,56,40,0.7,2,1,0,0,7,38,2,93.6),('Jared Goff',576,8.2,70,50,0.7,4,1,0,0,3,10,2,108.0),('Joe Burrow',304,4.0,72,41,0.6,2,1,0,0,3,21,2,68.9),('Josh Allen',510,6.6,78,60,0.8,4,3,0,0,7,26,2,93.6),('Joshua Dobbs',360,5.9,61,42,0.7,1,0,0,0,3,18,2,89.4),('Justin Fields',427,6.6,66,40,0.6,2,3,0,0,10,69,2,69.7),('Justin Herbert',534,7.2,74,50,0.7,3,0,0,0,6,53,2,101.7),('Kirk Cousins',708,8.1,88,64,0.7,6,1,0,0,4,34,2,114.2),('Lamar Jackson',406,7.5,55,41,0.7,2,1,0,0,4,14,2,96.2),('Matthew Stafford',641,7.2,93,58,0.6,1,2,0,0,1,10,2,79.6),('Patrick Mahomes',531,6.6,80,50,0.6,4,2,0,0,1,7,2,87.8),('Ryan Tannehill',444,8.1,58,36,0.6,1,3,0,0,8,63,2,76.1),('Sam Howell',501,7.1,70,46,0.7,3,1,0,0,10,79,2,93.2),('Trevor Lawrence',457,6.4,73,46,0.6,2,1,0,0,6,22,2,86.3),('Zach Wilson',310,6.5,48,26,0.5,2,4,0,0,5,32,2,59.8);
/*!40000 ALTER TABLE `qb_total_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raiders_defense_roster`
--

DROP TABLE IF EXISTS `raiders_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raiders_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raiders_defense_roster`
--

LOCK TABLES `raiders_defense_roster` WRITE;
/*!40000 ALTER TABLE `raiders_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `raiders_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raiders_offense_roster`
--

DROP TABLE IF EXISTS `raiders_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raiders_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raiders_offense_roster`
--

LOCK TABLES `raiders_offense_roster` WRITE;
/*!40000 ALTER TABLE `raiders_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `raiders_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rams_defense_roster`
--

DROP TABLE IF EXISTS `rams_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rams_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rams_defense_roster`
--

LOCK TABLES `rams_defense_roster` WRITE;
/*!40000 ALTER TABLE `rams_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `rams_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rams_offense_roster`
--

DROP TABLE IF EXISTS `rams_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rams_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rams_offense_roster`
--

LOCK TABLES `rams_offense_roster` WRITE;
/*!40000 ALTER TABLE `rams_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `rams_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ravens_defense_roster`
--

DROP TABLE IF EXISTS `ravens_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ravens_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ravens_defense_roster`
--

LOCK TABLES `ravens_defense_roster` WRITE;
/*!40000 ALTER TABLE `ravens_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ravens_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ravens_offense_roster`
--

DROP TABLE IF EXISTS `ravens_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ravens_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ravens_offense_roster`
--

LOCK TABLES `ravens_offense_roster` WRITE;
/*!40000 ALTER TABLE `ravens_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ravens_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_away_stats`
--

DROP TABLE IF EXISTS `rb_away_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rb_away_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Attempts` int DEFAULT '0',
  `Yards` int DEFAULT '0',
  `Yards_PerAttempt` decimal(4,2) DEFAULT '0.00',
  `Touchdowns` int DEFAULT '0',
  `FirstDown_Runs` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_away_stats`
--

LOCK TABLES `rb_away_stats` WRITE;
/*!40000 ALTER TABLE `rb_away_stats` DISABLE KEYS */;
INSERT INTO `rb_away_stats` VALUES ('A.J. Brown',1,0,0,0.00,0,0),('Aaron Jones',1,9,41,4.60,1,3),('AJ Dillon',2,28,74,2.60,0,3),('Alec Ingold',2,0,0,0.00,0,0),('Alec Pierce',1,0,0,0.00,0,0),('Alexander Mattison',1,8,28,3.50,0,0),('Amari Cooper',1,0,0,0.00,0,0),('Ameer Abdullah',2,0,0,0.00,0,0),('Amon-Ra St. Brown',1,0,0,0.00,0,0),('Anthony Richardson',1,3,35,11.70,2,2),('Antonio Gibson',1,2,9,4.50,0,1),('Ashtyn Davis',1,1,4,4.00,0,1),('Austin Hooper',2,0,0,0.00,0,0),('Baker Mayfield',1,8,11,1.40,0,2),('Ben Skowronek',1,0,0,0.00,0,0),('Boston Scott',1,1,3,3.00,0,0),('Brandin Cooks',1,0,0,0.00,0,0),('Brandon Aiyuk',2,0,0,0.00,0,0),('Braxton Berrios',2,0,0,0.00,0,0),('Breece Hall',1,4,9,2.30,0,0),('Brian Robinson',1,18,87,4.80,2,8),('Brock Purdy',2,6,25,4.20,1,3),('Bryce Young',1,3,17,5.70,0,1),('Brycen Hopkins',1,0,0,0.00,0,0),('Byron Pringle',1,0,0,0.00,0,0),('C.J. Stroud',1,4,20,5.00,0,1),('Cade Otton',1,0,0,0.00,0,0),('Calvin Ridley',1,0,0,0.00,0,0),('Cam Akers',1,22,29,1.30,1,4),('CeeDee Lamb',1,0,0,0.00,0,0),('Chase Claypool',1,0,0,0.00,0,0),('Chase Edmonds',1,2,8,4.00,0,1),('Chris Evans',1,2,12,6.00,0,0),('Chris Godwin',1,0,0,0.00,0,0),('Chris Moore',1,0,0,0.00,0,0),('Chris Olave',1,0,0,0.00,0,0),('Christian Kirk',1,0,0,0.00,0,0),('Christian McCaffrey',2,42,268,6.40,2,11),('Chuba Hubbard',1,9,60,6.70,0,6),('Clyde Edwards-Helaire',1,1,0,0.00,0,0),('Colby Parkinson',1,0,0,0.00,0,0),('Cole Kmet',1,0,0,0.00,0,0),('Cooper Rush',1,0,0,0.00,0,0),('Curtis Samuel',1,1,13,13.00,0,1),('D.J. Moore',1,0,0,0.00,0,0),('D.K. Metcalf',1,0,0,0.00,0,0),('D\'Andre Swift',1,1,3,3.00,0,0),('D\'Ernest Johnson',1,1,-4,-4.00,0,0),('Dak Prescott',1,1,6,6.00,0,0),('Dallas Goedert',1,0,0,0.00,0,0),('Dalton Kincaid',1,0,0,0.00,0,0),('Dalton Schultz',1,0,0,0.00,0,0),('Dalvin Cook',1,4,7,1.80,0,0),('Dameon Pierce',1,11,38,3.50,0,0),('Damien Harris',1,1,3,3.00,0,0),('Daniel Bellinger',2,0,0,0.00,0,0),('Daniel Jones',2,11,64,5.80,1,6),('Darius Slayton',2,0,0,0.00,0,0),('Davante Adams',2,0,0,0.00,0,0),('David Bell',1,0,0,0.00,0,0),('David Montgomery',1,21,74,3.50,1,4),('David Njoku',1,0,0,0.00,0,0),('Dawson Knox',1,0,0,0.00,0,0),('DeAndre Carter',2,0,0,0.00,0,0),('DeAndre Hopkins',1,0,0,0.00,0,0),('Deebo Samuel',2,7,46,6.60,1,2),('DeeJay Dallas',1,1,3,3.00,0,0),('Deonte Harty',1,1,4,4.00,0,0),('Derek Carr',1,3,-4,-1.30,0,0),('Derius Davis',1,1,10,10.00,0,1),('Derrick Henry',1,15,63,4.20,0,4),('Deshaun Watson',1,6,22,3.70,0,2),('Devin Duvernay',1,3,15,5.00,0,0),('Devin Singletary',1,7,15,2.10,0,0),('Devon Achane',1,1,5,5.00,0,0),('DeVonta Smith',1,0,0,0.00,0,0),('Donald Parham',1,0,0,0.00,0,0),('Donovan Peoples-Jones',1,0,0,0.00,0,0),('Donovan Smith',1,0,0,0.00,0,0),('Durham Smythe',2,0,0,0.00,0,0),('Dyami Brown',1,0,0,0.00,0,0),('Elijah Dotson',1,4,6,1.50,0,0),('Elijah Mitchell',1,5,10,2.00,0,0),('Elijah Moore',1,1,5,5.00,0,0),('Erik Ezukanma',2,5,22,4.40,0,1),('Evan Engram',1,0,0,0.00,0,0),('Foster Moreau',1,0,0,0.00,0,0),('Gabriel Davis',1,0,0,0.00,0,0),('Gardner Minshew',1,2,3,1.50,0,0),('Gary Brightwell',2,4,5,1.30,0,0),('Geno Smith',1,3,20,6.70,0,0),('George Kittle',2,0,0,0.00,0,0),('Gerald Everett',1,0,0,0.00,0,0),('Giovanni Ricci',1,0,0,0.00,0,0),('Gus Edwards',1,10,62,6.20,1,6),('Harrison Bryant',1,0,0,0.00,0,0),('Hayden Hurst',1,0,0,0.00,0,0),('Hunter Renfrow',2,0,0,0.00,0,0),('Irv Smith',1,0,0,0.00,0,0),('Isaiah Hodgins',2,0,0,0.00,0,0),('Isaiah Likely',1,0,0,0.00,0,0),('Isaiah McKenzie',1,0,0,0.00,0,0),('Isaiah Spiller',1,1,3,3.00,0,0),('Isiah Pacheco',1,12,70,5.80,0,4),('Ja\'Marr Chase',1,1,2,2.00,0,0),('Jahan Dotson',1,0,0,0.00,0,0),('Jahmyr Gibbs',1,7,42,6.00,0,2),('Jake Bobo',1,0,0,0.00,0,0),('Jake Browning',1,1,-1,-1.00,0,0),('Jake Ferguson',1,0,0,0.00,0,0),('Jakobi Meyers',1,0,0,0.00,0,0),('Jalen Hurts',1,9,37,4.10,0,2),('Jalen Reeves-Maybin',1,1,3,3.00,0,1),('Jalin Hyatt',2,0,0,0.00,0,0),('Jamal Agnew',1,2,-2,-1.00,0,0),('James Conner',1,14,62,4.40,0,3),('James Cook',1,12,46,3.80,0,5),('Jared Goff',1,5,-1,-0.20,0,1),('Jauan Jennings',2,0,0,0.00,0,0),('Jaxon Smith-Njigba',1,0,0,0.00,0,0),('Jayden Reed',2,1,-2,-2.00,0,0),('Jerick McKinnon',1,1,-2,-2.00,0,0),('Jerome Ford',1,16,106,6.60,0,3),('Jimmy Garoppolo',2,10,12,1.20,0,2),('Joe Burrow',1,1,-1,-1.00,0,0),('Joe Mixon',1,13,56,4.30,0,2),('John Bates',1,0,0,0.00,0,0),('Jonathan Mingo',1,0,0,0.00,0,0),('Jordan Addison',1,0,0,0.00,0,0),('Jordan Akins',1,0,0,0.00,0,0),('Jordan Love',2,5,35,7.00,0,2),('Josh Allen',1,6,36,6.00,0,3),('Josh Downs',1,0,0,0.00,0,0),('Josh Jacobs',2,28,46,1.60,0,3),('Josh Oliver',1,0,0,0.00,0,0),('Josh Palmer',1,0,0,0.00,0,0),('Josh Reynolds',1,0,0,0.00,0,0),('Joshua Dobbs',1,3,-3,-1.00,0,0),('Joshua Kelley',1,13,39,3.00,0,3),('Josiah Deguara',2,0,0,0.00,0,0),('Justice Hill',1,11,41,3.70,0,2),('Justin Fields',1,4,3,0.80,1,1),('Justin Herbert',1,1,0,0.00,0,0),('Justin Jefferson',1,0,0,0.00,0,0),('Juwan Johnson',1,0,0,0.00,0,0),('K.J. Osborn',1,0,0,0.00,0,0),('Kalif Raymond',1,0,0,0.00,0,0),('Keaontay Ingram',1,5,-4,-0.80,0,0),('Keenan Allen',1,0,0,0.00,0,0),('Keith Kirkwood',1,0,0,0.00,0,0),('Kenneth Gainwell',1,14,54,3.90,0,4),('Khalil Herbert',1,7,35,5.00,0,3),('Kirk Cousins',1,0,0,0.00,0,0),('Ko Kieft',1,0,0,0.00,0,0),('Kylen Granson',1,0,0,0.00,0,0),('Lamar Jackson',1,12,54,4.50,0,3),('Latavius Murray',1,2,8,4.00,0,0),('Laviska Shenault',1,2,5,2.50,0,0),('Luke Musgrave',2,0,0,0.00,0,0),('Malik Heath',2,0,0,0.00,0,0),('Mark Andrews',1,0,0,0.00,0,0),('Marquise Brown',1,1,29,29.00,0,1),('Marquise Goodwin',1,0,0,0.00,0,0),('Marvin Jones',1,0,0,0.00,0,0),('Matt Breida',2,5,22,4.40,1,1),('Matthew Stafford',1,3,11,3.70,0,1),('Mecole Hardman',1,0,0,0.00,0,0),('Michael Carter',1,2,8,4.00,0,1),('Michael Gallup',1,0,0,0.00,0,0),('Michael Mayer',2,0,0,0.00,0,0),('Michael Pittman',1,0,0,0.00,0,0),('Mike Boone',1,0,0,0.00,0,0),('Mike Evans',1,0,0,0.00,0,0),('Miles Sanders',1,18,72,4.00,0,2),('Mo Alie-Cox',1,0,0,0.00,0,0),('Nelson Agholor',1,0,0,0.00,0,0),('Nick Chubb',1,10,64,6.40,0,1),('Nico Collins',1,0,0,0.00,0,0),('Noah Brown',1,1,-1,-1.00,0,0),('Noah Fant',1,0,0,0.00,0,0),('Noah Gray',1,0,0,0.00,0,0),('Odell Beckham',1,0,0,0.00,0,0),('Parris Campbell',2,0,0,0.00,0,0),('Patrick Mahomes',1,7,30,4.30,0,3),('Patrick Taylor',2,6,23,3.80,0,1),('Peyton Hendershot',1,0,0,0.00,0,0),('Pierre Strong',1,2,1,0.50,1,1),('Puka Nacua',1,0,0,0.00,0,0),('Quentin Johnston',1,0,0,0.00,0,0),('Raheem Mostert',2,28,158,5.60,3,8),('Rakim Jarrett',1,1,0,0.00,0,0),('Randall Cobb',1,0,0,0.00,0,0),('Rashee Rice',1,0,0,0.00,0,0),('Rashid Shaheed',1,0,0,0.00,0,0),('Rashod Bateman',1,0,0,0.00,0,0),('Richie James',1,0,0,0.00,0,0),('Rico Dowdle',1,6,24,4.00,0,1),('River Cracraft',2,0,0,0.00,0,0),('Romeo Doubs',2,0,0,0.00,0,0),('Rondale Moore',1,2,12,6.00,0,0),('Roschon Johnson',1,4,32,8.00,0,1),('Ryan Tannehill',1,3,5,1.70,0,0),('Salvon Ahmed',2,6,24,4.00,0,1),('Sam Darnold',1,2,-2,-1.00,0,0),('Sam Howell',1,2,13,6.50,0,1),('Sam LaPorta',1,0,0,0.00,0,0),('Saquon Barkley',1,17,63,3.70,1,5),('Sean Clifford',1,1,0,0.00,0,0),('Skyy Moore',1,0,0,0.00,0,0),('Stefon Diggs',1,0,0,0.00,0,0),('Sterling Shepard',2,0,0,0.00,0,0),('Stone Smartt',1,0,0,0.00,0,0),('T.J. Hockenson',1,0,0,0.00,0,0),('Tank Bigsby',1,7,13,1.90,1,3),('Tank Dell',1,0,0,0.00,0,0),('Taysom Hill',1,9,75,8.30,0,5),('Teagan Quitoriano',1,0,0,0.00,0,0),('Tee Higgins',1,0,0,0.00,0,0),('Terrace Marshall',1,0,0,0.00,0,0),('Terry McLaurin',1,0,0,0.00,0,0),('Tony Jones',1,12,34,2.80,2,4),('Tony Pollard',1,14,70,5.00,2,5),('Travis Etienne',1,18,77,4.30,1,4),('Travis Kelce',1,0,0,0.00,0,0),('Trevor Lawrence',1,7,21,3.00,0,2),('Trey McBride',1,0,0,0.00,0,0),('Trey Palmer',1,0,0,0.00,0,0),('Treylon Burks',1,1,9,9.00,0,0),('Tua Tagovailoa',2,9,8,0.90,0,1),('Tutu Atwell',1,0,0,0.00,0,0),('Ty Chandler',1,1,0,0.00,0,0),('Tyjae Spears',1,3,27,9.00,0,1),('Tyler Boyd',1,0,0,0.00,0,0),('Tyler Conklin',1,0,0,0.00,0,0),('Tyler Higbee',1,0,0,0.00,0,0),('Tyler Lockett',1,0,0,0.00,0,0),('Tyreek Hill',2,0,0,0.00,0,0),('Van Jefferson',1,0,0,0.00,0,0),('Velus Jones',1,1,-3,-3.00,0,0),('Wan\'Dale Robinson',1,0,0,0.00,0,0),('Will Dissly',1,0,0,0.00,0,0),('Will Mallory',1,0,0,0.00,0,0),('Xavier Hutchinson',1,0,0,0.00,0,0),('Zach Charbonnet',1,4,16,4.00,0,2),('Zach Ertz',1,0,0,0.00,0,0),('Zach Pascal',1,0,0,0.00,0,0),('Zach Wilson',1,5,36,7.20,0,2),('Zack Moss',1,18,88,4.90,1,4),('Zay Flowers',1,1,6,6.00,0,0),('Zay Jones',1,0,0,0.00,0,0);
/*!40000 ALTER TABLE `rb_away_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_home_stats`
--

DROP TABLE IF EXISTS `rb_home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rb_home_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Attempts` int DEFAULT '0',
  `Yards` int DEFAULT '0',
  `Yards_PerAttempt` decimal(4,2) DEFAULT '0.00',
  `Touchdowns` int DEFAULT '0',
  `FirstDown_Runs` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_home_stats`
--

LOCK TABLES `rb_home_stats` WRITE;
/*!40000 ALTER TABLE `rb_home_stats` DISABLE KEYS */;
INSERT INTO `rb_home_stats` VALUES ('A.J. Brown',1,0,0,0.00,0,0),('Aaron Rodgers',1,0,0,0.00,0,0),('Alec Pierce',1,0,0,0.00,0,0),('Alexander Mattison',1,11,34,3.10,0,1),('Allen Lazard',1,0,0,0.00,0,0),('Allen Robinson',2,0,0,0.00,0,0),('Amari Cooper',1,0,0,0.00,0,0),('Andrew Beck',1,2,2,1.00,0,1),('Andrew Ogletree',1,0,0,0.00,0,0),('Anthony McFarland',2,0,0,0.00,0,0),('Anthony Richardson',1,10,40,4.00,1,3),('Antoine Green',1,0,0,0.00,0,0),('Antonio Gibson',1,3,9,3.00,0,0),('Austin Ekeler',1,16,117,7.30,1,4),('Baker Mayfield',1,6,17,2.80,0,0),('Ben Skowronek',1,1,11,11.00,0,1),('Bijan Robinson',2,29,180,6.20,0,11),('Blake Bell',1,0,0,0.00,0,0),('Boston Scott',1,5,40,8.00,0,3),('Brandon Johnson',2,0,0,0.00,0,0),('Breece Hall',1,10,127,12.70,0,2),('Brevin Jordan',1,0,0,0.00,0,0),('Brian Robinson',1,19,59,3.10,0,5),('Brock Purdy',1,4,-1,-0.30,0,1),('Bryce Young',1,2,34,17.00,0,1),('C.J. Ham',1,0,0,0.00,0,0),('C.J. Stroud',1,3,1,0.30,0,0),('Cade Otton',1,0,0,0.00,0,0),('Calvin Austin',2,1,-2,-2.00,0,0),('Calvin Ridley',1,0,0,0.00,0,0),('CeeDee Lamb',1,0,0,0.00,0,0),('Charlie Kolar',1,0,0,0.00,0,0),('Chase Brown',1,1,2,2.00,0,0),('Chase Claypool',1,0,0,0.00,0,0),('Chase Edmonds',1,2,12,6.00,0,1),('Chigoziem Okonkwo',1,0,0,0.00,0,0),('Chris Godwin',1,0,0,0.00,0,0),('Chris Moore',1,0,0,0.00,0,0),('Chris Rodriguez',1,3,7,2.30,0,1),('Christian Kirk',1,0,0,0.00,0,0),('Christian McCaffrey',1,18,85,4.70,1,4),('Chuba Hubbard',1,2,16,8.00,0,1),('Clyde Edwards-Helaire',1,6,22,3.70,0,1),('Colby Parkinson',1,0,0,0.00,0,0),('Cole Kmet',1,1,0,0.00,0,0),('Connor Heyward',2,0,0,0.00,0,0),('Craig Reynolds',1,3,7,2.30,0,0),('Curtis Samuel',1,1,6,6.00,0,0),('D.J. Moore',1,0,0,0.00,0,0),('D.K. Metcalf',1,0,0,0.00,0,0),('D\'Ernest Johnson',1,1,8,8.00,0,0),('D\'Onta Foreman',1,5,16,3.20,0,2),('Dak Prescott',1,6,14,2.30,0,2),('Dallas Goedert',1,0,0,0.00,0,0),('Dalton Kincaid',1,0,0,0.00,0,0),('Dalton Schultz',1,0,0,0.00,0,0),('Dalvin Cook',1,13,33,2.50,0,2),('Dameon Pierce',1,15,31,2.10,0,1),('Damien Harris',1,7,33,4.70,1,3),('Daniel Bellinger',1,0,0,0.00,0,0),('Daniel Jones',1,13,43,3.30,0,3),('Dare Ogunbowale',1,2,4,2.00,0,1),('Darius Slayton',1,0,0,0.00,0,0),('Darnell Mooney',1,0,0,0.00,0,0),('David Bell',1,0,0,0.00,0,0),('David Montgomery',1,16,67,4.20,1,3),('David Njoku',1,0,0,0.00,0,0),('Dawson Knox',1,0,0,0.00,0,0),('DeAndre Hopkins',1,0,0,0.00,0,0),('Deebo Samuel',1,1,2,2.00,0,0),('DeeJay Dallas',1,2,4,2.00,0,0),('Demario Douglas',2,0,0,0.00,0,0),('Deon Jackson',1,13,14,1.10,0,1),('Deonte Harty',1,0,0,0.00,0,0),('Derek Carr',1,3,4,1.30,0,0),('Derius Davis',1,0,0,0.00,0,0),('Derrick Henry',1,25,80,3.20,1,5),('Deshaun Watson',1,5,45,9.00,1,3),('Desmond Ridder',2,11,38,3.50,1,3),('DeVante Parker',1,0,0,0.00,0,0),('Devin Singletary',1,4,14,3.50,0,0),('DeVonta Smith',1,0,0,0.00,0,0),('Diontae Johnson',2,0,0,0.00,0,0),('DJ Chark',1,0,0,0.00,0,0),('Donald Parham',1,0,0,0.00,0,0),('Donovan Peoples-Jones',1,0,0,0.00,0,0),('Drake London',2,0,0,0.00,0,0),('Elijah Mitchell',1,11,42,3.80,0,2),('Elijah Moore',1,2,19,9.50,0,1),('Emari Demercado',1,1,-2,-2.00,0,0),('Evan Engram',1,0,0,0.00,0,0),('Evan Hull',1,1,1,1.00,0,0),('Ezekiel Elliott',2,12,42,3.50,0,4),('Gabriel Davis',1,0,0,0.00,0,0),('Gardner Minshew',1,0,0,0.00,0,0),('Gary Brightwell',1,1,5,5.00,0,0),('Geno Smith',1,1,6,6.00,0,0),('George Kittle',1,0,0,0.00,0,0),('George Pickens',2,0,0,0.00,0,0),('Gerald Everett',1,1,2,2.00,0,0),('Greg Dulcich',1,0,0,0.00,0,0),('Gunner Olszewski',1,0,0,0.00,0,0),('Gus Edwards',1,8,32,4.00,0,1),('Harrison Bryant',1,0,0,0.00,0,0),('Hayden Hurst',1,0,0,0.00,0,0),('Hunter Henry',2,0,0,0.00,0,0),('Irv Smith',1,0,0,0.00,0,0),('Isaiah Hodgins',1,0,0,0.00,0,0),('Isiah Pacheco',1,8,23,2.90,0,2),('J.K. Dobbins',1,8,22,2.80,1,1),('Ja\'Marr Chase',1,0,0,0.00,0,0),('Jahan Dotson',1,0,0,0.00,0,0),('Jahmyr Gibbs',1,7,17,2.40,0,1),('Jake Ferguson',1,0,0,0.00,0,0),('Jake Funk',1,2,10,5.00,0,0),('Jaleel McLaughlin',2,1,5,5.00,1,1),('Jalen Hurts',1,12,35,2.90,2,5),('Jalin Hyatt',1,0,0,0.00,0,0),('Jamal Agnew',1,0,0,0.00,0,0),('James Conner',1,23,106,4.60,1,7),('James Cook',1,17,123,7.20,0,3),('Jared Goff',1,0,0,0.00,0,0),('Jauan Jennings',1,0,0,0.00,0,0),('Jaxon Smith-Njigba',1,0,0,0.00,0,0),('Jerick McKinnon',1,0,0,0.00,0,0),('Jerome Ford',1,15,36,2.40,0,1),('Joe Burrow',1,1,5,5.00,0,0),('Joe Mixon',1,13,59,4.50,0,4),('John Metchie',1,0,0,0.00,0,0),('Jonathan Mingo',1,0,0,0.00,0,0),('Jonnu Smith',2,0,0,0.00,0,0),('Jordan Addison',1,0,0,0.00,0,0),('Jordan Akins',1,0,0,0.00,0,0),('Jordan Mason',1,3,11,3.70,0,1),('Josh Allen',1,3,7,2.30,0,2),('Josh Downs',1,0,0,0.00,0,0),('Josh Oliver',1,0,0,0.00,0,0),('Josh Palmer',1,0,0,0.00,0,0),('Josh Reynolds',1,0,0,0.00,0,0),('Joshua Dobbs',1,3,41,13.70,1,3),('Joshua Kelley',1,16,91,5.70,1,8),('JuJu Smith-Schuster',2,0,0,0.00,0,0),('Justice Hill',1,8,9,1.10,2,2),('Justin Fields',1,9,59,6.60,0,2),('Justin Herbert',1,5,17,3.40,1,4),('Justin Jefferson',1,0,0,0.00,0,0),('Justyn Ross',1,0,0,0.00,0,0),('Juwan Johnson',1,0,0,0.00,0,0),('K.J. Osborn',1,0,0,0.00,0,0),('Kalif Raymond',1,1,11,11.00,0,1),('Kayshon Boutte',1,0,0,0.00,0,0),('Keaontay Ingram',1,2,6,3.00,0,0),('Keenan Allen',1,2,6,3.00,0,1),('Keith Kirkwood',1,0,0,0.00,0,0),('Kendrick Bourne',2,0,0,0.00,0,0),('Kenny Pickett',2,5,-2,-0.40,0,0),('Khalil Herbert',1,9,27,3.00,0,1),('Khalil Shakir',1,0,0,0.00,0,0),('Khari Blasingame',1,0,0,0.00,0,0),('Kirk Cousins',1,3,7,2.30,0,1),('Kyle Allen',1,2,-2,-1.00,0,0),('Kyle Juszczyk',1,1,3,3.00,0,1),('Kyle Pitts',2,0,0,0.00,0,0),('Kylen Granson',1,0,0,0.00,0,0),('Lamar Jackson',1,6,38,6.30,0,3),('Latavius Murray',1,6,22,3.70,1,2),('Laviska Shenault',1,1,7,7.00,0,0),('Lawrence Cager',1,0,0,0.00,0,0),('Lil\'Jordan Humphrey',2,0,0,0.00,0,0),('Luke Schoonmaker',1,0,0,0.00,0,0),('Mac Jones',2,7,40,5.70,0,5),('Mack Hollins',2,0,0,0.00,0,0),('Marquise Brown',1,0,0,0.00,0,0),('Marquise Goodwin',1,0,0,0.00,0,0),('Marvin Mims',2,2,10,5.00,0,0),('Matt Breida',1,2,9,4.50,0,1),('Matthew Stafford',1,4,17,4.30,0,1),('Michael Burton',2,1,3,3.00,0,1),('Michael Carter',1,1,6,6.00,0,0),('Michael Gallup',1,0,0,0.00,0,0),('Michael Pittman',1,0,0,0.00,0,0),('Mike Evans',1,0,0,0.00,0,0),('Mike Gesicki',2,0,0,0.00,0,0),('Miles Boykin',2,0,0,0.00,0,0),('Miles Sanders',1,14,43,3.10,0,2),('Mo Alie-Cox',1,0,0,0.00,0,0),('Najee Harris',2,16,74,4.60,0,5),('Nick Chubb',1,18,106,5.90,0,7),('Nico Collins',1,0,0,0.00,0,0),('Noah Gray',1,0,0,0.00,0,0),('Odell Beckham',1,0,0,0.00,0,0),('Parris Campbell',1,0,0,0.00,0,0),('Pat Freiermuth',2,0,0,0.00,0,0),('Patrick Mahomes',1,6,45,7.50,0,3),('Peyton Hendershot',1,1,0,0.00,0,0),('Phillip Dorsett',1,0,0,0.00,0,0),('Puka Nacua',1,2,4,2.00,0,1),('Quentin Johnston',1,0,0,0.00,0,0),('Rakim Jarrett',1,0,0,0.00,0,0),('Randall Cobb',1,0,0,0.00,0,0),('Rashaad Penny',1,3,9,3.00,0,1),('Rashee Rice',1,1,-3,-3.00,0,0),('Rashid Shaheed',1,2,11,5.50,0,0),('Rashod Bateman',1,0,0,0.00,0,0),('Reggie Gilliam',1,0,0,0.00,0,0),('Richie James',1,0,0,0.00,0,0),('Rico Dowdle',1,7,26,3.70,0,1),('Rondale Moore',1,0,0,0.00,0,0),('Ronnie Bell',1,0,0,0.00,0,0),('Ronnie Rivers',1,0,0,0.00,0,0),('Roschon Johnson',1,5,20,4.00,1,3),('Russell Wilson',2,7,57,8.10,0,6),('Ryan Tannehill',1,1,12,12.00,1,1),('Sam Darnold',1,1,-1,-1.00,0,0),('Sam Howell',1,2,11,5.50,1,1),('Sam LaPorta',1,0,0,0.00,0,0),('Samaje Perine',2,9,45,5.00,0,3),('Saquon Barkley',1,12,51,4.30,0,2),('Skyy Moore',1,1,4,4.00,0,0),('Stefon Diggs',1,0,0,0.00,0,0),('Sterling Shepard',1,0,0,0.00,0,0),('T.J. Hockenson',1,0,0,0.00,0,0),('Tank Dell',1,0,0,0.00,0,0),('Taysom Hill',1,3,4,1.30,0,0),('Tee Higgins',1,0,0,0.00,0,0),('Terry McLaurin',1,0,0,0.00,0,0),('Tony Pollard',1,25,72,2.90,0,3),('Travis Etienne',1,12,40,3.30,0,0),('Trevor Lawrence',1,5,26,5.20,0,1),('Trey McBride',1,0,0,0.00,0,0),('Trey Palmer',1,0,0,0.00,0,0),('Treylon Burks',1,0,0,0.00,0,0),('Tutu Atwell',1,1,5,5.00,0,0),('Ty Chandler',1,3,0,0.00,0,0),('Ty Montgomery',2,1,7,7.00,0,0),('Tyler Allgeier',2,31,123,4.00,2,8),('Tyler Boyd',1,0,0,0.00,0,0),('Tyler Conklin',1,0,0,0.00,0,0),('Tyler Higbee',1,0,0,0.00,0,0),('Tyler Lockett',1,0,0,0.00,0,0),('Tyler Scott',1,0,0,0.00,0,0),('Van Jefferson',1,0,0,0.00,0,0),('Will Dissly',1,0,0,0.00,0,0),('Xavier Hutchinson',1,0,0,0.00,0,0),('Zach Charbonnet',1,3,11,3.70,0,0),('Zach Ertz',1,0,0,0.00,0,0),('Zach Pascal',1,0,0,0.00,0,0),('Zach Wilson',1,4,6,1.50,0,1),('Zay Flowers',1,2,9,4.50,0,0),('Zay Jones',1,0,0,0.00,0,0);
/*!40000 ALTER TABLE `rb_home_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rb_total_stats`
--

DROP TABLE IF EXISTS `rb_total_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rb_total_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Attempts` int DEFAULT '0',
  `Yards` int DEFAULT '0',
  `Yards_PerAttempt` decimal(4,2) DEFAULT '0.00',
  `Touchdowns` int DEFAULT '0',
  `FirstDown_Runs` int DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rb_total_stats`
--

LOCK TABLES `rb_total_stats` WRITE;
/*!40000 ALTER TABLE `rb_total_stats` DISABLE KEYS */;
INSERT INTO `rb_total_stats` VALUES ('A.J. Brown',2,0,0,0.00,0,0),('Aaron Jones',1,9,41,4.60,1,3),('Aaron Rodgers',1,0,0,0.00,0,0),('AJ Dillon',2,28,74,2.60,0,3),('Alec Ingold',2,0,0,0.00,0,0),('Alec Pierce',2,0,0,0.00,0,0),('Alexander Mattison',2,19,62,3.30,0,0),('Allen Lazard',1,0,0,0.00,0,0),('Allen Robinson',2,0,0,0.00,0,0),('Amari Cooper',2,0,0,0.00,0,0),('Ameer Abdullah',2,0,0,0.00,0,0),('Amon-Ra St. Brown',1,0,0,0.00,0,0),('Andrew Beck',1,2,2,1.00,0,0),('Andrew Ogletree',1,0,0,0.00,0,0),('Anthony McFarland',2,0,0,0.00,0,0),('Anthony Richardson',2,13,75,7.80,3,2),('Antoine Green',1,0,0,0.00,0,0),('Antonio Gibson',2,5,18,3.80,0,1),('Ashtyn Davis',1,1,4,4.00,0,1),('Austin Ekeler',1,16,117,7.30,1,0),('Austin Hooper',2,0,0,0.00,0,0),('Baker Mayfield',2,14,28,2.10,0,2),('Ben Skowronek',2,1,11,5.50,0,0),('Bijan Robinson',2,29,180,6.20,0,0),('Blake Bell',1,0,0,0.00,0,0),('Boston Scott',2,6,43,5.50,0,0),('Brandin Cooks',1,0,0,0.00,0,0),('Brandon Aiyuk',2,0,0,0.00,0,0),('Brandon Johnson',2,0,0,0.00,0,0),('Braxton Berrios',2,0,0,0.00,0,0),('Breece Hall',2,14,136,7.50,0,0),('Brevin Jordan',1,0,0,0.00,0,0),('Brian Robinson',2,37,146,4.00,2,8),('Brock Purdy',3,10,24,2.70,1,3),('Bryce Young',2,5,51,11.40,0,1),('Brycen Hopkins',1,0,0,0.00,0,0),('Byron Pringle',1,0,0,0.00,0,0),('C.J. Ham',1,0,0,0.00,0,0),('C.J. Stroud',2,7,21,2.60,0,1),('Cade Otton',2,0,0,0.00,0,0),('Calvin Austin',2,1,-2,-2.00,0,0),('Calvin Ridley',2,0,0,0.00,0,0),('Cam Akers',1,22,29,1.30,1,4),('CeeDee Lamb',2,0,0,0.00,0,0),('Charlie Kolar',1,0,0,0.00,0,0),('Chase Brown',1,1,2,2.00,0,0),('Chase Claypool',2,0,0,0.00,0,0),('Chase Edmonds',2,4,20,5.00,0,1),('Chigoziem Okonkwo',1,0,0,0.00,0,0),('Chris Evans',1,2,12,6.00,0,0),('Chris Godwin',2,0,0,0.00,0,0),('Chris Moore',2,0,0,0.00,0,0),('Chris Olave',1,0,0,0.00,0,0),('Chris Rodriguez',1,3,7,2.30,0,0),('Christian Kirk',2,0,0,0.00,0,0),('Christian McCaffrey',3,60,353,5.80,3,11),('Chuba Hubbard',2,11,76,7.40,0,6),('Clyde Edwards-Helaire',2,7,22,1.80,0,0),('Colby Parkinson',2,0,0,0.00,0,0),('Cole Kmet',2,1,0,0.00,0,0),('Connor Heyward',2,0,0,0.00,0,0),('Cooper Rush',1,0,0,0.00,0,0),('Craig Reynolds',1,3,7,2.30,0,0),('Curtis Samuel',2,2,19,9.50,0,1),('D.J. Moore',2,0,0,0.00,0,0),('D.K. Metcalf',2,0,0,0.00,0,0),('D\'Andre Swift',1,1,3,3.00,0,0),('D\'Ernest Johnson',2,2,4,2.00,0,0),('D\'Onta Foreman',1,5,16,3.20,0,0),('Dak Prescott',2,7,20,4.20,0,0),('Dallas Goedert',2,0,0,0.00,0,0),('Dalton Kincaid',2,0,0,0.00,0,0),('Dalton Schultz',2,0,0,0.00,0,0),('Dalvin Cook',2,17,40,2.20,0,0),('Dameon Pierce',2,26,69,2.80,0,0),('Damien Harris',2,8,36,3.80,1,0),('Daniel Bellinger',3,0,0,0.00,0,0),('Daniel Jones',3,24,107,5.00,1,6),('Dare Ogunbowale',1,2,4,2.00,0,0),('Darius Slayton',3,0,0,0.00,0,0),('Darnell Mooney',1,0,0,0.00,0,0),('Davante Adams',2,0,0,0.00,0,0),('David Bell',2,0,0,0.00,0,0),('David Montgomery',2,37,141,3.80,2,4),('David Njoku',2,0,0,0.00,0,0),('Dawson Knox',2,0,0,0.00,0,0),('DeAndre Carter',2,0,0,0.00,0,0),('DeAndre Hopkins',2,0,0,0.00,0,0),('Deebo Samuel',3,8,48,5.10,1,2),('DeeJay Dallas',2,3,7,2.50,0,0),('Demario Douglas',2,0,0,0.00,0,0),('Deon Jackson',1,13,14,1.10,0,0),('Deonte Harty',2,1,4,2.00,0,0),('Derek Carr',2,6,0,0.00,0,0),('Derius Davis',2,1,10,5.00,0,1),('Derrick Henry',2,40,143,3.70,1,4),('Deshaun Watson',2,11,67,6.40,1,2),('Desmond Ridder',2,11,38,3.50,1,0),('DeVante Parker',1,0,0,0.00,0,0),('Devin Duvernay',1,3,15,5.00,0,0),('Devin Singletary',2,11,29,2.80,0,0),('Devon Achane',1,1,5,5.00,0,0),('DeVonta Smith',2,0,0,0.00,0,0),('Diontae Johnson',2,0,0,0.00,0,0),('DJ Chark',1,0,0,0.00,0,0),('Donald Parham',2,0,0,0.00,0,0),('Donovan Peoples-Jones',2,0,0,0.00,0,0),('Donovan Smith',1,0,0,0.00,0,0),('Drake London',2,0,0,0.00,0,0),('Durham Smythe',2,0,0,0.00,0,0),('Dyami Brown',1,0,0,0.00,0,0),('Elijah Dotson',1,4,6,1.50,0,0),('Elijah Mitchell',2,16,52,2.90,0,0),('Elijah Moore',2,3,24,7.20,0,0),('Emari Demercado',1,1,-2,-2.00,0,0),('Erik Ezukanma',2,5,22,4.40,0,1),('Evan Engram',2,0,0,0.00,0,0),('Evan Hull',1,1,1,1.00,0,0),('Ezekiel Elliott',2,12,42,3.50,0,0),('Foster Moreau',1,0,0,0.00,0,0),('Gabriel Davis',2,0,0,0.00,0,0),('Gardner Minshew',2,2,3,0.80,0,0),('Gary Brightwell',3,5,10,2.50,0,0),('Geno Smith',2,4,26,6.40,0,0),('George Kittle',3,0,0,0.00,0,0),('George Pickens',2,0,0,0.00,0,0),('Gerald Everett',2,1,2,1.00,0,0),('Giovanni Ricci',1,0,0,0.00,0,0),('Greg Dulcich',1,0,0,0.00,0,0),('Gunner Olszewski',1,0,0,0.00,0,0),('Gus Edwards',2,18,94,5.10,1,6),('Harrison Bryant',2,0,0,0.00,0,0),('Hayden Hurst',2,0,0,0.00,0,0),('Hunter Henry',2,0,0,0.00,0,0),('Hunter Renfrow',2,0,0,0.00,0,0),('Irv Smith',2,0,0,0.00,0,0),('Isaiah Hodgins',3,0,0,0.00,0,0),('Isaiah Likely',1,0,0,0.00,0,0),('Isaiah McKenzie',1,0,0,0.00,0,0),('Isaiah Spiller',1,1,3,3.00,0,0),('Isiah Pacheco',2,20,93,4.40,0,4),('J.K. Dobbins',1,8,22,2.80,1,0),('Ja\'Marr Chase',2,1,2,1.00,0,0),('Jahan Dotson',2,0,0,0.00,0,0),('Jahmyr Gibbs',2,14,59,4.20,0,2),('Jake Bobo',1,0,0,0.00,0,0),('Jake Browning',1,1,-1,-1.00,0,0),('Jake Ferguson',2,0,0,0.00,0,0),('Jake Funk',1,2,10,5.00,0,0),('Jakobi Meyers',1,0,0,0.00,0,0),('Jaleel McLaughlin',2,1,5,5.00,1,0),('Jalen Hurts',2,21,72,3.50,2,2),('Jalen Reeves-Maybin',1,1,3,3.00,0,1),('Jalin Hyatt',3,0,0,0.00,0,0),('Jamal Agnew',2,2,-2,-0.50,0,0),('James Conner',2,37,168,4.50,1,3),('James Cook',2,29,169,5.50,0,5),('Jared Goff',2,5,-1,-0.10,0,1),('Jauan Jennings',3,0,0,0.00,0,0),('Jaxon Smith-Njigba',2,0,0,0.00,0,0),('Jayden Reed',2,1,-2,-2.00,0,0),('Jerick McKinnon',2,1,-2,-1.00,0,0),('Jerome Ford',2,31,142,4.50,0,3),('Jimmy Garoppolo',2,10,12,1.20,0,2),('Joe Burrow',2,2,4,2.00,0,0),('Joe Mixon',2,26,115,4.40,0,2),('John Bates',1,0,0,0.00,0,0),('John Metchie',1,0,0,0.00,0,0),('Jonathan Mingo',2,0,0,0.00,0,0),('Jonnu Smith',2,0,0,0.00,0,0),('Jordan Addison',2,0,0,0.00,0,0),('Jordan Akins',2,0,0,0.00,0,0),('Jordan Love',2,5,35,7.00,0,2),('Jordan Mason',1,3,11,3.70,0,0),('Josh Allen',2,9,43,4.20,0,3),('Josh Downs',2,0,0,0.00,0,0),('Josh Jacobs',2,28,46,1.60,0,3),('Josh Oliver',2,0,0,0.00,0,0),('Josh Palmer',2,0,0,0.00,0,0),('Josh Reynolds',2,0,0,0.00,0,0),('Joshua Dobbs',2,6,38,6.40,1,0),('Joshua Kelley',2,29,130,4.40,1,3),('Josiah Deguara',2,0,0,0.00,0,0),('JuJu Smith-Schuster',2,0,0,0.00,0,0),('Justice Hill',2,19,50,2.40,2,2),('Justin Fields',2,13,62,3.70,1,1),('Justin Herbert',2,6,17,1.70,1,0),('Justin Jefferson',2,0,0,0.00,0,0),('Justyn Ross',1,0,0,0.00,0,0),('Juwan Johnson',2,0,0,0.00,0,0),('K.J. Osborn',2,0,0,0.00,0,0),('Kalif Raymond',2,1,11,5.50,0,0),('Kayshon Boutte',1,0,0,0.00,0,0),('Keaontay Ingram',2,7,2,1.10,0,0),('Keenan Allen',2,2,6,1.50,0,0),('Keith Kirkwood',2,0,0,0.00,0,0),('Kendrick Bourne',2,0,0,0.00,0,0),('Kenneth Gainwell',1,14,54,3.90,0,4),('Kenny Pickett',2,5,-2,-0.40,0,0),('Khalil Herbert',2,16,62,4.00,0,3),('Khalil Shakir',1,0,0,0.00,0,0),('Khari Blasingame',1,0,0,0.00,0,0),('Kirk Cousins',2,3,7,1.20,0,0),('Ko Kieft',1,0,0,0.00,0,0),('Kyle Allen',1,2,-2,-1.00,0,0),('Kyle Juszczyk',1,1,3,3.00,0,0),('Kyle Pitts',2,0,0,0.00,0,0),('Kylen Granson',2,0,0,0.00,0,0),('Lamar Jackson',2,18,92,5.40,0,3),('Latavius Murray',2,8,30,3.80,1,0),('Laviska Shenault',2,3,12,4.80,0,0),('Lawrence Cager',1,0,0,0.00,0,0),('Lil\'Jordan Humphrey',2,0,0,0.00,0,0),('Luke Musgrave',2,0,0,0.00,0,0),('Luke Schoonmaker',1,0,0,0.00,0,0),('Mac Jones',2,7,40,5.70,0,0),('Mack Hollins',2,0,0,0.00,0,0),('Malik Heath',2,0,0,0.00,0,0),('Mark Andrews',1,0,0,0.00,0,0),('Marquise Brown',2,1,29,14.50,0,1),('Marquise Goodwin',2,0,0,0.00,0,0),('Marvin Jones',1,0,0,0.00,0,0),('Marvin Mims',2,2,10,5.00,0,0),('Matt Breida',3,7,31,4.40,1,1),('Matthew Stafford',2,7,28,4.00,0,1),('Mecole Hardman',1,0,0,0.00,0,0),('Michael Burton',2,1,3,3.00,0,0),('Michael Carter',2,3,14,5.00,0,1),('Michael Gallup',2,0,0,0.00,0,0),('Michael Mayer',2,0,0,0.00,0,0),('Michael Pittman',2,0,0,0.00,0,0),('Mike Boone',1,0,0,0.00,0,0),('Mike Evans',2,0,0,0.00,0,0),('Mike Gesicki',2,0,0,0.00,0,0),('Miles Boykin',2,0,0,0.00,0,0),('Miles Sanders',2,32,115,3.60,0,2),('Mo Alie-Cox',2,0,0,0.00,0,0),('Najee Harris',2,16,74,4.60,0,0),('Nelson Agholor',1,0,0,0.00,0,0),('Nick Chubb',2,28,170,6.20,0,1),('Nico Collins',2,0,0,0.00,0,0),('Noah Brown',1,1,-1,-1.00,0,0),('Noah Fant',1,0,0,0.00,0,0),('Noah Gray',2,0,0,0.00,0,0),('Odell Beckham',2,0,0,0.00,0,0),('Parris Campbell',3,0,0,0.00,0,0),('Pat Freiermuth',2,0,0,0.00,0,0),('Patrick Mahomes',2,13,75,5.90,0,3),('Patrick Taylor',2,6,23,3.80,0,1),('Peyton Hendershot',2,1,0,0.00,0,0),('Phillip Dorsett',1,0,0,0.00,0,0),('Pierre Strong',1,2,1,0.50,1,1),('Puka Nacua',2,2,4,1.00,0,0),('Quentin Johnston',2,0,0,0.00,0,0),('Raheem Mostert',2,28,158,5.60,3,8),('Rakim Jarrett',2,1,0,0.00,0,0),('Randall Cobb',2,0,0,0.00,0,0),('Rashaad Penny',1,3,9,3.00,0,0),('Rashee Rice',2,1,-3,-1.50,0,0),('Rashid Shaheed',2,2,11,2.80,0,0),('Rashod Bateman',2,0,0,0.00,0,0),('Reggie Gilliam',1,0,0,0.00,0,0),('Richie James',2,0,0,0.00,0,0),('Rico Dowdle',2,13,50,3.80,0,1),('River Cracraft',2,0,0,0.00,0,0),('Romeo Doubs',2,0,0,0.00,0,0),('Rondale Moore',2,2,12,3.00,0,0),('Ronnie Bell',1,0,0,0.00,0,0),('Ronnie Rivers',1,0,0,0.00,0,0),('Roschon Johnson',2,9,52,6.00,1,1),('Russell Wilson',2,7,57,8.10,0,0),('Ryan Tannehill',2,4,17,6.80,1,0),('Salvon Ahmed',2,6,24,4.00,0,1),('Sam Darnold',2,3,-3,-1.00,0,0),('Sam Howell',2,4,24,6.00,1,1),('Sam LaPorta',2,0,0,0.00,0,0),('Samaje Perine',2,9,45,5.00,0,0),('Saquon Barkley',2,29,114,4.00,1,5),('Sean Clifford',1,1,0,0.00,0,0),('Skyy Moore',2,1,4,2.00,0,0),('Stefon Diggs',2,0,0,0.00,0,0),('Sterling Shepard',3,0,0,0.00,0,0),('Stone Smartt',1,0,0,0.00,0,0),('T.J. Hockenson',2,0,0,0.00,0,0),('Tank Bigsby',1,7,13,1.90,1,3),('Tank Dell',2,0,0,0.00,0,0),('Taysom Hill',2,12,79,4.80,0,5),('Teagan Quitoriano',1,0,0,0.00,0,0),('Tee Higgins',2,0,0,0.00,0,0),('Terrace Marshall',1,0,0,0.00,0,0),('Terry McLaurin',2,0,0,0.00,0,0),('Tony Jones',1,12,34,2.80,2,4),('Tony Pollard',2,39,142,4.00,2,5),('Travis Etienne',2,30,117,3.80,1,4),('Travis Kelce',1,0,0,0.00,0,0),('Trevor Lawrence',2,12,47,4.10,0,2),('Trey McBride',2,0,0,0.00,0,0),('Trey Palmer',2,0,0,0.00,0,0),('Treylon Burks',2,1,9,4.50,0,0),('Tua Tagovailoa',2,9,8,0.90,0,1),('Tutu Atwell',2,1,5,2.50,0,0),('Ty Chandler',2,4,0,0.00,0,0),('Ty Montgomery',2,1,7,7.00,0,0),('Tyjae Spears',1,3,27,9.00,0,1),('Tyler Allgeier',2,31,123,4.00,2,0),('Tyler Boyd',2,0,0,0.00,0,0),('Tyler Conklin',2,0,0,0.00,0,0),('Tyler Higbee',2,0,0,0.00,0,0),('Tyler Lockett',2,0,0,0.00,0,0),('Tyler Scott',1,0,0,0.00,0,0),('Tyreek Hill',2,0,0,0.00,0,0),('Van Jefferson',2,0,0,0.00,0,0),('Velus Jones',1,1,-3,-3.00,0,0),('Wan\'Dale Robinson',1,0,0,0.00,0,0),('Will Dissly',2,0,0,0.00,0,0),('Will Mallory',1,0,0,0.00,0,0),('Xavier Hutchinson',2,0,0,0.00,0,0),('Zach Charbonnet',2,7,27,3.80,0,2),('Zach Ertz',2,0,0,0.00,0,0),('Zach Pascal',2,0,0,0.00,0,0),('Zach Wilson',2,9,42,4.40,0,2),('Zack Moss',1,18,88,4.90,1,4),('Zay Flowers',2,3,15,5.20,0,0),('Zay Jones',2,0,0,0.00,0,0);
/*!40000 ALTER TABLE `rb_total_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saints_defense_roster`
--

DROP TABLE IF EXISTS `saints_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saints_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saints_defense_roster`
--

LOCK TABLES `saints_defense_roster` WRITE;
/*!40000 ALTER TABLE `saints_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `saints_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saints_offense_roster`
--

DROP TABLE IF EXISTS `saints_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saints_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saints_offense_roster`
--

LOCK TABLES `saints_offense_roster` WRITE;
/*!40000 ALTER TABLE `saints_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `saints_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanfrancisco_defense_roster`
--

DROP TABLE IF EXISTS `sanfrancisco_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanfrancisco_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanfrancisco_defense_roster`
--

LOCK TABLES `sanfrancisco_defense_roster` WRITE;
/*!40000 ALTER TABLE `sanfrancisco_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanfrancisco_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanfrancisco_offense_roster`
--

DROP TABLE IF EXISTS `sanfrancisco_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanfrancisco_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanfrancisco_offense_roster`
--

LOCK TABLES `sanfrancisco_offense_roster` WRITE;
/*!40000 ALTER TABLE `sanfrancisco_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanfrancisco_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seahawks_defense_roster`
--

DROP TABLE IF EXISTS `seahawks_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seahawks_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seahawks_defense_roster`
--

LOCK TABLES `seahawks_defense_roster` WRITE;
/*!40000 ALTER TABLE `seahawks_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `seahawks_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seahawks_offense_roster`
--

DROP TABLE IF EXISTS `seahawks_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seahawks_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seahawks_offense_roster`
--

LOCK TABLES `seahawks_offense_roster` WRITE;
/*!40000 ALTER TABLE `seahawks_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `seahawks_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steelers_defense_roster`
--

DROP TABLE IF EXISTS `steelers_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steelers_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steelers_defense_roster`
--

LOCK TABLES `steelers_defense_roster` WRITE;
/*!40000 ALTER TABLE `steelers_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `steelers_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steelers_offense_roster`
--

DROP TABLE IF EXISTS `steelers_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steelers_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steelers_offense_roster`
--

LOCK TABLES `steelers_offense_roster` WRITE;
/*!40000 ALTER TABLE `steelers_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `steelers_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_total_defense`
--

DROP TABLE IF EXISTS `team_total_defense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_total_defense` (
  `Name` varchar(45) NOT NULL,
  `yards_PerGame` decimal(5,1) DEFAULT '0.0',
  `plays_PerGame` decimal(5,1) DEFAULT '0.0',
  `yards_PerPlay` decimal(5,1) DEFAULT '0.0',
  `firstdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `thirddowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `thirddownConversions_PerGame` decimal(5,1) DEFAULT '0.0',
  `thirddownConversion_Perc` decimal(5,2) DEFAULT '0.00',
  `fourthdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `fourthdownConversions_PerGame` decimal(5,1) DEFAULT '0.0',
  `fourthdownConversion_Perc` decimal(5,2) DEFAULT '0.00',
  `avgTimePossession` varchar(45) DEFAULT '',
  `pointsAllowed_PerGame` decimal(5,1) DEFAULT '0.0',
  `touchdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScoring_Attempts_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScores_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScoring_Perc` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_total_defense`
--

LOCK TABLES `team_total_defense` WRITE;
/*!40000 ALTER TABLE `team_total_defense` DISABLE KEYS */;
INSERT INTO `team_total_defense` VALUES ('Arizona',367.7,69.0,5.3,24.3,13.3,6.7,50.00,0.7,0.3,50.00,'31:46',22.3,2.3,5.0,5.0,5.00),('Atlanta',287.7,61.0,4.7,18.3,12.3,4.0,32.43,1.0,0.0,0.00,'30:27',18.0,2.0,3.0,3.0,3.00),('Baltimore',292.3,71.0,4.1,18.7,18.3,8.3,45.45,2.0,0.7,33.33,'28:38',18.3,1.3,2.7,2.7,2.70),('Buffalo',253.0,47.7,5.3,13.7,9.7,3.0,31.03,0.7,0.3,50.00,'24:22',11.7,1.0,2.3,2.3,2.30),('Carolina',329.0,64.3,5.1,21.0,13.0,4.0,30.77,0.3,0.3,100.00,'29:32',27.0,2.7,4.3,4.3,4.30),('Chicago',407.3,67.7,6.0,21.7,15.0,9.0,60.00,1.0,0.7,66.67,'33:48',35.3,4.3,4.0,4.0,4.00),('Cincinnati',352.3,64.7,5.4,20.7,13.0,4.7,35.90,0.3,0.3,100.00,'30:58',22.3,2.0,3.7,3.7,3.70),('Cleveland',163.7,50.7,3.2,7.0,13.7,2.7,19.51,0.7,0.3,50.00,'23:24',10.7,1.0,0.7,0.7,0.70),('Dallas',262.0,54.7,4.8,15.3,12.0,3.7,30.56,2.0,1.3,66.67,'25:33',12.7,1.3,1.7,1.7,1.70),('Denver',458.3,64.0,7.2,26.0,10.0,4.3,43.33,1.7,1.0,60.00,'31:39',40.7,5.3,4.3,4.3,4.30),('Detroit',280.5,61.8,4.5,19.0,12.5,4.3,34.00,1.0,0.5,50.00,'26:24',20.8,2.3,3.3,3.3,3.30),('Green Bay',352.5,70.3,5.0,22.3,14.8,5.0,33.90,2.3,1.8,77.78,'33:05',24.0,2.5,3.8,3.8,3.80),('Houston',340.7,61.0,5.6,19.7,13.3,6.3,47.50,0.3,0.0,0.00,'29:20',24.3,3.0,3.7,3.7,3.70),('Indianapolis',365.0,73.3,5.0,21.3,15.7,6.0,38.30,2.0,1.0,50.00,'32:54',23.3,2.7,3.0,3.0,3.00),('Jacksonville',348.3,63.0,5.5,17.3,13.3,5.0,37.50,2.3,1.0,42.86,'28:43',25.0,3.0,4.0,4.0,4.00),('Kansas City',280.7,61.7,4.6,16.0,13.0,4.0,30.77,2.3,0.7,28.57,'28:12',13.3,1.3,2.7,2.7,2.70),('LA Chargers',450.7,68.7,6.6,27.0,12.0,4.7,38.89,1.7,1.0,60.00,'30:57',29.0,3.3,4.3,4.3,4.30),('LA Rams',284.7,58.0,4.9,17.7,11.7,3.0,25.71,0.3,0.3,100.00,'27:48',20.7,1.7,2.7,2.7,2.70),('Las Vegas',347.7,64.0,5.4,22.7,13.0,6.0,46.15,1.3,1.0,75.00,'34:05',25.7,3.0,3.7,3.7,3.70),('Miami',361.3,68.7,5.3,23.0,14.0,6.3,45.24,1.3,0.3,25.00,'29:40',23.7,2.7,3.7,3.7,3.70),('Minnesota',382.3,69.0,5.5,21.3,14.0,5.7,40.48,1.3,1.0,75.00,'32:18',27.3,3.3,2.7,2.7,2.70),('New England',270.3,61.0,4.4,17.0,12.3,3.3,27.03,1.0,0.3,33.33,'29:45',19.7,2.0,2.0,2.0,2.00),('New Orleans',288.0,62.0,4.6,17.0,14.7,4.7,31.82,1.3,0.7,50.00,'30:22',16.7,1.0,3.0,3.0,3.00),('NY Giants',361.7,64.3,5.6,22.7,13.0,6.3,48.72,0.7,0.3,50.00,'32:06',32.7,3.7,4.0,4.0,4.00),('NY Jets',351.3,73.3,4.8,20.7,16.7,7.3,44.00,0.0,0.0,0.00,'35:25',20.3,1.3,2.7,2.7,2.70),('Philadelphia',310.0,59.0,5.3,18.3,11.7,5.3,45.71,1.7,0.7,40.00,'23:36',19.7,2.7,3.3,3.3,3.30),('Pittsburgh',387.0,71.3,5.4,20.3,14.0,5.0,35.71,1.7,0.7,40.00,'34:16',23.3,2.3,2.7,2.7,2.70),('San Francisco',258.3,61.7,4.2,17.7,13.7,5.0,36.59,1.7,0.7,40.00,'25:32',14.0,1.3,2.0,2.0,2.00),('Seattle',407.3,72.3,5.6,25.0,15.7,9.0,57.45,1.7,0.7,40.00,'33:14',29.3,3.3,2.3,2.3,2.30),('Tampa Bay',359.0,64.0,5.6,19.7,14.3,7.3,51.16,1.0,0.7,66.67,'30:46',19.7,2.0,3.0,3.0,3.00),('Tennessee',344.7,65.3,5.3,19.0,14.3,5.0,34.88,1.3,1.3,100.00,'31:36',22.3,2.0,3.7,3.7,3.70),('Washington',331.7,61.7,5.4,18.0,13.7,5.7,41.46,1.3,0.7,50.00,'29:50',28.7,3.0,3.3,3.3,3.30);
/*!40000 ALTER TABLE `team_total_defense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_total_offense`
--

DROP TABLE IF EXISTS `team_total_offense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_total_offense` (
  `Name` varchar(45) NOT NULL,
  `yards_PerGame` decimal(5,1) DEFAULT '0.0',
  `plays_PerGame` decimal(5,1) DEFAULT '0.0',
  `yards_PerPlay` decimal(5,1) DEFAULT '0.0',
  `firstdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `thirddowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `thirddownConversions_PerGame` decimal(5,1) DEFAULT '0.0',
  `forthdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `forthdownConversions_PerGame` decimal(5,1) DEFAULT '0.0',
  `avgTimePossession` varchar(45) DEFAULT '',
  `points_PerGame` decimal(5,1) DEFAULT '0.0',
  `avgScoreMargin` varchar(45) DEFAULT '',
  `touchdowns_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScoring_Attempts_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScores_PerGame` decimal(5,1) DEFAULT '0.0',
  `redzoneScoring_Perc` decimal(5,1) DEFAULT '0.0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_total_offense`
--

LOCK TABLES `team_total_offense` WRITE;
/*!40000 ALTER TABLE `team_total_offense` DISABLE KEYS */;
INSERT INTO `team_total_offense` VALUES ('Arizona',329.7,57.0,5.8,19.0,11.3,4.3,0.3,0.0,'28:13',24.0,'+1.7',2.3,2.3,1.3,57.1),('Atlanta',283.3,63.7,4.5,18.7,13.0,4.0,1.7,1.0,'29:32',18.3,'+0.3',1.7,3.0,1.7,55.6),('Baltimore',348.0,66.7,5.2,21.3,15.0,7.7,0.3,0.0,'31:22',23.7,'+5.3',2.7,3.7,2.7,72.7),('Buffalo',383.3,69.0,5.6,22.7,13.7,7.0,1.7,1.0,'35:37',30.3,'+18.7',3.3,4.3,2.7,61.5),('Carolina',299.3,67.7,4.4,19.0,15.7,6.3,1.3,0.3,'30:28',18.0,'-9.0',1.7,2.3,1.3,57.1),('Chicago',250.0,57.3,4.4,15.7,12.7,4.3,1.3,0.7,'26:11',15.7,'-19.7',1.7,1.7,1.0,60.0),('Cincinnati',244.3,61.7,4.0,14.7,15.7,5.7,1.0,0.7,'29:02',15.3,'-7.0',1.3,1.7,1.0,60.0),('Cleveland',366.3,73.3,5.0,21.3,14.3,5.0,1.0,0.3,'36:35',24.3,'+13.7',2.3,2.7,2.0,75.0),('Dallas',354.3,71.0,5.0,23.3,15.7,8.0,1.0,0.3,'34:26',28.7,'+16.0',2.7,5.0,2.0,40.0),('Denver',340.7,59.7,5.7,19.7,11.7,4.0,1.0,0.7,'28:20',23.0,'-17.7',2.7,3.7,1.7,45.5),('Detroit',381.3,66.0,5.8,20.7,13.3,5.0,2.0,0.7,'32:07',24.0,'+3.0',3.0,3.0,1.7,55.6),('Green Bay',297.7,59.3,5.0,17.7,14.3,6.7,2.0,0.7,'28:32',26.7,'+6.0',3.3,3.0,2.3,77.8),('Houston',341.0,69.0,4.9,19.0,17.3,8.3,2.0,1.0,'30:40',22.0,'-2.3',2.0,3.7,1.0,27.3),('Indianapolis',320.0,69.7,4.6,18.7,15.3,5.3,2.0,0.3,'27:06',24.7,'+1.3',2.7,3.0,2.0,66.7),('Jacksonville',339.0,67.3,5.0,20.0,12.3,3.7,2.0,0.3,'31:17',19.0,'-6.0',2.0,2.7,1.3,50.0),('Kansas City',390.3,67.0,5.8,22.3,13.7,6.3,1.0,0.7,'31:48',26.0,'+12.7',3.0,4.0,3.0,75.0),('LA Chargers',416.7,68.3,6.1,24.3,13.3,5.3,2.0,1.3,'29:03',28.7,'-0.3',3.3,4.0,2.7,66.7),('LA Rams',368.0,69.3,5.3,23.3,14.0,6.3,1.3,1.0,'32:11',23.0,'+2.3',2.0,3.3,2.0,60.0),('Las Vegas',287.7,53.7,5.4,18.0,10.3,4.0,1.0,0.7,'25:55',15.0,'-10.7',1.7,2.7,1.3,50.0),('Miami',550.3,65.7,8.4,27.3,9.3,4.3,1.3,0.7,'30:19',43.3,'+19.7',5.7,4.7,3.7,78.6),('Minnesota',406.0,65.3,6.2,22.0,12.7,5.3,1.3,1.0,'27:42',23.0,'-4.3',3.0,3.3,1.7,50.0),('New England',342.7,72.7,4.7,21.3,16.3,6.7,2.0,0.7,'30:15',17.3,'-2.3',2.0,2.3,1.7,71.4),('New Orleans',314.7,66.0,4.8,17.7,15.3,6.0,0.3,0.3,'29:38',17.7,'+1.0',1.7,3.3,1.3,40.0),('NY Giants',253.3,59.3,4.3,16.7,13.3,5.0,2.0,1.3,'27:53',14.3,'-18.3',1.7,2.7,1.7,62.5),('NY Jets',225.0,53.3,4.2,12.3,12.3,2.7,1.3,1.0,'24:34',14.0,'-6.3',1.3,1.7,0.7,40.0),('Philadelphia',384.3,71.3,5.4,22.7,14.3,6.7,1.7,1.0,'36:23',28.0,'+8.3',2.7,3.7,1.7,45.5),('Pittsburgh',275.7,58.0,4.8,13.7,14.7,5.0,1.0,0.3,'25:44',18.7,'-4.7',2.0,1.0,0.7,66.7),('San Francisco',399.0,66.0,6.0,23.0,12.7,5.7,0.3,0.3,'34:27',30.0,'+16.0',3.0,4.3,2.3,53.9),('Seattle',332.7,61.3,5.4,22.7,11.0,3.3,0.7,0.7,'26:45',29.0,'-0.3',3.0,4.3,2.7,61.5),('Tampa Bay',284.3,60.0,4.7,15.7,14.0,6.3,0.7,0.7,'29:13',19.3,'-0.3',2.0,2.7,1.0,37.5),('Tennessee',240.0,55.7,4.3,14.7,12.3,3.3,0.7,0.3,'28:23',15.0,'-7.3',1.0,3.0,1.0,33.3),('Washington',288.7,60.7,4.8,20.7,10.3,2.7,0.7,0.3,'30:10',19.3,'-9.3',2.0,3.3,1.7,50.0);
/*!40000 ALTER TABLE `team_total_offense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texans_defense_roster`
--

DROP TABLE IF EXISTS `texans_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texans_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texans_defense_roster`
--

LOCK TABLES `texans_defense_roster` WRITE;
/*!40000 ALTER TABLE `texans_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `texans_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `texans_offense_roster`
--

DROP TABLE IF EXISTS `texans_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texans_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texans_offense_roster`
--

LOCK TABLES `texans_offense_roster` WRITE;
/*!40000 ALTER TABLE `texans_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `texans_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titans_defense_roster`
--

DROP TABLE IF EXISTS `titans_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titans_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titans_defense_roster`
--

LOCK TABLES `titans_defense_roster` WRITE;
/*!40000 ALTER TABLE `titans_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `titans_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titans_offense_roster`
--

DROP TABLE IF EXISTS `titans_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titans_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titans_offense_roster`
--

LOCK TABLES `titans_offense_roster` WRITE;
/*!40000 ALTER TABLE `titans_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `titans_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vikings_defense_roster`
--

DROP TABLE IF EXISTS `vikings_defense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vikings_defense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vikings_defense_roster`
--

LOCK TABLES `vikings_defense_roster` WRITE;
/*!40000 ALTER TABLE `vikings_defense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `vikings_defense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vikings_offense_roster`
--

DROP TABLE IF EXISTS `vikings_offense_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vikings_offense_roster` (
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vikings_offense_roster`
--

LOCK TABLES `vikings_offense_roster` WRITE;
/*!40000 ALTER TABLE `vikings_offense_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `vikings_offense_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wr_away_stats`
--

DROP TABLE IF EXISTS `wr_away_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wr_away_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Yards` decimal(5,1) DEFAULT '0.0',
  `Yards_PerReception` decimal(5,1) DEFAULT '0.0',
  `Yards_PerTarget` decimal(5,1) DEFAULT '0.0',
  `Targets` int DEFAULT '0',
  `Touchdowns` int DEFAULT '0',
  `Catch_Perc` decimal(5,1) DEFAULT '0.0',
  `Catches` int DEFAULT '0',
  `FirstDown_Catches` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wr_away_stats`
--

LOCK TABLES `wr_away_stats` WRITE;
/*!40000 ALTER TABLE `wr_away_stats` DISABLE KEYS */;
INSERT INTO `wr_away_stats` VALUES ('A.J. Brown',1,79.0,11.3,7.9,10,0,70.0,7,4),('Aaron Jones',1,86.0,43.0,21.5,4,1,50.0,2,2),('AJ Dillon',2,25.0,8.3,6.3,4,0,75.0,3,1),('Alec Ingold',2,34.0,17.0,17.0,2,0,100.0,2,2),('Alec Pierce',1,28.0,14.0,14.0,2,0,100.0,2,1),('Alexander Mattison',1,11.0,3.7,1.8,6,0,50.0,3,1),('Amari Cooper',1,90.0,12.9,9.0,10,0,70.0,7,6),('Ameer Abdullah',2,5.0,5.0,1.3,4,0,25.0,1,0),('Amon-Ra St. Brown',1,71.0,11.8,7.9,9,1,66.7,6,4),('Anthony Richardson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Antonio Gibson',1,44.0,14.7,14.7,3,0,100.0,3,1),('Ashtyn Davis',1,0.0,0.0,0.0,0,0,0.0,0,0),('Austin Hooper',2,40.0,13.3,13.3,3,0,100.0,3,2),('Baker Mayfield',1,0.0,0.0,0.0,0,0,0.0,0,0),('Ben Skowronek',1,0.0,0.0,0.0,2,0,0.0,0,0),('Boston Scott',1,7.0,7.0,7.0,1,0,100.0,1,0),('Brandin Cooks',1,22.0,11.0,5.5,4,0,50.0,2,2),('Brandon Aiyuk',2,172.0,15.6,12.3,14,2,78.6,11,11),('Braxton Berrios',2,70.0,14.0,8.8,8,0,62.5,5,5),('Breece Hall',1,0.0,0.0,0.0,2,0,0.0,0,0),('Brian Robinson',1,42.0,21.0,14.0,3,0,66.7,2,2),('Brock Purdy',2,0.0,0.0,0.0,0,0,0.0,0,0),('Bryce Young',1,0.0,0.0,0.0,0,0,0.0,0,0),('Brycen Hopkins',1,21.0,21.0,10.5,2,0,50.0,1,1),('Byron Pringle',1,4.0,4.0,4.0,1,0,100.0,1,0),('C.J. Stroud',1,0.0,0.0,0.0,1,0,100.0,1,0),('Cade Otton',1,19.0,9.5,6.3,3,0,66.7,2,1),('Calvin Ridley',1,101.0,12.6,9.2,11,1,72.7,8,4),('Cam Akers',1,0.0,0.0,0.0,0,0,0.0,0,0),('CeeDee Lamb',1,77.0,19.3,19.3,4,0,100.0,4,3),('Chase Claypool',1,36.0,12.0,4.5,8,1,37.5,3,2),('Chase Edmonds',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chris Evans',1,-1.0,-1.0,-1.0,1,0,100.0,1,0),('Chris Godwin',1,51.0,10.2,8.5,6,0,83.3,5,4),('Chris Moore',1,0.0,0.0,0.0,1,0,0.0,0,0),('Chris Olave',1,86.0,14.3,7.8,11,0,54.5,6,3),('Christian Kirk',1,9.0,9.0,3.0,3,0,33.3,1,0),('Christian McCaffrey',2,36.0,6.0,4.5,8,0,75.0,6,1),('Chuba Hubbard',1,9.0,4.5,4.5,2,0,100.0,2,0),('Clyde Edwards-Helaire',1,17.0,8.5,8.5,2,0,100.0,2,1),('Colby Parkinson',1,41.0,20.5,13.7,3,0,66.7,2,2),('Cole Kmet',1,38.0,9.5,6.3,6,0,66.7,4,2),('Cooper Rush',1,0.0,0.0,0.0,0,0,0.0,0,0),('Curtis Samuel',1,19.0,6.3,6.3,3,0,100.0,3,1),('D.J. Moore',1,104.0,17.3,14.9,7,0,85.7,6,4),('D.K. Metcalf',1,75.0,12.5,12.5,6,0,100.0,6,4),('D\'Andre Swift',1,0.0,0.0,0.0,2,0,50.0,1,0),('D\'Ernest Johnson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Dak Prescott',1,0.0,0.0,0.0,0,0,0.0,0,0),('Dallas Goedert',1,0.0,0.0,0.0,1,0,0.0,0,0),('Dalton Kincaid',1,26.0,6.5,6.5,4,0,100.0,4,0),('Dalton Schultz',1,4.0,2.0,1.0,4,0,50.0,2,0),('Dalvin Cook',1,5.0,5.0,5.0,1,0,100.0,1,0),('Dameon Pierce',1,9.0,4.5,3.0,3,0,66.7,2,0),('Damien Harris',1,16.0,8.0,8.0,2,0,100.0,2,0),('Daniel Bellinger',2,8.0,8.0,8.0,1,0,100.0,1,0),('Daniel Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Darius Slayton',2,94.0,15.7,7.8,12,0,50.0,6,5),('Davante Adams',2,150.0,12.5,8.8,17,1,70.6,12,9),('David Bell',1,27.0,9.0,9.0,3,0,100.0,3,2),('David Montgomery',1,0.0,0.0,0.0,0,0,0.0,0,0),('David Njoku',1,48.0,12.0,12.0,4,0,100.0,4,1),('Dawson Knox',1,25.0,8.3,6.3,4,0,75.0,3,1),('DeAndre Carter',2,5.0,5.0,2.5,2,0,50.0,1,0),('DeAndre Hopkins',1,65.0,9.3,5.0,13,0,53.8,7,3),('Deebo Samuel',2,118.0,10.7,7.4,16,0,68.8,11,6),('DeeJay Dallas',1,0.0,0.0,0.0,0,0,0.0,0,0),('Deonte Harty',1,9.0,3.0,2.3,4,0,75.0,3,1),('Derek Carr',1,0.0,0.0,0.0,0,0,0.0,0,0),('Derius Davis',1,0.0,0.0,0.0,0,0,0.0,0,0),('Derrick Henry',1,56.0,28.0,18.7,3,0,66.7,2,1),('Deshaun Watson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Devin Duvernay',1,0.0,0.0,0.0,3,0,0.0,0,0),('Devin Singletary',1,0.0,0.0,0.0,0,0,0.0,0,0),('Devon Achane',1,4.0,4.0,4.0,1,0,100.0,1,0),('DeVonta Smith',1,47.0,6.7,4.7,10,1,70.0,7,3),('Donald Parham',1,7.0,7.0,3.5,2,0,50.0,1,1),('Donovan Peoples-Jones',1,7.0,7.0,1.8,4,0,25.0,1,0),('Donovan Smith',1,0.0,0.0,0.0,1,0,100.0,1,0),('Durham Smythe',2,67.0,11.2,6.7,10,0,60.0,6,4),('Dyami Brown',1,25.0,8.3,8.3,3,0,100.0,3,0),('Elijah Dotson',1,13.0,6.5,6.5,2,0,100.0,2,0),('Elijah Mitchell',1,0.0,0.0,0.0,1,0,0.0,0,0),('Elijah Moore',1,36.0,12.0,4.0,9,0,33.3,3,2),('Erik Ezukanma',2,0.0,0.0,0.0,1,0,0.0,0,0),('Evan Engram',1,49.0,9.8,9.8,5,0,100.0,5,2),('Foster Moreau',1,20.0,10.0,10.0,2,0,100.0,2,1),('Gabriel Davis',1,32.0,16.0,8.0,4,0,50.0,2,2),('Gardner Minshew',1,0.0,0.0,0.0,0,0,0.0,0,0),('Gary Brightwell',2,31.0,15.5,10.3,3,0,66.7,2,2),('Geno Smith',1,0.0,0.0,0.0,0,0,0.0,0,0),('George Kittle',2,49.0,8.2,5.4,9,0,66.7,6,4),('Gerald Everett',1,47.0,15.7,15.7,3,0,100.0,3,2),('Giovanni Ricci',1,2.0,2.0,2.0,1,0,100.0,1,0),('Gus Edwards',1,0.0,0.0,0.0,0,0,0.0,0,0),('Harrison Bryant',1,0.0,0.0,0.0,2,0,0.0,0,0),('Hayden Hurst',1,41.0,8.2,5.9,7,1,71.4,5,3),('Hunter Renfrow',2,23.0,23.0,23.0,1,0,100.0,1,1),('Irv Smith',1,17.0,5.7,3.4,5,0,60.0,3,0),('Isaiah Hodgins',2,40.0,10.0,6.7,6,1,66.7,4,3),('Isaiah Likely',1,8.0,8.0,8.0,1,0,100.0,1,0),('Isaiah McKenzie',1,7.0,7.0,7.0,1,0,100.0,1,0),('Isaiah Spiller',1,0.0,0.0,0.0,0,0,0.0,0,0),('Isiah Pacheco',1,0.0,0.0,0.0,2,0,50.0,1,0),('Ja\'Marr Chase',1,39.0,7.8,4.3,9,0,55.6,5,3),('Jahan Dotson',1,22.0,7.3,4.4,5,0,60.0,3,1),('Jahmyr Gibbs',1,18.0,9.0,9.0,2,0,100.0,2,1),('Jake Bobo',1,3.0,3.0,3.0,1,0,100.0,1,0),('Jake Browning',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jake Ferguson',1,11.0,5.5,1.6,7,0,28.6,2,0),('Jakobi Meyers',1,81.0,9.0,8.1,10,2,90.0,9,5),('Jalen Hurts',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jalen Reeves-Maybin',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jalin Hyatt',2,89.0,44.5,44.5,2,0,100.0,2,2),('Jamal Agnew',1,0.0,0.0,0.0,0,0,0.0,0,0),('James Conner',1,8.0,1.6,1.6,5,0,100.0,5,1),('James Cook',1,17.0,4.3,2.8,6,0,66.7,4,0),('Jared Goff',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jauan Jennings',2,51.0,25.5,12.8,4,0,50.0,2,2),('Jaxon Smith-Njigba',1,34.0,6.8,5.7,6,0,83.3,5,1),('Jayden Reed',2,85.0,14.2,6.5,13,2,46.2,6,5),('Jerick McKinnon',1,24.0,8.0,8.0,3,0,100.0,3,0),('Jerome Ford',1,25.0,8.3,6.3,4,1,75.0,3,1),('Jimmy Garoppolo',2,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Burrow',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Mixon',1,17.0,5.7,3.4,5,0,60.0,3,0),('John Bates',1,46.0,15.3,9.2,5,0,60.0,3,1),('Jonathan Mingo',1,17.0,8.5,3.4,5,0,40.0,2,1),('Jordan Addison',1,72.0,24.0,14.4,5,1,60.0,3,1),('Jordan Akins',1,2.0,2.0,2.0,1,0,100.0,1,0),('Jordan Love',2,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Allen',1,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Downs',1,37.0,9.3,7.4,5,0,80.0,4,3),('Josh Jacobs',2,74.0,10.6,8.2,9,0,77.8,7,4),('Josh Oliver',1,13.0,6.5,4.3,3,0,66.7,2,1),('Josh Palmer',1,13.0,4.3,2.6,5,0,60.0,3,0),('Josh Reynolds',1,80.0,20.0,11.4,7,0,57.1,4,4),('Joshua Dobbs',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joshua Kelley',1,0.0,0.0,0.0,1,0,0.0,0,0),('Josiah Deguara',2,5.0,2.5,2.5,2,0,100.0,2,1),('Justice Hill',1,12.0,4.0,4.0,3,0,100.0,3,0),('Justin Fields',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Herbert',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Jefferson',1,159.0,14.5,12.2,13,0,84.6,11,9),('Juwan Johnson',1,13.0,6.5,4.3,3,0,66.7,2,0),('K.J. Osborn',1,34.0,11.3,5.7,6,1,50.0,3,3),('Kalif Raymond',1,20.0,20.0,20.0,1,0,100.0,1,0),('Keaontay Ingram',1,0.0,0.0,0.0,0,0,0.0,0,0),('Keenan Allen',1,111.0,13.9,11.1,10,2,80.0,8,5),('Keith Kirkwood',1,0.0,0.0,0.0,1,0,0.0,0,0),('Kenneth Gainwell',1,20.0,5.0,5.0,4,0,100.0,4,0),('Khalil Herbert',1,23.0,23.0,7.7,3,0,33.3,1,1),('Kirk Cousins',1,0.0,0.0,0.0,0,0,0.0,0,0),('Ko Kieft',1,0.0,0.0,0.0,3,0,0.0,0,0),('Kylen Granson',1,16.0,5.3,4.0,4,1,75.0,3,2),('Lamar Jackson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Latavius Murray',1,9.0,9.0,4.5,2,0,50.0,1,1),('Laviska Shenault',1,16.0,8.0,8.0,2,0,100.0,2,1),('Luke Musgrave',2,75.0,15.0,10.7,7,0,71.4,5,2),('Malik Heath',2,0.0,0.0,0.0,2,0,0.0,0,0),('Mark Andrews',1,45.0,9.0,5.6,8,1,62.5,5,3),('Marquise Brown',1,28.0,9.3,5.6,5,0,60.0,3,3),('Marquise Goodwin',1,0.0,0.0,0.0,2,0,0.0,0,0),('Marvin Jones',1,8.0,4.0,1.3,6,0,33.3,2,0),('Matt Breida',2,1.0,0.3,0.3,3,0,100.0,3,0),('Matthew Stafford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Mecole Hardman',1,6.0,6.0,6.0,1,0,100.0,1,0),('Michael Carter',1,3.0,3.0,1.5,2,0,50.0,1,1),('Michael Gallup',1,10.0,10.0,5.0,2,0,50.0,1,1),('Michael Mayer',2,2.0,2.0,2.0,1,0,100.0,1,0),('Michael Pittman',1,56.0,7.0,4.7,12,0,66.7,8,4),('Mike Boone',1,18.0,6.0,4.5,4,0,75.0,3,1),('Mike Evans',1,66.0,11.0,6.6,10,1,60.0,6,2),('Miles Sanders',1,26.0,6.5,4.3,6,0,66.7,4,1),('Mo Alie-Cox',1,15.0,15.0,15.0,1,0,100.0,1,1),('Nelson Agholor',1,63.0,12.6,10.5,6,1,83.3,5,4),('Nick Chubb',1,0.0,0.0,0.0,0,0,0.0,0,0),('Nico Collins',1,80.0,13.3,7.3,11,0,54.5,6,3),('Noah Brown',1,20.0,6.7,5.0,4,0,75.0,3,0),('Noah Fant',1,56.0,14.0,14.0,4,0,100.0,4,2),('Noah Gray',1,38.0,12.7,12.7,3,0,100.0,3,2),('Odell Beckham',1,29.0,9.7,7.3,4,0,75.0,3,2),('Parris Campbell',2,45.0,4.5,3.8,12,0,83.3,10,0),('Patrick Mahomes',1,0.0,0.0,0.0,0,0,0.0,0,0),('Patrick Taylor',2,0.0,0.0,0.0,1,0,0.0,0,0),('Peyton Hendershot',1,0.0,0.0,0.0,1,0,0.0,0,0),('Pierre Strong',1,0.0,0.0,0.0,1,0,0.0,0,0),('Puka Nacua',1,119.0,11.9,7.9,15,0,66.7,10,6),('Quentin Johnston',1,7.0,7.0,3.5,2,0,50.0,1,0),('Raheem Mostert',2,19.0,6.3,6.3,3,0,100.0,3,0),('Rakim Jarrett',1,0.0,0.0,0.0,0,0,0.0,0,0),('Randall Cobb',1,0.0,0.0,0.0,1,0,0.0,0,0),('Rashee Rice',1,20.0,10.0,10.0,2,0,100.0,2,1),('Rashid Shaheed',1,63.0,15.8,15.8,4,0,100.0,4,3),('Rashod Bateman',1,18.0,6.0,6.0,3,0,100.0,3,1),('Richie James',1,0.0,0.0,0.0,1,0,0.0,0,0),('Rico Dowdle',1,0.0,0.0,0.0,0,0,0.0,0,0),('River Cracraft',2,74.0,14.8,10.6,7,1,71.4,5,5),('Romeo Doubs',2,56.0,9.3,7.0,8,2,75.0,6,5),('Rondale Moore',1,33.0,11.0,11.0,3,0,100.0,3,1),('Roschon Johnson',1,10.0,5.0,5.0,2,0,100.0,2,0),('Ryan Tannehill',1,0.0,0.0,0.0,0,0,0.0,0,0),('Salvon Ahmed',2,28.0,9.3,4.7,6,0,50.0,3,1),('Sam Darnold',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Howell',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam LaPorta',1,39.0,7.8,7.8,5,0,100.0,5,2),('Saquon Barkley',1,29.0,4.8,4.1,7,1,85.7,6,2),('Sean Clifford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Skyy Moore',1,70.0,23.3,17.5,4,1,75.0,3,2),('Stefon Diggs',1,102.0,10.2,7.8,13,1,76.9,10,6),('Sterling Shepard',2,4.0,4.0,4.0,1,0,100.0,1,1),('Stone Smartt',1,24.0,24.0,24.0,1,0,100.0,1,1),('T.J. Hockenson',1,66.0,9.4,8.3,8,2,87.5,7,4),('Tank Bigsby',1,0.0,0.0,0.0,1,0,0.0,0,0),('Tank Dell',1,34.0,11.3,8.5,4,0,75.0,3,3),('Taysom Hill',1,-1.0,-1.0,-0.5,2,0,50.0,1,0),('Teagan Quitoriano',1,11.0,11.0,11.0,1,0,100.0,1,1),('Tee Higgins',1,0.0,0.0,0.0,8,0,0.0,0,0),('Terrace Marshall',1,23.0,11.5,3.8,6,0,33.3,2,2),('Terry McLaurin',1,54.0,10.8,9.0,6,1,83.3,5,2),('Tony Jones',1,0.0,0.0,0.0,2,0,0.0,0,0),('Tony Pollard',1,12.0,6.0,4.0,3,0,66.7,2,1),('Travis Etienne',1,27.0,5.4,5.4,5,0,100.0,5,0),('Travis Kelce',1,26.0,6.5,2.9,9,1,44.4,4,1),('Trevor Lawrence',1,0.0,0.0,0.0,0,0,0.0,0,0),('Trey McBride',1,23.0,11.5,11.5,2,0,100.0,2,2),('Trey Palmer',1,8.0,4.0,2.7,3,1,66.7,2,1),('Treylon Burks',1,18.0,9.0,6.0,3,0,66.7,2,1),('Tua Tagovailoa',2,0.0,0.0,0.0,0,0,0.0,0,0),('Tutu Atwell',1,119.0,19.8,14.9,8,0,75.0,6,6),('Ty Chandler',1,9.0,4.5,4.5,2,0,100.0,2,0),('Tyjae Spears',1,1.0,1.0,0.3,4,0,25.0,1,0),('Tyler Boyd',1,10.0,5.0,3.3,3,0,66.7,2,0),('Tyler Conklin',1,50.0,10.0,8.3,6,0,83.3,5,2),('Tyler Higbee',1,49.0,16.3,16.3,3,0,100.0,3,3),('Tyler Lockett',1,59.0,7.4,5.9,10,2,80.0,8,6),('Tyreek Hill',2,255.0,15.9,10.6,24,3,66.7,16,14),('Van Jefferson',1,24.0,6.0,4.8,5,0,80.0,4,1),('Velus Jones',1,0.0,0.0,0.0,0,0,0.0,0,0),('Wan\'Dale Robinson',1,21.0,5.3,4.2,5,0,80.0,4,1),('Will Dissly',1,35.0,11.7,11.7,3,0,100.0,3,2),('Will Mallory',1,49.0,24.5,24.5,2,0,100.0,2,2),('Xavier Hutchinson',1,9.0,9.0,9.0,1,0,100.0,1,1),('Zach Charbonnet',1,14.0,7.0,7.0,2,0,100.0,2,0),('Zach Ertz',1,21.0,3.5,2.1,10,0,60.0,6,1),('Zach Pascal',1,0.0,0.0,0.0,1,0,0.0,0,0),('Zach Wilson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Zack Moss',1,19.0,4.8,4.8,4,0,100.0,4,0),('Zay Flowers',1,62.0,15.5,12.4,5,0,80.0,4,2),('Zay Jones',1,55.0,11.0,7.9,7,1,71.4,5,4);
/*!40000 ALTER TABLE `wr_away_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wr_home_stats`
--

DROP TABLE IF EXISTS `wr_home_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wr_home_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Yards` decimal(5,1) DEFAULT '0.0',
  `Yards_PerReception` decimal(5,1) DEFAULT NULL,
  `Yards_PerTarget` decimal(5,1) DEFAULT '0.0',
  `Targets` int DEFAULT '0',
  `Touchdowns` int DEFAULT '0',
  `Catch_Perc` decimal(5,1) DEFAULT NULL,
  `Catches` int DEFAULT NULL,
  `FirstDown_Catches` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wr_home_stats`
--

LOCK TABLES `wr_home_stats` WRITE;
/*!40000 ALTER TABLE `wr_home_stats` DISABLE KEYS */;
INSERT INTO `wr_home_stats` VALUES ('A.J. Brown',1,29.0,7.3,4.8,6,0,66.7,4,2),('Aaron Rodgers',1,0.0,0.0,0.0,0,0,0.0,0,0),('Alec Pierce',1,5.0,5.0,1.7,3,0,33.3,1,1),('Alexander Mattison',1,10.0,3.3,2.5,4,1,75.0,3,1),('Allen Lazard',1,46.0,23.0,11.5,4,0,50.0,2,2),('Allen Robinson',2,76.0,10.9,6.9,11,0,63.6,7,2),('Amari Cooper',1,37.0,12.3,5.3,7,0,42.9,3,2),('Andrew Beck',1,0.0,0.0,0.0,0,0,0.0,0,0),('Andrew Ogletree',1,20.0,20.0,10.0,2,0,50.0,1,1),('Anthony McFarland',2,11.0,5.5,5.5,2,0,100.0,2,1),('Anthony Richardson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Antoine Green',1,2.0,2.0,2.0,1,0,100.0,1,0),('Antonio Gibson',1,10.0,10.0,10.0,1,0,100.0,1,0),('Austin Ekeler',1,47.0,11.8,9.4,5,0,80.0,4,2),('Baker Mayfield',1,0.0,0.0,0.0,0,0,0.0,0,0),('Ben Skowronek',1,10.0,10.0,10.0,1,0,100.0,1,1),('Bijan Robinson',2,75.0,7.5,6.8,11,1,90.9,10,5),('Blake Bell',1,12.0,6.0,4.0,3,1,66.7,2,1),('Boston Scott',1,0.0,0.0,0.0,0,0,0.0,0,0),('Brandon Johnson',2,97.0,24.3,16.2,6,2,66.7,4,3),('Breece Hall',1,20.0,20.0,10.0,2,0,50.0,1,1),('Brevin Jordan',1,27.0,13.5,13.5,2,0,100.0,2,2),('Brian Robinson',1,7.0,7.0,3.5,2,1,50.0,1,1),('Brock Purdy',1,0.0,0.0,0.0,0,0,0.0,0,0),('Bryce Young',1,0.0,0.0,0.0,0,0,0.0,0,0),('C.J. Ham',1,7.0,3.5,2.3,3,0,66.7,2,0),('C.J. Stroud',1,0.0,0.0,0.0,0,0,0.0,0,0),('Cade Otton',1,41.0,6.8,6.8,6,0,100.0,6,1),('Calvin Austin',2,47.0,6.7,4.7,10,0,70.0,7,2),('Calvin Ridley',1,32.0,16.0,4.0,8,0,25.0,2,2),('CeeDee Lamb',1,143.0,13.0,11.0,13,0,84.6,11,7),('Charlie Kolar',1,0.0,0.0,0.0,1,0,0.0,0,0),('Chase Brown',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chase Claypool',1,0.0,0.0,0.0,2,0,0.0,0,0),('Chase Edmonds',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chigoziem Okonkwo',1,35.0,8.8,8.8,4,0,100.0,4,2),('Chris Godwin',1,58.0,11.6,7.3,8,0,62.5,5,2),('Chris Moore',1,49.0,49.0,49.0,1,0,100.0,1,1),('Chris Rodriguez',1,0.0,0.0,0.0,0,0,0.0,0,0),('Christian Kirk',1,110.0,10.0,7.9,14,0,78.6,11,6),('Christian McCaffrey',1,34.0,6.8,6.8,5,0,100.0,5,3),('Chuba Hubbard',1,34.0,6.8,6.8,5,0,100.0,5,2),('Clyde Edwards-Helaire',1,7.0,7.0,7.0,1,0,100.0,1,0),('Colby Parkinson',1,8.0,8.0,4.0,2,0,50.0,1,0),('Cole Kmet',1,44.0,8.8,6.3,7,0,71.4,5,2),('Connor Heyward',2,19.0,9.5,4.8,4,0,50.0,2,0),('Craig Reynolds',1,-2.0,-2.0,-2.0,1,0,100.0,1,0),('Curtis Samuel',1,54.0,10.8,10.8,5,0,100.0,5,2),('D.J. Moore',1,25.0,12.5,12.5,2,0,100.0,2,2),('D.K. Metcalf',1,47.0,15.7,9.4,5,1,60.0,3,2),('D\'Ernest Johnson',1,9.0,9.0,9.0,1,0,100.0,1,1),('D\'Onta Foreman',1,8.0,4.0,2.7,3,0,66.7,2,0),('Dak Prescott',1,0.0,0.0,0.0,0,0,0.0,0,0),('Dallas Goedert',1,22.0,3.7,3.1,7,0,85.7,6,0),('Dalton Kincaid',1,43.0,8.6,7.2,6,0,83.3,5,2),('Dalton Schultz',1,34.0,8.5,4.9,7,0,57.1,4,2),('Dalvin Cook',1,26.0,8.7,8.7,3,0,100.0,3,1),('Dameon Pierce',1,4.0,2.0,1.3,3,0,66.7,2,0),('Damien Harris',1,0.0,0.0,0.0,0,0,0.0,0,0),('Daniel Bellinger',1,1.0,1.0,1.0,1,0,100.0,1,0),('Daniel Jones',1,0.0,0.0,0.0,0,0,0.0,0,0),('Dare Ogunbowale',1,0.0,0.0,0.0,0,0,0.0,0,0),('Darius Slayton',1,15.0,5.0,3.0,5,0,60.0,3,0),('Darnell Mooney',1,53.0,13.3,7.6,7,1,57.1,4,3),('David Bell',1,0.0,0.0,0.0,1,0,0.0,0,0),('David Montgomery',1,7.0,7.0,7.0,1,0,100.0,1,1),('David Njoku',1,24.0,12.0,8.0,3,0,66.7,2,1),('Dawson Knox',1,10.0,3.3,2.0,5,1,60.0,3,2),('DeAndre Hopkins',1,40.0,10.0,8.0,5,0,80.0,4,3),('Deebo Samuel',1,129.0,21.5,10.8,12,1,50.0,6,5),('DeeJay Dallas',1,14.0,14.0,14.0,1,0,100.0,1,1),('Demario Douglas',2,59.0,9.8,6.6,9,0,66.7,6,3),('Deon Jackson',1,14.0,2.8,2.3,6,0,83.3,5,0),('Deonte Harty',1,4.0,2.0,1.3,3,0,66.7,2,0),('Derek Carr',1,0.0,0.0,0.0,0,0,0.0,0,0),('Derius Davis',1,5.0,5.0,5.0,1,0,100.0,1,0),('Derrick Henry',1,15.0,5.0,3.8,4,0,75.0,3,0),('Deshaun Watson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Desmond Ridder',2,-6.0,-6.0,-6.0,1,0,100.0,1,0),('DeVante Parker',1,57.0,9.5,7.1,8,0,75.0,6,3),('Devin Singletary',1,10.0,10.0,10.0,1,0,100.0,1,1),('DeVonta Smith',1,131.0,32.8,26.2,5,1,80.0,4,2),('Diontae Johnson',2,48.0,16.0,8.0,6,0,50.0,3,2),('DJ Chark',1,15.0,15.0,15.0,1,0,100.0,1,1),('Donald Parham',1,22.0,7.3,7.3,3,1,100.0,3,2),('Donovan Peoples-Jones',1,12.0,12.0,6.0,2,0,50.0,1,1),('Drake London',2,67.0,11.2,7.4,9,1,66.7,6,3),('Elijah Mitchell',1,2.0,0.7,0.7,3,0,100.0,3,0),('Elijah Moore',1,43.0,14.3,6.1,7,0,42.9,3,2),('Emari Demercado',1,7.0,3.5,3.5,2,0,100.0,2,0),('Evan Engram',1,57.0,9.5,7.1,8,0,75.0,6,4),('Evan Hull',1,6.0,6.0,6.0,1,0,100.0,1,0),('Ezekiel Elliott',2,14.0,2.8,2.0,7,0,71.4,5,0),('Gabriel Davis',1,92.0,15.3,13.1,7,1,85.7,6,6),('Gardner Minshew',1,0.0,0.0,0.0,0,0,0.0,0,0),('Gary Brightwell',1,6.0,3.0,3.0,2,0,100.0,2,0),('Geno Smith',1,0.0,0.0,0.0,0,0,0.0,0,0),('George Kittle',1,90.0,12.9,10.0,9,0,77.8,7,2),('George Pickens',2,163.0,18.1,9.6,17,1,52.9,9,4),('Gerald Everett',1,21.0,10.5,7.0,3,0,66.7,2,2),('Greg Dulcich',1,22.0,11.0,11.0,2,0,100.0,2,2),('Gunner Olszewski',1,0.0,0.0,0.0,1,0,100.0,1,0),('Gus Edwards',1,0.0,0.0,0.0,0,0,0.0,0,0),('Harrison Bryant',1,5.0,2.5,2.5,2,1,100.0,2,1),('Hayden Hurst',1,20.0,6.7,6.7,3,0,100.0,3,0),('Hunter Henry',2,108.0,9.8,8.3,13,2,84.6,11,7),('Irv Smith',1,10.0,5.0,2.5,4,0,50.0,2,1),('Isaiah Hodgins',1,24.0,24.0,8.0,3,0,33.3,1,0),('Isiah Pacheco',1,31.0,7.8,7.8,4,0,100.0,4,1),('J.K. Dobbins',1,15.0,7.5,5.0,3,0,66.7,2,0),('Ja\'Marr Chase',1,31.0,6.2,3.9,8,0,62.5,5,2),('Jahan Dotson',1,40.0,8.0,5.7,7,0,71.4,5,3),('Jahmyr Gibbs',1,39.0,5.6,4.3,9,0,77.8,7,2),('Jake Ferguson',1,11.0,3.7,2.8,4,1,75.0,3,2),('Jake Funk',1,12.0,12.0,12.0,1,0,100.0,1,1),('Jaleel McLaughlin',2,-7.0,-7.0,-7.0,1,0,100.0,1,0),('Jalen Hurts',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jalin Hyatt',1,0.0,0.0,0.0,1,0,0.0,0,0),('Jamal Agnew',1,5.0,5.0,5.0,1,0,100.0,1,1),('James Conner',1,0.0,0.0,0.0,1,0,0.0,0,0),('James Cook',1,36.0,9.0,9.0,4,0,100.0,4,2),('Jared Goff',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jauan Jennings',1,31.0,15.5,10.3,3,0,66.7,2,1),('Jaxon Smith-Njigba',1,13.0,4.3,2.6,5,0,60.0,3,1),('Jerick McKinnon',1,10.0,10.0,5.0,2,0,50.0,1,1),('Jerome Ford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Burrow',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Mixon',1,36.0,9.0,7.2,5,0,80.0,4,1),('John Metchie',1,17.0,17.0,17.0,1,0,100.0,1,1),('Jonathan Mingo',1,26.0,8.7,3.3,8,0,37.5,3,1),('Jonnu Smith',2,47.0,11.8,7.8,6,0,66.7,4,3),('Jordan Addison',1,61.0,15.3,10.2,6,1,66.7,4,2),('Jordan Akins',1,12.0,12.0,12.0,1,0,100.0,1,1),('Jordan Mason',1,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Allen',1,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Downs',1,30.0,10.0,4.3,7,0,42.9,3,1),('Josh Oliver',1,32.0,10.7,10.7,3,0,100.0,3,2),('Josh Palmer',1,4.0,4.0,4.0,1,0,100.0,1,0),('Josh Reynolds',1,66.0,13.2,11.0,6,2,83.3,5,5),('Joshua Dobbs',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joshua Kelley',1,0.0,0.0,0.0,1,0,0.0,0,0),('JuJu Smith-Schuster',2,61.0,6.8,4.7,13,0,69.2,9,3),('Justice Hill',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Fields',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Herbert',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Jefferson',1,150.0,16.7,12.5,12,0,75.0,9,5),('Justyn Ross',1,6.0,6.0,6.0,1,0,100.0,1,0),('Juwan Johnson',1,36.0,12.0,7.2,5,0,60.0,3,1),('K.J. Osborn',1,31.0,10.3,5.2,6,0,50.0,3,1),('Kalif Raymond',1,46.0,23.0,15.3,3,1,66.7,2,2),('Kayshon Boutte',1,0.0,0.0,0.0,4,0,0.0,0,0),('Keaontay Ingram',1,0.0,0.0,0.0,0,0,0.0,0,0),('Keenan Allen',1,76.0,12.7,8.4,9,0,66.7,6,2),('Keith Kirkwood',1,0.0,0.0,0.0,1,0,0.0,0,0),('Kendrick Bourne',2,93.0,9.3,4.7,20,2,50.0,10,4),('Kenny Pickett',2,0.0,0.0,0.0,0,0,0.0,0,0),('Khalil Herbert',1,37.0,12.3,7.4,5,0,60.0,3,3),('Khalil Shakir',1,11.0,11.0,11.0,1,1,100.0,1,1),('Khari Blasingame',1,0.0,0.0,0.0,1,0,0.0,0,0),('Kirk Cousins',1,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Allen',1,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Juszczyk',1,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Pitts',2,59.0,14.8,7.4,8,0,50.0,4,2),('Kylen Granson',1,39.0,9.8,6.5,6,0,66.7,4,4),('Lamar Jackson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Latavius Murray',1,9.0,4.5,4.5,2,0,100.0,2,1),('Laviska Shenault',1,0.0,0.0,0.0,0,0,0.0,0,0),('Lawrence Cager',1,17.0,8.5,8.5,2,0,100.0,2,1),('Lil\'Jordan Humphrey',2,15.0,5.0,3.8,4,1,75.0,3,1),('Luke Schoonmaker',1,1.0,1.0,1.0,1,1,100.0,1,1),('Mac Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Mack Hollins',2,91.0,15.2,9.1,10,0,60.0,6,2),('Marquise Brown',1,54.0,9.0,5.4,10,1,60.0,6,4),('Marquise Goodwin',1,0.0,0.0,0.0,2,0,0.0,0,0),('Marvin Mims',2,122.0,30.5,30.5,4,1,100.0,4,3),('Matt Breida',1,-3.0,-3.0,-3.0,1,0,100.0,1,0),('Matthew Stafford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Michael Burton',2,3.0,3.0,3.0,1,0,100.0,1,1),('Michael Carter',1,12.0,6.0,6.0,2,0,100.0,2,0),('Michael Gallup',1,3.0,3.0,1.5,2,0,50.0,1,0),('Michael Pittman',1,97.0,12.1,8.8,11,1,72.7,8,4),('Mike Evans',1,171.0,28.5,21.4,8,1,75.0,6,4),('Mike Gesicki',2,69.0,8.6,7.7,9,0,88.9,8,3),('Miles Boykin',2,5.0,5.0,5.0,1,0,100.0,1,0),('Miles Sanders',1,4.0,1.3,0.8,5,0,60.0,3,0),('Mo Alie-Cox',1,0.0,0.0,0.0,2,0,0.0,0,0),('Najee Harris',2,2.0,0.7,0.4,5,0,60.0,3,0),('Nick Chubb',1,21.0,5.3,5.3,4,0,100.0,4,1),('Nico Collins',1,146.0,20.9,16.2,9,1,77.8,7,6),('Noah Gray',1,31.0,10.3,6.2,5,0,60.0,3,1),('Odell Beckham',1,37.0,18.5,12.3,3,0,66.7,2,2),('Parris Campbell',1,2.0,2.0,0.5,4,0,25.0,1,0),('Pat Freiermuth',2,5.0,2.5,1.0,5,1,40.0,2,1),('Patrick Mahomes',1,0.0,0.0,0.0,0,0,0.0,0,0),('Peyton Hendershot',1,0.0,0.0,0.0,0,0,0.0,0,0),('Phillip Dorsett',1,0.0,0.0,0.0,1,0,0.0,0,0),('Puka Nacua',1,147.0,9.8,7.4,20,0,75.0,15,7),('Quentin Johnston',1,9.0,4.5,3.0,3,0,66.7,2,1),('Rakim Jarrett',1,7.0,7.0,7.0,1,0,100.0,1,0),('Randall Cobb',1,0.0,0.0,0.0,1,0,0.0,0,0),('Rashaad Penny',1,5.0,5.0,5.0,1,0,100.0,1,0),('Rashee Rice',1,29.0,9.7,5.8,5,1,60.0,3,2),('Rashid Shaheed',1,89.0,17.8,14.8,6,1,83.3,5,3),('Rashod Bateman',1,35.0,11.7,11.7,3,0,100.0,3,1),('Reggie Gilliam',1,3.0,3.0,3.0,1,0,100.0,1,0),('Richie James',1,6.0,6.0,3.0,2,0,50.0,1,0),('Rico Dowdle',1,17.0,17.0,17.0,1,0,100.0,1,1),('Rondale Moore',1,14.0,14.0,14.0,1,0,100.0,1,1),('Ronnie Bell',1,24.0,12.0,12.0,2,1,100.0,2,2),('Ronnie Rivers',1,4.0,4.0,4.0,1,0,100.0,1,0),('Roschon Johnson',1,35.0,5.8,5.0,7,0,85.7,6,1),('Russell Wilson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ryan Tannehill',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Darnold',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Howell',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam LaPorta',1,63.0,12.6,10.5,6,0,83.3,5,4),('Samaje Perine',2,57.0,8.1,7.1,8,0,87.5,7,2),('Saquon Barkley',1,12.0,4.0,3.0,4,0,75.0,3,2),('Skyy Moore',1,0.0,0.0,0.0,3,0,0.0,0,0),('Stefon Diggs',1,66.0,9.4,9.4,7,0,100.0,7,3),('Sterling Shepard',1,0.0,0.0,0.0,1,0,0.0,0,0),('T.J. Hockenson',1,35.0,4.4,3.9,9,0,88.9,8,3),('Tank Dell',1,72.0,10.3,7.2,10,1,70.0,7,2),('Taysom Hill',1,0.0,0.0,0.0,1,0,0.0,0,0),('Tee Higgins',1,89.0,11.1,7.4,12,2,66.7,8,6),('Terry McLaurin',1,31.0,15.5,7.8,4,0,50.0,2,2),('Tony Pollard',1,37.0,5.3,4.6,8,0,87.5,7,2),('Travis Etienne',1,2.0,1.0,0.7,3,0,66.7,2,0),('Trevor Lawrence',1,0.0,0.0,0.0,0,0,0.0,0,0),('Trey McBride',1,32.0,16.0,10.7,3,0,66.7,2,1),('Trey Palmer',1,20.0,20.0,10.0,2,0,50.0,1,1),('Treylon Burks',1,76.0,25.3,19.0,4,0,75.0,3,1),('Tutu Atwell',1,77.0,11.0,8.6,9,0,77.8,7,6),('Ty Chandler',1,18.0,18.0,18.0,1,0,100.0,1,1),('Ty Montgomery',2,9.0,4.5,2.3,4,0,50.0,2,1),('Tyler Allgeier',2,19.0,6.3,6.3,3,0,100.0,3,1),('Tyler Boyd',1,52.0,8.7,6.5,8,0,75.0,6,3),('Tyler Conklin',1,2.0,2.0,2.0,1,0,100.0,1,0),('Tyler Higbee',1,12.0,4.0,1.7,7,0,42.9,3,0),('Tyler Lockett',1,10.0,5.0,2.5,4,0,50.0,2,1),('Tyler Scott',1,14.0,7.0,7.0,2,0,100.0,2,1),('Van Jefferson',1,9.0,9.0,2.3,4,0,25.0,1,0),('Will Dissly',1,17.0,8.5,8.5,2,0,100.0,2,1),('Xavier Hutchinson',1,0.0,0.0,0.0,1,0,0.0,0,0),('Zach Charbonnet',1,0.0,0.0,0.0,0,0,0.0,0,0),('Zach Ertz',1,56.0,9.3,7.0,8,0,75.0,6,2),('Zach Pascal',1,9.0,9.0,9.0,1,0,100.0,1,0),('Zach Wilson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Zay Flowers',1,78.0,8.7,7.8,10,0,90.0,9,5),('Zay Jones',1,0.0,0.0,0.0,6,0,0.0,0,0);
/*!40000 ALTER TABLE `wr_home_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wr_total_stats`
--

DROP TABLE IF EXISTS `wr_total_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wr_total_stats` (
  `Name` varchar(45) NOT NULL,
  `Games_Played` int DEFAULT '0',
  `Yards` int DEFAULT '0',
  `Yards_PerReception` decimal(4,1) DEFAULT '0.0',
  `Yards_PerTarget` decimal(4,1) DEFAULT '0.0',
  `Targets` int DEFAULT '0',
  `Touchdowns` int DEFAULT '0',
  `Catch_Perc` decimal(4,1) DEFAULT '0.0',
  `Catches` int DEFAULT '0',
  `FirstDown_Catches` int DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wr_total_stats`
--

LOCK TABLES `wr_total_stats` WRITE;
/*!40000 ALTER TABLE `wr_total_stats` DISABLE KEYS */;
INSERT INTO `wr_total_stats` VALUES ('A.J. Brown',2,108,11.3,7.9,16,0,70.0,11,4),('Aaron Jones',2,86,22.0,11.2,4,1,25.5,2,2),('Aaron Rodgers',2,0,0.5,0.5,0,0,0.5,0,0),('AJ Dillon',3,25,5.9,4.5,4,0,50.3,3,1),('Alec Ingold',3,34,11.7,11.7,2,0,67.0,2,2),('Alec Pierce',2,33,14.0,14.0,5,0,100.0,3,1),('Alexander Mattison',2,21,3.7,1.8,10,1,50.0,6,1),('Allen Lazard',2,46,0.0,0.0,4,0,0.0,2,0),('Allen Robinson',3,76,0.0,0.0,11,0,0.0,7,0),('Amari Cooper',2,127,12.9,9.0,17,0,70.0,10,6),('Ameer Abdullah',3,5,3.7,1.2,4,0,17.0,1,0),('Amon-Ra St. Brown',2,71,6.4,4.5,9,1,33.9,6,4),('Andrew Beck',2,0,0.5,0.5,0,0,0.5,0,0),('Andrew Ogletree',2,20,0.0,0.0,2,0,0.0,1,0),('Anthony McFarland',3,11,0.0,0.0,2,0,0.0,2,0),('Anthony Richardson',2,0,0.5,0.5,0,0,0.5,0,0),('Antoine Green',2,2,0.0,0.0,1,0,0.0,1,0),('Antonio Gibson',2,54,14.7,14.7,4,0,100.0,4,1),('Ashtyn Davis',2,0,0.5,0.5,0,0,0.5,0,0),('Austin Ekeler',2,47,0.0,0.0,5,0,0.0,4,0),('Austin Hooper',3,40,9.2,9.2,3,0,67.0,3,2),('Baker Mayfield',2,0,0.5,0.5,0,0,0.5,0,0),('Ben Skowronek',2,10,0.0,0.0,3,0,0.0,1,0),('Bijan Robinson',3,75,0.0,0.0,11,1,0.0,10,0),('Blake Bell',2,12,0.0,0.0,3,1,0.0,2,0),('Boston Scott',2,7,4.0,4.0,1,0,50.5,1,0),('Brandin Cooks',2,22,6.0,3.2,4,0,25.5,2,2),('Brandon Aiyuk',3,172,10.7,8.5,14,2,52.7,11,11),('Brandon Johnson',3,97,0.0,0.0,6,2,0.0,4,0),('Braxton Berrios',3,70,9.7,6.2,8,0,42.0,5,5),('Breece Hall',2,20,0.0,0.0,4,0,0.0,1,0),('Brevin Jordan',2,27,0.0,0.0,2,0,0.0,2,0),('Brian Robinson',2,49,21.0,14.0,5,1,66.7,3,2),('Brock Purdy',3,0,0.3,0.3,0,0,0.3,0,0),('Bryce Young',2,0,0.5,0.5,0,0,0.5,0,0),('Brycen Hopkins',2,21,11.0,5.8,2,0,25.5,1,1),('Byron Pringle',2,4,2.5,2.5,1,0,50.5,1,0),('C.J. Ham',2,7,0.0,0.0,3,0,0.0,2,0),('C.J. Stroud',2,0,0.5,0.5,1,0,50.5,1,0),('Cade Otton',2,60,9.5,6.3,9,0,66.7,8,1),('Calvin Austin',3,47,0.0,0.0,10,0,0.0,7,0),('Calvin Ridley',2,133,12.6,9.2,19,1,72.7,10,4),('Cam Akers',2,0,0.5,0.5,0,0,0.5,0,0),('CeeDee Lamb',2,220,19.3,19.3,17,0,100.0,15,3),('Charlie Kolar',2,0,0.5,0.5,1,0,0.5,0,0),('Chase Brown',2,0,0.5,0.5,0,0,0.5,0,0),('Chase Claypool',2,36,6.5,2.8,10,1,19.2,3,2),('Chase Edmonds',2,0,0.5,0.5,0,0,0.5,0,0),('Chigoziem Okonkwo',2,35,0.0,0.0,4,0,0.0,4,0),('Chris Evans',2,-1,0.5,0.5,1,0,50.5,1,0),('Chris Godwin',2,109,10.2,8.5,14,0,83.3,10,4),('Chris Moore',2,49,0.0,0.0,2,0,0.0,1,0),('Chris Olave',2,86,7.7,4.4,11,0,27.8,6,3),('Chris Rodriguez',2,0,0.5,0.5,0,0,0.5,0,0),('Christian Kirk',2,119,9.0,3.0,17,0,33.3,12,0),('Christian McCaffrey',3,70,6.0,4.5,13,0,75.0,11,1),('Chuba Hubbard',2,43,4.5,4.5,7,0,100.0,7,0),('Clyde Edwards-Helaire',2,24,8.5,8.5,3,0,100.0,3,1),('Colby Parkinson',2,49,20.5,13.7,5,0,66.7,3,2),('Cole Kmet',2,82,9.5,6.3,13,0,66.7,9,2),('Connor Heyward',3,19,0.0,0.0,4,0,0.0,2,0),('Cooper Rush',2,0,0.5,0.5,0,0,0.5,0,0),('Craig Reynolds',2,-2,0.5,0.5,1,0,0.0,1,0),('Curtis Samuel',2,73,6.3,6.3,8,0,100.0,8,1),('D.J. Moore',2,129,17.3,14.9,9,0,85.7,8,4),('D.K. Metcalf',2,122,12.5,12.5,11,1,100.0,9,4),('D\'Andre Swift',2,0,0.5,0.5,2,0,25.5,1,0),('D\'Ernest Johnson',2,9,0.0,0.0,1,0,0.0,1,0),('D\'Onta Foreman',2,8,0.0,0.0,3,0,0.0,2,0),('Dak Prescott',2,0,0.5,0.5,0,0,0.5,0,0),('Dallas Goedert',2,22,0.0,0.0,8,0,0.0,6,0),('Dalton Kincaid',2,69,6.5,6.5,10,0,100.0,9,0),('Dalton Schultz',2,38,2.0,1.0,11,0,50.0,6,0),('Dalvin Cook',2,31,5.0,5.0,4,0,100.0,4,0),('Dameon Pierce',2,13,4.5,3.0,6,0,66.7,4,0),('Damien Harris',2,16,4.5,4.5,2,0,50.5,2,0),('Daniel Bellinger',3,9,8.0,8.0,2,0,100.0,2,0),('Daniel Jones',3,0,0.3,0.3,0,0,0.3,0,0),('Dare Ogunbowale',2,0,0.5,0.5,0,0,0.5,0,0),('Darius Slayton',3,109,15.7,7.8,17,0,50.0,9,5),('Darnell Mooney',2,53,0.0,0.0,7,1,0.0,4,0),('Davante Adams',3,150,8.7,6.2,17,1,47.4,12,9),('David Bell',2,27,5.0,5.0,4,0,50.5,3,2),('David Montgomery',2,7,0.0,0.0,1,0,0.0,1,0),('David Njoku',2,72,12.0,12.0,7,0,100.0,6,1),('Dawson Knox',2,35,8.3,6.3,9,1,75.0,6,1),('DeAndre Carter',3,5,3.7,2.0,2,0,33.7,1,0),('DeAndre Hopkins',2,105,9.3,5.0,18,0,53.8,11,3),('Deebo Samuel',3,247,10.7,7.4,28,1,68.8,17,6),('DeeJay Dallas',2,14,0.0,0.0,1,0,0.0,1,0),('Demario Douglas',3,59,0.0,0.0,9,0,0.0,6,0),('Deon Jackson',2,14,0.0,0.0,6,0,0.0,5,0),('Deonte Harty',2,13,3.0,2.3,7,0,75.0,5,1),('Derek Carr',2,0,0.5,0.5,0,0,0.5,0,0),('Derius Davis',2,5,0.0,0.0,1,0,0.0,1,0),('Derrick Henry',2,71,28.0,18.7,7,0,66.7,5,1),('Deshaun Watson',2,0,0.5,0.5,0,0,0.5,0,0),('Desmond Ridder',3,-6,0.7,0.7,1,0,0.0,1,0),('DeVante Parker',2,57,0.0,0.0,8,0,0.0,6,0),('Devin Duvernay',2,0,0.5,0.5,3,0,0.5,0,0),('Devin Singletary',2,10,0.0,0.0,1,0,0.0,1,0),('Devon Achane',2,4,2.5,2.5,1,0,50.5,1,0),('DeVonta Smith',2,178,6.7,4.7,15,2,70.0,11,3),('Diontae Johnson',3,48,0.0,0.0,6,0,0.0,3,0),('DJ Chark',2,15,0.0,0.0,1,0,0.0,1,0),('Donald Parham',2,29,7.0,3.5,5,1,50.0,4,1),('Donovan Peoples-Jones',2,19,7.0,1.8,6,0,25.0,2,0),('Donovan Smith',2,0,0.5,0.5,1,0,50.5,1,0),('Drake London',3,67,0.0,0.0,9,1,0.0,6,0),('Durham Smythe',3,67,7.8,4.8,10,0,40.3,6,4),('Dyami Brown',2,25,4.7,4.7,3,0,50.5,3,0),('Elijah Dotson',2,13,3.8,3.8,2,0,50.5,2,0),('Elijah Mitchell',2,2,0.0,0.0,4,0,0.0,3,0),('Elijah Moore',2,79,12.0,4.0,16,0,33.3,6,2),('Emari Demercado',2,7,0.0,0.0,2,0,0.0,2,0),('Erik Ezukanma',3,0,0.3,0.3,1,0,0.3,0,0),('Evan Engram',2,106,9.8,9.8,13,0,100.0,11,2),('Evan Hull',2,6,0.0,0.0,1,0,0.0,1,0),('Ezekiel Elliott',3,14,0.0,0.0,7,0,0.0,5,0),('Foster Moreau',2,20,5.5,5.5,2,0,50.5,2,1),('Gabriel Davis',2,124,16.0,8.0,11,1,50.0,8,2),('Gardner Minshew',2,0,0.5,0.5,0,0,0.5,0,0),('Gary Brightwell',3,37,15.5,10.3,5,0,66.7,4,2),('Geno Smith',2,0,0.5,0.5,0,0,0.5,0,0),('George Kittle',3,139,8.2,5.4,18,0,66.7,13,4),('George Pickens',3,163,0.0,0.0,17,1,0.0,9,0),('Gerald Everett',2,68,15.7,15.7,6,0,100.0,5,2),('Giovanni Ricci',2,2,1.5,1.5,1,0,50.5,1,0),('Greg Dulcich',2,22,0.0,0.0,2,0,0.0,2,0),('Gunner Olszewski',2,0,0.5,0.5,1,0,0.0,1,0),('Gus Edwards',2,0,0.5,0.5,0,0,0.5,0,0),('Harrison Bryant',2,5,0.0,0.0,4,1,0.0,2,0),('Hayden Hurst',2,61,8.2,5.9,10,1,71.4,8,3),('Hunter Henry',3,108,0.0,0.0,13,2,0.0,11,0),('Hunter Renfrow',3,23,15.7,15.7,1,0,67.0,1,1),('Irv Smith',2,27,5.7,3.4,9,0,60.0,5,0),('Isaiah Hodgins',3,64,10.0,6.7,9,1,66.7,5,3),('Isaiah Likely',2,8,4.5,4.5,1,0,50.5,1,0),('Isaiah McKenzie',2,7,4.0,4.0,1,0,50.5,1,0),('Isaiah Spiller',2,0,0.5,0.5,0,0,0.5,0,0),('Isiah Pacheco',2,31,0.0,0.0,6,0,50.0,5,0),('J.K. Dobbins',2,15,0.0,0.0,3,0,0.0,2,0),('Ja\'Marr Chase',2,70,7.8,4.3,17,0,55.6,10,3),('Jahan Dotson',2,62,7.3,4.4,12,0,60.0,8,1),('Jahmyr Gibbs',2,57,9.0,9.0,11,0,100.0,9,1),('Jake Bobo',2,3,2.0,2.0,1,0,50.5,1,0),('Jake Browning',2,0,0.5,0.5,0,0,0.5,0,0),('Jake Ferguson',2,22,5.5,1.6,11,1,28.6,5,0),('Jake Funk',2,12,0.0,0.0,1,0,0.0,1,0),('Jakobi Meyers',2,81,5.0,4.5,10,2,45.5,9,5),('Jaleel McLaughlin',3,-7,0.7,0.7,1,0,0.0,1,0),('Jalen Hurts',2,0,0.5,0.5,0,0,0.5,0,0),('Jalen Reeves-Maybin',2,0,0.5,0.5,0,0,0.5,0,0),('Jalin Hyatt',3,89,30.0,30.0,3,0,67.0,2,2),('Jamal Agnew',2,5,0.0,0.0,1,0,0.0,1,0),('James Conner',2,8,1.3,1.3,6,0,50.5,5,1),('James Cook',2,53,4.3,2.8,10,0,66.7,8,0),('Jared Goff',2,0,0.5,0.5,0,0,0.5,0,0),('Jauan Jennings',3,82,25.5,12.8,7,0,50.0,4,2),('Jaxon Smith-Njigba',2,47,6.8,5.7,11,0,83.3,8,1),('Jayden Reed',3,85,9.8,4.7,13,2,31.1,6,5),('Jerick McKinnon',2,34,8.0,8.0,5,0,100.0,4,0),('Jerome Ford',2,25,4.7,3.6,4,1,38.0,3,1),('Jimmy Garoppolo',3,0,0.3,0.3,0,0,0.3,0,0),('Joe Burrow',2,0,0.5,0.5,0,0,0.5,0,0),('Joe Mixon',2,53,5.7,3.4,10,0,60.0,7,0),('John Bates',2,46,8.2,5.1,5,0,30.5,3,1),('John Metchie',2,17,0.0,0.0,1,0,0.0,1,0),('Jonathan Mingo',2,43,8.5,3.4,13,0,40.0,5,1),('Jonnu Smith',3,47,0.0,0.0,6,0,0.0,4,0),('Jordan Addison',2,133,24.0,14.4,11,2,60.0,7,1),('Jordan Akins',2,14,2.0,2.0,2,0,100.0,2,0),('Jordan Love',3,0,0.3,0.3,0,0,0.3,0,0),('Jordan Mason',2,0,0.5,0.5,0,0,0.5,0,0),('Josh Allen',2,0,0.5,0.5,0,0,0.5,0,0),('Josh Downs',2,67,9.3,7.4,12,0,80.0,7,3),('Josh Jacobs',3,74,7.4,5.8,9,0,52.2,7,4),('Josh Oliver',2,45,6.5,4.3,6,0,66.7,5,1),('Josh Palmer',2,17,4.3,2.6,6,0,60.0,4,0),('Josh Reynolds',2,146,20.0,11.4,13,2,57.1,9,4),('Joshua Dobbs',2,0,0.5,0.5,0,0,0.5,0,0),('Joshua Kelley',2,0,0.5,0.5,2,0,0.5,0,0),('Josiah Deguara',3,5,2.0,2.0,2,0,67.0,2,1),('JuJu Smith-Schuster',3,61,0.0,0.0,13,0,0.0,9,0),('Justice Hill',2,12,2.5,2.5,3,0,50.5,3,0),('Justin Fields',2,0,0.5,0.5,0,0,0.5,0,0),('Justin Herbert',2,0,0.5,0.5,0,0,0.5,0,0),('Justin Jefferson',2,309,14.5,12.2,25,0,84.6,20,9),('Justyn Ross',2,6,0.0,0.0,1,0,0.0,1,0),('Juwan Johnson',2,49,6.5,4.3,8,0,66.7,5,0),('K.J. Osborn',2,65,11.3,5.7,12,1,50.0,6,3),('Kalif Raymond',2,66,20.0,20.0,4,1,100.0,3,0),('Kayshon Boutte',2,0,0.5,0.5,4,0,0.5,0,0),('Keaontay Ingram',2,0,0.5,0.5,0,0,0.5,0,0),('Keenan Allen',2,187,13.9,11.1,19,2,80.0,14,5),('Keith Kirkwood',2,0,0.5,0.5,2,0,0.5,0,0),('Kendrick Bourne',3,93,0.0,0.0,20,2,0.0,10,0),('Kenneth Gainwell',2,20,3.0,3.0,4,0,50.5,4,0),('Kenny Pickett',3,0,0.7,0.7,0,0,0.7,0,0),('Khalil Herbert',2,60,23.0,7.7,8,0,33.3,4,1),('Khalil Shakir',2,11,0.0,0.0,1,1,0.0,1,0),('Khari Blasingame',2,0,0.5,0.5,1,0,0.5,0,0),('Kirk Cousins',2,0,0.5,0.5,0,0,0.5,0,0),('Ko Kieft',2,0,0.5,0.5,3,0,0.5,0,0),('Kyle Allen',2,0,0.5,0.5,0,0,0.5,0,0),('Kyle Juszczyk',2,0,0.5,0.5,0,0,0.5,0,0),('Kyle Pitts',3,59,0.0,0.0,8,0,0.0,4,0),('Kylen Granson',2,55,5.3,4.0,10,1,75.0,7,2),('Lamar Jackson',2,0,0.5,0.5,0,0,0.5,0,0),('Latavius Murray',2,18,9.0,4.5,4,0,50.0,3,1),('Laviska Shenault',2,16,4.5,4.5,2,0,50.5,2,1),('Lawrence Cager',2,17,0.0,0.0,2,0,0.0,2,0),('Lil\'Jordan Humphrey',3,15,0.0,0.0,4,1,0.0,3,0),('Luke Musgrave',3,75,10.3,7.5,7,0,47.9,5,2),('Luke Schoonmaker',2,1,0.0,0.0,1,1,0.0,1,0),('Mac Jones',3,0,0.7,0.7,0,0,0.7,0,0),('Mack Hollins',3,91,0.0,0.0,10,0,0.0,6,0),('Malik Heath',3,0,0.3,0.3,2,0,0.3,0,0),('Mark Andrews',2,45,5.0,3.3,8,1,31.8,5,3),('Marquise Brown',2,82,9.3,5.6,15,1,60.0,9,3),('Marquise Goodwin',2,0,0.5,0.5,4,0,0.5,0,0),('Marvin Jones',2,8,2.5,1.1,6,0,17.1,2,0),('Marvin Mims',3,122,0.0,0.0,4,1,0.0,4,0),('Matt Breida',3,-2,0.5,0.5,4,0,100.0,4,0),('Matthew Stafford',2,0,0.5,0.5,0,0,0.5,0,0),('Mecole Hardman',2,6,3.5,3.5,1,0,50.5,1,0),('Michael Burton',3,3,0.0,0.0,1,0,0.0,1,0),('Michael Carter',2,15,3.0,1.5,4,0,50.0,3,1),('Michael Gallup',2,13,10.0,5.0,4,0,50.0,2,1),('Michael Mayer',3,2,1.7,1.7,1,0,67.0,1,0),('Michael Pittman',2,153,7.0,4.7,23,1,66.7,16,4),('Mike Boone',2,18,3.5,2.8,4,0,38.0,3,1),('Mike Evans',2,237,11.0,6.6,18,2,60.0,12,2),('Mike Gesicki',3,69,0.0,0.0,9,0,0.0,8,0),('Miles Boykin',3,5,0.0,0.0,1,0,0.0,1,0),('Miles Sanders',2,30,6.5,4.3,11,0,66.7,7,1),('Mo Alie-Cox',2,15,8.0,8.0,3,0,50.5,1,1),('Najee Harris',3,2,0.0,0.0,5,0,0.0,3,0),('Nelson Agholor',2,63,6.8,5.8,6,1,42.1,5,4),('Nick Chubb',2,21,0.0,0.0,4,0,0.0,4,0),('Nico Collins',2,226,13.3,7.3,20,1,54.5,13,3),('Noah Brown',2,20,3.9,3.0,4,0,38.0,3,0),('Noah Fant',2,56,7.5,7.5,4,0,50.5,4,2),('Noah Gray',2,69,12.7,12.7,8,0,100.0,6,2),('Odell Beckham',2,66,9.7,7.3,7,0,75.0,5,2),('Parris Campbell',3,47,4.5,3.8,16,0,83.3,11,0),('Pat Freiermuth',3,5,0.0,0.0,5,1,0.0,2,0),('Patrick Mahomes',2,0,0.5,0.5,0,0,0.5,0,0),('Patrick Taylor',3,0,0.3,0.3,1,0,0.3,0,0),('Peyton Hendershot',2,0,0.5,0.5,1,0,0.5,0,0),('Phillip Dorsett',2,0,0.5,0.5,1,0,0.5,0,0),('Pierre Strong',2,0,0.5,0.5,1,0,0.5,0,0),('Puka Nacua',2,266,11.9,7.9,35,0,66.7,25,6),('Quentin Johnston',2,16,7.0,3.5,5,0,50.0,3,0),('Raheem Mostert',3,19,4.5,4.5,3,0,67.0,3,0),('Rakim Jarrett',2,7,0.0,0.0,1,0,0.0,1,0),('Randall Cobb',2,0,0.5,0.5,2,0,0.5,0,0),('Rashaad Penny',2,5,0.0,0.0,1,0,0.0,1,0),('Rashee Rice',2,49,10.0,10.0,7,1,100.0,5,1),('Rashid Shaheed',2,152,15.8,15.8,10,1,100.0,9,3),('Rashod Bateman',2,53,6.0,6.0,6,0,100.0,6,1),('Reggie Gilliam',2,3,0.0,0.0,1,0,0.0,1,0),('Richie James',2,6,0.0,0.0,3,0,0.0,1,0),('Rico Dowdle',2,17,0.0,0.0,1,0,0.0,1,0),('River Cracraft',3,74,10.2,7.4,7,1,47.9,5,5),('Romeo Doubs',3,56,6.5,5.0,8,2,50.3,6,5),('Rondale Moore',2,47,11.0,11.0,4,0,100.0,4,1),('Ronnie Bell',2,24,0.0,0.0,2,1,0.0,2,0),('Ronnie Rivers',2,4,0.0,0.0,1,0,0.0,1,0),('Roschon Johnson',2,45,5.0,5.0,9,0,100.0,8,0),('Russell Wilson',3,0,0.7,0.7,0,0,0.7,0,0),('Ryan Tannehill',2,0,0.5,0.5,0,0,0.5,0,0),('Salvon Ahmed',3,28,6.5,3.5,6,0,33.7,3,1),('Sam Darnold',2,0,0.5,0.5,0,0,0.5,0,0),('Sam Howell',2,0,0.5,0.5,0,0,0.5,0,0),('Sam LaPorta',2,102,7.8,7.8,11,0,100.0,10,2),('Samaje Perine',3,57,0.0,0.0,8,0,0.0,7,0),('Saquon Barkley',2,41,4.8,4.1,11,1,85.7,9,2),('Sean Clifford',2,0,0.5,0.5,0,0,0.5,0,0),('Skyy Moore',2,70,12.2,9.2,7,1,38.0,3,2),('Stefon Diggs',2,168,10.2,7.8,20,1,76.9,17,6),('Sterling Shepard',3,4,3.0,3.0,2,0,67.0,1,1),('Stone Smartt',2,24,12.5,12.5,1,0,50.5,1,1),('T.J. Hockenson',2,101,9.4,8.3,17,2,87.5,15,4),('Tank Bigsby',2,0,0.5,0.5,1,0,0.5,0,0),('Tank Dell',2,106,11.3,8.5,14,1,75.0,10,3),('Taysom Hill',2,-1,0.5,0.5,3,0,25.5,1,0),('Teagan Quitoriano',2,11,6.0,6.0,1,0,50.5,1,1),('Tee Higgins',2,89,0.0,0.0,20,2,0.0,8,0),('Terrace Marshall',2,23,6.2,2.4,6,0,17.1,2,2),('Terry McLaurin',2,85,10.8,9.0,10,1,83.3,7,2),('Tony Jones',2,0,0.5,0.5,2,0,0.5,0,0),('Tony Pollard',2,49,6.0,4.0,11,0,66.7,9,1),('Travis Etienne',2,29,5.4,5.4,8,0,100.0,7,0),('Travis Kelce',2,26,3.8,1.9,9,1,22.7,4,1),('Trevor Lawrence',2,0,0.5,0.5,0,0,0.5,0,0),('Trey McBride',2,55,11.5,11.5,5,0,100.0,4,2),('Trey Palmer',2,28,4.0,2.7,5,1,66.7,3,1),('Treylon Burks',2,94,9.0,6.0,7,0,66.7,5,1),('Tua Tagovailoa',3,0,0.3,0.3,0,0,0.3,0,0),('Tutu Atwell',2,196,19.8,14.9,17,0,75.0,13,6),('Ty Chandler',2,27,4.5,4.5,3,0,100.0,3,0),('Ty Montgomery',3,9,0.0,0.0,4,0,0.0,2,0),('Tyjae Spears',2,1,1.0,0.7,4,0,13.0,1,0),('Tyler Allgeier',3,19,0.0,0.0,3,0,0.0,3,0),('Tyler Boyd',2,62,5.0,3.3,11,0,66.7,8,0),('Tyler Conklin',2,52,10.0,8.3,7,0,83.3,6,2),('Tyler Higbee',2,61,16.3,16.3,10,0,100.0,6,3),('Tyler Lockett',2,69,7.4,5.9,14,2,80.0,10,6),('Tyler Scott',2,14,0.0,0.0,2,0,0.0,2,0),('Tyreek Hill',3,255,10.9,7.4,24,3,44.8,16,14),('Van Jefferson',2,33,6.0,4.8,9,0,80.0,5,1),('Velus Jones',2,0,0.5,0.5,0,0,0.5,0,0),('Wan\'Dale Robinson',2,21,3.1,2.6,5,0,40.5,4,1),('Will Dissly',2,52,11.7,11.7,5,0,100.0,5,2),('Will Mallory',2,49,12.8,12.8,2,0,50.5,2,2),('Xavier Hutchinson',2,9,5.0,5.0,2,0,50.5,1,1),('Zach Charbonnet',2,14,4.0,4.0,2,0,50.5,2,0),('Zach Ertz',2,77,3.5,2.1,18,0,60.0,12,1),('Zach Pascal',2,9,0.0,0.0,2,0,0.0,1,0),('Zach Wilson',2,0,0.5,0.5,0,0,0.5,0,0),('Zack Moss',2,19,2.9,2.9,4,0,50.5,4,0),('Zay Flowers',2,140,15.5,12.4,15,0,80.0,13,2),('Zay Jones',2,55,6.0,4.5,13,1,36.2,5,4);
/*!40000 ALTER TABLE `wr_total_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 15:24:14
