WITH country_trends AS (
SELECT country,
min(year) AS start_year,
max(year) AS end_year,
min(life_expectancy) FILTER (
  WHERE YEAR=(
     SELECT 
       min(year)  FROM life_expectancy)) AS life_exp_start,
max(life_expectancy) FILTER (
  WHERE YEAR=(
     SELECT 
       max(year)  FROM life_expectancy)) AS life_exp_end
FROM life_expectancy 
GROUP BY country)
SELECT *,
(life_exp_end - life_exp_start) AS life_exp_change
FROM country_trends
WHERE life_exp_end - life_exp_start < 0