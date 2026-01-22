WITH top10 AS (
  SELECT state_abbr,
    SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS Total_Emissions
  FROM emissions_data
  GROUP BY state_abbr
  ORDER BY Total_Emissions DESC
  LIMIT 10
)
SELECT 
  SUM(Total_Emissions) AS Top10_Emissions,
  SUM(Total_Emissions) / (SELECT SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) FROM emissions_data) * 100 AS Top10_Percentage
FROM top10
--Top 10 is the 50% of the 100%