library(dplyr)
library(ggplot2)
p1 <-
  SprintData %>%
  group_by(Date, User) %>%
  filter(Service == "S3G" | Service == "S3GRoaming" | Service == "S4G") %>%
  summarise(SumData = sum(Unit)) %>%
  ggplot(aes(Date, SumData)) + geom_line(aes(color=User)) +
  facet_grid(User ~ .) +
  ggtitle("Data Use by Month")
print(p1)
