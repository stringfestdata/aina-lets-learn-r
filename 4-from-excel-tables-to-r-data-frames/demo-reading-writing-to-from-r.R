# New dataset -- Sean Lahman's baseball stats
# http://www.seanlahman.com/baseball-archive/statistics/
# install.packages("Lahman")

library(Lahman)

# What datasets are available? 
data(package = "Lahman")

# Introduce them to our environment
data("Teams")
data("Master")
data("HallOfFame")


# Check them out
head(Teams)
head(Master)
head(HallOfFame)

# Write to an Excel workbook

# install.packages("openxlsx")
library(openxlsx)

# Write Teams to a worksheet
write.xlsx(Teams, file = "C:/RFiles/teams.xlsx")

# write Teams to a worksheet -- as a table!
write.xlsx(Teams, file = "C:/RFiles/teams_table.xlsx", asTable = TRUE)

## write a list of data.frames to individual worksheets using list names as worksheet names
l <- list("teams" = Teams, "people" = Master, "hall_of_fame" = HallOfFame)
write.xlsx(l, file = "C:/RFiles/baseball.xlsx", asTable = TRUE)

### Read them back in
teams_2 <- read.xlsx("C:/RFiles/teams.xlsx")

head(teams_2)

teams_3 <- read.xlsx("C:/RFiles/baseball.xlsx", sheet = "teams")

head(teams_3)


### Another option is readxl
### for reading only! 
# install.packages(readxl)

library(readxl)

hall_of_fame <- read_excel("C:/Rfiles/Baseball.xlsx", sheet = "hall_of_fame")
head(hall_of_fame)


people <- read_excel("C:/Rfiles/Baseball.xlsx", sheet = 3)


