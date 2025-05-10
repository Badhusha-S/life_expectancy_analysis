SELECT 'gdp' AS factor, CORR("life_expectancy" ,"gdp") AS correlation
FROM life_expectancy
UNION
SELECT 'adult_mortality' AS factor, CORR("life_expectancy", "adult_mortality") AS correlation
FROM life_expectancy
UNION
SELECT 'infant_deaths'AS factor, CORR("life_expectancy", "infant_deaths")AS correlation
FROM life_expectancy
UNION
SELECT 'alcohol'AS factor, CORR("life_expectancy", "alcohol")AS correlation
FROM life_expectancy
UNION
SELECT 'hepatitis_b'AS factor, CORR("life_expectancy", "hepatitis_b")AS correlation
FROM life_expectancy
UNION
SELECT 'measles'AS factor, CORR("life_expectancy", "measles")AS correlation
FROM life_expectancy
UNION
SELECT 'bmi'AS factor, CORR("life_expectancy", "bmi")AS correlation
FROM life_expectancy
UNION
SELECT 'under_five_deaths'AS factor, CORR("life_expectancy", "under_five_deaths")AS correlation
FROM life_expectancy
UNION
SELECT 'polio'AS factor, CORR("life_expectancy", "polio")AS correlation
FROM life_expectancy
UNION
SELECT 'diphtheria'AS factor, CORR("life_expectancy", "diphtheria")AS correlation
FROM life_expectancy
UNION
SELECT 'hiv_aids'AS factor, CORR("life_expectancy", "hiv_aids")AS correlation
FROM life_expectancy
UNION
SELECT 'population'AS factor, CORR("life_expectancy", "population")AS correlation
FROM life_expectancy
UNION
SELECT 'thinness_1_19_years'AS factor, CORR("life_expectancy", "thinness_1_19_years")AS correlation
FROM life_expectancy
UNION
SELECT 'thinness_5_9_years'AS factor, CORR("life_expectancy", "thinness_5_9_years")AS correlation
FROM life_expectancy
UNION
SELECT 'income_composition_of_resources'AS factor, CORR("life_expectancy", "income_composition_of_resources")AS correlation
FROM life_expectancy
UNION
SELECT 'schooling'AS factor, CORR("life_expectancy", "schooling")AS correlation
FROM life_expectancy
UNION 
SELECT 'percentage_expenditure'AS factor, corr("life_expectancy","percentage_expenditure")AS correlation
FROM life_expectancy
UNION
SELECT 'total_expenditure'AS factor, corr("life_expectancy","total_expenditure")AS correlation
FROM life_expectancy
ORDER BY correlation DESC;


