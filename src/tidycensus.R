library(tidycensus)
library(tidyverse)
# tidycensus::census_api_key('48d33eae25473f41199a5407bfcd9c1f81b2fca6', install = TRUE, overwrite = FALSE)

# acs_variables <- tidycensus::load_variables(2019, "acs5")

# concepts <- acs_variables %>% 
#   dplyr::group_by(concept, name) %>% 
#   dplyr::count() %>% 
#   dplyr::filter(grepl("MEDIAN HOUSEHOLD INCOME", concept))

acs_data_tx <- tidycensus::get_acs(
  geography = "county",
  variables = c(male = "B01001_002",
                female = "B01001_026", white = "B02001_002",
                black = "B02001_003", native = "B02001_004",
                asian = "B02001_005", pi = "B02001_006",
                other = "B02001_007", multi_race1 = "B02001_008",
                median_income = "B19013_001",
                population = 'B01003_001'),
  year = 2019,
  state = "TX",
  # county = "Cook",
  geometry = TRUE,
  keep_geo_vars = TRUE
)

acs_data_us <- tidycensus::get_acs(
  geography = "county",
  variables = c(male = "B01001_002",
                female = "B01001_026", white = "B02001_002",
                black = "B02001_003", native = "B02001_004",
                asian = "B02001_005", pi = "B02001_006",
                other = "B02001_007", multi_race1 = "B02001_008",
                median_income = "B19013_001",
                population = 'B01003_001'),
  year = 2019,
  geometry = TRUE,
  keep_geo_vars = TRUE
)

acs_data_houston <- tidycensus::get_acs(
  geography = "tract",
  variables = c(male = "B01001_002",
                female = "B01001_026", white = "B02001_002",
                black = "B02001_003", native = "B02001_004",
                asian = "B02001_005", pi = "B02001_006",
                other = "B02001_007", multi_race1 = "B02001_008",
                median_income = "B19013_001",
                population = 'B01003_001'),
  year = 2019,
  state = "TX",
  county = "Harris County",
  geometry = TRUE,
  keep_geo_vars = TRUE
)

# -----------------------------------------------------------------------------


reduced_tx <- acs_data_tx %>% 
  dplyr::select(GEOID, variable, estimate, moe, geometry) %>% 
  tidyr::pivot_wider(id_cols = c(GEOID, geometry), names_from = variable, values_from = estimate) %>% 
  tidyr::pivot_longer(white:multi_race1, names_to = "race", values_to = "estimate")


reduced_hou <- acs_data_houston %>% 
  dplyr::select(TRACTCE, COUNTYFP, GEOID, variable, estimate, moe, geometry) %>% 
  tidyr::pivot_wider(id_cols = c(TRACTCE, COUNTYFP, GEOID, geometry), names_from = variable, values_from = estimate) %>% 
  tidyr::pivot_longer(white:multi_race1, names_to = "race", values_to = "estimate")

reduced_us <- acs_data_us %>% 
  dplyr::select(STATEFP, COUNTYFP, GEOID, variable, estimate, moe, geometry) %>% 
  tidyr::pivot_wider(id_cols = c(STATEFP, COUNTYFP, GEOID, geometry), names_from = variable, values_from = estimate) %>% 
  tidyr::pivot_longer(white:multi_race1, names_to = "race", values_to = "estimate")
  
