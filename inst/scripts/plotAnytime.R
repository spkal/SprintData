library(dplyr)
library(ggplot2)
SprintData %>%
  filter(Service == "Anytime") %>%
  ggplot(aes(Date, Unit, col=Name)) + geom_line()
