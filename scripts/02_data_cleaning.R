# Läser in paket
library(tidyverse)

# Läser in datasetet
insurance <- read_csv("data/insurance_costs.csv")

# Kontrollerar saknade värden
colSums(is.na(insurance))

# Fyller saknade värden i annual_checkups
insurance$annual_checkups[is.na(insurance$annual_checkups)] <- 
  median(insurance$annual_checkups, na.rm = TRUE)

# Ändrar textvariabler till kategoriska variabler
insurance_clean <- insurance %>%
  mutate(
    sex = as.factor(sex),
    region = as.factor(region),
    
    # Rättar inkonsekventa värden i smoker
    smoker = as.factor(
      ifelse(str_to_lower(smoker) == "yes", "yes", "no")
    )
  )

# Skapar nya variabler för analysen
insurance_clean <- insurance_clean %>%
  mutate(
    bmi_category = case_when(
      bmi < 18.5 ~ "Underweight",
      bmi >= 18.5 & bmi < 25 ~ "Normal",
      bmi >= 25 & bmi < 30 ~ "Overweight",
      bmi >= 30 ~ "Obese",
      TRUE ~ "Unknown"
    ),
    age_group = case_when(
      age < 30 ~ "Under 30",
      age >= 30 & age < 50 ~ "30-49",
      age >= 50 ~ "50+"
    )
  )

# Kontrollerar resultatet
glimpse(insurance_clean)
summary(insurance_clean)
