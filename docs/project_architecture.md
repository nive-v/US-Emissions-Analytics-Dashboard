# Project Architecture

## Overview

This project follows a structured data processing workflow using Databricks SQL to transform raw emissions data into analytical insights and interactive dashboards.

The architecture focuses on transforming raw environmental data into clean, structured datasets that can be used for analytics and visualization.

The pipeline consists of three main stages:
1. Data Ingestion
2. Data Transformation
3. Data Visualization

The project follows a simplified **Medallion Architecture** approach.

---

# Architecture Diagram

Raw Data → Bronze Layer → Silver Layer → Gold Layer → Dashboard Visualization

---

# 1. Data Ingestion (Bronze Layer)

The Bronze layer stores the **raw emissions dataset** without significant modifications.

### Source
The dataset contains greenhouse gas emissions data for counties and states in the United States.

### Data Format
CSV file containing:
- Geographic identifiers
- Population
- Employment data
- Emissions metrics
- Energy consumption data

### Example Table

`emissions.default.emissions_data`

This table contains raw data directly ingested into Databricks.

---

# 2. Data Cleaning and Transformation (Silver Layer)

The Silver layer focuses on **cleaning and standardizing the dataset**.

Key transformations include:

• Removing commas from numeric fields  
• Converting text values into numeric data types  
• Handling missing or null values  
• Standardizing column names  

Example transformation:

```sql
SELECT
county_state_name,
CAST(REPLACE(population, ',', '') AS BIGINT) AS population,
CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS total_emissions
FROM emissions.default.emissions_data;