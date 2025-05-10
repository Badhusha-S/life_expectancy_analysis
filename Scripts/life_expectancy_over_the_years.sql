SELECT YEAR,
round(avg(CAST (life_expectancy AS numeric)),2) AS avg_life_expectancy
FROM life_expectancy
GROUP BY year
ORDER BY YEAR 