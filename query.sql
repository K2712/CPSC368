-- Join the UN and World Bank data
SELECT 
    c.name AS country,
    wb.health_expenditure,
    wb.gdp_per_capita,
    wb.immunization_rate,
    wb.internet_usage,
    wb.urban_population,
    un.crude_death_rate,
    un.life_expectancy
FROM Countries c
JOIN World_Bank_Data wb ON c.country_id = wb.country_id
JOIN UN_Data un ON c.country_id = un.country_id;
