# Get average annual attendance 
# for all NL teams, sorted from high to low.

library(tidyverse)
library(Lahman)
data("Teams")

Teams %>% 
  group_by(yearID) %>% 
  summarise(avg_attendance = mean(attendance)) %>% 
  arrange(desc(avg_attendance))
