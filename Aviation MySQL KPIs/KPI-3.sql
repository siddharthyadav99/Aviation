use aviation;

select * from airports;
SELECT* FROM airlines;
Select * from flights;

########## Week wise, State wise and City wise statistics of delay of flights with airline details

SELECT
SUM(departure_delay) as "total_departure_delay" ,
SUM(arrival_delay) as "total_arrival_delay" ,
SUM(air_system_delay) as "total_air_system_delay" ,	
SUM(security_delay) as "total_security_delay" ,
SUM(airline_delay) as "total_airline_delay" ,
SUM(late_aircraft_delay) as "total_late_aircraft_delay" ,
SUM(weather_delay) as "total_weather_delay" 
FROM flights;

SELECT DAY_OF_WEEK,
SUM(departure_delay) as "total_departure_delay" ,
SUM(arrival_delay) as "total_arrival_delay" ,
SUM(air_system_delay) as "total_air_system_delay" ,	
SUM(security_delay) as "total_security_delay" ,
SUM(airline_delay) as "total_airline_delay" ,
SUM(late_aircraft_delay) as "total_late_aircraft_delay" ,
SUM(weather_delay) as "total_weather_delay" 
FROM flights
GROUP BY DAY_OF_WEEK;


SELECT STATE,CITY,DAY_OF_WEEK,
SUM(departure_delay) as "total_departure_delay" ,
SUM(arrival_delay) as "total_arrival_delay" ,
SUM(air_system_delay) as "total_air_system_delay" ,	
SUM(security_delay) as "total_security_delay" ,
SUM(airline_delay) as "total_airline_delay" ,
SUM(late_aircraft_delay) as "total_late_aircraft_delay" ,
SUM(weather_delay) as "total_weather_delay" 
FROM flights F INNER JOIN AIRPORTS A ON A.IATA_CODE = F.ORIGIN_AIRPORT 
GROUP BY state,city,DAY_OF_WEEK
order by day_of_week;