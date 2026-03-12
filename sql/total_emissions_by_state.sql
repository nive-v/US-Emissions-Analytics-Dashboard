SELECT
state,
SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS total_emissions
FROM emissions.default.emissions_data
GROUP BY state
ORDER BY total_emissions DESC;
