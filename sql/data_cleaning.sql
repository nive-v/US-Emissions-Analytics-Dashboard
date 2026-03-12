SELECT
state,
county,
county_state_name,
CAST(REPLACE(population, ',', '') AS BIGINT) AS population,
CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS total_emissions
FROM emissions.default.emissions_data;
