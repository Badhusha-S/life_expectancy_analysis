WITH first_last AS (
SELECT 
country,YEAR,life_expectancy,
row_number() OVER (PARTITION BY country ORDER BY YEAR asc) AS FIRST_VALUE,
row_number() OVER (PARTITION BY country ORDER BY YEAR desc) AS LAST_VALUE
FROM life_expectancy),

first_last_life_exp AS (
SELECT 
f.country ,
f.life_expectancy AS first_life_expectancy,
l.life_expectancy AS last_life_expectancy,
(l.life_expectancy - f.life_expectancy ) AS life_exp_change
FROM first_last f
JOIN first_last l ON f.country = l.country 
WHERE f.FIRST_VALUE = 1 AND l.LAST_VALUE = 1)


SELECT country,
first_life_expectancy AS start_life_expectancy,
last_life_expectancy AS END_life_expectancy,
life_exp_change AS improvement
FROM first_last_life_exp
order BY improvement desc