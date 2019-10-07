-- 1

SELECT
   *
FROM
   information_schema.COLUMNS
WHERE
   TABLE_NAME = 'naep'
;

-- 2

SELECT 
	* 
FROM 
	naep 
LIMIT 
	50
;

-- 3

SELECT 
	state, 
	COUNT(avg_math_4_score), 
	AVG(avg_math_4_score), 
	MIN(avg_math_4_score), 
	MAX(avg_math_4_score) 
FROM 
	naep 
GROUP BY 
	state 
ORDER BY 
	state ASC
;

-- 4

SELECT 
	state, 
	COUNT(avg_math_4_score), 
	AVG(avg_math_4_score), 
	MIN(avg_math_4_score), 
	MAX(avg_math_4_score) 
FROM 
	naep 
GROUP BY 
	state 
HAVING 
	MAX(avg_math_4_score) - MIN(avg_math_4_score) > 30
ORDER BY 
	state ASC
;

-- 5 

SELECT 
	state AS bottom_10_states
FROM 
	naep 
WHERE 
	year=2000 
AND 
	avg_math_4_score IS NOT NULL
ORDER BY
	avg_math_4_score ASC
LIMIT 
	10
;

-- 6

SELECT
	ROUND(AVG(avg_math_4_score), 2)
FROM
	naep
WHERE 
	year=2000
GROUP BY 
	state
;

-- 7 

SELECT
	state AS below_average_states_y2000
FROM 
	naep
WHERE
	year=2000
AND
	avg_math_4_score IS NOT null
GROUP BY 
	state, avg_math_4_score
HAVING 
	AVG(avg_math_4_score) > (SELECT AVG(avg_math_4_score) FROM naep WHERE year=2000)
;

-- 8

SELECT
	state AS scores_missing_y2000
FROM 
	naep
WHERE
	avg_math_4_score IS null
AND
	year=2000
;

-- 9 

SELECT 
	naep.state,
	ROUND(naep.avg_math_4_score, 2),
	finance.total_expenditure
FROM 
	naep
LEFT JOIN 
	finance
ON 
	naep.id=finance.id
WHERE 
	naep.avg_math_4_score IS NOT null
AND
	naep.year=2000
ORDER BY
	finance.total_expenditure DESC
;




