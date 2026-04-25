# Läser in paket
library(tidyverse)

# Läser in datasetet
insurance <- read_csv("data/insurance_costs.csv")

# Visar första raderna
head(insurance)

# Visar variabler och datatyper
glimpse(insurance)

# Sammanfattar numeriska och kategoriska variabler
summary(insurance)

# Kontrollerar saknade värden
colSums(is.na(insurance))
