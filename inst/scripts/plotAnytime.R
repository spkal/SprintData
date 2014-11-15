library(dplyr)
library(ggplot2)
SprintData %>%
  filter(Service == "Anytime") %>%
  ggplot(aes(Date, Unit, color=Name)) + geom_line()
