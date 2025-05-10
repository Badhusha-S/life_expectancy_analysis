WITH  CLUSTER AS (
SELECT disTINCT ON (country)
country,YEAR,schooling,bmi,diphtheria,polio,alcohol,income_composition_of_resources
FROM life_expectancy
ORDER BY country,YEAR DESC),
ranked_data AS (
SELECT country,percent_rank()over(ORDER BY schooling desc) AS schooling_score,
percent_rank()over(ORDER BY bmi  desc) AS bmi_score,
percent_rank()over(ORDER BY diphtheria  asc) AS diphtheria_score,
percent_rank()over(ORDER BY polio  asc) AS polio_score,
percent_rank()over(ORDER BY alcohol  ASC ) AS alcohol_score,
percent_rank()over(ORDER BY income_composition_of_resources  desc) AS income_composition_of_resources_score
FROM CLUSTER )
,
health_score AS (
SELECT country,round(CAST((schooling_score + 
bmi_score+
diphtheria_score+
polio_score+
alcohol_score+
income_composition_of_resources_score) / 5 AS NUMERIC),4) AS composite_health_score 
FROM ranked_data)


SELECT country,
composite_health_score, CASE 
	WHEN composite_health_score < 0.4 THEN 'low' 
	WHEN composite_health_score BETWEEN 0.4 AND 0.7 THEN 'medium'
	ELSE 'high'
END AS health_profile_cluster
FROM health_score
ORDER BY composite_health_score DESC;
