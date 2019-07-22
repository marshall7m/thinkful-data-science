--What was the hottest day in our data set? Where was that?--
--How many trips started at each station?--
--What's the shortest trip that happened?--
--What is the average trip duration, by end station?--
--
SELECT * FROM weather;

<<<<<<< HEAD
=======
-- need help
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
SELECT 
	zip,
	date,
	MAX(maxtemperaturef)
FROM 
	weather
GROUP BY 
<<<<<<< HEAD
	zip, date
ORDER BY 
	MAX(maxtemperaturef) DESC;
=======
	zip, date;
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
	
--	
SELECT 
	start_station, COUNT(trip_id)
FROM 
	trips
GROUP BY 
	start_station;
	
-- need help
SELECT
<<<<<<< HEAD
	trip_id, MIN(duration)
FROM 
	trips
GROUP BY
	trip_id, duration
=======
	trip_id, duration
from 
	trips
WHERE 
	duration = 60
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
ORDER BY 
	duration ASC;
	
SELECT 
	end_station, AVG(duration)
FROM 
	trips
GROUP BY
	end_station;