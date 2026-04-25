# Läser in paket
library(tidyverse)

# Kör regressionen
source("scripts/04_regression_models.R")

# Jämför R-squared
print(summary(model_1)$r.squared)
print(summary(model_2)$r.squared)

# Jämför adjusted R-squared
print(summary(model_1)$adj.r.squared)
print(summary(model_2)$adj.r.squared)