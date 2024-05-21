-- TRAVEL ITINERARY DATABASE
-- Create Database
CREATE DATABASE travel_itinerary1;

-- Use Database
USE travel_itinerary1;

-- Create Tables
-- User Table
CREATE TABLE Users (
user_ID INT NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50),
email VARCHAR(100) NOT NULL
);

-- Values from Sakila Database
INSERT INTO Users
(user_ID, first_name, last_name, email)
VALUES
(1,	'MARY',	'SMITH',	'MARY.SMITH@sakilacustomer.org'),
(2,	'PATRICIA',	'JOHNSON',	'PATRICIA.JOHNSON@sakilacustomer.org'),
(3,	'LINDA',	'WILLIAMS',	'LINDA.WILLIAMS@sakilacustomer.org'),
(4,	'BARBARA',	'JONES',	'BARBARA.JONES@sakilacustomer.org'),
(5,	'ELIZABETH',	'BROWN',	'ELIZABETH.BROWN@sakilacustomer.org'),
(6,	'JENNIFER',	'DAVIS',	'JENNIFER.DAVIS@sakilacustomer.org'),
(7,	'MARIA',	'MILLER',	'MARIA.MILLER@sakilacustomer.org'),
(8,	'SUSAN',	'WILSON',	'SUSAN.WILSON@sakilacustomer.org'),
(9,	'MARGARET',	'MOORE',	'MARGARET.MOORE@sakilacustomer.org'),
(10,	'DOROTHY',	'TAYLOR',	'DOROTHY.TAYLOR@sakilacustomer.org'),
(11,	'LISA',	'ANDERSON',	'LISA.ANDERSON@sakilacustomer.org'),
(12,	'NANCY',	'THOMAS',	'NANCY.THOMAS@sakilacustomer.org'),
(13,	'KAREN',	'JACKSON',	'KAREN.JACKSON@sakilacustomer.org'),
(14,	'BETTY',	'WHITE',	'BETTY.WHITE@sakilacustomer.org'),
(15,	'HELEN',	'HARRIS',	'HELEN.HARRIS@sakilacustomer.org'),
(16,	'SANDRA',	'MARTIN',	'SANDRA.MARTIN@sakilacustomer.org'),
(17,	'DONNA',	'THOMPSON',	'DONNA.THOMPSON@sakilacustomer.org'),
(18,	'CAROL',	'GARCIA',	'CAROL.GARCIA@sakilacustomer.org'),
(19,	'RUTH',	'MARTINEZ',	'RUTH.MARTINEZ@sakilacustomer.org'),
(20,	'SHARON',	'ROBINSON',	'SHARON.ROBINSON@sakilacustomer.org'),
(21,	'MICHELLE',	'CLARK',	'MICHELLE.CLARK@sakilacustomer.org'),
(22,	'LAURA',	'RODRIGUEZ',	'LAURA.RODRIGUEZ@sakilacustomer.org'),
(23,	'SARAH',	'LEWIS',	'SARAH.LEWIS@sakilacustomer.org'),
(24,	'KIMBERLY',	'LEE',	'KIMBERLY.LEE@sakilacustomer.org'),
(25,	'DEBORAH',	'WALKER',	'DEBORAH.WALKER@sakilacustomer.org'),
(26,	'JESSICA',	'HALL',	'JESSICA.HALL@sakilacustomer.org'),
(27,	'SHIRLEY',	'ALLEN',	'SHIRLEY.ALLEN@sakilacustomer.org'),
(28,	'CYNTHIA',	'YOUNG',	'CYNTHIA.YOUNG@sakilacustomer.org'),
(29,	'ANGELA',	'HERNANDEZ',	'ANGELA.HERNANDEZ@sakilacustomer.org'),
(30,	'MELISSA',	'KING',	'MELISSA.KING@sakilacustomer.org'),
(31,	'BRENDA',	'WRIGHT',	'BRENDA.WRIGHT@sakilacustomer.org'),
(32,	'AMY',	'LOPEZ',	'AMY.LOPEZ@sakilacustomer.org'),
(33,	'ANNA',	'HILL',	'ANNA.HILL@sakilacustomer.org'),
(34,	'REBECCA',	'SCOTT',	'REBECCA.SCOTT@sakilacustomer.org'),
(35,	'VIRGINIA',	'GREEN',	'VIRGINIA.GREEN@sakilacustomer.org'),
(36,	'KATHLEEN',	'ADAMS',	'KATHLEEN.ADAMS@sakilacustomer.org'),
(37,	'PAMELA',	'BAKER',	'PAMELA.BAKER@sakilacustomer.org'),
(38,	'MARTHA',	'GONZALEZ',	'MARTHA.GONZALEZ@sakilacustomer.org'),
(39,	'DEBRA',	'NELSON',	'DEBRA.NELSON@sakilacustomer.org'),
(40,	'AMANDA',	'CARTER',	'AMANDA.CARTER@sakilacustomer.org'),
(41,	'STEPHANIE',	'MITCHELL',	'STEPHANIE.MITCHELL@sakilacustomer.org'),
(42,	'CAROLYN',	'PEREZ',	'CAROLYN.PEREZ@sakilacustomer.org'),
(43,	'CHRISTINE',	'ROBERTS',	'CHRISTINE.ROBERTS@sakilacustomer.org'),
(44,	'MARIE',	'TURNER',	'MARIE.TURNER@sakilacustomer.org'),
(45,	'JANET',	'PHILLIPS',	'JANET.PHILLIPS@sakilacustomer.org'),
(46,	'CATHERINE',	'CAMPBELL',	'CATHERINE.CAMPBELL@sakilacustomer.org'),
(47,	'FRANCES',	'PARKER',	'FRANCES.PARKER@sakilacustomer.org'),
(48,	'ANN',	'EVANS',	'ANN.EVANS@sakilacustomer.org'),
(49,	'JOYCE',	'EDWARDS',	'JOYCE.EDWARDS@sakilacustomer.org'),
(50,	'DIANE',	'COLLINS',	'DIANE.COLLINS@sakilacustomer.org');


