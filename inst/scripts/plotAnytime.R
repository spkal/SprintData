library(dplyr)
library(ggplot2)
SprintData %>%
  filter(Service == "Anytime") %>%
  ggplot(aes(Date, Unit)) + geom_line(aes(color=User)) +
  facet_grid(User ~ .)

