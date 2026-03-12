# United States Emissions Analytics Dashboard

## Project Overview
This project analyzes greenhouse gas emissions across the United States using Databricks SQL. The goal is to transform raw emissions data into meaningful insights and visualize them through an interactive dashboard.

The project focuses on analyzing:
- Emissions by state
- Emissions by county
- Emissions per capita
- Relationship between emissions and population

## Dataset Summary
Dataset Name: **Emissions**

The dataset contains emissions data collected from environmental reporting sources. It includes:

- Geographic identifiers (State, County)
- Population data
- Employment statistics
- Energy consumption metrics
- Greenhouse Gas emissions (CO2e)

This dataset helps analyze emission trends and identify regions contributing significantly to greenhouse gas emissions.

## Technologies Used

- Databricks SQL
- SQL
- Delta Tables
- Databricks Dashboards
- Data Visualization

## Project Architecture

Raw Dataset → Data Cleaning → SQL Transformations → Analytical Datasets → Dashboard Visualization

## Key Analytics Performed

1. Top counties contributing to emissions
2. State-wise emissions distribution
3. Emissions per capita analysis
4. Relationship between emissions and population
5. Geographic emission distribution

## Dashboard Insights

The dashboard includes the following visualizations:

### 1. Emissions Per Location
A geographic map that shows emissions distribution across locations.

### 2. Emissions vs Population
Scatter plot identifying how population size impacts emissions.

### 3. State Emission Percentage
Donut chart showing emission contributions by state.

### 4. Top Counties by Emissions
Bar chart highlighting counties with the highest emissions.

## Data Files in This Repository

- `data/Emissions_Data_2023.csv` – raw emissions dataset used for analysis  
- `data/Emissions_Data_2023.xlsx` – Excel version of the same dataset  
- `dashboards/Emission_Dashboard.png` – exported image of the Databricks dashboard  

Upload the CSV file into your Databricks workspace (for example into the `emissions.default` schema) before running the SQL scripts.

## SQL Scripts

- `sql/create_table.sql` – creates the `emissions.default.emissions_data` table  
- `sql/data_cleaning.sql` – cleans and standardizes population and emissions fields  
- `sql/total_emissions_by_state.sql` – aggregates emissions by state  
- `sql/top_counties_emissions.sql` – returns the top counties by total emissions  
- `sql/emission_per_person.sql` – computes emissions per person for each county  

Run these scripts in Databricks SQL in the following order:

1. `sql/create_table.sql` (create the table)  
2. Load data into `emissions.default.emissions_data` from the CSV  
3. `sql/data_cleaning.sql` and the analytical queries as needed  
