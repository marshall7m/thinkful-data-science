SELECT * FROM stations;
SELECT name, city FROM stations;
SELECT * FROM stations;
SELECT name AS area FROM stations;
SELECT 
	start_station, end_station, duration
FROM 
	trips
WHERE 
	subscriber_type LIKE 'Customer'	
ORDER BY
	duration DESC
LIMIT 3;


SELECT
	trip_id, duration
FROM
	trips
WHERE 
	duration > 500
ORDER BY 
	duration DESC;
	
SELECT 
	*
FROM 
	stations
WHERE 
	station_id = 84;

SELECT 
	mintemperaturef
FROM 
	weather
WHERE
	zip = 94301 AND precipitationin > 0;


