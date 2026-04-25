# Läser in paket
library(tidyverse)

# Kör datastädningen först
source("scripts/02_data_cleaning.R")

# Figur 1: Fördelning av försäkringskostnader
ggplot(insurance_clean, aes(x = charges)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Distribution of insurance charges",
    x = "Charges",
    y = "Number of customers"
  )

ggsave("figures/charges_distribution.png")


# Figur 2: Kostnader för rökare och icke-rökare
ggplot(insurance_clean, aes(x = smoker, y = charges)) +
  geom_boxplot() +
  labs(
    title = "Insurance charges by smoking status",
    x = "Smoker",
    y = "Charges"
  )
ggsave("figures/charges_by_smoker.png")


# Figur 3: Samband mellan ålder och kostnader
ggplot(insurance_clean, aes(x = age, y = charges)) +
  geom_point() +
  labs(
    title = "Insurance charges by age",
    x = "Age",
    y = "Charges"
  )
ggsave("figures/charges_by_age.png")

# Figur 4: Kostnader per BMI-kategori
ggplot(insurance_clean, aes(x = bmi_category, y = charges)) +
  geom_boxplot() +
  labs(
    title = "Insurance charges by BMI category",
    x = "BMI category",
    y = "Charges"
  )
ggsave("figures/charges_by_bmi_category.png")

# Tabell: Genomsnittlig kostnad per rökstatus
insurance_clean %>%
  group_by(smoker) %>%
  summarise(
    average_charges = mean(charges),
    median_charges = median(charges),
    number_of_customers = n()
  )