-- Destinations Table
CREATE TABLE Destinations (
destination_ID INT NOT NULL PRIMARY KEY,
destination_name VARCHAR(50) NOT NULL,
country VARCHAR(50), 
attractions VARCHAR(50)
);

INSERT INTO Destinations 
(destination_ID, destination_name, country, attractions)
VALUES
(201, 'Mountain Valley', 'United States', 'Mountain Peak Trail, Scenic Overlook'),
(202, 'City of Arts', 'France', 'City Museum, Café Chez Antoine'),
(203, 'Sunny Shores', 'Australia', 'Sunny Beach, Marina'),
(204, 'Seaside Town', 'Spain', 'Main Street, Seaside Grill'),
(205, 'Forest Retreat', 'Canada', 'Forest Trailhead, Campsite #7'),
(206, 'Lakeview Haven', 'New Zealand', 'Lake Trail, Campsite #3'),
(207, 'Riverside Village', 'Italy', 'Riverwalk, Picnic Area'),
(208, 'Historic District', 'United Kingdom', 'Old Town Square, Castle Ruins'),
(209, 'Tropical Paradise', 'Brazil', 'Palm Beach, Jungle Trek'),
(210, 'Mountain Resort', 'Switzerland', 'Ski Slopes, Chalet Village'),
(211, 'Historic Village', 'Japan', 'Shrine, Traditional Tea House'),
(212, 'Coastal Retreat', 'Australia', 'Surfing Beach, Coastal Trail'),
(213, 'Alpine Escape', 'Switzerland', 'Ski Resort, Alpine Hiking Trails'),
(214, 'Tropical Island', 'Maldives', 'White Sand Beaches, Coral Reefs'),
(215, 'Desert Oasis', 'United Arab Emirates', 'Sand Dunes, Camel Riding');


-- Itineraries Table
CREATE TABLE Itineraries (
itinerary_ID INT NOT NULL PRIMARY KEY,
user_ID INT NOT NULL,
destination_ID INT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
FOREIGN KEY (destination_ID) REFERENCES Destinations(destination_ID)
);

INSERT INTO Itineraries
(itinerary_ID, user_ID, destination_ID, start_date, end_date)
VALUES
(1, 1, 201, '2024-05-10', '2024-05-15'),
(2, 2, 202, '2024-06-20', '2024-06-25'),
(3, 3, 203, '2024-07-15', '2024-07-20'),
(4, 4, 204, '2024-08-05', '2024-08-10'),
(5, 5, 205, '2024-09-10', '2024-09-15'),
(6, 6, 206, '2024-10-05', '2024-10-10'),
(7, 7, 207, '2024-11-15', '2024-11-20'),
(8, 8, 208, '2024-12-01', '2024-12-05'), 
(9, 9, 209, '2025-01-10', '2025-01-15'), 
(10, 10, 210, '2025-02-20', '2025-02-25'), 
(11, 21, 211, '2025-03-10', '2025-03-15'),
(12, 22, 212, '2025-04-20', '2025-04-25'),
(13, 23, 213, '2025-05-15', '2025-05-22'),
(14, 24, 214, '2025-06-05', '2025-06-12'),
(15, 25, 215, '2025-07-10', '2025-07-17'),
(16, 11, 206, '2025-08-05', '2025-08-09'),
(17, 11, 207, '2025-09-15', '2025-09-18'),
(18, 12, 208, '2025-10-01', '2025-10-04'),
(19, 12, 209, '2025-11-10', '2025-11-14'),
(20, 13, 210, '2025-12-20', '2025-12-23');


