--What are the three longest trips on rainy days?
--Which station is full most often?
--Return a list of stations with a count of number of trips starting at that station but ordered by dock count.
--(Challenge) What's the length of the longest trip for each day it rains anywhere?

SELECT * FROM status_abbreviated;

-- need help
SELECT
	weather.date,
	weather.events,
	trips.start_date,
	trips.duration
FROM 
	weather
LEFT JOIN 
	trips
ON
	trips.start_date = weather.date
WHERE 
	weather.events = 'Rain';
-- group by looks wrong
SELECT 
	station_id,
	bikes_available,
	docks_available,
	COUNT(*)
FROM 
	status
WHERE
	bikes_available = docks_available
GROUP BY
	station_id, bikes_available, docks_available;

SELECT 
	trips.start_station,
	stations.name,
	Count(*)
FROM 
	trips
JOIN
	stations
ON
	trips.start_station = stations.name
GROUP BY 
	trips.start_station, stations.name;
	
