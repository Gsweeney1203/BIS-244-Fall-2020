## GErard Sweeney

setwd("C:/Users/gswee/OneDrive/Documents/BIS-244-SweeneyGerard/covid-19-data")
getwd()

library(tidyverse)

library(readr)
G7 <- read_csv("data.csv")
View(G7)

# Filter countries and latest submissions for countriesAndTerritories

country <- G7 %>% filter(countriesAndTerritories)
countries <- c("Canada", "France", "Germany", "Italy", "Japan", "United_Kingdom", "United_States_of_America",)
G7_countries <- country[countrys$countriesAndTerritories %in% countries,]

View(G7_countries)

p <- ggplot(data = G7,
            mapping = aes(x = dateRep, y=cases,fill = G7_countries))

p + geom_bar(position = "dodge", stat = "identity") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  labs(x = NULL, y = "Latest Case Count",
       title = "NEPA COVID-19 Case Counts",
       subtitle = "By Gerard Sweeney as of 10/16/2020",
       caption = "Data: NY Times")