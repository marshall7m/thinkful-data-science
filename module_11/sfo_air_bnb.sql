--What's the most expensive listing? What else can you tell me about the listing?

SELECT 
	* 
FROM 
	sfo_listings, sfo_reviews
WHERE sfo_listings.id = 24650875 AND sfo_reviews.listing_id = 24650875;

--What neighborhoods seem to be the most popular?

SELECT
	neighbourhood,
	COUNT(*)
FROM 
	sfo_listings
GROUP BY
	neighbourhood
ORDER BY 
	COUNT(*) DESC;

----What time of year is the cheapest time to go to San Francisco? 

-- Cheapest time of year (by month)
SELECT 
	EXTRACT(month FROM calender_date) as month, AVG(CAST(REPLACE(REPLACE(price, '$', ''), ',', '') AS FLOAT))
FROM 
	sfo_calendar_abbreviated
GROUP BY 
	month
ORDER BY
	avg ASC;
	
--What about the busiest?
SELECT 
	EXTRACT(month FROM calender_date) as month, available, COUNT(*)
FROM 
	sfo_calendar_abbreviated
WHERE 
	available = 'f'
GROUP BY
	month, available
ORDER BY 
	COUNT(*) DESC;
