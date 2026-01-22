select 
  county_state_name
  , population
  , cast(replace(`GHG emissions mtons CO2e`, ',', '') as double) as total_emissions
from emissions_data   
order by total_emissions desc
limit 10