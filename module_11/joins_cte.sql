--What are the three longest trips on rainy days?
--Which station is full most often?
--Return a list of stations with a count of number of trips starting at that station but ordered by dock count.
--(Challenge) What's the length of the longest trip for each day it rains anywhere?

<<<<<<< HEAD
SET time zone UTC;

SELECT
	weather.date,
	weather.events,
	trips.trip_id,
=======
SELECT * FROM status_abbreviated;

-- need help
SELECT
	weather.date,
	weather.events,
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
	trips.start_date,
	trips.duration
FROM 
	weather
<<<<<<< HEAD
JOIN 
	trips
ON
	date_trunc('day', to_timestamp(trips.start_date, 'YYYY-MM-DD HH24:MI:SS')) = to_timestamp(weather.date, 'YYYY-MM-DD')
AND 
	trips.zip_code = weather.zip
WHERE 
	weather.events = 'Rain'
ORDER BY 
	trips.duration DESC
LIMIT 3;

SELECT 
	station_id,
	MAX(bikes_available),
	MAX(docks_available),
=======
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
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
	COUNT(*)
FROM 
	status
WHERE
	bikes_available = docks_available
GROUP BY
<<<<<<< HEAD
	station_id
ORDER BY 4 DESC;
=======
	station_id, bikes_available, docks_available;
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74

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
<<<<<<< HEAD
	trips.start_station, stations.name
;
=======
	trips.start_station, stations.name;
	
>>>>>>> a4a2f514bdaa2f51d73dcec6c9695b363d4c2d74
