--What was the hottest day in our data set? Where was that?--
--How many trips started at each station?--
--What's the shortest trip that happened?--
--What is the average trip duration, by end station?--
--
SELECT * FROM weather;

-- need help
SELECT 
	zip,
	date,
	MAX(maxtemperaturef)
FROM 
	weather
GROUP BY 
	zip, date;
	
--	
SELECT 
	start_station, COUNT(trip_id)
FROM 
	trips
GROUP BY 
	start_station;
	
-- need help
SELECT
	trip_id, duration
from 
	trips
WHERE 
	duration = 60
ORDER BY 
	duration ASC;
	
SELECT 
	end_station, AVG(duration)
FROM 
	trips
GROUP BY
	end_station;