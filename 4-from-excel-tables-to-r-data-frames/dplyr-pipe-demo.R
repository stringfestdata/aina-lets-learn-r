####  %>%  pipeline ####
# Connect multiple verbs into a "pipeline"
# Ctrl + Shift + M


library(tidyverse)
library(Lahman)
data("Teams")

teams <- Teams

# Find the average, min and max 
# number of wins for each team's season

teams <- filter(teams, yearID >= 2000)

teams <- group_by(teams, teamID)

summarise(teams, mean = mean(W),
          min = min(W),
          max = max(W))

# One fell pipe swoop!

teams %>% 
  filter(yearID >= 2000) %>% 
  group_by(teamID) %>% 
  summarise(mean = mean(W),
            min = min(W),
            max = max(W))

# You can assign to objects as well. 

winning <- teams %>% 
  filter(yearID >= 2000) %>% 
  group_by(teamID) %>% 
  summarise(mean = mean(W),
            min = min(W),
            max = max(W)) %>% 
  arrange(desc(mean)) 

head(winning)

#### end ####
