-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: travel_itinerary1
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

--
-- Table structure for table `Activities`
--

DROP TABLE IF EXISTS `Activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Activities` (
  `activity_ID` int NOT NULL,
  `itinerary_ID` int NOT NULL,
  `activity_name` varchar(50) NOT NULL,
  `activity_description` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `activity_time` time DEFAULT NULL,
  PRIMARY KEY (`activity_ID`),
  KEY `itinerary_ID` (`itinerary_ID`),
  CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`itinerary_ID`) REFERENCES `Itineraries` (`itinerary_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activities`
--

LOCK TABLES `Activities` WRITE;
/*!40000 ALTER TABLE `Activities` DISABLE KEYS */;
INSERT INTO `Activities` VALUES (1,1,'Hiking','Explore the local trails','Mountain Peak Trail','2024-05-12','10:00:00'),(2,1,'Picnic','Enjoy lunch with a view','Scenic Overlook','2024-05-12','12:30:00'),(3,2,'Museum Visit','Discover local history and art','City Museum','2024-06-21','11:00:00'),(4,2,'Dinner','Taste local cuisine','Café Chez Antoine','2024-06-21','19:00:00'),(5,3,'Beach Day','Relax on the sandy shores','Sunny Beach','2024-07-16','14:00:00'),(6,3,'Sunset Cruise','Enjoy a scenic boat ride','Marina','2024-07-17','18:00:00'),(7,4,'Shopping','Browse local shops and boutiques','Main Street','2024-08-06','11:00:00'),(8,4,'Dinner','Try out the towns famous seafood','Seaside Grill','2024-08-07','19:30:00'),(9,5,'Hiking','Explore the nearby trails','Forest Trailhead','2024-09-11','09:00:00'),(10,5,'Camping','Spend the night under the stars','Campsite #7','2024-09-12','17:00:00'),(11,11,'Shrine Visit','Experience traditional Japanese culture','Shrine','2025-03-12','10:00:00'),(12,11,'Tea Ceremony','Partake in a traditional tea ceremony','Traditional Tea House','2025-03-12','14:00:00'),(13,12,'Surfing','Catch some waves on the coastal waters','Surfing Beach','2025-04-21','09:00:00'),(14,12,'Coastal Hike','Explore the scenic coastal trails','Coastal Trail','2025-04-22','11:00:00'),(15,13,'Skiing','Enjoy skiing in the picturesque Alps','Ski Resort','2025-05-17','10:00:00'),(16,13,'Alpine Trek','Hike through the stunning alpine landscapes','Alpine Hiking Trails','2025-05-18','09:00:00'),(17,14,'Beach Relaxation','Unwind on the pristine white sand beaches','White Sand Beaches','2025-06-07','12:00:00'),(18,14,'Snorkeling','Explore the vibrant coral reefs underwater','Coral Reefs','2025-06-08','10:00:00'),(19,15,'Desert Safari','Experience the thrill of dune bashing','Sand Dunes','2025-07-12','15:00:00'),(20,15,'Camel Riding','Enjoy a leisurely ride on the desert dunes','Desert Camp','2025-07-13','08:00:00');
/*!40000 ALTER TABLE `Activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Destinations`
--

DROP TABLE IF EXISTS `Destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Destinations` (
  `destination_ID` int NOT NULL,
  `destination_name` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `attractions` varchar(50) DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`destination_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Destinations`
--

LOCK TABLES `Destinations` WRITE;
/*!40000 ALTER TABLE `Destinations` DISABLE KEYS */;
INSERT INTO `Destinations` VALUES (201,'Mountain Valley','United States','Mountain Peak Trail, Scenic Overlook',3.00),(202,'City of Arts','France','City Museum, Café Chez Antoine',4.00),(203,'Sunny Shores','Australia','Sunny Beach, Marina',4.50),(204,'Seaside Town','Spain','Main Street, Seaside Grill',4.00),(205,'Forest Retreat','Canada','Forest Trailhead, Campsite #7',4.00),(206,'Lakeview Haven','New Zealand','Lake Trail, Campsite #3',4.67),(207,'Riverside Village','Italy','Riverwalk, Picnic Area',4.50),(208,'Historic District','United Kingdom','Old Town Square, Castle Ruins',4.50),(209,'Tropical Paradise','Brazil','Palm Beach, Jungle Trek',4.00),(210,'Mountain Resort','Switzerland','Ski Slopes, Chalet Village',3.50),(211,'Historic Village','Japan','Shrine, Traditional Tea House',4.00),(212,'Coastal Retreat','Australia','Surfing Beach, Coastal Trail',5.00),(213,'Alpine Escape','Switzerland','Ski Resort, Alpine Hiking Trails',4.00),(214,'Tropical Island','Maldives','White Sand Beaches, Coral Reefs',5.00),(215,'Desert Oasis','United Arab Emirates','Sand Dunes, Camel Riding',3.00);
/*!40000 ALTER TABLE `Destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Itineraries`
--

DROP TABLE IF EXISTS `Itineraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Itineraries` (
  `itinerary_ID` int NOT NULL,
  `user_ID` int NOT NULL,
  `destination_ID` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`itinerary_ID`),
  KEY `user_ID` (`user_ID`),
  KEY `destination_ID` (`destination_ID`),
  CONSTRAINT `itineraries_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `Users` (`user_ID`),
  CONSTRAINT `itineraries_ibfk_2` FOREIGN KEY (`destination_ID`) REFERENCES `Destinations` (`destination_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Itineraries`
--

LOCK TABLES `Itineraries` WRITE;
/*!40000 ALTER TABLE `Itineraries` DISABLE KEYS */;
INSERT INTO `Itineraries` VALUES (1,1,201,'2024-05-10','2024-05-15'),(2,2,202,'2024-06-20','2024-06-25'),(3,3,203,'2024-07-15','2024-07-20'),(4,4,204,'2024-08-05','2024-08-10'),(5,5,205,'2024-09-10','2024-09-15'),(6,6,206,'2024-10-05','2024-10-10'),(7,7,207,'2024-11-15','2024-11-20'),(8,8,208,'2024-12-01','2024-12-05'),(9,9,209,'2025-01-10','2025-01-15'),(10,10,210,'2025-02-20','2025-02-25'),(11,21,211,'2025-03-10','2025-03-15'),(12,22,212,'2025-04-20','2025-04-25'),(13,23,213,'2025-05-15','2025-05-22'),(14,24,214,'2025-06-05','2025-06-12'),(15,25,215,'2025-07-10','2025-07-17'),(16,11,206,'2025-08-05','2025-08-09'),(17,11,207,'2025-09-15','2025-09-18'),(18,12,208,'2025-10-01','2025-10-04'),(19,12,209,'2025-11-10','2025-11-14'),(20,13,210,'2025-12-20','2025-12-23');
/*!40000 ALTER TABLE `Itineraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `itinerary_details`
--

DROP TABLE IF EXISTS `itinerary_details`;
/*!50001 DROP VIEW IF EXISTS `itinerary_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `itinerary_details` AS SELECT 
 1 AS `user_ID`,
 1 AS `user_name`,
 1 AS `itinerary_ID`,
 1 AS `destination_name`,
 1 AS `country`,
 1 AS `start_date`,
 1 AS `end_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `itinerary_details2`
--

DROP TABLE IF EXISTS `itinerary_details2`;
/*!50001 DROP VIEW IF EXISTS `itinerary_details2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `itinerary_details2` AS SELECT 
 1 AS `user_ID`,
 1 AS `user_name`,
 1 AS `destination_ID`,
 1 AS `destination_name`,
 1 AS `country`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `activity_ID`,
 1 AS `activity_name`,
 1 AS `activity_description`,
 1 AS `activity_location`,
 1 AS `activity_date`,
 1 AS `activity_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `review_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `destination_id` int DEFAULT NULL,
  `activity_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `destination_id` (`destination_id`),
  KEY `activity_id` (`activity_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_ID`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `Destinations` (`destination_ID`),
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`activity_id`) REFERENCES `Activities` (`activity_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES (1,1,201,1,5),(2,2,202,3,4),(3,3,203,5,5),(4,4,204,7,3),(5,5,205,9,5),(6,6,206,10,4),(7,7,207,2,5),(8,8,208,4,4),(9,9,209,6,5),(10,10,210,8,3),(11,11,205,10,4),(12,12,206,6,5),(13,13,203,6,4),(14,14,204,8,5),(15,15,205,10,3),(16,16,206,1,5),(17,17,207,3,4),(18,18,208,5,5),(19,19,209,7,3),(20,20,210,9,4),(21,1,201,2,3),(22,2,202,5,4),(23,11,201,10,1),(24,1,211,12,4),(25,2,212,14,5),(26,3,213,13,4),(27,4,214,18,5),(28,5,215,19,3);
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_destination_rating` AFTER INSERT ON `reviews` FOR EACH ROW BEGIN
    DECLARE avg_rating DECIMAL(3,2);
    
    -- Calculate the average rating for the destination
    SELECT AVG(rating) 
    INTO avg_rating
    FROM Reviews
    WHERE destination_ID = NEW.destination_ID;
    
    -- Update the average rating of the destination in the Destinations table
    UPDATE Destinations
    SET average_rating = avg_rating
    WHERE destination_ID = NEW.destination_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `user_ID` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'MARY','SMITH','MARY.SMITH@sakilacustomer.org'),(2,'PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org'),(3,'LINDA','WILLIAMS','LINDA.WILLIAMS@sakilacustomer.org'),(4,'BARBARA','JONES','BARBARA.JONES@sakilacustomer.org'),(5,'ELIZABETH','BROWN','ELIZABETH.BROWN@sakilacustomer.org'),(6,'JENNIFER','DAVIS','JENNIFER.DAVIS@sakilacustomer.org'),(7,'MARIA','MILLER','MARIA.MILLER@sakilacustomer.org'),(8,'SUSAN','WILSON','SUSAN.WILSON@sakilacustomer.org'),(9,'MARGARET','MOORE','MARGARET.MOORE@sakilacustomer.org'),(10,'DOROTHY','TAYLOR','DOROTHY.TAYLOR@sakilacustomer.org'),(11,'LISA','ANDERSON','LISA.ANDERSON@sakilacustomer.org'),(12,'NANCY','THOMAS','NANCY.THOMAS@sakilacustomer.org'),(13,'KAREN','JACKSON','KAREN.JACKSON@sakilacustomer.org'),(14,'BETTY','WHITE','BETTY.WHITE@sakilacustomer.org'),(15,'HELEN','HARRIS','HELEN.HARRIS@sakilacustomer.org'),(16,'SANDRA','MARTIN','SANDRA.MARTIN@sakilacustomer.org'),(17,'DONNA','THOMPSON','DONNA.THOMPSON@sakilacustomer.org'),(18,'CAROL','GARCIA','CAROL.GARCIA@sakilacustomer.org'),(19,'RUTH','MARTINEZ','RUTH.MARTINEZ@sakilacustomer.org'),(20,'SHARON','ROBINSON','SHARON.ROBINSON@sakilacustomer.org'),(21,'MICHELLE','CLARK','MICHELLE.CLARK@sakilacustomer.org'),(22,'LAURA','RODRIGUEZ','LAURA.RODRIGUEZ@sakilacustomer.org'),(23,'SARAH','LEWIS','SARAH.LEWIS@sakilacustomer.org'),(24,'KIMBERLY','LEE','KIMBERLY.LEE@sakilacustomer.org'),(25,'DEBORAH','WALKER','DEBORAH.WALKER@sakilacustomer.org'),(26,'JESSICA','HALL','JESSICA.HALL@sakilacustomer.org'),(27,'SHIRLEY','ALLEN','SHIRLEY.ALLEN@sakilacustomer.org'),(28,'CYNTHIA','YOUNG','CYNTHIA.YOUNG@sakilacustomer.org'),(29,'ANGELA','HERNANDEZ','ANGELA.HERNANDEZ@sakilacustomer.org'),(30,'MELISSA','KING','MELISSA.KING@sakilacustomer.org'),(31,'BRENDA','WRIGHT','BRENDA.WRIGHT@sakilacustomer.org'),(32,'AMY','LOPEZ','AMY.LOPEZ@sakilacustomer.org'),(33,'ANNA','HILL','ANNA.HILL@sakilacustomer.org'),(34,'REBECCA','SCOTT','REBECCA.SCOTT@sakilacustomer.org'),(35,'VIRGINIA','GREEN','VIRGINIA.GREEN@sakilacustomer.org'),(36,'KATHLEEN','ADAMS','KATHLEEN.ADAMS@sakilacustomer.org'),(37,'PAMELA','BAKER','PAMELA.BAKER@sakilacustomer.org'),(38,'MARTHA','GONZALEZ','MARTHA.GONZALEZ@sakilacustomer.org'),(39,'DEBRA','NELSON','DEBRA.NELSON@sakilacustomer.org'),(40,'AMANDA','CARTER','AMANDA.CARTER@sakilacustomer.org'),(41,'STEPHANIE','MITCHELL','STEPHANIE.MITCHELL@sakilacustomer.org'),(42,'CAROLYN','PEREZ','CAROLYN.PEREZ@sakilacustomer.org'),(43,'CHRISTINE','ROBERTS','CHRISTINE.ROBERTS@sakilacustomer.org'),(44,'MARIE','TURNER','MARIE.TURNER@sakilacustomer.org'),(45,'JANET','PHILLIPS','JANET.PHILLIPS@sakilacustomer.org'),(46,'CATHERINE','CAMPBELL','CATHERINE.CAMPBELL@sakilacustomer.org'),(47,'FRANCES','PARKER','FRANCES.PARKER@sakilacustomer.org'),(48,'ANN','EVANS','ANN.EVANS@sakilacustomer.org'),(49,'JOYCE','EDWARDS','JOYCE.EDWARDS@sakilacustomer.org'),(50,'DIANE','COLLINS','DIANE.COLLINS@sakilacustomer.org');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'travel_itinerary1'
--

--
-- Dumping routines for database 'travel_itinerary1'
--
/*!50003 DROP FUNCTION IF EXISTS `calculate_duration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_duration`(start_date DATE, end_date DATE) RETURNS int
    DETERMINISTIC
BEGIN 
	DECLARE duration INT;
    SET duration = DATEDIFF(end_date, start_date);
    RETURN duration;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUserItineraries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserItineraries`(IN userId INT)
BEGIN
    SELECT
        u.first_name,
        u.last_name,
        d.destination_name,
        d.country,
        i.start_date,
        i.end_date,
        a.activity_name,
        a.activity_description,
        a.activity_date,
        a.activity_time
    FROM
        Users u
    JOIN
        Itineraries i ON u.user_ID = i.user_ID
    JOIN
        Destinations d ON i.destination_ID = d.destination_ID
    JOIN
        Activities a ON i.itinerary_ID = a.itinerary_ID
    WHERE
        u.user_ID = userId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `itinerary_details`
--

/*!50001 DROP VIEW IF EXISTS `itinerary_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `itinerary_details` AS select `u`.`user_ID` AS `user_ID`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `user_name`,`i`.`itinerary_ID` AS `itinerary_ID`,`d`.`destination_name` AS `destination_name`,`d`.`country` AS `country`,`i`.`start_date` AS `start_date`,`i`.`end_date` AS `end_date` from ((`users` `u` join `itineraries` `i` on((`u`.`user_ID` = `i`.`user_ID`))) join `destinations` `d` on((`i`.`destination_ID` = `d`.`destination_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `itinerary_details2`
--

/*!50001 DROP VIEW IF EXISTS `itinerary_details2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `itinerary_details2` AS select `u`.`user_ID` AS `user_ID`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `user_name`,`d`.`destination_ID` AS `destination_ID`,`d`.`destination_name` AS `destination_name`,`d`.`country` AS `country`,`i`.`start_date` AS `start_date`,`i`.`end_date` AS `end_date`,`a`.`activity_ID` AS `activity_ID`,`a`.`activity_name` AS `activity_name`,`a`.`activity_description` AS `activity_description`,`a`.`location` AS `activity_location`,`a`.`activity_date` AS `activity_date`,`a`.`activity_time` AS `activity_time` from (((`users` `u` join `itineraries` `i` on((`u`.`user_ID` = `i`.`user_ID`))) join `destinations` `d` on((`i`.`destination_ID` = `d`.`destination_ID`))) join `activities` `a` on((`i`.`itinerary_ID` = `a`.`itinerary_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 15:49:02
