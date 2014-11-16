library(dplyr)
library(ggplot2)
p1 <-
SprintData %>%
  group_by(Date) %>%
  filter(Service == "Anytime") %>%
  group_by(Date) %>%
  summarise(SumAnytime = sum(Unit)) %>%
  ggplot(aes(Date, SumAnytime)) + geom_line() +
  ggtitle("All Anytime Minutes by Month")
print(p1)