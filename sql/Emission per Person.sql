select 
  county_name
  , population
  , cast(replace(`GHG emissions mtons CO2e`, ',', '') as double) / NULLIF(cast(population as double), 0) as emissions_per_person
from emissions_data   
order by emissions_per_person desc
limit 10