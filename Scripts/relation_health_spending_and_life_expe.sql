SELECT status,
corr("percentage_expenditure","life_expectancy") AS corelation_perc_expenditure,
corr("total_expenditure","life_expectancy") AS corelatio_total_expenditure ,
corr("gdp","life_expectancy") AS corelation_gdp
FROM life_expectancy
GROUP BY status