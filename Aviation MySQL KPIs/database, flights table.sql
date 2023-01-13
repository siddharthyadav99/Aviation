create database Aviation;

use aviation;

CREATE TABLE FLIGHTS (
`YEAR` INT,
`MONTH` INT,
`DAY` INT,
DAY_OF_WEEK INT,
AIRLINE VARCHAR(20),
FLIGHT_NUMBER INT,
TAIL_NUMBER VARCHAR(20),
ORIGIN_AIRPORT VARCHAR(20),
DESTINATION_AIRPORT VARCHAR(20),
SCHEDULED_DEPARTURE INT,
DEPARTURE_TIME VARCHAR(255),
DEPARTURE_DELAY VARCHAR(255),
TAXI_OUT VARCHAR(255),
WHEELS_OFF VARCHAR(255),
SCHEDULED_TIME VARCHAR(255),
ELAPSED_TIME VARCHAR(255),
AIR_TIME VARCHAR(255),
DISTANCE INT,
WHEELS_ON VARCHAR(255),
TAXI_IN VARCHAR(255),
SCHEDULED_ARRIVAL INT,
ARRIVAL_TIME VARCHAR(255),
ARRIVAL_DELAY VARCHAR(255),
DIVERTED INT,
CANCELLED INT,
CANCELLED_REASON VARCHAR(10),
AIR_SYSTEM_DELAY VARCHAR(255),
SECURITY_DELAY VARCHAR(255),
AIRLINE_DELAY VARCHAR(255),
LATE_AIRCRAFT_DELAY VARCHAR(255),
WEATHER_DELAY VARCHAR(255));

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/flights.csv"
INTO TABLE FLIGHTS
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;	

SELECT * FROM FLIGHTS LIMIT 10;

	