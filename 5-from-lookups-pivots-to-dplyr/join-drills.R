library(tidyverse)

library(Lahman)

data("Managers")
data("AwardsManagers")

# Return the join of records found in both tables. Keep all fields.

inner_join <- inner_join(Managers, AwardsManagers)

ncol(Managers)
ncol(AwardsManagers)
dim(inner_join)

names(Managers)
names(AwardsManagers)

# Return the join of records found in both tables. 
# Keep all fields except Managers$rank.
inner_join_less_m <- inner_join(select(Managers, -rank), AwardsManagers)
dim(inner_join_less_m)

# Return the join of records for all found in Managers.
left_join <- left_join(Managers, AwardsManagers)
dim(left_join)
View(left_join)

nrow(Managers)

# How many more rows does this have than the results of 1?
nrow(left_join) - nrow(inner_join)

