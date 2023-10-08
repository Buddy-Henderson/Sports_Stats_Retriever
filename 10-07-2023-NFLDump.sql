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
INSERT INTO `defteam_passing_stats` VALUES ('Arizona',32.3,22.5,69.77,242.5,7.5,10.8,13.3,1.3,3.0),('Atlanta',31.5,19.8,62.70,176.3,5.6,8.9,10.3,1.5,1.3),('Baltimore',41.3,25.3,61.21,168.3,4.1,6.7,10.3,0.8,3.8),('Buffalo',27.5,18.5,67.27,169.5,6.2,9.2,9.3,0.8,4.0),('Carolina',27.5,18.0,65.45,176.8,6.4,9.8,10.0,1.0,3.0),('Chicago',35.6,25.2,70.79,286.0,8.0,11.3,13.2,2.4,1.4),('Cincinnati',30.3,19.3,63.64,207.3,6.9,10.8,11.0,1.5,3.0),('Cleveland',26.5,14.3,53.77,125.0,4.7,8.8,5.5,0.8,3.0),('Dallas',27.0,15.5,57.41,148.0,5.5,9.5,6.8,0.5,3.5),('Denver',32.0,25.0,78.13,285.5,8.9,11.4,13.8,3.3,2.0),('Detroit',38.5,24.3,62.99,219.8,5.7,9.1,11.5,1.3,3.3),('Green Bay',32.8,21.3,64.89,197.3,6.0,9.3,10.5,1.0,2.8),('Houston',31.3,22.3,71.20,195.3,6.2,8.8,9.5,0.5,1.8),('Indianapolis',37.5,25.8,68.67,263.8,7.0,10.2,12.8,1.3,3.5),('Jacksonville',35.3,23.0,65.25,238.3,6.8,10.4,11.5,1.5,2.3),('Kansas City',34.5,21.0,60.87,190.5,5.5,9.1,10.5,1.0,2.5),('LA Chargers',39.5,26.0,65.82,299.8,7.6,11.5,14.8,1.8,4.0),('LA Rams',31.3,17.5,56.00,184.8,5.9,10.6,10.0,0.8,1.8),('Las Vegas',30.8,21.8,70.73,202.8,6.6,9.3,11.0,2.0,1.8),('Miami',34.5,24.5,71.01,251.0,7.3,10.2,11.8,1.8,2.5),('Minnesota',34.3,26.3,76.64,233.5,6.8,8.9,11.5,1.8,2.8),('New England',33.8,22.8,67.41,196.0,5.8,8.6,11.0,0.8,2.5),('New Orleans',36.0,21.3,59.03,201.0,5.6,9.5,10.5,1.3,2.3),('NY Giants',29.8,18.5,62.18,207.8,7.0,11.2,9.5,1.0,1.0),('NY Jets',34.5,23.3,67.39,215.8,6.3,9.3,11.3,1.3,1.8),('Philadelphia',41.0,27.5,67.07,260.8,6.4,9.5,14.8,2.3,2.8),('Pittsburgh',36.0,21.5,59.72,254.5,7.1,11.8,12.8,2.0,3.3),('San Francisco',43.8,28.8,65.71,218.3,5.0,7.6,11.3,1.0,2.3),('Seattle',41.3,28.3,68.48,280.0,6.8,9.9,15.0,1.3,4.0),('Tampa Bay',37.3,24.0,64.43,223.8,6.0,9.3,11.5,1.0,3.0),('Tennessee',34.3,24.3,70.80,241.3,7.0,9.9,11.5,1.3,3.3),('Washington',32.0,19.8,61.88,238.6,7.5,12.1,10.0,2.0,3.2);
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
INSERT INTO `defteam_rushing_stats` VALUES ('Arizona',29.8,132.0,9.8,1.8,4.4),('Atlanta',29.0,114.5,5.5,0.3,3.9),('Baltimore',24.5,92.5,5.0,0.0,3.8),('Buffalo',18.8,118.5,5.0,0.5,6.3),('Carolina',28.8,136.3,7.8,1.5,4.7),('Chicago',26.4,98.2,6.4,0.8,3.7),('Cincinnati',30.8,157.0,8.5,0.8,5.1),('Cleveland',22.3,71.8,3.0,0.5,3.2),('Dallas',24.3,111.8,5.0,0.5,4.6),('Denver',31.5,176.0,8.8,1.8,5.6),('Detroit',20.0,60.8,4.5,0.8,3.0),('Green Bay',34.8,155.3,10.3,1.3,4.5),('Houston',26.8,116.5,7.0,1.8,4.4),('Indianapolis',33.5,126.8,8.0,1.5,3.8),('Jacksonville',24.0,94.8,5.3,0.5,3.9),('Kansas City',23.5,104.0,5.0,0.3,4.4),('LA Chargers',25.3,104.3,7.3,1.3,4.1),('LA Rams',25.0,111.0,5.5,1.3,4.4),('Las Vegas',31.3,134.3,6.8,1.0,4.3),('Miami',28.5,123.5,9.3,1.5,4.3),('Minnesota',31.8,111.3,8.3,0.8,3.5),('New England',26.8,101.0,5.8,1.0,3.8),('New Orleans',25.0,103.3,5.0,0.3,4.1),('NY Giants',30.3,133.8,8.0,1.8,4.4),('NY Jets',35.3,148.0,8.8,0.3,4.2),('Philadelphia',19.0,63.0,3.8,0.5,3.3),('Pittsburgh',31.5,148.5,7.0,0.5,4.7),('San Francisco',17.0,66.0,5.3,0.5,3.9),('Seattle',27.5,87.5,5.8,1.3,3.2),('Tampa Bay',23.0,94.8,5.8,0.5,4.1),('Tennessee',24.3,70.0,4.5,0.3,2.9),('Washington',28.0,133.6,7.8,0.8,4.8);
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
INSERT INTO `offteam_passing_stats` VALUES ('Arizona',30.8,21.8,70.7,194.3,6.6,8.9,1.0,1.5),('Atlanta',29.8,18.5,62.2,156.3,6.3,8.4,0.8,4.0),('Baltimore',26.3,19.5,74.3,183.8,7.6,9.4,1.0,2.8),('Buffalo',33.8,25.3,74.8,253.0,7.8,10.0,2.3,2.3),('Carolina',40.3,25.3,62.7,187.3,5.4,7.4,1.0,3.5),('Chicago',30.4,18.8,61.8,203.6,7.5,10.8,2.2,4.0),('Cincinnati',38.0,21.8,57.2,166.0,4.8,7.6,0.5,2.0),('Cleveland',34.5,21.0,60.9,172.5,5.8,8.2,1.0,4.0),('Dallas',34.8,24.8,71.2,218.8,6.7,8.8,1.0,1.5),('Denver',33.0,22.3,67.4,237.8,7.7,10.7,2.3,2.8),('Detroit',32.8,22.8,69.5,249.8,7.9,11.0,1.5,1.3),('Green Bay',33.0,18.5,56.1,206.3,6.8,11.1,2.0,2.0),('Houston',38.0,23.8,62.5,281.3,8.0,11.8,1.8,2.8),('Indianapolis',35.3,21.8,61.7,206.5,6.2,9.5,1.3,2.8),('Jacksonville',36.5,24.8,67.8,229.3,6.5,9.3,1.0,2.0),('Kansas City',37.0,23.8,64.2,256.0,7.0,10.8,2.0,0.5),('LA Chargers',36.5,26.0,71.2,269.0,7.9,10.3,2.0,2.3),('LA Rams',41.5,25.8,62.1,288.8,7.4,11.2,0.8,2.3),('Las Vegas',33.3,22.0,66.2,216.5,7.1,9.8,1.3,2.8),('Miami',34.5,24.8,71.7,334.3,9.9,13.5,2.5,1.3),('Minnesota',39.3,27.0,68.8,287.3,7.7,10.6,2.8,2.5),('New England',38.8,24.3,62.6,226.8,6.2,9.4,1.3,2.0),('New Orleans',35.8,23.0,64.3,197.8,6.2,8.6,0.5,3.8),('NY Giants',33.5,23.0,68.7,158.0,5.8,6.9,0.5,5.8),('NY Jets',31.0,18.0,58.1,157.3,5.7,8.7,1.0,2.8),('Philadelphia',32.5,22.0,67.7,226.8,7.4,10.3,1.3,2.8),('Pittsburgh',33.0,20.0,60.6,184.3,6.2,9.2,1.0,2.8),('San Francisco',28.0,20.3,72.3,245.0,9.1,12.1,1.3,1.8),('Seattle',32.3,21.5,66.7,211.3,7.0,9.8,1.3,1.8),('Tampa Bay',31.5,21.8,69.1,214.5,7.0,9.9,1.8,1.0),('Tennessee',27.3,17.0,62.4,169.0,7.2,9.9,0.8,4.0),('Washington',38.2,26.2,68.6,232.8,7.1,8.9,1.2,5.8);
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
INSERT INTO `offteam_rushing_stats` VALUES ('Arizona',27.3,7.3,143.5,1.0,5.3),('Atlanta',28.3,7.8,128.0,0.8,4.5),('Baltimore',34.8,9.3,151.3,2.0,4.4),('Buffalo',29.8,9.0,138.0,1.5,4.6),('Carolina',24.0,5.8,95.3,0.3,4.0),('Chicago',26.8,7.0,130.8,0.4,4.9),('Cincinnati',19.0,4.0,70.0,0.3,3.7),('Cleveland',32.8,7.8,143.8,0.8,4.4),('Dallas',34.3,8.3,141.3,1.0,4.1),('Denver',21.0,5.8,95.5,0.3,4.5),('Detroit',33.8,7.8,136.5,1.5,4.0),('Green Bay',22.8,4.0,74.5,0.8,3.3),('Houston',28.3,4.3,87.3,0.3,3.1),('Indianapolis',28.8,6.5,115.8,1.3,4.0),('Jacksonville',28.0,5.5,100.0,0.8,3.6),('Kansas City',29.3,9.0,137.0,0.8,4.7),('LA Chargers',28.3,7.5,119.8,1.3,4.2),('LA Rams',27.8,6.8,104.0,1.5,3.7),('Las Vegas',21.5,4.5,65.3,0.5,3.0),('Miami',28.0,7.8,176.8,2.5,6.3),('Minnesota',18.3,3.3,83.5,0.0,4.6),('New England',27.5,6.3,93.5,0.3,3.4),('New Orleans',25.3,5.3,87.5,0.5,3.5),('NY Giants',23.8,6.3,94.0,0.8,4.0),('NY Jets',20.5,4.8,95.5,0.3,4.7),('Philadelphia',35.0,10.8,165.3,1.3,4.7),('Pittsburgh',21.8,4.5,78.8,0.0,3.6),('San Francisco',33.0,8.8,153.0,2.3,4.6),('Seattle',24.8,6.5,108.5,1.3,4.4),('Tampa Bay',29.3,5.0,87.0,0.3,3.0),('Tennessee',26.0,6.0,111.0,0.8,4.3),('Washington',20.4,6.6,91.0,1.0,4.5);
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
INSERT INTO `qb_away_stats` VALUES ('A.J. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Aaron Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Aidan O\'Connell',238,6.1,39,24,61.5,0,1,0,0,7,50,1,68.1),('AJ Dillon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alec Ingold',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Alec Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alexander Mattison',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Allen Lazard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Amari Cooper',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ameer Abdullah',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Amon-Ra St. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Andrew Ogletree',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Andy Dalton',361,6.2,58,34,58.6,2,0,0,0,3,27,1,88.4),('Anthony Richardson',56,5.6,10,6,60.0,0,0,0,0,0,0,1,75.4),('Antonio Gibson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ashtyn Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Austin Hooper',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Bailey Zappe',57,6.3,9,4,44.4,0,0,0,0,1,7,1,65.5),('Baker Mayfield',419,6.3,66,46,69.7,5,1,0,0,2,11,2,105.6),('Ben Skowronek',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Boston Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandin Cooks',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Brandon Aiyuk',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Brandon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Braxton Berrios',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Breece Hall',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brevin Jordan',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Brian Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brock Purdy',426,7.9,54,36,66.7,2,0,0,0,4,17,2,102.9),('Bryce Young',146,3.8,38,20,52.6,1,2,0,0,2,19,1,48.8),('Brycen Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Byron Pringle',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('C.J. Stroud',522,7.1,74,48,64.9,2,0,0,0,5,46,2,94.5),('Cade Otton',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Calvin Austin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Calvin Ridley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cam Akers',0,0.0,0,0,0.0,0,0,0,0,0,0,0,0.0),('CeeDee Lamb',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chase Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Claypool',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chase Edmonds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chigoziem Okonkwo',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Godwin',0,0.0,1,0,0.0,0,0,0,0,0,0,2,39.6),('Chris Manhertz',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Olave',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Christian Kirk',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Christian McCaffrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chuba Hubbard',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Clyde Edwards-Helaire',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Colby Parkinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Cole Kmet',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Connor Heyward',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Cooper Rush',0,0.0,1,0,0.0,0,0,0,0,0,0,1,39.6),('Curtis Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.J. Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('D.K. Metcalf',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('D\'Andre Swift',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D\'Ernest Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dak Prescott',392,6.1,64,38,59.4,1,1,0,0,2,18,2,75.8),('Dallas Goedert',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dalton Kincaid',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dalton Schultz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalvin Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dameon Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Damien Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Daniel Bellinger',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Daniel Jones',458,6.6,69,48,69.6,2,2,0,0,5,25,2,85.3),('Darius Slayton',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Darnell Mooney',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Davante Adams',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('David Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('David Njoku',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dawson Knox',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('De\'Von Achane',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DeAndre Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('DeAndre Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deebo Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DeeJay Dallas',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Demario Douglas',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deonte Harty',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Derek Carr',331,6.1,54,34,63.0,1,1,0,0,7,50,2,78.5),('Derius Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Derrick Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deshaun Watson',235,5.9,40,22,55.0,1,1,0,0,6,25,1,70.3),('Desmond Ridder',392,5.7,69,40,58.0,1,2,0,0,11,93,2,66.8),('DeVante Parker',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Devin Duvernay',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Devin Singletary',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Devon Achane',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeVonta Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DJ Chark',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donald Parham',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Donovan Peoples-Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donovan Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Drake London',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Durham Smythe',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dyami Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Elijah Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Elijah Mitchell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Emari Demercado',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Erik Ezukanma',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Evan Engram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ezekiel Elliott',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Foster Moreau',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gabriel Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gardner Minshew',398,5.9,67,46,68.7,2,0,0,0,5,39,2,94.0),('Gary Brightwell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Geno Smith',438,7.2,61,45,73.8,3,0,0,0,3,30,2,109.9),('George Kittle',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('George Pickens',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gerald Everett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Giovanni Ricci',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gus Edwards',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Harrison Bryant',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Hayden Hurst',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Hunter Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Hunter Luepke',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Hunter Renfrow',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Irv Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah Hodgins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah Likely',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah McKenzie',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah Spiller',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isiah Pacheco',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ja\'Marr Chase',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jahan Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jahmyr Gibbs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jake Bobo',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jake Browning',0,0.0,1,0,0.0,0,0,0,0,0,0,1,39.6),('Jake Ferguson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jakob Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Jakobi Meyers',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jaleel McLaughlin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jalen Hurts',447,6.4,70,45,64.3,2,2,0,0,4,22,2,79.9),('Jalen Reeves-Maybin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jalin Hyatt',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jamal Agnew',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('James Conner',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('James Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jared Goff',463,7.3,63,41,65.1,2,1,0,0,3,23,2,90.9),('Jauan Jennings',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jaxon Smith-Njigba',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jayden Reed',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jerick McKinnon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jerome Ford',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jerry Jeudy',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jimmy Garoppolo',385,7.7,50,36,72.0,3,3,0,0,0,0,2,89.2),('Jimmy Graham',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Joe Burrow',247,4.0,61,34,55.7,0,0,0,0,5,41,2,65.4),('Joe Mixon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('John Bates',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('John Metchie',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jonathan Mingo',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jordan Addison',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jordan Akins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jordan Love',396,7.6,52,29,55.8,6,0,0,0,2,19,2,118.8),('Josh Allen',454,6.2,73,49,67.1,2,4,0,0,5,19,2,70.2),('Josh Downs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Jacobs',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Josh Oliver',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Joshua Dobbs',397,5.6,71,49,69.0,2,0,0,0,4,26,2,92.3),('Joshua Kelley',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josiah Deguara',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Justice Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Justin Fields',592,7.4,80,42,52.5,6,3,0,0,12,63,3,86.0),('Justin Herbert',710,8.1,88,67,76.1,5,0,0,0,4,33,2,118.1),('Justin Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Juwan Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('K.J. Osborn',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kalif Raymond',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keaontay Ingram',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keenan Allen',49,49.0,1,1,100.0,1,0,0,0,0,0,2,158.3),('Keith Kirkwood',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kendre Miller',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kendrick Bourne',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kenneth Gainwell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kenny Pickett',349,6.8,51,31,60.8,2,1,0,0,4,28,2,86.2),('KhaDarel Hodge',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Khalil Herbert',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Khari Blasingame',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Kirk Cousins',503,8.0,63,43,68.3,6,2,0,0,4,27,2,110.7),('Ko Kieft',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kyle Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kyle Pitts',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kylen Granson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Lamar Jackson',423,8.1,52,39,75.0,4,0,0,0,3,21,2,124.1),('Latavius Murray',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Laviska Shenault',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lil\'Jordan Humphrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Luke Musgrave',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mac Jones',351,7.0,50,27,54.0,1,2,0,0,1,0,2,66.3),('Mack Hollins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Malik Heath',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mark Andrews',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Marquise Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Marquise Goodwin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marvin Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Marvin Mims',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matt Breida',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matthew Stafford',922,8.3,111,69,62.2,2,3,0,0,8,64,3,83.2),('Mecole Hardman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Melvin Gordon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Gallup',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Michael Mayer',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Michael Pittman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Boone',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mike Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mike Gesicki',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Miles Sanders',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mo Alie-Cox',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Najee Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nate Adkins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nelson Agholor',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nick Chubb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nico Collins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Noah Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Noah Fant',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Noah Gray',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Odell Beckham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Parris Campbell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Pat Freiermuth',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Patrick Mahomes',508,7.2,71,47,66.2,3,3,0,0,2,13,2,83.5),('Patrick Taylor',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Peyton Hendershot',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Pharaoh Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Pierre Strong',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Puka Nacua',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Quentin Johnston',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Raheem Mostert',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Rakim Jarrett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Randall Cobb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashee Rice',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashid Shaheed',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashod Bateman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Richie James',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rico Dowdle',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('River Cracraft',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Romeo Doubs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Rondale Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Roschon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Russell Wilson',529,8.0,66,44,66.7,4,1,0,0,2,21,2,104.9),('Ryan Tannehill',198,5.8,34,16,47.1,0,3,0,0,3,17,1,28.8),('Salvon Ahmed',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Sam Darnold',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sam Howell',589,7.4,80,56,70.0,3,0,0,0,9,65,2,103.6),('Sam LaPorta',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Samaje Perine',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Saquon Barkley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Sean Clifford',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Skyy Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Stefon Diggs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Sterling Shepard',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Stone Smartt',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('T.J. Hockenson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tank Bigsby',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tank Dell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tanner Hudson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Taysom Hill',8,8.0,1,1,100.0,0,0,0,0,0,0,2,100.0),('Teagan Quitoriano',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tee Higgins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Terrace Marshall',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Terry McLaurin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tony Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tony Pollard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Etienne',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Kelce',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Trenton Irwin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Trevor Lawrence',241,7.5,32,24,75.0,2,1,0,0,2,4,1,103.8),('Trey McBride',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Trey Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Treylon Burks',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tua Tagovailoa',997,9.1,110,74,67.3,5,3,0,0,5,36,3,99.7),('Tutu Atwell',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Ty Chandler',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyjae Spears',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Allgeier',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Boyd',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Conklin',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Higbee',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Tyler Huntley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Lockett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyreek Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Van Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Velus Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Wan\'Dale Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Will Dissly',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Will Mallory',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Xavier Hutchinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Charbonnet',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Ertz',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Pascal',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Wilson',170,6.3,27,12,44.4,1,3,0,0,3,19,1,38.1),('Zack Moss',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zay Flowers',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zay Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0);
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
INSERT INTO `qb_home_stats` VALUES ('A.J. Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Aaron Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Aaron Rodgers',0,0.0,1,0,0.0,0,0,0,0,1,10,1,39.6),('AJ Dillon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alec Ingold',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Alec Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Alexander Mattison',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Allen Lazard',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Allen Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Alvin Kamara',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Amari Cooper',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Andrew Beck',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Andrew Ogletree',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Anthony McFarland',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Anthony Richardson',423,6.8,62,35,56.5,3,1,0,0,6,12,2,87.0),('Antoine Green',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Antonio Gibson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Austin Ekeler',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Baker Mayfield',463,7.8,59,41,69.5,2,1,0,0,2,13,2,96.9),('Ben Bredeson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ben Skowronek',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Bijan Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Blaine Gabbert',31,6.2,5,3,60.0,0,2,0,0,0,0,1,38.3),('Blake Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Boston Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandin Cooks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandon Aiyuk',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brandon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Braxton Berrios',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Breece Hall',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Brevin Jordan',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Brian Robinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Brock Purdy',593,10.2,58,45,77.6,3,0,0,0,3,22,2,126.5),('Bryce Young',357,5.5,65,47,72.3,1,0,0,0,9,69,2,90.4),('C.J. Beathard',9,4.5,2,2,100.0,0,0,0,0,0,0,1,85.4),('C.J. Ham',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('C.J. Stroud',690,9.0,77,46,59.7,4,0,0,0,6,47,2,106.5),('Cade Otton',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Calvin Austin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Calvin Ridley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('CeeDee Lamb',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Charlie Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Charlie Kolar',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chase Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chase Claypool',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chase Edmonds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chigoziem Okonkwo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Brooks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Chris Godwin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chris Rodriguez',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Christian Kirk',-1,-1.0,1,1,100.0,0,0,0,0,0,0,3,79.2),('Christian McCaffrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Chuba Hubbard',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Clyde Edwards-Helaire',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Colby Parkinson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Cole Kmet',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Colton Dowell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Connor Heyward',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Craig Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Curtis Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('D.J. Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('D.K. Metcalf',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('D\'Ernest Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('D\'Onta Foreman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dak Prescott',516,7.2,72,59,81.9,3,0,0,0,4,35,2,110.4),('Dallas Goedert',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dalton Kincaid',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dalton Schultz',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Dalvin Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Dameon Pierce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Damien Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Daniel Bellinger',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Daniel Jones',307,5.0,62,42,67.7,0,4,0,0,17,106,2,52.3),('Dare Ogunbowale',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Darius Slayton',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Darnell Mooney',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Davante Adams',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('David Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('David Njoku',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Dawson Knox',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('De\'Von Achane',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeAndre Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeAndre Hopkins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deebo Samuel',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('DeeJay Dallas',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Demario Douglas',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Deon Jackson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Deonte Harty',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Derek Carr',432,6.2,70,46,65.7,1,1,0,0,6,33,2,81.4),('Derius Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Derrick Henry',2,2.0,1,1,100.0,1,0,0,0,0,0,2,118.8),('Deshaun Watson',443,7.1,62,43,69.4,3,1,0,0,6,36,2,99.1),('Desmond Ridder',352,7.0,50,34,68.0,2,1,0,0,5,26,2,93.1),('DeVante Parker',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Devin Duvernay',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Devin Singletary',6,6.0,1,1,100.0,1,0,0,0,0,0,2,131.3),('DeVonta Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Diontae Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('DJ Chark',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Donald Parham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Donovan Peoples-Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Drake London',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Dyami Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Elijah Mitchell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Elijah Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Emari Demercado',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Evan Engram',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Evan Hull',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ezekiel Elliott',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gabriel Davis',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gardner Minshew',0,0.0,2,0,0.0,0,0,0,0,0,0,2,39.6),('Gary Brightwell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Geno Smith',408,6.6,62,39,62.9,2,1,0,0,4,34,2,86.0),('George Kittle',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('George Pickens',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Gerald Everett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Greg Dulcich',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gunner Olszewski',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Gus Edwards',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Harrison Bryant',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Hayden Hurst',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Hunter Henry',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Hunter Luepke',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Irv Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Isaiah Hodgins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah Likely',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isaiah McKenzie',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Isiah Pacheco',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('J.K. Dobbins',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ja\'Marr Chase',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jahan Dotson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Jahmyr Gibbs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jake Ferguson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jake Funk',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jakobi Meyers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jaleel McLaughlin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jalen Hurts',512,8.5,60,43,71.7,3,1,0,0,7,30,2,107.1),('Jalin Hyatt',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jamal Agnew',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('James Conner',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('James Cook',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jamison Crowder',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Jamycal Hasty',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jared Goff',566,8.3,68,50,73.5,4,2,0,0,2,7,2,105.4),('Jason Cabinda',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jauan Jennings',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jaxon Smith-Njigba',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jerick McKinnon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jerome Ford',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Jerry Jeudy',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jimmy Garoppolo',324,7.4,44,28,63.6,2,3,0,0,4,31,1,72.5),('Joe Burrow',481,5.3,90,53,58.9,2,2,0,0,3,23,2,71.6),('Joe Mixon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('John Bates',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('John Metchie',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jonathan Mingo',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Jonnu Smith',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jordan Addison',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Jordan Akins',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Jordan Love',505,6.3,80,45,56.3,2,3,0,0,6,57,2,68.0),('Jordan Mason',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Allen',594,9.6,62,52,83.9,7,0,0,0,4,17,2,144.2),('Josh Downs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josh Jacobs',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Oliver',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Josh Reynolds',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Joshua Dobbs',417,8.0,52,38,73.1,2,0,0,0,2,11,2,109.2),('Joshua Kelley',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Josiah Deguara',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('JuJu Smith-Schuster',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Julian Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Justice Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Justin Fields',551,7.7,72,52,72.2,5,2,0,0,8,62,2,105.7),('Justin Herbert',396,6.9,57,36,63.2,2,1,0,0,5,46,2,88.0),('Justin Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Justyn Ross',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Juwan Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('K.J. Osborn',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kalif Raymond',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kareem Hunt',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kayshon Boutte',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Keaontay Ingram',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Keenan Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Keisean Nixon',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Keith Kirkwood',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kendre Miller',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kendrick Bourne',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kenneth Gainwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Kenny Pickett',454,6.0,76,46,60.5,2,3,0,0,7,56,2,69.7),('Kenyan Drake',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Khalil Herbert',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Khalil Shakir',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Khari Blasingame',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kirk Cousins',711,7.6,94,65,69.1,5,2,0,0,6,38,2,100.1),('Kyle Allen',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kyle Juszczyk',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kyle Pitts',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Kylen Granson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lamar Jackson',371,7.0,53,39,73.6,0,1,0,0,8,38,2,84.7),('Latavius Murray',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Laviska Shenault',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lawrence Cager',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Lil\'Jordan Humphrey',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Luke Farrell',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Luke Musgrave',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Luke Schoonmaker',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Lynn Bowden',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mac Jones',547,5.7,96,66,68.8,4,2,0,0,6,41,2,88.3),('Mack Hollins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Malik Heath',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marcedes Lewis',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mark Andrews',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Marquise Brown',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Marquise Goodwin',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Marvin Mims',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matt Breida',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Matthew Stafford',307,5.6,55,34,61.8,1,2,0,0,1,10,1,67.8),('Melvin Gordon',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Burton',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Michael Carter',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Michael Gallup',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Michael Mayer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Michael Pittman',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Boone',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mike Evans',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mike Gesicki',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Mike White',67,33.5,2,2,100.0,1,0,0,0,0,0,1,158.3),('Miles Boykin',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Miles Sanders',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Mo Alie-Cox',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Najee Harris',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nelson Agholor',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Nick Bawden',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Nick Chubb',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Nico Collins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Noah Fant',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Noah Gray',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Odell Beckham',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Olamide Zaccheaus',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Parris Campbell',0,0.0,0,0,0.0,0,0,0,0,1,8,2,0.0),('Pat Freiermuth',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Patrick Mahomes',498,6.9,72,45,62.5,5,1,0,0,0,0,2,100.3),('Peyton Hendershot',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Phillip Dorsett',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Puka Nacua',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Quentin Johnston',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Raheem Mostert',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rakim Jarrett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Randall Cobb',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Rashaad Penny',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashee Rice',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashid Shaheed',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rashod Bateman',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ray-Ray McCloud',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Reggie Gilliam',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Richie James',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Rico Dowdle',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('River Cracraft',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Robbie Chosen',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Romeo Doubs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Rondale Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ronnie Bell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ronnie Rivers',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Roschon Johnson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Russell Wilson',485,7.3,66,45,68.2,5,1,0,0,9,42,2,108.5),('Ryan Tannehill',486,9.9,49,38,77.6,2,1,0,0,8,61,2,113.1),('Sam Darnold',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Sam Howell',760,6.8,111,75,67.6,3,6,0,0,20,120,3,73.4),('Sam LaPorta',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Samaje Perine',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Saquon Barkley',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Skyy Moore',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Stefon Diggs',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Sterling Shepard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('T.J. Hockenson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tank Bigsby',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Tank Dell',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tanner Hudson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Taysom Hill',13,13.0,1,1,100.0,0,0,0,0,1,3,2,118.8),('Tee Higgins',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Terrace Marshall',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Terry McLaurin',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Tim Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Tony Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tony Pollard',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Travis Etienne',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Travis Kelce',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Trevor Lawrence',702,6.3,111,72,64.9,2,1,0,0,6,30,3,84.7),('Trey McBride',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Trey Palmer',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Treylon Burks',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tua Tagovailoa',309,11.9,26,23,88.5,4,0,0,0,0,0,1,155.8),('Tucker Kraft',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tutu Atwell',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Ty Chandler',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Ty Montgomery',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Allgeier',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Boyd',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Conklin',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Tyler Higbee',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyler Lockett',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Tyler Scott',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Tyreek Hill',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Van Jefferson',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Velus Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Will Dissly',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Xavier Gipson',0,0.0,0,0,0.0,0,0,0,0,0,0,3,0.0),('Xavier Hutchinson',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Charbonnet',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Ertz',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zach Pascal',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zach Wilson',542,5.6,96,60,62.5,3,1,0,0,7,54,3,83.8),('Zack Moss',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zay Flowers',0,0.0,0,0,0.0,0,0,0,0,0,0,2,0.0),('Zay Jones',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0),('Zonovan Knight',0,0.0,0,0,0.0,0,0,0,0,0,0,1,0.0);
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
INSERT INTO `qb_total_stats` VALUES ('Anthony Richardson',479,6.4,72,41,0.6,3,1,0,0,6,12,3,83.1),('Baker Mayfield',882,7.1,125,87,0.7,7,2,0,0,4,24,4,101.3),('Brock Purdy',1019,9.1,112,81,0.7,5,0,0,0,7,39,4,114.7),('Bryce Young',503,4.9,103,67,0.7,2,2,0,0,11,88,3,76.5),('C.J. Stroud',1212,8.1,151,94,0.6,6,0,0,0,11,93,4,100.5),('Dak Prescott',908,6.7,136,97,0.7,4,1,0,0,6,53,4,93.1),('Daniel Jones',765,5.8,131,90,0.7,2,6,0,0,22,131,4,68.8),('Derek Carr',763,6.2,124,80,0.6,2,2,0,0,13,83,4,80.0),('Deshaun Watson',678,6.7,102,65,0.6,4,2,0,0,12,61,3,89.5),('Desmond Ridder',744,6.4,119,74,0.6,3,3,0,0,16,119,4,80.0),('Gardner Minshew',398,3.0,69,46,0.7,2,0,0,0,5,39,4,66.8),('Geno Smith',846,6.9,123,84,0.7,5,1,0,0,7,64,4,98.0),('Jalen Hurts',959,7.5,130,88,0.7,5,3,0,0,11,52,4,93.5),('Jared Goff',1029,7.8,131,91,0.7,6,3,0,0,5,30,4,98.2),('Jimmy Garoppolo',709,7.6,94,64,0.7,5,6,0,0,4,31,3,83.6),('Joe Burrow',728,4.7,151,87,0.6,2,2,0,0,8,64,4,68.5),('Jordan Love',901,7.0,132,74,0.6,8,3,0,0,8,76,4,93.4),('Josh Allen',1048,7.9,135,101,0.7,9,4,0,0,9,36,4,107.2),('Joshua Dobbs',814,6.8,123,87,0.7,4,0,0,0,6,37,4,100.8),('Justin Fields',1143,7.5,152,94,0.6,11,5,0,0,20,125,5,93.9),('Justin Herbert',1106,7.5,145,103,0.7,7,1,0,0,9,79,4,103.1),('Kenny Pickett',803,6.4,127,77,0.6,4,4,0,0,11,84,4,78.0),('Kirk Cousins',1214,7.8,157,108,0.7,11,4,0,0,10,65,4,105.4),('Lamar Jackson',794,7.6,105,78,0.7,4,1,0,0,11,59,4,104.4),('Mac Jones',898,6.4,146,93,0.6,5,4,0,0,7,41,4,77.3),('Matthew Stafford',1229,7.6,166,103,0.6,3,5,0,0,9,74,4,79.4),('Patrick Mahomes',1006,7.1,143,92,0.6,8,4,0,0,2,13,4,91.9),('Russell Wilson',1014,7.7,132,89,0.7,9,2,0,0,11,63,4,106.7),('Ryan Tannehill',684,8.5,83,54,0.7,2,4,0,0,11,78,3,85.0),('Sam Howell',1349,7.0,191,131,0.7,6,6,0,0,29,185,5,85.5),('Taysom Hill',21,10.5,2,2,1.0,0,0,0,0,1,3,4,109.4),('Trevor Lawrence',943,6.6,143,96,0.7,4,2,0,0,8,34,4,89.5),('Tua Tagovailoa',1306,9.8,136,97,0.7,9,3,0,0,5,36,4,113.7),('Zach Wilson',712,5.8,123,72,0.6,4,4,0,0,10,73,4,72.4);
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
INSERT INTO `rb_away_stats` VALUES ('A.J. Brown',2,0,0,0.00,0,0),('Aaron Jones',1,9,41,4.60,1,3),('Aidan O\'Connell',1,3,3,1.00,1,2),('AJ Dillon',2,28,74,2.60,0,3),('Alec Ingold',3,0,0,0.00,0,0),('Alec Pierce',2,0,0,0.00,0,0),('Alexander Mattison',2,25,123,4.90,0,3),('Allen Lazard',1,0,0,0.00,0,0),('Amari Cooper',1,0,0,0.00,0,0),('Ameer Abdullah',2,0,0,0.00,0,0),('Amon-Ra St. Brown',1,0,0,0.00,0,0),('Andrew Ogletree',1,0,0,0.00,0,0),('Andy Dalton',1,2,11,5.50,0,1),('Anthony Richardson',1,3,35,11.70,2,2),('Antonio Gibson',2,8,28,3.50,0,2),('Ashtyn Davis',1,1,4,4.00,0,1),('Austin Hooper',3,0,0,0.00,0,0),('Bailey Zappe',1,0,0,0.00,0,0),('Baker Mayfield',2,16,42,2.60,0,4),('Ben Skowronek',1,0,0,0.00,0,0),('Boston Scott',1,1,3,3.00,0,0),('Brandin Cooks',2,0,0,0.00,0,0),('Brandon Aiyuk',2,0,0,0.00,0,0),('Brandon Johnson',2,0,0,0.00,0,0),('Braxton Berrios',3,1,11,11.00,0,1),('Breece Hall',1,4,9,2.30,0,0),('Brevin Jordan',2,0,0,0.00,0,0),('Brian Robinson',1,18,87,4.80,2,8),('Brock Purdy',2,6,25,4.20,1,3),('Bryce Young',1,3,17,5.70,0,1),('Brycen Hopkins',3,0,0,0.00,0,0),('Byron Pringle',1,0,0,0.00,0,0),('C.J. Stroud',2,7,34,4.90,0,2),('Cade Otton',2,0,0,0.00,0,0),('Calvin Austin',2,1,5,5.00,0,0),('Calvin Ridley',1,0,0,0.00,0,0),('Cam Akers',0,27,69,2.60,1,5),('CeeDee Lamb',2,2,9,4.50,0,0),('Chase Brown',1,0,0,0.00,0,0),('Chase Claypool',2,0,0,0.00,0,0),('Chase Edmonds',1,2,8,4.00,0,1),('Chigoziem Okonkwo',2,0,0,0.00,0,0),('Chris Evans',2,2,12,6.00,0,0),('Chris Godwin',2,0,0,0.00,0,0),('Chris Manhertz',2,0,0,0.00,0,0),('Chris Moore',2,0,0,0.00,0,0),('Chris Olave',2,0,0,0.00,0,0),('Christian Kirk',1,0,0,0.00,0,0),('Christian McCaffrey',2,42,268,6.40,2,11),('Chuba Hubbard',2,10,62,6.20,0,6),('Clyde Edwards-Helaire',2,4,12,3.00,0,0),('Colby Parkinson',2,0,0,0.00,0,0),('Cole Kmet',3,0,0,0.00,0,0),('Connor Heyward',2,1,0,0.00,0,0),('Cooper Rush',1,0,0,0.00,0,0),('Curtis Samuel',1,1,13,13.00,0,1),('D.J. Moore',3,0,0,0.00,0,0),('D.K. Metcalf',2,0,0,0.00,0,0),('D\'Andre Swift',1,1,3,3.00,0,0),('D\'Ernest Johnson',1,1,-4,-4.00,0,0),('Dak Prescott',2,4,30,7.50,0,2),('Dallas Goedert',2,0,0,0.00,0,0),('Dalton Kincaid',2,0,0,0.00,0,0),('Dalton Schultz',1,0,0,0.00,0,0),('Dalvin Cook',1,4,7,1.80,0,0),('Dameon Pierce',2,25,69,2.80,1,2),('Damien Harris',2,6,18,3.00,0,1),('Daniel Bellinger',2,0,0,0.00,0,0),('Daniel Jones',2,11,64,5.80,1,6),('Darius Slayton',2,0,0,0.00,0,0),('Darnell Mooney',3,0,0,0.00,0,0),('Davante Adams',3,0,0,0.00,0,0),('David Bell',1,0,0,0.00,0,0),('David Montgomery',2,53,195,3.70,4,13),('David Njoku',1,0,0,0.00,0,0),('Dawson Knox',2,0,0,0.00,0,0),('De\'Von Achane',2,9,106,11.80,2,4),('DeAndre Carter',3,0,0,0.00,0,0),('DeAndre Hopkins',2,0,0,0.00,0,0),('Deebo Samuel',2,7,46,6.60,1,2),('DeeJay Dallas',1,1,3,3.00,0,0),('Demario Douglas',2,1,5,5.00,0,0),('Deonte Harty',2,3,2,0.70,0,0),('Derek Carr',2,3,-4,-1.30,0,0),('Derius Davis',2,1,10,10.00,0,1),('Derrick Henry',2,26,83,3.20,0,4),('Deshaun Watson',1,6,22,3.70,0,2),('Desmond Ridder',2,3,9,3.00,0,0),('DeVante Parker',2,0,0,0.00,0,0),('Devin Duvernay',2,3,15,5.00,0,0),('Devin Singletary',1,7,15,2.10,0,0),('Devon Achane',1,1,5,5.00,0,0),('DeVonta Smith',1,0,0,0.00,0,0),('DJ Chark',1,0,0,0.00,0,0),('Donald Parham',2,0,0,0.00,0,0),('Donovan Peoples-Jones',1,0,0,0.00,0,0),('Donovan Smith',1,0,0,0.00,0,0),('Drake London',2,0,0,0.00,0,0),('Durham Smythe',2,0,0,0.00,0,0),('Dyami Brown',2,0,0,0.00,0,0),('Elijah Dotson',2,4,6,1.50,0,0),('Elijah Mitchell',1,5,10,2.00,0,0),('Elijah Moore',1,1,5,5.00,0,0),('Emari Demercado',2,1,3,3.00,0,0),('Erik Ezukanma',2,5,22,4.40,0,1),('Evan Engram',1,0,0,0.00,0,0),('Ezekiel Elliott',2,22,96,4.40,0,5),('Foster Moreau',1,0,0,0.00,0,0),('Gabriel Davis',2,1,-2,-2.00,0,0),('Gardner Minshew',2,2,3,1.50,0,0),('Gary Brightwell',2,4,5,1.30,0,0),('Geno Smith',2,3,20,6.70,0,0),('George Kittle',2,0,0,0.00,0,0),('George Pickens',2,0,0,0.00,0,0),('Gerald Everett',2,0,0,0.00,0,0),('Giovanni Ricci',1,0,0,0.00,0,0),('Gus Edwards',2,25,110,4.40,1,7),('Harrison Bryant',1,0,0,0.00,0,0),('Hayden Hurst',2,0,0,0.00,0,0),('Hunter Henry',2,0,0,0.00,0,0),('Hunter Luepke',2,1,9,9.00,0,1),('Hunter Renfrow',2,0,0,0.00,0,0),('Irv Smith',1,0,0,0.00,0,0),('Isaiah Hodgins',2,0,0,0.00,0,0),('Isaiah Likely',2,0,0,0.00,0,0),('Isaiah McKenzie',2,0,0,0.00,0,0),('Isaiah Spiller',1,1,3,3.00,0,0),('Isiah Pacheco',2,32,185,5.80,1,9),('Ja\'Marr Chase',2,1,2,2.00,0,0),('Jahan Dotson',2,0,0,0.00,0,0),('Jahmyr Gibbs',2,15,82,5.50,0,4),('Jake Bobo',2,0,0,0.00,0,0),('Jake Browning',1,1,-1,-1.00,0,0),('Jake Ferguson',2,0,0,0.00,0,0),('Jakob Johnson',3,0,0,0.00,0,0),('Jakobi Meyers',2,0,0,0.00,0,0),('Jaleel McLaughlin',2,12,87,7.30,0,3),('Jalen Hurts',2,19,65,3.40,1,8),('Jalen Reeves-Maybin',1,1,3,3.00,0,1),('Jalin Hyatt',2,0,0,0.00,0,0),('Jamal Agnew',1,2,-2,-1.00,0,0),('James Conner',2,25,114,4.60,0,4),('James Cook',2,27,144,5.30,0,9),('Jared Goff',2,7,9,1.30,0,2),('Jauan Jennings',2,0,0,0.00,0,0),('Jaxon Smith-Njigba',1,0,0,0.00,0,0),('Jayden Reed',2,1,-2,-2.00,0,0),('Jerick McKinnon',2,4,5,1.30,0,1),('Jerome Ford',1,16,106,6.60,0,3),('Jerry Jeudy',2,0,0,0.00,0,0),('Jimmy Garoppolo',2,10,12,1.20,0,2),('Jimmy Graham',2,0,0,0.00,0,0),('Joe Burrow',2,4,0,0.00,0,1),('Joe Mixon',2,27,123,4.60,0,6),('John Bates',2,0,0,0.00,0,0),('John Metchie',1,0,0,0.00,0,0),('Jonathan Mingo',2,0,0,0.00,0,0),('Jordan Addison',2,0,0,0.00,0,0),('Jordan Akins',1,0,0,0.00,0,0),('Jordan Love',2,5,35,7.00,0,2),('Josh Allen',2,9,82,9.10,1,6),('Josh Downs',2,0,0,0.00,0,0),('Josh Jacobs',3,45,104,2.30,1,7),('Josh Oliver',2,0,0,0.00,0,0),('Josh Palmer',2,0,0,0.00,0,0),('Josh Reynolds',1,0,0,0.00,0,0),('Joshua Dobbs',2,15,45,3.00,0,5),('Joshua Kelley',2,24,51,2.10,0,4),('Josiah Deguara',2,0,0,0.00,0,0),('Justice Hill',2,14,74,5.30,0,4),('Justin Fields',3,26,107,4.10,1,11),('Justin Herbert',2,3,11,3.70,0,1),('Justin Jefferson',2,0,0,0.00,0,0),('Juwan Johnson',2,0,0,0.00,0,0),('K.J. Osborn',2,0,0,0.00,0,0),('Kalif Raymond',1,0,0,0.00,0,0),('Keaontay Ingram',1,5,-4,-0.80,0,0),('Keenan Allen',2,0,0,0.00,0,0),('Keith Kirkwood',2,0,0,0.00,0,0),('Kendre Miller',1,9,34,3.80,0,3),('Kendrick Bourne',2,0,0,0.00,0,0),('Kenneth Gainwell',2,28,97,3.50,0,4),('Kenny Pickett',2,5,20,4.00,0,4),('KhaDarel Hodge',2,0,0,0.00,0,0),('Khalil Herbert',3,24,142,5.90,0,6),('Khari Blasingame',3,8,26,3.30,0,0),('Kirk Cousins',2,1,0,0.00,0,0),('Ko Kieft',2,0,0,0.00,0,0),('Kyle Allen',1,2,-2,-1.00,0,0),('Kyle Pitts',2,1,-4,-4.00,0,0),('Kylen Granson',2,0,0,0.00,0,0),('Lamar Jackson',2,21,81,3.90,2,6),('Latavius Murray',2,7,23,3.30,1,2),('Laviska Shenault',1,2,5,2.50,0,0),('Lil\'Jordan Humphrey',2,0,0,0.00,0,0),('Luke Musgrave',2,0,0,0.00,0,0),('Mac Jones',2,7,20,2.90,0,2),('Mack Hollins',2,0,0,0.00,0,0),('Malik Heath',2,0,0,0.00,0,0),('Mark Andrews',2,0,0,0.00,0,0),('Marquise Brown',2,1,29,29.00,0,1),('Marquise Goodwin',1,0,0,0.00,0,0),('Marvin Jones',2,0,0,0.00,0,0),('Marvin Mims',2,1,3,3.00,0,0),('Matt Breida',2,5,22,4.40,1,1),('Matthew Stafford',3,6,32,5.30,0,2),('Mecole Hardman',1,0,0,0.00,0,0),('Melvin Gordon',1,3,21,7.00,0,1),('Michael Carter',1,2,8,4.00,0,1),('Michael Gallup',2,0,0,0.00,0,0),('Michael Mayer',3,0,0,0.00,0,0),('Michael Pittman',1,0,0,0.00,0,0),('Mike Boone',2,0,0,0.00,0,0),('Mike Evans',2,0,0,0.00,0,0),('Mike Gesicki',2,0,0,0.00,0,0),('Miles Sanders',1,18,72,4.00,0,2),('Mo Alie-Cox',2,0,0,0.00,0,0),('Najee Harris',2,33,136,4.10,0,5),('Nate Adkins',2,0,0,0.00,0,0),('Nelson Agholor',2,0,0,0.00,0,0),('Nick Chubb',1,10,64,6.40,0,1),('Nico Collins',2,0,0,0.00,0,0),('Noah Brown',1,1,-1,-1.00,0,0),('Noah Fant',2,0,0,0.00,0,0),('Noah Gray',2,0,0,0.00,0,0),('Odell Beckham',1,0,0,0.00,0,0),('Parris Campbell',2,0,0,0.00,0,0),('Pat Freiermuth',2,0,0,0.00,0,0),('Patrick Mahomes',2,14,81,5.80,0,7),('Patrick Taylor',2,6,23,3.80,0,1),('Peyton Hendershot',2,0,0,0.00,0,0),('Pharaoh Brown',2,0,0,0.00,0,0),('Pierre Strong',1,2,1,0.50,1,1),('Puka Nacua',3,0,0,0.00,0,0),('Quentin Johnston',2,0,0,0.00,0,0),('Raheem Mostert',3,35,167,4.80,3,9),('Rakim Jarrett',2,1,0,0.00,0,0),('Randall Cobb',1,0,0,0.00,0,0),('Rashee Rice',1,0,0,0.00,0,0),('Rashid Shaheed',1,0,0,0.00,0,0),('Rashod Bateman',1,0,0,0.00,0,0),('Richie James',1,0,0,0.00,0,0),('Rico Dowdle',2,10,45,4.50,0,2),('River Cracraft',2,0,0,0.00,0,0),('Romeo Doubs',2,0,0,0.00,0,0),('Rondale Moore',2,2,12,6.00,0,0),('Roschon Johnson',3,15,89,5.90,0,3),('Russell Wilson',2,4,13,3.30,0,2),('Ryan Tannehill',1,3,5,1.70,0,0),('Salvon Ahmed',3,6,24,4.00,0,1),('Sam Darnold',1,2,-2,-1.00,0,0),('Sam Howell',2,8,53,6.60,0,3),('Sam LaPorta',2,0,0,0.00,0,0),('Samaje Perine',2,9,21,2.30,0,1),('Saquon Barkley',1,17,63,3.70,1,5),('Sean Clifford',1,1,0,0.00,0,0),('Skyy Moore',2,2,19,9.50,0,1),('Stefon Diggs',2,0,0,0.00,0,0),('Sterling Shepard',2,0,0,0.00,0,0),('Stone Smartt',1,0,0,0.00,0,0),('T.J. Hockenson',2,0,0,0.00,0,0),('Tank Bigsby',1,7,13,1.90,1,3),('Tank Dell',2,0,0,0.00,0,0),('Tanner Hudson',1,0,0,0.00,0,0),('Taysom Hill',2,13,87,6.70,0,5),('Teagan Quitoriano',1,0,0,0.00,0,0),('Tee Higgins',1,0,0,0.00,0,0),('Terrace Marshall',2,0,0,0.00,0,0),('Terry McLaurin',2,0,0,0.00,0,0),('Tony Jones',2,20,65,3.30,2,6),('Tony Pollard',1,14,70,5.00,2,5),('Travis Etienne',1,18,77,4.30,1,4),('Travis Kelce',2,0,0,0.00,0,0),('Trenton Irwin',2,0,0,0.00,0,0),('Trevor Lawrence',1,7,21,3.00,0,2),('Trey McBride',2,0,0,0.00,0,0),('Trey Palmer',2,0,0,0.00,0,0),('Treylon Burks',2,1,9,9.00,0,0),('Tua Tagovailoa',3,11,15,1.40,0,2),('Tutu Atwell',3,1,22,22.00,0,1),('Ty Chandler',2,1,0,0.00,0,0),('Tyjae Spears',1,3,27,9.00,0,1),('Tyler Allgeier',2,14,28,2.00,0,2),('Tyler Boyd',2,0,0,0.00,0,0),('Tyler Conklin',1,0,0,0.00,0,0),('Tyler Higbee',3,0,0,0.00,0,0),('Tyler Huntley',1,2,8,4.00,0,0),('Tyler Lockett',2,0,0,0.00,0,0),('Tyreek Hill',3,1,14,14.00,0,1),('Van Jefferson',3,1,4,4.00,0,0),('Velus Jones',3,1,-3,-3.00,0,0),('Wan\'Dale Robinson',1,0,0,0.00,0,0),('Will Dissly',2,0,0,0.00,0,0),('Will Mallory',1,0,0,0.00,0,0),('Xavier Hutchinson',2,0,0,0.00,0,0),('Zach Charbonnet',2,9,47,5.20,0,3),('Zach Ertz',2,0,0,0.00,0,0),('Zach Pascal',2,0,0,0.00,0,0),('Zach Wilson',1,5,36,7.20,0,2),('Zack Moss',2,48,210,4.40,1,14),('Zay Flowers',2,2,0,0.00,0,0),('Zay Jones',1,0,0,0.00,0,0);
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
INSERT INTO `rb_home_stats` VALUES ('A.J. Brown',2,0,0,0.00,0,0),('Aaron Jones',1,5,18,3.60,0,0),('Aaron Rodgers',1,0,0,0.00,0,0),('AJ Dillon',2,16,44,2.80,0,3),('Alec Ingold',1,2,0,0.00,0,0),('Alec Pierce',1,0,0,0.00,0,0),('Alexander Mattison',2,31,127,4.10,0,7),('Allen Lazard',3,0,0,0.00,0,0),('Allen Robinson',2,0,0,0.00,0,0),('Alvin Kamara',1,11,51,4.60,0,2),('Amari Cooper',3,0,0,0.00,0,0),('Andrew Beck',2,2,2,1.00,0,1),('Andrew Ogletree',1,0,0,0.00,0,0),('Anthony McFarland',2,0,0,0.00,0,0),('Anthony Richardson',2,20,96,4.80,2,6),('Antoine Green',1,0,0,0.00,0,0),('Antonio Gibson',3,5,26,5.20,0,1),('Austin Ekeler',1,16,117,7.30,1,4),('Baker Mayfield',2,7,19,2.70,0,0),('Ben Bredeson',2,0,0,0.00,0,0),('Ben Skowronek',1,1,11,11.00,0,1),('Bijan Robinson',2,29,180,6.20,0,11),('Blaine Gabbert',1,2,-1,-0.50,0,0),('Blake Bell',2,0,0,0.00,0,0),('Boston Scott',1,5,40,8.00,0,3),('Brandin Cooks',1,0,0,0.00,0,0),('Brandon Aiyuk',1,0,0,0.00,0,0),('Brandon Johnson',2,0,0,0.00,0,0),('Braxton Berrios',1,0,0,0.00,0,0),('Breece Hall',3,28,201,7.20,0,6),('Brevin Jordan',2,0,0,0.00,0,0),('Brian Robinson',1,19,59,3.10,0,5),('Brock Purdy',2,6,-1,-0.20,1,2),('Bryce Young',2,4,44,11.00,0,2),('C.J. Beathard',1,0,0,0.00,0,0),('C.J. Ham',2,0,0,0.00,0,0),('C.J. Stroud',2,7,17,2.40,0,3),('Cade Otton',1,0,0,0.00,0,0),('Calvin Austin',2,1,-2,-2.00,0,0),('Calvin Ridley',1,0,0,0.00,0,0),('CeeDee Lamb',2,1,12,12.00,0,1),('Charlie Jones',2,0,0,0.00,0,0),('Charlie Kolar',2,0,0,0.00,0,0),('Chase Brown',2,1,2,2.00,0,0),('Chase Claypool',1,0,0,0.00,0,0),('Chase Edmonds',1,2,12,6.00,0,1),('Chigoziem Okonkwo',1,0,0,0.00,0,0),('Chris Brooks',1,9,66,7.30,0,1),('Chris Godwin',2,0,0,0.00,0,0),('Chris Moore',2,0,0,0.00,0,0),('Chris Rodriguez',1,3,7,2.30,0,1),('Christian Kirk',3,0,0,0.00,0,0),('Christian McCaffrey',2,38,191,5.00,4,12),('Chuba Hubbard',2,16,57,3.60,0,5),('Clyde Edwards-Helaire',2,21,77,3.70,1,5),('Colby Parkinson',1,0,0,0.00,0,0),('Cole Kmet',2,2,1,0.50,0,1),('Colton Dowell',1,0,0,0.00,0,0),('Connor Heyward',2,0,0,0.00,0,0),('Craig Reynolds',1,3,7,2.30,0,0),('Curtis Samuel',1,1,6,6.00,0,0),('D.J. Moore',2,0,0,0.00,0,0),('D.K. Metcalf',2,0,0,0.00,0,0),('D\'Ernest Johnson',3,5,12,2.40,0,0),('D\'Onta Foreman',1,5,16,3.20,0,2),('Dak Prescott',2,7,13,1.90,0,2),('Dallas Goedert',2,0,0,0.00,0,0),('Dalton Kincaid',2,0,0,0.00,0,0),('Dalton Schultz',1,0,0,0.00,0,0),('Dalvin Cook',3,26,67,2.60,0,4),('Dameon Pierce',1,15,31,2.10,0,1),('Damien Harris',2,13,62,4.80,1,6),('Daniel Bellinger',2,0,0,0.00,0,0),('Daniel Jones',2,23,109,4.70,0,7),('Dare Ogunbowale',1,2,4,2.00,0,1),('Darius Slayton',1,0,0,0.00,0,0),('Darnell Mooney',2,0,0,0.00,0,0),('Davante Adams',1,0,0,0.00,0,0),('David Bell',3,0,0,0.00,0,0),('David Montgomery',1,16,67,4.20,1,3),('David Njoku',3,0,0,0.00,0,0),('Dawson Knox',2,0,0,0.00,0,0),('De\'Von Achane',1,18,203,11.30,2,6),('DeAndre Carter',1,0,0,0.00,0,0),('DeAndre Hopkins',2,0,0,0.00,0,0),('Deebo Samuel',1,1,2,2.00,0,0),('DeeJay Dallas',2,4,11,2.80,0,0),('Demario Douglas',2,0,0,0.00,0,0),('Deon Jackson',1,13,14,1.10,0,1),('Deonte Harty',2,0,0,0.00,0,0),('Derek Carr',2,5,5,1.00,0,1),('Derius Davis',2,3,51,17.00,0,1),('Derrick Henry',2,47,202,4.30,2,12),('Deshaun Watson',2,9,61,6.80,1,5),('Desmond Ridder',2,11,38,3.50,1,3),('DeVante Parker',1,0,0,0.00,0,0),('Devin Duvernay',2,0,0,0.00,0,0),('Devin Singletary',2,11,39,3.50,0,1),('DeVonta Smith',1,0,0,0.00,0,0),('Diontae Johnson',2,0,0,0.00,0,0),('DJ Chark',2,0,0,0.00,0,0),('Donald Parham',1,0,0,0.00,0,0),('Donovan Peoples-Jones',1,0,0,0.00,0,0),('Drake London',2,0,0,0.00,0,0),('Dyami Brown',3,0,0,0.00,0,0),('Elijah Mitchell',1,11,42,3.80,0,2),('Elijah Moore',3,6,-2,-0.30,0,1),('Emari Demercado',2,3,0,0.00,0,0),('Evan Engram',3,0,0,0.00,0,0),('Evan Hull',1,1,1,1.00,0,0),('Ezekiel Elliott',2,12,42,3.50,0,4),('Gabriel Davis',2,0,0,0.00,0,0),('Gardner Minshew',2,0,0,0.00,0,0),('Gary Brightwell',2,5,14,2.80,0,0),('Geno Smith',2,5,2,0.40,0,0),('George Kittle',2,0,0,0.00,0,0),('George Pickens',2,0,0,0.00,0,0),('Gerald Everett',2,1,2,2.00,0,0),('Greg Dulcich',1,0,0,0.00,0,0),('Gunner Olszewski',1,0,0,0.00,0,0),('Gus Edwards',2,19,83,4.40,0,4),('Harrison Bryant',3,3,6,2.00,0,3),('Hayden Hurst',2,0,0,0.00,0,0),('Hunter Henry',2,0,0,0.00,0,0),('Hunter Luepke',2,2,4,2.00,1,1),('Irv Smith',1,0,0,0.00,0,0),('Isaiah Hodgins',2,0,0,0.00,0,0),('Isaiah Likely',2,0,0,0.00,0,0),('Isaiah McKenzie',2,0,0,0.00,0,0),('Isiah Pacheco',1,8,23,2.90,0,2),('J.K. Dobbins',1,8,22,2.80,1,1),('Ja\'Marr Chase',2,0,0,0.00,0,0),('Jahan Dotson',3,0,0,0.00,0,0),('Jahmyr Gibbs',2,24,97,4.00,0,4),('Jake Ferguson',2,0,0,0.00,0,0),('Jake Funk',2,2,10,5.00,0,0),('Jakobi Meyers',1,0,0,0.00,0,0),('Jaleel McLaughlin',2,1,5,5.00,1,1),('Jalen Hurts',2,21,69,3.30,2,9),('Jalin Hyatt',2,0,0,0.00,0,0),('Jamal Agnew',2,0,0,0.00,0,0),('James Conner',2,37,204,5.50,2,11),('James Cook',2,29,152,5.20,1,5),('Jamison Crowder',3,0,0,0.00,0,0),('Jamycal Hasty',1,0,0,0.00,0,0),('Jared Goff',2,5,3,0.60,1,1),('Jason Cabinda',2,1,0,0.00,0,0),('Jauan Jennings',1,0,0,0.00,0,0),('Jaxon Smith-Njigba',1,0,0,0.00,0,0),('Jerick McKinnon',2,2,9,4.50,0,1),('Jerome Ford',3,34,80,2.40,1,3),('Jerry Jeudy',1,0,0,0.00,0,0),('Jimmy Garoppolo',1,2,7,3.50,0,1),('Joe Burrow',2,4,3,0.80,0,0),('Joe Mixon',2,32,124,3.90,1,9),('John Bates',3,0,0,0.00,0,0),('John Metchie',2,0,0,0.00,0,0),('Jonathan Mingo',1,0,0,0.00,0,0),('Jonnu Smith',2,0,0,0.00,0,0),('Jordan Addison',2,0,0,0.00,0,0),('Jordan Akins',3,0,0,0.00,0,0),('Jordan Love',2,11,37,3.40,2,3),('Jordan Mason',2,6,21,3.50,0,1),('Josh Allen',2,7,24,3.40,1,3),('Josh Downs',2,0,0,0.00,0,0),('Josh Jacobs',1,17,62,3.60,0,3),('Josh Oliver',1,0,0,0.00,0,0),('Josh Palmer',1,0,0,0.00,0,0),('Josh Reynolds',1,0,0,0.00,0,0),('Joshua Dobbs',2,9,96,10.70,1,6),('Joshua Kelley',2,33,156,4.70,1,11),('Josiah Deguara',2,0,0,0.00,0,0),('JuJu Smith-Schuster',2,0,0,0.00,0,0),('Julian Hill',1,0,0,0.00,0,0),('Justice Hill',1,8,9,1.10,2,2),('Justin Fields',2,13,84,6.50,0,3),('Justin Herbert',2,17,44,2.60,3,7),('Justin Jefferson',2,0,0,0.00,0,0),('Justyn Ross',1,0,0,0.00,0,0),('Juwan Johnson',1,0,0,0.00,0,0),('K.J. Osborn',1,0,0,0.00,0,0),('Kalif Raymond',1,1,11,11.00,0,1),('Kareem Hunt',2,10,25,2.50,0,2),('Kayshon Boutte',1,0,0,0.00,0,0),('Keaontay Ingram',2,7,19,2.70,0,0),('Keenan Allen',2,2,6,3.00,0,1),('Keisean Nixon',2,1,11,11.00,0,1),('Keith Kirkwood',2,0,0,0.00,0,0),('Kendre Miller',1,1,3,3.00,0,0),('Kendrick Bourne',2,0,0,0.00,0,0),('Kenneth Gainwell',1,4,14,3.50,0,1),('Kenny Pickett',2,5,-2,-0.40,0,0),('Kenyan Drake',1,1,0,0.00,0,0),('Khalil Herbert',2,27,130,4.80,0,6),('Khalil Shakir',1,0,0,0.00,0,0),('Khari Blasingame',2,0,0,0.00,0,0),('Kirk Cousins',2,4,17,4.30,0,1),('Kyle Allen',2,5,-5,-1.00,0,0),('Kyle Juszczyk',2,3,6,2.00,0,1),('Kyle Pitts',2,0,0,0.00,0,0),('Kylen Granson',1,0,0,0.00,0,0),('Lamar Jackson',2,20,139,7.00,2,11),('Latavius Murray',2,10,54,5.40,1,4),('Laviska Shenault',1,1,7,7.00,0,0),('Lawrence Cager',2,0,0,0.00,0,0),('Lil\'Jordan Humphrey',2,0,0,0.00,0,0),('Luke Farrell',3,0,0,0.00,0,0),('Luke Musgrave',2,0,0,0.00,0,0),('Luke Schoonmaker',1,0,0,0.00,0,0),('Lynn Bowden',1,0,0,0.00,0,0),('Mac Jones',2,7,40,5.70,0,5),('Mack Hollins',2,0,0,0.00,0,0),('Malik Heath',1,0,0,0.00,0,0),('Marcedes Lewis',2,0,0,0.00,0,0),('Mark Andrews',1,0,0,0.00,0,0),('Marquise Brown',2,0,0,0.00,0,0),('Marquise Goodwin',3,1,1,1.00,0,0),('Marvin Mims',2,2,10,5.00,0,0),('Matt Breida',2,16,39,2.40,0,3),('Matthew Stafford',1,4,17,4.30,0,1),('Melvin Gordon',1,10,32,3.20,0,1),('Michael Burton',2,1,3,3.00,0,1),('Michael Carter',3,2,15,7.50,0,1),('Michael Gallup',2,0,0,0.00,0,0),('Michael Mayer',1,0,0,0.00,0,0),('Michael Pittman',1,0,0,0.00,0,0),('Mike Boone',1,1,4,4.00,0,1),('Mike Evans',2,0,0,0.00,0,0),('Mike Gesicki',2,0,0,0.00,0,0),('Mike White',1,1,-1,-1.00,0,0),('Miles Boykin',2,0,0,0.00,0,0),('Miles Sanders',1,14,43,3.10,0,2),('Mo Alie-Cox',1,0,0,0.00,0,0),('Najee Harris',2,16,74,4.60,0,5),('Nelson Agholor',2,0,0,0.00,0,0),('Nick Bawden',3,1,1,1.00,1,1),('Nick Chubb',1,18,106,5.90,0,7),('Nico Collins',2,0,0,0.00,0,0),('Noah Fant',2,0,0,0.00,0,0),('Noah Gray',2,0,0,0.00,0,0),('Odell Beckham',1,0,0,0.00,0,0),('Olamide Zaccheaus',2,0,0,0.00,0,0),('Parris Campbell',2,0,0,0.00,0,0),('Pat Freiermuth',2,0,0,0.00,0,0),('Patrick Mahomes',2,9,73,8.10,0,5),('Peyton Hendershot',1,1,0,0.00,0,0),('Phillip Dorsett',1,0,0,0.00,0,0),('Puka Nacua',1,2,4,2.00,0,1),('Quentin Johnston',2,0,0,0.00,0,0),('Raheem Mostert',1,13,82,6.30,3,5),('Rakim Jarrett',2,0,0,0.00,0,0),('Randall Cobb',3,0,0,0.00,0,0),('Rashaad Penny',1,3,9,3.00,0,1),('Rashee Rice',1,1,-3,-3.00,0,0),('Rashid Shaheed',1,2,11,5.50,0,0),('Rashod Bateman',2,0,0,0.00,0,0),('Ray-Ray McCloud',2,0,0,0.00,0,0),('Reggie Gilliam',2,0,0,0.00,0,0),('Richie James',1,0,0,0.00,0,0),('Rico Dowdle',2,10,35,3.50,0,2),('River Cracraft',1,0,0,0.00,0,0),('Robbie Chosen',1,0,0,0.00,0,0),('Romeo Doubs',2,0,0,0.00,0,0),('Rondale Moore',2,3,54,18.00,1,1),('Ronnie Bell',2,0,0,0.00,0,0),('Ronnie Rivers',1,0,0,0.00,0,0),('Roschon Johnson',2,10,33,3.30,1,3),('Russell Wilson',2,7,57,8.10,0,6),('Ryan Tannehill',2,7,23,3.30,1,1),('Sam Darnold',2,2,-2,-1.00,0,0),('Sam Howell',3,7,48,6.90,1,2),('Sam LaPorta',2,0,0,0.00,0,0),('Samaje Perine',2,9,45,5.00,0,3),('Saquon Barkley',1,12,51,4.30,0,2),('Skyy Moore',2,1,4,4.00,0,0),('Stefon Diggs',2,0,0,0.00,0,0),('Sterling Shepard',1,0,0,0.00,0,0),('T.J. Hockenson',2,0,0,0.00,0,0),('Tank Bigsby',3,5,20,4.00,1,2),('Tank Dell',2,2,13,6.50,0,0),('Tanner Hudson',1,0,0,0.00,0,0),('Taysom Hill',2,7,14,2.00,0,1),('Tee Higgins',2,0,0,0.00,0,0),('Terrace Marshall',2,0,0,0.00,0,0),('Terry McLaurin',3,0,0,0.00,0,0),('Tim Jones',3,0,0,0.00,0,0),('Tony Jones',2,1,5,5.00,0,0),('Tony Pollard',1,25,72,2.90,0,3),('Travis Etienne',3,51,183,3.60,0,6),('Travis Kelce',1,0,0,0.00,0,0),('Trevor Lawrence',3,16,80,5.00,0,5),('Trey McBride',2,0,0,0.00,0,0),('Trey Palmer',1,0,0,0.00,0,0),('Treylon Burks',1,0,0,0.00,0,0),('Tua Tagovailoa',1,0,0,0.00,0,0),('Tucker Kraft',2,0,0,0.00,0,0),('Tutu Atwell',1,1,5,5.00,0,0),('Ty Chandler',2,6,27,4.50,0,1),('Ty Montgomery',2,1,7,7.00,0,0),('Tyler Allgeier',2,31,123,4.00,2,8),('Tyler Boyd',2,0,0,0.00,0,0),('Tyler Conklin',3,0,0,0.00,0,0),('Tyler Higbee',1,0,0,0.00,0,0),('Tyler Lockett',2,0,0,0.00,0,0),('Tyler Scott',1,0,0,0.00,0,0),('Tyreek Hill',1,0,0,0.00,0,0),('Van Jefferson',1,0,0,0.00,0,0),('Velus Jones',1,1,10,10.00,0,0),('Will Dissly',1,0,0,0.00,0,0),('Xavier Gipson',3,2,13,6.50,0,1),('Xavier Hutchinson',2,0,0,0.00,0,0),('Zach Charbonnet',2,12,57,4.80,0,5),('Zach Ertz',2,0,0,0.00,0,0),('Zach Pascal',1,0,0,0.00,0,0),('Zach Wilson',3,7,21,3.00,0,2),('Zack Moss',1,18,70,3.90,0,3),('Zay Flowers',2,3,11,3.70,0,0),('Zay Jones',1,0,0,0.00,0,0),('Zonovan Knight',1,3,13,4.30,0,0);
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
INSERT INTO `rb_total_stats` VALUES ('A.J. Brown',4,0,0,0.00,0,0),('Aaron Jones',2,14,59,4.10,1,3),('Aaron Rodgers',1,0,0,0.00,0,0),('Aidan O\'Connell',1,3,3,1.00,1,2),('AJ Dillon',4,44,118,2.70,0,3),('Alec Ingold',4,2,0,0.00,0,0),('Alec Pierce',3,0,0,0.00,0,0),('Alexander Mattison',4,56,250,4.50,0,3),('Allen Lazard',4,0,0,0.00,0,0),('Allen Robinson',2,0,0,0.00,0,0),('Alvin Kamara',1,11,51,4.60,0,0),('Amari Cooper',4,0,0,0.00,0,0),('Ameer Abdullah',2,0,0,0.00,0,0),('Amon-Ra St. Brown',1,0,0,0.00,0,0),('Andrew Beck',2,2,2,1.00,0,0),('Andrew Ogletree',2,0,0,0.00,0,0),('Andy Dalton',1,2,11,5.50,0,1),('Anthony McFarland',2,0,0,0.00,0,0),('Anthony Richardson',3,23,131,7.10,4,2),('Antoine Green',1,0,0,0.00,0,0),('Antonio Gibson',5,13,54,4.50,0,2),('Ashtyn Davis',1,1,4,4.00,0,1),('Austin Ekeler',1,16,117,7.30,1,0),('Austin Hooper',3,0,0,0.00,0,0),('Bailey Zappe',1,0,0,0.00,0,0),('Baker Mayfield',4,23,61,2.60,0,4),('Ben Bredeson',2,0,0,0.00,0,0),('Ben Skowronek',2,1,11,5.50,0,0),('Bijan Robinson',2,29,180,6.20,0,0),('Blaine Gabbert',1,2,-1,-0.50,0,0),('Blake Bell',2,0,0,0.00,0,0),('Boston Scott',2,6,43,5.50,0,0),('Brandin Cooks',3,0,0,0.00,0,0),('Brandon Aiyuk',3,0,0,0.00,0,0),('Brandon Johnson',4,0,0,0.00,0,0),('Braxton Berrios',4,1,11,8.20,0,1),('Breece Hall',4,32,210,6.00,0,0),('Brevin Jordan',4,0,0,0.00,0,0),('Brian Robinson',2,37,146,4.00,2,8),('Brock Purdy',4,12,24,2.00,2,3),('Bryce Young',3,7,61,9.20,0,1),('Brycen Hopkins',3,0,0,0.00,0,0),('Byron Pringle',1,0,0,0.00,0,0),('C.J. Beathard',1,0,0,0.00,0,0),('C.J. Ham',2,0,0,0.00,0,0),('C.J. Stroud',4,14,51,3.60,0,2),('Cade Otton',3,0,0,0.00,0,0),('Calvin Austin',4,2,3,1.50,0,0),('Calvin Ridley',2,0,0,0.00,0,0),('Cam Akers',0,27,69,0.00,1,5),('CeeDee Lamb',4,3,21,8.20,0,0),('Charlie Jones',2,0,0,0.00,0,0),('Charlie Kolar',2,0,0,0.00,0,0),('Chase Brown',3,1,2,1.30,0,0),('Chase Claypool',3,0,0,0.00,0,0),('Chase Edmonds',2,4,20,5.00,0,1),('Chigoziem Okonkwo',3,0,0,0.00,0,0),('Chris Brooks',1,9,66,7.30,0,0),('Chris Evans',2,2,12,6.00,0,0),('Chris Godwin',4,0,0,0.00,0,0),('Chris Manhertz',2,0,0,0.00,0,0),('Chris Moore',4,0,0,0.00,0,0),('Chris Olave',2,0,0,0.00,0,0),('Chris Rodriguez',1,3,7,2.30,0,0),('Christian Kirk',4,0,0,0.00,0,0),('Christian McCaffrey',4,80,459,5.70,6,11),('Chuba Hubbard',4,26,119,4.90,0,6),('Clyde Edwards-Helaire',4,25,89,3.40,1,0),('Colby Parkinson',3,0,0,0.00,0,0),('Cole Kmet',5,2,1,0.20,0,0),('Colton Dowell',1,0,0,0.00,0,0),('Connor Heyward',4,1,0,0.00,0,0),('Cooper Rush',1,0,0,0.00,0,0),('Craig Reynolds',1,3,7,2.30,0,0),('Curtis Samuel',2,2,19,9.50,0,1),('D.J. Moore',5,0,0,0.00,0,0),('D.K. Metcalf',4,0,0,0.00,0,0),('D\'Andre Swift',1,1,3,3.00,0,0),('D\'Ernest Johnson',4,6,8,0.80,0,0),('D\'Onta Foreman',1,5,16,3.20,0,0),('Dak Prescott',4,11,43,4.70,0,2),('Dallas Goedert',4,0,0,0.00,0,0),('Dalton Kincaid',4,0,0,0.00,0,0),('Dalton Schultz',2,0,0,0.00,0,0),('Dalvin Cook',4,30,74,2.40,0,0),('Dameon Pierce',3,40,100,2.60,1,2),('Damien Harris',4,19,80,3.90,1,1),('Daniel Bellinger',4,0,0,0.00,0,0),('Daniel Jones',4,34,173,5.20,1,6),('Dare Ogunbowale',1,2,4,2.00,0,0),('Darius Slayton',3,0,0,0.00,0,0),('Darnell Mooney',5,0,0,0.00,0,0),('Davante Adams',4,0,0,0.00,0,0),('David Bell',4,0,0,0.00,0,0),('David Montgomery',3,69,262,3.90,5,13),('David Njoku',4,0,0,0.00,0,0),('Dawson Knox',4,0,0,0.00,0,0),('De\'Von Achane',3,27,309,11.60,4,4),('DeAndre Carter',4,0,0,0.00,0,0),('DeAndre Hopkins',4,0,0,0.00,0,0),('Deebo Samuel',3,8,48,5.10,1,2),('DeeJay Dallas',3,5,14,2.90,0,0),('Demario Douglas',4,1,5,2.50,0,0),('Deon Jackson',1,13,14,1.10,0,0),('Deonte Harty',4,3,2,0.40,0,0),('Derek Carr',4,8,1,-0.20,0,0),('Derius Davis',4,4,61,13.50,0,1),('Derrick Henry',4,73,285,3.80,2,4),('Deshaun Watson',3,15,83,5.80,1,2),('Desmond Ridder',4,14,47,3.20,1,0),('DeVante Parker',3,0,0,0.00,0,0),('Devin Duvernay',4,3,15,2.50,0,0),('Devin Singletary',3,18,54,3.00,0,0),('Devon Achane',1,1,5,5.00,0,0),('DeVonta Smith',2,0,0,0.00,0,0),('Diontae Johnson',2,0,0,0.00,0,0),('DJ Chark',3,0,0,0.00,0,0),('Donald Parham',3,0,0,0.00,0,0),('Donovan Peoples-Jones',2,0,0,0.00,0,0),('Donovan Smith',1,0,0,0.00,0,0),('Drake London',4,0,0,0.00,0,0),('Durham Smythe',2,0,0,0.00,0,0),('Dyami Brown',5,0,0,0.00,0,0),('Elijah Dotson',2,4,6,1.50,0,0),('Elijah Mitchell',2,16,52,2.90,0,0),('Elijah Moore',4,7,3,1.00,0,0),('Emari Demercado',4,4,3,1.50,0,0),('Erik Ezukanma',2,5,22,4.40,0,1),('Evan Engram',4,0,0,0.00,0,0),('Evan Hull',1,1,1,1.00,0,0),('Ezekiel Elliott',4,34,138,4.00,0,5),('Foster Moreau',1,0,0,0.00,0,0),('Gabriel Davis',4,1,-2,-1.00,0,0),('Gardner Minshew',4,2,3,0.80,0,0),('Gary Brightwell',4,9,19,2.00,0,0),('Geno Smith',4,8,22,3.60,0,0),('George Kittle',4,0,0,0.00,0,0),('George Pickens',4,0,0,0.00,0,0),('Gerald Everett',4,1,2,1.00,0,0),('Giovanni Ricci',1,0,0,0.00,0,0),('Greg Dulcich',1,0,0,0.00,0,0),('Gunner Olszewski',1,0,0,0.00,0,0),('Gus Edwards',4,44,193,4.40,1,7),('Harrison Bryant',4,3,6,1.50,0,0),('Hayden Hurst',4,0,0,0.00,0,0),('Hunter Henry',4,0,0,0.00,0,0),('Hunter Luepke',4,3,13,5.50,1,1),('Hunter Renfrow',2,0,0,0.00,0,0),('Irv Smith',2,0,0,0.00,0,0),('Isaiah Hodgins',4,0,0,0.00,0,0),('Isaiah Likely',4,0,0,0.00,0,0),('Isaiah McKenzie',4,0,0,0.00,0,0),('Isaiah Spiller',1,1,3,3.00,0,0),('Isiah Pacheco',3,40,208,4.80,1,9),('J.K. Dobbins',1,8,22,2.80,1,0),('Ja\'Marr Chase',4,1,2,1.00,0,0),('Jahan Dotson',5,0,0,0.00,0,0),('Jahmyr Gibbs',4,39,179,4.80,0,4),('Jake Bobo',2,0,0,0.00,0,0),('Jake Browning',1,1,-1,-1.00,0,0),('Jake Ferguson',4,0,0,0.00,0,0),('Jake Funk',2,2,10,5.00,0,0),('Jakob Johnson',3,0,0,0.00,0,0),('Jakobi Meyers',3,0,0,0.00,0,0),('Jaleel McLaughlin',4,13,92,6.20,1,3),('Jalen Hurts',4,40,134,3.40,3,8),('Jalen Reeves-Maybin',1,1,3,3.00,0,1),('Jalin Hyatt',4,0,0,0.00,0,0),('Jamal Agnew',3,2,-2,-0.30,0,0),('James Conner',4,62,318,5.00,2,4),('James Cook',4,56,296,5.20,1,9),('Jamison Crowder',3,0,0,0.00,0,0),('Jamycal Hasty',1,0,0,0.00,0,0),('Jared Goff',4,12,12,1.00,1,2),('Jason Cabinda',2,1,0,0.00,0,0),('Jauan Jennings',3,0,0,0.00,0,0),('Jaxon Smith-Njigba',2,0,0,0.00,0,0),('Jayden Reed',2,1,-2,-2.00,0,0),('Jerick McKinnon',4,6,14,2.90,0,1),('Jerome Ford',4,50,186,3.40,1,3),('Jerry Jeudy',3,0,0,0.00,0,0),('Jimmy Garoppolo',3,12,19,2.00,0,2),('Jimmy Graham',2,0,0,0.00,0,0),('Joe Burrow',4,8,3,0.40,0,1),('Joe Mixon',4,59,247,4.20,1,6),('John Bates',5,0,0,0.00,0,0),('John Metchie',3,0,0,0.00,0,0),('Jonathan Mingo',3,0,0,0.00,0,0),('Jonnu Smith',2,0,0,0.00,0,0),('Jordan Addison',4,0,0,0.00,0,0),('Jordan Akins',4,0,0,0.00,0,0),('Jordan Love',4,16,72,5.20,2,2),('Jordan Mason',2,6,21,3.50,0,0),('Josh Allen',4,16,106,6.20,2,6),('Josh Downs',4,0,0,0.00,0,0),('Josh Jacobs',4,62,166,2.60,1,7),('Josh Oliver',3,0,0,0.00,0,0),('Josh Palmer',3,0,0,0.00,0,0),('Josh Reynolds',2,0,0,0.00,0,0),('Joshua Dobbs',4,24,141,6.80,1,5),('Joshua Kelley',4,57,207,3.40,1,4),('Josiah Deguara',4,0,0,0.00,0,0),('JuJu Smith-Schuster',2,0,0,0.00,0,0),('Julian Hill',1,0,0,0.00,0,0),('Justice Hill',3,22,83,3.90,2,4),('Justin Fields',5,39,191,5.10,1,11),('Justin Herbert',4,20,55,3.20,3,1),('Justin Jefferson',4,0,0,0.00,0,0),('Justyn Ross',1,0,0,0.00,0,0),('Juwan Johnson',3,0,0,0.00,0,0),('K.J. Osborn',3,0,0,0.00,0,0),('Kalif Raymond',2,1,11,5.50,0,0),('Kareem Hunt',2,10,25,2.50,0,0),('Kayshon Boutte',1,0,0,0.00,0,0),('Keaontay Ingram',3,12,15,1.50,0,0),('Keenan Allen',4,2,6,1.50,0,0),('Keisean Nixon',2,1,11,11.00,0,0),('Keith Kirkwood',4,0,0,0.00,0,0),('Kendre Miller',2,10,37,3.40,0,3),('Kendrick Bourne',4,0,0,0.00,0,0),('Kenneth Gainwell',3,32,111,3.50,0,4),('Kenny Pickett',4,10,18,1.80,0,4),('Kenyan Drake',1,1,0,0.00,0,0),('KhaDarel Hodge',2,0,0,0.00,0,0),('Khalil Herbert',5,51,272,5.50,0,6),('Khalil Shakir',1,0,0,0.00,0,0),('Khari Blasingame',5,8,26,2.00,0,0),('Kirk Cousins',4,5,17,2.20,0,0),('Ko Kieft',2,0,0,0.00,0,0),('Kyle Allen',3,7,-7,-1.00,0,0),('Kyle Juszczyk',2,3,6,2.00,0,0),('Kyle Pitts',4,1,-4,-2.00,0,0),('Kylen Granson',3,0,0,0.00,0,0),('Lamar Jackson',4,41,220,5.40,4,6),('Latavius Murray',4,17,77,4.40,2,2),('Laviska Shenault',2,3,12,4.80,0,0),('Lawrence Cager',2,0,0,0.00,0,0),('Lil\'Jordan Humphrey',4,0,0,0.00,0,0),('Luke Farrell',3,0,0,0.00,0,0),('Luke Musgrave',4,0,0,0.00,0,0),('Luke Schoonmaker',1,0,0,0.00,0,0),('Lynn Bowden',1,0,0,0.00,0,0),('Mac Jones',4,14,60,4.30,0,2),('Mack Hollins',4,0,0,0.00,0,0),('Malik Heath',3,0,0,0.00,0,0),('Marcedes Lewis',2,0,0,0.00,0,0),('Mark Andrews',3,0,0,0.00,0,0),('Marquise Brown',4,1,29,14.50,0,1),('Marquise Goodwin',4,1,1,0.80,0,0),('Marvin Jones',2,0,0,0.00,0,0),('Marvin Mims',4,3,13,4.00,0,0),('Matt Breida',4,21,61,3.40,1,1),('Matthew Stafford',4,10,49,5.00,0,2),('Mecole Hardman',1,0,0,0.00,0,0),('Melvin Gordon',2,13,53,5.10,0,1),('Michael Burton',2,1,3,3.00,0,0),('Michael Carter',4,4,23,6.60,0,1),('Michael Gallup',4,0,0,0.00,0,0),('Michael Mayer',4,0,0,0.00,0,0),('Michael Pittman',2,0,0,0.00,0,0),('Mike Boone',3,1,4,1.30,0,0),('Mike Evans',4,0,0,0.00,0,0),('Mike Gesicki',4,0,0,0.00,0,0),('Mike White',1,1,-1,-1.00,0,0),('Miles Boykin',2,0,0,0.00,0,0),('Miles Sanders',2,32,115,3.60,0,2),('Mo Alie-Cox',3,0,0,0.00,0,0),('Najee Harris',4,49,210,4.40,0,5),('Nate Adkins',2,0,0,0.00,0,0),('Nelson Agholor',4,0,0,0.00,0,0),('Nick Bawden',3,1,1,1.00,1,0),('Nick Chubb',2,28,170,6.20,0,1),('Nico Collins',4,0,0,0.00,0,0),('Noah Brown',1,1,-1,-1.00,0,0),('Noah Fant',4,0,0,0.00,0,0),('Noah Gray',4,0,0,0.00,0,0),('Odell Beckham',2,0,0,0.00,0,0),('Olamide Zaccheaus',2,0,0,0.00,0,0),('Parris Campbell',4,0,0,0.00,0,0),('Pat Freiermuth',4,0,0,0.00,0,0),('Patrick Mahomes',4,23,154,7.00,0,7),('Patrick Taylor',2,6,23,3.80,0,1),('Peyton Hendershot',3,1,0,0.00,0,0),('Pharaoh Brown',2,0,0,0.00,0,0),('Phillip Dorsett',1,0,0,0.00,0,0),('Pierre Strong',1,2,1,0.50,1,1),('Puka Nacua',4,2,4,0.50,0,0),('Quentin Johnston',4,0,0,0.00,0,0),('Raheem Mostert',4,48,249,5.20,6,9),('Rakim Jarrett',4,1,0,0.00,0,0),('Randall Cobb',4,0,0,0.00,0,0),('Rashaad Penny',1,3,9,3.00,0,0),('Rashee Rice',2,1,-3,-1.50,0,0),('Rashid Shaheed',2,2,11,2.80,0,0),('Rashod Bateman',3,0,0,0.00,0,0),('Ray-Ray McCloud',2,0,0,0.00,0,0),('Reggie Gilliam',2,0,0,0.00,0,0),('Richie James',2,0,0,0.00,0,0),('Rico Dowdle',4,20,80,4.00,0,2),('River Cracraft',3,0,0,0.00,0,0),('Robbie Chosen',1,0,0,0.00,0,0),('Romeo Doubs',4,0,0,0.00,0,0),('Rondale Moore',4,5,66,12.00,1,0),('Ronnie Bell',2,0,0,0.00,0,0),('Ronnie Rivers',1,0,0,0.00,0,0),('Roschon Johnson',5,25,122,4.90,1,3),('Russell Wilson',4,11,70,5.70,0,2),('Ryan Tannehill',3,10,28,2.80,1,0),('Salvon Ahmed',3,6,24,4.00,0,1),('Sam Darnold',3,4,-4,-1.00,0,0),('Sam Howell',5,15,101,6.80,1,3),('Sam LaPorta',4,0,0,0.00,0,0),('Samaje Perine',4,18,66,3.60,0,1),('Saquon Barkley',2,29,114,4.00,1,5),('Sean Clifford',1,1,0,0.00,0,0),('Skyy Moore',4,3,23,6.80,0,1),('Stefon Diggs',4,0,0,0.00,0,0),('Sterling Shepard',3,0,0,0.00,0,0),('Stone Smartt',1,0,0,0.00,0,0),('T.J. Hockenson',4,0,0,0.00,0,0),('Tank Bigsby',4,12,33,3.50,2,3),('Tank Dell',4,2,13,3.20,0,0),('Tanner Hudson',2,0,0,0.00,0,0),('Taysom Hill',4,20,101,4.40,0,5),('Teagan Quitoriano',1,0,0,0.00,0,0),('Tee Higgins',3,0,0,0.00,0,0),('Terrace Marshall',4,0,0,0.00,0,0),('Terry McLaurin',5,0,0,0.00,0,0),('Tim Jones',3,0,0,0.00,0,0),('Tony Jones',4,21,70,4.20,2,6),('Tony Pollard',2,39,142,4.00,2,5),('Travis Etienne',4,69,260,3.80,1,4),('Travis Kelce',3,0,0,0.00,0,0),('Trenton Irwin',2,0,0,0.00,0,0),('Trevor Lawrence',4,23,101,4.50,0,2),('Trey McBride',4,0,0,0.00,0,0),('Trey Palmer',3,0,0,0.00,0,0),('Treylon Burks',3,1,9,6.00,0,0),('Tua Tagovailoa',4,11,15,1.00,0,2),('Tucker Kraft',2,0,0,0.00,0,0),('Tutu Atwell',4,2,27,17.80,0,1),('Ty Chandler',4,7,27,2.20,0,0),('Ty Montgomery',2,1,7,7.00,0,0),('Tyjae Spears',1,3,27,9.00,0,1),('Tyler Allgeier',4,45,151,3.00,2,2),('Tyler Boyd',4,0,0,0.00,0,0),('Tyler Conklin',4,0,0,0.00,0,0),('Tyler Higbee',4,0,0,0.00,0,0),('Tyler Huntley',1,2,8,4.00,0,0),('Tyler Lockett',4,0,0,0.00,0,0),('Tyler Scott',1,0,0,0.00,0,0),('Tyreek Hill',4,1,14,10.50,0,1),('Van Jefferson',4,1,4,3.00,0,0),('Velus Jones',4,2,7,0.20,0,0),('Wan\'Dale Robinson',1,0,0,0.00,0,0),('Will Dissly',3,0,0,0.00,0,0),('Will Mallory',1,0,0,0.00,0,0),('Xavier Gipson',3,2,13,6.50,0,0),('Xavier Hutchinson',4,0,0,0.00,0,0),('Zach Charbonnet',4,21,104,5.00,0,3),('Zach Ertz',4,0,0,0.00,0,0),('Zach Pascal',3,0,0,0.00,0,0),('Zach Wilson',4,12,57,4.00,0,2),('Zack Moss',3,66,280,4.20,1,14),('Zay Flowers',4,5,11,1.80,0,0),('Zay Jones',2,0,0,0.00,0,0),('Zonovan Knight',1,3,13,4.30,0,0);
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
INSERT INTO `team_total_defense` VALUES ('Arizona',374.5,65.0,5.8,25.8,11.3,5.8,51.11,0.8,0.5,66.67,'31:08',25.5,3.0,5.0,3.0,60.00),('Atlanta',290.8,61.8,4.7,17.8,12.8,4.3,33.33,1.3,0.3,20.00,'31:03',19.3,2.0,2.5,1.0,40.00),('Baltimore',260.8,69.5,3.8,17.3,17.8,7.3,40.85,1.8,0.8,42.86,'29:01',14.5,1.0,2.5,0.8,30.00),('Buffalo',288.0,50.3,5.7,15.3,9.8,3.0,30.77,1.3,0.3,20.00,'25:41',13.8,1.5,2.8,1.3,45.45),('Carolina',313.0,59.3,5.3,19.3,11.8,3.3,27.66,0.8,0.5,66.67,'27:31',25.5,2.8,3.8,2.3,60.00),('Chicago',384.2,63.4,6.1,21.0,13.6,7.8,57.35,0.8,0.4,50.00,'31:30',31.4,3.8,3.6,2.8,77.78),('Cincinnati',364.3,64.0,5.7,21.3,13.0,5.5,42.31,0.5,0.5,100.00,'31:54',23.5,2.3,3.8,2.0,53.33),('Cleveland',196.8,51.8,3.8,9.3,13.3,3.0,22.64,0.8,0.5,66.67,'25:00',15.0,1.8,1.5,1.0,66.67),('Dallas',259.8,54.8,4.7,14.0,12.3,3.8,30.61,2.0,1.0,50.00,'25:22',10.3,1.0,1.5,0.5,33.33),('Denver',461.5,65.5,7.0,26.0,10.5,4.8,45.24,2.0,1.0,50.00,'32:11',37.5,5.0,4.0,3.3,81.25),('Detroit',280.5,61.8,4.5,19.0,12.5,4.3,34.00,1.0,0.5,50.00,'26:24',20.8,2.3,3.3,2.0,61.54),('Green Bay',352.5,70.3,5.0,22.3,14.8,5.0,33.90,2.3,1.8,77.78,'33:05',24.0,2.5,3.8,1.8,46.67),('Houston',311.8,59.8,5.2,17.8,13.5,6.3,46.30,0.5,0.0,0.00,'28:51',19.8,2.3,3.3,2.0,61.54),('Indianapolis',390.5,74.5,5.2,22.8,15.5,6.0,38.71,1.8,1.0,57.14,'33:34',24.8,2.8,3.0,2.0,66.67),('Jacksonville',333.0,61.5,5.4,17.3,13.0,5.3,40.38,2.0,0.8,37.50,'28:19',20.5,2.5,3.5,1.5,42.86),('Kansas City',294.5,60.5,4.9,16.5,12.8,4.3,33.33,1.8,0.5,28.57,'28:06',15.0,1.5,2.8,1.3,45.45),('LA Chargers',404.0,68.8,5.9,25.8,11.8,3.8,31.91,2.0,1.5,75.00,'31:25',26.0,3.0,4.5,2.3,50.00),('LA Rams',295.8,58.0,5.1,18.0,11.3,3.0,26.67,0.8,0.5,66.67,'26:57',21.3,2.0,2.5,1.8,70.00),('Las Vegas',337.0,63.8,5.3,21.0,13.3,5.8,43.40,1.5,1.0,66.67,'32:21',25.3,3.0,3.8,2.8,73.33),('Miami',374.5,65.5,5.7,23.3,13.0,6.0,46.15,1.0,0.3,25.00,'29:50',29.8,3.5,4.3,3.0,70.59),('Minnesota',344.8,68.8,5.0,21.0,14.0,5.5,39.29,1.8,1.3,71.43,'33:50',23.8,2.8,2.5,1.5,60.00),('New England',297.0,63.0,4.7,18.3,13.0,4.5,34.62,1.0,0.3,25.00,'31:06',24.3,2.5,2.5,1.3,50.00),('New Orleans',304.3,63.3,4.8,18.0,14.8,5.5,37.29,1.0,0.5,50.00,'30:34',19.0,1.5,3.3,1.5,46.15),('NY Giants',341.5,61.0,5.6,20.3,12.8,5.5,43.14,1.0,0.3,25.00,'30:04',30.5,3.5,4.0,2.3,56.25),('NY Jets',363.8,71.5,5.1,21.5,15.5,7.3,46.77,0.0,0.0,0.00,'34:36',21.0,1.5,3.0,0.8,25.00),('Philadelphia',323.8,62.8,5.2,20.3,13.0,6.0,46.15,1.8,1.0,57.14,'26:05',22.5,3.0,3.8,2.8,73.33),('Pittsburgh',403.0,70.8,5.7,21.3,13.5,5.3,38.89,1.5,0.5,33.33,'33:50',25.0,2.5,2.8,1.8,63.64),('San Francisco',284.3,63.0,4.5,19.0,14.0,5.8,41.07,2.0,1.0,50.00,'26:51',14.5,1.5,2.3,1.5,66.67),('Seattle',367.5,72.8,5.1,23.0,15.8,8.3,52.38,2.3,1.0,44.44,'33:55',22.8,2.5,2.0,1.8,87.50),('Tampa Bay',318.5,63.3,5.0,18.8,14.3,6.8,47.37,1.3,0.8,60.00,'30:17',17.0,1.5,2.8,0.8,27.27),('Tennessee',311.3,61.8,5.0,17.8,13.0,4.3,32.69,1.3,1.0,80.00,'30:01',17.5,1.5,3.0,1.3,41.67),('Washington',372.2,63.2,5.9,19.0,13.6,5.6,41.18,1.4,1.0,71.43,'29:12',32.0,3.2,3.6,1.6,44.44);
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
INSERT INTO `team_total_offense` VALUES ('Arizona',337.8,59.5,5.7,20.0,12.3,5.3,1.0,0.5,'28:51',22.0,'-3.5',2.3,2.5,1.5,60.0),('Atlanta',284.3,62.0,4.6,18.3,12.8,4.5,1.5,0.8,'28:56',15.5,'-3.8',1.5,2.8,1.5,54.6),('Baltimore',335.0,63.8,5.3,20.0,14.3,6.8,0.5,0.3,'30:59',24.8,'+10.3',3.0,3.8,3.0,80.0),('Buffalo',391.0,65.8,5.9,23.0,12.8,6.5,1.3,0.8,'34:18',34.8,'+21.0',4.0,4.8,3.3,68.4),('Carolina',282.5,67.8,4.2,19.3,15.3,6.0,1.8,0.8,'32:28',16.8,'-8.8',1.5,2.3,1.0,44.4),('Chicago',334.4,61.2,5.5,18.2,13.0,5.2,1.6,0.8,'28:29',23.0,'-8.4',2.6,2.8,1.6,57.1),('Cincinnati',236.0,59.0,4.0,14.5,14.0,4.8,1.0,0.5,'28:05',12.3,'-11.3',1.0,1.5,0.8,50.0),('Cleveland',316.3,71.3,4.4,19.3,14.8,4.8,1.0,0.5,'34:59',19.0,'+4.0',1.8,2.5,1.5,60.0),('Dallas',360.0,70.5,5.1,23.0,15.5,8.0,1.0,0.3,'34:37',31.0,'+20.8',3.0,4.8,1.8,36.8),('Denver',333.3,56.8,5.9,19.0,11.5,4.5,0.8,0.5,'27:48',25.0,'-12.5',3.0,3.5,2.0,57.1),('Detroit',386.3,67.8,5.7,21.8,14.3,5.5,2.0,1.0,'33:35',26.5,'+5.8',3.3,3.8,2.0,53.3),('Green Bay',280.8,57.8,4.9,17.0,13.5,5.8,1.8,0.8,'26:54',25.0,'+1.0',3.0,3.3,2.3,69.2),('Houston',368.5,69.0,5.3,20.3,16.0,7.8,1.8,0.8,'31:08',24.0,'+4.3',2.3,3.5,1.3,35.7),('Indianapolis',322.3,66.8,4.8,18.8,14.0,4.8,2.0,0.5,'26:25',24.3,'-0.5',2.8,2.8,2.0,72.7),('Jacksonville',329.3,66.5,5.0,19.0,12.8,4.0,2.0,0.5,'31:40',20.0,'-0.5',2.0,2.3,1.0,44.4),('Kansas City',393.0,66.8,5.9,22.8,13.3,6.5,0.8,0.5,'31:53',25.3,'+10.3',2.8,4.0,2.3,56.3),('LA Chargers',388.8,67.0,5.8,22.3,13.5,5.3,2.0,1.3,'28:34',27.5,'+1.5',3.3,4.0,2.8,68.8),('LA Rams',392.8,71.5,5.5,24.3,14.3,6.3,1.3,1.0,'33:02',24.5,'+3.3',2.3,3.3,2.0,61.5),('Las Vegas',281.8,57.5,4.9,19.0,10.5,3.3,1.5,1.3,'27:39',15.5,'-9.8',1.8,3.3,1.5,46.2),('Miami',511.0,63.8,8.0,25.5,9.5,4.0,1.8,0.5,'30:09',37.5,'+7.8',5.0,4.5,3.5,77.8),('Minnesota',370.8,60.0,6.2,20.0,11.5,4.3,1.5,1.0,'26:09',22.5,'-1.3',3.0,3.0,1.5,50.0),('New England',320.3,68.3,4.7,18.5,15.5,6.0,2.0,0.5,'28:54',13.8,'-10.5',1.5,2.0,1.3,62.5),('New Orleans',285.3,64.8,4.4,17.3,15.0,5.8,0.8,0.5,'29:25',15.5,'-3.5',1.3,3.0,1.0,33.3),('NY Giants',252.0,63.0,4.0,16.8,14.0,5.3,2.5,1.5,'29:55',11.5,'-19.0',1.3,2.3,1.3,55.6),('NY Jets',252.8,54.3,4.7,13.8,12.3,3.3,1.0,0.8,'25:23',15.5,'-5.5',1.5,2.0,1.0,50.0),('Philadelphia',392.0,70.3,5.6,22.8,13.8,6.0,1.8,1.3,'33:54',29.5,'+7.0',2.8,3.3,1.5,46.2),('Pittsburgh',263.0,57.5,4.6,13.3,14.5,5.3,1.0,0.3,'26:09',15.5,'-9.5',1.5,1.3,0.5,40.0),('San Francisco',398.0,62.8,6.3,24.8,10.8,5.0,0.5,0.5,'33:09',31.3,'+16.8',3.5,4.5,3.0,66.7),('Seattle',319.8,58.8,5.4,20.3,11.3,3.3,1.0,0.5,'26:04',27.8,'+5.0',3.0,4.3,2.5,58.8),('Tampa Bay',301.5,61.8,4.9,17.0,14.3,6.8,0.5,0.5,'29:42',21.0,'+4.0',2.3,3.0,1.5,50.0),('Tennessee',280.0,57.3,4.9,16.8,12.5,4.5,0.8,0.5,'29:58',18.0,'+0.5',1.5,3.3,1.3,38.5),('Washington',323.8,64.4,5.0,22.2,12.0,4.4,1.0,0.6,'30:47',21.8,'-10.2',2.4,3.6,2.2,61.1);
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
INSERT INTO `wr_away_stats` VALUES ('A.J. Brown',2,210.0,13.1,8.8,24,0,66.7,16,4),('Aaron Jones',1,86.0,43.0,21.5,4,1,50.0,2,2),('Aidan O\'Connell',1,0.0,0.0,0.0,0,0,0.0,0,0),('AJ Dillon',2,25.0,8.3,6.3,4,0,75.0,3,1),('Alec Ingold',3,57.0,19.0,19.0,3,0,100.0,3,2),('Alec Pierce',2,71.0,14.2,7.9,9,0,55.6,5,1),('Alexander Mattison',2,14.0,3.5,2.0,7,0,57.1,4,1),('Allen Lazard',1,23.0,11.5,5.8,4,0,50.0,2,1),('Amari Cooper',1,90.0,12.9,9.0,10,0,70.0,7,6),('Ameer Abdullah',2,5.0,5.0,1.3,4,0,25.0,1,0),('Amon-Ra St. Brown',1,71.0,11.8,7.9,9,1,66.7,6,4),('Andrew Ogletree',1,11.0,11.0,5.5,2,0,50.0,1,1),('Andy Dalton',1,0.0,0.0,0.0,0,0,0.0,0,0),('Anthony Richardson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Antonio Gibson',2,51.0,12.8,12.8,4,0,100.0,4,1),('Ashtyn Davis',1,0.0,0.0,0.0,0,0,0.0,0,0),('Austin Hooper',3,51.0,12.8,10.2,5,0,80.0,4,2),('Bailey Zappe',1,0.0,0.0,0.0,0,0,0.0,0,0),('Baker Mayfield',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ben Skowronek',1,0.0,0.0,0.0,2,0,0.0,0,0),('Boston Scott',1,7.0,7.0,7.0,1,0,100.0,1,0),('Brandin Cooks',2,39.0,9.8,3.5,11,0,36.4,4,2),('Brandon Aiyuk',2,172.0,15.6,12.3,14,2,78.6,11,11),('Brandon Johnson',2,16.0,5.3,4.0,4,1,75.0,3,2),('Braxton Berrios',3,113.0,10.3,8.1,14,1,78.6,11,5),('Breece Hall',1,0.0,0.0,0.0,2,0,0.0,0,0),('Brevin Jordan',2,13.0,6.5,6.5,2,1,100.0,2,1),('Brian Robinson',1,42.0,21.0,14.0,3,0,66.7,2,2),('Brock Purdy',2,0.0,0.0,0.0,0,0,0.0,0,0),('Bryce Young',1,0.0,0.0,0.0,0,0,0.0,0,0),('Brycen Hopkins',3,26.0,13.0,8.7,3,0,66.7,2,1),('Byron Pringle',1,4.0,4.0,4.0,1,0,100.0,1,0),('C.J. Stroud',2,0.0,0.0,0.0,1,0,100.0,1,0),('Cade Otton',2,32.0,6.4,4.6,7,1,71.4,5,1),('Calvin Austin',2,96.0,19.2,8.7,11,1,45.5,5,2),('Calvin Ridley',1,101.0,12.6,9.2,11,1,72.7,8,4),('Cam Akers',0,11.0,5.5,5.5,2,0,100.0,2,0),('CeeDee Lamb',2,130.0,16.3,11.8,11,0,72.7,8,3),('Chase Brown',1,-3.0,-3.0,-3.0,1,0,100.0,1,0),('Chase Claypool',2,51.0,12.8,4.3,12,1,33.3,4,2),('Chase Edmonds',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chigoziem Okonkwo',2,7.0,2.3,1.2,6,0,50.0,3,0),('Chris Evans',2,-1.0,-1.0,-1.0,1,0,100.0,1,0),('Chris Godwin',2,165.0,12.7,9.7,17,0,76.5,13,4),('Chris Manhertz',2,10.0,10.0,5.0,2,0,50.0,1,1),('Chris Moore',2,41.0,20.5,10.3,4,0,50.0,2,0),('Chris Olave',2,190.0,13.6,8.6,22,0,63.6,14,3),('Christian Kirk',1,9.0,9.0,3.0,3,0,33.3,1,0),('Christian McCaffrey',2,36.0,6.0,4.5,8,0,75.0,6,1),('Chuba Hubbard',2,11.0,2.8,2.2,5,0,80.0,4,0),('Clyde Edwards-Helaire',2,18.0,6.0,6.0,3,0,100.0,3,1),('Colby Parkinson',2,41.0,20.5,10.3,4,0,50.0,2,2),('Cole Kmet',3,102.0,9.3,7.8,13,1,84.6,11,2),('Connor Heyward',2,0.0,0.0,0.0,2,0,0.0,0,0),('Cooper Rush',1,0.0,0.0,0.0,0,0,0.0,0,0),('Curtis Samuel',1,19.0,6.3,6.3,3,0,100.0,3,1),('D.J. Moore',3,375.0,22.1,16.3,23,4,73.9,17,4),('D.K. Metcalf',2,109.0,12.1,10.9,10,1,90.0,9,4),('D\'Andre Swift',1,0.0,0.0,0.0,2,0,50.0,1,0),('D\'Ernest Johnson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Dak Prescott',2,0.0,0.0,0.0,0,0,0.0,0,0),('Dallas Goedert',2,41.0,8.2,5.1,8,0,62.5,5,0),('Dalton Kincaid',2,29.0,4.8,4.8,6,0,100.0,6,0),('Dalton Schultz',1,4.0,2.0,1.0,4,0,50.0,2,0),('Dalvin Cook',1,5.0,5.0,5.0,1,0,100.0,1,0),('Dameon Pierce',2,37.0,7.4,6.2,6,0,83.3,5,0),('Damien Harris',2,16.0,8.0,8.0,2,0,100.0,2,0),('Daniel Bellinger',2,8.0,8.0,8.0,1,0,100.0,1,0),('Daniel Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Darius Slayton',2,94.0,15.7,7.8,12,0,50.0,6,5),('Darnell Mooney',3,0.0,0.0,0.0,5,0,0.0,0,0),('Davante Adams',3,225.0,11.3,7.5,30,1,66.7,20,9),('David Bell',1,27.0,9.0,9.0,3,0,100.0,3,2),('David Montgomery',2,20.0,10.0,10.0,2,0,100.0,2,0),('David Njoku',1,48.0,12.0,12.0,4,0,100.0,4,1),('Dawson Knox',2,36.0,9.0,5.1,7,0,57.1,4,1),('De\'Von Achane',2,23.0,5.8,3.8,6,0,66.7,4,1),('DeAndre Carter',3,5.0,5.0,2.5,2,0,50.0,1,0),('DeAndre Hopkins',2,113.0,11.3,5.7,20,0,50.0,10,3),('Deebo Samuel',2,118.0,10.7,7.4,16,0,68.8,11,6),('DeeJay Dallas',1,0.0,0.0,0.0,0,0,0.0,0,0),('Demario Douglas',2,60.0,20.0,10.0,6,0,50.0,3,2),('Deonte Harty',2,24.0,4.8,3.4,7,0,71.4,5,1),('Derek Carr',2,0.0,0.0,0.0,0,0,0.0,0,0),('Derius Davis',2,3.0,3.0,3.0,1,0,100.0,1,0),('Derrick Henry',2,56.0,28.0,18.7,3,0,66.7,2,1),('Deshaun Watson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Desmond Ridder',2,0.0,0.0,0.0,0,0,0.0,0,0),('DeVante Parker',2,52.0,13.0,7.4,7,0,57.1,4,2),('Devin Duvernay',2,8.0,4.0,1.6,5,0,40.0,2,0),('Devin Singletary',1,0.0,0.0,0.0,0,0,0.0,0,0),('Devon Achane',1,4.0,4.0,4.0,1,0,100.0,1,0),('DeVonta Smith',1,47.0,6.7,4.7,10,1,70.0,7,3),('DJ Chark',1,86.0,21.5,7.8,11,1,36.4,4,2),('Donald Parham',2,11.0,3.7,2.8,4,2,75.0,3,1),('Donovan Peoples-Jones',1,7.0,7.0,1.8,4,0,25.0,1,0),('Donovan Smith',1,0.0,0.0,0.0,1,0,100.0,1,0),('Drake London',2,59.0,11.8,4.5,13,1,38.5,5,3),('Durham Smythe',2,67.0,11.2,6.7,10,0,60.0,6,4),('Dyami Brown',2,76.0,15.2,12.7,6,0,83.3,5,0),('Elijah Dotson',2,13.0,6.5,6.5,2,0,100.0,2,0),('Elijah Mitchell',1,0.0,0.0,0.0,1,0,0.0,0,0),('Elijah Moore',1,36.0,12.0,4.0,9,0,33.3,3,2),('Emari Demercado',2,21.0,7.0,5.3,4,0,75.0,3,1),('Erik Ezukanma',2,0.0,0.0,0.0,1,0,0.0,0,0),('Evan Engram',1,49.0,9.8,9.8,5,0,100.0,5,2),('Ezekiel Elliott',2,13.0,4.3,3.3,4,0,75.0,3,0),('Foster Moreau',1,20.0,10.0,10.0,2,0,100.0,2,1),('Gabriel Davis',2,67.0,22.3,8.4,8,1,37.5,3,2),('Gardner Minshew',2,0.0,0.0,0.0,0,0,0.0,0,0),('Gary Brightwell',2,31.0,15.5,10.3,3,0,66.7,2,2),('Geno Smith',2,-2.0,-2.0,-2.0,1,0,100.0,1,0),('George Kittle',2,49.0,8.2,5.4,9,0,66.7,6,4),('George Pickens',2,100.0,14.3,7.7,13,0,53.8,7,4),('Gerald Everett',2,77.0,8.6,8.6,9,0,100.0,9,2),('Giovanni Ricci',1,2.0,2.0,2.0,1,0,100.0,1,0),('Gus Edwards',2,1.0,0.5,0.3,3,0,66.7,2,0),('Harrison Bryant',1,0.0,0.0,0.0,2,0,0.0,0,0),('Hayden Hurst',2,52.0,8.7,5.2,10,1,60.0,6,3),('Hunter Henry',2,68.0,11.3,6.8,10,0,60.0,6,4),('Hunter Luepke',2,12.0,12.0,12.0,1,0,100.0,1,1),('Hunter Renfrow',2,23.0,23.0,23.0,1,0,100.0,1,1),('Irv Smith',1,17.0,5.7,3.4,5,0,60.0,3,0),('Isaiah Hodgins',2,40.0,10.0,6.7,6,1,66.7,4,3),('Isaiah Likely',2,8.0,8.0,8.0,1,0,100.0,1,0),('Isaiah McKenzie',2,10.0,5.0,5.0,2,0,100.0,2,0),('Isaiah Spiller',1,0.0,0.0,0.0,0,0,0.0,0,0),('Isiah Pacheco',2,43.0,10.8,8.6,5,0,80.0,4,0),('Ja\'Marr Chase',2,112.0,9.3,6.2,18,0,66.7,12,3),('Jahan Dotson',2,49.0,7.0,3.5,14,1,50.0,7,1),('Jahmyr Gibbs',2,29.0,4.8,4.1,7,0,85.7,6,1),('Jake Bobo',2,3.0,3.0,1.5,2,0,50.0,1,0),('Jake Browning',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jake Ferguson',2,59.0,8.4,4.2,14,0,50.0,7,0),('Jakob Johnson',3,12.0,12.0,6.0,2,0,50.0,1,0),('Jakobi Meyers',2,114.0,10.4,8.1,14,2,78.6,11,5),('Jaleel McLaughlin',2,32.0,10.7,10.7,3,1,100.0,3,1),('Jalen Hurts',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jalen Reeves-Maybin',1,0.0,0.0,0.0,0,0,0.0,0,0),('Jalin Hyatt',2,89.0,44.5,44.5,2,0,100.0,2,2),('Jamal Agnew',1,0.0,0.0,0.0,0,0,0.0,0,0),('James Conner',2,12.0,2.0,1.7,7,0,85.7,6,1),('James Cook',2,31.0,5.2,3.4,9,0,66.7,6,0),('Jared Goff',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jauan Jennings',2,51.0,25.5,12.8,4,0,50.0,2,2),('Jaxon Smith-Njigba',1,34.0,6.8,5.7,6,0,83.3,5,1),('Jayden Reed',2,85.0,14.2,6.5,13,2,46.2,6,5),('Jerick McKinnon',2,24.0,8.0,6.0,4,0,75.0,3,0),('Jerome Ford',1,25.0,8.3,6.3,4,1,75.0,3,1),('Jerry Jeudy',2,133.0,16.6,11.1,12,0,66.7,8,6),('Jimmy Garoppolo',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jimmy Graham',2,8.0,8.0,8.0,1,1,100.0,1,1),('Joe Burrow',2,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Mixon',2,26.0,6.5,4.3,6,0,66.7,4,0),('John Bates',2,52.0,13.0,8.7,6,0,66.7,4,1),('John Metchie',1,13.0,6.5,6.5,2,0,100.0,2,1),('Jonathan Mingo',2,38.0,7.6,3.5,11,0,45.5,5,1),('Jordan Addison',2,72.0,24.0,12.0,6,1,50.0,3,1),('Jordan Akins',1,2.0,2.0,2.0,1,0,100.0,1,0),('Jordan Love',2,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Allen',2,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Downs',2,94.0,7.8,5.5,17,0,70.6,12,3),('Josh Jacobs',3,155.0,10.3,7.8,20,0,75.0,15,4),('Josh Oliver',2,13.0,6.5,4.3,3,0,66.7,2,1),('Josh Palmer',2,79.0,11.3,6.6,12,1,58.3,7,0),('Josh Reynolds',1,80.0,20.0,11.4,7,0,57.1,4,4),('Joshua Dobbs',2,0.0,0.0,0.0,0,0,0.0,0,0),('Joshua Kelley',2,5.0,5.0,2.5,2,0,50.0,1,0),('Josiah Deguara',2,5.0,2.5,2.5,2,0,100.0,2,1),('Justice Hill',2,12.0,4.0,4.0,3,0,100.0,3,0),('Justin Fields',3,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Herbert',2,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Jefferson',2,244.0,14.4,11.1,22,2,77.3,17,9),('Juwan Johnson',2,25.0,6.3,3.6,7,0,57.1,4,0),('K.J. Osborn',2,50.0,12.5,6.3,8,1,50.0,4,3),('Kalif Raymond',1,20.0,20.0,20.0,1,0,100.0,1,0),('Keaontay Ingram',1,0.0,0.0,0.0,0,0,0.0,0,0),('Keenan Allen',2,326.0,12.5,10.9,30,2,86.7,26,5),('Keith Kirkwood',2,0.0,0.0,0.0,2,0,0.0,0,0),('Kendre Miller',1,0.0,0.0,0.0,1,0,100.0,1,0),('Kendrick Bourne',2,82.0,13.7,10.3,8,0,75.0,6,4),('Kenneth Gainwell',2,25.0,5.0,4.2,6,0,83.3,5,0),('Kenny Pickett',2,0.0,0.0,0.0,0,0,0.0,0,0),('KhaDarel Hodge',2,34.0,11.3,11.3,3,0,100.0,3,3),('Khalil Herbert',3,27.0,9.0,3.4,8,0,37.5,3,1),('Khari Blasingame',3,0.0,0.0,0.0,0,0,0.0,0,0),('Kirk Cousins',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ko Kieft',2,0.0,0.0,0.0,3,0,0.0,0,0),('Kyle Allen',1,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Pitts',2,62.0,8.9,4.8,13,0,53.8,7,3),('Kylen Granson',2,25.0,5.0,3.1,8,1,62.5,5,2),('Lamar Jackson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Latavius Murray',2,15.0,7.5,5.0,3,0,66.7,2,1),('Laviska Shenault',1,16.0,8.0,8.0,2,0,100.0,2,1),('Lil\'Jordan Humphrey',2,11.0,11.0,11.0,1,0,100.0,1,1),('Luke Musgrave',2,75.0,15.0,10.7,7,0,71.4,5,2),('Mac Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Mack Hollins',2,23.0,23.0,3.3,7,0,14.3,1,1),('Malik Heath',2,0.0,0.0,0.0,2,0,0.0,0,0),('Mark Andrews',2,125.0,12.5,9.6,13,3,76.9,10,3),('Marquise Brown',2,124.0,12.4,8.3,15,0,66.7,10,3),('Marquise Goodwin',1,0.0,0.0,0.0,2,0,0.0,0,0),('Marvin Jones',2,8.0,4.0,1.1,7,0,28.6,2,0),('Marvin Mims',2,120.0,24.0,17.1,7,0,71.4,5,3),('Matt Breida',2,1.0,0.3,0.3,3,0,100.0,3,0),('Matthew Stafford',3,0.0,0.0,0.0,0,0,0.0,0,0),('Mecole Hardman',1,6.0,6.0,6.0,1,0,100.0,1,0),('Melvin Gordon',1,23.0,23.0,23.0,1,0,100.0,1,1),('Michael Carter',1,3.0,3.0,1.5,2,0,50.0,1,1),('Michael Gallup',2,102.0,14.6,11.3,9,0,77.8,7,1),('Michael Mayer',3,2.0,2.0,2.0,1,0,100.0,1,0),('Michael Pittman',1,56.0,7.0,4.7,12,0,66.7,8,4),('Mike Boone',2,18.0,6.0,4.5,4,0,75.0,3,1),('Mike Evans',2,106.0,11.8,8.2,13,1,69.2,9,2),('Mike Gesicki',2,30.0,15.0,7.5,4,0,50.0,2,2),('Miles Sanders',1,26.0,6.5,4.3,6,0,66.7,4,1),('Mo Alie-Cox',2,15.0,15.0,15.0,1,0,100.0,1,1),('Najee Harris',2,32.0,32.0,10.7,3,0,33.3,1,1),('Nate Adkins',2,19.0,6.3,6.3,3,0,100.0,3,1),('Nelson Agholor',2,67.0,11.2,8.4,8,1,75.0,6,4),('Nick Chubb',1,0.0,0.0,0.0,0,0,0.0,0,0),('Nico Collins',2,114.0,14.3,8.1,14,0,57.1,8,3),('Noah Brown',1,20.0,6.7,5.0,4,0,75.0,3,0),('Noah Fant',2,119.0,19.8,19.8,6,0,100.0,6,2),('Noah Gray',2,72.0,18.0,12.0,6,1,66.7,4,2),('Odell Beckham',1,29.0,9.7,7.3,4,0,75.0,3,2),('Parris Campbell',2,45.0,4.5,3.8,12,0,83.3,10,0),('Pat Freiermuth',2,48.0,8.0,6.0,8,1,75.0,6,3),('Patrick Mahomes',2,0.0,0.0,0.0,0,0,0.0,0,0),('Patrick Taylor',2,0.0,0.0,0.0,1,0,0.0,0,0),('Peyton Hendershot',2,3.0,3.0,1.5,2,0,50.0,1,0),('Pharaoh Brown',2,71.0,35.5,35.5,2,1,100.0,2,2),('Pierre Strong',1,0.0,0.0,0.0,1,0,0.0,0,0),('Puka Nacua',3,354.0,14.8,11.1,32,1,75.0,24,6),('Quentin Johnston',2,17.0,5.7,3.4,5,0,60.0,3,0),('Raheem Mostert',3,55.0,9.2,6.9,8,0,75.0,6,0),('Rakim Jarrett',2,3.0,3.0,3.0,1,0,100.0,1,0),('Randall Cobb',1,0.0,0.0,0.0,1,0,0.0,0,0),('Rashee Rice',1,20.0,10.0,10.0,2,0,100.0,2,1),('Rashid Shaheed',1,63.0,15.8,15.8,4,0,100.0,4,3),('Rashod Bateman',1,18.0,6.0,6.0,3,0,100.0,3,1),('Richie James',1,0.0,0.0,0.0,1,0,0.0,0,0),('Rico Dowdle',2,25.0,8.3,8.3,3,1,100.0,3,0),('River Cracraft',2,74.0,14.8,10.6,7,1,71.4,5,5),('Romeo Doubs',2,56.0,9.3,7.0,8,2,75.0,6,5),('Rondale Moore',2,33.0,11.0,6.6,5,0,60.0,3,1),('Roschon Johnson',3,21.0,5.3,5.3,4,0,100.0,4,0),('Russell Wilson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ryan Tannehill',1,0.0,0.0,0.0,0,0,0.0,0,0),('Salvon Ahmed',3,28.0,9.3,4.7,6,0,50.0,3,1),('Sam Darnold',1,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Howell',2,0.0,0.0,0.0,0,0,0.0,0,0),('Sam LaPorta',2,95.0,10.6,9.5,10,0,90.0,9,2),('Samaje Perine',2,38.0,9.5,7.6,5,0,80.0,4,1),('Saquon Barkley',1,29.0,4.8,4.1,7,1,85.7,6,2),('Sean Clifford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Skyy Moore',2,70.0,23.3,11.7,6,1,50.0,3,2),('Stefon Diggs',2,213.0,11.8,8.5,25,1,72.0,18,6),('Sterling Shepard',2,4.0,4.0,4.0,1,0,100.0,1,1),('Stone Smartt',1,24.0,24.0,24.0,1,0,100.0,1,1),('T.J. Hockenson',2,90.0,10.0,8.2,11,2,81.8,9,4),('Tank Bigsby',1,0.0,0.0,0.0,1,0,0.0,0,0),('Tank Dell',2,179.0,22.4,16.3,11,1,72.7,8,3),('Tanner Hudson',1,18.0,9.0,9.0,2,0,100.0,2,1),('Taysom Hill',2,8.0,4.0,2.7,3,0,66.7,2,0),('Teagan Quitoriano',1,11.0,11.0,11.0,1,0,100.0,1,1),('Tee Higgins',1,0.0,0.0,0.0,8,0,0.0,0,0),('Terrace Marshall',2,58.0,8.3,4.1,14,0,50.0,7,2),('Terry McLaurin',2,140.0,10.8,8.8,16,1,81.3,13,2),('Tony Jones',2,21.0,5.3,3.5,6,0,66.7,4,0),('Tony Pollard',1,12.0,6.0,4.0,3,0,66.7,2,1),('Travis Etienne',1,27.0,5.4,5.4,5,0,100.0,5,0),('Travis Kelce',2,86.0,8.6,4.8,18,1,55.6,10,1),('Trenton Irwin',2,17.0,17.0,17.0,1,0,100.0,1,1),('Trevor Lawrence',1,0.0,0.0,0.0,0,0,0.0,0,0),('Trey McBride',2,28.0,9.3,9.3,3,0,100.0,3,2),('Trey Palmer',2,14.0,3.5,2.3,6,2,66.7,4,1),('Treylon Burks',2,23.0,7.7,2.6,9,0,33.3,3,1),('Tua Tagovailoa',3,0.0,0.0,0.0,0,0,0.0,0,0),('Tutu Atwell',3,193.0,12.9,7.4,26,1,57.7,15,6),('Ty Chandler',2,9.0,4.5,4.5,2,0,100.0,2,0),('Tyjae Spears',1,1.0,1.0,0.3,4,0,25.0,1,0),('Tyler Allgeier',2,13.0,4.3,2.6,5,0,60.0,3,1),('Tyler Boyd',2,36.0,6.0,3.6,10,0,60.0,6,0),('Tyler Conklin',1,50.0,10.0,8.3,6,0,83.3,5,2),('Tyler Higbee',3,184.0,14.2,9.7,19,0,68.4,13,3),('Tyler Huntley',1,0.0,0.0,0.0,0,0,0.0,0,0),('Tyler Lockett',2,113.0,9.4,7.1,16,2,75.0,12,6),('Tyreek Hill',3,313.0,16.5,10.8,29,3,65.5,19,14),('Van Jefferson',3,99.0,14.1,9.0,11,0,63.6,7,1),('Velus Jones',3,0.0,0.0,0.0,0,0,0.0,0,0),('Wan\'Dale Robinson',1,21.0,5.3,4.2,5,0,80.0,4,1),('Will Dissly',2,35.0,11.7,11.7,3,0,100.0,3,2),('Will Mallory',1,49.0,24.5,24.5,2,0,100.0,2,2),('Xavier Hutchinson',2,9.0,9.0,9.0,1,0,100.0,1,1),('Zach Charbonnet',2,23.0,7.7,4.6,5,0,60.0,3,0),('Zach Ertz',2,74.0,6.2,3.7,20,0,60.0,12,1),('Zach Pascal',2,10.0,3.3,2.0,5,0,60.0,3,0),('Zach Wilson',1,0.0,0.0,0.0,0,0,0.0,0,0),('Zack Moss',2,42.0,7.0,6.0,7,1,85.7,6,0),('Zay Flowers',2,118.0,16.9,13.1,9,0,77.8,7,2),('Zay Jones',1,55.0,11.0,7.9,7,1,71.4,5,4);
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
INSERT INTO `wr_home_stats` VALUES ('A.J. Brown',2,204.0,15.7,10.7,19,2,68.4,13,2),('Aaron Jones',1,-4.0,-4.0,-2.0,2,0,50.0,1,0),('Aaron Rodgers',1,0.0,0.0,0.0,0,0,0.0,0,0),('AJ Dillon',2,0.0,0.0,0.0,1,0,0.0,0,0),('Alec Ingold',1,0.0,0.0,0.0,0,0,0.0,0,0),('Alec Pierce',1,5.0,5.0,1.7,3,0,33.3,1,1),('Alexander Mattison',2,42.0,5.3,3.8,11,1,72.7,8,1),('Allen Lazard',3,146.0,18.3,12.2,12,1,66.7,8,2),('Allen Robinson',2,76.0,10.9,6.9,11,0,63.6,7,2),('Alvin Kamara',1,33.0,2.5,2.4,14,0,92.9,13,2),('Amari Cooper',3,169.0,15.4,8.0,21,1,52.4,11,2),('Andrew Beck',2,0.0,0.0,0.0,1,0,0.0,0,0),('Andrew Ogletree',1,20.0,20.0,10.0,2,0,50.0,1,1),('Anthony McFarland',2,11.0,5.5,5.5,2,0,100.0,2,1),('Anthony Richardson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Antoine Green',1,2.0,2.0,2.0,1,0,100.0,1,0),('Antonio Gibson',3,81.0,10.1,6.8,12,0,66.7,8,0),('Austin Ekeler',1,47.0,11.8,9.4,5,0,80.0,4,2),('Baker Mayfield',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ben Bredeson',2,0.0,0.0,0.0,1,0,100.0,1,0),('Ben Skowronek',1,10.0,10.0,10.0,1,0,100.0,1,1),('Bijan Robinson',2,75.0,7.5,6.8,11,1,90.9,10,5),('Blaine Gabbert',1,0.0,0.0,0.0,0,0,0.0,0,0),('Blake Bell',2,12.0,6.0,4.0,3,1,66.7,2,1),('Boston Scott',1,0.0,0.0,0.0,0,0,0.0,0,0),('Brandin Cooks',1,27.0,6.8,6.8,4,0,100.0,4,1),('Brandon Aiyuk',1,148.0,24.7,24.7,6,0,100.0,6,6),('Brandon Johnson',2,97.0,24.3,16.2,6,2,66.7,4,3),('Braxton Berrios',1,33.0,16.5,16.5,2,0,100.0,2,2),('Breece Hall',3,42.0,8.4,5.3,8,0,62.5,5,1),('Brevin Jordan',2,27.0,13.5,13.5,2,0,100.0,2,2),('Brian Robinson',1,7.0,7.0,3.5,2,1,50.0,1,1),('Brock Purdy',2,0.0,0.0,0.0,0,0,0.0,0,0),('Bryce Young',2,0.0,0.0,0.0,0,0,0.0,0,0),('C.J. Beathard',1,0.0,0.0,0.0,0,0,0.0,0,0),('C.J. Ham',2,14.0,4.7,3.5,4,0,75.0,3,0),('C.J. Stroud',2,0.0,0.0,0.0,0,0,0.0,0,0),('Cade Otton',1,41.0,6.8,6.8,6,0,100.0,6,1),('Calvin Austin',2,47.0,6.7,4.7,10,0,70.0,7,2),('Calvin Ridley',1,32.0,16.0,4.0,8,0,25.0,2,2),('CeeDee Lamb',2,179.0,11.9,9.4,19,1,78.9,15,7),('Charlie Jones',2,6.0,6.0,3.0,2,0,50.0,1,1),('Charlie Kolar',2,0.0,0.0,0.0,1,0,0.0,0,0),('Chase Brown',2,0.0,0.0,0.0,0,0,0.0,0,0),('Chase Claypool',1,0.0,0.0,0.0,2,0,0.0,0,0),('Chase Edmonds',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chigoziem Okonkwo',1,35.0,8.8,8.8,4,0,100.0,4,2),('Chris Brooks',1,0.0,0.0,0.0,0,0,0.0,0,0),('Chris Godwin',2,90.0,11.3,6.9,13,0,61.5,8,2),('Chris Moore',2,93.0,46.5,23.3,4,0,50.0,2,1),('Chris Rodriguez',1,0.0,0.0,0.0,0,0,0.0,0,0),('Christian Kirk',3,248.0,10.8,7.8,32,1,71.9,23,6),('Christian McCaffrey',2,105.0,8.8,8.1,13,1,92.3,12,3),('Chuba Hubbard',2,46.0,6.6,6.6,7,0,100.0,7,2),('Clyde Edwards-Helaire',2,9.0,4.5,4.5,2,0,100.0,2,0),('Colby Parkinson',1,8.0,8.0,4.0,2,0,50.0,1,0),('Cole Kmet',2,129.0,10.8,8.1,16,2,75.0,12,2),('Colton Dowell',1,0.0,0.0,0.0,1,0,0.0,0,0),('Connor Heyward',2,19.0,9.5,4.8,4,0,50.0,2,0),('Craig Reynolds',1,-2.0,-2.0,-2.0,1,0,100.0,1,0),('Curtis Samuel',1,54.0,10.8,10.8,5,0,100.0,5,2),('D.J. Moore',2,156.0,15.6,14.2,11,1,90.9,10,2),('D.K. Metcalf',2,159.0,17.7,12.2,13,1,69.2,9,2),('D\'Ernest Johnson',3,15.0,5.0,5.0,3,0,100.0,3,1),('D\'Onta Foreman',1,8.0,4.0,2.7,3,0,66.7,2,0),('Dak Prescott',2,0.0,0.0,0.0,0,0,0.0,0,0),('Dallas Goedert',2,47.0,5.9,4.3,11,0,72.7,8,0),('Dalton Kincaid',2,70.0,7.8,6.4,11,0,81.8,9,2),('Dalton Schultz',1,34.0,8.5,4.9,7,0,57.1,4,2),('Dalvin Cook',3,39.0,5.6,5.6,7,0,100.0,7,1),('Dameon Pierce',1,4.0,2.0,1.3,3,0,66.7,2,0),('Damien Harris',2,0.0,0.0,0.0,0,0,0.0,0,0),('Daniel Bellinger',2,7.0,3.5,3.5,2,0,100.0,2,0),('Daniel Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Dare Ogunbowale',1,0.0,0.0,0.0,0,0,0.0,0,0),('Darius Slayton',1,15.0,5.0,3.0,5,0,60.0,3,0),('Darnell Mooney',2,104.0,13.0,9.5,11,1,72.7,8,3),('Davante Adams',1,172.0,13.2,8.6,20,2,65.0,13,9),('David Bell',3,0.0,0.0,0.0,1,0,0.0,0,0),('David Montgomery',1,7.0,7.0,7.0,1,0,100.0,1,1),('David Njoku',3,90.0,7.5,6.4,14,0,85.7,12,1),('Dawson Knox',2,22.0,5.5,3.7,6,1,66.7,4,2),('De\'Von Achane',1,30.0,7.5,7.5,4,2,100.0,4,3),('DeAndre Carter',1,16.0,16.0,16.0,1,0,100.0,1,0),('DeAndre Hopkins',2,103.0,12.9,9.4,11,0,72.7,8,3),('Deebo Samuel',1,129.0,21.5,10.8,12,1,50.0,6,5),('DeeJay Dallas',2,12.0,6.0,6.0,2,0,100.0,2,1),('Demario Douglas',2,59.0,9.8,6.6,9,0,66.7,6,3),('Deon Jackson',1,14.0,2.8,2.3,6,0,83.3,5,0),('Deonte Harty',2,14.0,3.5,2.8,5,0,80.0,4,0),('Derek Carr',2,0.0,0.0,0.0,0,0,0.0,0,0),('Derius Davis',2,21.0,7.0,7.0,3,0,100.0,3,0),('Derrick Henry',2,26.0,6.5,5.2,5,0,80.0,4,0),('Deshaun Watson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Desmond Ridder',2,-6.0,-6.0,-6.0,1,0,100.0,1,0),('DeVante Parker',1,57.0,9.5,7.1,8,0,75.0,6,3),('Devin Duvernay',2,0.0,0.0,0.0,1,0,0.0,0,0),('Devin Singletary',2,21.0,10.5,10.5,2,0,100.0,2,1),('DeVonta Smith',1,131.0,32.8,26.2,5,1,80.0,4,2),('Diontae Johnson',2,48.0,16.0,8.0,6,0,50.0,3,2),('DJ Chark',2,43.0,14.3,10.8,4,0,75.0,3,1),('Donald Parham',1,22.0,7.3,7.3,3,1,100.0,3,2),('Donovan Peoples-Jones',1,12.0,12.0,6.0,2,0,50.0,1,1),('Drake London',2,67.0,11.2,7.4,9,1,66.7,6,3),('Dyami Brown',3,11.0,11.0,2.8,4,0,25.0,1,0),('Elijah Mitchell',1,2.0,0.7,0.7,3,0,100.0,3,0),('Elijah Moore',3,112.0,8.0,5.6,20,0,70.0,14,2),('Emari Demercado',2,7.0,3.5,3.5,2,0,100.0,2,0),('Evan Engram',3,183.0,9.2,7.6,24,0,83.3,20,4),('Evan Hull',1,6.0,6.0,6.0,1,0,100.0,1,0),('Ezekiel Elliott',2,14.0,2.8,2.0,7,0,71.4,5,0),('Gabriel Davis',2,153.0,17.0,15.3,10,2,90.0,9,6),('Gardner Minshew',2,0.0,0.0,0.0,0,0,0.0,0,0),('Gary Brightwell',2,16.0,5.3,4.0,4,0,75.0,3,0),('Geno Smith',2,0.0,0.0,0.0,0,0,0.0,0,0),('George Kittle',2,99.0,12.4,9.9,10,0,80.0,8,2),('George Pickens',2,163.0,18.1,9.6,17,1,52.9,9,4),('Gerald Everett',2,30.0,7.5,6.0,5,0,80.0,4,2),('Greg Dulcich',1,22.0,11.0,11.0,2,0,100.0,2,2),('Gunner Olszewski',1,0.0,0.0,0.0,1,0,100.0,1,0),('Gus Edwards',2,0.0,0.0,0.0,0,0,0.0,0,0),('Harrison Bryant',3,7.0,2.3,2.3,3,1,100.0,3,1),('Hayden Hurst',2,27.0,6.8,4.5,6,0,66.7,4,0),('Hunter Henry',2,108.0,9.8,8.3,13,2,84.6,11,7),('Hunter Luepke',2,0.0,0.0,0.0,0,0,0.0,0,0),('Irv Smith',1,10.0,5.0,2.5,4,0,50.0,2,1),('Isaiah Hodgins',2,48.0,12.0,8.0,6,0,66.7,4,0),('Isaiah Likely',2,24.0,12.0,8.0,3,0,66.7,2,1),('Isaiah McKenzie',2,6.0,6.0,2.0,3,0,33.3,1,1),('Isiah Pacheco',1,31.0,7.8,7.8,4,0,100.0,4,1),('J.K. Dobbins',1,15.0,7.5,5.0,3,0,66.7,2,0),('Ja\'Marr Chase',2,172.0,10.1,7.5,23,0,73.9,17,2),('Jahan Dotson',3,91.0,9.1,5.7,16,0,62.5,10,3),('Jahmyr Gibbs',2,41.0,5.1,3.7,11,0,72.7,8,2),('Jake Ferguson',2,88.0,8.8,8.0,11,1,90.9,10,2),('Jake Funk',2,12.0,12.0,12.0,1,0,100.0,1,1),('Jakobi Meyers',1,85.0,12.1,7.1,12,0,58.3,7,2),('Jaleel McLaughlin',2,-7.0,-7.0,-7.0,1,0,100.0,1,0),('Jalen Hurts',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jalin Hyatt',2,10.0,5.0,3.3,3,0,66.7,2,0),('Jamal Agnew',2,54.0,10.8,9.0,6,0,83.3,5,1),('James Conner',2,18.0,9.0,6.0,3,0,66.7,2,0),('James Cook',2,84.0,16.8,16.8,5,0,100.0,5,2),('Jamison Crowder',3,21.0,10.5,10.5,2,0,100.0,2,2),('Jamycal Hasty',1,0.0,0.0,0.0,2,0,0.0,0,0),('Jared Goff',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jason Cabinda',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jauan Jennings',1,31.0,15.5,10.3,3,0,66.7,2,1),('Jaxon Smith-Njigba',1,13.0,4.3,2.6,5,0,60.0,3,1),('Jerick McKinnon',2,29.0,7.3,5.8,5,2,80.0,4,1),('Jerome Ford',3,52.0,7.4,5.8,9,1,77.8,7,0),('Jerry Jeudy',1,25.0,8.3,5.0,5,0,60.0,3,1),('Jimmy Garoppolo',1,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Burrow',2,0.0,0.0,0.0,0,0,0.0,0,0),('Joe Mixon',2,41.0,8.2,5.9,7,0,71.4,5,1),('John Bates',3,31.0,7.8,7.8,4,0,100.0,4,0),('John Metchie',2,39.0,19.5,13.0,3,0,66.7,2,1),('Jonathan Mingo',1,26.0,8.7,3.3,8,0,37.5,3,1),('Jonnu Smith',2,47.0,11.8,7.8,6,0,66.7,4,3),('Jordan Addison',2,113.0,11.3,8.1,14,1,71.4,10,2),('Jordan Akins',3,18.0,9.0,6.0,3,0,66.7,2,1),('Jordan Love',2,0.0,0.0,0.0,0,0,0.0,0,0),('Jordan Mason',2,13.0,13.0,13.0,1,0,100.0,1,0),('Josh Allen',2,0.0,0.0,0.0,0,0,0.0,0,0),('Josh Downs',2,64.0,12.8,6.4,10,0,50.0,5,1),('Josh Jacobs',1,18.0,6.0,3.6,5,0,60.0,3,0),('Josh Oliver',1,32.0,10.7,10.7,3,0,100.0,3,2),('Josh Palmer',1,4.0,4.0,4.0,1,0,100.0,1,0),('Josh Reynolds',1,66.0,13.2,11.0,6,2,83.3,5,5),('Joshua Dobbs',2,0.0,0.0,0.0,0,0,0.0,0,0),('Joshua Kelley',2,0.0,0.0,0.0,1,0,0.0,0,0),('Josiah Deguara',2,34.0,8.5,8.5,4,0,100.0,4,1),('JuJu Smith-Schuster',2,61.0,6.8,4.7,13,0,69.2,9,3),('Julian Hill',1,0.0,0.0,0.0,1,0,0.0,0,0),('Justice Hill',1,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Fields',2,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Herbert',2,0.0,0.0,0.0,0,0,0.0,0,0),('Justin Jefferson',2,299.0,18.7,12.0,25,1,64.0,16,5),('Justyn Ross',1,6.0,6.0,6.0,1,0,100.0,1,0),('Juwan Johnson',1,36.0,12.0,7.2,5,0,60.0,3,1),('K.J. Osborn',1,31.0,10.3,5.2,6,0,50.0,3,1),('Kalif Raymond',1,46.0,23.0,15.3,3,1,66.7,2,2),('Kareem Hunt',2,22.0,11.0,7.3,3,0,66.7,2,1),('Kayshon Boutte',1,0.0,0.0,0.0,4,0,0.0,0,0),('Keaontay Ingram',2,8.0,8.0,8.0,1,0,100.0,1,0),('Keenan Allen',2,108.0,12.0,7.7,14,1,64.3,9,2),('Keisean Nixon',2,0.0,0.0,0.0,0,0,0.0,0,0),('Keith Kirkwood',2,0.0,0.0,0.0,1,0,0.0,0,0),('Kendre Miller',1,5.0,5.0,5.0,1,0,100.0,1,0),('Kendrick Bourne',2,93.0,9.3,4.7,20,2,50.0,10,4),('Kenneth Gainwell',1,7.0,3.5,3.5,2,0,100.0,2,1),('Kenny Pickett',2,0.0,0.0,0.0,0,0,0.0,0,0),('Kenyan Drake',1,31.0,15.5,10.3,3,0,66.7,2,0),('Khalil Herbert',2,56.0,8.0,5.6,10,1,70.0,7,3),('Khalil Shakir',1,11.0,11.0,11.0,1,1,100.0,1,1),('Khari Blasingame',2,0.0,0.0,0.0,1,0,0.0,0,0),('Kirk Cousins',2,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Allen',2,0.0,0.0,0.0,0,0,0.0,0,0),('Kyle Juszczyk',2,4.0,4.0,4.0,1,0,100.0,1,0),('Kyle Pitts',2,59.0,14.8,7.4,8,0,50.0,4,2),('Kylen Granson',1,39.0,9.8,6.5,6,0,66.7,4,4),('Lamar Jackson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Latavius Murray',2,33.0,8.3,8.3,4,0,100.0,4,1),('Laviska Shenault',1,0.0,0.0,0.0,0,0,0.0,0,0),('Lawrence Cager',2,17.0,8.5,8.5,2,0,100.0,2,1),('Lil\'Jordan Humphrey',2,15.0,5.0,3.8,4,1,75.0,3,1),('Luke Farrell',3,14.0,4.7,4.7,3,0,100.0,3,1),('Luke Musgrave',2,50.0,7.1,5.6,9,0,77.8,7,2),('Luke Schoonmaker',1,1.0,1.0,1.0,1,1,100.0,1,1),('Lynn Bowden',1,0.0,0.0,0.0,1,0,0.0,0,0),('Mac Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Mack Hollins',2,91.0,15.2,9.1,10,0,60.0,6,2),('Malik Heath',1,0.0,0.0,0.0,2,0,0.0,0,0),('Marcedes Lewis',2,8.0,8.0,8.0,1,0,100.0,1,0),('Mark Andrews',1,35.0,8.8,7.0,5,0,80.0,4,1),('Marquise Brown',2,115.0,10.5,6.8,17,2,64.7,11,4),('Marquise Goodwin',3,0.0,0.0,0.0,3,0,33.3,1,0),('Marvin Mims',2,122.0,30.5,30.5,4,1,100.0,4,3),('Matt Breida',2,45.0,7.5,7.5,6,0,100.0,6,0),('Matthew Stafford',1,0.0,0.0,0.0,0,0,0.0,0,0),('Melvin Gordon',1,23.0,11.5,11.5,2,0,100.0,2,2),('Michael Burton',2,3.0,3.0,3.0,1,0,100.0,1,1),('Michael Carter',3,27.0,5.4,4.5,6,0,83.3,5,0),('Michael Gallup',2,63.0,10.5,7.9,8,0,75.0,6,0),('Michael Mayer',1,0.0,0.0,0.0,1,0,0.0,0,0),('Michael Pittman',1,97.0,12.1,8.8,11,1,72.7,8,4),('Mike Boone',1,0.0,0.0,0.0,0,0,0.0,0,0),('Mike Evans',2,231.0,21.0,12.8,18,2,61.1,11,4),('Mike Gesicki',2,69.0,8.6,7.7,9,0,88.9,8,3),('Mike White',1,0.0,0.0,0.0,0,0,0.0,0,0),('Miles Boykin',2,5.0,5.0,5.0,1,0,100.0,1,0),('Miles Sanders',1,4.0,1.3,0.8,5,0,60.0,3,0),('Mo Alie-Cox',1,0.0,0.0,0.0,2,0,0.0,0,0),('Najee Harris',2,2.0,0.7,0.4,5,0,60.0,3,0),('Nelson Agholor',2,39.0,9.8,9.8,4,0,100.0,4,1),('Nick Bawden',3,0.0,0.0,0.0,0,0,0.0,0,0),('Nick Chubb',1,21.0,5.3,5.3,4,0,100.0,4,1),('Nico Collins',2,314.0,22.4,17.4,18,3,77.8,14,6),('Noah Fant',2,41.0,10.3,8.2,5,0,80.0,4,2),('Noah Gray',2,40.0,10.0,5.7,7,0,57.1,4,1),('Odell Beckham',1,37.0,18.5,12.3,3,0,66.7,2,2),('Olamide Zaccheaus',2,11.0,11.0,5.5,2,0,50.0,1,1),('Parris Campbell',2,17.0,4.3,1.9,9,0,44.4,4,0),('Pat Freiermuth',2,5.0,2.5,1.0,5,1,40.0,2,1),('Patrick Mahomes',2,0.0,0.0,0.0,0,0,0.0,0,0),('Peyton Hendershot',1,0.0,0.0,0.0,0,0,0.0,0,0),('Phillip Dorsett',1,0.0,0.0,0.0,1,0,0.0,0,0),('Puka Nacua',1,147.0,9.8,7.4,20,0,75.0,15,7),('Quentin Johnston',2,27.0,9.0,4.5,6,0,50.0,3,1),('Raheem Mostert',1,60.0,8.6,8.6,7,1,100.0,7,1),('Rakim Jarrett',2,7.0,7.0,7.0,1,0,100.0,1,0),('Randall Cobb',3,20.0,6.7,2.9,7,0,42.9,3,0),('Rashaad Penny',1,5.0,5.0,5.0,1,0,100.0,1,0),('Rashee Rice',1,29.0,9.7,5.8,5,1,60.0,3,2),('Rashid Shaheed',1,89.0,17.8,14.8,6,1,83.3,5,3),('Rashod Bateman',2,41.0,10.3,6.8,6,0,66.7,4,1),('Ray-Ray McCloud',2,22.0,11.0,11.0,2,0,100.0,2,2),('Reggie Gilliam',2,3.0,3.0,3.0,1,0,100.0,1,0),('Richie James',1,6.0,6.0,3.0,2,0,50.0,1,0),('Rico Dowdle',2,25.0,12.5,12.5,2,0,100.0,2,1),('River Cracraft',1,13.0,13.0,13.0,1,0,100.0,1,1),('Robbie Chosen',1,68.0,68.0,68.0,1,1,100.0,1,1),('Romeo Doubs',2,168.0,12.0,6.7,25,1,56.0,14,8),('Rondale Moore',2,22.0,4.4,3.1,7,0,71.4,5,1),('Ronnie Bell',2,31.0,10.3,10.3,3,1,100.0,3,2),('Ronnie Rivers',1,4.0,4.0,4.0,1,0,100.0,1,0),('Roschon Johnson',2,37.0,5.3,4.6,8,0,87.5,7,1),('Russell Wilson',2,0.0,0.0,0.0,0,0,0.0,0,0),('Ryan Tannehill',2,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Darnold',2,0.0,0.0,0.0,0,0,0.0,0,0),('Sam Howell',3,0.0,0.0,0.0,0,0,0.0,0,0),('Sam LaPorta',2,147.0,11.3,8.6,17,1,76.5,13,4),('Samaje Perine',2,57.0,8.1,7.1,8,0,87.5,7,2),('Saquon Barkley',1,12.0,4.0,3.0,4,0,75.0,3,2),('Skyy Moore',2,42.0,10.5,4.7,9,0,44.4,4,0),('Stefon Diggs',2,186.0,14.3,13.3,14,3,92.9,13,3),('Sterling Shepard',1,0.0,0.0,0.0,1,0,0.0,0,0),('T.J. Hockenson',2,113.0,7.1,5.7,20,0,80.0,16,3),('Tank Bigsby',3,0.0,0.0,0.0,1,0,0.0,0,0),('Tank Dell',2,88.0,11.0,6.8,13,1,61.5,8,2),('Tanner Hudson',1,30.0,15.0,7.5,4,0,50.0,2,1),('Taysom Hill',2,7.0,7.0,3.5,2,0,50.0,1,0),('Tee Higgins',2,110.0,11.0,5.5,20,2,50.0,10,6),('Terrace Marshall',2,56.0,6.2,5.6,10,0,90.0,9,2),('Terry McLaurin',3,121.0,10.1,8.1,15,0,80.0,12,2),('Tim Jones',3,10.0,3.3,2.5,4,0,75.0,3,0),('Tony Jones',2,0.0,0.0,0.0,0,0,0.0,0,0),('Tony Pollard',1,37.0,5.3,4.6,8,0,87.5,7,2),('Travis Etienne',3,69.0,7.7,6.3,11,0,81.8,9,0),('Travis Kelce',1,69.0,9.9,8.6,8,1,87.5,7,4),('Trevor Lawrence',3,0.0,0.0,0.0,0,0,0.0,0,0),('Trey McBride',2,34.0,11.3,8.5,4,0,75.0,3,1),('Trey Palmer',1,20.0,20.0,10.0,2,0,50.0,1,1),('Treylon Burks',1,76.0,25.3,19.0,4,0,75.0,3,1),('Tua Tagovailoa',1,0.0,0.0,0.0,0,0,0.0,0,0),('Tucker Kraft',2,5.0,2.5,2.5,2,0,100.0,2,0),('Tutu Atwell',1,77.0,11.0,8.6,9,0,77.8,7,6),('Ty Chandler',2,22.0,11.0,7.3,3,0,66.7,2,1),('Ty Montgomery',2,9.0,4.5,2.3,4,0,50.0,2,1),('Tyler Allgeier',2,19.0,6.3,6.3,3,0,100.0,3,1),('Tyler Boyd',2,91.0,8.3,5.4,17,0,64.7,11,3),('Tyler Conklin',3,86.0,10.8,7.2,12,0,66.7,8,0),('Tyler Higbee',1,12.0,4.0,1.7,7,0,42.9,3,0),('Tyler Lockett',2,44.0,8.8,4.0,11,0,45.5,5,1),('Tyler Scott',1,14.0,7.0,7.0,2,0,100.0,2,1),('Tyreek Hill',1,157.0,17.4,14.3,11,1,81.8,9,7),('Van Jefferson',1,9.0,9.0,2.3,4,0,25.0,1,0),('Velus Jones',1,0.0,0.0,0.0,0,0,0.0,0,0),('Will Dissly',1,17.0,8.5,8.5,2,0,100.0,2,1),('Xavier Gipson',3,4.0,4.0,4.0,1,0,100.0,1,0),('Xavier Hutchinson',2,0.0,0.0,0.0,1,0,0.0,0,0),('Zach Charbonnet',2,-1.0,-1.0,-0.5,2,0,50.0,1,0),('Zach Ertz',2,62.0,7.8,6.2,10,0,80.0,8,2),('Zach Pascal',1,9.0,9.0,9.0,1,0,100.0,1,0),('Zach Wilson',3,0.0,0.0,0.0,0,0,0.0,0,0),('Zack Moss',1,0.0,0.0,0.0,1,0,0.0,0,0),('Zay Flowers',2,126.0,7.4,6.3,20,0,85.0,17,5),('Zay Jones',1,0.0,0.0,0.0,6,0,0.0,0,0),('Zonovan Knight',1,0.0,0.0,0.0,0,0,0.0,0,0);
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
INSERT INTO `wr_total_stats` VALUES ('A.J. Brown',4,414,13.1,8.8,43,2,66.7,29,4),('Aaron Jones',2,82,22.0,11.2,6,1,50.0,3,2),('Aaron Rodgers',2,0,0.5,0.5,0,0,0.5,0,0),('Aidan O\'Connell',2,0,0.5,0.5,0,0,0.5,0,0),('AJ Dillon',4,25,4.7,3.6,5,0,38.0,3,1),('Alec Ingold',4,57,14.5,14.5,3,0,75.2,3,2),('Alec Pierce',3,76,14.2,7.9,12,0,55.6,6,1),('Alexander Mattison',4,56,3.5,2.0,18,1,57.1,12,1),('Allen Lazard',4,169,11.5,5.8,16,1,50.0,10,0),('Allen Robinson',3,76,0.0,0.0,11,0,0.0,7,0),('Alvin Kamara',2,33,0.0,0.0,14,0,0.0,13,0),('Amari Cooper',4,259,12.9,9.0,31,1,70.0,18,6),('Ameer Abdullah',3,5,3.7,1.2,4,0,17.0,1,0),('Amon-Ra St. Brown',2,71,6.4,4.5,9,1,33.9,6,4),('Andrew Beck',3,0,0.7,0.7,1,0,0.7,0,0),('Andrew Ogletree',2,31,11.0,5.5,4,0,50.0,2,0),('Andy Dalton',2,0,0.5,0.5,0,0,0.5,0,0),('Anthony McFarland',3,11,0.0,0.0,2,0,0.0,2,0),('Anthony Richardson',3,0,0.7,0.7,0,0,0.7,0,0),('Antoine Green',2,2,0.0,0.0,1,0,0.0,1,0),('Antonio Gibson',5,132,12.8,12.8,16,0,100.0,12,1),('Ashtyn Davis',2,0,0.5,0.5,0,0,0.5,0,0),('Austin Ekeler',2,47,0.0,0.0,5,0,0.0,4,0),('Austin Hooper',4,51,9.9,7.9,5,0,60.2,4,2),('Bailey Zappe',2,0,0.5,0.5,0,0,0.5,0,0),('Baker Mayfield',4,0,0.5,0.5,0,0,0.5,0,0),('Ben Bredeson',3,0,0.7,0.7,1,0,0.0,1,0),('Ben Skowronek',2,10,0.0,0.0,3,0,0.0,1,0),('Bijan Robinson',3,75,0.0,0.0,11,1,0.0,10,0),('Blaine Gabbert',2,0,0.5,0.5,0,0,0.5,0,0),('Blake Bell',3,12,0.0,0.0,3,1,0.0,2,0),('Boston Scott',2,7,4.0,4.0,1,0,50.5,1,0),('Brandin Cooks',3,66,9.8,3.5,15,0,36.4,8,2),('Brandon Aiyuk',3,320,15.6,12.3,20,2,78.6,17,11),('Brandon Johnson',4,113,5.3,4.0,10,3,75.0,7,0),('Braxton Berrios',4,146,10.3,8.1,16,1,78.6,13,5),('Breece Hall',4,42,0.0,0.0,10,0,0.0,5,0),('Brevin Jordan',4,40,6.5,6.5,4,1,100.0,4,0),('Brian Robinson',2,49,21.0,14.0,5,1,66.7,3,2),('Brock Purdy',4,0,0.5,0.5,0,0,0.5,0,0),('Bryce Young',3,0,0.7,0.7,0,0,0.7,0,0),('Brycen Hopkins',4,26,10.0,6.8,3,0,50.3,2,1),('Byron Pringle',2,4,2.5,2.5,1,0,50.5,1,0),('C.J. Beathard',2,0,0.5,0.5,0,0,0.5,0,0),('C.J. Ham',3,14,0.0,0.0,4,0,0.0,3,0),('C.J. Stroud',4,0,0.5,0.5,1,0,50.5,1,0),('Cade Otton',3,73,6.4,4.6,13,1,71.4,11,1),('Calvin Austin',4,143,19.2,8.7,21,1,45.5,12,0),('Calvin Ridley',2,133,12.6,9.2,19,1,72.7,10,4),('Cam Akers',2,11,3.2,3.2,2,0,50.5,2,0),('CeeDee Lamb',4,309,16.3,11.8,30,1,72.7,23,3),('Charlie Jones',3,6,0.0,0.0,2,0,0.0,1,0),('Charlie Kolar',3,0,0.7,0.7,1,0,0.7,0,0),('Chase Brown',3,-3,0.7,0.7,1,0,34.0,1,0),('Chase Claypool',3,51,8.9,3.2,14,1,22.5,4,2),('Chase Edmonds',2,0,0.5,0.5,0,0,0.5,0,0),('Chigoziem Okonkwo',3,42,2.3,1.2,10,0,50.0,7,0),('Chris Brooks',2,0,0.5,0.5,0,0,0.5,0,0),('Chris Evans',3,-1,0.3,0.3,1,0,67.0,1,0),('Chris Godwin',4,255,12.7,9.7,30,0,76.5,21,4),('Chris Manhertz',3,10,7.0,3.7,2,0,33.7,1,1),('Chris Moore',4,134,20.5,10.3,8,0,50.0,4,0),('Chris Olave',3,190,9.4,6.1,22,0,42.7,14,3),('Chris Rodriguez',2,0,0.5,0.5,0,0,0.5,0,0),('Christian Kirk',4,257,9.0,3.0,35,1,33.3,24,0),('Christian McCaffrey',4,141,6.0,4.5,21,1,75.0,18,1),('Chuba Hubbard',4,57,2.8,2.2,12,0,80.0,11,0),('Clyde Edwards-Helaire',4,27,6.0,6.0,5,0,100.0,5,1),('Colby Parkinson',3,49,20.5,10.3,6,0,50.0,3,2),('Cole Kmet',5,231,9.3,7.8,29,3,84.6,23,2),('Colton Dowell',2,0,0.5,0.5,1,0,0.5,0,0),('Connor Heyward',4,19,0.0,0.0,6,0,0.0,2,0),('Cooper Rush',2,0,0.5,0.5,0,0,0.5,0,0),('Craig Reynolds',2,-2,0.5,0.5,1,0,0.0,1,0),('Curtis Samuel',2,73,6.3,6.3,8,0,100.0,8,1),('D.J. Moore',5,531,22.1,16.3,34,5,73.9,27,4),('D.K. Metcalf',4,268,12.1,10.9,23,2,90.0,18,4),('D\'Andre Swift',2,0,0.5,0.5,2,0,25.5,1,0),('D\'Ernest Johnson',4,15,0.0,0.0,3,0,0.0,3,0),('D\'Onta Foreman',2,8,0.0,0.0,3,0,0.0,2,0),('Dak Prescott',4,0,0.5,0.5,0,0,0.5,0,0),('Dallas Goedert',4,88,8.2,5.1,19,0,62.5,13,0),('Dalton Kincaid',4,99,4.8,4.8,17,0,100.0,15,0),('Dalton Schultz',2,38,2.0,1.0,11,0,50.0,6,0),('Dalvin Cook',4,44,5.0,5.0,8,0,100.0,8,0),('Dameon Pierce',3,41,7.4,6.2,9,0,83.3,7,0),('Damien Harris',4,16,4.5,4.5,2,0,50.5,2,0),('Daniel Bellinger',4,15,8.0,8.0,3,0,100.0,3,0),('Daniel Jones',4,0,0.5,0.5,0,0,0.5,0,0),('Dare Ogunbowale',2,0,0.5,0.5,0,0,0.5,0,0),('Darius Slayton',3,109,15.7,7.8,17,0,50.0,9,5),('Darnell Mooney',5,104,0.0,0.0,16,1,0.0,8,0),('Davante Adams',4,397,11.3,7.5,50,3,66.7,33,9),('David Bell',4,27,3.0,3.0,4,0,25.8,3,2),('David Montgomery',3,27,10.0,10.0,3,0,100.0,3,0),('David Njoku',4,138,12.0,12.0,18,0,100.0,16,1),('Dawson Knox',4,58,9.0,5.1,13,1,57.1,8,1),('De\'Von Achane',3,53,5.8,3.8,10,2,66.7,8,1),('DeAndre Carter',4,21,5.0,2.5,3,0,50.0,2,0),('DeAndre Hopkins',4,216,11.3,5.7,31,0,50.0,18,3),('Deebo Samuel',3,247,10.7,7.4,28,1,68.8,17,6),('DeeJay Dallas',3,12,0.0,0.0,2,0,0.0,2,0),('Demario Douglas',4,119,20.0,10.0,15,0,50.0,9,0),('Deon Jackson',2,14,0.0,0.0,6,0,0.0,5,0),('Deonte Harty',4,38,4.8,3.4,12,0,71.4,9,1),('Derek Carr',4,0,0.5,0.5,0,0,0.5,0,0),('Derius Davis',4,24,3.0,3.0,4,0,100.0,4,0),('Derrick Henry',4,82,28.0,18.7,8,0,66.7,6,1),('Deshaun Watson',3,0,0.7,0.7,0,0,0.7,0,0),('Desmond Ridder',4,-6,0.5,0.5,1,0,0.0,1,0),('DeVante Parker',3,109,13.0,7.4,15,0,57.1,10,0),('Devin Duvernay',4,8,2.5,1.3,6,0,20.5,2,0),('Devin Singletary',3,21,0.0,0.0,2,0,0.0,2,0),('Devon Achane',2,4,2.5,2.5,1,0,50.5,1,0),('DeVonta Smith',2,178,6.7,4.7,15,2,70.0,11,3),('Diontae Johnson',3,48,0.0,0.0,6,0,0.0,3,0),('DJ Chark',3,129,21.5,7.8,15,1,36.4,7,0),('Donald Parham',3,33,3.7,2.8,7,3,75.0,6,1),('Donovan Peoples-Jones',2,19,7.0,1.8,6,0,25.0,2,0),('Donovan Smith',2,0,0.5,0.5,1,0,50.5,1,0),('Drake London',4,126,11.8,4.5,22,2,38.5,11,0),('Durham Smythe',3,67,7.8,4.8,10,0,40.3,6,4),('Dyami Brown',5,87,15.2,12.7,10,0,83.3,6,0),('Elijah Dotson',3,13,4.7,4.7,2,0,67.0,2,0),('Elijah Mitchell',2,2,0.0,0.0,4,0,0.0,3,0),('Elijah Moore',4,148,12.0,4.0,29,0,33.3,17,2),('Emari Demercado',4,28,7.0,5.3,6,0,75.0,5,0),('Erik Ezukanma',3,0,0.3,0.3,1,0,0.3,0,0),('Evan Engram',4,232,9.8,9.8,29,0,100.0,25,2),('Evan Hull',2,6,0.0,0.0,1,0,0.0,1,0),('Ezekiel Elliott',4,27,4.3,3.3,11,0,75.0,8,0),('Foster Moreau',2,20,5.5,5.5,2,0,50.5,2,1),('Gabriel Davis',4,220,22.3,8.4,18,3,37.5,12,2),('Gardner Minshew',4,0,0.5,0.5,0,0,0.5,0,0),('Gary Brightwell',4,47,15.5,10.3,7,0,66.7,5,2),('Geno Smith',4,-2,0.5,0.5,1,0,50.5,1,0),('George Kittle',4,148,8.2,5.4,19,0,66.7,14,4),('George Pickens',4,263,14.3,7.7,30,1,53.8,16,0),('Gerald Everett',4,107,8.6,8.6,14,0,100.0,13,2),('Giovanni Ricci',2,2,1.5,1.5,1,0,50.5,1,0),('Greg Dulcich',2,22,0.0,0.0,2,0,0.0,2,0),('Gunner Olszewski',2,0,0.5,0.5,1,0,0.0,1,0),('Gus Edwards',4,1,0.8,0.7,3,0,33.9,2,0),('Harrison Bryant',4,7,0.0,0.0,5,1,0.0,3,0),('Hayden Hurst',4,79,8.7,5.2,16,1,60.0,10,3),('Hunter Henry',4,176,11.3,6.8,23,2,60.0,17,0),('Hunter Luepke',4,12,6.5,6.5,1,0,50.5,1,1),('Hunter Renfrow',3,23,15.7,15.7,1,0,67.0,1,1),('Irv Smith',2,27,5.7,3.4,9,0,60.0,5,0),('Isaiah Hodgins',4,88,10.0,6.7,12,1,66.7,8,3),('Isaiah Likely',4,32,8.0,8.0,4,0,100.0,3,0),('Isaiah McKenzie',4,16,5.0,5.0,5,0,100.0,3,0),('Isaiah Spiller',2,0,0.5,0.5,0,0,0.5,0,0),('Isiah Pacheco',3,74,10.8,8.6,9,0,80.0,8,0),('J.K. Dobbins',2,15,0.0,0.0,3,0,0.0,2,0),('Ja\'Marr Chase',4,284,9.3,6.2,41,0,66.7,29,3),('Jahan Dotson',5,140,7.0,3.5,30,1,50.0,17,1),('Jahmyr Gibbs',4,70,4.8,4.1,18,0,85.7,14,1),('Jake Bobo',3,3,2.3,1.3,2,0,33.7,1,0),('Jake Browning',2,0,0.5,0.5,0,0,0.5,0,0),('Jake Ferguson',4,147,8.4,4.2,25,1,50.0,17,0),('Jake Funk',3,12,0.0,0.0,1,0,0.0,1,0),('Jakob Johnson',4,12,9.2,4.8,2,0,37.8,1,0),('Jakobi Meyers',3,199,10.4,8.1,26,2,78.6,18,5),('Jaleel McLaughlin',4,25,5.8,5.8,4,1,100.0,4,0),('Jalen Hurts',4,0,0.5,0.5,0,0,0.5,0,0),('Jalen Reeves-Maybin',2,0,0.5,0.5,0,0,0.5,0,0),('Jalin Hyatt',4,99,44.5,44.5,5,0,100.0,4,2),('Jamal Agnew',3,54,0.0,0.0,6,0,0.0,5,0),('James Conner',4,30,2.0,1.7,10,0,85.7,8,1),('James Cook',4,115,5.2,3.4,14,0,66.7,11,0),('Jamison Crowder',4,21,0.0,0.0,2,0,0.0,2,0),('Jamycal Hasty',2,0,0.5,0.5,2,0,0.5,0,0),('Jared Goff',4,0,0.5,0.5,0,0,0.5,0,0),('Jason Cabinda',3,0,0.7,0.7,0,0,0.7,0,0),('Jauan Jennings',3,82,25.5,12.8,7,0,50.0,4,2),('Jaxon Smith-Njigba',2,47,6.8,5.7,11,0,83.3,8,1),('Jayden Reed',3,85,9.8,4.7,13,2,31.1,6,5),('Jerick McKinnon',4,53,8.0,6.0,9,2,75.0,7,0),('Jerome Ford',4,77,8.3,6.3,13,2,75.0,10,1),('Jerry Jeudy',3,158,16.6,11.1,17,0,66.7,11,6),('Jimmy Garoppolo',3,0,0.3,0.3,0,0,0.3,0,0),('Jimmy Graham',3,8,5.7,5.7,1,1,67.0,1,1),('Joe Burrow',4,0,0.5,0.5,0,0,0.5,0,0),('Joe Mixon',4,67,6.5,4.3,13,0,66.7,9,0),('John Bates',5,83,13.0,8.7,10,0,66.7,8,1),('John Metchie',3,52,6.5,6.5,5,0,100.0,4,0),('Jonathan Mingo',3,64,7.6,3.5,19,0,45.5,8,1),('Jonnu Smith',3,47,0.0,0.0,6,0,0.0,4,0),('Jordan Addison',4,185,24.0,12.0,20,2,50.0,13,1),('Jordan Akins',4,20,2.0,2.0,4,0,100.0,3,0),('Jordan Love',4,0,0.5,0.5,0,0,0.5,0,0),('Jordan Mason',3,13,0.0,0.0,1,0,0.0,1,0),('Josh Allen',4,0,0.5,0.5,0,0,0.5,0,0),('Josh Downs',4,158,7.8,5.5,27,0,70.6,17,3),('Josh Jacobs',4,173,10.3,7.8,25,0,75.0,18,4),('Josh Oliver',3,45,6.5,4.3,6,0,66.7,5,1),('Josh Palmer',3,83,11.3,6.6,13,1,58.3,8,0),('Josh Reynolds',2,146,20.0,11.4,13,2,57.1,9,4),('Joshua Dobbs',4,0,0.5,0.5,0,0,0.5,0,0),('Joshua Kelley',4,5,3.0,1.8,3,0,25.5,1,0),('Josiah Deguara',4,39,2.5,2.5,6,0,100.0,6,1),('JuJu Smith-Schuster',3,61,0.0,0.0,13,0,0.0,9,0),('Julian Hill',2,0,0.5,0.5,1,0,0.5,0,0),('Justice Hill',3,12,3.0,3.0,3,0,67.0,3,0),('Justin Fields',5,0,0.4,0.4,0,0,0.4,0,0),('Justin Herbert',4,0,0.5,0.5,0,0,0.5,0,0),('Justin Jefferson',4,543,14.4,11.1,47,3,77.3,33,9),('Justyn Ross',2,6,0.0,0.0,1,0,0.0,1,0),('Juwan Johnson',3,61,6.3,3.6,12,0,57.1,7,0),('K.J. Osborn',3,81,12.5,6.3,14,1,50.0,7,3),('Kalif Raymond',2,66,20.0,20.0,4,1,100.0,3,0),('Kareem Hunt',3,22,0.0,0.0,3,0,0.0,2,0),('Kayshon Boutte',2,0,0.5,0.5,4,0,0.5,0,0),('Keaontay Ingram',3,8,0.0,0.0,1,0,0.0,1,0),('Keenan Allen',4,434,12.5,10.9,44,3,86.7,35,5),('Keisean Nixon',3,0,0.7,0.7,0,0,0.7,0,0),('Keith Kirkwood',4,0,0.5,0.5,3,0,0.5,0,0),('Kendre Miller',2,5,0.0,0.0,2,0,100.0,2,0),('Kendrick Bourne',4,175,13.7,10.3,28,2,75.0,16,0),('Kenneth Gainwell',3,32,5.0,4.2,8,0,83.3,7,0),('Kenny Pickett',4,0,0.5,0.5,0,0,0.5,0,0),('Kenyan Drake',2,31,0.0,0.0,3,0,0.0,2,0),('KhaDarel Hodge',3,34,7.9,7.9,3,0,67.0,3,3),('Khalil Herbert',5,83,9.0,3.4,18,1,37.5,10,1),('Khalil Shakir',2,11,0.0,0.0,1,1,0.0,1,0),('Khari Blasingame',5,0,0.4,0.4,1,0,0.4,0,0),('Kirk Cousins',4,0,0.5,0.5,0,0,0.5,0,0),('Ko Kieft',3,0,0.3,0.3,3,0,0.3,0,0),('Kyle Allen',3,0,0.7,0.7,0,0,0.7,0,0),('Kyle Juszczyk',3,4,0.0,0.0,1,0,0.0,1,0),('Kyle Pitts',4,121,8.9,4.8,21,0,53.8,11,0),('Kylen Granson',3,64,5.0,3.1,14,1,62.5,9,2),('Lamar Jackson',4,0,0.5,0.5,0,0,0.5,0,0),('Latavius Murray',4,48,7.5,5.0,7,0,66.7,6,1),('Laviska Shenault',2,16,4.5,4.5,2,0,50.5,2,1),('Lawrence Cager',3,17,0.0,0.0,2,0,0.0,2,0),('Lil\'Jordan Humphrey',4,26,11.0,11.0,5,1,100.0,4,0),('Luke Farrell',4,14,0.0,0.0,3,0,0.0,3,0),('Luke Musgrave',4,125,15.0,10.7,16,0,71.4,12,2),('Luke Schoonmaker',2,1,0.0,0.0,1,1,0.0,1,0),('Lynn Bowden',2,0,0.5,0.5,1,0,0.5,0,0),('Mac Jones',4,0,0.5,0.5,0,0,0.5,0,0),('Mack Hollins',4,114,23.0,3.3,17,0,14.3,7,0),('Malik Heath',3,0,0.3,0.3,4,0,0.3,0,0),('Marcedes Lewis',3,8,0.0,0.0,1,0,0.0,1,0),('Mark Andrews',3,160,12.5,9.6,18,3,76.9,14,3),('Marquise Brown',4,239,12.4,8.3,32,2,66.7,21,3),('Marquise Goodwin',4,0,0.8,0.8,5,0,0.0,1,0),('Marvin Jones',3,8,3.0,1.1,7,0,19.4,2,0),('Marvin Mims',4,242,24.0,17.1,11,1,71.4,9,0),('Matt Breida',4,46,0.3,0.3,9,0,100.0,9,0),('Matthew Stafford',4,0,0.2,0.2,0,0,0.2,0,0),('Mecole Hardman',2,6,3.5,3.5,1,0,50.5,1,0),('Melvin Gordon',2,46,23.0,23.0,3,0,100.0,3,1),('Michael Burton',3,3,0.0,0.0,1,0,0.0,1,0),('Michael Carter',4,30,3.0,1.5,8,0,50.0,6,1),('Michael Gallup',4,165,14.6,11.3,17,0,77.8,13,1),('Michael Mayer',4,2,1.8,1.8,2,0,75.2,1,0),('Michael Pittman',2,153,7.0,4.7,23,1,66.7,16,4),('Mike Boone',3,18,4.3,3.3,4,0,50.3,3,1),('Mike Evans',4,337,11.8,8.2,31,3,69.2,20,2),('Mike Gesicki',4,99,15.0,7.5,13,0,50.0,10,0),('Mike White',2,0,0.5,0.5,0,0,0.5,0,0),('Miles Boykin',3,5,0.0,0.0,1,0,0.0,1,0),('Miles Sanders',2,30,6.5,4.3,11,0,66.7,7,1),('Mo Alie-Cox',3,15,10.3,10.3,3,0,67.0,1,1),('Najee Harris',4,34,32.0,10.7,8,0,33.3,4,0),('Nate Adkins',3,19,4.5,4.5,3,0,67.0,3,1),('Nelson Agholor',4,106,11.2,8.4,12,1,75.0,10,4),('Nick Bawden',4,0,0.8,0.8,0,0,0.8,0,0),('Nick Chubb',2,21,0.0,0.0,4,0,0.0,4,0),('Nico Collins',4,428,14.3,8.1,32,3,57.1,22,3),('Noah Brown',2,20,3.9,3.0,4,0,38.0,3,0),('Noah Fant',4,160,19.8,19.8,11,0,100.0,10,2),('Noah Gray',4,112,18.0,12.0,13,1,66.7,8,2),('Odell Beckham',2,66,9.7,7.3,7,0,75.0,5,2),('Olamide Zaccheaus',3,11,0.0,0.0,2,0,0.0,1,0),('Parris Campbell',4,62,4.5,3.8,21,0,83.3,14,0),('Pat Freiermuth',4,53,8.0,6.0,13,2,75.0,8,0),('Patrick Mahomes',4,0,0.5,0.5,0,0,0.5,0,0),('Patrick Taylor',3,0,0.3,0.3,1,0,0.3,0,0),('Peyton Hendershot',3,3,2.3,1.3,2,0,33.7,1,0),('Pharaoh Brown',3,71,24.0,24.0,2,1,67.0,2,2),('Phillip Dorsett',2,0,0.5,0.5,1,0,0.5,0,0),('Pierre Strong',2,0,0.5,0.5,1,0,0.5,0,0),('Puka Nacua',4,501,14.8,11.1,52,1,75.0,39,6),('Quentin Johnston',4,44,5.7,3.4,11,0,60.0,6,0),('Raheem Mostert',4,115,9.2,6.9,15,1,75.0,13,0),('Rakim Jarrett',4,10,3.0,3.0,2,0,100.0,2,0),('Randall Cobb',4,20,0.0,0.0,8,0,0.0,3,0),('Rashaad Penny',2,5,0.0,0.0,1,0,0.0,1,0),('Rashee Rice',2,49,10.0,10.0,7,1,100.0,5,1),('Rashid Shaheed',2,152,15.8,15.8,10,1,100.0,9,3),('Rashod Bateman',3,59,6.0,6.0,9,0,100.0,7,1),('Ray-Ray McCloud',3,22,0.0,0.0,2,0,0.0,2,0),('Reggie Gilliam',3,3,0.0,0.0,1,0,0.0,1,0),('Richie James',2,6,0.0,0.0,3,0,0.0,1,0),('Rico Dowdle',4,50,8.3,8.3,5,1,100.0,5,0),('River Cracraft',3,87,14.8,10.6,8,1,71.4,6,5),('Robbie Chosen',2,68,0.0,0.0,1,1,0.0,1,0),('Romeo Doubs',4,224,9.3,7.0,33,3,75.0,20,5),('Rondale Moore',4,55,11.0,6.6,12,0,60.0,8,1),('Ronnie Bell',3,31,0.0,0.0,3,1,0.0,3,0),('Ronnie Rivers',2,4,0.0,0.0,1,0,0.0,1,0),('Roschon Johnson',5,58,5.3,5.3,12,0,100.0,11,0),('Russell Wilson',4,0,0.5,0.5,0,0,0.5,0,0),('Ryan Tannehill',3,0,0.7,0.7,0,0,0.7,0,0),('Salvon Ahmed',4,28,7.2,3.8,6,0,37.8,3,1),('Sam Darnold',3,0,0.7,0.7,0,0,0.7,0,0),('Sam Howell',5,0,0.6,0.6,0,0,0.6,0,0),('Sam LaPorta',4,242,10.6,9.5,27,1,90.0,22,2),('Samaje Perine',4,95,9.5,7.6,13,0,80.0,11,0),('Saquon Barkley',2,41,4.8,4.1,11,1,85.7,9,2),('Sean Clifford',2,0,0.5,0.5,0,0,0.5,0,0),('Skyy Moore',4,112,23.3,11.7,15,1,50.0,7,2),('Stefon Diggs',4,399,11.8,8.5,39,4,72.0,31,6),('Sterling Shepard',3,4,3.0,3.0,2,0,67.0,1,1),('Stone Smartt',2,24,12.5,12.5,1,0,50.5,1,1),('T.J. Hockenson',4,203,10.0,8.2,31,2,81.8,25,4),('Tank Bigsby',4,0,0.8,0.8,2,0,0.8,0,0),('Tank Dell',4,267,22.4,16.3,24,2,72.7,16,3),('Tanner Hudson',2,48,9.0,9.0,6,0,100.0,4,1),('Taysom Hill',4,15,4.0,2.7,5,0,66.7,3,0),('Teagan Quitoriano',2,11,6.0,6.0,1,0,50.5,1,1),('Tee Higgins',3,110,0.0,0.0,28,2,0.0,10,0),('Terrace Marshall',4,114,8.3,4.1,24,0,50.0,16,2),('Terry McLaurin',5,261,10.8,8.8,31,1,81.3,25,2),('Tim Jones',4,10,0.0,0.0,4,0,0.0,3,0),('Tony Jones',4,21,3.1,2.2,6,0,33.9,4,0),('Tony Pollard',2,49,6.0,4.0,11,0,66.7,9,1),('Travis Etienne',4,96,5.4,5.4,16,0,100.0,14,0),('Travis Kelce',3,155,8.6,4.8,26,2,55.6,17,1),('Trenton Irwin',3,17,11.7,11.7,1,0,67.0,1,1),('Trevor Lawrence',4,0,0.8,0.8,0,0,0.8,0,0),('Trey McBride',4,62,9.3,9.3,7,0,100.0,6,2),('Trey Palmer',3,34,3.5,2.3,8,2,66.7,5,1),('Treylon Burks',3,99,7.7,2.6,13,0,33.3,6,1),('Tua Tagovailoa',4,0,0.2,0.2,0,0,0.2,0,0),('Tucker Kraft',3,5,0.0,0.0,2,0,0.0,2,0),('Tutu Atwell',4,270,12.9,7.4,35,1,57.7,22,6),('Ty Chandler',4,31,4.5,4.5,5,0,100.0,4,0),('Ty Montgomery',3,9,0.0,0.0,4,0,0.0,2,0),('Tyjae Spears',2,1,1.0,0.7,4,0,13.0,1,0),('Tyler Allgeier',4,32,4.3,2.6,8,0,60.0,6,0),('Tyler Boyd',4,127,6.0,3.6,27,0,60.0,17,0),('Tyler Conklin',4,136,10.0,8.3,18,0,83.3,13,2),('Tyler Higbee',4,196,14.2,9.7,26,0,68.4,16,3),('Tyler Huntley',2,0,0.5,0.5,0,0,0.5,0,0),('Tyler Lockett',4,157,9.4,7.1,27,2,75.0,17,6),('Tyler Scott',2,14,0.0,0.0,2,0,0.0,2,0),('Tyreek Hill',4,470,16.5,10.8,40,4,65.5,28,14),('Van Jefferson',4,108,14.1,9.0,15,0,63.6,8,1),('Velus Jones',4,0,0.2,0.2,0,0,0.2,0,0),('Wan\'Dale Robinson',2,21,3.1,2.6,5,0,40.5,4,1),('Will Dissly',3,52,11.7,11.7,5,0,100.0,5,2),('Will Mallory',2,49,12.8,12.8,2,0,50.5,2,2),('Xavier Gipson',4,4,0.0,0.0,1,0,0.0,1,0),('Xavier Hutchinson',4,9,5.0,5.0,2,0,50.5,1,1),('Zach Charbonnet',4,22,4.3,2.8,7,0,60.0,4,0),('Zach Ertz',4,136,6.2,3.7,30,0,60.0,20,1),('Zach Pascal',3,19,3.3,2.0,6,0,60.0,4,0),('Zach Wilson',4,0,0.8,0.8,0,0,0.8,0,0),('Zack Moss',3,42,5.0,4.3,8,1,57.5,6,0),('Zay Flowers',4,244,16.9,13.1,29,0,77.8,24,2),('Zay Jones',2,55,6.0,4.5,13,1,36.2,5,4),('Zonovan Knight',2,0,0.5,0.5,0,0,0.5,0,0);
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

-- Dump completed on 2023-10-07 21:14:54
