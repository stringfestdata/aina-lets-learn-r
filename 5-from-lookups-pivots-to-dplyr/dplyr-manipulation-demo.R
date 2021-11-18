# dplyr can be found in the tidyverse
library(tidyverse)

# Use Lahman datasets again
library(Lahman)

# Let's use teams
data("Teams")

# for ease of coding
teams <- Teams

head(teams)
names(teams)
str(teams)

#### mutate() ####
# Creates new columns based on exsiting columns

# calculate new columns
# Format: mutate(df, new_variable = formula)

mutate(teams, Wpct = W / (W + L))
names(teams)

teams <- mutate(teams, Wpct = W / (W + L))
head(teams)

# use existing functions
teams <- mutate(teams, logR = log(R),
                logAB = log(AB),
                logH = log(H))

head(teams)

# you can change data types as well. 
# Make teamID stored as a character

head(teams$teamID)
is.character(teams$teamID)

teams <- mutate(teams, teamIDchar = as.character(teamID))

names(teams)
is.character(teams$teamIDchar)

#### select() ####
# Selects selected columns
# Format: select(df, cols_to_select)


teams_short <- select(teams,yearID, teamID, W, L)
head(teams_short)

# Use functions to select
winners <- select(teams, ends_with("ID"), ends_with("Win"))

head(winners)


# Select by number index
teams_one_through_five <- select(teams, 1:5)
head(teams_one_through_five)

# DROP variables with a minus sign
teams_no_year <- select(teams, -yearID)
teams_no_year$yearID

# Or "deselect" by index number
teams_less_five <- select(teams, -5)
ncol(teams) - ncol(teams_less_five)

# Dropping multiple variables -- pass through vector


teams_no_year_lg <- select(teams, -c(yearID, lgID))
teams_no_year_lg$yearID
teams_no_year_lg$lgID

teams_no_year_lg <- select(teams, -yearID, -lgID)
teams_no_year_lg$yearID
teams_no_year_lg$lgID


#### rename() ####
# Renames selected columns
# rename(df, new_name = old_name)

new_names <- rename(teams, year = yearID, DivisionID = divID)
names(new_names)

# Enclose in quotations if you want more than one word. 
rename <- rename(teams, year = yearID, "Division ID" = divID)
names(rename)

#### arrange() ####
# Reorders rows
# arrange(df, field, desc(field_2))

# Arrange by team ID
teams <- arrange(teams, teamID)
head(teams)

# Sort by year descending
teams <- arrange(teams, desc(yearID))
head(teams)

# You can sort by multiple criteria
resort <- arrange(teams, teamID, desc(yearID))
head(resort)

resort2 <- arrange(teams, desc(yearID), lgID, teamID)
head(resort2)


#### filter() ####
# Selects rows based on condition
# filter(df, field_vs_criteria)

# Filter by a number
modern <- filter(teams, yearID >= 2000)

dim(teams)
dim(modern)


# Filter by a string
wc_winners <- filter(teams, WSWin == "Y")
dim(wc_winners)

# Filter by multiple fields
ohio <- filter(teams, teamID == "CLE" | teamID == "CIN")
dim(ohio)


ohio_modern <- filter(teams, teamID == "CLE" | teamID == "CIN", yearID >= 2000)
dim(ohio_modern)


ohio_modern_wc <- filter(teams, teamID == "CLE" | teamID == "CIN", yearID >= 2000, WSWin == "Y")
dim(ohio_modern_wc)
ohio_modern_wc

#### group_by() and summarise() ####
# Groups records by selected columns
# Aggregates values for each group

# group_by(df, field)

teams_ID <- group_by(teams, teamID)
teams_ID

# summarise(df, new_field = calc(old_field))

summarise(teams_ID, mean = mean(W),
          min = min(W),
          max = max(W))

# Compare to un-grouped field

summarise(teams, mean = mean(W),
          min = min(W),
          max = max(W))


teams_year <- group_by(teams, yearID)
teams_year

summarise(teams_year, mean = mean(W),
          sd = sd(W))


teams_year_lg <- group_by(teams, yearID, lgID)
teams_year_lg

# Drill down 
summarise(teams_year_lg, mean = mean(W),
          sd = sd(W))