-- Activites Table
CREATE TABLE Activities (
activity_ID INT NOT NULL PRIMARY KEY, 
itinerary_ID INT NOT NULL,
activity_name VARCHAR(50) NOT NULL, 
activity_description VARCHAR(100),
location VARCHAR(100),
activity_date DATE, 
activity_time TIME, 
FOREIGN KEY (itinerary_ID) REFERENCES Itineraries(itinerary_ID)
);

INSERT INTO Activities 
(activity_ID, itinerary_ID, activity_name, activity_description, location, activity_date, activity_time) 
VALUES
(1, 1, 'Hiking', 'Explore the local trails', 'Mountain Peak Trail', '2024-05-12', '10:00:00'),
(2, 1, 'Picnic', 'Enjoy lunch with a view', 'Scenic Overlook', '2024-05-12', '12:30:00'),
(3, 2, 'Museum Visit', 'Discover local history and art', 'City Museum', '2024-06-21', '11:00:00'),
(4, 2, 'Dinner', 'Taste local cuisine', 'Café Chez Antoine', '2024-06-21', '19:00:00'),
(5, 3, 'Beach Day', 'Relax on the sandy shores', 'Sunny Beach', '2024-07-16', '14:00:00'),
(6, 3, 'Sunset Cruise', 'Enjoy a scenic boat ride', 'Marina', '2024-07-17', '18:00:00'),
(7, 4, 'Shopping', 'Browse local shops and boutiques', 'Main Street', '2024-08-06', '11:00:00'),
(8, 4, 'Dinner', 'Try out the towns famous seafood', 'Seaside Grill', '2024-08-07', '19:30:00'),
(9, 5, 'Hiking', 'Explore the nearby trails', 'Forest Trailhead', '2024-09-11', '09:00:00'),
(10, 5, 'Camping', 'Spend the night under the stars', 'Campsite #7', '2024-09-12', '17:00:00'),
(11, 11, 'Shrine Visit', 'Experience traditional Japanese culture', 'Shrine', '2025-03-12', '10:00:00'),
(12, 11, 'Tea Ceremony', 'Partake in a traditional tea ceremony', 'Traditional Tea House', '2025-03-12', '14:00:00'),
(13, 12, 'Surfing', 'Catch some waves on the coastal waters', 'Surfing Beach', '2025-04-21', '09:00:00'),
(14, 12, 'Coastal Hike', 'Explore the scenic coastal trails', 'Coastal Trail', '2025-04-22', '11:00:00'),
(15, 13, 'Skiing', 'Enjoy skiing in the picturesque Alps', 'Ski Resort', '2025-05-17', '10:00:00'),
(16, 13, 'Alpine Trek', 'Hike through the stunning alpine landscapes', 'Alpine Hiking Trails', '2025-05-18', '09:00:00'),
(17, 14, 'Beach Relaxation', 'Unwind on the pristine white sand beaches', 'White Sand Beaches', '2025-06-07', '12:00:00'),
(18, 14, 'Snorkeling', 'Explore the vibrant coral reefs underwater', 'Coral Reefs', '2025-06-08', '10:00:00'),
(19, 15, 'Desert Safari', 'Experience the thrill of dune bashing', 'Sand Dunes', '2025-07-12', '15:00:00'),
(20, 15, 'Camel Riding', 'Enjoy a leisurely ride on the desert dunes', 'Desert Camp', '2025-07-13', '08:00:00');

-- Reviews Table
CREATE TABLE Reviews (
    review_ID INT PRIMARY KEY,
    user_ID INT,
    destination_ID INT,
    activity_ID INT,
    rating INT,
    FOREIGN KEY (user_ID) REFERENCES Users(user_ID),
    FOREIGN KEY (destination_ID) REFERENCES Destinations(destination_ID),
    FOREIGN KEY (activity_ID) REFERENCES Activities(activity_ID)
);

INSERT INTO Reviews (review_id, user_id, destination_id, activity_id, rating) VALUES
(1, 1, 201, 1, 5),
(2, 2, 202, 3, 4), 
(3, 3, 203, 5, 5),
(4, 4, 204, 7, 3), 
(5, 5, 205, 9, 5), 
(6, 6, 206, 10, 4), 
(7, 7, 207, 2, 5),
(8, 8, 208, 4, 4),
(9, 9, 209, 6, 5), 
(10, 10, 210, 8, 3),
(11, 11, 205, 10, 4),
(12, 12, 206, 6, 5),
(13, 13, 203, 6, 4), 
(14, 14, 204, 8, 5),
(15, 15, 205, 10, 3), 
(16, 16, 206, 1, 5), 
(17, 17, 207, 3, 4), 
(18, 18, 208, 5, 5), 
(19, 19, 209, 7, 3),
(20, 20, 210, 9, 4),
(21, 1, 201, 2, 3),
(22, 2, 202, 5, 4);

