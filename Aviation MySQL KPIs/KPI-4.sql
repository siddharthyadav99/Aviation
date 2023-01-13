USE AVIATION;

SELECT * FROM FLIGHTS LIMIT 10;

########## Count of flights falling in the specific category for different Airlines
SELECT airline, count(airline)
FROM flights
WHERE DEPARTURE_DELAY <=0 AND ARRIVAL_DELAY<=0 AND (DISTANCE BETWEEN 2500 AND 3000)
GROUP BY airline; 

########## Number of airlines with No departure/arrival delay with distance covered between 2500 and 3000
SELECT COUNT(AIRLINE)
FROM FLIGHTS
WHERE DEPARTURE_DELAY <=0 AND ARRIVAL_DELAY<=0 AND (DISTANCE BETWEEN 2500 AND 3000); 
