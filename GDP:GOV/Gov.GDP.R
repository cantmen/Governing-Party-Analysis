library(ggplot2)
gdp = read.csv("GDP.csv", header = TRUE)
Government = read.csv("Gov.csv", header = TRUE)
dfGDP <- data.frame(gdp)
dfGovernment <- data.frame(Government)
gdpgov <- merge(dfGDP, dfGovernment, by="Reference.period")
ggplot(gdpgov, aes(x = Reference.period, y = Gross.domestic.product.at.market.prices, color = Government)) +
  geom_point()

library(magrittr)
library(tidyverse)

growth_rate = gdpgov %>%
  arrange(Reference.period) %>%
  mutate( Diff_growth = (Gross.domestic.product.at.market.prices / lag(Gross.domestic.product.at.market.prices) -1) * 100) 

ggplot(growth_rate, aes(x = Reference.period, y = Diff_growth, color = Government)) + 
  geom_point(na.rm = TRUE) 


