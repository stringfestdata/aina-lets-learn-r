# install.packages('nycflights13")

library(nycflights13)
data(package = "nycflights13")


library(openxlsx)
library(readxl)

## Export airlines, airports and planes as worksheets of the same workbook, formatted as tables.

l <- list("airlines" = airlines, "airports" = airports, "planes" = planes)
write.xlsx(l, file = "C:/RFiles/nycflights.xlsx", asTable = TRUE)


# the openxlsx way
planes_xl <- read.xlsx("C:/RFiles/nycflights.xlsx", sheet = "planes")
head(planes_xl)

# the readxl way
airports_xl <- read_excel("C:/Rfiles/nycflights.xlsx", sheet = "airports")
head(airports_xl)

