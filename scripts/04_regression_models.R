# Läser in paket
library(tidyverse)

# Kör datastädning
source("scripts/02_data_cleaning.R")

# Modell 1
model_1 <- lm(charges ~ age + bmi + smoker, data = insurance_clean)

# Resultat modell 1
summary(model_1)

# Modell 2
model_2 <- lm(charges ~ age + bmi + smoker + children + annual_checkups + chronic_condition, data = insurance_clean)

# Resultat modell 2
summary(model_2)

print(summary(model_1))
print(summary(model_2))