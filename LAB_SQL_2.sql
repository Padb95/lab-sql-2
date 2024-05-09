-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'SCARLETT';

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM SAKILA.ACTOR
WHERE LAST_NAME = 'Johansson';

-- How many films (movies) are available for rent?

SELECT COUNT(INVENTORY_ID)
FROM SAKILA.INVENTORY;

-- How many films have been rented?

SELECT COUNT(RENTAL_ID)
FROM SAKILA.RENTAL;

-- What is the shortest and longest rental period?

SELECT MAX(RENTAL_DURATION)
FROM SAKILA.FILM;

SELECT MIN(RENTAL_DURATION)
FROM SAKILA.FILM;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration

SELECT MAX(LENGTH) AS MAX_DURATION, MIN(LENGTH) AS MIN_DURATION
FROM SAKILA.FILM;

-- What's the average movie duration?

SELECT AVG(LENGTH)
FROM SAKILA.FILM;

-- What's the average movie duration expressed in format (hours, minutes)?

SELECT SEC_TO_TIME(AVG(LENGTH)*60) as AVG_HOURS
FROM SAKILA.FILM;

-- How many movies longer than 3 hours?

SELECT COUNT(LENGTH)
FROM SAKILA.FILM
WHERE LENGTH > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME), ' - ', LOWER(EMAIL)) AS FAORMATED_NAME_AND_EMAIL
FROM SAKILA.CUSTOMER;

-- What's the length of the longest film title?

SELECT TITLE
FROM SAKILA.FILM
WHERE LENGTH(title) = (SELECT MAX(LENGTH(title)) FROM film);