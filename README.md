# Travel Itinerary Database

This repository contains SQL scripts to set up and populate a database for managing travel itineraries, including user information, destinations, activities, and reviews.

## Database Structure

The database consists of the following tables:

- **Users**: Stores information about users, including their names and email addresses.
- **Destinations**: Contains details about travel destinations, including the destination name, country, and attractions.
- **Itineraries**: Tracks user itineraries, including the destination, start date, and end date.
- **Activities**: Stores information about activities planned for each itinerary, including the activity name, description, location, date, and time.
- **Reviews**: Manages user reviews for destinations and activities, including the rating provided.

## Core Requirements

1. **Joins and Views**: Utilizes joins to create a view named `itinerary_details` that combines user, itinerary, and destination information.
2. **Stored Function**: Implements a stored function named `calculate_duration` to compute the duration between two dates.
3. **Subquery**: Includes an example query with a subquery to extract data for analysis.
4. **DB Diagram**: Provides a diagram illustrating the relationships between database tables.

## Advanced Requirements

1. **Stored Procedure**: Defines a stored procedure named `GetUserItineraries` to retrieve itinerary details for a specific user.
2. **Trigger**: Implements a trigger named `update_destination_rating` to update the average rating of a destination when a new review is added.
3. **Stored Function**: Adds a stored function to calculate the average rating of a destination.
4. **View with Multiple Tables**: Creates a view named `itinerary_details2` that incorporates information from multiple base tables.

## Getting Started

To set up the database, execute the SQL scripts in the provided order. You can use a MySQL database management tool like MySQL Workbench or phpMyAdmin to run the scripts.

Feel free to explore the database schema and interact with the data to understand its structure and functionality.

## Example Queries

Here are some example queries to get you started:

- Retrieve itinerary details for a specific user:
  ```sql
  CALL GetUserItineraries(21);
  ```

- Get the average rating for each destination:
  ```sql
  SELECT
      d.destination_name,
      d.country,
      AVG(r.rating) AS average_rating
  FROM
      Destinations d
  LEFT JOIN
      Reviews r ON d.destination_ID = r.destination_ID
  GROUP BY
      d.destination_name, d.country;
  ```

---




