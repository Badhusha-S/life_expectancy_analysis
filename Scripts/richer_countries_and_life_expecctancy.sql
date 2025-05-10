SELECT  round(CAST(gdp AS NUMERIC),2) AS gdp,
round(avg(CAST (life_expectancy AS numeric)),2) AS avg_life_expectancy
FROM life_expectancy
GROUP BY gdp  ORDER BY gdp
;
