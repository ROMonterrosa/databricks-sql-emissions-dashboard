select 
  state_abbr
  , sum(cast(replace(`GHG emissions mtons CO2e`, ',', '') as double))  as total_emissions
from emissions_data   
group by state_abbr
order by total_emissions desc
limit 10