INSERT INTO Reviews (review_id, user_id, destination_id, activity_id, rating) 
VALUES
(24, 1, 211, 12, 4),
(25, 2, 212, 14, 5), 
(26, 3, 213, 13, 4),
(27, 4, 214, 18, 5), 
(28, 5, 215, 19, 3); 


-- CORE REQUIREMENTS
-- [3] Use joins to create a view that combines multiple tables in a logical way
CREATE VIEW itinerary_details 
AS
SELECT
	u.user_ID,
    CONCAT(u.first_name, ' ', u.last_name) as user_name,
    i.itinerary_ID,
    d.destination_name,
    d.country,
    i.start_date,
    i.end_date
FROM 
	Users u
JOIN
	Itineraries i ON u.user_ID = i.user_ID
JOIN
	Destinations d ON i.destination_ID = d.destination_ID;
    
SELECT * FROM itinerary_details;

-- [4] Create a stored function that can be applied to a query in your Database
DELIMITER //
CREATE FUNCTION calculate_duration(start_date DATE, end_date DATE)
RETURNS INT
DETERMINISTIC 
BEGIN 
	DECLARE duration INT;
    SET duration = DATEDIFF(end_date, start_date);
    RETURN duration;
END //

DELIMITER ;

SELECT Calculate_Duration('2024-05-10', '2024-05-15') AS days_duration;

-- [5] Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
SELECT 
	d.destination_name,
    d.country,
    COUNT(r.review_id) AS total_reviews,
    AVG(r.rating) AS average_rating
FROM 
	Destinations d
LEFT JOIN
	Reviews r ON d.destination_ID = r.destination_ID
GROUP BY
	d.destination_name, d.country
HAVING
	AVG(r.rating) = (
		SELECT
			MAX(avg_rating)
		FROM (
			SELECT
				AVG(rating) AS avg_rating
			FROM 
				Reviews
			GROUP BY
				destination_id
		) AS subquery
);

-- [6]  Create a DB diagram where all table relations are shown

-- ADVANCED REQUIREMENTS
-- [1] Create a stored procedure and demonstrate how it runs: retrieve itinerary details for a specific user
DELIMITER //

CREATE PROCEDURE GetUserItineraries(IN userId INT)
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
END //

DELIMITER ;
-- Call and execute the stored procedure to retrieve itinerary details for a specific User
CALL GetUserItineraries(21);


-- [2] Create a trigger and demonstrate how it runs: trigger for updating the average rating of a destination
-- Add column to destinations
ALTER TABLE destinations
ADD COLUMN average_rating DECIMAL(3,2) DEFAULT NULL;

-- Drop the previous trigger if exists
DROP TRIGGER IF EXISTS update_destination_rating;

DELIMITER //

CREATE TRIGGER update_destination_rating
AFTER INSERT ON Reviews
FOR EACH ROW
BEGIN
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
END;
//

DELIMITER ;

-- Insert a new review
INSERT INTO 
Reviews (review_ID, user_ID, destination_ID, activity_ID, rating) 
VALUES
(23, 11, 201, 10, 1); -- Insert a review for Destination 201 and Activity 10 (Camping)

-- Check the Destinations table to see the updated average rating for Destination 201
SELECT * FROM Destinations 
WHERE destination_ID = 201;

-- [4] 
-- Create a view that uses at least 3-4 base tables
CREATE VIEW itinerary_details2 AS
SELECT
    u.user_ID,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    d.destination_ID,
    d.destination_name,
    d.country,
    i.start_date,
    i.end_date,
    a.activity_ID,
    a.activity_name,
    a.activity_description,
    a.location AS activity_location,
    a.activity_date,
    a.activity_time
FROM
    Users u
JOIN
    Itineraries i ON u.user_ID = i.user_ID
JOIN
    Destinations d ON i.destination_ID = d.destination_ID
JOIN
    Activities a ON i.itinerary_ID = a.itinerary_ID;

SELECT * FROM itinerary_details2;

-- Demonstrate a query that uses the view to produce a logically arrange result set for analysis
SELECT
    user_name,
    destination_name,
    country,
    start_date,
    end_date,
    activity_name,
    activity_description,
    activity_location,
    activity_date,
    activity_time
FROM
    itinerary_details2
WHERE
    YEAR(start_date) = 2025 AND YEAR(end_date) = 2025 
ORDER BY
    user_name, start_date, activity_date, activity_time;

